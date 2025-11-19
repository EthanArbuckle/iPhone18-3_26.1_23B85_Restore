uint64_t sub_19D32CA24(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[2672] = 1;
  if ((atomic_load_explicit(&qword_1EB0131C8, memory_order_acquire) & 1) == 0)
  {
    v12 = a6;
    v9 = a5;
    v11 = a4;
    v8 = a3;
    v10 = a2;
    sub_19D4543C4();
    a5 = v9;
    a2 = v10;
    a3 = v8;
    a4 = v11;
    a6 = v12;
  }

  result = (*(*a1 + 304))(a1, a2, a3, a4, a5, a6, qword_1EB013138);
  a1[2672] = 0;
  return result;
}

uint64_t sub_19D32CACC(_BYTE *a1)
{
  a1[2672] = 1;
  result = (*(*a1 + 296))(a1);
  a1[2672] = 0;
  return result;
}

char *sub_19D32CB24(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 2496) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7E80, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 2504) = result + 232;
  *(a1 + 2520) = result + 248;
  *(a1 + 2512) = result + 240;
  *(a1 + 2528) = result + 256;
  *(a1 + 2536) = result + 264;
  *(a1 + 2552) = result + 280;
  *(a1 + 2544) = result + 272;
  *(a1 + 2560) = result + 288;
  *(a1 + 2568) = result + 296;
  *(a1 + 2576) = result + 304;
  *(a1 + 2584) = result + 312;
  *(a1 + 2592) = result + 320;
  *(a1 + 2600) = result + 328;
  *(a1 + 2608) = result + 336;
  *(a1 + 2616) = result + 344;
  return result;
}

void sub_19D32CC20(uint64_t a1, void *lpsrc)
{
  if (!*(a1 + 2496))
  {
    if (!__dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B7E80, 0))
    {
      __cxa_bad_cast();
    }

    sub_19D41C548(34);
  }

  sub_19D41C548(1);
}

void sub_19D32CCC0(void *a1)
{
  v1 = sub_19D32F8C0(a1);

  operator delete(v1);
}

uint64_t sub_19D32CCE8(uint64_t result, FILE *a2, int *a3, int a4, int a5, unsigned int a6)
{
  if (a6 > 0x20 || ((1 << a6) & 0x100010100) == 0)
  {
    sub_19D41C548(23);
  }

  switch(a5)
  {
    case 8:
      if (a6 == 32)
      {

LABEL_9:
        sub_19D32CF2C(result, a2, a3, a4);
      }

LABEL_27:
      sub_19D41C548(45);
    case 16:
      if (a6 == 32)
      {

        goto LABEL_9;
      }

      goto LABEL_27;
    case 32:
      switch(a6)
      {
        case 0x20u:

          goto LABEL_9;
        case 8u:

          sub_19D309904(result, a2, a3, a4);
        case 0x10u:

          sub_19D309830(result, a2, a3, a4);
      }

      break;
  }

  return result;
}

uint64_t sub_19D32CE00(uint64_t result, FILE *a2, int *a3, int a4, int a5, unsigned int a6)
{
  if (a6 > 0x20 || ((1 << a6) & 0x100010100) == 0)
  {
    sub_19D41C548(23);
  }

  switch(a5)
  {
    case 8:
      if (a6 == 32)
      {

LABEL_9:
        sub_19D32D054(result, a2, a3, a4);
      }

LABEL_27:
      sub_19D41C548(45);
    case 16:
      if (a6 == 32)
      {

        goto LABEL_9;
      }

      goto LABEL_27;
    case 32:
      switch(a6)
      {
        case 0x20u:

          goto LABEL_9;
        case 8u:

          sub_19D309DB4(result, a2, a3, a4);
        case 0x10u:

          sub_19D309CD0(result, a2, a3, a4);
      }

      break;
  }

  return result;
}

void sub_19D32CF2C(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(17);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

void sub_19D32D054(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(18);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

void sub_19D32D178(void *a1, void *a2, uint64_t *a3, int a4, int a5, float a6)
{
  v12 = sub_19D41C530();
  v24 = sub_19D41C530() * v12;
  v13 = a5 - (qword_1ED44E4A0 - qword_1ED44E498);
  if (a5 <= (qword_1ED44E4A0 - qword_1ED44E498))
  {
    if (a5 < (qword_1ED44E4A0 - qword_1ED44E498))
    {
      qword_1ED44E4A0 = qword_1ED44E498 + a5;
    }
  }

  else
  {
    if (qword_1ED44E4A8 - qword_1ED44E4A0 < v13)
    {
      if ((a5 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v14 = qword_1ED44E4A0 + v13;
    bzero(qword_1ED44E4A0, a5 - (qword_1ED44E4A0 - qword_1ED44E498));
    qword_1ED44E4A0 = v14;
  }

  v15 = (qword_1ED44E350 - qword_1ED44E348) >> 2;
  if (a4 <= v15)
  {
    if (a4 < v15)
    {
      qword_1ED44E350 = qword_1ED44E348 + 4 * a4;
    }
  }

  else
  {
    sub_19D2CA0E8(&qword_1ED44E348, a4 - v15);
  }

  if (a5 >= 1)
  {
    v16 = 0;
    do
    {
      v18 = *(*a2 + 4 * v16);
      if (v18 <= -5.0)
      {
        LOBYTE(v17) = -127;
      }

      else if (v18 < 5.0 && (v17 = llroundf(v18 * 25.6), v17 <= 127))
      {
        if (v17 <= -127)
        {
          LOBYTE(v17) = -127;
        }
      }

      else
      {
        LOBYTE(v17) = 127;
      }

      *(qword_1ED44E498 + v16++) = v17;
    }

    while (a5 != v16);
  }

  v19 = *a3;
  v33[1] = 0x3F80000000020008;
  v33[2] = 0;
  v32[2] = 0;
  v33[0] = a5;
  v32[0] = a4;
  v32[1] = 0x3F80000000010020;
  v26[0] = a5;
  v26[1] = a4;
  v26[2] = v19;
  v26[3] = 0x3F80000000020008;
  v26[4] = 0;
  v26[5] = 0;
  v27 = xmmword_19D475558;
  v28 = unk_19D475568;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  bzero(v25, 0x20uLL);
  v25[0] = 1;
  v20 = MEMORY[0x19EAF99B0](v33, v32, v26, v25);
  if (!v20)
  {
    sub_19D41C548(1012);
  }

  v21 = v20;
  v22 = BNNSFilterApply(v20, qword_1ED44E498, qword_1ED44E348);
  v23 = *a1;
  if (a6 != 0.0)
  {
    MEMORY[0x19EAFB1F0](qword_1ED44E348, 1, &v24, v23, 1, *a1, 1, a4);
    if (!v22)
    {
      goto LABEL_25;
    }

LABEL_27:
    sub_19D41C548(345);
  }

  MEMORY[0x19EAFB210](qword_1ED44E348, 1, &v24, v23, 1, a4);
  if (v22)
  {
    goto LABEL_27;
  }

LABEL_25:
  BNNSFilterDestroy(v21);
}

void sub_19D32D490(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v296 = a4 >> 24;
  if (a4 >> 24 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (a4 >> 24);
  }

  v9 = *(a1 + 2680);
  if (v9)
  {
    v291 = *(v9 + 464);
    if (a3[1] == *a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v291 = 0;
    if (a3[1] == *a3)
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 56) >= 1)
  {
    v299 = (**a1)(a1);
    v9 = *(a1 + 2680);
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v299 = 0;
  if (!v9)
  {
LABEL_13:
    v10 = 50.0;
    goto LABEL_14;
  }

LABEL_12:
  v10 = *(v9 + 468);
  if (v10 <= 0.0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (a5 && (*(a1 + 2672) & 1) != 0)
  {
    sub_19D41C548(34);
  }

  v11 = a4 & 0xFFFFFF;
  v12 = (a5 != 0) & (*(a1 + 42) ^ 1);
  v13 = v299;
  if (v11 > v12)
  {
    v294 = v11;
    v295 = v11 - 1;
    v292 = 4 * v8;
    v293 = (a1 + 752);
    __asm
    {
      FMOV            V5.4S, #-5.0
      FMOV            V6.4S, #5.0
    }

    v303 = _Q5;
    v304 = vdupq_n_s32(0x3D200000u);
    v302 = _Q6;
    while (1)
    {
      v18 = v11 + ~v12;
      if (!*(a1 + 2672))
      {
        v18 = v12;
      }

      v19 = v18;
      v20 = *(a1 + 2672) ? v18 < v295 : v18 > 0;
      v21 = *(a1 + 2672) ? v18 + 1 : v18 - 1;
      v305 = v21;
      v22 = *(a1 + 42);
      v23 = (v22 & v13) != 0 ? 1 : v18;
      v24 = *(a1 + 64);
      if (v13)
      {
        break;
      }

      memmove(*(v24 + 8 * v23), *(*a2 + 8 * v23), 4 * *(a1 + 44));
      v25 = *(a1 + 40);
      if (v25 == 1)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (v13)
      {
        v26 = *(a1 + 48);
        v27 = *(*(a1 + 208) + 24 * v19);
        *v27 = **(*a3 + 24 * v19);
        if (v25)
        {
          v27[1] = v26 - 1;
        }
      }

      v28 = *(a1 + 136);
      if (v296 > 1)
      {
        memmove(*(v28 + 8 * v23), *(*a2 + 8 * v23), 4 * *(a1 + 44) * v8);
      }

      else
      {
        memcpy(*(v28 + 8 * v23), *(*(a1 + 64) + 8 * v23), 4 * *(a1 + 48));
      }

      if (v8 > *(a1 + 2688))
      {
        sub_19D41C548(83724);
      }

      if (v22)
      {
        v29 = 1;
      }

      else
      {
        v29 = v19;
      }

      if (*(a1 + 2692) == 1)
      {
        bzero(*(*(a1 + 544) + 8 * v29), 4 * *(a1 + 52));
        bzero(*(*(a1 + 568) + 8 * v29), 4 * *(a1 + 52));
        bzero(*(*(a1 + 616) + 8 * v29), 4 * *(a1 + 52));
        bzero(*(*(a1 + 592) + 8 * v29), 4 * *(a1 + 52));
      }

      bzero(*(*(a1 + 352) + 8 * v29), 4 * *(a1 + 52) * v8);
      bzero(*(*(a1 + 376) + 8 * v29), 4 * *(a1 + 52) * v8);
      bzero(*(*(a1 + 400) + 8 * v29), 4 * *(a1 + 52) * v8);
      bzero(*(*(a1 + 424) + 8 * v29), 4 * *(a1 + 52) * v8);
      v30 = *(a1 + 2680);
      v301 = v20;
      if (!v30)
      {
LABEL_67:
        v34 = 0;
        v36 = !v20;
LABEL_68:
        sub_19D32F398(a1, v299, (*(a1 + 424) + 8 * v29), (*(a1 + 136) + 8 * v23), *(a1 + 2528), (*(a1 + 208) + 24 * v19), v8, *(a1 + 52), *(a1 + 48), 1);
        v306 = 0;
LABEL_69:
        v39 = 1;
        if (!v36 && (v34 & 1) == 0)
        {
          sub_19D32F594((*(a1 + 424) + 8 * v29), (*(a1 + 160) + 8 * v305), *(a1 + 2560), v8, *(a1 + 52), *(a1 + 52), 1.0);
          v39 = 0;
        }

        goto LABEL_72;
      }

      v31 = *(v30 + 40);
      if ((*(v30 + 20) & 1) == 0 && (v31 == 5 || v31 == 2))
      {
        v32 = *(v30 + 44) == 6;
        if (v31 == 5)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v32 = 0;
        if (v31 == 5)
        {
          goto LABEL_55;
        }
      }

      if (v31 != 2)
      {
        if (!v32)
        {
          goto LABEL_67;
        }

        v34 = 0;
LABEL_62:
        v37 = 1;
        sub_19D32EB78(a1, 0, (*(a1 + 352) + 8 * v29), (*(a1 + 376) + 8 * v29), (*(a1 + 424) + 8 * v29), (*(a1 + 400) + 8 * v29), (*(a1 + 136) + 8 * v23), *(a1 + 2504), *(a1 + 208) + 24 * v19, v8, *(a1 + 52), *(a1 + 48), 1);
        v38 = v20;
        v36 = !v20;
        v306 = 1;
        if ((v38 & v34 & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_63;
      }

LABEL_55:
      _ZF = *(v30 + 60) == 22;
      v34 = _ZF;
      if (v32)
      {
        goto LABEL_62;
      }

      v35 = v20;
      v36 = !v20;
      if (!_ZF)
      {
        v35 = 0;
      }

      if (!v35)
      {
        goto LABEL_68;
      }

      v37 = 0;
LABEL_63:
      __p = 0;
      v308 = 0;
      v309 = 0;
      sub_19D32EB78(a1, 0, (*(a1 + 352) + 8 * v29), (*(a1 + 376) + 8 * v29), (*(a1 + 424) + 8 * v29), (*(a1 + 400) + 8 * v29), (*(a1 + 160) + 8 * v305), *(a1 + 2536), &__p, v8, *(a1 + 52), *(a1 + 52), 1);
      if (__p)
      {
        v308 = __p;
        operator delete(__p);
      }

      v34 = 1;
      v39 = 1;
      v306 = 1;
      if ((v37 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_72:
      v40 = *(a1 + 2680);
      if (v40 && *(v40 + 244) == 1)
      {
        goto LABEL_299;
      }

      v41 = *(a1 + 52);
      v42 = (*(a1 + 424) + 8 * v29);
      v43 = (v41 * v8);
      v13 = v299;
      v44 = v301;
      if (v43 >= 1)
      {
        v45 = *v42;
        do
        {
          v46 = -1035468800;
          if (*v45 < -50.0 || (v46 = 1112014848, *v45 > 50.0))
          {
            *v45 = v46;
          }

          ++v45;
          --v43;
        }

        while (v43);
      }

      v300 = v39;
      sub_19D2CA3F8((*(a1 + 520) + 8 * v29), v42, v8, v41, *(a1 + 740));
      if ((v306 & 1) == 0)
      {
        sub_19D32F398(a1, v299, (*(a1 + 352) + 8 * v29), (*(a1 + 136) + 8 * v23), *(a1 + 2504), (*(a1 + 208) + 24 * v19), v8, *(a1 + 52), *(a1 + 48), 1);
      }

      v48 = *(a1 + 2680);
      if (v48)
      {
        if (*(v48 + 244) == 1)
        {
LABEL_299:
          sub_19D41C548(200);
        }
      }

      v49 = *(a1 + 352);
      v50 = *(a1 + 52);
      v52 = v303;
      v51 = v304;
      v53 = v302;
      if (!v301)
      {
        goto LABEL_116;
      }

      if (v34)
      {
        v54 = v305;
        v55 = *(a1 + 2568);
        v56 = *(a1 + 184);
        if (v48)
        {
          goto LABEL_90;
        }
      }

      else
      {
        sub_19D32F594((v49 + 8 * v29), (*(a1 + 160) + 8 * v305), *(a1 + 2536), v8, *(a1 + 52), v50, 1.0);
        v53 = v302;
        v52 = v303;
        v51 = v304;
        v48 = *(a1 + 2680);
        v49 = *(a1 + 352);
        v54 = v305;
        v44 = v301;
        v50 = *(a1 + 52);
        v55 = *(a1 + 2568);
        v56 = *(a1 + 184);
        if (v48)
        {
LABEL_90:
          if (!*(v48 + 384))
          {
            goto LABEL_116;
          }
        }
      }

      if (v50 >= 1)
      {
        v57 = 0;
        v58 = *(v49 + 8 * v29);
        v59 = *(v56 + 8 * v54);
        v60 = *v55;
        v61 = v292 * v50;
        v62 = (v58 + v61);
        v63 = (v59 + v61);
        v65 = v58 < (v60 + v50) && v60 < v62;
        v67 = v58 < v63 && v59 < v62 || v65;
        v68 = (v50 < 4) | v67;
        v69 = 4 * v50;
        while ((v68 & 1) == 0)
        {
          v71 = v50 & 0x7FFFFFFC;
          v72 = v58;
          v73 = v59;
          v74 = v60;
          do
          {
            v75 = *v74++;
            v47.i32[0] = v75;
            v76 = vmovl_u8(*v47.f32).u64[0];
            v77 = 0uLL;
            v77.i8[3] = v76.i8[0];
            v77.i8[7] = v76.i8[2];
            v77.i8[11] = v76.i8[4];
            v77.i8[15] = v76.i8[6];
            v78 = *v73++;
            v47 = vbslq_s8(vmovl_s16(vceq_s16(v76, 0x7F007F007F007FLL)), v53, vbslq_s8(vmovl_s16(vcgt_s16(vshr_n_s16(vshl_n_s16(v76, 8uLL), 8uLL), 0x7E007E007E007ELL)), vmulq_f32(vcvtq_n_f32_s32(v77, 0x18uLL), v51), v52));
            *v72 = vmlaq_f32(*v72, v78, v47);
            ++v72;
            v71 -= 4;
          }

          while (v71);
          i = v50 & 0x7FFFFFFC;
          if (i != v50)
          {
            goto LABEL_113;
          }

LABEL_105:
          ++v57;
          v59 = (v59 + v69);
          v58 = (v58 + v69);
          if (v57 == v8)
          {
            goto LABEL_116;
          }
        }

        for (i = 0; i != v50; ++i)
        {
LABEL_113:
          v79 = *(v60 + i);
          v80 = -5.0;
          if (v79 >= -126)
          {
            v80 = 5.0;
            if (v79 != 127)
            {
              v80 = v79 * 0.039062;
            }
          }

          v58->f32[i] = v58->f32[i] + (v59->f32[i] * v80);
        }

        goto LABEL_105;
      }

LABEL_116:
      v81 = (v49 + 8 * v29);
      v82 = v50 * v8;
      if (v82 >= 1)
      {
        v83 = *v81;
        do
        {
          v84 = -1035468800;
          if (*v83 < -50.0 || (v84 = 1112014848, *v83 > 50.0))
          {
            *v83 = v84;
          }

          ++v83;
          --v82;
        }

        while (v82);
      }

      sub_19D2CA3F8((*(a1 + 448) + 8 * v29), v81, v8, v50, *(a1 + 736));
      if ((v306 & 1) == 0)
      {
        sub_19D32F398(a1, v299, (*(a1 + 376) + 8 * v29), (*(a1 + 136) + 8 * v23), *(a1 + 2512), (*(a1 + 208) + 24 * v19), v8, *(a1 + 52), *(a1 + 48), 1);
      }

      v86 = *(a1 + 2680);
      if (v86 && v86[244] == 1)
      {
        goto LABEL_299;
      }

      v88 = v303;
      v87 = v304;
      v89 = v302;
      if (!v44)
      {
        goto LABEL_159;
      }

      v90 = *(a1 + 376);
      v91 = *(a1 + 52);
      if (v34)
      {
        v92 = v305;
        v93 = *(a1 + 2576);
        v94 = *(a1 + 184);
        if (!v86)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v92 = v305;
        sub_19D32F594((v90 + 8 * v29), (*(a1 + 160) + 8 * v305), *(a1 + 2544), v8, v91, *(a1 + 52), 1.0);
        v89 = v302;
        v88 = v303;
        v87 = v304;
        v86 = *(a1 + 2680);
        v90 = *(a1 + 376);
        v91 = *(a1 + 52);
        v93 = *(a1 + 2576);
        v94 = *(a1 + 184);
        if (!v86)
        {
          goto LABEL_133;
        }
      }

      if (v86[384])
      {
LABEL_133:
        if (v91 >= 1)
        {
          v95 = 0;
          v96 = *(v90 + 8 * v29);
          v97 = *(v94 + 8 * v92);
          v98 = *v93;
          v99 = v292 * v91;
          v100 = (v96 + v99);
          v101 = (v97 + v99);
          v103 = v96 < (v98 + v91) && v98 < v100;
          v105 = v96 < v101 && v97 < v100 || v103;
          v106 = (v91 < 4) | v105;
          v107 = 4 * v91;
          v44 = v301;
          while ((v106 & 1) == 0)
          {
            v109 = v91 & 0x7FFFFFFC;
            v110 = v96;
            v111 = v97;
            v112 = v98;
            do
            {
              v113 = *v112++;
              v85.i32[0] = v113;
              v114 = vmovl_u8(*v85.f32).u64[0];
              v115 = 0uLL;
              v115.i8[3] = v114.i8[0];
              v115.i8[7] = v114.i8[2];
              v115.i8[11] = v114.i8[4];
              v115.i8[15] = v114.i8[6];
              v116 = *v111++;
              v85 = vbslq_s8(vmovl_s16(vceq_s16(v114, 0x7F007F007F007FLL)), v89, vbslq_s8(vmovl_s16(vcgt_s16(vshr_n_s16(vshl_n_s16(v114, 8uLL), 8uLL), 0x7E007E007E007ELL)), vmulq_f32(vcvtq_n_f32_s32(v115, 0x18uLL), v87), v88));
              *v110 = vmlaq_f32(*v110, v116, v85);
              ++v110;
              v109 -= 4;
            }

            while (v109);
            j = v91 & 0x7FFFFFFC;
            if (j != v91)
            {
              goto LABEL_155;
            }

LABEL_147:
            ++v95;
            v97 = (v97 + v107);
            v96 = (v96 + v107);
            if (v95 == v8)
            {
              goto LABEL_159;
            }
          }

          for (j = 0; j != v91; ++j)
          {
LABEL_155:
            v117 = *(v98 + j);
            v118 = -5.0;
            if (v117 >= -126)
            {
              v118 = 5.0;
              if (v117 != 127)
              {
                v118 = v117 * 0.039062;
              }
            }

            v96->f32[j] = v96->f32[j] + (v97->f32[j] * v118);
          }

          goto LABEL_147;
        }

        v44 = v301;
LABEL_159:
        if (!v86)
        {
          v119 = *(a1 + 52);
          goto LABEL_172;
        }

        v119 = *(a1 + 52);
        if (v86[465] != 1)
        {
          goto LABEL_172;
        }

        goto LABEL_161;
      }

      v44 = v301;
      v119 = *(a1 + 52);
      if (v86[465] != 1)
      {
        goto LABEL_172;
      }

LABEL_161:
      v120 = (v119 * v8);
      if (v120 < 1)
      {
        goto LABEL_172;
      }

      v121 = *(*(a1 + 376) + 8 * v29);
      if (v120 < 8)
      {
        v122 = 0;
LABEL_170:
        v127 = v120 - v122;
        v128 = &v121->f32[v122];
        do
        {
          *v128 = *v128 + 1.0;
          ++v128;
          --v127;
        }

        while (v127);
        goto LABEL_172;
      }

      v122 = v120 & 0x7FFFFFF8;
      v123 = v121 + 1;
      v124 = v122;
      do
      {
        __asm { FMOV            V2.4S, #1.0 }

        v126 = vaddq_f32(*v123, _Q2);
        v123[-1] = vaddq_f32(v123[-1], _Q2);
        *v123 = v126;
        v123 += 2;
        v124 -= 8;
      }

      while (v124);
      if (v122 != v120)
      {
        goto LABEL_170;
      }

LABEL_172:
      v129 = (*(a1 + 376) + 8 * v29);
      v130 = (v119 * v8);
      if (v130 >= 1)
      {
        v131 = *v129;
        do
        {
          v132 = -1035468800;
          if (*v131 < -50.0 || (v132 = 1112014848, *v131 > 50.0))
          {
            *v131 = v132;
          }

          ++v131;
          --v130;
        }

        while (v130);
      }

      sub_19D2CA3F8((*(a1 + 472) + 8 * v29), v129, v8, v119, *(a1 + 736));
      v134 = *(a1 + 184);
      v135 = *(a1 + 520);
      v136 = *(a1 + 448);
      v137 = *(a1 + 52) * v8;
      if (v137 >= 8)
      {
        v138 = *(v134 + 8 * v19);
        v139 = *(v136 + 8 * v29);
        v140 = v137 / 8;
        v141 = *(v135 + 8 * v29);
        do
        {
          v143 = *v141;
          v142 = v141[1];
          v141 += 2;
          v145 = *v139;
          v144 = v139[1];
          v139 += 2;
          v133 = vmulq_f32(v144, v142);
          *v138 = vmulq_f32(v145, v143);
          v138[1] = v133;
          v138 += 2;
          --v140;
        }

        while (v140);
      }

      v146 = 8 * (v137 / 8);
      if (v146 < v137)
      {
        v147 = *(v135 + 8 * v29);
        v148 = *(v136 + 8 * v29);
        v149 = *(v134 + 8 * v19);
        v150 = v146;
        v151 = v137 - v146;
        if (v151 <= 7)
        {
          goto LABEL_189;
        }

        if ((v149 - v147) < 0x20)
        {
          goto LABEL_189;
        }

        if ((v149 - v148) < 0x20)
        {
          goto LABEL_189;
        }

        v152 = v151 - (v137 & 7) + v146;
        v153 = v146 + (v137 & 7) - v137;
        v154 = 4 * v146;
        v155 = (v149 + v154 + 16);
        v156 = (v147 + v154 + 16);
        v157 = (v148 + v154 + 16);
        do
        {
          v133 = vmulq_f32(v157[-1], v156[-1]);
          v158 = vmulq_f32(*v157, *v156);
          v155[-1] = v133;
          *v155 = v158;
          v155 += 2;
          v156 += 2;
          v157 += 2;
          v153 += 8;
        }

        while (v153);
        v150 = v152;
        if ((v137 & 7) != 0)
        {
LABEL_189:
          v159 = v137 - v150;
          v160 = (v149 + 4 * v150);
          v161 = (v148 + 4 * v150);
          v162 = (v147 + 4 * v150);
          do
          {
            v163 = *v162++;
            v164 = v163;
            v165 = *v161++;
            *v160++ = v165 * v164;
            --v159;
          }

          while (v159);
        }
      }

      if (v44)
      {
        if (v291)
        {
          v166 = (*(a1 + 52) * v8);
          if (v166 < 1)
          {
            goto LABEL_221;
          }

          v167 = *(a1 + 184);
          v168 = *(v167 + 8 * v305);
          v169 = *(*(a1 + 448) + 8 * v29);
          v170 = *(v167 + 8 * v19);
          if (v166 < 8)
          {
            v171 = 0;
LABEL_196:
            v172 = v166 - v171;
            v173 = v171;
            v174 = (v170 + v173 * 4);
            v175 = &v169->f32[v173];
            v176 = &v168->f32[v173];
            do
            {
              v177 = *v176++;
              v178 = v177;
              v179 = *v175++;
              *v174 = (v178 - (v179 * v178)) + *v174;
              ++v174;
              --v172;
            }

            while (v172);
            goto LABEL_221;
          }

          v171 = 0;
          v282 = v170 + 4 * v166;
          v284 = v170 < v169->u64 + 4 * v166 && v169 < v282;
          if (v168 < v282 && v170 < v168->u64 + 4 * v166)
          {
            goto LABEL_196;
          }

          if (v284)
          {
            goto LABEL_196;
          }

          v171 = v166 & 0x7FFFFFF8;
          v286 = v168 + 1;
          v287 = v169 + 1;
          v288 = (v170 + 16);
          v289 = v171;
          do
          {
            v133 = vaddq_f32(vmlsq_f32(v286[-1], v286[-1], v287[-1]), v288[-1]);
            v290 = vaddq_f32(vmlsq_f32(*v286, *v286, *v287), *v288);
            v288[-1] = v133;
            *v288 = v290;
            v286 += 2;
            v287 += 2;
            v288 += 2;
            v289 -= 8;
          }

          while (v289);
          if (v171 != v166)
          {
            goto LABEL_196;
          }
        }

        else
        {
          v180 = *(a1 + 184);
          v181 = *(a1 + 472);
          v182 = *(a1 + 52) * v8;
          if (v182 >= 8)
          {
            v183 = *(v180 + 8 * v19);
            v184 = *(v180 + 8 * v305);
            v185 = v182 / 8;
            v186 = *(v181 + 8 * v29);
            do
            {
              v187 = *v186;
              v133 = v186[1];
              v186 += 2;
              v189 = *v184;
              v188 = v184[1];
              v184 += 2;
              v190 = vmlaq_f32(v183[1], v188, v133);
              *v183 = vmlaq_f32(*v183, v189, v187);
              v183[1] = v190;
              v183 += 2;
              --v185;
            }

            while (v185);
          }

          v191 = 8 * (v182 / 8);
          if (v191 < v182)
          {
            v192 = *(v181 + 8 * v29);
            v193 = *(v180 + 8 * v305);
            v194 = *(v180 + 8 * v19);
            v195 = v191;
            v196 = v182 - v191;
            if (v196 <= 7)
            {
              goto LABEL_219;
            }

            v197 = 4 * v191;
            v198 = v194 + 4 * v182;
            v199 = v194 + v197 >= (v193 + 4 * v182) || v193 + 4 * v191 >= v198;
            v200 = !v199;
            if (v192 + v197 < v198 && v194 + v197 < (v192 + 4 * v182))
            {
              goto LABEL_219;
            }

            if (v200)
            {
              goto LABEL_219;
            }

            v202 = v196 - (v182 & 7) + v195;
            v203 = v195 + (v182 & 7) - v182;
            v204 = (v194 + v197 + 16);
            v205 = (v192 + v197 + 16);
            v206 = (v193 + v197 + 16);
            do
            {
              v133 = v205[-1];
              v207 = vmlaq_f32(*v204, *v206, *v205);
              v204[-1] = vmlaq_f32(v204[-1], v206[-1], v133);
              *v204 = v207;
              v204 += 2;
              v205 += 2;
              v206 += 2;
              v203 += 8;
            }

            while (v203);
            v195 = v202;
            if ((v182 & 7) != 0)
            {
LABEL_219:
              v208 = v182 - v195;
              v209 = (v194 + 4 * v195);
              v210 = (v193 + 4 * v195);
              v211 = (v192 + 4 * v195);
              do
              {
                v212 = *v211++;
                v213 = v212;
                v214 = *v210++;
                *v209 = *v209 + (v214 * v213);
                ++v209;
                --v208;
              }

              while (v208);
            }
          }
        }
      }

LABEL_221:
      v215 = *(a1 + 52);
      v216 = (v215 * v8);
      if (v216 >= 1)
      {
        v217 = *(*(a1 + 184) + 8 * v19);
        do
        {
          v218 = -v10;
          if (*v217 < -v10 || (v218 = v10, *v217 > v10))
          {
            *v217 = v218;
          }

          ++v217;
          --v216;
        }

        while (v216);
      }

      if ((v306 & 1) == 0)
      {
        sub_19D32F398(a1, v299, (*(a1 + 400) + 8 * v29), (*(a1 + 136) + 8 * v23), *(a1 + 2520), (*(a1 + 208) + 24 * v19), v8, v215, *(a1 + 48), 1);
      }

      v219 = *(a1 + 2680);
      if (v219 && *(v219 + 244) == 1)
      {
        goto LABEL_299;
      }

      v220 = *(a1 + 400);
      v221 = *(a1 + 52);
      if ((v300 & 1) == 0)
      {
        sub_19D32F594((v220 + 8 * v29), (*(a1 + 160) + 8 * v305), *(a1 + 2552), v8, *(a1 + 52), v221, 1.0);
        v219 = *(a1 + 2680);
        v220 = *(a1 + 400);
        v221 = *(a1 + 52);
      }

      v222 = (v220 + 8 * v29);
      if ((!v219 || *(v219 + 384)) && v221 >= 1)
      {
        v223 = 0;
        v224 = *(*(a1 + 184) + 8 * v19);
        v225 = *v222;
        v226 = **(a1 + 2584);
        v227 = v292 * v221;
        v228 = *v222 + v227;
        v229 = v224 + v227;
        v231 = *v222 < v226 + v221 && v226 < v228;
        v233 = v225 < v229 && v224 < v228 || v231;
        v234 = (v221 < 4) | v233;
        v235 = 4 * v221;
        while ((v234 & 1) == 0)
        {
          v237 = v221 & 0x7FFFFFFC;
          v238 = v225;
          v239 = v224;
          v240 = v226;
          do
          {
            v241 = *v240++;
            v133.i32[0] = v241;
            v242 = vmovl_u8(*v133.f32).u64[0];
            v243 = 0uLL;
            v243.i8[3] = v242.i8[0];
            v243.i8[7] = v242.i8[2];
            v243.i8[11] = v242.i8[4];
            v243.i8[15] = v242.i8[6];
            v244 = *v239++;
            v133 = vbslq_s8(vmovl_s16(vceq_s16(v242, 0x7F007F007F007FLL)), v302, vbslq_s8(vmovl_s16(vcgt_s16(vshr_n_s16(vshl_n_s16(v242, 8uLL), 8uLL), 0x7E007E007E007ELL)), vmulq_f32(vcvtq_n_f32_s32(v243, 0x18uLL), v304), v303));
            *v238 = vmlaq_f32(*v238, v244, v133);
            ++v238;
            v237 -= 4;
          }

          while (v237);
          k = v221 & 0x7FFFFFFC;
          if (k != v221)
          {
            goto LABEL_258;
          }

LABEL_250:
          ++v223;
          v224 = (v224 + v235);
          v225 += v235;
          if (v223 == v8)
          {
            goto LABEL_261;
          }
        }

        for (k = 0; k != v221; ++k)
        {
LABEL_258:
          v245 = *(v226 + k);
          v246 = -5.0;
          if (v245 >= -126)
          {
            v246 = 5.0;
            if (v245 != 127)
            {
              v246 = v245 * 0.039062;
            }
          }

          *(v225 + 4 * k) = *(v225 + 4 * k) + (v224->f32[k] * v246);
        }

        goto LABEL_250;
      }

LABEL_261:
      v247 = v221 * v8;
      if (v247 >= 1)
      {
        v248 = *v222;
        do
        {
          v249 = -1035468800;
          if (*v248 < -50.0 || (v249 = 1112014848, *v248 > 50.0))
          {
            *v248 = v249;
          }

          ++v248;
          --v247;
        }

        while (v247);
      }

      sub_19D2CA3F8((*(a1 + 496) + 8 * v29), v222, v8, v221, *(a1 + 736));
      sub_19D2CA3F8(v293, (*(a1 + 184) + 8 * v19), v8, *(a1 + 52), *(a1 + 744));
      v250 = *(a1 + 160);
      v251 = *(a1 + 496);
      v252 = *(a1 + 52) * v8;
      v253 = v252 / 8;
      if (v252 >= 8)
      {
        v254 = *(v250 + 8 * v19);
        v255 = *(v251 + 8 * v29);
        v256 = v252 / 8;
        v257 = *v293;
        do
        {
          v259 = *v257;
          v258 = v257[1];
          v257 += 2;
          v261 = *v255;
          v260 = v255[1];
          v255 += 2;
          *v254 = vmulq_f32(v261, v259);
          v254[1] = vmulq_f32(v260, v258);
          v254 += 2;
          --v256;
        }

        while (v256);
      }

      v262 = 8 * v253;
      if (8 * v253 < v252)
      {
        v263 = *(v251 + 8 * v29);
        v264 = *v293;
        v265 = *(v250 + 8 * v19);
        v266 = v262;
        v267 = v252 - v262;
        if (v267 <= 7)
        {
          goto LABEL_278;
        }

        if ((v265 - v264) < 0x20)
        {
          goto LABEL_278;
        }

        if ((v265 - v263) < 0x20)
        {
          goto LABEL_278;
        }

        v268 = v267 - (v252 & 7) + v262;
        v269 = v262 + (v252 & 7) - v252;
        v270 = 4 * v262;
        v271 = (v265 + v270 + 16);
        v272 = (v264 + v270 + 16);
        v273 = (v263 + v270 + 16);
        do
        {
          v274 = vmulq_f32(*v273, *v272);
          v271[-1] = vmulq_f32(v273[-1], v272[-1]);
          *v271 = v274;
          v271 += 2;
          v272 += 2;
          v273 += 2;
          v269 += 8;
        }

        while (v269);
        v266 = v268;
        if ((v252 & 7) != 0)
        {
LABEL_278:
          v275 = v252 - v266;
          v276 = (v265 + 4 * v266);
          v277 = (v263 + 4 * v266);
          v278 = (v264 + 4 * v266);
          do
          {
            v279 = *v278++;
            v280 = v279;
            v281 = *v277++;
            *v276++ = v281 * v280;
            --v275;
          }

          while (v275);
        }
      }

      if (*(a1 + 2692) == 1)
      {
        memcpy(*(*(a1 + 112) + 8 * v19), *(*(a1 + 160) + 8 * v19), 4 * *(a1 + 52));
        memcpy(*(*(a1 + 88) + 8 * v19), *(*(a1 + 184) + 8 * v19), 4 * *(a1 + 52));
      }

      ++v12;
      v11 = v294;
      if (v12 == v294)
      {
        return;
      }
    }

    bzero(*(v24 + 8 * v23), 4 * *(a1 + 48));
    *(*(*(a1 + 64) + 8 * v23) + 4 * **(*a3 + 24 * v19)) = 1065353216;
    v25 = *(a1 + 40);
    if (v25 != 1)
    {
      goto LABEL_35;
    }

LABEL_34:
    *(*(*(a1 + 64) + 8 * v23) + 4 * *(a1 + 48) - 4) = 1065353216;
    goto LABEL_35;
  }
}

void sub_19D32E8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D32E8D8(unint64_t *a1, int **a2, uint64_t *a3, unsigned int a4, int a5)
{
  v10 = sub_19D41C530();
  v11 = sub_19D41C530() * v10;
  v15 = *a2;
  v14 = a2[1];
  v16 = v14 - *a2;
  if (v16 == 8)
  {
    if (a4 < 1)
    {
      return;
    }

    v17 = 0;
    v19 = *v15;
    v18 = (*a2)[1];
    v20 = v11 * 26.0;
    v21 = *a3;
    v22 = *a1;
    v23 = 0;
    if (a4 < 4 || a5 != 1)
    {
      goto LABEL_39;
    }

    v17 = 0;
    v24 = v22 + 4 * a4;
    v25 = v22 >= v21 + v19 + a4 || v21 + v19 >= v24;
    v26 = !v25;
    v23 = 0;
    v27 = v21 + v18 >= v24 || v22 >= v21 + v18 + a4;
    if (!v27 || v26)
    {
      goto LABEL_39;
    }

    if (a4 < 0x10)
    {
      v17 = 0;
      goto LABEL_34;
    }

    v17 = a4 & 0x7FFFFFF0;
    v37 = *a3;
    v38 = v17;
    v39 = *a1;
    do
    {
      v40 = *(v37 + v19);
      v41 = *(v37 + v18);
      v42 = vaddl_s8(*v41.i8, *v40.i8);
      v43 = vaddl_high_s8(v41, v40);
      v13 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v43.i8)), v20);
      v39[2] = v13;
      v39[3] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v43)), v20);
      v12 = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v42)), v20);
      *v39 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v42.i8)), v20);
      v39[1] = v12;
      v39 += 4;
      v37 += 16;
      v38 -= 16;
    }

    while (v38);
    if (v17 != a4)
    {
      if ((a4 & 0xC) == 0)
      {
        v23 = v17 * a5;
        goto LABEL_39;
      }

LABEL_34:
      v44 = v17;
      v17 = a4 & 0x7FFFFFFC;
      v23 = (a4 & 0x7FFFFFFC) * a5;
      v45 = (v22 + 4 * v44);
      v46 = v44 - v17;
      v47 = v21 + v44 * a5;
      do
      {
        v12.i32[0] = *(v47 + v19);
        v13.i32[0] = *(v47 + v18);
        v13.i64[0] = vmovl_s8(*v13.f32).u64[0];
        v12 = vmulq_n_f32(vcvtq_f32_s32(vaddl_s16(*v13.f32, *&vmovl_s8(*v12.f32))), v20);
        *v45++ = v12;
        v47 += 4;
        v46 += 4;
      }

      while (v46);
      if (v17 == a4)
      {
        return;
      }

LABEL_39:
      v48 = (v22 + 4 * v17);
      v49 = a4 - v17;
      v50 = v21 + v23;
      do
      {
        *v48++ = v20 * (*(v50 + v18) + *(v50 + v19));
        v50 += a5;
        --v49;
      }

      while (v49);
    }
  }

  else if (a4 >= 1)
  {
    v28 = *a1;
    if (v14 == v15)
    {

      bzero(v28, 4 * a4);
    }

    else
    {
      v29 = 0;
      v30 = v16 >> 2;
      v31 = v11 * 26.0;
      v32 = *a3;
      if (v30 <= 1)
      {
        v30 = 1;
      }

      do
      {
        *(v28 + v29) = 0;
        v33 = 0.0;
        v34 = v30;
        v35 = v15;
        do
        {
          v36 = *v35++;
          v13.i8[0] = *(v32 + v29 * a5 + v36);
          v13.i64[0] = vmovl_s16(*&vmovl_s8(*v13.f32)).u64[0];
          v13.f32[0] = v13.i32[0];
          v33 = v33 + (v31 * v13.f32[0]);
          *(v28 + v29) = v33;
          --v34;
        }

        while (v34);
        ++v29;
      }

      while (v29 != a4);
    }
  }
}

void *sub_19D32EB78(uint64_t a1, int a2, void **a3, void **a4, void **a5, void **a6, void *a7, uint64_t *a8, uint64_t a9, unsigned int a10, unsigned int a11, int a12, char a13)
{
  if (a2)
  {
    sub_19D41C548(545);
  }

  v18 = 4 * a11;
  if (!*(a1 + 784))
  {
    operator new[]();
  }

  sub_19D32F594((a1 + 784), a7, a8, a10, a12, 4 * a11, 0.0);
  v19 = *a3;
  __dst = *a4;
  v20 = *a5;
  v21 = *a6;
  v22 = a11 * a10;
  v23 = (a11 * a10);
  v24 = 4 * v23;
  if (a10 < 1)
  {
    bzero(*(a1 + 752), 4 * v22);
    v36 = *(a1 + 752);
    if ((a13 & 1) == 0)
    {
LABEL_19:
      memmove(v19, v36, v24);
      bzero(*(a1 + 752), v24);
      memmove(__dst, *(a1 + 752), v24);
      bzero(*(a1 + 752), v24);
      memmove(v20, *(a1 + 752), v24);
      bzero(*(a1 + 752), v24);
      v41 = *(a1 + 752);
      v42 = v21;
      return memmove(v42, v41, v24);
    }

LABEL_17:
    MEMORY[0x19EAFB120](v36, 1, v19, 1, v19, 1, v23);
    bzero(*(a1 + 752), v24);
    MEMORY[0x19EAFB120](*(a1 + 752), 1, __dst, 1, __dst, 1, v23);
    bzero(*(a1 + 752), v24);
    MEMORY[0x19EAFB120](*(a1 + 752), 1, v20, 1, v20, 1, v23);
    bzero(*(a1 + 752), v24);
    v37 = *(a1 + 752);
    v38 = v21;
    v39 = v21;
    v40 = (a11 * a10);
    return MEMORY[0x19EAFB120](v37, 1, v38, 1, v39, 1, v40);
  }

  if (a11 < 1)
  {
    bzero(*(a1 + 752), 4 * v22);
    v36 = *(a1 + 752);
    if ((a13 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v137 = v21;
  v138 = v22;
  bzero(*(a1 + 752), 4 * v22);
  v25 = *(a1 + 784);
  v26 = *(a1 + 752);
  v27 = a11 * a10;
  v28 = (a10 + 0x3FFFFFFFFFFFFFFFLL) * v18;
  v29 = a11 & 0x7FFFFFF8;
  v30 = 4 * v18;
  v31 = 4 * a11;
  v140 = v28;
  if (a11 > 7)
  {
    v43 = v26 >= &v25[v28 + a11] || v25 >= &v26[v27];
    v35 = a13;
    if (v43)
    {
      v44 = a11 - v29;
      if (a11 == v29)
      {
        v45 = v26 + 4;
        v46 = (v25 + 4);
        do
        {
          v47 = v46;
          v48 = v45;
          v49 = a11 & 0x7FFFFFF8;
          do
          {
            v50 = *v47;
            *(v48 - 1) = *(v47 - 1);
            *v48 = v50;
            v48 += 2;
            v47 += 2;
            v49 -= 8;
          }

          while (v49);
          ++v44;
          v45 = (v45 + v31);
          v46 = (v46 + v30);
        }

        while (v44 != a10);
      }

      else
      {
        v57 = 0;
        v58 = (v25 + 4);
        v59 = v26 + 4;
        v60 = 8 * ((a11 >> 3) & 0xFFFFFFF);
        v61 = &v26[v60];
        v62 = &v25[v60];
        do
        {
          v63 = a11 & 0x7FFFFFF8;
          v64 = v59;
          v65 = v58;
          do
          {
            v66 = *v65;
            *(v64 - 1) = *(v65 - 1);
            *v64 = v66;
            v65 += 2;
            v64 += 2;
            v63 -= 8;
          }

          while (v63);
          v67 = v62;
          v68 = v61;
          v69 = a11 - v29;
          do
          {
            v70 = *v67++;
            *v68++ = v70;
            --v69;
          }

          while (v69);
          ++v57;
          v58 = (v58 + v30);
          v59 = (v59 + v31);
          v61 = (v61 + v31);
          v62 = (v62 + v30);
        }

        while (v57 != a10);
      }
    }

    else
    {
      v51 = 0;
      v52 = *(a1 + 752);
      do
      {
        v53 = v25;
        v54 = v52;
        v55 = a11;
        do
        {
          v56 = *v53++;
          *v54++ = v56;
          --v55;
        }

        while (v55);
        ++v51;
        v52 = (v52 + v31);
        v25 = (v25 + v30);
      }

      while (v51 != a10);
    }
  }

  else
  {
    v32 = v26 + 3;
    v33 = v25 + 3;
    v34 = a10;
    v35 = a13;
    do
    {
      *(v32 - 3) = *(v33 - 3);
      if (a11 != 1)
      {
        *(v32 - 2) = *(v33 - 2);
        if (a11 != 2)
        {
          *(v32 - 1) = *(v33 - 1);
          if (a11 != 3)
          {
            *v32 = *v33;
            if (a11 != 4)
            {
              v32[1] = v33[1];
              if (a11 != 5)
              {
                v32[2] = v33[2];
                if (a11 != 6)
                {
                  v32[3] = v33[3];
                }
              }
            }
          }
        }
      }

      v32 = (v32 + v31);
      v33 = (v33 + v30);
      --v34;
    }

    while (v34);
  }

  if (v35)
  {
    MEMORY[0x19EAFB120](v26, 1, v19, 1, v19, 1, v138);
  }

  else
  {
    memmove(v19, v26, v24);
  }

  bzero(*(a1 + 752), v24);
  v71 = *(a1 + 784);
  v72 = *(a1 + 752);
  v73 = (v71 + 4 * a11);
  v139 = 4 * v140;
  v75 = v72 < v71 + 4 * v140 + 8 * a11 && v73 < &v72[v27 * 4];
  if (a11 >= 8)
  {
    v83 = 0;
    v84 = v31 + v71 + 16;
    v85 = v72 + 16;
    v86 = *(a1 + 752);
    v78 = a13;
    while (1)
    {
      if (v75)
      {
        v87 = 0;
      }

      else
      {
        v88 = a11 & 0x7FFFFFF8;
        v89 = v85;
        v90 = v84;
        do
        {
          v91 = *v90;
          *(v89 - 1) = *(v90 - 1);
          *v89 = v91;
          v90 += 2;
          v89 += 2;
          v88 -= 8;
        }

        while (v88);
        v87 = a11 & 0x7FFFFFF8;
        if (a11 == v29)
        {
          goto LABEL_58;
        }
      }

      v92 = a11 - v87;
      v93 = 4 * v87;
      v94 = (v86 + 4 * v87);
      v95 = &v73[v93];
      do
      {
        v96 = *v95;
        v95 += 4;
        *v94++ = v96;
        --v92;
      }

      while (v92);
LABEL_58:
      ++v83;
      v84 += v30;
      v85 = (v85 + v31);
      v86 += v31;
      v73 += v30;
      if (v83 == a10)
      {
        goto LABEL_55;
      }
    }
  }

  v76 = 0;
  v77 = *(a1 + 752);
  v78 = a13;
  do
  {
    v79 = v73;
    v80 = v77;
    v81 = a11;
    do
    {
      v82 = *v79;
      v79 += 4;
      *v80++ = v82;
      --v81;
    }

    while (v81);
    ++v76;
    v77 = (v77 + v31);
    v73 += v30;
  }

  while (v76 != a10);
LABEL_55:
  v141 = 4 * a11 * a10;
  if (v78)
  {
    MEMORY[0x19EAFB120](v72, 1, __dst, 1, __dst, 1, v138);
  }

  else
  {
    memmove(__dst, v72, v24);
  }

  bzero(*(a1 + 752), v24);
  v97 = 0;
  v98 = *(a1 + 784);
  v99 = *(a1 + 752);
  v100 = v98 + 8 * a11;
  v102 = v99 < v98 + v139 + 12 * a11 && v100 < &v99[v141];
  v103 = a11 < 8 || v102;
  v104 = (v100 + 16);
  v105 = v99 + 16;
  v106 = *(a1 + 752);
  do
  {
    if (v103)
    {
      v107 = 0;
LABEL_81:
      v112 = a11 - v107;
      v113 = 4 * v107;
      v114 = (v106 + 4 * v107);
      v115 = (v100 + v113);
      do
      {
        v116 = *v115++;
        *v114++ = v116;
        --v112;
      }

      while (v112);
      goto LABEL_75;
    }

    v108 = a11 & 0x7FFFFFF8;
    v109 = v105;
    v110 = v104;
    do
    {
      v111 = *v110;
      *(v109 - 1) = *(v110 - 1);
      *v109 = v111;
      v110 += 2;
      v109 += 2;
      v108 -= 8;
    }

    while (v108);
    v107 = a11 & 0x7FFFFFF8;
    if (a11 != v29)
    {
      goto LABEL_81;
    }

LABEL_75:
    ++v97;
    v104 = (v104 + v30);
    v105 = (v105 + v31);
    v106 += v31;
    v100 += v30;
  }

  while (v97 != a10);
  if (a13)
  {
    MEMORY[0x19EAFB120](v99, 1, v20, 1, v20, 1, v138);
  }

  else
  {
    memmove(v20, v99, v24);
  }

  bzero(*(a1 + 752), v24);
  v117 = 0;
  v118 = *(a1 + 784);
  v41 = *(a1 + 752);
  v119 = v118 + 12 * a11;
  v121 = v41 < v118 + v139 + 16 * a11 && v119 < &v41[v141];
  v122 = a11 < 8 || v121;
  v123 = (v119 + 16);
  v124 = v41 + 16;
  v125 = *(a1 + 752);
  while (2)
  {
    if (v122)
    {
      v126 = 0;
      goto LABEL_100;
    }

    v127 = a11 & 0x7FFFFFF8;
    v128 = v124;
    v129 = v123;
    do
    {
      v130 = *v129;
      *(v128 - 1) = *(v129 - 1);
      *v128 = v130;
      v129 += 2;
      v128 += 2;
      v127 -= 8;
    }

    while (v127);
    v126 = a11 & 0x7FFFFFF8;
    if (a11 != v29)
    {
LABEL_100:
      v131 = a11 - v126;
      v132 = 4 * v126;
      v133 = (v125 + 4 * v126);
      v134 = (v119 + v132);
      do
      {
        v135 = *v134++;
        *v133++ = v135;
        --v131;
      }

      while (v131);
    }

    ++v117;
    v123 = (v123 + v30);
    v124 = (v124 + v31);
    v125 += v31;
    v119 += v30;
    if (v117 != a10)
    {
      continue;
    }

    break;
  }

  if ((a13 & 1) == 0)
  {
    v42 = v137;
    return memmove(v42, v41, v24);
  }

  v37 = v41;
  v38 = v137;
  v39 = v137;
  v40 = v138;
  return MEMORY[0x19EAFB120](v37, 1, v38, 1, v39, 1, v40);
}

void sub_19D32F398(uint64_t a1, int a2, void *a3, void *a4, uint64_t *a5, void *a6, int a7, signed int a8, int a9, char a10)
{
  if (a10)
  {
    if (!a2)
    {
      sub_19D32F594((a1 + 752), a4, a5, a7, a9, a8, 0.0);

      JUMPOUT(0x19EAFB120);
    }

    if (a7 != 1)
    {
      sub_19D41C548(502);
    }

    __p = 0;
    v15 = 0;
    v16 = 0;
    v12 = a6[1];
    if (v12 != *a6)
    {
      if (((v12 - *a6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v13 = (a1 + 760);
    sub_19D32E8D8((a1 + 760), &__p, a5, a8, a9);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    MEMORY[0x19EAFB120](*v13, 1, *a3, 1, *a3, 1, a8);
  }

  else
  {
    if (a2)
    {
      sub_19D41C548(456);
    }

    sub_19D32F594(a3, a4, a5, a7, a9, a8, 0.0);
  }
}

void sub_19D32F578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D32F594(void *a1, void *a2, uint64_t *a3, int a4, int a5, int a6, float a7)
{
  v14 = sub_19D41C530();
  v26 = sub_19D41C530() * v14;
  if (a4 != 1)
  {
    sub_19D41C548(354);
  }

  v15 = a5 - (qword_1ED44E380 - qword_1ED44E378);
  if (a5 <= (qword_1ED44E380 - qword_1ED44E378))
  {
    if (a5 < (qword_1ED44E380 - qword_1ED44E378))
    {
      qword_1ED44E380 = qword_1ED44E378 + a5;
    }
  }

  else
  {
    if (qword_1ED44E388 - qword_1ED44E380 < v15)
    {
      if ((a5 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v16 = qword_1ED44E380 + v15;
    bzero(qword_1ED44E380, a5 - (qword_1ED44E380 - qword_1ED44E378));
    qword_1ED44E380 = v16;
  }

  v17 = (qword_1ED44E368 - qword_1ED44E360) >> 2;
  if (a6 <= v17)
  {
    if (a6 < v17)
    {
      qword_1ED44E368 = qword_1ED44E360 + 4 * a6;
    }
  }

  else
  {
    sub_19D2CA0E8(&qword_1ED44E360, a6 - v17);
  }

  if (a5 >= 1)
  {
    v18 = 0;
    do
    {
      v20 = *(*a2 + 4 * v18);
      if (v20 <= -5.0)
      {
        LOBYTE(v19) = -127;
      }

      else if (v20 < 5.0 && (v19 = llroundf(v20 * 25.6), v19 <= 127))
      {
        if (v19 <= -127)
        {
          LOBYTE(v19) = -127;
        }
      }

      else
      {
        LOBYTE(v19) = 127;
      }

      *(qword_1ED44E378 + v18++) = v19;
    }

    while (a5 != v18);
  }

  v21 = *a3;
  v35[1] = 0x3F80000000020008;
  v35[2] = 0;
  v34[2] = 0;
  v35[0] = a5;
  v34[0] = a6;
  v34[1] = 0x3F80000000010020;
  v28[0] = a5;
  v28[1] = a6;
  v28[2] = v21;
  v28[3] = 0x3F80000000020008;
  v28[4] = 0;
  v28[5] = 0;
  v29 = xmmword_19D475558;
  v30 = unk_19D475568;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  bzero(v27, 0x20uLL);
  v27[0] = 1;
  v22 = MEMORY[0x19EAF99B0](v35, v34, v28, v27);
  if (!v22)
  {
    sub_19D41C548(1010);
  }

  v23 = v22;
  v24 = BNNSFilterApply(v22, qword_1ED44E378, qword_1ED44E360);
  v25 = *a1;
  if (a7 != 0.0)
  {
    MEMORY[0x19EAFB1F0](qword_1ED44E360, 1, &v26, v25, 1, *a1, 1, a6);
    if (!v24)
    {
      goto LABEL_26;
    }

LABEL_28:
    sub_19D41C548(345);
  }

  MEMORY[0x19EAFB210](qword_1ED44E360, 1, &v26, v25, 1, a6);
  if (v24)
  {
    goto LABEL_28;
  }

LABEL_26:
  BNNSFilterDestroy(v23);
}

void *sub_19D32F8C0(void *a1)
{
  *a1 = &unk_1F10B7D08;
  sub_19D32A370(a1);
  v2 = a1[194];
  if (v2)
  {
    (*(*v2 + 80))(v2);
    a1[194] = 0;
    v3 = a1[195];
    if (v3)
    {
      (*(*v3 + 80))(v3);
    }

    a1[195] = 0;
    v4 = a1[196];
    if (v4)
    {
      (*(*v4 + 80))(v4);
    }

    a1[196] = 0;
    v5 = a1[197];
    if (v5)
    {
      (*(*v5 + 80))(v5);
    }

    a1[197] = 0;
    v6 = a1[198];
    if (v6)
    {
      (*(*v6 + 80))(v6);
    }

    a1[198] = 0;
    v7 = a1[199];
    if (v7)
    {
      (*(*v7 + 80))(v7);
    }

    a1[199] = 0;
    v8 = a1[200];
    if (v8)
    {
      (*(*v8 + 80))(v8);
    }

    a1[200] = 0;
    v9 = a1[201];
    if (v9)
    {
      (*(*v9 + 80))(v9);
    }

    a1[201] = 0;
  }

  v10 = a1[331];
  if (v10)
  {
    a1[332] = v10;
    operator delete(v10);
  }

  v11 = a1[328];
  if (v11)
  {
    a1[329] = v11;
    operator delete(v11);
  }

  sub_19D429384((a1 + 303));
  sub_19D429384((a1 + 294));
  sub_19D429384((a1 + 285));
  sub_19D429384((a1 + 276));
  sub_19D429384((a1 + 267));
  sub_19D429384((a1 + 258));
  sub_19D429384((a1 + 249));
  sub_19D429384((a1 + 240));
  sub_19D429384((a1 + 231));
  sub_19D429384((a1 + 222));
  sub_19D429384((a1 + 213));
  sub_19D308FC0(a1 + 168);
  sub_19D308FC0(a1 + 153);
  sub_19D308FC0(a1 + 138);
  sub_19D308FC0(a1 + 123);
  v12 = a1[120];
  if (v12)
  {
    a1[121] = v12;
    operator delete(v12);
  }

  v13 = a1[117];
  if (v13)
  {
    a1[118] = v13;
    operator delete(v13);
  }

  v14 = a1[114];
  if (v14)
  {
    a1[115] = v14;
    operator delete(v14);
  }

  v15 = a1[111];
  if (v15)
  {
    a1[112] = v15;
    operator delete(v15);
  }

  v16 = a1[108];
  if (v16)
  {
    a1[109] = v16;
    operator delete(v16);
  }

  v17 = a1[105];
  if (v17)
  {
    a1[106] = v17;
    operator delete(v17);
  }

  v18 = a1[102];
  if (v18)
  {
    a1[103] = v18;
    operator delete(v18);
  }

  v19 = a1[99];
  if (v19)
  {
    a1[100] = v19;
    operator delete(v19);
  }

  v20 = a1[89];
  if (v20)
  {
    a1[90] = v20;
    operator delete(v20);
  }

  v21 = a1[86];
  if (v21)
  {
    a1[87] = v21;
    operator delete(v21);
  }

  v22 = a1[83];
  if (v22)
  {
    a1[84] = v22;
    operator delete(v22);
  }

  v23 = a1[80];
  if (v23)
  {
    a1[81] = v23;
    operator delete(v23);
  }

  v24 = a1[77];
  if (v24)
  {
    a1[78] = v24;
    operator delete(v24);
  }

  v25 = a1[74];
  if (v25)
  {
    a1[75] = v25;
    operator delete(v25);
  }

  v26 = a1[71];
  if (v26)
  {
    a1[72] = v26;
    operator delete(v26);
  }

  v27 = a1[68];
  if (v27)
  {
    a1[69] = v27;
    operator delete(v27);
  }

  v28 = a1[65];
  if (v28)
  {
    a1[66] = v28;
    operator delete(v28);
  }

  v29 = a1[62];
  if (v29)
  {
    a1[63] = v29;
    operator delete(v29);
  }

  v30 = a1[59];
  if (v30)
  {
    a1[60] = v30;
    operator delete(v30);
  }

  v31 = a1[56];
  if (v31)
  {
    a1[57] = v31;
    operator delete(v31);
  }

  v32 = a1[53];
  if (v32)
  {
    a1[54] = v32;
    operator delete(v32);
  }

  v33 = a1[50];
  if (v33)
  {
    a1[51] = v33;
    operator delete(v33);
  }

  v34 = a1[47];
  if (v34)
  {
    a1[48] = v34;
    operator delete(v34);
  }

  v35 = a1[44];
  if (v35)
  {
    a1[45] = v35;
    operator delete(v35);
  }

  v36 = a1[26];
  if (v36)
  {
    v37 = a1[27];
    v38 = a1[26];
    if (v37 != v36)
    {
      v39 = a1[27];
      do
      {
        v41 = *(v39 - 24);
        v39 -= 24;
        v40 = v41;
        if (v41)
        {
          *(v37 - 16) = v40;
          operator delete(v40);
        }

        v37 = v39;
      }

      while (v39 != v36);
      v38 = a1[26];
    }

    a1[27] = v36;
    operator delete(v38);
  }

  v42 = a1[23];
  if (v42)
  {
    a1[24] = v42;
    operator delete(v42);
  }

  v43 = a1[20];
  if (v43)
  {
    a1[21] = v43;
    operator delete(v43);
  }

  v44 = a1[17];
  if (v44)
  {
    a1[18] = v44;
    operator delete(v44);
  }

  v45 = a1[14];
  if (v45)
  {
    a1[15] = v45;
    operator delete(v45);
  }

  v46 = a1[11];
  if (v46)
  {
    a1[12] = v46;
    operator delete(v46);
  }

  v47 = a1[8];
  if (v47)
  {
    a1[9] = v47;
    operator delete(v47);
  }

  *a1 = &unk_1F10B68F8;
  v48 = a1[1];
  if (v48)
  {
    a1[2] = v48;
    operator delete(v48);
  }

  return a1;
}

uint64_t sub_19D32FD7C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B7EA8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  *(a1 + 100) = a3;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 416) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 400) = 0;
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
  sub_19D42933C(a1 + 432);
  *(a1 + 504) = a5;
  *(a1 + 112) = a6;
  (*(*a1 + 192))(a1);
  *(a1 + 41) = 0;
  *(a1 + 408) = a4;
  *(a1 + 120) = *(a7 + 68);
  *(a1 + 528) = a9;
  if (a9)
  {
    nullsub_171("FullLayer constructor");
    a8 = *(*(a1 + 528) + 376);
  }

  *(a1 + 40) = a8;
  *(a1 + 520) = 0;
  *(a1 + 116) = *(a7 + 45);
  v18 = 9;
  strcpy(__p, "FullLayer");
  (*(*a1 + 400))(a1, __p, 0, -0.44);
  if (v18 < 0)
  {
    operator delete(__p[0]);
    *(a1 + 32) = *(a7 + 16);
    *(a1 + 424) = 0;
    if (*(a1 + 116))
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 32) = *(a7 + 16);
    *(a1 + 424) = 0;
    if (*(a1 + 116))
    {
      return a1;
    }
  }

  v15 = *(a7 + 32);
  switch(v15)
  {
    case 2:
      operator new();
    case 1:
      operator new();
    case 0:
      operator new();
  }

  return a1;
}

void sub_19D33014C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v23);
  sub_19D429384(v20 + 432);
  v26 = *(v20 + 384);
  if (v26)
  {
    *(v20 + 392) = v26;
    operator delete(v26);
    sub_19D2B2DD8((v20 + 360));
    v27 = *(v20 + 336);
    if (!v27)
    {
LABEL_5:
      v28 = *(v20 + 312);
      if (!v28)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_19D2B2DD8((v20 + 360));
    v27 = *(v20 + 336);
    if (!v27)
    {
      goto LABEL_5;
    }
  }

  *(v20 + 344) = v27;
  operator delete(v27);
  v28 = *(v20 + 312);
  if (!v28)
  {
LABEL_6:
    v29 = *(v20 + 288);
    if (!v29)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v20 + 320) = v28;
  operator delete(v28);
  v29 = *(v20 + 288);
  if (!v29)
  {
LABEL_7:
    v30 = *(v20 + 264);
    if (!v30)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v20 + 296) = v29;
  operator delete(v29);
  v30 = *(v20 + 264);
  if (!v30)
  {
LABEL_8:
    sub_19D308FC0(v22);
    v31 = *(v20 + 72);
    if (!v31)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v20 + 272) = v30;
  operator delete(v30);
  sub_19D308FC0(v22);
  v31 = *(v20 + 72);
  if (!v31)
  {
LABEL_9:
    v32 = *v24;
    if (!*v24)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v20 + 80) = v31;
  operator delete(v31);
  v32 = *v24;
  if (!*v24)
  {
LABEL_10:
    *v20 = v21;
    v33 = *(v20 + 8);
    if (!v33)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v20 + 56) = v32;
  operator delete(v32);
  *v20 = v21;
  v33 = *(v20 + 8);
  if (!v33)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_19:
  *(v20 + 16) = v33;
  operator delete(v33);
  _Unwind_Resume(a1);
}

_BYTE *sub_19D3302EC(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_17:
    sub_19D41C548(3);
  }

  v6 = *(a2 + 72);
  v7 = *a2;
  v8 = (*a2 + v6);
  v9 = *a2 + *(a2 + 8) - 4;
  if (v8 > v9)
  {
    v10 = 0;
    v11 = (v7 + v6);
    if (v11 <= v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    if (a4 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = *v8;
  v6 += 4;
  *(a2 + 72) = v6;
  v11 = (v7 + v6);
  if (v11 > v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = *v11;
  v6 += 4;
  *(a2 + 72) = v6;
  if (a4 < 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v13 = (v7 + v6);
  if (v13 <= v9)
  {
    v14 = *v13;
    *(a2 + 72) = v6 + 4;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 408) = v14;
LABEL_12:
  if (*(a1 + 100) != v10 || *(a1 + 104) != v12)
  {
    goto LABEL_17;
  }

  v15 = *(a1 + 512);
  v16 = *a3;
  v17 = *(a1 + 117);
  v18 = sub_19D41C528();
  v19 = *(a1 + 100);
  v20 = *(a1 + 104);

  return sub_19D3092B8(v15, a2, v16, v17, v18, v19, v20);
}

uint64_t sub_19D330414(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 104);
  sub_19D41C9E8(__stream, a3, *(a1 + 100));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    sub_19D41C9E8(__stream, a3, *(a1 + 408));
  }

  v11 = *(a1 + 512);
  v12 = sub_19D41C528();

  return sub_19D32CE00(v11, __stream, a3, 3, v12, a5);
}

void *sub_19D3304D0(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8040, 0);
  }

  else
  {
    v5 = 0;
  }

  result = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B8040, 0);
  v7 = (*(a1 + 104) * *(a1 + 100));
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 512);
    do
    {
      *(*v9 + v8) = *(result[16] + v8) - *(v5[16] + v8);
      ++v8;
    }

    while (v7 != v8);
  }

  return result;
}

void *sub_19D330630(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8040, 0);
  v4 = (*(a1 + 104) * *(a1 + 100));
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 512);
    do
    {
      *(*v6 + v5) += *(result[16] + v5);
      ++v5;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_19D33073C(uint64_t result, float a2, double a3, double a4)
{
  v4 = *(result + 108);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 512);
    do
    {
      LOBYTE(a4) = *(*v6 + v5);
      *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
      v7 = SLODWORD(a4);
      v8 = SLODWORD(a4) < -a2;
      *&a4 = -a2;
      if (v8 || (*&a4 = a2, v7 > a2))
      {
        *(*v6 + v5) = *&a4;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_19D3307A0(uint64_t result, float a2, double a3)
{
  v3 = *(result + 108);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 512);
    do
    {
      LOBYTE(a3) = *(*v5 + v4);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) * a2;
      *(*v5 + v4++) = *&a3;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_19D33081C(uint64_t a1, uint64_t a2)
{
  v2[0] = **(a1 + 512);
  v2[1] = *(a1 + 100);
  sub_19D309FB0(a2, v2);
}

uint64_t sub_19D33085C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 - 16);
  *(a2 + 8) = v2 - 16;
  *(a1 + 128) = v3;
  result = a1 + 128;
  *(result + 384) = result;
  return result;
}

void sub_19D330964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D330980(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = *(a1 + 48);
        v3 = *(a1 + 56);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = *(a1 + 72);
        v7 = *(a1 + 80);
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
    v2 = *(a1 + 48);
  }

  *(a1 + 56) = v2;
  *(a1 + 80) = v6;
  v10 = *(a1 + 240);
  v11 = *(a1 + 248);
  if (v11 != v10)
  {
    v12 = 0;
    do
    {
      v13 = *(v10 + 8 * v12);
      if (v13)
      {
        operator delete[](v13);
        v10 = *(a1 + 240);
        v11 = *(a1 + 248);
      }

      ++v12;
    }

    while (v12 < (v11 - v10) >> 3);
  }

  *(a1 + 248) = v10;
  v14 = *(a1 + 224);
  if (v14)
  {
    operator delete(v14);
    *(a1 + 224) = 0;
  }

  v15 = *(a1 + 216);
  if (v15)
  {
    operator delete(v15);
    *(a1 + 216) = 0;
  }

  *(a1 + 272) = *(a1 + 264);
  *(a1 + 296) = *(a1 + 288);
  *(a1 + 392) = *(a1 + 384);
  v17 = *(a1 + 360);
  v16 = *(a1 + 368);
  if (v16 != v17)
  {
    v18 = *(a1 + 368);
    do
    {
      v20 = *(v18 - 24);
      v18 -= 24;
      v19 = v20;
      if (v20)
      {
        *(v16 - 16) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 368) = v17;
  if ((*(a1 + 116) & 1) == 0)
  {
    *(a1 + 320) = *(a1 + 312);
    *(a1 + 344) = *(a1 + 336);
  }
}

float sub_19D330AE8(uint64_t a1, void *a2, float *a3, int a4)
{
  v5 = *(a1 + 100);
  if (v5 < 1)
  {
    v10 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 1.1755e-38;
    do
    {
      v9 = *(*(*a2 + 8 * a4) + 4 * v7);
      if (v9 > v8)
      {
        v6 = v7;
      }

      v8 = fmaxf(v9, v8);
      ++v7;
    }

    while (v5 != v7);
    v10 = v6;
  }

  v11 = *(*(*(a1 + 288) + 8 * a4) + 4 * v10);
  if (v11 <= 1.0e-10)
  {
    result = 99.0;
    *a3 = 99.0;
  }

  else
  {
    result = -log2f(v11);
    *a3 = result;
  }

  return result;
}

float32x4_t sub_19D330B98(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, _DWORD *a5, float32x4_t result)
{
  v6 = *(a1 + 288);
  v7 = *(a1 + 100);
  if (v7 <= 0)
  {
    v14 = *a2;
    v15 = (*a2 + 8 * a4);
    v17 = *a3;
    if (a4 >= ((a3[1] - *a3) >> 3))
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 1.1755e-38;
    do
    {
      v11 = *(*(v6 + 8 * a4) + 4 * v9);
      if (v11 > v10)
      {
        v8 = v9;
      }

      v10 = fmaxf(v11, v10);
      ++v9;
    }

    while (v7 != v9);
    v12 = 0;
    v13 = 0;
    v14 = *a2;
    v15 = (*a2 + 8 * a4);
    result.i32[0] = 0x800000;
    do
    {
      v16 = (*v15)->f32[v13];
      if (v16 > result.f32[0])
      {
        v12 = v13;
      }

      result.f32[0] = fmaxf(v16, result.f32[0]);
      ++v13;
    }

    while (v7 != v13);
    if (v8 != v12)
    {
      ++*a5;
    }

    v17 = *a3;
    if (a4 >= ((a3[1] - *a3) >> 3))
    {
      return result;
    }
  }

  if (a4 < ((a2[1] - v14) >> 3) && a4 < ((*(a1 + 296) - v6) >> 3))
  {
    v18 = *(a1 + 100);
    if (v18 >= 1)
    {
      v19 = *v15;
      v20 = *(v6 + 8 * a4);
      v21 = *(v17 + 8 * a4);
      if (v18 >= 8)
      {
        v22 = 0;
        if ((v21 - v19) >= 0x20 && (v21 - v20) >= 0x20)
        {
          v22 = v18 & 0x7FFFFFF8;
          v30 = v19 + 1;
          v31 = v20 + 1;
          v32 = v21 + 1;
          v33 = v22;
          do
          {
            result = vsubq_f32(v30[-1], v31[-1]);
            v34 = vsubq_f32(*v30, *v31);
            v32[-1] = result;
            *v32 = v34;
            v30 += 2;
            v31 += 2;
            v32 += 2;
            v33 -= 8;
          }

          while (v33);
          if (v22 == v18)
          {
            return result;
          }
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = &v21->i32[v22];
      v24 = &v20->f32[v22];
      v25 = &v19->f32[v22];
      v26 = v18 - v22;
      do
      {
        v27 = *v25++;
        v28 = v27;
        v29 = *v24++;
        result.f32[0] = v28 - v29;
        *v23++ = result.i32[0];
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

void sub_19D330D2C(uint64_t a1, void *a2, void *a3, int a4)
{
  if (((**a1)(a1) & 1) == 0)
  {
    v9 = 8 * a4;
    sub_19D3128E0((a1 + 416), (*(a1 + 384) + v9), (*a2 + v9), *(a1 + 100), *(a1 + 408), v8);
    sub_19D32D178((*(a1 + 312) + v9), (a1 + 416), *(a1 + 512), *(a1 + 100), *(a1 + 104), 0.0);
    v10 = *(a1 + 104);
    if (v10 >= 1)
    {
      v11 = *(*(a1 + 312) + 8 * a4);
      do
      {
        v12 = -1035468800;
        if (*v11 < -50.0 || (v12 = 1112014848, *v11 > 50.0))
        {
          *v11 = v12;
        }

        ++v11;
        --v10;
      }

      while (v10);
    }
  }

  if (a3[1] == *a3 || *(a1 + 112) < 1 || !(**a1)(a1))
  {
    v16 = *(a1 + 264) + 8 * a4;
    v17 = a1 + 416;
    v18 = *(a1 + 104);
    v19 = *(a1 + 100);
    v20 = *(a1 + 136);
    global_queue = dispatch_get_global_queue(0, 0);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 0x40000000;
    v37[2] = sub_19D30AD54;
    v37[3] = &unk_1E7626958;
    v38 = v18;
    v37[4] = v20;
    v37[5] = v17;
    v37[6] = v16;
    dispatch_apply(v19, global_queue, v37);
  }

  else
  {
    v13 = (*(a1 + 360) + 24 * a4);
    v15 = *v13;
    v14 = v13[1];
    if (v14 != v15)
    {
      if (((v14 - v15) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v22 = *(a1 + 100);
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = *(*a2 + 8 * a4);
      v25 = *(*(a1 + 168) + 8 * *(a1 + 160));
      if (v22 < 8)
      {
        goto LABEL_22;
      }

      if ((v25 - v24) < 0x20)
      {
        goto LABEL_22;
      }

      v23 = v22 & 0x7FFFFFF8;
      v26 = (v24 + 16);
      v27 = (v25 + 16);
      v28 = v23;
      do
      {
        v29 = *v26;
        *(v27 - 1) = *(v26 - 1);
        *v27 = v29;
        v26 += 2;
        v27 += 2;
        v28 -= 8;
      }

      while (v28);
      if (v23 != v22)
      {
LABEL_22:
        v30 = v22 - v23;
        v31 = 4 * v23;
        v32 = (v25 + 4 * v23);
        v33 = (v24 + v31);
        do
        {
          v34 = *v33++;
          *v32++ = v34;
          --v30;
        }

        while (v30);
      }
    }

    if (*(a1 + 156) < 1)
    {
      ++*(a1 + 160);
    }

    else
    {
      v35 = 0;
      v36 = *(a1 + 192);
      do
      {
        *(*(v36 + 24 * *(a1 + 160)) + 4 * v35) = *(4 * v35);
        ++v35;
      }

      while (v35 < *(a1 + 156));
      ++*(a1 + 160);

      operator delete(0);
    }
  }
}

void sub_19D331060(uint64_t a1, int a2)
{
  if ((*(a1 + 116) & 1) == 0)
  {
    if (!*(a1 + 112))
    {
      bzero(*(a1 + 136), 4 * *(a1 + 108));
      v4 = *(a1 + 264);
      if (*(a1 + 272) == v4)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    *(a1 + 160) = 0;
  }

  v4 = *(a1 + 264);
  if (*(a1 + 272) == v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  v5 = 0;
  do
  {
    bzero(*(v4 + 8 * v5++), 4 * *(a1 + 104));
    v4 = *(a1 + 264);
  }

  while (v5 < (*(a1 + 272) - v4) >> 3);
LABEL_7:
  v6 = *(a1 + 288);
  if (*(a1 + 296) != v6)
  {
    v7 = 0;
    do
    {
      bzero(*(v6 + 8 * v7++), 4 * *(a1 + 100));
      v6 = *(a1 + 288);
    }

    while (v7 < (*(a1 + 296) - v6) >> 3);
  }

  if (a2 >= 1 && (*(a1 + 116) & 1) == 0)
  {
    v8 = 0;
    v9 = 8 * a2;
    do
    {
      if ((*(a1 + 116) & 1) == 0)
      {
        bzero(*(*(a1 + 312) + v8), 4 * *(a1 + 104));
        bzero(*(*(a1 + 336) + v8), 4 * *(a1 + 100));
      }

      v8 += 8;
    }

    while (v9 != v8);
  }
}

void sub_19D331198(uint64_t a1)
{
  if (*(a1 + 112) >= 1)
  {
    sub_19D41C548(33);
  }

  sub_19D41C548(23);
}

void sub_19D3311C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 112) < 1)
  {
    bzero(*(a1 + 136), 4 * *(a1 + 108));
    v10 = __OFSUB__(a5, 1);
    v9 = a5 - 1;
    if (v9 < 0 != v10)
    {
      return;
    }
  }

  else
  {
    *(a1 + 160) = 0;
    v9 = a5 - 1;
    if (a5 < 1)
    {
      return;
    }
  }

  v11 = 0;
  do
  {
    if (*(a1 + 520))
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    (*(*a1 + 248))(a1, a4, a3, v12, 0xFFFFFFFFLL, 0xFFFFFFFFLL);
    --v9;
    ++v11;
  }

  while (v9 != -1);
}

void sub_19D331288(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  if (a3[1] == *a3 || *(a1 + 112) < 1)
  {
    v9 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = (**a1)(a1);
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 520))
  {
    sub_19D41C548(34);
  }

LABEL_7:
  v10 = a5 != 0;
  if ((a4 & 0xFFFFFFu) > v10)
  {
    v11 = a4 & 0xFFFFFF;
    v28 = a4 & 0xFFFFFF;
    while (1)
    {
      v12 = *(a1 + 520) ? v11 + ~v10 : v10;
      v13 = v12;
      v14 = (*(a1 + 42) & v9) != 0 ? 1 : v12;
      v15 = *(a1 + 42) ? 1 : v12;
      v16 = *(a1 + 264);
      if (v9)
      {
        break;
      }

      memmove(*(v16 + 8 * v14), *(*a2 + 8 * v14), 4 * *(a1 + 96));
      v17 = *(a1 + 40);
      if (v17 == 1)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v9)
      {
        v18 = (*(a1 + 360) + 24 * v13);
        v19 = *v18;
        **v18 = **(*a3 + 24 * v13);
        if (v17)
        {
          v19[1] = *(a1 + 104) - 1;
        }

        v20 = *(a1 + 384);
        v31 = 0;
        v32 = 0;
        __p = 0;
        v21 = v18[1];
        if (v21 != *v18)
        {
          if (((v21 - *v18) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        sub_19D32E8D8((v20 + 8 * v15), &__p, *(a1 + 512), *(a1 + 100), *(a1 + 104));
        v22 = v15;
        v11 = v28;
        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }
      }

      else
      {
        v22 = v15;
        sub_19D32D178((*(a1 + 384) + 8 * v15), (*(a1 + 264) + 8 * v14), *(a1 + 512), *(a1 + 100), *(a1 + 104), 0.0);
      }

      v23 = (*(a1 + 384) + 8 * v22);
      v24 = *(a1 + 100);
      if (v24 >= 1)
      {
        v25 = *v23;
        v26 = *(a1 + 100);
        do
        {
          v27 = -1035468800;
          if (*v25 < -50.0 || (v27 = 1112014848, *v25 > 50.0))
          {
            *v25 = v27;
          }

          ++v25;
          --v26;
        }

        while (v26);
      }

      sub_19D30A3C0((*(a1 + 288) + 8 * v13), v23, v24, *(a1 + 408));
      if (++v10 == v11)
      {
        return;
      }
    }

    bzero(*(v16 + 8 * v14), 4 * *(a1 + 104));
    *(*(*(a1 + 264) + 8 * v14) + 4 * **(*a3 + 24 * v13)) = 1065353216;
    v17 = *(a1 + 40);
    if (v17 != 1)
    {
      goto LABEL_24;
    }

LABEL_23:
    *(*(*(a1 + 264) + 8 * v14) + 4 * *(a1 + 104) - 4) = 1065353216;
    goto LABEL_24;
  }
}

void sub_19D331578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D33159C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[520] = 1;
  if ((atomic_load_explicit(&qword_1EB0131C0, memory_order_acquire) & 1) == 0)
  {
    v12 = a6;
    v9 = a5;
    v11 = a4;
    v8 = a3;
    v10 = a2;
    sub_19D454420();
    a5 = v9;
    a2 = v10;
    a3 = v8;
    a4 = v11;
    a6 = v12;
  }

  result = (*(*a1 + 304))(a1, a2, a3, a4, a5, a6, qword_1EB013120);
  a1[520] = 0;
  return result;
}

uint64_t sub_19D331644(_BYTE *a1)
{
  a1[520] = 1;
  result = (*(*a1 + 296))(a1);
  a1[520] = 0;
  return result;
}

char *sub_19D33169C(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 504) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8040, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 512) = result + 128;
  return result;
}

void sub_19D331728(uint64_t a1, void *lpsrc)
{
  if (!*(a1 + 504))
  {
    if (!__dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8040, 0))
    {
      __cxa_bad_cast();
    }

    sub_19D429424(a1 + 432);
    if (!*(a1 + 112))
    {
      sub_19D41C548(23);
    }

    sub_19D41C548(33);
  }

  sub_19D41C548(1);
}

_DWORD *sub_19D3317BC(_DWORD *result)
{
  if (!result[30])
  {
    return (*(*result + 392))();
  }

  return result;
}

float sub_19D3317F4(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = *(a1 + 100);
  v4 = *(a1 + 288);
  v5 = a3;
  if (v3 <= 0)
  {
    v8 = 0.0;
    do
    {
      while (1)
      {
        v14 = **v4;
        if (v14 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v14);
        ++v4;
        if (!--v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v4;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = *a2;
    v8 = 0.0;
    do
    {
      while (1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 1.1755e-38;
        do
        {
          v12 = *(*(v7 + 8 * v6) + 4 * v10);
          if (v12 > v11)
          {
            v9 = v10;
          }

          v11 = fmaxf(v12, v11);
          ++v10;
        }

        while (v3 != v10);
        v13 = v4[v6][v9];
        if (v13 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v13);
        if (++v6 == v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v6;
    }

    while (v6 != v5);
  }

  return v8;
}

void sub_19D331938(void *a1)
{
  v1 = sub_19D3321F0(a1);

  operator delete(v1);
}

uint64_t sub_19D331978(uint64_t result, uint64_t *a2, uint64_t *a3, int a4, int *a5)
{
  v5 = (a4 - 1);
  if (a4 >= 1)
  {
    v6 = *(result + 100);
    if (v6 >= 1)
    {
      v7 = *(result + 288);
      v8 = *a2;
      v9 = *a3;
      v10 = *a5;
      do
      {
        if (v6 >= 1)
        {
          v12 = 0;
          v13 = 0;
          v14 = 1.1755e-38;
          do
          {
            v15 = *(*(v7 + 8 * v5) + 4 * v13);
            if (v15 > v14)
            {
              v12 = v13;
            }

            v14 = fmaxf(v15, v14);
            ++v13;
          }

          while (v6 != v13);
          v16 = 0;
          v17 = 0;
          v18 = 1.1755e-38;
          do
          {
            v19 = *(*(v8 + 8 * v5) + 4 * v17);
            if (v19 > v18)
            {
              v16 = v17;
            }

            v18 = fmaxf(v19, v18);
            ++v17;
          }

          while (v6 != v17);
          if (v12 == v16)
          {
            v6 = v6;
          }

          else
          {
            *a5 = ++v10;
            v6 = *(result + 100);
            if (v6 < 1)
            {
              continue;
            }
          }

          v20 = *(v8 + 8 * v5);
          v21 = *(v7 + 8 * v5);
          v22 = *(v9 + 8 * v5);
          if (v6 > 7)
          {
            v23 = 0;
            if ((v22 - v20) >= 0x20 && (v22 - v21) >= 0x20)
            {
              v23 = v6 & 0x7FFFFFF8;
              v31 = v20 + 1;
              v32 = v21 + 1;
              v33 = v22 + 1;
              v34 = v23;
              do
              {
                v35 = vsubq_f32(*v31, *v32);
                v33[-1] = vsubq_f32(v31[-1], v32[-1]);
                *v33 = v35;
                v31 += 2;
                v32 += 2;
                v33 += 2;
                v34 -= 8;
              }

              while (v34);
              if (v23 == v6)
              {
                continue;
              }
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = &v22->f32[v23];
          v25 = &v21->f32[v23];
          v26 = &v20->f32[v23];
          v27 = v6 - v23;
          do
          {
            v28 = *v26++;
            v29 = v28;
            v30 = *v25++;
            *v24++ = v29 - v30;
            --v27;
          }

          while (v27);
        }
      }

      while (v5-- > 0);
    }
  }

  return result;
}

void sub_19D331AF4(uint64_t a1)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    v3 = *(v2 + 376) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  if (!*(a1 + 40))
  {
    v3 = 0;
  }

  v4 = *(a1 + 96) + v3;
  v5 = *(a1 + 100) * v4;
  *(a1 + 104) = v4;
  *(a1 + 108) = v5;
  if (!*(a1 + 504))
  {
    if ((*(a1 + 117) & 1) == 0)
    {
      if (!v2 || *(v2 + 40) != 1)
      {
        operator new[]();
      }

      *(a1 + 128) = *(v2 + 112);
    }

    *(a1 + 512) = a1 + 128;
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    operator new[]();
  }

  if (*(a1 + 112) < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = (**a1)(a1);
  }

  if ((*(a1 + 42) & v6) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = dword_1EB0131E8;
  }

  if (*(a1 + 42))
  {
    v8 = 2;
  }

  else
  {
    v8 = dword_1EB0131E8;
  }

  v9 = v7;
  v10 = *(a1 + 264);
  v11 = (*(a1 + 272) - v10) >> 3;
  if (v7 <= v11)
  {
    if (v7 < v11)
    {
      *(a1 + 272) = v10 + 8 * v7;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 264), v7 - v11);
  }

  v12 = *(a1 + 384);
  v13 = (*(a1 + 392) - v12) >> 3;
  if (v8 <= v13)
  {
    if (v8 < v13)
    {
      *(a1 + 392) = v12 + 8 * v8;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 384), v8 - v13);
  }

  v14 = dword_1EB0131E8;
  v15 = *(a1 + 288);
  v16 = (*(a1 + 296) - v15) >> 3;
  if (dword_1EB0131E8 <= v16)
  {
    if (dword_1EB0131E8 < v16)
    {
      *(a1 + 296) = v15 + 8 * dword_1EB0131E8;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 288), dword_1EB0131E8 - v16);
    v14 = dword_1EB0131E8;
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    v17 = v14;
    v18 = *(a1 + 312);
    v19 = (*(a1 + 320) - v18) >> 3;
    if (v14 <= v19)
    {
      if (v14 < v19)
      {
        *(a1 + 320) = v18 + 8 * v14;
      }
    }

    else
    {
      sub_19D308DD0((a1 + 312), v14 - v19);
      v14 = dword_1EB0131E8;
      v17 = dword_1EB0131E8;
    }

    v20 = *(a1 + 336);
    v21 = (*(a1 + 344) - v20) >> 3;
    if (v17 <= v21)
    {
      if (v17 < v21)
      {
        *(a1 + 344) = v20 + 8 * v17;
      }
    }

    else
    {
      sub_19D308DD0((a1 + 336), v17 - v21);
      v14 = dword_1EB0131E8;
    }
  }

  v22 = v14;
  v24 = *(a1 + 360);
  v23 = *(a1 + 368);
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3);
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v26 = v24 + 24 * v22;
      if (v23 != v26)
      {
        v27 = *(a1 + 368);
        do
        {
          v29 = *(v27 - 24);
          v27 -= 24;
          v28 = v29;
          if (v29)
          {
            *(v23 - 16) = v28;
            operator delete(v28);
          }

          v23 = v27;
        }

        while (v27 != v26);
      }

      *(a1 + 368) = v26;
    }
  }

  else
  {
    sub_19D35D8AC(a1 + 360, v22 - v25);
  }

  if (v9 >= 1)
  {
    operator new[]();
  }

  if (v8 >= 1)
  {
    operator new[]();
  }

  if (dword_1EB0131E8 >= 1)
  {
    if ((*(a1 + 116) & 1) == 0)
    {
      operator new[]();
    }

    operator new[]();
  }
}

void sub_19D332190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D308FC0(va);
  _Unwind_Resume(a1);
}

void sub_19D3321A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2B2DD8((v23 + 48));
    v25 = a13;
    if (!a13)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_19D2B2DD8((v23 + 48));
    v25 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

void *sub_19D3321F0(void *a1)
{
  *a1 = &unk_1F10B7EA8;
  sub_19D330980(a1);
  v2 = a1[53];
  if (v2)
  {
    (*(*v2 + 80))(v2);
    a1[53] = 0;
  }

  sub_19D429384((a1 + 54));
  v3 = a1[48];
  if (v3)
  {
    a1[49] = v3;
    operator delete(v3);
  }

  v4 = a1[45];
  if (v4)
  {
    v5 = a1[46];
    v6 = a1[45];
    if (v5 != v4)
    {
      v7 = a1[46];
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = a1[45];
    }

    a1[46] = v4;
    operator delete(v6);
  }

  v10 = a1[42];
  if (v10)
  {
    a1[43] = v10;
    operator delete(v10);
  }

  v11 = a1[39];
  if (v11)
  {
    a1[40] = v11;
    operator delete(v11);
  }

  v12 = a1[36];
  if (v12)
  {
    a1[37] = v12;
    operator delete(v12);
  }

  v13 = a1[33];
  if (v13)
  {
    a1[34] = v13;
    operator delete(v13);
  }

  sub_19D308FC0(a1 + 18);
  v14 = a1[9];
  if (v14)
  {
    a1[10] = v14;
    operator delete(v14);
  }

  v15 = a1[6];
  if (v15)
  {
    a1[7] = v15;
    operator delete(v15);
  }

  *a1 = &unk_1F10B68F8;
  v16 = a1[1];
  if (v16)
  {
    a1[2] = v16;
    operator delete(v16);
  }

  return a1;
}

void sub_19D332364(uint64_t a1, int a2, int a3, int a4, int a5, char a6, char a7, char a8, uint64_t a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B8068;
  *(a1 + 44) = a2;
  *(a1 + 48) = a3;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  sub_19D42933C(a1 + 296);
  *(a1 + 368) = a5;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  (*(*a1 + 192))(a1);
  *(a1 + 232) = 0;
  *(a1 + 41) = 0;
  *(a1 + 208) = a4;
  *(a1 + 240) = a9;
  *(a1 + 40) = a8;
  *(a1 + 60) = a6;
  *(a1 + 61) = a7;
  operator new();
}

void sub_19D33251C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_19D429384((v15 + 37));
  v19 = v15[34];
  if (v19)
  {
    v15[35] = v19;
    operator delete(v19);
    v20 = *v17;
    if (!*v17)
    {
LABEL_5:
      v21 = v15[23];
      if (!v21)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v20 = *v17;
    if (!*v17)
    {
      goto LABEL_5;
    }
  }

  v15[32] = v20;
  operator delete(v20);
  v21 = v15[23];
  if (!v21)
  {
LABEL_6:
    v22 = v15[20];
    if (!v22)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v15[24] = v21;
  operator delete(v21);
  v22 = v15[20];
  if (!v22)
  {
LABEL_7:
    v23 = v15[17];
    if (!v23)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v15[21] = v22;
  operator delete(v22);
  v23 = v15[17];
  if (!v23)
  {
LABEL_8:
    v24 = v15[14];
    if (!v24)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v15[18] = v23;
  operator delete(v23);
  v24 = v15[14];
  if (!v24)
  {
LABEL_9:
    v25 = v15[11];
    if (!v25)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v15[15] = v24;
  operator delete(v24);
  v25 = v15[11];
  if (!v25)
  {
LABEL_10:
    *v15 = v16;
    v26 = v15[1];
    if (!v26)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v15[12] = v25;
  operator delete(v25);
  *v15 = v16;
  v26 = v15[1];
  if (!v26)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_19:
  v15[2] = v26;
  operator delete(v26);
  _Unwind_Resume(a1);
}

_BYTE *sub_19D33267C(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_17:
    sub_19D41C548(3);
  }

  v6 = *(a2 + 72);
  v7 = *a2;
  v8 = (*a2 + v6);
  v9 = *a2 + *(a2 + 8) - 4;
  if (v8 > v9)
  {
    v10 = 0;
    v11 = (v7 + v6);
    if (v11 <= v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    if (a4 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = *v8;
  v6 += 4;
  *(a2 + 72) = v6;
  v11 = (v7 + v6);
  if (v11 > v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = *v11;
  v6 += 4;
  *(a2 + 72) = v6;
  if (a4 < 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v13 = (v7 + v6);
  if (v13 <= v9)
  {
    v14 = *v13;
    *(a2 + 72) = v6 + 4;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 208) = v14;
LABEL_12:
  if (*(a1 + 48) != v10 || *(a1 + 52) != v12)
  {
    goto LABEL_17;
  }

  v15 = *(a1 + 376);
  v16 = *a3;
  v17 = *(a1 + 61);
  v18 = sub_19D41C528();
  v19 = *(a1 + 48);
  v20 = *(a1 + 52);

  return sub_19D3092B8(v15, a2, v16, v17, v18, v19, v20);
}

uint64_t sub_19D3327A4(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 52);
  sub_19D41C9E8(__stream, a3, *(a1 + 48));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    sub_19D41C9E8(__stream, a3, *(a1 + 208));
  }

  v11 = *(a1 + 376);
  v12 = sub_19D41C528();

  return sub_19D32CE00(v11, __stream, a3, 3, v12, a5);
}

void *sub_19D332860(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B81F8, 0);
  }

  else
  {
    v5 = 0;
  }

  result = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B81F8, 0);
  v7 = (*(a1 + 52) * *(a1 + 48));
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 376);
    do
    {
      *(*v9 + v8) = *(result[8] + v8) - *(v5[8] + v8);
      ++v8;
    }

    while (v7 != v8);
  }

  return result;
}

void *sub_19D3329C0(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B81F8, 0);
  v4 = (*(a1 + 52) * *(a1 + 48));
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 376);
    do
    {
      *(*v6 + v5) += *(result[8] + v5);
      ++v5;
    }

    while (v4 != v5);
  }

  return result;
}

void *sub_19D332B38(uint64_t a1, uint64_t *a2, int a3, int *a4)
{
  v5 = *(a1 + 48);
  v6 = *a2;
  *(v6 + 16 * *a4) = v5;
  result = memmove(**(v6 + 16 * *a4 + 8), *(*(a1 + 112) + 8 * a3), 4 * v5);
  ++*a4;
  return result;
}

void *sub_19D332B9C(uint64_t a1, void *a2, int a3, int *a4)
{
  v4 = *(a1 + 112);
  v5 = *a4;
  *a4 = v5 + 1;
  return memmove(*(v4 + 8 * a3), **(*a2 + 16 * v5 + 8), 4 * *(a1 + 48));
}

void sub_19D332BD0(uint64_t a1, void *a2, int *a3)
{
  v4 = (*a2 + 16 * *a3);
  bzero(**(v4 + 1), 4 * *v4);
  ++*a3;
}

void sub_19D332C20(uint64_t a1, uint64_t a2)
{
  v2[0] = **(a1 + 376);
  v2[1] = *(a1 + 48);
  sub_19D309FB0(a2, v2);
}

uint64_t sub_19D332C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 - 16);
  *(a2 + 8) = v2 - 16;
  *(a1 + 64) = v3;
  result = a1 + 64;
  *(result + 312) = result;
  return result;
}

void sub_19D332D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D332D84(void *a1)
{
  v2 = a1[31];
  v3 = a1[32];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[31];
        v3 = a1[32];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v6 = a1[34];
  v7 = a1[35];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[34];
        v7 = a1[35];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
    v2 = a1[31];
  }

  a1[32] = v2;
  a1[35] = v6;
}

uint64_t sub_19D332E3C(uint64_t result, float a2, double a3)
{
  v3 = *(result + 56);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = truncf(a2);
    do
    {
      v6 = *(result + 64);
      LOBYTE(a3) = *(v6 + v4);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) + (*(*(result + 80) + 4 * v4) * v5);
      *(v6 + v4++) = *&a3;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_19D332E88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v8 = (**a1)(a1);
  if (a5 >= 1 && (v8 & 1) == 0)
  {
    v10 = a5 - 1;
    do
    {
      if (*(a1 + 232))
      {
        v12 = a5 - 1 - v10;
      }

      else
      {
        v12 = v10;
      }

      v13 = 8 * v12;
      sub_19D3128E0((a1 + 216), (*(a1 + 184) + v13), (*a4 + v13), *(a1 + 48), *(a1 + 208), v9);
      sub_19D32D178((*(a1 + 136) + v13), (a1 + 216), *(a1 + 376), *(a1 + 48), *(a1 + 52), 0.0);
      v14 = *(a1 + 52);
      if (v14 >= 1)
      {
        v15 = *(*(a1 + 136) + 8 * v12);
        do
        {
          v9.i32[0] = -1035468800;
          if (*v15 < -50.0 || (v9.i32[0] = 1112014848, *v15 > 50.0))
          {
            *v15 = v9.f32[0];
          }

          ++v15;
          --v14;
        }

        while (v14);
      }
    }

    while (v10-- > 0);
  }

  bzero(*(a1 + 80), 4 * *(a1 + 56));
  if (a5 >= 1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v17 = 0;
    v18 = MEMORY[0x1E69E9820];
    do
    {
      --a5;
      if (*(a1 + 232))
      {
        v19 = v17;
      }

      else
      {
        v19 = a5;
      }

      v20 = 8 * v19;
      v21 = *(a1 + 80);
      v22 = *(a1 + 88) + v20;
      v23 = *a4 + v20;
      v24 = *(a1 + 52);
      v25 = *(a1 + 48);
      v26[0] = v18;
      v26[1] = 0x40000000;
      v26[2] = sub_19D30AD54;
      v26[3] = &unk_1E7626958;
      v27 = v24;
      v26[4] = v21;
      v26[5] = v23;
      v26[6] = v22;
      dispatch_apply(v25, global_queue, v26);
      if (*(a1 + 40) == 1)
      {
        *(*(*(a1 + 136) + 8 * v19) + 4 * *(a1 + 52) - 4) = 1065353216;
      }

      ++v17;
    }

    while (a5 > 0);
  }
}

uint64_t sub_19D3330C0(uint64_t result, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(result + 240);
  if (v5)
  {
    if ((*(v5 + 20) & 1) != 0 || *(v5 + 40) != 1)
    {
      v6 = 0;
      v7 = *(result + 232);
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *(v5 + 44) == 1;
      v7 = *(result + 232);
      if (!a5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = 1;
    v7 = *(result + 232);
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    sub_19D41C548(34);
  }

LABEL_10:
  v8 = a4 & 0xFFFFFF;
  v9 = a5 != 0;
  if ((a4 & 0xFFFFFFu) > v9)
  {
    v47 = v6;
    if (v7)
    {
      v11 = v8 + ~v9;
    }

    else
    {
      v11 = a5 != 0;
    }

    v12 = v11 < v8 - 1;
    if (v7)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }

    if (v7)
    {
      v14 = v12;
    }

    else
    {
      v14 = a5 != 0;
    }

    v15 = 8 * v11;
    v16 = result;
    bzero(*(*(result + 88) + v15), 4 * *(result + 52));
    v17 = *(v16 + 88);
    v18 = *(v16 + 44);
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = *(*a2 + 8 * v11);
      v21 = *(v17 + 8 * v11);
      if (v18 < 8)
      {
        goto LABEL_28;
      }

      if ((v21 - v20) < 0x20)
      {
        goto LABEL_28;
      }

      v19 = v18 & 0x7FFFFFF8;
      v22 = (v20 + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 8;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_28:
        v26 = v18 - v19;
        v27 = 4 * v19;
        v28 = (v21 + 4 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    v31 = v11 + v13;
    if (v47 && v14)
    {
      v32 = *(v16 + 48);
      if (v32 >= 1)
      {
        v33 = *(*(v16 + 112) + 8 * v31);
        v34 = *(v17 + v15);
        if (v32 < 8 || (v35 = 4 * v18 + v34, (v35 - v33) < 0x20))
        {
          v36 = 0;
LABEL_35:
          v37 = v32 - v36;
          v38 = 4 * v36;
          v39 = (v34 + v38 + 4 * v18);
          v40 = (v33 + v38);
          do
          {
            v41 = *v40++;
            *v39++ = v41;
            --v37;
          }

          while (v37);
          goto LABEL_37;
        }

        v36 = v32 & 0x7FFFFFF8;
        v43 = (v33 + 16);
        v44 = (v35 + 16);
        v45 = v36;
        do
        {
          v46 = *v43;
          *(v44 - 1) = *(v43 - 1);
          *v44 = v46;
          v43 += 2;
          v44 += 2;
          v45 -= 8;
        }

        while (v45);
        if (v36 != v32)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_37:
    v42 = *(v16 + 52);
    if (*(v16 + 40) == 1)
    {
      *(*(v17 + v15) + 4 * v42 - 4) = 1065353216;
    }

    sub_19D32D178((v16 + 216), (v17 + v15), *(v16 + 376), *(v16 + 48), v42, 0.0);
    if (!v47 && v14)
    {
      sub_19D32D178((v16 + 216), (*(v16 + 112) + 8 * v31), *(v16 + 384), *(v16 + 48), *(v16 + 48), 1.0);
    }

    sub_19D41C548(76);
  }

  return result;
}

char *sub_19D33337C(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 368) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B81F8, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 376) = result + 64;
  return result;
}

uint64_t sub_19D333408(uint64_t a1, void *lpsrc, float a3)
{
  if (*(a1 + 368))
  {
    sub_19D41C548(1);
  }

  v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B81F8, 0);
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  sub_19D429424(a1 + 296);
  v8 = *(a1 + 56);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = truncf(a3);
    do
    {
      v11 = *(a1 + 64);
      v7.i8[0] = *(v11 + v9);
      v7 = vmovl_s16(*&vmovl_s8(v7)).u64[0];
      *v7.i32 = v7.i32[0] + (*(v6[10] + 4 * v9) * v10);
      *(v11 + v9++) = *v7.i32;
    }

    while (v8 != v9);
  }

  return sub_19D42942C(a1 + 296);
}

uint64_t sub_19D3334FC(uint64_t result, uint64_t *a2, uint64_t *a3, int a4, int *a5)
{
  v5 = (a4 - 1);
  if (a4 >= 1)
  {
    v6 = *(result + 48);
    if (v6 >= 1)
    {
      v7 = *(result + 112);
      v8 = *a2;
      v9 = *a3;
      v10 = *a5;
      do
      {
        if (v6 >= 1)
        {
          v12 = 0;
          v13 = 0;
          v14 = 1.1755e-38;
          do
          {
            v15 = *(*(v7 + 8 * v5) + 4 * v13);
            if (v15 > v14)
            {
              v12 = v13;
            }

            v14 = fmaxf(v15, v14);
            ++v13;
          }

          while (v6 != v13);
          v16 = 0;
          v17 = 0;
          v18 = 1.1755e-38;
          do
          {
            v19 = *(*(v8 + 8 * v5) + 4 * v17);
            if (v19 > v18)
            {
              v16 = v17;
            }

            v18 = fmaxf(v19, v18);
            ++v17;
          }

          while (v6 != v17);
          if (v12 == v16)
          {
            v6 = v6;
          }

          else
          {
            *a5 = ++v10;
            v6 = *(result + 48);
            if (v6 < 1)
            {
              continue;
            }
          }

          v20 = *(v8 + 8 * v5);
          v21 = *(v7 + 8 * v5);
          v22 = *(v9 + 8 * v5);
          if (v6 > 7)
          {
            v23 = 0;
            if ((v22 - v20) >= 0x20 && (v22 - v21) >= 0x20)
            {
              v23 = v6 & 0x7FFFFFF8;
              v31 = v20 + 1;
              v32 = v21 + 1;
              v33 = v22 + 1;
              v34 = v23;
              do
              {
                v35 = vsubq_f32(*v31, *v32);
                v33[-1] = vsubq_f32(v31[-1], v32[-1]);
                *v33 = v35;
                v31 += 2;
                v32 += 2;
                v33 += 2;
                v34 -= 8;
              }

              while (v34);
              if (v23 == v6)
              {
                continue;
              }
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = &v22->f32[v23];
          v25 = &v21->f32[v23];
          v26 = &v20->f32[v23];
          v27 = v6 - v23;
          do
          {
            v28 = *v26++;
            v29 = v28;
            v30 = *v25++;
            *v24++ = v29 - v30;
            --v27;
          }

          while (v27);
        }
      }

      while (v5-- > 0);
    }
  }

  return result;
}

float sub_19D333678(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 112);
  v5 = a3;
  if (v3 <= 0)
  {
    v8 = 0.0;
    do
    {
      while (1)
      {
        v14 = **v4;
        if (v14 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v14);
        ++v4;
        if (!--v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v4;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = *a2;
    v8 = 0.0;
    do
    {
      while (1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 1.1755e-38;
        do
        {
          v12 = *(*(v7 + 8 * v6) + 4 * v10);
          if (v12 > v11)
          {
            v9 = v10;
          }

          v11 = fmaxf(v12, v11);
          ++v10;
        }

        while (v3 != v10);
        v13 = v4[v6][v9];
        if (v13 <= 1.0e-10)
        {
          break;
        }

        v8 = v8 - log2f(v13);
        if (++v6 == v5)
        {
          return v8;
        }
      }

      v8 = v8 + 99.0;
      ++v6;
    }

    while (v6 != v5);
  }

  return v8;
}

void sub_19D3337BC(void *a1)
{
  v1 = sub_19D333DB8(a1);

  operator delete(v1);
}

void sub_19D3337FC(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    if ((*(v1 + 20) & 1) != 0 || *(v1 + 40) != 1)
    {
      v2 = 0;
      if ((*(a1 + 42) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = *(v1 + 44) == 1;
      if ((*(a1 + 42) & 1) == 0)
      {
LABEL_11:
        v3 = *(a1 + 48);
        v4 = *(a1 + 44) + *(a1 + 40);
        *(a1 + 52) = v4;
        if (!v2)
        {
LABEL_9:
          *(a1 + 56) = v3 * v4;
          operator new[]();
        }

LABEL_8:
        v4 += v3;
        *(a1 + 52) = v4;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v2 = 1;
    if ((*(a1 + 42) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 44) + *(a1 + 40);
  *(a1 + 52) = v4;
  if (!v2)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void *sub_19D333DB8(void *a1)
{
  *a1 = &unk_1F10B8068;
  v2 = a1[31];
  v3 = a1[32];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[31];
        v3 = a1[32];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v6 = a1[34];
  v7 = a1[35];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[34];
        v7 = a1[35];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
    v2 = a1[31];
  }

  a1[32] = v2;
  a1[35] = v6;
  sub_19D429384((a1 + 37));
  v10 = a1[34];
  if (v10)
  {
    a1[35] = v10;
    operator delete(v10);
  }

  v11 = a1[31];
  if (v11)
  {
    a1[32] = v11;
    operator delete(v11);
  }

  v12 = a1[23];
  if (v12)
  {
    a1[24] = v12;
    operator delete(v12);
  }

  v13 = a1[20];
  if (v13)
  {
    a1[21] = v13;
    operator delete(v13);
  }

  v14 = a1[17];
  if (v14)
  {
    a1[18] = v14;
    operator delete(v14);
  }

  v15 = a1[14];
  if (v15)
  {
    a1[15] = v15;
    operator delete(v15);
  }

  v16 = a1[11];
  if (v16)
  {
    a1[12] = v16;
    operator delete(v16);
  }

  *a1 = &unk_1F10B68F8;
  v17 = a1[1];
  if (v17)
  {
    a1[2] = v17;
    operator delete(v17);
  }

  return a1;
}

uint64_t sub_19D333F18(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, char a7, uint64_t a8)
{
  v15 = sub_19D33428C(a1, a5);
  *v15 = &unk_1F10B8220;
  *(v15 + 41) = 0;
  *(v15 + 112) = 0;
  *(v15 + 408) = a4;
  *(v15 + 528) = a8;
  *(v15 + 120) = *(a6 + 68);
  if (a8)
  {
    a7 = *(a8 + 376);
  }

  *(a1 + 40) = a7;
  *(a1 + 96) = a2;
  *(a1 + 100) = a3;
  *(a1 + 104) = 0;
  *(a1 + 116) = *(a6 + 45);
  *(a1 + 424) = 0;
  *(a1 + 528) = a8;
  if (a2 < 1 || a3 <= 0)
  {
    sub_19D41C548(34);
  }

  v19 = 7;
  strcpy(__p, "SoftMax");
  sub_19D331AF4(a1);
  *(a1 + 32) = *(a6 + 16);
  *(a1 + 424) = 0;
  if ((*(a1 + 116) & 1) == 0)
  {
    v16 = *(a6 + 32);
    switch(v16)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        operator new();
    }
  }

  return a1;
}

void sub_19D334224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v15);
  sub_19D3321F0(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_19D33428C(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B7EA8;
  *(a1 + 48) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 416) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0;
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
  *(a1 + 400) = 0;
  sub_19D42933C(a1 + 432);
  *(a1 + 504) = a2;
  *(a1 + 40) = 0;
  *(a1 + 424) = 0;
  *(a1 + 520) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 110) = 0;
  *(a1 + 408) = 1;
  *(a1 + 528) = 0;
  (*(*a1 + 192))(a1);
  return a1;
}

void sub_19D3343A8(_Unwind_Exception *a1)
{
  sub_19D429384(v1 + 432);
  v6 = *(v1 + 384);
  if (v6)
  {
    *(v1 + 392) = v6;
    operator delete(v6);
    sub_19D2B2DD8((v1 + 360));
    v7 = *(v1 + 336);
    if (!v7)
    {
LABEL_3:
      v8 = *(v1 + 312);
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_19D2B2DD8((v1 + 360));
    v7 = *(v1 + 336);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 344) = v7;
  operator delete(v7);
  v8 = *(v1 + 312);
  if (!v8)
  {
LABEL_4:
    v9 = *(v1 + 288);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v1 + 320) = v8;
  operator delete(v8);
  v9 = *(v1 + 288);
  if (!v9)
  {
LABEL_5:
    v10 = *(v1 + 264);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v1 + 296) = v9;
  operator delete(v9);
  v10 = *(v1 + 264);
  if (!v10)
  {
LABEL_6:
    sub_19D308FC0(v3);
    v11 = *(v1 + 72);
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 272) = v10;
  operator delete(v10);
  sub_19D308FC0(v3);
  v11 = *(v1 + 72);
  if (!v11)
  {
LABEL_7:
    v12 = *v4;
    if (!*v4)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 80) = v11;
  operator delete(v11);
  v12 = *v4;
  if (!*v4)
  {
LABEL_8:
    *v1 = v2;
    v13 = *(v1 + 8);
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 56) = v12;
  operator delete(v12);
  *v1 = v2;
  v13 = *(v1 + 8);
  if (!v13)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_17:
  *(v1 + 16) = v13;
  operator delete(v13);
  _Unwind_Resume(a1);
}

void sub_19D33454C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D334568(uint64_t a1, void *a2, uint64_t a3, int a4, char **a5)
{
  v9 = *(a1 + 42);
  v10 = a4;
  v11 = *(a1 + 100);
  v12 = *(a1 + 96);
  v13 = *(a1 + 512);
  v14 = *(a1 + 104);
  v15 = (*(*a1 + 24))(a1);
  memmove(*(*v15 + 8 * a4), *(*a2 + 8 * a4), 4 * v12);
  if (*(a1 + 40) == 1)
  {
    *(*(*(*(*a1 + 24))(a1) + 8 * v10) + 4 * v14 - 4) = 1065353216;
  }

  v16 = *a5;
  v17 = a5[1];
  if (v9)
  {
    v18 = 1;
  }

  else
  {
    v18 = v10;
  }

  v19 = (*(a1 + 384) + 8 * v18);
  v20 = (*(*(*a1 + 24))(a1) + 8 * v10);
  if (v17 == v16)
  {
    sub_19D32D178(v19, v20, v13, v11, v14, 0.0);
    if (v11 >= 1)
    {
      v26 = *(*(a1 + 384) + 8 * v18);
      v27 = v11;
      do
      {
        v28 = -1035468800;
        if (*v26 < -50.0 || (v28 = 1112014848, *v26 > 50.0))
        {
          *v26 = v28;
        }

        ++v26;
        --v27;
      }

      while (v27);
    }

    v29 = *(*(*a1 + 32))(a1);
    v30 = *(a1 + 384);
    __C = 0.0;
    LODWORD(__N) = v11;
    vvexpf(*(v29 + 8 * v10), *(v30 + 8 * v18), &__N);
    vDSP_sve(*(v29 + 8 * v10), 1, &__C, __N);
    if (__C <= 0.0)
    {
      v31 = 0.001;
    }

    else
    {
      v31 = __C + 0.001;
    }

    __B = v31;
    vDSP_vsdiv(*(v29 + 8 * v10), 1, &__B, *(v29 + 8 * v10), 1, __N);
    v32 = (*(*a1 + 32))(a1);
    if (v11 >= 1)
    {
      v33 = *(*v32 + 8 * v10);
      do
      {
        v34 = -5.0;
        if (*v33 < -5.0 || (v34 = 5.0, *v33 > 5.0))
        {
          *v33 = v34;
        }

        ++v33;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    sub_19D334ACC(v19, v19, a5, v20, v13, v11, v14);
    if (v11 >= 1)
    {
      v21 = *(*(a1 + 384) + 8 * v18);
      v22 = v11;
      do
      {
        v23 = -1035468800;
        if (*v21 < -50.0 || (v23 = 1112014848, *v21 > 50.0))
        {
          *v21 = v23;
        }

        ++v21;
        --v22;
      }

      while (v22);
    }

    v24 = *(*(*a1 + 32))(a1);
    v25 = a5[1] - *a5;
    if (v25)
    {
      if ((v25 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    bzero(*(v24 + 8 * v10), 4 * v11);
  }
}

uint64_t sub_19D3349F8(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = result;
  if (a5 && (*(result + 520) & 1) != 0)
  {
    sub_19D41C548(34);
  }

  v11 = a4 & 0xFFFFFF;
  v12 = a5 != 0;
  if ((a4 & 0xFFFFFFu) > v12)
  {
    do
    {
      result = (*(*v10 + 224))(v10, a2, a3, v12, a7);
      v12 = (v12 + 1);
    }

    while (v11 != v12);
  }

  return result;
}

void sub_19D334AA4(void *a1)
{
  v1 = sub_19D3321F0(a1);

  operator delete(v1);
}

void sub_19D334ACC(uint64_t a1, void **a2, char **a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  bzero(*a2, 4 * a6);
  if ((atomic_load_explicit(&qword_1EB0131D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB0131D8))
  {
    v17 = sub_19D41C530();
    *&dword_1EB0131D0 = sub_19D41C530() * v17;
    __cxa_guard_release(&qword_1EB0131D8);
  }

  if (a7)
  {
    if ((a7 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v10 = *a3;
  v11 = a3[1] - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    v13 = *a2;
    v14 = vpadalq_s32(vdupq_laneq_s64(vpaddlq_s32(0), 1), 0).u32[0];
    if (v12 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    do
    {
      v16 = *v10;
      v10 += 4;
      v13[v16] = *&dword_1EB0131D0 * v14;
      --v15;
    }

    while (v15);
  }
}

void sub_19D334E38(uint64_t a1, int a2, int a3, _DWORD **a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F10B83E0;
  *(a1 + 44) = a2;
  *(a1 + 52) = a3;
  *(a1 + 56) = a6;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 920) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 836) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 956) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 1112) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1184) = 0;
  *(a1 + 1168) = 0u;
  sub_19D42933C(a1 + 1192);
  sub_19D42933C(a1 + 1264);
  sub_19D42933C(a1 + 1336);
  sub_19D42933C(a1 + 1408);
  sub_19D42933C(a1 + 1480);
  sub_19D42933C(a1 + 1552);
  sub_19D42933C(a1 + 1624);
  sub_19D42933C(a1 + 1696);
  sub_19D42933C(a1 + 1768);
  sub_19D42933C(a1 + 1840);
  sub_19D42933C(a1 + 1912);
  *(a1 + 1988) = a5;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  (*(*a1 + 192))(a1);
  *(a1 + 2040) = 0;
  *(a1 + 41) = 0;
  *(a1 + 2048) = a9;
  if (a9)
  {
    v15 = *(a9 + 376);
    nullsub_171("GRU constructor");
    v16 = v15 ^ 1;
    a8 = *(*(a1 + 2048) + 376);
    *(a1 + 40) = a8;
  }

  else
  {
    *(a1 + 40) = a8;
    v16 = 1;
  }

  *(a1 + 1984) = *(a7 + 45);
  v17 = *a4;
  *(a1 + 520) = **a4;
  *(a1 + 524) = v17[1];
  *(a1 + 528) = v17[2];
  if ((a8 & 1) == 0)
  {
    v16 = 0;
  }

  *(a1 + 48) = v16 + *(a1 + 44);
  if (a10)
  {
    (*(*a1 + 184))(a1);
    *(a1 + 2040) = 1;
  }

  *(a1 + 32) = *(a7 + 16);
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  operator new();
}

void sub_19D335158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    v22 = v15[252];
    if (!v22)
    {
LABEL_3:
      v23 = *v18;
      if (!*v18)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v22 = v15[252];
    if (!v22)
    {
      goto LABEL_3;
    }
  }

  v15[253] = v22;
  operator delete(v22);
  v23 = *v18;
  if (!*v18)
  {
LABEL_5:
    sub_19D429384((v15 + 239));
    sub_19D429384((v15 + 230));
    sub_19D429384((v15 + 221));
    sub_19D429384((v15 + 212));
    sub_19D429384((v15 + 203));
    sub_19D429384((v15 + 194));
    sub_19D429384((v15 + 185));
    sub_19D429384((v15 + 176));
    sub_19D429384((v15 + 167));
    sub_19D429384((v15 + 158));
    sub_19D429384((v15 + 149));
    sub_19D308FC0(v15 + 119);
    sub_19D308FC0(v15 + 104);
    sub_19D308FC0(v15 + 89);
    v24 = v15[85];
    if (v24)
    {
      v15[86] = v24;
      operator delete(v24);
      v25 = v15[82];
      if (!v25)
      {
LABEL_7:
        v26 = v15[79];
        if (!v26)
        {
          goto LABEL_8;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v25 = v15[82];
      if (!v25)
      {
        goto LABEL_7;
      }
    }

    v15[83] = v25;
    operator delete(v25);
    v26 = v15[79];
    if (!v26)
    {
LABEL_8:
      v27 = v15[76];
      if (!v27)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    v15[80] = v26;
    operator delete(v26);
    v27 = v15[76];
    if (!v27)
    {
LABEL_9:
      v28 = v15[73];
      if (!v28)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    v15[77] = v27;
    operator delete(v27);
    v28 = v15[73];
    if (!v28)
    {
LABEL_10:
      v29 = v15[70];
      if (!v29)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    v15[74] = v28;
    operator delete(v28);
    v29 = v15[70];
    if (!v29)
    {
LABEL_11:
      v30 = v15[62];
      if (!v30)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    v15[71] = v29;
    operator delete(v29);
    v30 = v15[62];
    if (!v30)
    {
LABEL_12:
      v31 = v15[59];
      if (!v31)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    v15[63] = v30;
    operator delete(v30);
    v31 = v15[59];
    if (!v31)
    {
LABEL_13:
      v32 = v15[56];
      if (!v32)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

LABEL_32:
    v15[60] = v31;
    operator delete(v31);
    v32 = v15[56];
    if (!v32)
    {
LABEL_14:
      v33 = v15[53];
      if (!v33)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_33:
    v15[57] = v32;
    operator delete(v32);
    v33 = v15[53];
    if (!v33)
    {
LABEL_15:
      v34 = v15[50];
      if (!v34)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }

LABEL_34:
    v15[54] = v33;
    operator delete(v33);
    v34 = v15[50];
    if (!v34)
    {
LABEL_16:
      v35 = *v20;
      if (!*v20)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_35:
    v15[51] = v34;
    operator delete(v34);
    v35 = *v20;
    if (!*v20)
    {
LABEL_17:
      sub_19D2B2DD8(v17);
      v36 = v15[23];
      if (!v36)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }

LABEL_36:
    v15[48] = v35;
    operator delete(v35);
    sub_19D2B2DD8(v17);
    v36 = v15[23];
    if (!v36)
    {
LABEL_18:
      v37 = v15[20];
      if (!v37)
      {
        goto LABEL_19;
      }

      goto LABEL_38;
    }

LABEL_37:
    v15[24] = v36;
    operator delete(v36);
    v37 = v15[20];
    if (!v37)
    {
LABEL_19:
      v38 = v15[17];
      if (!v38)
      {
        goto LABEL_20;
      }

      goto LABEL_39;
    }

LABEL_38:
    v15[21] = v37;
    operator delete(v37);
    v38 = v15[17];
    if (!v38)
    {
LABEL_20:
      v39 = v15[14];
      if (!v39)
      {
        goto LABEL_21;
      }

      goto LABEL_40;
    }

LABEL_39:
    v15[18] = v38;
    operator delete(v38);
    v39 = v15[14];
    if (!v39)
    {
LABEL_21:
      v40 = v15[11];
      if (!v40)
      {
        goto LABEL_22;
      }

      goto LABEL_41;
    }

LABEL_40:
    v15[15] = v39;
    operator delete(v39);
    v40 = v15[11];
    if (!v40)
    {
LABEL_22:
      v41 = *v19;
      if (!*v19)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }

LABEL_41:
    v15[12] = v40;
    operator delete(v40);
    v41 = *v19;
    if (!*v19)
    {
LABEL_23:
      *v15 = v16;
      v42 = v15[1];
      if (!v42)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }

LABEL_42:
    v15[9] = v41;
    operator delete(v41);
    *v15 = v16;
    v42 = v15[1];
    if (!v42)
    {
LABEL_24:
      _Unwind_Resume(a1);
    }

LABEL_43:
    v15[2] = v42;
    operator delete(v42);
    _Unwind_Resume(a1);
  }

LABEL_4:
  v15[250] = v23;
  operator delete(v23);
  goto LABEL_5;
}

void sub_19D335480(uint64_t a1)
{
  v1 = 3;
  v2 = 6;
  if ((*(a1 + 42) & 1) == 0)
  {
    if (*(a1 + 2040))
    {
      v2 = 6;
    }

    else
    {
      v2 = 0;
    }

    if (*(a1 + 2040))
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
    }
  }

  if (!*(a1 + 1988))
  {
    v3 = *(a1 + 2048);
    if (v3 && (v4 = *(v3 + 40), v4 >= 1))
    {
      v5 = (v3 + 8 * v2);
      if (v4 == 4)
      {
        v6 = 232;
      }

      else
      {
        if (v4 != 6)
        {
          sub_19D41C548(45);
        }

        *(a1 + 232) = v5[14];
        *(a1 + 240) = v5[15];
        v2 += 2;
        v6 = 248;
      }

      *(a1 + v6) = *(v3 + 8 * v2 + 112);
      *(a1 + 256) = v5[17];
      *(a1 + 264) = v5[18];
      *(a1 + 272) = v5[19];
      if ((*(a1 + 1985) & 1) == 0)
      {
        v7 = *(a1 + 2048);
        if (v7)
        {
          if (*(v7 + 244) != 1)
          {
            operator new[]();
          }

          v8 = (v7 + 8 * v1);
          *(a1 + 280) = v8[31];
          *(a1 + 288) = v8[32];
          *(a1 + 296) = v8[33];
        }
      }
    }

    else if ((*(a1 + 1985) & 1) == 0)
    {
      operator new[]();
    }

    *(a1 + 304) = a1 + 232;
    *(a1 + 312) = a1 + 240;
    *(a1 + 320) = a1 + 248;
    *(a1 + 328) = a1 + 256;
    *(a1 + 336) = a1 + 264;
    *(a1 + 344) = a1 + 272;
    *(a1 + 352) = a1 + 280;
    *(a1 + 360) = a1 + 288;
    *(a1 + 368) = a1 + 296;
  }

  operator new[]();
}

_BYTE *sub_19D336020(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_21:
    sub_19D41C548(3);
  }

  v7 = *(a2 + 72);
  v8 = *a2;
  v9 = (*a2 + v7);
  v10 = *a2 + *(a2 + 8) - 4;
  if (v9 <= v10)
  {
    v11 = *v9;
    v7 += 4;
    *(a2 + 72) = v7;
    v12 = (v8 + v7);
    if (v12 <= v10)
    {
LABEL_4:
      v13 = *v12;
      v7 += 4;
      *(a2 + 72) = v7;
      if (a4 < 1)
      {
        goto LABEL_16;
      }

LABEL_8:
      v14 = v7;
      v15 = (v8 + v7);
      if (v15 <= v10)
      {
        v19 = *v15;
        v7 += 4;
        *(a2 + 72) = v7;
        v14 = v7;
        *(a1 + 520) = v19;
        v20 = (v8 + v7);
        if (v20 <= v10)
        {
          v16 = *v20;
          v7 += 4;
          *(a2 + 72) = v7;
          *(a1 + 524) = v16;
          v17 = (v8 + v7);
          if (v17 > v10)
          {
LABEL_14:
            v18 = 0;
            goto LABEL_15;
          }

LABEL_11:
          v18 = *v17;
          *(a2 + 72) = v7 + 4;
LABEL_15:
          *(a1 + 528) = v18;
          goto LABEL_16;
        }
      }

      else
      {
        *(a1 + 520) = 0;
      }

      *(a1 + 524) = 0;
      v17 = (v8 + v14);
      if (v17 > v10)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    v12 = (v8 + v7);
    if (v12 <= v10)
    {
      goto LABEL_4;
    }
  }

  v13 = 0;
  if (a4 >= 1)
  {
    goto LABEL_8;
  }

LABEL_16:
  if (*(a1 + 52) != v11 || *(a1 + 48) != v13)
  {
    goto LABEL_21;
  }

  v21 = *(a1 + 312);
  v22 = *a3;
  v23 = *(a1 + 1985);
  v24 = sub_19D41C528();
  sub_19D3092B8(v21, a2, v22, v23, v24, *(a1 + 52), *(a1 + 48));
  v25 = *(a1 + 304);
  v26 = *a3;
  v27 = *(a1 + 1985);
  v28 = sub_19D41C528();
  sub_19D3092B8(v25, a2, v26, v27, v28, *(a1 + 52), *(a1 + 48));
  v29 = *(a1 + 320);
  v30 = *a3;
  v31 = *(a1 + 1985);
  v32 = sub_19D41C528();
  sub_19D3092B8(v29, a2, v30, v31, v32, *(a1 + 52), *(a1 + 48));
  v33 = *(a1 + 336);
  v34 = *a3;
  v35 = *(a1 + 1985);
  v36 = sub_19D41C528();
  sub_19D3092B8(v33, a2, v34, v35, v36, *(a1 + 52), *(a1 + 52));
  v37 = *(a1 + 328);
  v38 = *a3;
  v39 = *(a1 + 1985);
  v40 = sub_19D41C528();
  sub_19D3092B8(v37, a2, v38, v39, v40, *(a1 + 52), *(a1 + 52));
  v41 = *(a1 + 344);
  v42 = *a3;
  v43 = *(a1 + 1985);
  v44 = sub_19D41C528();
  v45 = *(a1 + 52);

  return sub_19D3092B8(v41, a2, v42, v43, v44, v45, v45);
}

uint64_t sub_19D3362B4(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 48);
  sub_19D41C9E8(__stream, a3, *(a1 + 52));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    __ptr = *(a1 + 520);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 524);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 528);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    *a3 += 12;
  }

  v11 = *(a1 + 312);
  v12 = sub_19D41C528();
  sub_19D32CE00(v11, __stream, a3, 3, v12, a5);
  v13 = *(a1 + 304);
  v14 = sub_19D41C528();
  sub_19D32CE00(v13, __stream, a3, 3, v14, a5);
  v15 = *(a1 + 320);
  v16 = sub_19D41C528();
  sub_19D32CE00(v15, __stream, a3, 3, v16, a5);
  v17 = *(a1 + 336);
  v18 = sub_19D41C528();
  sub_19D32CE00(v17, __stream, a3, 3, v18, a5);
  v19 = *(a1 + 328);
  v20 = sub_19D41C528();
  sub_19D32CE00(v19, __stream, a3, 3, v20, a5);
  v21 = *(a1 + 344);
  v22 = sub_19D41C528();
  return sub_19D32CE00(v21, __stream, a3, 3, v22, a5);
}

void *sub_19D3364A4(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8558, 0);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = 0;
    v7 = *(a1 + 52);
    v8 = (*(a1 + 48) * v7);
    if (v8 < 1)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v5 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B8558, 0);
  v7 = *(a1 + 52);
  v8 = (*(a1 + 48) * v7);
  if (v8 < 1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v9 = 0;
  v10 = *(a1 + 312);
  v11 = result[39];
  v12 = v5[39];
  do
  {
    *(*v10 + v9) = *(*v11 + v9) - *(*v12 + v9);
    ++v9;
  }

  while (v8 != v9);
  v7 = *(a1 + 52);
  v13 = (*(a1 + 48) * v7);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = *(a1 + 320);
    v16 = result[40];
    v17 = v5[40];
    do
    {
      *(*v15 + v14) = *(*v16 + v14) - *(*v17 + v14);
      ++v14;
    }

    while (v13 != v14);
    v7 = *(a1 + 52);
    v18 = (*(a1 + 48) * v7);
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = *(a1 + 304);
      v21 = result[38];
      v22 = v5[38];
      do
      {
        *(*v20 + v19) = *(*v21 + v19) - *(*v22 + v19);
        ++v19;
      }

      while (v18 != v19);
      v7 = *(a1 + 52);
    }
  }

LABEL_16:
  if (v7)
  {
    v23 = 0;
    v24 = *(a1 + 336);
    v25 = result[42];
    v26 = (v7 * v7);
    v27 = v5[42];
    do
    {
      *(*v24 + v23) = *(*v25 + v23) - *(*v27 + v23);
      ++v23;
    }

    while (v26 != v23);
    v28 = *(a1 + 52);
    if (v28)
    {
      v29 = 0;
      v30 = *(a1 + 344);
      v31 = result[43];
      v32 = (v28 * v28);
      v33 = v5[43];
      do
      {
        *(*v30 + v29) = *(*v31 + v29) - *(*v33 + v29);
        ++v29;
      }

      while (v32 != v29);
      v34 = *(a1 + 52);
      if (v34)
      {
        v35 = 0;
        v36 = *(a1 + 328);
        v37 = result[41];
        v38 = (v34 * v34);
        v39 = v5[41];
        do
        {
          *(*v36 + v35) = *(*v37 + v35) - *(*v39 + v35);
          ++v35;
        }

        while (v38 != v35);
      }
    }
  }

  return result;
}

void *sub_19D3367C0(uint64_t a1, void *lpsrc)
{
  if (lpsrc)
  {
    result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8558, 0);
    v4 = *(a1 + 52);
    v5 = (*(a1 + 48) * v4);
    if (v5 < 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = 0;
    v4 = *(a1 + 52);
    v5 = (*(a1 + 48) * v4);
    if (v5 < 1)
    {
      goto LABEL_14;
    }
  }

  v6 = 0;
  v7 = *(a1 + 312);
  v8 = result[39];
  do
  {
    *(*v7 + v6) += *(*v8 + v6);
    ++v6;
  }

  while (v5 != v6);
  v4 = *(a1 + 52);
  v9 = (*(a1 + 48) * v4);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(a1 + 304);
    v12 = result[38];
    do
    {
      *(*v11 + v10) += *(*v12 + v10);
      ++v10;
    }

    while (v9 != v10);
    v4 = *(a1 + 52);
    v13 = (*(a1 + 48) * v4);
    if (v13 >= 1)
    {
      v14 = 0;
      v15 = *(a1 + 320);
      v16 = result[40];
      do
      {
        *(*v15 + v14) += *(*v16 + v14);
        ++v14;
      }

      while (v13 != v14);
      v4 = *(a1 + 52);
    }
  }

LABEL_14:
  if (v4)
  {
    v17 = 0;
    v18 = *(a1 + 336);
    v19 = result[42];
    v20 = (v4 * v4);
    do
    {
      *(*v18 + v17) += *(*v19 + v17);
      ++v17;
    }

    while (v20 != v17);
    v21 = *(a1 + 52);
    if (v21)
    {
      v22 = 0;
      v23 = *(a1 + 328);
      v24 = result[41];
      v25 = (v21 * v21);
      do
      {
        *(*v23 + v22) += *(*v24 + v22);
        ++v22;
      }

      while (v25 != v22);
      v26 = *(a1 + 52);
      if (v26)
      {
        v27 = 0;
        v28 = *(a1 + 344);
        v29 = result[43];
        v30 = (v26 * v26);
        do
        {
          *(*v28 + v27) += *(*v29 + v27);
          ++v27;
        }

        while (v30 != v27);
      }
    }
  }

  return result;
}

uint64_t sub_19D336A20(uint64_t result, float a2, double a3, double a4)
{
  v4 = -a2;
  v5 = *(result + 52);
  v6 = (*(result + 48) * v5);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 312);
    do
    {
      LOBYTE(a4) = *(*v8 + v7);
      *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
      v9 = SLODWORD(a4);
      v10 = SLODWORD(a4) < v4;
      *&a4 = -a2;
      if (v10 || (*&a4 = a2, v9 > a2))
      {
        *(*v8 + v7) = *&a4;
      }

      ++v7;
    }

    while (v6 != v7);
    v5 = *(result + 52);
    v11 = (*(result + 48) * v5);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = *(result + 304);
      do
      {
        LOBYTE(a4) = *(*v13 + v12);
        *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
        v14 = SLODWORD(a4);
        v10 = SLODWORD(a4) < v4;
        *&a4 = -a2;
        if (v10 || (*&a4 = a2, v14 > a2))
        {
          *(*v13 + v12) = *&a4;
        }

        ++v12;
      }

      while (v11 != v12);
      v5 = *(result + 52);
      v15 = (*(result + 48) * v5);
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = *(result + 320);
        do
        {
          LOBYTE(a4) = *(*v17 + v16);
          *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
          v18 = SLODWORD(a4);
          v10 = SLODWORD(a4) < v4;
          *&a4 = -a2;
          if (v10 || (*&a4 = a2, v18 > a2))
          {
            *(*v17 + v16) = *&a4;
          }

          ++v16;
        }

        while (v15 != v16);
        v5 = *(result + 52);
      }
    }
  }

  if (v5)
  {
    v19 = 0;
    v20 = *(result + 336);
    v21 = (v5 * v5);
    do
    {
      LOBYTE(a4) = *(*v20 + v19);
      *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
      v22 = SLODWORD(a4);
      v10 = SLODWORD(a4) < v4;
      *&a4 = -a2;
      if (v10 || (*&a4 = a2, v22 > a2))
      {
        *(*v20 + v19) = *&a4;
      }

      ++v19;
    }

    while (v21 != v19);
    v23 = *(result + 52);
    if (v23)
    {
      v24 = 0;
      v25 = *(result + 328);
      v26 = (v23 * v23);
      do
      {
        LOBYTE(a4) = *(*v25 + v24);
        *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
        v27 = SLODWORD(a4);
        v10 = SLODWORD(a4) < v4;
        *&a4 = -a2;
        if (v10 || (*&a4 = a2, v27 > a2))
        {
          *(*v25 + v24) = *&a4;
        }

        ++v24;
      }

      while (v26 != v24);
      v28 = *(result + 52);
      if (v28)
      {
        v29 = 0;
        v30 = *(result + 344);
        v31 = (v28 * v28);
        do
        {
          LOBYTE(a4) = *(*v30 + v29);
          *&a4 = vmovl_s16(*&vmovl_s8(*&a4)).u64[0];
          v32 = SLODWORD(a4);
          v10 = SLODWORD(a4) < v4;
          *&a4 = -a2;
          if (v10 || (*&a4 = a2, v32 > a2))
          {
            *(*v30 + v29) = *&a4;
          }

          ++v29;
        }

        while (v31 != v29);
      }
    }
  }

  return result;
}

uint64_t sub_19D336C5C(uint64_t result, float a2, double a3)
{
  v3 = *(result + 52);
  v4 = (*(result + 48) * v3);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 312);
    do
    {
      LOBYTE(a3) = *(*v6 + v5);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) * a2;
      *(*v6 + v5++) = *&a3;
    }

    while (v4 != v5);
    v3 = *(result + 52);
    v7 = (*(result + 48) * v3);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(result + 312);
      do
      {
        LOBYTE(a3) = *(*v9 + v8);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) * a2;
        *(*v9 + v8++) = *&a3;
      }

      while (v7 != v8);
      v3 = *(result + 52);
      v10 = (*(result + 48) * v3);
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = *(result + 320);
        do
        {
          LOBYTE(a3) = *(*v12 + v11);
          *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
          *&a3 = SLODWORD(a3) * a2;
          *(*v12 + v11++) = *&a3;
        }

        while (v10 != v11);
        v3 = *(result + 52);
      }
    }
  }

  if (v3)
  {
    v13 = 0;
    v14 = *(result + 336);
    v15 = (v3 * v3);
    do
    {
      LOBYTE(a3) = *(*v14 + v13);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) * a2;
      *(*v14 + v13++) = *&a3;
    }

    while (v15 != v13);
    v16 = *(result + 52);
    if (v16)
    {
      v17 = 0;
      v18 = *(result + 328);
      v19 = (v16 * v16);
      do
      {
        LOBYTE(a3) = *(*v18 + v17);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) * a2;
        *(*v18 + v17++) = *&a3;
      }

      while (v19 != v17);
      v20 = *(result + 52);
      if (v20)
      {
        v21 = 0;
        v22 = *(result + 344);
        v23 = (v20 * v20);
        do
        {
          LOBYTE(a3) = *(*v22 + v21);
          *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
          *&a3 = SLODWORD(a3) * a2;
          *(*v22 + v21++) = *&a3;
        }

        while (v23 != v21);
      }
    }
  }

  return result;
}

void *sub_19D336F48(uint64_t a1, uint64_t *a2, int a3, int *a4)
{
  v8 = *(a1 + 52);
  v9 = *a2;
  *(v9 + 16 * *a4) = v8;
  memmove(**(v9 + 16 * *a4 + 8), *(*(a1 + 112) + 8 * a3), 4 * v8);
  v10 = *a4;
  *a4 = v10 + 1;
  v11 = *(a1 + 52);
  v12 = *a2;
  *(*a2 + 16 * v10 + 16) = v11;
  result = memmove(**(v12 + 16 * *a4 + 8), *(*(a1 + 88) + 8 * a3), 4 * v11);
  ++*a4;
  return result;
}

void *sub_19D336FF8(uint64_t a1, void *a2, int a3, int *a4)
{
  v8 = *(a1 + 112);
  v9 = *a4;
  *a4 = v9 + 1;
  memmove(*(v8 + 8 * a3), **(*a2 + 16 * v9 + 8), 4 * *(a1 + 52));
  v10 = *(a1 + 88);
  v11 = *a4;
  *a4 = v11 + 1;
  v12 = 4 * *(a1 + 52);
  v13 = *(v10 + 8 * a3);
  v14 = **(*a2 + 16 * v11 + 8);

  return memmove(v13, v14, v12);
}

void sub_19D337098(uint64_t a1, void *a2, int *a3)
{
  v5 = (*a2 + 16 * *a3);
  bzero(**(v5 + 1), 4 * *v5);
  v6 = *a3;
  *a3 = v6 + 1;
  bzero(**(*a2 + 16 * v6 + 24), 4 * *(*a2 + 16 * v6 + 16));
  ++*a3;
}

void sub_19D337110(void *a1)
{
  v2 = a1[140];
  BYTE7(v14[2]) = 17;
  strcpy(v14, "GRU before resetGRU before reset ");
  (*(*v2 + 40))(v2, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v3 = a1[141];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v3 + 40))(v3, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v4 = a1[142];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v4 + 40))(v4, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v5 = a1[143];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v5 + 40))(v5, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v6 = a1[144];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v6 + 40))(v6, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v7 = a1[145];
  BYTE7(v14[2]) = 17;
  strcpy(&v14[2], " ");
  v14[1] = v14[0];
  (*(*v7 + 40))(v7, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  (*(*a1[140] + 16))(a1[140]);
  (*(*a1[141] + 16))(a1[141]);
  (*(*a1[142] + 16))(a1[142]);
  (*(*a1[143] + 16))(a1[143]);
  (*(*a1[144] + 16))(a1[144]);
  (*(*a1[145] + 16))(a1[145]);
  v8 = a1[140];
  BYTE7(v14[2]) = 16;
  strcpy(v14, "GRU AFTER reset GRU AFTER reset ");
  (*(*v8 + 40))(v8, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v9 = a1[141];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v9 + 40))(v9, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v10 = a1[142];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v10 + 40))(v10, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v11 = a1[143];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v11 + 40))(v11, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v12 = a1[144];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v12 + 40))(v12, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }

  v13 = a1[145];
  BYTE7(v14[2]) = 16;
  v14[1] = v14[0];
  LOBYTE(v14[2]) = 0;
  (*(*v13 + 40))(v13, &v14[1]);
  if (SBYTE7(v14[2]) < 0)
  {
    operator delete(*&v14[1]);
  }
}

void sub_19D337620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D337668(uint64_t a1, uint64_t a2)
{
  v7 = **(a1 + 304);
  v8 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v7);
  v7 = **(a1 + 312);
  v8 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v7);
  v7 = **(a1 + 320);
  v8 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v7);
  v4 = *(a1 + 52);
  v7 = **(a1 + 328);
  v8.i32[0] = v4;
  v8.i32[1] = v4;
  sub_19D309FB0(a2, &v7);
  v5 = *(a1 + 52);
  v7 = **(a1 + 336);
  v8.i32[0] = v5;
  v8.i32[1] = v5;
  sub_19D309FB0(a2, &v7);
  v6 = *(a1 + 52);
  v7 = **(a1 + 344);
  v8.i32[0] = v6;
  v8.i32[1] = v6;
  sub_19D309FB0(a2, &v7);
}

void sub_19D33780C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D337828(void *a1)
{
  v2 = a1[250];
  v3 = a1[249];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[250];
        v3 = a1[249];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[253];
  v7 = a1[252];
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[253];
        v7 = a1[252];
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
    v3 = a1[249];
  }

  a1[250] = v3;
  a1[253] = v7;
  v10 = a1[102];
  v11 = a1[101];
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      v13 = *(v11 + 8 * v12);
      if (v13)
      {
        operator delete[](v13);
        v10 = a1[102];
        v11 = a1[101];
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  a1[102] = v11;
  v14 = a1[99];
  if (v14)
  {
    operator delete(v14);
    a1[99] = 0;
  }

  v15 = a1[98];
  if (v15)
  {
    operator delete(v15);
    a1[98] = 0;
  }

  v16 = a1[132];
  v17 = a1[131];
  if (v16 != v17)
  {
    v18 = 0;
    do
    {
      v19 = *(v17 + 8 * v18);
      if (v19)
      {
        operator delete[](v19);
        v16 = a1[132];
        v17 = a1[131];
      }

      ++v18;
    }

    while (v18 < (v16 - v17) >> 3);
  }

  a1[132] = v17;
  v20 = a1[129];
  if (v20)
  {
    operator delete(v20);
    a1[129] = 0;
  }

  v21 = a1[128];
  if (v21)
  {
    operator delete(v21);
    a1[128] = 0;
  }

  v22 = a1[117];
  v23 = a1[116];
  if (v22 != v23)
  {
    v24 = 0;
    do
    {
      v25 = *(v23 + 8 * v24);
      if (v25)
      {
        operator delete[](v25);
        v22 = a1[117];
        v23 = a1[116];
      }

      ++v24;
    }

    while (v24 < (v22 - v23) >> 3);
  }

  a1[117] = v23;
  v26 = a1[114];
  if (v26)
  {
    operator delete(v26);
    a1[114] = 0;
  }

  v27 = a1[113];
  if (v27)
  {
    operator delete(v27);
    a1[113] = 0;
  }
}

uint64_t sub_19D337A14(uint64_t result, float a2, double a3)
{
  v3 = a2;
  v4 = *(result + 52);
  if (*(result + 56) < 1)
  {
    v11 = (*(result + 48) * v4);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = v3;
      do
      {
        v14 = *(result + 240);
        LOBYTE(a3) = *(v14 + v12);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) + (*(*(result + 1072) + 4 * v12) * v13);
        *(v14 + v12++) = *&a3;
      }

      while (v11 != v12);
      for (i = 0; i != v11; ++i)
      {
        v16 = *(result + 248);
        LOBYTE(a3) = *(v16 + i);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) + (*(*(result + 1088) + 4 * i) * v13);
        *(v16 + i) = *&a3;
      }

      for (j = 0; j != v11; ++j)
      {
        v18 = *(result + 232);
        LOBYTE(a3) = *(v18 + j);
        *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
        *&a3 = SLODWORD(a3) + (*(*(result + 1080) + 4 * j) * v13);
        *(v18 + j) = *&a3;
      }
    }

    goto LABEL_14;
  }

  v5 = v3;
  v6 = *(result + 728);
  if (v6 >= 1)
  {
    if (v4 < 1)
    {
LABEL_42:
      v43 = *(result + 760);
      v45 = *v43;
      v44 = v43[1];
      if (v44 == v45)
      {
        sub_19D41C548(67);
      }

      if (((v44 - v45) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_64;
    }

    v34 = 0;
    v35 = *(result + 736);
    while (1)
    {
      v36 = *(v35 + 8 * v34);
      if (v4 >= 8)
      {
        v38 = v36 + 1;
        v39 = v4 & 0x7FFFFFF8;
        do
        {
          v40 = vmulq_n_f32(*v38, v5);
          v38[-1] = vmulq_n_f32(v38[-1], v5);
          *v38 = v40;
          v38 += 2;
          v39 -= 8;
        }

        while (v39);
        v37 = v4 & 0x7FFFFFF8;
        if (v37 == v4)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v37 = 0;
      }

      v41 = v4 - v37;
      v42 = &v36->f32[v37];
      do
      {
        *v42 = *v42 * v5;
        ++v42;
        --v41;
      }

      while (v41);
LABEL_33:
      if (++v34 == v6)
      {
        goto LABEL_42;
      }
    }
  }

  v7 = *(result + 968);
  if (v7 >= 1)
  {
    if (v4 < 1)
    {
LABEL_55:
      v55 = *(result + 1000);
      v57 = *v55;
      v56 = v55[1];
      if (v56 == v57)
      {
        sub_19D41C548(67);
      }

      if (((v56 - v57) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_64;
    }

    v46 = 0;
    v47 = *(result + 976);
    while (1)
    {
      v48 = *(v47 + 8 * v46);
      if (v4 >= 8)
      {
        v50 = v48 + 1;
        v51 = v4 & 0x7FFFFFF8;
        do
        {
          v52 = vmulq_n_f32(*v50, v5);
          v50[-1] = vmulq_n_f32(v50[-1], v5);
          *v50 = v52;
          v50 += 2;
          v51 -= 8;
        }

        while (v51);
        v49 = v4 & 0x7FFFFFF8;
        if (v49 == v4)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v49 = 0;
      }

      v53 = v4 - v49;
      v54 = &v48->f32[v49];
      do
      {
        *v54 = *v54 * v5;
        ++v54;
        --v53;
      }

      while (v53);
LABEL_46:
      if (++v46 == v7)
      {
        goto LABEL_55;
      }
    }
  }

  v8 = *(result + 848);
  if (v8 >= 1)
  {
    if (v4 >= 1)
    {
      v9 = 0;
      v10 = *(result + 856);
      do
      {
        v27 = *(v10 + 8 * v9);
        if (v4 >= 8)
        {
          v29 = v27 + 1;
          v30 = v4 & 0x7FFFFFF8;
          do
          {
            v31 = vmulq_n_f32(*v29, v5);
            v29[-1] = vmulq_n_f32(v29[-1], v5);
            *v29 = v31;
            v29 += 2;
            v30 -= 8;
          }

          while (v30);
          v28 = v4 & 0x7FFFFFF8;
          if (v28 == v4)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v28 = 0;
        }

        v32 = v4 - v28;
        v33 = &v27->f32[v28];
        do
        {
          *v33 = *v33 * v5;
          ++v33;
          --v32;
        }

        while (v32);
LABEL_22:
        ++v9;
      }

      while (v9 != v8);
    }

    v58 = *(result + 880);
    v60 = *v58;
    v59 = v58[1];
    if (v59 == v60)
    {
      sub_19D41C548(67);
    }

    if (((v59 - v60) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_64:
    sub_19D2AE2B4();
  }

LABEL_14:
  if (v4)
  {
    v19 = 0;
    v20 = (v4 * v4);
    v21 = v3;
    do
    {
      v22 = *(result + 264);
      LOBYTE(a3) = *(v22 + v19);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) + (*(*(result + 1096) + 4 * v19) * v21);
      *(v22 + v19++) = *&a3;
    }

    while (v20 != v19);
    v23 = 0;
    do
    {
      v24 = *(result + 272);
      LOBYTE(a3) = *(v24 + v23);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) + (*(*(result + 1112) + 4 * v23) * v21);
      *(v24 + v23++) = *&a3;
    }

    while (v20 != v23);
    v25 = 0;
    do
    {
      v26 = *(result + 256);
      LOBYTE(a3) = *(v26 + v25);
      *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
      *&a3 = SLODWORD(a3) + (*(*(result + 1104) + 4 * v25) * v21);
      *(v26 + v25++) = *&a3;
    }

    while (v20 != v25);
  }

  return result;
}

void sub_19D337E6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D337E8C(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v359 = a5 - 1;
  if (a5 >= 1)
  {
    v352 = (a1 + 704);
    v358 = (a1 + 1168);
    v356 = (a1 + 1184);
    v6 = (a1 + 1176);
    v7 = a5 - 1;
    while (1)
    {
      v9 = *(a1 + 2040);
      if (*(a1 + 2040))
      {
        v10 = v359 - v7;
      }

      else
      {
        v10 = v7;
      }

      if (*(a1 + 2040))
      {
        v11 = v10 < v359;
      }

      else
      {
        v11 = v10 > 0;
      }

      if (*(a1 + 2040))
      {
        v12 = v10 > 0;
      }

      else
      {
        v12 = v10 < v359;
      }

      if (*(a1 + 2040))
      {
        v13 = v10 + 1;
      }

      else
      {
        v13 = v10 - 1;
      }

      v357 = v13;
      memmove(*(*(a1 + 584) + 8 * v10), *(*a4 + 8 * v10), 4 * *(a1 + 52));
      v14 = 8 * v10;
      if (v12)
      {
        if (v9)
        {
          v15 = v10 - 1;
        }

        else
        {
          v15 = v10 + 1;
        }

        bzero(*(a1 + 704), 4 * *(a1 + 52));
        sub_19D32D178(v352, (*(a1 + 608) + 8 * v15), *(a1 + 344), *(a1 + 52), *(a1 + 52), 0.0);
        v16 = *(a1 + 584);
        v17 = *(a1 + 472);
        v18 = *(a1 + 52);
        v19 = v18 / 8;
        if (v18 >= 8)
        {
          v20 = *(v16 + 8 * v10);
          v21 = *(v17 + 8 * v15);
          v22 = v18 / 8;
          v23 = *v352;
          do
          {
            v25 = *v23;
            v24 = v23[1];
            v23 += 2;
            v27 = *v21;
            v26 = v21[1];
            v21 += 2;
            v28 = vmlaq_f32(v20[1], v26, v24);
            *v20 = vmlaq_f32(*v20, v27, v25);
            v20[1] = v28;
            v20 += 2;
            --v22;
          }

          while (v22);
        }

        v29 = 8 * v19;
        if (8 * v19 < v18)
        {
          v30 = *(v17 + 8 * v15);
          v31 = *v352;
          v32 = *(v16 + 8 * v10);
          v33 = v29;
          v34 = v18 - v29;
          if (v34 <= 7)
          {
            goto LABEL_40;
          }

          v35 = 4 * v29;
          v36 = v32 + 4 * v18;
          v37 = v32 + v35 >= (v30 + 4 * v18) || v30 + 4 * v29 >= v36;
          v38 = !v37;
          if (v31 + v35 < v36 && v32 + v35 < v31->u64 + 4 * v18)
          {
            goto LABEL_40;
          }

          if (v38)
          {
            goto LABEL_40;
          }

          v40 = v34 - (v18 & 7) + v33;
          v41 = v33 + (v18 & 7) - v18;
          v42 = (v32 + v35 + 16);
          v43 = (v31 + v35 + 16);
          v44 = (v30 + v35 + 16);
          do
          {
            v45 = vmlaq_f32(*v42, *v44, *v43);
            v42[-1] = vmlaq_f32(v42[-1], v44[-1], v43[-1]);
            *v42 = v45;
            v42 += 2;
            v43 += 2;
            v44 += 2;
            v41 += 8;
          }

          while (v41);
          v33 = v40;
          if ((v18 & 7) != 0)
          {
LABEL_40:
            v46 = v18 - v33;
            v47 = (v32 + 4 * v33);
            v48 = (v30 + 4 * v33);
            v49 = &v31->f32[v33];
            do
            {
              v50 = *v49++;
              v51 = v50;
              v52 = *v48++;
              *v47 = *v47 + (v52 * v51);
              ++v47;
              --v46;
            }

            while (v46);
          }
        }

        sub_19D32D178((*(a1 + 584) + v14), (*(a1 + 632) + 8 * v15), *(a1 + 328), *(a1 + 52), *(a1 + 52), 1.0);
        sub_19D32D178((*(a1 + 584) + v14), (*(a1 + 656) + 8 * v15), *(a1 + 336), *(a1 + 52), *(a1 + 52), 1.0);
      }

      sub_19D30A0F8(v358, (*(a1 + 424) + v14), *(a1 + 52), *(a1 + 528));
      sub_19D30A0F8(v356, (*(a1 + 400) + v14), *(a1 + 52), *(a1 + 524));
      sub_19D30A0F8((a1 + 1176), (*(a1 + 376) + v14), *(a1 + 52), *(a1 + 520));
      bzero(*(*(a1 + 608) + 8 * v10), 4 * *(a1 + 52));
      v53 = *(a1 + 608);
      v54 = *(a1 + 52);
      v55 = v54;
      if (v54 <= 0)
      {
        v74 = -8 * (-v54 >> 3);
        if (v74 >= v55)
        {
          goto LABEL_65;
        }

LABEL_54:
        v75 = *(v53 + 8 * v10);
        v76 = *v358;
        v77 = v74;
        v78 = v55 - v74;
        if (v78 <= 7)
        {
          goto LABEL_63;
        }

        v79 = v75 + 4 * v74;
        v80 = &v76[v74 / 4u];
        if (v79 < v76->u64 + 4 * v55 && v80 < v75 + 4 * v55)
        {
          goto LABEL_63;
        }

        v82 = v78 - (v55 & 7) + v74;
        v83 = v74 + (v55 & 7) - v55;
        v84 = (v79 + 16);
        v85 = (v80 + 16);
        do
        {
          v86 = vmulq_f32(*v85, *v84);
          v84[-1] = vmulq_f32(v85[-1], v84[-1]);
          *v84 = v86;
          v84 += 2;
          v85 += 2;
          v83 += 8;
        }

        while (v83);
        v77 = v82;
        if ((v55 & 7) != 0)
        {
LABEL_63:
          v87 = v55 - v77;
          v88 = &v76->f32[v77];
          v89 = (v75 + 4 * v77);
          do
          {
            v90 = *v88++;
            *v89 = v90 * *v89;
            ++v89;
            --v87;
          }

          while (v87);
        }

        goto LABEL_65;
      }

      v56 = *(*(a1 + 584) + 8 * v10);
      v57 = *(*(a1 + 448) + 8 * v10);
      v58 = *(v53 + 8 * v10);
      if (v54 < 8)
      {
        break;
      }

      v59 = 0;
      v119 = (v58 + 4 * v54);
      v121 = v58 < &v57->f32[v54] && v57 < v119;
      if (v56 < v119 && v58 < &v56->f32[v54])
      {
        goto LABEL_46;
      }

      if (v121)
      {
        goto LABEL_46;
      }

      v59 = v54 & 0x7FFFFFF8;
      v123 = v56 + 1;
      v124 = v57 + 1;
      v125 = v58 + 1;
      v126 = v59;
      do
      {
        v127 = vaddq_f32(vmlsq_f32(*v123, *v123, *v124), *v125);
        v125[-1] = vaddq_f32(vmlsq_f32(v123[-1], v123[-1], v124[-1]), v125[-1]);
        *v125 = v127;
        v123 += 2;
        v124 += 2;
        v125 += 2;
        v126 -= 8;
      }

      while (v126);
      if (v59 != v54)
      {
        goto LABEL_46;
      }

LABEL_48:
      v68 = v54 >> 3;
      if (v54 >= 8)
      {
        v69 = *v358;
        v70 = v54 >> 3;
        do
        {
          v71 = *v69;
          v72 = v69[1];
          v69 += 2;
          v73 = vmulq_f32(v72, v58[1]);
          *v58 = vmulq_f32(v71, *v58);
          v58[1] = v73;
          v58 += 2;
          --v70;
        }

        while (v70);
      }

      v74 = 8 * v68;
      if ((8 * v68) < v55)
      {
        goto LABEL_54;
      }

LABEL_65:
      v91 = *(a1 + 632);
      if (!v11)
      {
        memmove(*(v91 + 8 * v10), *(*(a1 + 496) + 8 * v10), 4 * *(a1 + 52));
        v114 = *(a1 + 632);
        v115 = *(a1 + 52);
        v116 = v115;
        if (v115 <= 0)
        {
          v170 = (*(a1 + 584) + 8 * v10);
          v171 = -(-v115 >> 3);
        }

        else
        {
          v117 = *(v114 + 8 * v10);
          if (v115 < 8)
          {
            v118 = 0;
            goto LABEL_133;
          }

          v118 = v115 & 0x7FFFFFF8;
          v177 = v117 + 1;
          v178 = v118;
          do
          {
            v179 = vnegq_f32(*v177);
            v177[-1] = vnegq_f32(v177[-1]);
            *v177 = v179;
            v177 += 2;
            v178 -= 8;
          }

          while (v178);
          if (v118 != v115)
          {
LABEL_133:
            v180 = v115 - v118;
            v181 = &v117->f32[v118];
            do
            {
              *v181 = -*v181;
              ++v181;
              --v180;
            }

            while (v180);
          }

          v170 = (*(a1 + 584) + 8 * v10);
          v171 = v115 >> 3;
          if (v115 >= 8)
          {
            v182 = *v170;
            v183 = v115 >> 3;
            do
            {
              v184 = *v182;
              v185 = v182[1];
              v182 += 2;
              v186 = vmulq_f32(v117[1], v185);
              *v117 = vmulq_f32(*v117, v184);
              v117[1] = v186;
              v117 += 2;
              --v183;
            }

            while (v183);
          }
        }

        v187 = 8 * v171;
        if ((8 * v171) < v116)
        {
          v188 = *v170;
          v189 = *(v114 + 8 * v10);
          v190 = v187;
          v191 = v116 - v187;
          if (v191 <= 7)
          {
            goto LABEL_148;
          }

          v192 = v189 + 4 * v187;
          v193 = &v188[v187 / 4u];
          if (v192 < v188->u64 + 4 * v116 && v193 < v189 + 4 * v116)
          {
            goto LABEL_148;
          }

          v195 = v191 - (v116 & 7) + v187;
          v196 = v187 + (v116 & 7) - v116;
          v197 = (v193 + 16);
          v198 = (v192 + 16);
          do
          {
            v199 = vmulq_f32(*v198, *v197);
            v198[-1] = vmulq_f32(v198[-1], v197[-1]);
            *v198 = v199;
            v197 += 2;
            v198 += 2;
            v196 += 8;
          }

          while (v196);
          v190 = v195;
          if ((v116 & 7) != 0)
          {
LABEL_148:
            v200 = v116 - v190;
            v201 = (v189 + 4 * v190);
            v202 = &v188->f32[v190];
            do
            {
              v203 = *v202++;
              *v201 = *v201 * v203;
              ++v201;
              --v200;
            }

            while (v200);
          }
        }

        v204 = *(a1 + 632);
        v205 = *(a1 + 52);
        v206 = v205 / 8;
        if (v205 >= 8)
        {
          v207 = *(v204 + 8 * v10);
          v208 = *v6;
          v209 = v205 / 8;
          do
          {
            v210 = *v208;
            v211 = v208[1];
            v208 += 2;
            v212 = vmulq_f32(v211, v207[1]);
            *v207 = vmulq_f32(v210, *v207);
            v207[1] = v212;
            v207 += 2;
            --v209;
          }

          while (v209);
        }

        v213 = 8 * v206;
        if (8 * v206 < v205)
        {
          v214 = *(v204 + 8 * v10);
          v215 = *v6;
          v216 = v213;
          v217 = v205 - v213;
          if (v217 <= 7)
          {
            goto LABEL_163;
          }

          v218 = v214 + 4 * v213;
          v219 = &v215[v213 / 4u];
          if (v218 < v215->u64 + 4 * v205 && v219 < v214 + 4 * v205)
          {
            goto LABEL_163;
          }

          v221 = v217 - (v205 & 7) + v213;
          v222 = v213 + (v205 & 7) - v205;
          v223 = (v218 + 16);
          v224 = (v219 + 16);
          do
          {
            v225 = vmulq_f32(*v224, *v223);
            v223[-1] = vmulq_f32(v224[-1], v223[-1]);
            *v223 = v225;
            v223 += 2;
            v224 += 2;
            v222 += 8;
          }

          while (v222);
          v216 = v221;
          if ((v205 & 7) != 0)
          {
LABEL_163:
            v226 = v205 - v216;
            v227 = &v215->f32[v216];
            v228 = (v214 + 4 * v216);
            do
            {
              v229 = *v227++;
              *v228 = v229 * *v228;
              ++v228;
              --v226;
            }

            while (v226);
          }
        }

        goto LABEL_165;
      }

      v92 = *(a1 + 52);
      v93 = v92;
      if (v92 > 0)
      {
        v94 = *(*(a1 + 112) + 8 * v357);
        v95 = *(*(a1 + 496) + 8 * v10);
        v96 = *(v91 + 8 * v10);
        if (v92 < 8)
        {
          v97 = 0;
          goto LABEL_69;
        }

        v97 = 0;
        if ((v96 - v94) < 0x20)
        {
          goto LABEL_69;
        }

        if ((v96 - v95) < 0x20)
        {
          goto LABEL_69;
        }

        v97 = v92 & 0x7FFFFFF8;
        v172 = v94 + 1;
        v173 = v95 + 1;
        v174 = v96 + 1;
        v175 = v97;
        do
        {
          v176 = vsubq_f32(*v172, *v173);
          v174[-1] = vsubq_f32(v172[-1], v173[-1]);
          *v174 = v176;
          v172 += 2;
          v173 += 2;
          v174 += 2;
          v175 -= 8;
        }

        while (v175);
        if (v97 != v92)
        {
LABEL_69:
          v98 = v92 - v97;
          v99 = v97;
          v100 = &v96->f32[v97];
          v101 = &v95->f32[v99];
          v102 = &v94->f32[v99];
          do
          {
            v103 = *v102++;
            v104 = v103;
            v105 = *v101++;
            *v100++ = v104 - v105;
            --v98;
          }

          while (v98);
        }

        v106 = (*(a1 + 584) + 8 * v10);
        v107 = v92 >> 3;
        if (v92 >= 8)
        {
          v108 = *v106;
          v109 = v92 >> 3;
          do
          {
            v110 = *v108;
            v111 = v108[1];
            v108 += 2;
            v112 = vmulq_f32(v96[1], v111);
            *v96 = vmulq_f32(*v96, v110);
            v96[1] = v112;
            v96 += 2;
            --v109;
          }

          while (v109);
        }

        v113 = 8 * v107;
        if ((8 * v107) >= v93)
        {
          goto LABEL_107;
        }

LABEL_96:
        v128 = *v106;
        v129 = *(v91 + 8 * v10);
        v130 = v113;
        v131 = v93 - v113;
        if (v131 <= 7)
        {
          goto LABEL_105;
        }

        v132 = v129 + 4 * v113;
        v133 = &v128[v113 / 4u];
        if (v132 < v128->u64 + 4 * v93 && v133 < v129 + 4 * v93)
        {
          goto LABEL_105;
        }

        v135 = v131 - (v93 & 7) + v113;
        v136 = v113 + (v93 & 7) - v93;
        v137 = (v133 + 16);
        v138 = (v132 + 16);
        do
        {
          v139 = vmulq_f32(*v138, *v137);
          v138[-1] = vmulq_f32(v138[-1], v137[-1]);
          *v138 = v139;
          v137 += 2;
          v138 += 2;
          v136 += 8;
        }

        while (v136);
        v130 = v135;
        if ((v93 & 7) != 0)
        {
LABEL_105:
          v140 = v93 - v130;
          v141 = (v129 + 4 * v130);
          v142 = &v128->f32[v130];
          do
          {
            v143 = *v142++;
            *v141 = *v141 * v143;
            ++v141;
            --v140;
          }

          while (v140);
        }

        goto LABEL_107;
      }

      v106 = (*(a1 + 584) + 8 * v10);
      v113 = -8 * (-v92 >> 3);
      if (v113 < v93)
      {
        goto LABEL_96;
      }

LABEL_107:
      v144 = *(a1 + 632);
      v145 = *(a1 + 52);
      v146 = v145 / 8;
      if (v145 >= 8)
      {
        v147 = *(v144 + 8 * v10);
        v148 = *v6;
        v149 = v145 / 8;
        do
        {
          v150 = *v148;
          v151 = v148[1];
          v148 += 2;
          v152 = vmulq_f32(v151, v147[1]);
          *v147 = vmulq_f32(v150, *v147);
          v147[1] = v152;
          v147 += 2;
          --v149;
        }

        while (v149);
      }

      v153 = 8 * v146;
      if (8 * v146 < v145)
      {
        v154 = *(v144 + 8 * v10);
        v155 = *v6;
        v156 = v153;
        v157 = v145 - v153;
        if (v157 <= 7)
        {
          goto LABEL_120;
        }

        v158 = v154 + 4 * v153;
        v159 = &v155[v153 / 4u];
        if (v158 < v155->u64 + 4 * v145 && v159 < v154 + 4 * v145)
        {
          goto LABEL_120;
        }

        v161 = v157 - (v145 & 7) + v153;
        v162 = v153 + (v145 & 7) - v145;
        v163 = (v158 + 16);
        v164 = (v159 + 16);
        do
        {
          v165 = vmulq_f32(*v164, *v163);
          v163[-1] = vmulq_f32(v164[-1], v163[-1]);
          *v163 = v165;
          v163 += 2;
          v164 += 2;
          v162 += 8;
        }

        while (v162);
        v156 = v161;
        if ((v145 & 7) != 0)
        {
LABEL_120:
          v166 = v145 - v156;
          v167 = &v155->f32[v156];
          v168 = (v154 + 4 * v156);
          do
          {
            v169 = *v167++;
            *v168 = v169 * *v168;
            ++v168;
            --v166;
          }

          while (v166);
        }
      }

LABEL_165:
      v230 = (*(a1 + 656) + 8 * v10);
      if (v11)
      {
        sub_19D32D178(v230, (*(a1 + 608) + 8 * v10), *(a1 + 344), *(a1 + 52), *(a1 + 52), 0.0);
        v231 = *(a1 + 656);
        v232 = *(a1 + 112);
        v233 = *(a1 + 52);
        if (v233 >= 8)
        {
          v234 = *(v231 + 8 * v10);
          v235 = *(v232 + 8 * v357);
          v236 = v233 / 8;
          do
          {
            v237 = *v235;
            v238 = v235[1];
            v235 += 2;
            v239 = vmulq_f32(v238, v234[1]);
            *v234 = vmulq_f32(v237, *v234);
            v234[1] = v239;
            v234 += 2;
            --v236;
          }

          while (v236);
        }

        v240 = 8 * (v233 / 8);
        if (v240 < v233)
        {
          v241 = *(v231 + 8 * v10);
          v242 = *(v232 + 8 * v357);
          v243 = v240;
          v244 = v233 - v240;
          if (v244 <= 7)
          {
            goto LABEL_179;
          }

          v245 = v241 + 4 * v240;
          v246 = v242 + 4 * v240;
          if (v245 < v242 + 4 * v233 && v246 < v241 + 4 * v233)
          {
            goto LABEL_179;
          }

          v248 = v244 - (v233 & 7) + v240;
          v249 = v240 + (v233 & 7) - v233;
          v250 = (v245 + 16);
          v251 = (v246 + 16);
          do
          {
            v252 = vmulq_f32(*v251, *v250);
            v250[-1] = vmulq_f32(v251[-1], v250[-1]);
            *v250 = v252;
            v250 += 2;
            v251 += 2;
            v249 += 8;
          }

          while (v249);
          v243 = v248;
          if ((v233 & 7) != 0)
          {
LABEL_179:
            v253 = v233 - v243;
            v254 = (v242 + 4 * v243);
            v255 = (v241 + 4 * v243);
            do
            {
              v256 = *v254++;
              *v255 = v256 * *v255;
              ++v255;
              --v253;
            }

            while (v253);
          }
        }

        v257 = *(a1 + 656);
        v258 = *(a1 + 52);
        v259 = v258 / 8;
        if (v258 >= 8)
        {
          v260 = *(v257 + 8 * v10);
          v261 = *v356;
          v262 = v258 / 8;
          do
          {
            v263 = *v261;
            v264 = v261[1];
            v261 += 2;
            v265 = vmulq_f32(v264, v260[1]);
            *v260 = vmulq_f32(v263, *v260);
            v260[1] = v265;
            v260 += 2;
            --v262;
          }

          while (v262);
        }

        v266 = 8 * v259;
        if (8 * v259 < v258)
        {
          v267 = *(v257 + 8 * v10);
          v268 = *v356;
          v269 = v266;
          v270 = v258 - v266;
          if (v270 <= 7)
          {
            goto LABEL_194;
          }

          v271 = v267 + 4 * v266;
          v272 = &v268[v266 / 4u];
          if (v271 < v268->u64 + 4 * v258 && v272 < v267 + 4 * v258)
          {
            goto LABEL_194;
          }

          v274 = v270 - (v258 & 7) + v266;
          v275 = v266 + (v258 & 7) - v258;
          v276 = (v271 + 16);
          v277 = (v272 + 16);
          do
          {
            v278 = vmulq_f32(*v277, *v276);
            v276[-1] = vmulq_f32(v277[-1], v276[-1]);
            *v276 = v278;
            v276 += 2;
            v277 += 2;
            v275 += 8;
          }

          while (v275);
          v269 = v274;
          if ((v258 & 7) != 0)
          {
LABEL_194:
            v279 = v258 - v269;
            v280 = &v268->f32[v269];
            v281 = (v267 + 4 * v269);
            do
            {
              v282 = *v280++;
              *v281 = v282 * *v281;
              ++v281;
              --v279;
            }

            while (v279);
          }
        }
      }

      else
      {
        bzero(*v230, 4 * *(a1 + 52));
      }

      if (((**a1)(a1) & 1) == 0)
      {
        bzero(*(*(a1 + 560) + 8 * v10), 4 * *(a1 + 48));
        sub_19D32D178((*(a1 + 560) + v14), (*(a1 + 632) + v14), *(a1 + 304), *(a1 + 52), *(a1 + 48), 1.0);
        sub_19D32D178((*(a1 + 560) + v14), (*(a1 + 608) + v14), *(a1 + 320), *(a1 + 52), *(a1 + 48), 1.0);
        sub_19D32D178((*(a1 + 560) + v14), (*(a1 + 656) + v14), *(a1 + 312), *(a1 + 52), *(a1 + 48), 1.0);
      }

      if (v7-- <= 0)
      {
        goto LABEL_200;
      }
    }

    v59 = 0;
LABEL_46:
    v60 = v54 - v59;
    v61 = v59;
    v62 = &v58->f32[v59];
    v63 = &v57->f32[v61];
    v64 = &v56->f32[v61];
    do
    {
      v65 = *v64++;
      v66 = v65;
      v67 = *v63++;
      *v62 = (v66 - (v67 * v66)) + *v62;
      ++v62;
      --v60;
    }

    while (v60);
    goto LABEL_48;
  }

LABEL_200:
  if (*(a1 + 56) > 0)
  {
    *(a1 + 728) = 0;
    *(a1 + 968) = 0;
    *(a1 + 848) = 0;
  }

  if (a5 > 1)
  {
    v283 = 1;
    v284 = a5 - 2;
    do
    {
      if (*(a1 + 2040))
      {
        v285 = v284;
      }

      else
      {
        v285 = v283;
      }

      if (*(a1 + 2040))
      {
        v286 = 1;
      }

      else
      {
        v286 = -1;
      }

      v287 = v285 + v286;
      if (*(a1 + 2040))
      {
        v288 = a5 - 2;
      }

      else
      {
        v288 = 1;
      }

      v289 = v285 == v288;
      v290 = 8 * v285;
      v291 = 8 * v287;
      sub_19D30A868(*(a1 + 64) + v290, *(a1 + 632) + v290, *(a1 + 112) + v291, (a1 + 1104), *(a1 + 52), *(a1 + 52), v289);
      sub_19D30A868(*(a1 + 64) + v290, *(a1 + 656) + v290, *(a1 + 112) + v291, (a1 + 1096), *(a1 + 52), *(a1 + 52), v289);
      sub_19D30A868(*(a1 + 64) + v290, *(a1 + 608) + v290, *(a1 + 112) + v291, (a1 + 1112), *(a1 + 52), *(a1 + 52), v289);
      ++v283;
      --v284;
    }

    while (v284 != -1);
  }

  if (a5 >= 1)
  {
    v292 = 0;
    while (1)
    {
      v296 = *(a1 + 2040) ? v359 - v292 : v292;
      v297 = *(a1 + 2040) ? v359 : 0;
      if (a3[1] == *a3)
      {
        break;
      }

      v293 = *(a1 + 656);
      if (*(a1 + 56) < 1)
      {
        goto LABEL_217;
      }

      v298 = (*(a1 + 208) + 24 * v296);
      v300 = *v298;
      v299 = v298[1];
      if (v299 != v300)
      {
        if (((v299 - v300) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_276;
      }

      v301 = *(a1 + 52);
      if (v301 >= 1)
      {
        v302 = 0;
        v303 = *(v293 + 8 * v296);
        v304 = *(*(a1 + 736) + 8 * *(a1 + 728));
        if (v301 < 8)
        {
          goto LABEL_236;
        }

        if ((v304 - v303) < 0x20)
        {
          goto LABEL_236;
        }

        v302 = v301 & 0x7FFFFFF8;
        v305 = (v303 + 16);
        v306 = (v304 + 16);
        v307 = v302;
        do
        {
          v308 = *v305;
          *(v306 - 1) = *(v305 - 1);
          *v306 = v308;
          v305 += 2;
          v306 += 2;
          v307 -= 8;
        }

        while (v307);
        if (v302 != v301)
        {
LABEL_236:
          v309 = v301 - v302;
          v310 = 4 * v302;
          v311 = (v304 + 4 * v302);
          v312 = (v303 + v310);
          do
          {
            v313 = *v312++;
            *v311++ = v313;
            --v309;
          }

          while (v309);
        }
      }

      if (*(a1 + 724) < 1)
      {
        ++*(a1 + 728);
      }

      else
      {
        v314 = 0;
        v315 = *(a1 + 760);
        do
        {
          *(*(v315 + 24 * *(a1 + 728)) + 4 * v314) = *(4 * v314);
          ++v314;
        }

        while (v314 < *(a1 + 724));
        ++*(a1 + 728);
        operator delete(0);
      }

      v316 = (*(a1 + 208) + 24 * v296);
      v318 = *v316;
      v317 = v316[1];
      if (v317 != v318)
      {
        if (((v317 - v318) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_276;
      }

      v319 = *(a1 + 52);
      if (v319 >= 1)
      {
        v320 = 0;
        v321 = *(*(a1 + 632) + 8 * v296);
        v322 = *(*(a1 + 856) + 8 * *(a1 + 848));
        if (v319 < 8)
        {
          goto LABEL_252;
        }

        if ((v322 - v321) < 0x20)
        {
          goto LABEL_252;
        }

        v320 = v319 & 0x7FFFFFF8;
        v323 = (v321 + 16);
        v324 = (v322 + 16);
        v325 = v320;
        do
        {
          v326 = *v323;
          *(v324 - 1) = *(v323 - 1);
          *v324 = v326;
          v323 += 2;
          v324 += 2;
          v325 -= 8;
        }

        while (v325);
        if (v320 != v319)
        {
LABEL_252:
          v327 = v319 - v320;
          v328 = 4 * v320;
          v329 = (v322 + 4 * v320);
          v330 = (v321 + v328);
          do
          {
            v331 = *v330++;
            *v329++ = v331;
            --v327;
          }

          while (v327);
        }
      }

      if (*(a1 + 844) < 1)
      {
        ++*(a1 + 848);
      }

      else
      {
        v332 = 0;
        v333 = *(a1 + 880);
        do
        {
          *(*(v333 + 24 * *(a1 + 848)) + 4 * v332) = *(4 * v332);
          ++v332;
        }

        while (v332 < *(a1 + 844));
        ++*(a1 + 848);
        operator delete(0);
      }

      v334 = (*(a1 + 208) + 24 * v296);
      v336 = *v334;
      v335 = v334[1];
      if (v335 != v336)
      {
        if (((v335 - v336) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_276:
        sub_19D2AE2B4();
      }

      v337 = *(a1 + 52);
      if (v337 >= 1)
      {
        v338 = 0;
        v339 = *(*(a1 + 608) + 8 * v296);
        v340 = *(*(a1 + 976) + 8 * *(a1 + 968));
        if (v337 < 8)
        {
          goto LABEL_268;
        }

        if ((v340 - v339) < 0x20)
        {
          goto LABEL_268;
        }

        v338 = v337 & 0x7FFFFFF8;
        v341 = (v339 + 16);
        v342 = (v340 + 16);
        v343 = v338;
        do
        {
          v344 = *v341;
          *(v342 - 1) = *(v341 - 1);
          *v342 = v344;
          v341 += 2;
          v342 += 2;
          v343 -= 8;
        }

        while (v343);
        if (v338 != v337)
        {
LABEL_268:
          v345 = v337 - v338;
          v346 = 4 * v338;
          v347 = (v340 + 4 * v338);
          v348 = (v339 + v346);
          do
          {
            v349 = *v348++;
            *v347++ = v349;
            --v345;
          }

          while (v345);
        }
      }

      if (*(a1 + 964) < 1)
      {
        ++*(a1 + 968);
      }

      else
      {
        v350 = 0;
        v351 = *(a1 + 1000);
        do
        {
          *(*(v351 + 24 * *(a1 + 968)) + 4 * v350) = *(4 * v350);
          ++v350;
        }

        while (v350 < *(a1 + 964));
        ++*(a1 + 968);
        operator delete(0);
      }

LABEL_218:
      if (++v292 == a5)
      {
        return;
      }
    }

    v293 = *(a1 + 656);
LABEL_217:
    v294 = v296 == v297;
    v295 = 8 * v296;
    sub_19D30A868(*(a1 + 64) + v295, v293 + v295, *(a1 + 64) + v295, (a1 + 1072), *(a1 + 52), *(a1 + 48), v294);
    sub_19D30A868(*(a1 + 64) + v295, *(a1 + 632) + v295, *(a1 + 64) + v295, (a1 + 1080), *(a1 + 52), *(a1 + 48), v294);
    sub_19D30A868(*(a1 + 64) + v295, *(a1 + 608) + v295, *(a1 + 64) + v295, (a1 + 1088), *(a1 + 52), *(a1 + 48), v294);
    goto LABEL_218;
  }
}

uint64_t sub_19D3391B4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[2040] = 1;
  if ((atomic_load_explicit(&qword_1EB013948, memory_order_acquire) & 1) == 0)
  {
    v12 = a6;
    v9 = a5;
    v11 = a4;
    v8 = a3;
    v10 = a2;
    sub_19D45447C();
    a5 = v9;
    a2 = v10;
    a3 = v8;
    a4 = v11;
    a6 = v12;
  }

  result = (*(*a1 + 304))(a1, a2, a3, a4, a5, a6, qword_1EB013930);
  a1[2040] = 0;
  return result;
}

uint64_t sub_19D33925C(_BYTE *a1)
{
  a1[2040] = 1;
  result = (*(*a1 + 296))(a1);
  a1[2040] = 0;
  return result;
}

char *sub_19D3392B4(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 1988) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8558, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 304) = result + 232;
  *(a1 + 312) = result + 240;
  *(a1 + 320) = result + 248;
  *(a1 + 328) = result + 256;
  *(a1 + 336) = result + 264;
  *(a1 + 344) = result + 272;
  *(a1 + 352) = result + 280;
  *(a1 + 360) = result + 288;
  *(a1 + 368) = result + 296;
  return result;
}

void sub_19D339370(uint64_t a1, void *lpsrc)
{
  if (!*(a1 + 1988))
  {
    if (!__dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B8558, 0))
    {
      __cxa_bad_cast();
    }

    sub_19D41C548(34);
  }

  sub_19D41C548(1);
}

void sub_19D339410(void *a1)
{
  v1 = sub_19D33AAB4(a1);

  operator delete(v1);
}

void sub_19D339438(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  if (a3[1] != *a3 && *(a1 + 56) >= 1)
  {
    v8 = (**a1)(a1);
    v9 = a4 & 0xFFFFFF;
    v10 = *(a1 + 2048);
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    v11 = *(v10 + 468);
    if (v11 > 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v9 = a4 & 0xFFFFFF;
  v10 = *(a1 + 2048);
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  v11 = 50.0;
LABEL_8:
  v12 = a5 != 0;
  if (v9 > v12)
  {
    v178 = v9;
    v179 = v9 - 1;
    v13 = -v11;
    while (1)
    {
      if (*(a1 + 2040))
      {
        v14 = v9 + ~v12;
      }

      else
      {
        v14 = v12;
      }

      if (*(a1 + 2040))
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

      if (*(a1 + 2040))
      {
        v16 = v14 < v179;
      }

      else
      {
        v16 = v14 > 0;
      }

      v181 = v12;
      v182 = v16;
      memmove(*(*(a1 + 64) + 8 * v14), *(*a2 + 8 * v14), 4 * *(a1 + 44));
      v17 = *(a1 + 40);
      if (v17 == 1)
      {
        *(*(*(a1 + 64) + 8 * v14) + 4 * *(a1 + 48) - 4) = 1065353216;
      }

      if (v8)
      {
        v18 = *(a1 + 48);
        v19 = *(*(a1 + 208) + 24 * v14);
        *v19 = **(*a3 + 24 * v14);
        if (v17)
        {
          v19[1] = v18 - 1;
        }
      }

      bzero(*(*(a1 + 376) + 8 * v14), 4 * *(a1 + 52));
      bzero(*(*(a1 + 400) + 8 * v14), 4 * *(a1 + 52));
      bzero(*(*(a1 + 424) + 8 * v14), 4 * *(a1 + 52));
      v20 = *(a1 + 2048);
      v21 = 8 * v14;
      v183 = v14;
      if (v20)
      {
        if ((*(v20 + 20) & 1) == 0)
        {
          v166 = *(v20 + 40);
          if ((v166 == 4 || v166 == 2) && *(v20 + 44) == 3)
          {
            break;
          }
        }
      }

      v22 = v15;
      v23 = *(a1 + 376);
      v24 = *(a1 + 64);
      v25 = *(a1 + 304);
      v26 = (*(a1 + 208) + 24 * v14);
      v191 = 0;
      v192 = 0;
      __p = 0;
      v28 = *v26;
      v27 = v26[1];
      if (v27 != v28)
      {
        if (((v27 - v28) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      sub_19D33A794(a1, v8, (v23 + v21), (v24 + v21), v25, &__p, *(a1 + 52), *(a1 + 48), 1);
      v29 = __p;
      v15 = v22;
      v30 = v14;
      v31 = 0;
      if (__p)
      {
        v191 = __p;
LABEL_32:
        operator delete(v29);
      }

      v32 = *(a1 + 2048);
      if (!v32)
      {
        goto LABEL_35;
      }

LABEL_34:
      if (*(v32 + 244) == 1)
      {
        goto LABEL_162;
      }

LABEL_35:
      v33 = v14 + v15;
      v34 = *(a1 + 376);
      v35 = *(a1 + 52);
      v36 = v182;
      if (v182)
      {
        sub_19D32D178((v34 + 8 * v30), (*(a1 + 112) + 8 * v33), *(a1 + 328), *(a1 + 52), v35, 1.0);
        v34 = *(a1 + 376);
        v35 = *(a1 + 52);
      }

      v37 = (v34 + 8 * v30);
      if (v35 >= 1)
      {
        v38 = *v37;
        v39 = v35;
        do
        {
          v40 = -v11;
          if (*v38 < v13 || (v40 = v11, *v38 > v11))
          {
            *v38 = v40;
          }

          ++v38;
          --v39;
        }

        while (v39);
      }

      sub_19D30A3C0((*(a1 + 448) + 8 * v30), v37, v35, *(a1 + 520));
      if ((v31 & 1) == 0)
      {
        v175 = v31;
        v41 = v33;
        v42 = *(a1 + 400);
        v43 = *(a1 + 64);
        v44 = *(a1 + 312);
        v45 = (*(a1 + 208) + 24 * v30);
        v188 = 0;
        v189 = 0;
        v187 = 0;
        v47 = *v45;
        v46 = v45[1];
        if (v46 != v47)
        {
          if (((v46 - v47) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        sub_19D33A794(a1, v8, (v42 + v21), (v43 + v21), v44, &v187, *(a1 + 52), *(a1 + 48), 1);
        v36 = v182;
        v33 = v41;
        v31 = v175;
        v30 = v183;
        if (v187)
        {
          v188 = v187;
          operator delete(v187);
        }
      }

      v48 = *(a1 + 2048);
      if (v48 && *(v48 + 244) == 1)
      {
        goto LABEL_162;
      }

      v49 = *(a1 + 400);
      v50 = *(a1 + 52);
      if (v36)
      {
        sub_19D32D178((v49 + 8 * v30), (*(a1 + 112) + 8 * v33), *(a1 + 336), *(a1 + 52), v50, 1.0);
        v49 = *(a1 + 400);
        v50 = *(a1 + 52);
      }

      v51 = (v49 + 8 * v30);
      if (v50 >= 1)
      {
        v52 = *v51;
        v53 = v50;
        do
        {
          v54 = -v11;
          if (*v52 < v13 || (v54 = v11, *v52 > v11))
          {
            *v52 = v54;
          }

          ++v52;
          --v53;
        }

        while (v53);
      }

      sub_19D30A3C0((*(a1 + 472) + v21), v51, v50, *(a1 + 524));
      bzero(*(*(a1 + 88) + v21), 4 * *(a1 + 52));
      if (v36)
      {
        v55 = *(a1 + 88);
        v56 = *(a1 + 112);
        v57 = *(a1 + 472);
        v58 = *(a1 + 52);
        if (v58 >= 8)
        {
          v59 = *(v55 + 8 * v30);
          v60 = *(v57 + 8 * v30);
          v61 = v58 / 8;
          v62 = *(v56 + 8 * v33);
          do
          {
            v64 = *v62;
            v63 = v62[1];
            v62 += 2;
            v66 = *v60;
            v65 = v60[1];
            v60 += 2;
            v67 = vmlaq_f32(v59[1], v65, v63);
            *v59 = vmlaq_f32(*v59, v66, v64);
            v59[1] = v67;
            v59 += 2;
            --v61;
          }

          while (v61);
        }

        v68 = 8 * (v58 / 8);
        if (v68 < v58)
        {
          v69 = *(v56 + 8 * v33);
          v70 = *(v57 + 8 * v30);
          v71 = *(v55 + 8 * v30);
          v72 = v68;
          v73 = v58 - v68;
          if (v73 <= 7)
          {
            goto LABEL_82;
          }

          v74 = 4 * v68;
          v75 = v71 + 4 * v58;
          v76 = v71 + v74 >= (v70 + 4 * v58) || v70 + 4 * v68 >= v75;
          v77 = !v76;
          if (v69 + v74 < v75 && v71 + v74 < (v69 + 4 * v58))
          {
            goto LABEL_82;
          }

          if (v77)
          {
            goto LABEL_82;
          }

          v79 = v73 - (v58 & 7) + v72;
          v80 = v72 + (v58 & 7) - v58;
          v81 = (v71 + v74 + 16);
          v82 = (v69 + v74 + 16);
          v83 = (v70 + v74 + 16);
          do
          {
            v84 = vmlaq_f32(*v81, *v83, *v82);
            v81[-1] = vmlaq_f32(v81[-1], v83[-1], v82[-1]);
            *v81 = v84;
            v81 += 2;
            v82 += 2;
            v83 += 2;
            v80 += 8;
          }

          while (v80);
          v72 = v79;
          if ((v58 & 7) != 0)
          {
LABEL_82:
            v85 = v58 - v72;
            v86 = (v71 + 4 * v72);
            v87 = (v70 + 4 * v72);
            v88 = (v69 + 4 * v72);
            do
            {
              v89 = *v88++;
              v90 = v89;
              v91 = *v87++;
              *v86 = *v86 + (v91 * v90);
              ++v86;
              --v85;
            }

            while (v85);
          }
        }
      }

      v92 = *(a1 + 52);
      if (v92 >= 1)
      {
        v93 = *(*(a1 + 88) + 8 * v30);
        v94 = *(a1 + 52);
        do
        {
          v95 = -v11;
          if (*v93 < v13 || (v95 = v11, *v93 > v11))
          {
            *v93 = v95;
          }

          ++v93;
          --v94;
        }

        while (v94);
      }

      if ((v31 & 1) == 0)
      {
        v176 = v33;
        v96 = *(a1 + 424);
        v97 = *(a1 + 64);
        v98 = *(a1 + 320);
        v99 = (*(a1 + 208) + 24 * v30);
        v185 = 0;
        v186 = 0;
        v184 = 0;
        v101 = *v99;
        v100 = v99[1];
        if (v100 != v101)
        {
          if (((v100 - v101) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        sub_19D33A794(a1, v8, (v96 + v21), (v97 + v21), v98, &v184, v92, *(a1 + 48), 1);
        v30 = v183;
        v33 = v176;
        if (v184)
        {
          v185 = v184;
          operator delete(v184);
        }
      }

      v102 = *(a1 + 2048);
      if (v102)
      {
        if (*(v102 + 244) == 1)
        {
LABEL_162:
          sub_19D41C548(76);
        }
      }

      sub_19D32D178((*(a1 + 424) + v21), (*(a1 + 88) + v21), *(a1 + 344), *(a1 + 52), *(a1 + 52), 1.0);
      v103 = *(a1 + 424);
      v104 = *(a1 + 52);
      if (v104 >= 1)
      {
        v105 = *(v103 + v21);
        v106 = *(a1 + 52);
        do
        {
          v107 = -v11;
          if (*v105 < v13 || (v107 = v11, *v105 > v11))
          {
            *v105 = v107;
          }

          ++v105;
          --v106;
        }

        while (v106);
      }

      sub_19D30A3C0((*(a1 + 496) + v21), (v103 + v21), v104, *(a1 + 528));
      bzero(*(*(a1 + 112) + v21), 4 * *(a1 + 52));
      v108 = *(a1 + 112);
      v109 = *(a1 + 448);
      v110 = *(a1 + 52);
      if (v110 < 1)
      {
        goto LABEL_111;
      }

      v111 = *(*(a1 + 496) + 8 * v30);
      v112 = *(v109 + 8 * v30);
      v113 = *(v108 + 8 * v30);
      if (v110 >= 8)
      {
        v114 = 0;
        v157 = v113 + 4 * v110;
        v159 = v113 < v112->u64 + 4 * v110 && v112 < v157;
        if ((v111 >= v157 || v113 >= v111->u64 + 4 * v110) && !v159)
        {
          v114 = v110 & 0x7FFFFFF8;
          v161 = v111 + 1;
          v162 = v112 + 1;
          v163 = (v113 + 16);
          v164 = v114;
          do
          {
            v165 = vaddq_f32(vmlsq_f32(*v161, *v161, *v162), *v163);
            v163[-1] = vaddq_f32(vmlsq_f32(v161[-1], v161[-1], v162[-1]), v163[-1]);
            *v163 = v165;
            v161 += 2;
            v162 += 2;
            v163 += 2;
            v164 -= 8;
          }

          while (v164);
          if (v114 == v110)
          {
            goto LABEL_111;
          }
        }
      }

      else
      {
        v114 = 0;
      }

      v115 = v110 - v114;
      v116 = v114;
      v117 = (v113 + v116 * 4);
      v118 = &v112->f32[v116];
      v119 = &v111->f32[v116];
      do
      {
        v120 = *v119++;
        v121 = v120;
        v122 = *v118++;
        *v117 = (v121 - (v122 * v121)) + *v117;
        ++v117;
        --v115;
      }

      while (v115);
LABEL_111:
      if (v36)
      {
        v123 = v110;
        if (v110 >= 8)
        {
          v124 = *(v108 + 8 * v30);
          v125 = *(v108 + 8 * v33);
          v126 = v110 / 8;
          v127 = *(v109 + 8 * v30);
          do
          {
            v129 = *v127;
            v128 = v127[1];
            v127 += 2;
            v131 = *v125;
            v130 = v125[1];
            v125 += 2;
            v132 = vmlaq_f32(v124[1], v130, v128);
            *v124 = vmlaq_f32(*v124, v131, v129);
            v124[1] = v132;
            v124 += 2;
            --v126;
          }

          while (v126);
        }

        v133 = 8 * (v110 / 8);
        if (v133 < v110)
        {
          v134 = *(v109 + 8 * v30);
          v135 = *(v108 + 8 * v33);
          v136 = *(v108 + 8 * v30);
          v137 = v133;
          v138 = v123 - v133;
          if (v138 <= 7)
          {
            goto LABEL_132;
          }

          v139 = 4 * v133;
          v140 = v136 + 4 * v123;
          v141 = v136 + v139 >= (v135 + 4 * v123) || v135 + 4 * v133 >= v140;
          v142 = !v141;
          if (v134 + v139 < v140 && v136 + v139 < (v134 + 4 * v123))
          {
            goto LABEL_132;
          }

          if (v142)
          {
            goto LABEL_132;
          }

          v144 = v138 - (v123 & 7) + v137;
          v145 = v137 + (v123 & 7) - v123;
          v146 = (v136 + v139 + 16);
          v147 = (v134 + v139 + 16);
          v148 = (v135 + v139 + 16);
          do
          {
            v149 = vmlaq_f32(*v146, *v148, *v147);
            v146[-1] = vmlaq_f32(v146[-1], v148[-1], v147[-1]);
            *v146 = v149;
            v146 += 2;
            v147 += 2;
            v148 += 2;
            v145 += 8;
          }

          while (v145);
          v137 = v144;
          if ((v123 & 7) != 0)
          {
LABEL_132:
            v150 = v123 - v137;
            v151 = (v136 + 4 * v137);
            v152 = (v135 + 4 * v137);
            v153 = (v134 + 4 * v137);
            do
            {
              v154 = *v153++;
              v155 = v154;
              v156 = *v152++;
              *v151 = *v151 + (v156 * v155);
              ++v151;
              --v150;
            }

            while (v150);
          }
        }
      }

      v12 = v181 + 1;
      v9 = v178;
      if (v181 + 1 == v178)
      {
        return;
      }
    }

    v167 = *(a1 + 376);
    v168 = *(a1 + 400);
    v172 = *(a1 + 64);
    v173 = *(a1 + 424);
    v177 = *(a1 + 304);
    v169 = (*(a1 + 208) + 24 * v14);
    v194 = 0;
    v195 = 0;
    v193 = 0;
    v171 = *v169;
    v170 = v169[1];
    if (v170 != v171)
    {
      if (((v170 - v171) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    sub_19D33A014(a1, 0, (v167 + v21), (v168 + v21), (v173 + v21), (v172 + v21), v177, &v193, *(a1 + 52), *(a1 + 48), 1);
    v29 = v193;
    v30 = v14;
    if (!v193)
    {
      v31 = 1;
      v32 = *(a1 + 2048);
      if (!v32)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v194 = v193;
    v31 = 1;
    goto LABEL_32;
  }
}