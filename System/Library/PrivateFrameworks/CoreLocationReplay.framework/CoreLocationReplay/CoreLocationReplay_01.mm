void sub_245B56E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = vabdd_f64(*(a2 + 16), *(*(a1 + 6760) - 1776));
  sub_245B5837C(a4, a1 + 3416);
  *(a4 + 1520) = 0;
  v9 = *(a2 + 16);
  *(a4 + 1160) = *a2;
  *(a4 + 1176) = v9;
  v10 = *(a2 + 40);
  *(a4 + 1216) = *(a2 + 56);
  *(a4 + 1200) = v10;
  v11 = *(a2 + 96);
  *(a4 + 1240) = *(a2 + 80);
  *(a4 + 1256) = v11;
  v12 = *(a2 + 112);
  v13 = *(a2 + 128);
  v14 = *(a2 + 144);
  *(a4 + 1320) = *(a2 + 160);
  *(a4 + 1288) = v13;
  *(a4 + 1304) = v14;
  *(a4 + 1272) = v12;
  v15 = *(a2 + 192);
  *(a4 + 1336) = *(a2 + 176);
  *(a4 + 1352) = v15;
  v16 = *(a2 + 216);
  *(a4 + 1392) = *(a2 + 232);
  *(a4 + 1376) = v16;
  *(a4 + 1416) = *(a2 + 256);
  v17 = *(a2 + 272);
  v18 = *(a2 + 288);
  v19 = *(a2 + 320);
  *(a4 + 1464) = *(a2 + 304);
  *(a4 + 1480) = v19;
  *(a4 + 1432) = v17;
  *(a4 + 1448) = v18;
  v20 = *(a2 + 336);
  *(a4 + 1512) = *(a2 + 352);
  *(a4 + 1496) = v20;
  sub_245B57074(a3, a4);
  v21 = v8 * 0.00523598776;
  *(a1 + 7024) = v8 * 0.00523598776 * (v8 * 0.00523598776) + *(a1 + 7024);
  *(a1 + 7080) = v8 * 0.00523598776 * (v8 * 0.00523598776) + *(a1 + 7080);
  *(a1 + 7136) = v8 * 0.00523598776 * (v8 * 0.00523598776) + *(a1 + 7136);
  v22 = v8 * 0.3;
  *(a1 + 7192) = v22 * v22 + *(a1 + 7192);
  *(a1 + 7248) = v22 * v22 + *(a1 + 7248);
  *(a1 + 7304) = v22 * v22 + *(a1 + 7304);
  if (qword_27EE33DE8 != -1)
  {
    dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
  }

  v23 = qword_27EE33DF0;
  if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a2 + 16);
    v26 = 134349568;
    v27 = v24;
    v28 = 2050;
    v29 = v21 * 57.2957795;
    v30 = 2050;
    v31 = v22;
    _os_log_impl(&dword_245B46000, v23, OS_LOG_TYPE_DEBUG, "CLVLF,propagate,Filter propagated,machAbsTime,%{public}.3lf,rotProcNoiseStd,%{public}.3lf,posProcNoiseStd,%{public}.3lf", &v26, 0x20u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245B57074(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(a2 + 1320) = 0;
  if (((*(a2 + 1) & 1) != 0 || *a2 == 1) && *(result + 1424) == 1)
  {
    sub_245B4B210(v20, a2 + 8);
    sub_245B481D0(v20, v3 + 56, 1);
    *(a2 + 544) = v20[0];
    v4 = v22;
    *(a2 + 560) = v21;
    *(a2 + 576) = v4;
    *(a2 + 592) = v23;
    v5 = v27;
    *(a2 + 640) = v26;
    *(a2 + 656) = v5;
    *(a2 + 672) = v28;
    v6 = v25;
    *(a2 + 608) = v24;
    *(a2 + 624) = v6;
    v7 = v29;
    v8 = v30;
    *(a2 + 728) = v31;
    *(a2 + 696) = v7;
    *(a2 + 712) = v8;
    v9 = v33;
    v10 = a2 + 784;
    *(a2 + 744) = v32;
    *(a2 + 760) = v9;
    result = memcpy((a2 + 784), v34, 0x128uLL);
    v11 = 0;
    while ((*(a2 + 160 + v11) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v11 += 8;
      if (v11 == 32)
      {
        v12 = 0;
        while ((*(a2 + 208 + v12) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v12 += 8;
          if (v12 == 24)
          {
            v13 = 0;
            while ((*(v10 + v13) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v13 += 8;
              if (v13 == 288)
              {
                v14 = 0;
                while (*(v10 + v14) >= 0.0)
                {
                  v14 += 56;
                  if (v14 == 336)
                  {
                    v15 = *(a2 + 760);
                    *(a2 + 1376) = *(a2 + 744);
                    *(a2 + 1392) = v15;
                    v16 = *(a2 + 952);
                    *(a2 + 1416) = v16;
                    *(a2 + 1424) = *(a2 + 960);
                    *(a2 + 1440) = *(a2 + 1000);
                    v17 = *(a2 + 1008);
                    *(a2 + 1448) = v17;
                    *(a2 + 1464) = *(a2 + 1048);
                    *(a2 + 1472) = *(a2 + 1056);
                    v18 = *(a2 + 1064);
                    *(a2 + 1480) = v18;
                    *(a2 + 1272) = sqrt(v16 + *&v17);
                    *(a2 + 1280) = sqrt(v18);
                    v19 = *(a2 + 1104);
                    *(a2 + 1336) = *(a2 + 1088);
                    *(a2 + 1352) = v19;
                    result = cnnavigation::ENUToECEF();
                    if (!result)
                    {
                      result = cnnavigation::ECEFToLLA();
                      if (!result)
                      {
                        *(a2 + 1320) = 1;
                        *(a2 + 1520) |= 1u;
                      }
                    }

                    return result;
                  }
                }

                return result;
              }
            }

            return result;
          }
        }

        return result;
      }
    }
  }

  return result;
}

void sub_245B572B4(uint64_t a1, uint64_t a2)
{
  *(a2 + 1496) = 0;
  if (((*(a2 + 1) & 1) != 0 || *a2 == 1) && *(a1 + 1424) == 1 && *(a1 + 1400) == 1)
  {
    v4 = __sincos_stret(*(a1 + 1408));
    v5 = *(a1 + 1416);
    v48 = 0;
    *&v49[0] = &unk_2858B66C8;
    v49[1] = v4.__cosval;
    v49[2] = v4.__sinval;
    v49[3] = 0.0;
    v49[4] = 0.0;
    *&v41[0] = &unk_2858B6880;
    v41[1] = v4.__sinval * (v5 * v4.__sinval);
    v42 = -(v5 * v4.__sinval * v4.__cosval);
    v43 = 0;
    v44 = v42;
    v45 = v4.__cosval * (v5 * v4.__cosval);
    v46 = 0u;
    v47 = 0u;
    v38 = &unk_2858B66C8;
    v39 = 0u;
    v40 = 0u;
    v32 = &unk_2858B6880;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    sub_245B493E0(a2 + 8, v49, v41, &v38, &v32, 1);
    v28 = &unk_2858B7C68;
    v29 = -*(&v39 + 1);
    v30 = *&v39;
    v31 = 0;
    sub_245B4C0A4(v21, 2, 1);
    cblas_dgemv_NEWLAPACK();
    v24 = &unk_2858B7C68;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0;
    v6 = v22;
    v7 = v23;
    if (v22 != v23)
    {
      v8 = &v25;
      do
      {
        v9 = *v6++;
        *v8++ = v9;
      }

      while (v6 != v7);
    }

    sub_245B4B1D0(v21);
    v10 = atan2(*(&v39 + 1), *&v39);
    *(a2 + 1504) = v10;
    v11 = v30 * v26 + v29 * v25;
    *(a2 + 1512) = v11;
    v12 = (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v13 = v11 < 0.0 && ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v11 >= 0.0)
    {
      v12 = 0;
    }

    v14 = (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v12;
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v14 = 1;
    }

    if (((v14 | v13) & 1) == 0)
    {
      *(a2 + 1288) = v10;
      v15 = sqrt(v11);
      *(a2 + 1296) = v15;
      if (v15 <= 3.14159265)
      {
        *(a2 + 1496) = 1;
        *(a2 + 1520) |= 2u;
      }

      else
      {
        __asm { FMOV            V0.2D, #-1.0 }

        *(a2 + 1288) = _Q0;
      }
    }
  }
}

void sub_245B57584(uint64_t a1, double a2, double a3, int8x16_t a4)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 1528) = _Q0;
  LOBYTE(v55) = 1;
  v24 = vdupq_n_s64(3uLL);
  v56 = v24;
  v57 = xmmword_245B5F4F0;
  v58 = a1 + 784;
  v59 = a1 + 904;
  v50 = 0;
  v51 = &unk_2858B66C8;
  v53 = 0x3FF0000000000000;
  v54 = 0;
  v52 = xmmword_245B61A70;
  *&_Q0 = *(a1 + 672);
  v47[1] = &unk_2858B66C8;
  v48 = *(a1 + 656);
  v49 = _Q0;
  sub_245B48F00((a1 + 600), a1 + 688, &v51, v45, _Q0, a4);
  sub_245B5A7B8(v39, v45, &v55);
  LOBYTE(v25) = 0;
  v26 = v24;
  v27 = xmmword_245B5F4B0;
  v28 = &v46;
  v29 = v47;
  sub_245B5AEC4(v40, v39, &v25);
  v43 = &unk_2858B6880;
  memset(v44, 0, sizeof(v44));
  v10 = v41;
  v11 = v42;
  if (v41 != v42)
  {
    v12 = v44;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
    }

    while (v10 != v11);
  }

  sub_245B4B1D0(v40);
  sub_245B4B1D0(v39);
  v14 = *(&v48 + 1) * *(&v48 + 1) + *&v48 * *&v48;
  if (sqrt(v14) != 0.0)
  {
    v36[2] = &unk_2858B7C68;
    v37[0] = -*(&v48 + 1) / v14;
    v37[1] = *&v48 / v14;
    v38 = 0;
    LOBYTE(v30) = 0;
    v31 = xmmword_245B61A40;
    v32 = vdupq_n_s64(1uLL);
    v33 = v37;
    v34 = &v38;
    memset(v39, 0, 72);
    sub_245B4C2B8(v39, &v30);
    sub_245B4C0A4(&v25, 2, 1);
    cblas_dgemv_NEWLAPACK();
    sub_245B4C0A4(v40, v39[0], v26.i64[0]);
    if (v39[0] && v39[1] && v26.i64[0])
    {
      if (v26.i64[0] == 1)
      {
        cblas_dgemv_NEWLAPACK();
      }

      else
      {
        cblas_dgemm_NEWLAPACK();
      }
    }

    v36[0] = 0;
    v36[1] = 0;
    v35 = &unk_2858B78F8;
    v15 = v41;
    v16 = v42;
    if (v41 != v42)
    {
      v17 = v36;
      do
      {
        v18 = *v15++;
        *v17++ = v18;
      }

      while (v15 != v16);
    }

    sub_245B4B1D0(v40);
    sub_245B4B1D0(&v25);
    sub_245B4B1D0(v39);
    v19 = *v36;
    v20 = (v36[0] & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v21 = v36[0] < 0 && ((v36[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v36[0] >= 0)
    {
      v20 = 0;
    }

    v22 = (v36[0] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v20;
    if ((v36[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v22 = 1;
    }

    if (((v22 | v21) & 1) == 0)
    {
      *(a1 + 1528) = atan2(*(&v48 + 1), *&v48);
      v23 = sqrt(v19);
      *(a1 + 1536) = v23;
      *(a1 + 1524) = v23 <= 3.14159265;
    }
  }
}

void sub_245B57984(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8296))
  {
    goto LABEL_66;
  }

  v3 = *(a1 + 6760);
  if ((0x13A524387AC82261 * ((v3 - *(a1 + 6752)) >> 3)) < 2)
  {
    goto LABEL_66;
  }

  if (*(a2 + 160))
  {
    sub_245B4BBD4(v67, v3 - 2176);
    v5 = *(a2 + 16) - *&v67[16];
    *v67 = *a2;
    *&v67[8] = *(a2 + 8);
    *&v67[24] = *(a2 + 24);
    LOBYTE(v83) = 0;
    v6 = *(a2 + 144);
    v7 = *(a2 + 152);
    if (v7 > 0.0 && v6 < 0.5)
    {
      __B = v7 * (v5 * (v5 * 0.5) * v7);
      buf[0] = 1;
      *&buf[8] = xmmword_245B61A10;
      v63 = xmmword_245B61A20;
      *&v64 = v80;
      *(&v64 + 1) = v81 + 8;
      sub_245B5C3D4(buf, &__B);
      *&v72 = sqrt(*v80 + *v81);
      v19 = *(a2 + 144);
      v73 = *(a2 + 128);
      v74 = v19;
      goto LABEL_16;
    }

    v9 = *(a2 + 136);
    if (v9 <= 0.0)
    {
      if (*(&v73 + 1) > 0.0)
      {
        if (v7 > 0.0)
        {
          v9 = *(&v73 + 1);
          v10 = *&v73;
          goto LABEL_33;
        }

        if (*(&v74 + 1) > 0.0)
        {
          v10 = *&v73;
          v6 = *&v74;
          v9 = *(&v73 + 1);
          v7 = *(&v74 + 1);
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (v7 > 0.0)
      {
        v10 = *(a2 + 128);
LABEL_33:
        sub_245B58FB0(v67, v10, v9, v6, v7, v5);
LABEL_35:
        v35 = hypot(*&v72, *(&v72 + 1));
        v36 = hypot(*(a2 + 112), *(a2 + 120));
        v37 = v35 + v36;
        v38 = (COERCE__INT64(fabs(v35 + v36)) - 0x10000000000000) >> 53;
        if ((COERCE__INT64(v35 + v36) <= -1 || v38 >= 0x3FF) && (COERCE__INT64(v35 + v36) - 1) >= 0xFFFFFFFFFFFFFLL)
        {
          if (qword_27EE33DE8 != -1)
          {
            dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
          }

          v56 = qword_27EE33DF0;
          if (!os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          v57 = *(a2 + 16);
          *buf = 134349568;
          *&buf[4] = v57;
          *&buf[12] = 2050;
          *&buf[14] = v35;
          *&buf[22] = 2050;
          *&v63 = v36;
          v14 = "CLVLF,filterUnfusedLocation,Invalid horzAcc,machAbsTime,%{public}.3lf,prevHorzAcc,%{public}.3lf,currHorzAcc,%{public}.3lf";
          v15 = buf;
          v16 = v56;
          v17 = OS_LOG_TYPE_ERROR;
LABEL_64:
          v18 = 32;
          goto LABEL_65;
        }

        *buf = &unk_2858B66C8;
        *&buf[8] = v78;
        v63 = v79;
        v41 = 8;
        v42 = v36 / v37;
        do
        {
          *&buf[v41] = v42 * *&buf[v41];
          v41 += 8;
        }

        while (v41 != 32);
        __B = COERCE_DOUBLE(&unk_2858B66C8);
        v43 = *(a2 + 232);
        v60 = *(a2 + 216);
        v61 = v43;
        v44 = 8;
        v45 = v35 / v37;
        do
        {
          *(&__B + v44) = v45 * *(&__B + v44);
          v44 += 8;
        }

        while (v44 != 32);
        for (i = 8; i != 32; i += 8)
        {
          *&buf[i] = *&buf[i] + *(&__B + i);
        }

        v47 = 0;
        v78 = *&buf[8];
        v79 = v63;
        v48 = v42 * v42;
        do
        {
          *(v80 + v47) = v48 * *(v80 + v47);
          v47 += 8;
        }

        while (v47 != 72);
        v49 = *(a2 + 256);
        v63 = *(a2 + 272);
        v50 = *(a2 + 304);
        v64 = *(a2 + 288);
        v65 = v50;
        v66 = *(a2 + 320);
        v51 = v45 * v45;
        *buf = &unk_2858B6880;
        *&buf[8] = v49;
        for (j = 8; j != 80; j += 8)
        {
          *&buf[j] = v51 * *&buf[j];
        }

        for (k = 0; k != 72; k += 8)
        {
          *(v80 + k) = *(v80 + k) + *&buf[k + 8];
        }

        *&v72 = sqrt(*v80 + *v81);
        *(&v72 + 1) = sqrt(*&v82);
        if (cnnavigation::ENUToECEF() || cnnavigation::ECEFToLLA())
        {
          if (qword_27EE33DE8 != -1)
          {
            dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
          }

          v54 = qword_27EE33DF0;
          if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
          {
            v55 = *(a2 + 16);
            *buf = 134349056;
            *&buf[4] = v55;
            v14 = "CLVLF,filterUnfusedLocation,Propagated LLA invalid,machAbsTime,%{public}.3lf";
            v15 = buf;
            v16 = v54;
            v17 = OS_LOG_TYPE_ERROR;
            v18 = 12;
            goto LABEL_65;
          }

          goto LABEL_66;
        }

LABEL_16:
        v20 = *&v67[16];
        *(a1 + 7936) = *v67;
        *(a1 + 7952) = v20;
        v21 = v69;
        *(a1 + 7976) = v68;
        *(a1 + 7992) = v21;
        v22 = v71;
        *(a1 + 8016) = v70;
        *(a1 + 8032) = v22;
        v23 = v73;
        *(a1 + 8080) = v74;
        v24 = v72;
        *(a1 + 8064) = v23;
        *(a1 + 8048) = v24;
        v25 = v76;
        *(a1 + 8128) = v77;
        *(a1 + 8112) = v25;
        v26 = v79;
        *(a1 + 8152) = v78;
        *(a1 + 8168) = v26;
        v27 = v80[1];
        *(a1 + 0x2000) = v80[0];
        v28 = v81[1];
        *(a1 + 8256) = v82;
        v29 = v81[0];
        *(a1 + 8240) = v28;
        *(a1 + 8224) = v29;
        *(a1 + 8096) = v75;
        *(a1 + 8208) = v27;
        v30 = v83;
        *(a1 + 8288) = v84;
        *(a1 + 8272) = v30;
        *(a1 + 8296) = 5;
        if (qword_27EE33DE8 != -1)
        {
          dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
        }

        v31 = qword_27EE33DF0;
        if (!os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_66;
        }

        v32 = *(a2 + 16);
        v33 = 1.57079633 - *(a1 + 8064);
        if (v33 < 0.0 || v33 >= 6.28318531)
        {
          v33 = fmod(v33, 6.28318531);
          if (v33 < 0.0 || v33 == 0.0 && (*&v33 & 0x8000000000000000) == 0)
          {
            v33 = v33 + 6.28318531;
          }
        }

        v34 = *(a1 + 8080);
        *buf = 134349568;
        *&buf[4] = v32;
        *&buf[12] = 2050;
        *&buf[14] = v33 * 57.2957795;
        *&buf[22] = 2050;
        *&v63 = v34;
        v14 = "CLVLF,filterUnfusedLocation,Location propagated,machAbsTime,%{public}.3lf,course,%{public}.3lf,speed,%{public}.3lf";
        v15 = buf;
        v16 = v31;
        v17 = OS_LOG_TYPE_DEBUG;
        goto LABEL_64;
      }

      if (*(&v74 + 1) > 0.0)
      {
        v10 = *(a2 + 128);
        v7 = *(&v74 + 1);
        v6 = *&v74;
        goto LABEL_33;
      }
    }

    *&v73 = *(a2 + 128);
    *(&v73 + 1) = v9;
    *&v74 = v6;
    *(&v74 + 1) = v7;
    goto LABEL_35;
  }

  if (qword_27EE33DE8 != -1)
  {
    dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
  }

  v11 = qword_27EE33DF0;
  if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a2 + 16);
    v13 = *(a2 + 160);
    *v67 = 134349312;
    *&v67[4] = v12;
    *&v67[12] = 1026;
    *&v67[14] = v13;
    v14 = "CLVLF,filterUnfusedLocation,Invalid LocData,machAbsTime,%{public}.3lf,currLocIsEnuValid,%{public}d";
    v15 = v67;
    v16 = v11;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 18;
LABEL_65:
    _os_log_impl(&dword_245B46000, v16, v17, v14, v15, v18);
  }

LABEL_66:
  v58 = *MEMORY[0x277D85DE8];
}

void sub_245B580CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_245B46F20(a1);
}

void sub_245B580D8(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8296) & 2) != 0)
  {
    v3 = *(a1 + 6752);
    if (v3 != *(a1 + 6760))
    {
      if (*(v3 + 1904) | *a2)
      {
        sub_245B4BBD4(v28, a1 + 7936);
        if (sub_245B56574(v3 + 1160, v28, v28))
        {
          v5 = v29;
          v6 = *(a1 + 8064);
          v7 = vabdd_f64(v29, v6);
          if (6.28318531 - v7 >= v7)
          {
            v8 = v7;
          }

          else
          {
            v8 = 6.28318531 - v7;
          }

          v9 = *(a1 + 8072);
          v10 = v9 * 1.5;
          if (v9 * 1.5 > 3.14159265)
          {
            v10 = 3.14159265;
          }

          if (v8 > v10)
          {
            v11 = v30;
            v12 = sqrt(v30);
            v13 = v9 + v12;
            v14 = (COERCE__INT64(fabs(v9 + v12)) - 0x10000000000000) >> 53;
            if ((COERCE__INT64(v9 + v12) <= -1 || v14 >= 0x3FF) && (COERCE__INT64(v9 + v12) - 1) >= 0xFFFFFFFFFFFFFLL)
            {
              if (qword_27EE33DE8 != -1)
              {
                dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
              }

              v25 = qword_27EE33DF0;
              if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
              {
                v26 = *(a2 + 40);
                *buf = 134349568;
                v32 = v26;
                v33 = 2050;
                v34 = v9;
                v35 = 2050;
                v36 = v12;
                v21 = "CLVLF,filterFusedCourse,Invalid courseAcc,machAbsTime,%{public}.3lf,prevCourseAcc,%{public}.3lf,currCourseAcc,%{public}.3lf";
                v22 = v25;
                v23 = OS_LOG_TYPE_ERROR;
                v24 = 32;
                goto LABEL_26;
              }
            }

            else
            {
              v17 = v12 / v13;
              v18 = v9 / v13;
              *(a1 + 8064) = v29 * v18 + v17 * v6;
              *(a1 + 8272) = v28[336];
              *(a1 + 8072) = sqrt(v11 * (v18 * v18) + v9 * (v17 * v17) * v9);
              *(a1 + 8280) = v5;
              *(a1 + 8288) = v11;
              if (qword_27EE33DE8 != -1)
              {
                dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
              }

              v19 = qword_27EE33DF0;
              if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
              {
                v20 = *(a2 + 40);
                *buf = 134349312;
                v32 = v20;
                v33 = 2050;
                v34 = v8 * 57.2957795;
                v21 = "CLVLF,filterFusedCourse,Course adjusted,machAbsTime,%{public}.3lf,courseDiff,%{public}.3lf";
                v22 = v19;
                v23 = OS_LOG_TYPE_DEBUG;
                v24 = 22;
LABEL_26:
                _os_log_impl(&dword_245B46000, v22, v23, v21, buf, v24);
              }
            }
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245B5837C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
  v8 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v8;
  *(a1 + 120) = v7;
  *(a1 + 104) = v6;
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v11 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v11;
  memcpy((a1 + 248), (a2 + 248), 0x128uLL);
  *(a1 + 544) = *(a2 + 544);
  v13 = *(a2 + 560);
  v12 = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 560) = v13;
  *(a1 + 576) = v12;
  v15 = *(a2 + 624);
  v14 = *(a2 + 640);
  v16 = *(a2 + 672);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = v16;
  *(a1 + 624) = v15;
  *(a1 + 640) = v14;
  *(a1 + 608) = *(a2 + 608);
  v17 = *(a2 + 696);
  v18 = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 696) = v17;
  *(a1 + 712) = v18;
  v19 = *(a2 + 760);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 760) = v19;
  memcpy((a1 + 784), (a2 + 784), 0x128uLL);
  v20 = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1088) = v20;
  v21 = *(a2 + 1144);
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1144) = v21;
  v22 = *(a2 + 1176);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1176) = v22;
  v23 = *(a2 + 1216);
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1216) = v23;
  v24 = *(a2 + 1256);
  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1256) = v24;
  v25 = *(a2 + 1320);
  v27 = *(a2 + 1288);
  v26 = *(a2 + 1304);
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1288) = v27;
  *(a1 + 1304) = v26;
  *(a1 + 1320) = v25;
  v28 = *(a2 + 1352);
  *(a1 + 1336) = *(a2 + 1336);
  *(a1 + 1352) = v28;
  v29 = *(a2 + 1392);
  *(a1 + 1376) = *(a2 + 1376);
  *(a1 + 1392) = v29;
  *(a1 + 1416) = *(a2 + 1416);
  v30 = *(a2 + 1480);
  v32 = *(a2 + 1432);
  v31 = *(a2 + 1448);
  *(a1 + 1464) = *(a2 + 1464);
  *(a1 + 1480) = v30;
  *(a1 + 1432) = v32;
  *(a1 + 1448) = v31;
  v33 = *(a2 + 1496);
  *(a1 + 1512) = *(a2 + 1512);
  *(a1 + 1496) = v33;
  v34 = *(a2 + 1536);
  *(a1 + 1520) = *(a2 + 1520);
  *(a1 + 1536) = v34;
  v35 = *(a2 + 1560);
  *(a1 + 1544) = *(a2 + 1544);
  *(a1 + 1560) = v35;
  v36 = *(a2 + 1600);
  *(a1 + 1584) = *(a2 + 1584);
  *(a1 + 1600) = v36;
  v37 = *(a2 + 1640);
  *(a1 + 1624) = *(a2 + 1624);
  *(a1 + 1640) = v37;
  v39 = *(a2 + 1672);
  v38 = *(a2 + 1688);
  v40 = *(a2 + 1656);
  *(a1 + 1704) = *(a2 + 1704);
  *(a1 + 1672) = v39;
  *(a1 + 1688) = v38;
  *(a1 + 1656) = v40;
  v41 = *(a2 + 1736);
  *(a1 + 1720) = *(a2 + 1720);
  *(a1 + 1736) = v41;
  v42 = *(a2 + 1776);
  *(a1 + 1760) = *(a2 + 1760);
  *(a1 + 1776) = v42;
  *(a1 + 1800) = *(a2 + 1800);
  v43 = *(a2 + 1864);
  v45 = *(a2 + 1816);
  v44 = *(a2 + 1832);
  *(a1 + 1848) = *(a2 + 1848);
  *(a1 + 1864) = v43;
  *(a1 + 1816) = v45;
  *(a1 + 1832) = v44;
  v46 = *(a2 + 1880);
  *(a1 + 1896) = *(a2 + 1896);
  *(a1 + 1880) = v46;
  v47 = *(a2 + 1920);
  v48 = *(a2 + 1936);
  v49 = *(a2 + 1952);
  *(a1 + 1904) = *(a2 + 1904);
  *(a1 + 1952) = v49;
  *(a1 + 1936) = v48;
  *(a1 + 1920) = v47;
  *(a1 + 1960) = *(a2 + 1960);
  v51 = *(a2 + 1976);
  v50 = *(a2 + 1992);
  *(a1 + 2008) = *(a2 + 2008);
  *(a1 + 1976) = v51;
  *(a1 + 1992) = v50;
  v53 = *(a2 + 2040);
  v52 = *(a2 + 2056);
  v54 = *(a2 + 2088);
  *(a1 + 2072) = *(a2 + 2072);
  *(a1 + 2088) = v54;
  *(a1 + 2040) = v53;
  *(a1 + 2056) = v52;
  *(a1 + 2024) = *(a2 + 2024);
  v55 = *(a2 + 2112);
  v56 = *(a2 + 2128);
  *(a1 + 2144) = *(a2 + 2144);
  *(a1 + 2128) = v56;
  *(a1 + 2112) = v55;
  v57 = *(a2 + 2160);
  *(a1 + 2176) = *(a2 + 2176);
  *(a1 + 2160) = v57;
  memcpy((a1 + 2200), (a2 + 2200), 0x129uLL);
  v58 = *(a2 + 2528);
  v59 = *(a2 + 2512);
  *(a1 + 2544) = *(a2 + 2544);
  *(a1 + 2512) = v59;
  *(a1 + 2528) = v58;
  v60 = *(a2 + 2592);
  v61 = *(a2 + 2608);
  v62 = *(a2 + 2576);
  *(a1 + 2624) = *(a2 + 2624);
  *(a1 + 2576) = v62;
  *(a1 + 2608) = v61;
  *(a1 + 2592) = v60;
  *(a1 + 2560) = *(a2 + 2560);
  v63 = *(a2 + 2648);
  v64 = *(a2 + 2664);
  *(a1 + 2680) = *(a2 + 2680);
  *(a1 + 2648) = v63;
  *(a1 + 2664) = v64;
  v65 = *(a2 + 2712);
  *(a1 + 2696) = *(a2 + 2696);
  *(a1 + 2712) = v65;
  memcpy((a1 + 2736), (a2 + 2736), 0x128uLL);
  v66 = *(a2 + 3040);
  *(a1 + 3056) = *(a2 + 3056);
  *(a1 + 3040) = v66;
  *(a1 + 3080) = *(a2 + 3080);
  v67 = *(a2 + 3144);
  v69 = *(a2 + 3096);
  v68 = *(a2 + 3112);
  *(a1 + 3128) = *(a2 + 3128);
  *(a1 + 3144) = v67;
  *(a1 + 3096) = v69;
  *(a1 + 3112) = v68;
  *(a1 + 3160) = *(a2 + 3160);
  v70 = *(a2 + 3192);
  *(a1 + 3176) = *(a2 + 3176);
  *(a1 + 3192) = v70;
  *(a1 + 3216) = *(a2 + 3216);
  v71 = *(a2 + 3248);
  v72 = *(a2 + 3264);
  v73 = *(a2 + 3280);
  *(a1 + 3232) = *(a2 + 3232);
  *(a1 + 3280) = v73;
  *(a1 + 3264) = v72;
  *(a1 + 3248) = v71;
  v74 = *(a2 + 3296);
  v75 = *(a2 + 3312);
  *(a1 + 3328) = *(a2 + 3328);
  *(a1 + 3312) = v75;
  *(a1 + 3296) = v74;
  return a1;
}

void sub_245B587A4(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0x13A524387AC82261 * ((v3 - *a1) >> 3);
    if ((v6 + 1) > 0x13A524387AC822)
    {
      sub_245B4C1A4();
    }

    v7 = 0x13A524387AC82261 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x9D2921C3D6411)
    {
      v9 = 0x13A524387AC822;
    }

    else
    {
      v9 = v8;
    }

    __p[4] = a1;
    if (v9)
    {
      if (v9 <= 0x13A524387AC822)
      {
        operator new();
      }

      sub_245B4C204();
    }

    __p[0] = 0;
    __p[1] = (3336 * v6);
    __p[3] = 0;
    sub_245B5BE44(3336 * v6, a2);
    __p[2] = (3336 * v6 + 3336);
    sub_245B5B89C(a1, __p);
    v5 = a1[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = sub_245B5BE44(v3, a2) + 3336;
  }

  a1[1] = v5;
}

BOOL sub_245B588E8(uint64_t a1)
{
  v2 = 0;
  v24 = *MEMORY[0x277D85DE8];
  do
  {
    if ((*(a1 + 6936 + v2) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_27:
      result = 0;
      goto LABEL_28;
    }

    v2 += 8;
  }

  while (v2 != 32);
  for (i = 0; i != 24; i += 8)
  {
    if ((*(a1 + 6984 + i) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_27;
    }
  }

  v4 = 0;
  v5 = a1 + 7024;
  do
  {
    if ((*(v5 + v4) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_27;
    }

    v4 += 8;
  }

  while (v4 != 288);
  for (j = 0; j != 336; j += 56)
  {
    if (*(v5 + j) <= 0.0)
    {
      goto LABEL_27;
    }
  }

  v7 = *(a1 + 6752);
  v8 = *(a1 + 6760);
  v9 = *(a1 + 6752);
  if (v9 == v8)
  {
    goto LABEL_29;
  }

  LOBYTE(v10) = 1;
  v11 = 1;
  do
  {
    v11 &= (*(v9 + 1520) & 3) == 0;
    v10 &= (*(v9 + 1520) & 4u) >> 2;
    v9 += 3336;
  }

  while (v9 != v8);
  if (v11)
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
    }

    v12 = qword_27EE33DF0;
    result = os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v14 = 0x13A524387AC82261 * ((*(a1 + 6760) - *(a1 + 6752)) >> 3);
      v15 = *(a1 + 7952);
      v20 = 134218240;
      v21 = v14;
      v22 = 2050;
      v23 = v15;
      v16 = "CLVLF,checkStateHealth,Location not fused consecutively for last %zu epochs,machAbsTime,%{public}.3lf";
LABEL_26:
      _os_log_impl(&dword_245B46000, v12, OS_LOG_TYPE_DEBUG, v16, &v20, 0x16u);
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (!v10)
  {
LABEL_29:
    result = 1;
    goto LABEL_28;
  }

  if (qword_27EE33DE8 != -1)
  {
    dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
  }

  v12 = qword_27EE33DF0;
  result = os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v17 = 0x13A524387AC82261 * ((*(a1 + 6760) - *(a1 + 6752)) >> 3);
    v18 = *(a1 + 7952);
    v20 = 134218240;
    v21 = v17;
    v22 = 2050;
    v23 = v18;
    v16 = "CLVLF,checkStateHealth,Location propagated consecutively for last %zu epochs,machAbsTime,%{public}.3lf";
    goto LABEL_26;
  }

LABEL_28:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_245B58B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  *(a3 + 176) = *(a2 + 8);
  *(a3 + 192) = v3;
  *(a3 + 160) = 0;
  if (*(a3 + 112) <= 0.0)
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
    }

    v10 = qword_27EE33DF0;
    result = os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v14 = 0;
      v11 = "CLVLF,computeEnuFromEcef,latitude/longitude unavailable";
      v12 = &v14;
LABEL_15:
      _os_log_impl(&dword_245B46000, v10, OS_LOG_TYPE_DEBUG, v11, v12, 2u);
      return 0;
    }
  }

  else
  {
    if (*(a3 + 120) > 0.0)
    {
      v5 = cnnavigation::ECEFToENU();
      *(a3 + 160) = v5 == 0;
      if (!v5)
      {
        v6 = *(a3 + 120);
        v7 = *(a3 + 112) * (*(a3 + 112) * 0.5);
        *(a3 + 288) = v7;
        *(a3 + 256) = v7;
        v8 = v6 * v6;
        if (v6 < 0.0)
        {
          v8 = 0.0;
        }

        *(a3 + 320) = v8;
        return 1;
      }

      return 0;
    }

    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
    }

    v10 = qword_27EE33DF0;
    result = os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v13 = 0;
      v11 = "CLVLF,computeEnuFromEcef,altitude unavailable";
      v12 = &v13;
      goto LABEL_15;
    }
  }

  return result;
}

BOOL sub_245B58CEC(uint64_t a1)
{
  if (*(a1 + 1784))
  {
    v2 = *(a1 + 152);
    if (*(a1 + 1616) == 1 && v2 > 0.0)
    {
      v3 = hypot(*(a1 + 1632), *(a1 + 1640)) / *(a1 + 1752) < 0.4;
      return *(a1 + 144) < 0.5 && v3;
    }
  }

  else
  {
    v2 = *(a1 + 152);
  }

  return v2 > 0.0 && *(a1 + 144) < 0.5;
}

uint64_t sub_245B58D88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = v7;
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  v11 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v11;
  *(a1 + 256) = *(a2 + 256);
  v12 = *(a2 + 272);
  v13 = *(a2 + 288);
  v14 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v14;
  *(a1 + 272) = v12;
  *(a1 + 288) = v13;
  v15 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 336) = v15;
  v16 = *(a2 + 360);
  v17 = *(a2 + 376);
  v18 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 376) = v17;
  *(a1 + 392) = v18;
  *(a1 + 360) = v16;
  *(a1 + 416) = *(a2 + 416);
  v19 = *(a2 + 432);
  v20 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 432) = v19;
  *(a1 + 448) = v20;
  v21 = *(a2 + 544);
  v23 = *(a2 + 496);
  v22 = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v21;
  *(a1 + 496) = v23;
  *(a1 + 512) = v22;
  *(a1 + 480) = *(a2 + 480);
  v24 = *(a2 + 568);
  v25 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 568) = v24;
  *(a1 + 584) = v25;
  v26 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v26;
  memcpy((a1 + 656), (a2 + 656), 0x128uLL);
  *(a1 + 952) = *(a2 + 952);
  v28 = *(a2 + 968);
  v27 = *(a2 + 984);
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 968) = v28;
  *(a1 + 984) = v27;
  v30 = *(a2 + 1032);
  v29 = *(a2 + 1048);
  v31 = *(a2 + 1080);
  *(a1 + 1064) = *(a2 + 1064);
  *(a1 + 1080) = v31;
  *(a1 + 1032) = v30;
  *(a1 + 1048) = v29;
  *(a1 + 1016) = *(a2 + 1016);
  v32 = *(a2 + 1104);
  v33 = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1120) = v33;
  *(a1 + 1104) = v32;
  v34 = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a1 + 1152) = v34;
  memcpy((a1 + 1192), (a2 + 1192), 0x128uLL);
  v35 = *(a2 + 1512);
  *(a1 + 1496) = *(a2 + 1496);
  *(a1 + 1512) = v35;
  *(a1 + 1536) = *(a2 + 1536);
  v36 = *(a2 + 1568);
  v37 = *(a2 + 1584);
  v38 = *(a2 + 1600);
  *(a1 + 1552) = *(a2 + 1552);
  *(a1 + 1600) = v38;
  *(a1 + 1584) = v37;
  *(a1 + 1568) = v36;
  *(a1 + 1616) = *(a2 + 1616);
  v39 = *(a2 + 1632);
  *(a1 + 1648) = *(a2 + 1648);
  *(a1 + 1632) = v39;
  *(a1 + 1672) = *(a2 + 1672);
  v40 = *(a2 + 1736);
  v42 = *(a2 + 1688);
  v41 = *(a2 + 1704);
  *(a1 + 1720) = *(a2 + 1720);
  *(a1 + 1736) = v40;
  *(a1 + 1688) = v42;
  *(a1 + 1704) = v41;
  v43 = *(a2 + 1752);
  v44 = *(a2 + 1768);
  *(a1 + 1784) = *(a2 + 1784);
  *(a1 + 1752) = v43;
  *(a1 + 1768) = v44;
  return a1;
}

double *sub_245B58FB0(double *result, double a2, double a3, double a4, double a5, double a6)
{
  if (a5 >= 0.0 && a3 >= 0.0)
  {
    v7 = result;
    if (result[20])
    {
      v12 = __sincos_stret(a2);
      v13 = v12.__sinval * a6 * a4 + v7[28];
      v7[27] = v12.__cosval * a6 * a4 + v7[27];
      v7[28] = v13;
      v18[15] = &unk_2858B7AB0;
      *&v18[16] = -(v12.__sinval * a6 * a4);
      *&v18[17] = v12.__cosval * a6 * a4;
      *&v18[18] = v12.__cosval * a6;
      *&v18[19] = v12.__sinval * a6;
      v18[20] = 0;
      *&v18[10] = a3 * a3;
      v18[9] = &unk_2858B7AB0;
      v18[11] = 0;
      v18[12] = 0;
      *&v18[13] = a5 * a5;
      v18[14] = 0;
      sub_245B4C0A4(v18, 2, 2);
      cblas_dgemm_NEWLAPACK();
      v14 = v7 + 32;
      v15 = v18[3];
      v16 = 8 * v18[2];
      v17 = 2;
      do
      {
        vDSP_vaddD(v14, 1, v15, 1, v14, 1, 2uLL);
        v14 += 3;
        v15 = (v15 + v16);
        --v17;
      }

      while (v17);
      result = sub_245B4B1D0(v18);
      v7[14] = sqrt(v7[32] + v7[36]);
      v7[16] = a2;
      v7[17] = a3;
      v7[18] = a4;
      v7[19] = a5;
    }
  }

  return result;
}

void sub_245B591CC(uint64_t a1, double a2)
{
  v4 = atomic_exchange_explicit((a1 + 1), 1u, memory_order_acquire);
  if ((v4 & 1) == 0)
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
    }

    v5 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      *v39 = 0;
      _os_log_impl(&dword_245B46000, v5, OS_LOG_TYPE_ERROR, "CLVLF,removeAllVioDataLessThanMachAbsoluteTime,Called without locking vision buffers", v39, 2u);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  for (i = *(a1 + 8); i != v7; i += 1432)
  {
    if (*(i + 40) < a2)
    {
      if (i != v7)
      {
        v9 = i + 1432;
        if ((i + 1432) != v7)
        {
          do
          {
            if (*(v9 + 40) >= a2)
            {
              v10 = *v9;
              v11 = *(v9 + 16);
              v12 = *(v9 + 32);
              *(i + 48) = *(v9 + 48);
              *(i + 16) = v11;
              *(i + 32) = v12;
              *i = v10;
              *(i + 56) = *(v9 + 56);
              v13 = *(v9 + 72);
              v14 = *(v9 + 88);
              *(i + 104) = *(v9 + 104);
              *(i + 88) = v14;
              *(i + 72) = v13;
              v15 = *(v9 + 152);
              v16 = *(v9 + 168);
              v17 = *(v9 + 184);
              *(i + 136) = *(v9 + 136);
              *(i + 184) = v17;
              *(i + 168) = v16;
              *(i + 152) = v15;
              *(i + 120) = *(v9 + 120);
              v18 = *(v9 + 208);
              v19 = *(v9 + 224);
              *(i + 240) = *(v9 + 240);
              *(i + 208) = v18;
              *(i + 224) = v19;
              v20 = *(v9 + 272);
              *(i + 256) = *(v9 + 256);
              *(i + 272) = v20;
              memcpy((i + 296), (v9 + 296), 0x129uLL);
              v22 = *(v9 + 608);
              v21 = *(v9 + 624);
              *(i + 640) = *(v9 + 640);
              *(i + 608) = v22;
              *(i + 624) = v21;
              v24 = *(v9 + 672);
              v23 = *(v9 + 688);
              v25 = *(v9 + 720);
              *(i + 704) = *(v9 + 704);
              *(i + 720) = v25;
              *(i + 672) = v24;
              *(i + 688) = v23;
              *(i + 656) = *(v9 + 656);
              v26 = *(v9 + 744);
              v27 = *(v9 + 760);
              *(i + 776) = *(v9 + 776);
              *(i + 744) = v26;
              *(i + 760) = v27;
              v28 = *(v9 + 808);
              *(i + 792) = *(v9 + 792);
              *(i + 808) = v28;
              memcpy((i + 832), (v9 + 832), 0x128uLL);
              v29 = *(v9 + 1136);
              *(i + 1152) = *(v9 + 1152);
              *(i + 1136) = v29;
              *(i + 1176) = *(v9 + 1176);
              v30 = *(v9 + 1240);
              v32 = *(v9 + 1192);
              v31 = *(v9 + 1208);
              *(i + 1224) = *(v9 + 1224);
              *(i + 1240) = v30;
              *(i + 1192) = v32;
              *(i + 1208) = v31;
              *(i + 1256) = *(v9 + 1256);
              v33 = *(v9 + 1288);
              *(i + 1272) = *(v9 + 1272);
              *(i + 1288) = v33;
              *(i + 1312) = *(v9 + 1312);
              v34 = *(v9 + 1344);
              v35 = *(v9 + 1360);
              v36 = *(v9 + 1376);
              *(i + 1328) = *(v9 + 1328);
              *(i + 1376) = v36;
              *(i + 1360) = v35;
              *(i + 1344) = v34;
              v37 = *(v9 + 1392);
              v38 = *(v9 + 1408);
              *(i + 1424) = *(v9 + 1424);
              *(i + 1408) = v38;
              *(i + 1392) = v37;
              i += 1432;
            }

            v9 += 1432;
          }

          while (v9 != v7);
          v7 = *(a1 + 16);
        }
      }

      if (i != v7)
      {
        *(a1 + 16) = sub_245B5C078(v7, v7, i);
      }

      break;
    }
  }

  if ((v4 & 1) == 0)
  {
    atomic_store(0, (a1 + 1));
  }
}

uint64_t sub_245B59484(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      v8 = sub_245B5BAEC(v7, v4);
      v4 = (v4 + 3160);
      v7 = v8 + 3160;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_245B594E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      v8 = sub_245B58D88(v7, v4);
      v4 += 1792;
      v7 = v8 + 1792;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_245B5954C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
  v8 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v8;
  *(a1 + 120) = v7;
  *(a1 + 104) = v6;
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v11 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v11;
  memcpy((a1 + 248), (a2 + 248), 0x128uLL);
  *(a1 + 544) = *(a2 + 544);
  v13 = *(a2 + 560);
  v12 = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 560) = v13;
  *(a1 + 576) = v12;
  v15 = *(a2 + 624);
  v14 = *(a2 + 640);
  v16 = *(a2 + 672);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = v16;
  *(a1 + 624) = v15;
  *(a1 + 640) = v14;
  *(a1 + 608) = *(a2 + 608);
  v17 = *(a2 + 696);
  v18 = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 696) = v17;
  *(a1 + 712) = v18;
  v19 = *(a2 + 760);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 760) = v19;
  memcpy((a1 + 784), (a2 + 784), 0x128uLL);
  v20 = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1088) = v20;
  v21 = *(a2 + 1144);
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1144) = v21;
  v22 = *(a2 + 1176);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1176) = v22;
  v23 = *(a2 + 1216);
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1216) = v23;
  v24 = *(a2 + 1256);
  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1256) = v24;
  v25 = *(a2 + 1320);
  v27 = *(a2 + 1288);
  v26 = *(a2 + 1304);
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1288) = v27;
  *(a1 + 1304) = v26;
  *(a1 + 1320) = v25;
  v28 = *(a2 + 1352);
  *(a1 + 1336) = *(a2 + 1336);
  *(a1 + 1352) = v28;
  v29 = *(a2 + 1392);
  *(a1 + 1376) = *(a2 + 1376);
  *(a1 + 1392) = v29;
  *(a1 + 1416) = *(a2 + 1416);
  v30 = *(a2 + 1480);
  v32 = *(a2 + 1432);
  v31 = *(a2 + 1448);
  *(a1 + 1464) = *(a2 + 1464);
  *(a1 + 1480) = v30;
  *(a1 + 1432) = v32;
  *(a1 + 1448) = v31;
  v33 = *(a2 + 1496);
  *(a1 + 1512) = *(a2 + 1512);
  *(a1 + 1496) = v33;
  v34 = *(a2 + 1536);
  *(a1 + 1520) = *(a2 + 1520);
  *(a1 + 1536) = v34;
  sub_245B58D88(a1 + 1544, a2 + 1544);
  return a1;
}

void sub_245B59738()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v237 = *MEMORY[0x277D85DE8];
  v128 = v0 + 11368;
  v4 = (v0 + 6776);
  while ((atomic_exchange_explicit((v3 + 1), 1u, memory_order_acquire) & 1) != 0)
  {
    sched_yield();
  }

  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  if (v5 != v6)
  {
    while (*(v5 + 3152) == 1 && *(v5 + 1136) >= 0.6827)
    {
      v5 += 3160;
      if (v5 == v6)
      {
        v5 = *(v3 + 40);
        goto LABEL_16;
      }
    }

    if (v5 != v6)
    {
      v7 = v5 + 3160;
      if ((v5 + 3160) != v6)
      {
        do
        {
          if (*(v7 + 3152) == 1 && *(v7 + 1136) >= 0.6827)
          {
            sub_245B5BAEC(v5, v7);
            v5 += 3160;
          }

          v7 += 3160;
        }

        while (v7 != v6);
        v6 = *(v3 + 40);
      }
    }
  }

LABEL_16:
  sub_245B59484(v3 + 32, v5, v6);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  atomic_store(0, (v3 + 1));
  if (v8 == v9)
  {
    goto LABEL_61;
  }

  v127 = v4;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while ((atomic_exchange_explicit((v3 + 1), 1u, memory_order_acquire) & 1) != 0)
        {
          sched_yield();
        }

        v11 = *(v3 + 32);
        v10 = *(v3 + 40);
        if (v11 == v10 || *(v11 + 8) > *(v2 + 8))
        {
          atomic_store(0, (v3 + 1));
          goto LABEL_61;
        }

        sub_245B5BA24(v162, *(v3 + 32));
        sub_245B5B678(v173, (v11 + 1728));
        if (v11 + 3160 == v10)
        {
          v12 = v11;
        }

        else
        {
          do
          {
            v12 = v11 + 3160;
            sub_245B5BAEC(v11, (v11 + 3160));
            v13 = v11 + 6320;
            v11 += 3160;
          }

          while (v13 != v10);
        }

        *(v3 + 40) = v12;
        atomic_store(0, (v3 + 1));
        v159 = &unk_2858B66C8;
        v160 = v164;
        v161 = v165;
        if (sub_245B4A088(v162, &v159))
        {
          break;
        }

        if (qword_27EE33DE8 != -1)
        {
          dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
        }

        v17 = qword_27EE33DF0;
        if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
        {
          *v227 = 134349056;
          *&v227[4] = v163;
          v15 = v17;
          v16 = "CLVLF,initWithFrames,Unable to compute VLF for ENU,machAbsTime,%{public}.3lf";
          goto LABEL_59;
        }
      }

      v158 = 1;
      sub_245B4ADB0(v162, &v158, &v137);
      if (v158 != 1)
      {
        break;
      }

      if (qword_27EE33DE8 != -1)
      {
        dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
      }

      v14 = qword_27EE33DF0;
      if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
      {
        *v227 = 134349056;
        *&v227[4] = v163;
        v15 = v14;
        v16 = "CLVLF,initWithFrames,Unable to convert VLF to LOC,machAbsTime,%{public}.3lf";
        goto LABEL_59;
      }
    }

    LODWORD(v137) = *(v3 + 13272);
    v18 = *(v128 + 2048);
    v144 = *(v128 + 2032);
    v145 = v18;
    if (v166 != 1 || v221 != 1)
    {
      break;
    }

    *v227 = &unk_2858B66C8;
    memset(&v227[8], 0, 32);
    v19 = *&v180;
    if (*&v180 >= 1.0)
    {
      *&v227[16] = 0xBFF921FB54442D18;
      v21 = atan2(-*(&v182 + 1), *&v181);
      v20 = -1.57079633;
    }

    else if (*&v180 <= -1.0)
    {
      *&v227[16] = 0x3FF921FB54442D18;
      v21 = -atan2(-*(&v182 + 1), *&v181);
      v20 = 1.57079633;
    }

    else
    {
      *&v227[8] = atan2(*(&v181 + 1), *&__x);
      v20 = asin(-v19);
      *&v227[16] = v20;
      v21 = atan2(*(&v179 + 1), *&v179);
    }

    *&v227[24] = v21;
    v129 = &unk_2858B66C8;
    v130 = 0u;
    v131 = 0u;
    v22 = v168;
    if (v168 >= 1.0)
    {
      v130.i64[1] = 0xBFF921FB54442D18;
      v24 = atan2(-v171, v169);
      v23 = -1.57079633;
    }

    else if (v168 <= -1.0)
    {
      v130.i64[1] = 0x3FF921FB54442D18;
      v24 = -atan2(-v171, v169);
      v23 = 1.57079633;
    }

    else
    {
      v130.i64[0] = atan2(v170, v172);
      v23 = asin(-v22);
      *&v130.i64[1] = v23;
      v24 = atan2(v167[9], v167[8]);
    }

    *&v131 = v24;
    v25 = vabdd_f64(v20, v23);
    v26 = 6.28318531 - v25 >= v25 ? v25 : 6.28318531 - v25;
    if (v26 <= 0.261799388)
    {
      break;
    }

    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
    }

    v27 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      v222 = 134283777;
      *v223 = v26 * 57.2957795;
      *&v223[8] = 2049;
      *&v223[10] = 0x402DFFFFFFFFFFFFLL;
      _os_log_impl(&dword_245B46000, v27, OS_LOG_TYPE_ERROR, "CLVLF,isValid,Invalid VL,VL-VIO pitchDiff,%{private}.3lf,pitchDiffThres,%{private}.3lf", &v222, 0x16u);
      if (qword_27EE33DE8 != -1)
      {
        dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
      }
    }

    v28 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      *v227 = 134349056;
      *&v227[4] = v163;
      v15 = v28;
      v16 = "CLVLF,initWithFrames,Invalid measurement,machAbsTime,%{public}.3lf";
LABEL_59:
      _os_log_impl(&dword_245B46000, v15, OS_LOG_TYPE_ERROR, v16, v227, 0xCu);
    }
  }

  v134 = &unk_2858B66C8;
  v135 = v187;
  v136 = v188;
  v187 = 0uLL;
  *&v188 = 0;
  sub_245B4B210(&v129, v175);
  sub_245B47B44(&v129);
  sub_245B4B210(v227, v167);
  sub_245B481D0(v227, &v129, 1);
  v30 = *&v227[32];
  *(v3 + 6800) = *&v227[16];
  *(v3 + 6816) = v30;
  v31 = *v229;
  *(v3 + 6864) = *&v229[16];
  v32 = *v230;
  *(v3 + 6880) = *&v229[32];
  v127[8] = v227[0];
  *(v3 + 6832) = *&v227[48];
  *(v3 + 6896) = v32;
  *(v3 + 6912) = *&v230[16];
  *(v3 + 6848) = v31;
  v33 = v231;
  v34 = v232;
  *(v3 + 6968) = v233;
  *(v3 + 6936) = v33;
  *(v3 + 6952) = v34;
  v35 = v235;
  *(v3 + 6984) = v234;
  *(v3 + 7000) = v35;
  memcpy((v3 + 7024), v236, 0x128uLL);
  LOBYTE(v129) = 1;
  v130 = vdupq_n_s64(3uLL);
  v36 = xmmword_245B5F4F0;
  v131 = xmmword_245B5F4F0;
  v132 = v3 + 7024;
  v133 = v3 + 7144;
  v37 = *(v3 + 7024) + *(v3 + 7080) + *(v3 + 7136);
  v38 = sqrt(v37);
  v40 = (v38 < 0.0 || ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v38 - 1) > 0xFFFFFFFFFFFFELL;
  if (!v40 && v38 < 0.261799388)
  {
    *v227 = 0.0685389195 / v37;
    sub_245B5C264(&v129, v227);
    v36 = xmmword_245B5F4F0;
  }

  LOBYTE(v222) = 1;
  *&v223[4] = vdupq_n_s64(3uLL);
  v224 = v36;
  v225 = v3 + 7192;
  v226 = v3 + 7312;
  v41 = *(v3 + 7192) + *(v3 + 7248) + *(v3 + 7304);
  v42 = sqrt(v41);
  if ((v42 >= 0.0 && ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v42 - 1) <= 0xFFFFFFFFFFFFELL) && v42 < 3.0)
  {
    *v227 = 9.0 / v41;
    sub_245B5C264(&v222, v227);
  }

  v46 = v161;
  *(v3 + 7864) = v160;
  *(v3 + 7880) = v46;
  *(v3 + 7904) = v135;
  *(v3 + 7920) = v136;
  v47 = v138;
  *(v3 + 7936) = v137;
  *(v3 + 7952) = v47;
  v48 = v140;
  *(v3 + 7976) = v139;
  *(v3 + 7992) = v48;
  v49 = v141;
  *(v3 + 8032) = v142;
  *(v3 + 8016) = v49;
  v50 = v144;
  *(v3 + 8048) = v143;
  *(v3 + 8064) = v50;
  *(v3 + 8080) = v145;
  v51 = v148;
  *(v3 + 8112) = v147;
  *(v3 + 8128) = v51;
  v52 = v150;
  *(v3 + 8152) = v149;
  *(v3 + 8168) = v52;
  v53 = v152;
  *(v3 + 0x2000) = v151;
  v54 = v156;
  *(v3 + 8256) = v155;
  v55 = v153;
  *(v3 + 8240) = v154;
  *(v3 + 8224) = v55;
  *v127 = 1;
  *(v3 + 8096) = v146;
  *(v3 + 8208) = v53;
  *(v3 + 8288) = v157;
  *(v3 + 8272) = v54;
  *(v3 + 8296) = 0;
  sub_245B57074(v173, v127);
  sub_245B572B4(v173, v127);
  sub_245B57584(v127, v56, v57, v58);
  v59 = v138;
  *(v3 + 8320) = v137;
  *(v3 + 8336) = v59;
  v60 = v140;
  *(v3 + 8360) = v139;
  *(v3 + 8376) = v60;
  v61 = v142;
  *(v3 + 8400) = v141;
  *(v3 + 8416) = v61;
  v62 = v144;
  *(v3 + 8464) = v145;
  v63 = v143;
  *(v3 + 8448) = v62;
  *(v3 + 8432) = v63;
  v64 = v147;
  *(v3 + 8512) = v148;
  *(v3 + 8496) = v64;
  v65 = v150;
  *(v3 + 8536) = v149;
  *(v3 + 8552) = v65;
  v66 = v156;
  *(v3 + 8640) = v155;
  v67 = v151;
  *(v3 + 8592) = v152;
  v68 = v154;
  *(v3 + 8608) = v153;
  *(v3 + 8576) = v67;
  *(v3 + 8624) = v68;
  *(v3 + 8656) = v66;
  v69 = v173[1];
  *(v3 + 8680) = v173[0];
  *(v3 + 8696) = v69;
  *(v3 + 8712) = v173[2];
  v70 = v177;
  *(v3 + 8752) = v176;
  *(v3 + 8768) = v70;
  v71 = v180;
  *(v3 + 8800) = v179;
  v72 = v182;
  *(v3 + 8864) = __x;
  v73 = v181;
  *(v3 + 8848) = v72;
  *(v3 + 8480) = v146;
  *(v3 + 8672) = v157;
  *(v3 + 8728) = v174;
  v127[1960] = v175[0];
  *(v3 + 8784) = v178;
  *(v3 + 8832) = v73;
  *(v3 + 8816) = v71;
  *(v3 + 8920) = v186;
  v74 = v185;
  *(v3 + 8888) = v184;
  *(v3 + 8904) = v74;
  v75 = v188;
  *(v3 + 8936) = v187;
  *(v3 + 8952) = v75;
  memcpy((v3 + 8976), v189, 0x128uLL);
  v76 = v191;
  *(v3 + 9288) = v190;
  *(v3 + 9304) = v76;
  v77 = v194;
  v78 = v196;
  *(v3 + 9368) = v195;
  *(v3 + 9384) = v78;
  *(v3 + 9400) = v197;
  *(v3 + 9336) = v193;
  *(v3 + 9352) = v77;
  v79 = v199;
  *(v3 + 9424) = v198;
  *(v3 + 9440) = v79;
  v80 = v202;
  *(v3 + 9472) = v201;
  v127[2496] = v189[296];
  *(v3 + 9320) = v192;
  *(v3 + 9456) = v200;
  *(v3 + 9488) = v80;
  memcpy((v3 + 9512), v203, 0x128uLL);
  v81 = v205;
  *(v3 + 9816) = v204;
  *(v3 + 9832) = v81;
  v82 = v206;
  *(v3 + 9872) = v207;
  v83 = v209;
  *(v3 + 9888) = v208;
  *(v3 + 9904) = v83;
  *(v3 + 9920) = v210;
  *(v3 + 9856) = v82;
  v127[3160] = v211;
  v84 = v212;
  *(v3 + 9968) = v213;
  *(v3 + 9952) = v84;
  v85 = v215;
  v86 = v217;
  *(v3 + 10024) = v216;
  *(v3 + 10040) = v86;
  *(v3 + 10056) = v218;
  *(v3 + 9992) = v214;
  *(v3 + 10008) = v85;
  v87 = v220;
  *(v3 + 10072) = v219;
  *(v3 + 10088) = v87;
  *(v3 + 10104) = v221;
  sub_245B5837C(v3 + 3416, v127);
  sub_245B5837C(v3 + 80, v3 + 3416);
  *(v3 + 6760) = *(v3 + 6752);
  sub_245B587A4((v3 + 6752), v127);
  v88 = *(v3 + 8696);
  *(v3 + 10112) = *(v3 + 8680);
  *(v3 + 10128) = v88;
  *(v3 + 10144) = *(v3 + 8712);
  *(v3 + 10160) = *(v3 + 8728);
  v127[3392] = v127[1960];
  *(v3 + 10216) = *(v3 + 8784);
  v89 = *(v3 + 8768);
  *(v3 + 10184) = *(v3 + 8752);
  *(v3 + 10200) = v89;
  v90 = *(v3 + 8800);
  v91 = *(v3 + 8816);
  v92 = *(v3 + 8864);
  *(v3 + 10280) = *(v3 + 8848);
  *(v3 + 10296) = v92;
  v93 = *(v3 + 8832);
  *(v3 + 10248) = v91;
  *(v3 + 10264) = v93;
  *(v3 + 10232) = v90;
  v94 = *(v3 + 8888);
  v95 = *(v3 + 8904);
  *(v3 + 10352) = *(v3 + 8920);
  *(v3 + 10336) = v95;
  *(v3 + 10320) = v94;
  v96 = *(v3 + 8936);
  *(v3 + 10384) = *(v3 + 8952);
  *(v3 + 10368) = v96;
  memcpy((v3 + 10408), (v3 + 8976), 0x128uLL);
  v97 = *(v3 + 9304);
  *(v3 + 10720) = *(v3 + 9288);
  *(v3 + 10736) = v97;
  v98 = *(v3 + 9336);
  *(v3 + 10784) = *(v3 + 9352);
  v99 = *(v3 + 9384);
  *(v3 + 10800) = *(v3 + 9368);
  v127[3928] = v127[2496];
  *(v3 + 10752) = *(v3 + 9320);
  *(v3 + 10816) = v99;
  *(v3 + 10832) = *(v3 + 9400);
  *(v3 + 10768) = v98;
  v100 = *(v3 + 9440);
  *(v3 + 10856) = *(v3 + 9424);
  *(v3 + 10872) = v100;
  *(v3 + 10888) = *(v3 + 9456);
  v101 = *(v3 + 9488);
  *(v3 + 10904) = *(v3 + 9472);
  *(v3 + 10920) = v101;
  memcpy((v3 + 10944), (v3 + 9512), 0x128uLL);
  v102 = *(v3 + 9832);
  *(v3 + 11248) = *(v3 + 9816);
  *(v3 + 11264) = v102;
  v103 = *(v3 + 9904);
  *(v3 + 11320) = *(v3 + 9888);
  *(v3 + 11336) = v103;
  *(v3 + 11352) = *(v3 + 9920);
  v104 = *(v3 + 9872);
  *(v3 + 11288) = *(v3 + 9856);
  *(v3 + 11304) = v104;
  v105 = *(v3 + 9968);
  *(v3 + 11384) = *(v3 + 9952);
  *(v3 + 11400) = v105;
  v106 = *(v3 + 9992);
  *(v3 + 11440) = *(v3 + 10008);
  v107 = *(v3 + 10040);
  *(v3 + 11456) = *(v3 + 10024);
  *v128 = v127[3160];
  *(v3 + 11472) = v107;
  *(v3 + 11488) = *(v3 + 10056);
  *(v3 + 11424) = v106;
  v108 = *(v3 + 10088);
  *(v3 + 11504) = *(v3 + 10072);
  *(v3 + 11520) = v108;
  *(v3 + 11536) = *(v3 + 10104);
  v110 = *(v3 + 56);
  v109 = *(v3 + 64);
  if (v110 != v109)
  {
    v111 = *(v3 + 7952);
    while (*(v110 + 16) >= v111)
    {
      v110 += 1792;
      if (v110 == v109)
      {
        v110 = *(v3 + 64);
        goto LABEL_94;
      }
    }

    if (v110 != v109)
    {
      v112 = v110 + 1792;
      if (v110 + 1792 != v109)
      {
        do
        {
          if (*(v112 + 16) >= v111)
          {
            sub_245B58D88(v110, v112);
            v110 += 1792;
          }

          v112 += 1792;
        }

        while (v112 != v109);
        v109 = *(v3 + 64);
      }
    }

LABEL_94:
    sub_245B594E8(v3 + 56, v110, v109);
  }

  if (qword_27EE33DE8 != -1)
  {
    dispatch_once(&qword_27EE33DE8, &unk_2858B7710);
  }

  v113 = qword_27EE33DF0;
  if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
  {
    v114 = *(v3 + 6936);
    v115 = *(v3 + 6944);
    v116 = *(v3 + 6952);
    v117 = *(v3 + 6960) * 57.2957795;
    v118 = *(v3 + 6984);
    v119 = *(v3 + 6992);
    v120 = *(v3 + 7000);
    v121 = *(v3 + 7024);
    v122 = *(v3 + 7080);
    v123 = *(v3 + 7136);
    v124 = *(v3 + 7192);
    v125 = *(v3 + 7248);
    v126 = *(v3 + 7304);
    *v227 = 134352385;
    *&v227[4] = v163;
    *&v227[12] = 2049;
    *&v227[14] = v114;
    *&v227[22] = 2049;
    *&v227[24] = v115;
    *&v227[32] = 2049;
    *&v227[34] = v116;
    *&v227[42] = 2049;
    *&v227[44] = v117;
    *&v227[52] = 2049;
    *&v227[54] = v118;
    v228 = 2049;
    *v229 = v119;
    *&v229[8] = 2049;
    *&v229[10] = v120;
    *&v229[18] = 2049;
    *&v229[20] = v121;
    *&v229[28] = 2049;
    *&v229[30] = v122;
    *&v229[38] = 2049;
    *&v229[40] = v123;
    *v230 = 2049;
    *&v230[2] = v124;
    *&v230[10] = 2049;
    *&v230[12] = v125;
    *&v230[20] = 2049;
    *&v230[22] = v126;
    _os_log_impl(&dword_245B46000, v113, OS_LOG_TYPE_DEBUG, "CLVLF,initWithFrames,Filter initialized,machAbsTime,%{public}.3lf,vio2enu,[%{private}.3lf,%{private}.3lf,%{private}.3lf,%{private}.3lf,%{private}.3lf,%{private}.3lf,%{private}.3lf],vio2enu_cov_diag,[%{private}.6lf,%{private}.6lf,%{private}.6lf,%{private}.6lf,%{private}.6lf,%{private}.6lf]", v227, 0x8Eu);
  }

LABEL_61:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_245B5A79C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_245B46F20(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_245B5A7B8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  result = sub_245B4C0A4(a1, 3, a3[2]);
  v5 = a3[2];
  if (v5)
  {
    v7 = result[2];
    v6 = result[3];
    if (v5 == 1)
    {
      v10 = result[3];
      return cblas_dgemv_NEWLAPACK();
    }

    else
    {
      v8 = a3[4];
      if (a3[3] != 1)
      {
        v9 = a3[3];
      }

      v12 = result[3];
      v11 = a3[5];
      return cblas_dgemm_NEWLAPACK();
    }
  }

  return result;
}

uint64_t *sub_245B5A88C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  result = sub_245B4C0A4(a1, 3, a3[2]);
  v5 = a3[2];
  if (v5)
  {
    v7 = result[2];
    v6 = result[3];
    if (v5 == 1)
    {
      v10 = result[3];
      return cblas_dgemv_NEWLAPACK();
    }

    else
    {
      v8 = a3[4];
      if (a3[3] != 1)
      {
        v9 = a3[3];
      }

      v12 = result[3];
      v11 = a3[5];
      return cblas_dgemm_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_245B5A960(uint64_t a1)
{
  *a1 = &unk_2858B6DE0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 8) = 0u;
  return cblas_dgemm_NEWLAPACK();
}

double sub_245B5AA10(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = v6 * v10 - v9 * v7;
  v12 = v9 * v4 - v3 * v10;
  v13 = v3 * v7 - v6 * v4;
  v14 = v5 * v12 + v11 * v2 + v13 * v8;
  *a1 = &unk_2858B6880;
  *(a1 + 8) = v11 / v14;
  *(a1 + 16) = v12 / v14;
  *(a1 + 24) = v13 / v14;
  *(a1 + 32) = (v8 * v7 - v5 * v10) / v14;
  *(a1 + 40) = (v2 * v10 - v8 * v4) / v14;
  *(a1 + 48) = (v5 * v4 - v2 * v7) / v14;
  *(a1 + 56) = (v5 * v9 - v8 * v6) / v14;
  *(a1 + 64) = (v8 * v3 - v2 * v9) / v14;
  result = (v2 * v6 - v5 * v3) / v14;
  *(a1 + 72) = result;
  return result;
}

uint64_t *sub_245B5AAF8(uint64_t *a1, uint64_t a2)
{
  result = sub_245B4C0A4(a1, *(a2 + 8), 1);
  if (*(a2 + 8))
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    *(a2 + 24);
    v7 = result[2];
    v6 = result[3];
    return cblas_dgemv_NEWLAPACK();
  }

  return result;
}

uint64_t *sub_245B5AB88(uint64_t *a1, uint64_t a2)
{
  result = sub_245B4C0A4(a1, *(a2 + 8), 3);
  if (*(a2 + 8))
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    *(a2 + 24);
    v7 = result[2];
    v6 = result[3];
    return cblas_dgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_245B5AC28(uint64_t a1)
{
  *a1 = &unk_2858B7740;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 8) = 0u;
  return cblas_dgemv_NEWLAPACK();
}

uint64_t sub_245B5ACB0(uint64_t a1)
{
  *a1 = &unk_2858B6A38;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 8) = 0u;
  v1 = a1 + 8;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  return cblas_dgemm_NEWLAPACK();
}

BOOL sub_245B5AD80(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 40);
  v4 = *(a1 + 40);
  v5 = *(a2 + 272);
  v12 = *(a2 + 256);
  v13 = v5;
  do
  {
    *&v11[v2 + 8] = *&v11[v2 + 8] - *(a1 + 256 + v2);
    v2 += 8;
  }

  while (v2 != 24);
  v6 = *(&v12 + 1) * *(&v12 + 1) + *&v12 * *&v12;
  v7 = vabdd_f64(v3, v4);
  v8 = v7 * (v7 * 36.0);
  return v6 <= 0.0576 || v6 <= v8;
}

void sub_245B5AE08(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v3 = a1 + 8;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *a1 = &unk_2858B6BF0;
  sub_245B4BF18((a2 + 8), (a1 + 8));
  v4 = *v3;
  v5 = vmulq_f64(v4, v4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = sqrt(v5.f64[1] + v4.f64[0] * v4.f64[0] + v6 * v6 + v7 * v7);
  if (v8 == 0.0)
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    v9 = 1.0;
    *(v3 + 16) = 0;
  }

  else
  {
    if (v8 == 1.0)
    {
      return;
    }

    *(a1 + 8) = vdivq_f64(v4, vdupq_lane_s64(*&v8, 0));
    *(a1 + 24) = v6 / v8;
    v9 = v7 / v8;
  }

  *(a1 + 32) = v9;
}

uint64_t *sub_245B5AEC4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = sub_245B4C0A4(a1, *a2, a3[2]);
  if (*a2)
  {
    if (a2[1])
    {
      v6 = a3[2];
      if (v6)
      {
        v7 = a2[2];
        v8 = a2[3];
        v10 = result[2];
        v9 = result[3];
        if (v6 == 1)
        {
          v13 = result[3];
          return cblas_dgemv_NEWLAPACK();
        }

        else
        {
          v11 = a3[4];
          if (a3[3] != 1)
          {
            v12 = a3[3];
          }

          v15 = result[3];
          v14 = a3[5];
          return cblas_dgemm_NEWLAPACK();
        }
      }
    }
  }

  return result;
}

uint64_t *sub_245B5AFA8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = sub_245B4C0A4(a1, a2[1], a3[2]);
  if (a2[1])
  {
    if (a2[2])
    {
      v7 = a3[2];
      if (v7)
      {
        v9 = a2[4];
        v8 = a2[5];
        v11 = result[2];
        v10 = result[3];
        if (v7 == 1)
        {
          a2[3];
          v13 = result[3];
          return cblas_dgemv_NEWLAPACK();
        }

        else
        {
          if (a3[3] == 1)
          {
            v12 = a3[4];
          }

          else
          {
            v12 = a3[3];
          }

          v15 = result[3];
          v14 = a3[5];
          return cblas_dgemm_NEWLAPACK();
        }
      }
    }
  }

  return result;
}

double sub_245B5B0A0(uint64_t a1, void *a2)
{
  *a1 = &unk_2858B6880;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v2 = a2[4];
  v3 = a2[5];
  v4 = a2[3];
  v5 = 8;
  v6 = v3;
  do
  {
    *(a1 + v5) = sqrt(*v6);
    v5 += 32;
    v6 += v4 + v2;
  }

  while (v5 != 104);
  v7 = *(a1 + 40);
  v8 = *(a1 + 8);
  v9 = v3[v4] / (v7 * v8);
  *(a1 + 16) = v9;
  v10 = &v3[2 * v4];
  v11 = *(a1 + 72);
  v12 = *v10 / (v8 * v11);
  *(a1 + 24) = v12;
  v13 = v10[v2];
  *(a1 + 32) = v9;
  result = v13 / (v7 * v11);
  *(a1 + 48) = result;
  *(a1 + 56) = v12;
  *(a1 + 64) = result;
  return result;
}

float64x2_t sub_245B5B154(uint64_t a1, float64x2_t *a2)
{
  *a1 = &unk_2858B6880;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  for (i = 1; i != 13; i += 4)
  {
    *(a1 + i * 8) = a2->f64[i] * a2->f64[i];
  }

  v3.f64[0] = a2[2].f64[1];
  v4 = v3.f64[0] * (a2[4].f64[1] * a2[3].f64[0]);
  v3.f64[1] = a2[4].f64[1];
  result = vmulq_n_f64(vmulq_f64(a2[1], v3), a2->f64[1]);
  *(a1 + 16) = result;
  *(a1 + 48) = v4;
  *(a1 + 32) = result.f64[0];
  *(a1 + 56) = result.f64[1];
  *(a1 + 64) = v4;
  return result;
}

float64x2_t sub_245B5B1E4(uint64_t a1, float64x2_t *a2)
{
  *a1 = &unk_2858B6880;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  for (i = 1; i != 13; i += 4)
  {
    *(a1 + i * 8) = sqrt(a2->f64[i]);
  }

  v3.f64[0] = *(a1 + 40);
  v4 = v3.f64[0] * *(a1 + 72);
  v3.f64[1] = *(a1 + 72);
  result = vdivq_f64(a2[1], vmulq_n_f64(v3, *(a1 + 8)));
  *(a1 + 16) = result;
  v6 = a2[3].f64[0] / v4;
  *(a1 + 48) = v6;
  *(a1 + 32) = result.f64[0];
  *(a1 + 56) = result.f64[1];
  *(a1 + 64) = v6;
  return result;
}

uint64_t *sub_245B5B278(uint64_t *a1, uint64_t a2)
{
  result = sub_245B4C0A4(a1, *(a2 + 8), 1);
  if (*(a2 + 8))
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    *(a2 + 24);
    v7 = result[2];
    v6 = result[3];
    return cblas_dgemv_NEWLAPACK();
  }

  return result;
}

uint64_t sub_245B5B310(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 16) = &unk_2858B6BF0;
  *(a1 + 56) = 0;
  *(a1 + 64) = &unk_2858B6880;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = &unk_2858B6DC0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = &unk_2858B66C8;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = &unk_2858B6A38;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 529) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 552) = &unk_2858B6BF0;
  *(a1 + 600) = &unk_2858B6880;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = &unk_2858B6DC0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 736) = &unk_2858B66C8;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = &unk_2858B6A38;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = &unk_2858B66C8;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = &unk_2858B66C8;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  sub_245B4BAE4(a1 + 1160);
  *(a1 + 1520) = 0;
  *(a1 + 1524) = 0;
  *(a1 + 1528) = 0xBFF0000000000000;
  *(a1 + 1536) = 0xBFF0000000000000;
  sub_245B4BAE4(a1 + 1544);
  sub_245B4B3F4(a1 + 1904);
  return a1;
}

os_log_t sub_245B5B5A8()
{
  result = os_log_create("com.apple.locationd.Position", "Vision");
  qword_27EE33DF0 = result;
  return result;
}

__int128 **sub_245B5B5D8(__int128 **result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = (v4 + *result - v6);
  if (v6 != *result)
  {
    result = (v4 + *result - v6);
    do
    {
      v8 = sub_245B5B678(result, v5);
      v5 = (v5 + 1432);
      result = (v8 + 1432);
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v9 = v3[1];
  v3[1] = a2[2];
  a2[2] = v9;
  v10 = v3[2];
  v3[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t sub_245B5B678(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  sub_245B4B210(a1 + 56, a2 + 56);
  sub_245B4B210(a1 + 592, (a2 + 37));
  *(a1 + 1128) = &unk_2858B66C8;
  v7 = a2[71];
  *(a1 + 1152) = a2[72];
  *(a1 + 1136) = v7;
  *(a1 + 1168) = &unk_2858B6880;
  *(a1 + 1176) = *(a2 + 1176);
  v8 = *(a2 + 1192);
  v9 = *(a2 + 1208);
  v10 = *(a2 + 1240);
  *(a1 + 1224) = *(a2 + 1224);
  *(a1 + 1240) = v10;
  *(a1 + 1192) = v8;
  *(a1 + 1208) = v9;
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1264) = &unk_2858B66C8;
  v11 = *(a2 + 1288);
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1288) = v11;
  *(a1 + 1304) = &unk_2858B6880;
  *(a1 + 1312) = a2[82];
  v12 = a2[83];
  v13 = a2[84];
  v14 = a2[85];
  *(a1 + 1376) = a2[86];
  *(a1 + 1360) = v14;
  *(a1 + 1344) = v13;
  *(a1 + 1328) = v12;
  v15 = a2[87];
  v16 = a2[88];
  *(a1 + 1424) = *(a2 + 1424);
  *(a1 + 1408) = v16;
  *(a1 + 1392) = v15;
  return a1;
}

uint64_t sub_245B5B7D4(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      sub_245B5BA24(a3, v5);
      result = sub_245B5B678(a3 + 1728, v5 + 108);
      v5 = (v5 + 3160);
      a3 += 3160;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_245B5B838(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      sub_245B4BBD4(a3, v5);
      result = sub_245B5B678(a3 + 360, (v5 + 360));
      v5 += 1792;
      a3 += 1792;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *sub_245B5B89C(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 - (v6 - *result);
  if (v6 != *result)
  {
    v8 = 0;
    v9 = v4 - 8 * ((v6 - *result) >> 3);
    do
    {
      v10 = v5 + v8;
      v11 = v7 + v8;
      *(v7 + v8) = *(v5 + v8);
      sub_245B4B210(v7 + v8 + 8, v5 + v8 + 8);
      sub_245B4B210(v7 + v8 + 544, v5 + v8 + 544);
      *(v11 + 1080) = &unk_2858B66C8;
      v12 = *(v5 + v8 + 1088);
      *(v11 + 1104) = *(v5 + v8 + 1104);
      *(v11 + 1088) = v12;
      *(v11 + 1120) = &unk_2858B66C8;
      v13 = *(v5 + v8 + 1144);
      *(v11 + 1128) = *(v5 + v8 + 1128);
      *(v11 + 1144) = v13;
      sub_245B4BBD4(v7 + v8 + 1160, v5 + v8 + 1160);
      v14 = *(v5 + v8 + 1520);
      *(v11 + 1536) = *(v5 + v8 + 1536);
      *(v11 + 1520) = v14;
      sub_245B4BBD4(v7 + v8 + 1544, v5 + v8 + 1544);
      result = sub_245B5B678(v7 + v8 + 1904, (v5 + v8 + 1904));
      v8 += 3336;
    }

    while (v10 + 3336 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v15 = v3[1];
  v3[1] = a2[2];
  a2[2] = v15;
  v16 = v3[2];
  v3[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

uint64_t sub_245B5BA24(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  sub_245B4B210(a1 + 24, a2 + 24);
  sub_245B4B210(a1 + 560, (a2 + 35));
  *(a1 + 1096) = &unk_2858B66C8;
  v5 = a2[69];
  *(a1 + 1120) = a2[70];
  *(a1 + 1104) = v5;
  v6 = *(a2 + 142);
  *(a1 + 1144) = *(a2 + 1144);
  *(a1 + 1136) = v6;
  *(a1 + 1152) = &unk_2858B66C8;
  v7 = *(a2 + 1176);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1176) = v7;
  sub_245B4B210(a1 + 1192, a2 + 1192);
  return a1;
}

uint64_t sub_245B5BAEC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  v7 = *(a2 + 120);
  v8 = *(a2 + 136);
  v9 = *(a2 + 152);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 152) = v9;
  *(a1 + 136) = v8;
  *(a1 + 120) = v7;
  *(a1 + 88) = *(a2 + 88);
  v10 = a2[11];
  v11 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  v12 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v12;
  memcpy((a1 + 264), a2 + 264, 0x128uLL);
  *(a1 + 560) = *(a2 + 560);
  v14 = a2[36];
  v13 = a2[37];
  *(a1 + 608) = *(a2 + 76);
  *(a1 + 576) = v14;
  *(a1 + 592) = v13;
  v16 = a2[40];
  v15 = a2[41];
  v17 = a2[43];
  *(a1 + 672) = a2[42];
  *(a1 + 688) = v17;
  *(a1 + 640) = v16;
  *(a1 + 656) = v15;
  *(a1 + 624) = a2[39];
  v18 = *(a2 + 712);
  v19 = *(a2 + 728);
  *(a1 + 744) = *(a2 + 93);
  *(a1 + 712) = v18;
  *(a1 + 728) = v19;
  v20 = *(a2 + 776);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 776) = v20;
  memcpy((a1 + 800), a2 + 50, 0x128uLL);
  v21 = a2[69];
  *(a1 + 1120) = a2[70];
  *(a1 + 1104) = v21;
  v22 = *(a2 + 1144);
  *(a1 + 1136) = *(a2 + 142);
  *(a1 + 1144) = v22;
  v23 = *(a2 + 1176);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1176) = v23;
  *(a1 + 1192) = *(a2 + 1192);
  v25 = *(a2 + 1208);
  v24 = *(a2 + 1224);
  *(a1 + 1240) = *(a2 + 155);
  *(a1 + 1208) = v25;
  *(a1 + 1224) = v24;
  v27 = *(a2 + 1272);
  v26 = *(a2 + 1288);
  v28 = *(a2 + 1320);
  *(a1 + 1304) = *(a2 + 1304);
  *(a1 + 1320) = v28;
  *(a1 + 1272) = v27;
  *(a1 + 1288) = v26;
  *(a1 + 1256) = *(a2 + 1256);
  v29 = a2[84];
  v30 = a2[85];
  *(a1 + 1376) = *(a2 + 172);
  *(a1 + 1360) = v30;
  *(a1 + 1344) = v29;
  v31 = a2[87];
  *(a1 + 1408) = a2[88];
  *(a1 + 1392) = v31;
  memcpy((a1 + 1432), a2 + 1432, 0x128uLL);
  v32 = a2[109];
  v33 = a2[110];
  v34 = *(a2 + 222);
  *(a1 + 1728) = a2[108];
  *(a1 + 1776) = v34;
  *(a1 + 1760) = v33;
  *(a1 + 1744) = v32;
  *(a1 + 1784) = *(a2 + 1784);
  v36 = *(a2 + 1800);
  v35 = *(a2 + 1816);
  *(a1 + 1832) = *(a2 + 229);
  *(a1 + 1800) = v36;
  *(a1 + 1816) = v35;
  v38 = *(a2 + 1864);
  v37 = *(a2 + 1880);
  v39 = *(a2 + 1912);
  *(a1 + 1896) = *(a2 + 1896);
  *(a1 + 1912) = v39;
  *(a1 + 1864) = v38;
  *(a1 + 1880) = v37;
  *(a1 + 1848) = *(a2 + 1848);
  v40 = a2[121];
  v41 = a2[122];
  *(a1 + 1968) = *(a2 + 246);
  *(a1 + 1952) = v41;
  *(a1 + 1936) = v40;
  v42 = a2[124];
  *(a1 + 2000) = a2[125];
  *(a1 + 1984) = v42;
  memcpy((a1 + 2024), a2 + 2024, 0x129uLL);
  v43 = a2[147];
  v44 = a2[146];
  *(a1 + 2368) = *(a2 + 296);
  *(a1 + 2336) = v44;
  *(a1 + 2352) = v43;
  v45 = a2[151];
  v46 = a2[152];
  v47 = a2[150];
  *(a1 + 2448) = a2[153];
  *(a1 + 2400) = v47;
  *(a1 + 2432) = v46;
  *(a1 + 2416) = v45;
  *(a1 + 2384) = a2[149];
  v48 = *(a2 + 2472);
  v49 = *(a2 + 2488);
  *(a1 + 2504) = *(a2 + 313);
  *(a1 + 2472) = v48;
  *(a1 + 2488) = v49;
  v50 = *(a2 + 2536);
  *(a1 + 2520) = *(a2 + 2520);
  *(a1 + 2536) = v50;
  memcpy((a1 + 2560), a2 + 160, 0x128uLL);
  v51 = a2[179];
  *(a1 + 2880) = a2[180];
  *(a1 + 2864) = v51;
  *(a1 + 2904) = *(a2 + 2904);
  v52 = *(a2 + 2968);
  v54 = *(a2 + 2920);
  v53 = *(a2 + 2936);
  *(a1 + 2952) = *(a2 + 2952);
  *(a1 + 2968) = v52;
  *(a1 + 2920) = v54;
  *(a1 + 2936) = v53;
  *(a1 + 2984) = *(a2 + 2984);
  v55 = *(a2 + 3016);
  *(a1 + 3000) = *(a2 + 3000);
  *(a1 + 3016) = v55;
  *(a1 + 3040) = a2[190];
  v56 = a2[192];
  v57 = a2[193];
  v58 = a2[194];
  *(a1 + 3056) = a2[191];
  *(a1 + 3104) = v58;
  *(a1 + 3088) = v57;
  *(a1 + 3072) = v56;
  v59 = a2[195];
  v60 = a2[196];
  *(a1 + 3152) = *(a2 + 3152);
  *(a1 + 3136) = v60;
  *(a1 + 3120) = v59;
  return a1;
}

uint64_t sub_245B5BE44(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_245B4B210(a1 + 8, a2 + 8);
  sub_245B4B210(a1 + 544, a2 + 544);
  *(a1 + 1080) = &unk_2858B66C8;
  v4 = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1088) = v4;
  *(a1 + 1120) = &unk_2858B66C8;
  v5 = *(a2 + 1144);
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1144) = v5;
  sub_245B4BBD4(a1 + 1160, a2 + 1160);
  v6 = *(a2 + 1520);
  *(a1 + 1536) = *(a2 + 1536);
  *(a1 + 1520) = v6;
  sub_245B4BBD4(a1 + 1544, a2 + 1544);
  v7 = *(a2 + 1904);
  v8 = *(a2 + 1920);
  v9 = *(a2 + 1936);
  *(a1 + 1952) = *(a2 + 1952);
  *(a1 + 1936) = v9;
  *(a1 + 1920) = v8;
  *(a1 + 1904) = v7;
  sub_245B4B210(a1 + 1960, a2 + 1960);
  sub_245B4B210(a1 + 2496, a2 + 2496);
  *(a1 + 3032) = &unk_2858B66C8;
  v10 = *(a2 + 3040);
  *(a1 + 3056) = *(a2 + 3056);
  *(a1 + 3040) = v10;
  *(a1 + 3072) = &unk_2858B6880;
  *(a1 + 3080) = *(a2 + 3080);
  v11 = *(a2 + 3096);
  v12 = *(a2 + 3112);
  v13 = *(a2 + 3144);
  *(a1 + 3128) = *(a2 + 3128);
  *(a1 + 3144) = v13;
  *(a1 + 3096) = v11;
  *(a1 + 3112) = v12;
  *(a1 + 3160) = *(a2 + 3160);
  *(a1 + 3168) = &unk_2858B66C8;
  v14 = *(a2 + 3192);
  *(a1 + 3176) = *(a2 + 3176);
  *(a1 + 3192) = v14;
  *(a1 + 3208) = &unk_2858B6880;
  *(a1 + 3216) = *(a2 + 3216);
  v15 = *(a2 + 3232);
  v16 = *(a2 + 3248);
  v17 = *(a2 + 3264);
  *(a1 + 3280) = *(a2 + 3280);
  *(a1 + 3264) = v17;
  *(a1 + 3248) = v16;
  *(a1 + 3232) = v15;
  v18 = *(a2 + 3296);
  v19 = *(a2 + 3312);
  *(a1 + 3328) = *(a2 + 3328);
  *(a1 + 3312) = v19;
  *(a1 + 3296) = v18;
  return a1;
}

uint64_t sub_245B5C078(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      *(a3 + 48) = *(v5 + 6);
      *(a3 + 16) = v7;
      *(a3 + 32) = v8;
      *a3 = v6;
      *(a3 + 56) = *(v5 + 56);
      v9 = *(v5 + 72);
      v10 = *(v5 + 88);
      *(a3 + 104) = *(v5 + 13);
      *(a3 + 88) = v10;
      *(a3 + 72) = v9;
      v11 = *(v5 + 152);
      v12 = *(v5 + 168);
      v13 = *(v5 + 184);
      *(a3 + 136) = *(v5 + 136);
      *(a3 + 184) = v13;
      *(a3 + 168) = v12;
      *(a3 + 152) = v11;
      *(a3 + 120) = *(v5 + 120);
      v14 = v5[13];
      v15 = v5[14];
      *(a3 + 240) = *(v5 + 30);
      *(a3 + 208) = v14;
      *(a3 + 224) = v15;
      v16 = v5[17];
      *(a3 + 256) = v5[16];
      *(a3 + 272) = v16;
      memcpy((a3 + 296), v5 + 296, 0x129uLL);
      v18 = v5[38];
      v17 = v5[39];
      *(a3 + 640) = *(v5 + 80);
      *(a3 + 608) = v18;
      *(a3 + 624) = v17;
      v20 = v5[42];
      v19 = v5[43];
      v21 = v5[45];
      *(a3 + 704) = v5[44];
      *(a3 + 720) = v21;
      *(a3 + 672) = v20;
      *(a3 + 688) = v19;
      *(a3 + 656) = v5[41];
      v22 = *(v5 + 744);
      v23 = *(v5 + 760);
      *(a3 + 776) = *(v5 + 97);
      *(a3 + 744) = v22;
      *(a3 + 760) = v23;
      v24 = *(v5 + 808);
      *(a3 + 792) = *(v5 + 792);
      *(a3 + 808) = v24;
      memcpy((a3 + 832), v5 + 52, 0x128uLL);
      v25 = v5[71];
      *(a3 + 1152) = v5[72];
      *(a3 + 1136) = v25;
      *(a3 + 1176) = *(v5 + 1176);
      v26 = *(v5 + 1240);
      v28 = *(v5 + 1192);
      v27 = *(v5 + 1208);
      *(a3 + 1224) = *(v5 + 1224);
      *(a3 + 1240) = v26;
      *(a3 + 1192) = v28;
      *(a3 + 1208) = v27;
      *(a3 + 1256) = *(v5 + 1256);
      v29 = *(v5 + 1288);
      *(a3 + 1272) = *(v5 + 1272);
      *(a3 + 1288) = v29;
      *(a3 + 1312) = v5[82];
      v30 = v5[84];
      v31 = v5[85];
      v32 = v5[86];
      *(a3 + 1328) = v5[83];
      *(a3 + 1376) = v32;
      *(a3 + 1360) = v31;
      *(a3 + 1344) = v30;
      v33 = v5[87];
      v34 = v5[88];
      *(a3 + 1424) = *(v5 + 1424);
      *(a3 + 1408) = v34;
      *(a3 + 1392) = v33;
      v5 = (v5 + 1432);
      a3 += 1432;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_245B5C264(uint64_t a1, const double *__B)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 24);
  if (v5 == 1)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (v6 == v4)
      {
        vDSP_vsmulD(*(a1 + 40), 1, __B, v3, 1, v7 * v4);
      }

      else
      {
        v12 = 8 * v4;
        do
        {
          vDSP_vsmulD(v3, 1, __B, v3, 1, v6);
          v3 = (v3 + v12);
          --v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      if (v9 == v5)
      {
        vDSP_vsmulD(*(a1 + 40), 1, __B, v3, 1, v10 * v5);
      }

      else if (v4 == 1 || v10 == 1)
      {
        v14 = 8 * v5;
        do
        {
          vDSP_vsmulD(v3, v4, __B, v3, 1, v9);
          v3 = (v3 + v14);
          --v10;
        }

        while (v10);
      }

      else
      {
        v15 = 0;
        v16 = 8 * v5;
        do
        {
          v17 = v3;
          v18 = v3;
          v19 = v9;
          do
          {
            *v18++ = *v17 * *__B;
            v17 += v4;
            --v19;
          }

          while (v19);
          ++v15;
          v3 = (v3 + v16);
        }

        while (v15 != v10);
      }
    }
  }
}

void sub_245B5C3D4(uint64_t a1, const double *__B)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 24);
  if (v5 == 1)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (v6 == v4)
      {
        vDSP_vsaddD(*(a1 + 40), 1, __B, v3, 1, v7 * v4);
      }

      else
      {
        v12 = 8 * v4;
        do
        {
          vDSP_vsaddD(v3, 1, __B, v3, 1, v6);
          v3 = (v3 + v12);
          --v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      if (v9 == v5)
      {
        vDSP_vsaddD(*(a1 + 40), 1, __B, v3, 1, v10 * v5);
      }

      else if (v4 == 1 || v10 == 1)
      {
        v14 = 8 * v5;
        do
        {
          vDSP_vsaddD(v3, v4, __B, v3, 1, v9);
          v3 = (v3 + v14);
          --v10;
        }

        while (v10);
      }

      else
      {
        v15 = 0;
        v16 = 8 * v5;
        do
        {
          v17 = v3;
          v18 = v3;
          v19 = v9;
          do
          {
            *v18++ = *v17 + *__B;
            v17 += v4;
            --v19;
          }

          while (v19);
          ++v15;
          v3 = (v3 + v16);
        }

        while (v15 != v10);
      }
    }
  }
}

double sub_245B5C580(double *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  result = v2 * v2;
  v5 = a1[2];
  v6 = a1[3];
  v7 = sqrt(v2 * v2 + v3 * v3 + v5 * v5 + v6 * v6);
  if (v7 == 0.0)
  {
    *a2 = 1.0;
    a2[1] = 0.0;
    a2[2] = 0.0;
    a2[3] = 0.0;
    a2[4] = 1.0;
    a2[5] = 0.0;
    a2[6] = 0.0;
    a2[7] = 0.0;
    a2[8] = 1.0;
  }

  else
  {
    if (v7 == 1.0)
    {
      v25 = v3 * v3;
      v26 = v3 * v2;
      v27 = v3 * v5;
      v28 = v3 * v6;
      v29 = v2 * v5;
      v30 = v2 * v6;
      v31 = v5 * v5;
      v32 = v5 * v6;
      v21 = v6 * v6;
      v33 = v26 + v26;
      *a2 = v25 - result - v31 + v21;
      a2[1] = v33 - v32 - v32;
      v34 = v27 + v27;
      a2[2] = v30 + v34 + v30;
      a2[3] = v32 + v33 + v32;
      a2[4] = result - v25 - v31 + v21;
      a2[5] = v29 + v29 - v28 - v28;
      a2[6] = v34 - v30 - v30;
      a2[7] = v28 + v29 + v29 + v28;
      v24 = v31 - v25 - result;
    }

    else
    {
      v8 = v3 / v7;
      v9 = v2 / v7;
      v10 = v5 / v7;
      v11 = v6 / v7;
      v12 = v8 * v8;
      v13 = v8 * v9;
      v14 = v8 * v10;
      v15 = v8 * v11;
      v16 = v9 * v9;
      v17 = v9 * v10;
      v18 = v9 * v11;
      v19 = v10 * v10;
      v20 = v10 * v11;
      v21 = v11 * v11;
      v22 = v13 + v13;
      *a2 = v21 + v12 - v16 - v19;
      a2[1] = v22 - v20 - v20;
      v23 = v14 + v14;
      a2[2] = v18 + v18 + v23;
      a2[3] = v20 + v20 + v22;
      a2[4] = v21 + v16 - v12 - v19;
      a2[5] = v17 + v17 - v15 - v15;
      a2[6] = v23 - v18 - v18;
      a2[7] = v15 + v15 + v17 + v17;
      v24 = v19 - v12 - v16;
    }

    result = v21 + v24;
    a2[8] = result;
  }

  return result;
}

BOOL sub_245B5C710(unsigned int a1)
{
  if (a1 >= 0x2AC)
  {
    if (qword_27EE33DF8 != -1)
    {
      dispatch_once(&qword_27EE33DF8, &unk_2858B7E10);
    }

    v2 = qword_27EE33E00;
    if (os_log_type_enabled(qword_27EE33E00, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_245B46000, v2, OS_LOG_TYPE_FAULT, "Bad index into kkDefenseMappingAgencyTenByTenGeoid.", v4, 2u);
    }
  }

  return a1 < 0x2AC;
}

BOOL sub_245B5C7B0(float *a1, double a2, double a3)
{
  v3 = a3;
  v30 = *MEMORY[0x277D85DE8];
  *a1 = 0.0;
  if (fabs(a2) > 90.0)
  {
    if (qword_27EE33DF8 != -1)
    {
      dispatch_once(&qword_27EE33DF8, &unk_2858B7E10);
    }

    v5 = qword_27EE33E00;
    result = os_log_type_enabled(qword_27EE33E00, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 134217984;
      v29 = a2;
      v7 = "#Warning Input latitude = %.9lf is out of possible range";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_31:
      _os_log_impl(&dword_245B46000, v8, v9, v7, buf, 0xCu);
      result = 0;
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (a3 < -180.0)
  {
    v11 = 0;
    do
    {
      v3 = v3 + 360.0;
    }

    while (v3 < -180.0 && v11++ < 3);
  }

  if (v3 >= 180.0)
  {
    v13 = 0;
    do
    {
      v3 = v3 + -360.0;
    }

    while (v3 >= 180.0 && v13++ < 3);
  }

  v15 = (v3 + 180.0) / 10.0;
  v16 = vcvtms_s32_f32(v15);
  if (v16 >= 0x24)
  {
    if (qword_27EE33DF8 != -1)
    {
      dispatch_once(&qword_27EE33DF8, &unk_2858B7E10);
    }

    v17 = qword_27EE33E00;
    result = os_log_type_enabled(qword_27EE33E00, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_32;
    }

    *buf = 134217984;
    v29 = v3;
    v7 = "longitude %.9lf is not valid.";
LABEL_30:
    v8 = v17;
    v9 = OS_LOG_TYPE_FAULT;
    goto LABEL_31;
  }

  v18 = (90.0 - a2) / 10.0;
  v19 = vcvtms_s32_f32(v18);
  if (v19 < 0x13)
  {
    if (v16 == 35)
    {
      v21 = 0;
    }

    else
    {
      v21 = v16 + 1;
    }

    v22 = v19 + 1;
    if (v19 == 18)
    {
      *a1 = -30.0;
    }

    else
    {
      v23 = 36 * v19;
      result = sub_245B5C710(v23 + v16);
      if (!result)
      {
        goto LABEL_32;
      }

      v24 = byte_245B62A30[v23 + v16];
      v25 = 36 * v22;
      result = sub_245B5C710(v25 + v16);
      if (!result)
      {
        goto LABEL_32;
      }

      v27 = byte_245B62A30[v25 + v16];
      result = sub_245B5C710(v21 + v23);
      if (!result)
      {
        goto LABEL_32;
      }

      v26 = byte_245B62A30[v21 + v23];
      result = sub_245B5C710(v21 + v25);
      if (!result)
      {
        goto LABEL_32;
      }

      *a1 = (((((v22 - v18) * ((v15 - v16) * v26)) + (((v21 - v15) * v24) * (v22 - v18))) + (((v21 - v15) * v27) * (v18 - v19))) + (((v15 - v16) * byte_245B62A30[v21 + v25]) * (v18 - v19))) / ((v22 - v19) * (v21 - v16));
    }

    result = 1;
    goto LABEL_32;
  }

  if (qword_27EE33DF8 != -1)
  {
    dispatch_once(&qword_27EE33DF8, &unk_2858B7E10);
  }

  v17 = qword_27EE33E00;
  result = os_log_type_enabled(qword_27EE33E00, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 134217984;
    v29 = a2;
    v7 = "latitude %.9lf is not valid.";
    goto LABEL_30;
  }

LABEL_32:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t sub_245B5CB40()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE33E00 = result;
  return result;
}

long double sub_245B5CB70(double a1, double a2, double a3, double a4)
{
  v4 = a3;
  result = 0.0;
  if (a3 > 90.0)
  {
    return result;
  }

  v7 = fabs(a1);
  if (v7 > 90.0 || a3 < -90.0)
  {
    return result;
  }

  v8 = 360.0;
  v9 = a4 + 360.0;
  if (a4 >= 0.0)
  {
    v9 = a4;
  }

  v10 = a2 + 360.0;
  if (a2 >= 0.0)
  {
    v10 = a2;
  }

  v11 = v10 - v9;
  if (v11 <= 180.0)
  {
    if (v11 >= -180.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = -360.0;
  }

  v11 = v11 + v8;
LABEL_12:
  if (fabs(a1 + a3) >= 0.0001)
  {
    v43 = a2;
    v45 = a4;
LABEL_17:
    v12 = v11;
    goto LABEL_18;
  }

  if (v7 < 0.0001 && 180.0 - fabs(v11) < 0.0001)
  {
    return 20037508.3;
  }

  v41 = fabs(v7 + -90.0) < 0.0001;
  if (v41)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11;
  }

  v45 = a4;
  v43 = a2;
  if (!v41 && 180.0 - fabs(v11) >= 0.0001)
  {
    goto LABEL_17;
  }

  if (a1 <= a3)
  {
    v4 = a3 + -0.0001;
  }

  else
  {
    a1 = a1 + -0.0001;
  }

LABEL_18:
  v13 = v12 * 0.0174532925;
  v42 = a1;
  v14 = tan(a1 * 0.0174532925);
  v44 = v4;
  v15 = tan(v4 * 0.0174532925);
  v16 = v14 * 0.996647189;
  v17 = v15 * 0.996647189;
  v18 = atan(v16);
  v19 = atan(v17);
  v20 = __sincos_stret(v18);
  v21 = __sincos_stret(v19);
  v22 = 0;
  v23 = v21.__cosval * v20.__cosval;
  v46 = v13;
  while (1)
  {
    v24 = __sincos_stret(v13);
    v25 = sqrt((-(v20.__sinval * v21.__cosval) * v24.__cosval + v20.__cosval * v21.__sinval) * (-(v20.__sinval * v21.__cosval) * v24.__cosval + v20.__cosval * v21.__sinval) + v21.__cosval * v24.__sinval * (v21.__cosval * v24.__sinval));
    if (v25 < 2.22044605e-15)
    {
      break;
    }

    v26 = v23 * v24.__cosval + v20.__sinval * v21.__sinval;
    v27 = fabs(v26);
    if (fabs(v25) > 1.0 || v27 > 1.0)
    {
      break;
    }

    v29 = atan2(v25, v26);
    v30 = v23 * v24.__sinval / v25;
    if (v30 > 1.0)
    {
      break;
    }

    v31 = 1.0 - v30 * v30;
    if (fabs(v31) >= 2.22044605e-15)
    {
      v32 = v26 - v21.__sinval * (v20.__sinval + v20.__sinval) / v31;
      v33 = v31 * 0.000209550667 * ((v31 * -3.0 + 4.0) * 0.00335281066 + 4.0);
    }

    else
    {
      v32 = -1.0;
      v33 = 0.0;
    }

    v34 = v30 * ((1.0 - v33) * 0.00335281066);
    v35 = v32 * v32 * 2.0 + -1.0;
    v36 = v46 + v34 * (v29 + v25 * v33 * (v32 + v26 * v33 * v35));
    if (vabdd_f64(v36, v13) > 0.000000001)
    {
      v13 = v36;
      if (v22++ < 0x31)
      {
        continue;
      }
    }

    v38 = v31 * 2.72331606e11 / 4.04083e13;
    v39 = v38 * 0.0000610351562 * (v38 * (v38 * (v38 * -175.0 + 320.0) + -768.0) + 4096.0) + 1.0;
    v40 = v38 * 0.0009765625 * (v38 * (v38 * (v38 * -47.0 + 74.0) + -128.0) + 256.0);
    return v39 * 6356752.31 * (v29 - v25 * v40 * (v32 + v40 * 0.25 * ((v32 * v32 * 4.0 + -3.0) * (v40 / 6.0 * v32 * 3.0) + v26 * v35)));
  }

  return sub_245B5CFBC(v42, v43, v44, v45);
}

long double sub_245B5CFBC(double a1, double a2, double a3, double a4)
{
  v5 = 360.0;
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v6 = a4 - a2;
  if (v6 <= 180.0)
  {
    if (v6 >= -180.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = -360.0;
  }

  v6 = v6 + v5;
LABEL_9:
  v7 = a1 * 0.0174532925;
  v8 = v6 * 0.0174532925;
  v9 = sin((a3 - a1) * 0.0174532925 * 0.5);
  v10 = v9 * v9;
  v11 = __sincos_stret(v7);
  v12 = v11.__cosval * cos(a3 * 0.0174532925);
  v13 = sin(v8 * 0.5);
  v14 = v10 + v12 * (v13 * v13);
  v15 = 1.0 - v14;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = atan2(sqrt(v14), sqrt(v15));
  return (fabs(v11.__sinval) * -21000.0 + 6378160.0) * (v16 + v16);
}

BOOL sub_245B5D0E4(double a1, double a2, double a3, double a4)
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v4 = a4 - a2;
  if (v4 <= 180.0)
  {
    if (v4 < -180.0)
    {
      v4 = v4 + 360.0;
    }
  }

  else
  {
    v4 = v4 + -360.0;
  }

  v5 = v4;
  if (v4 < 0)
  {
    v5 = -v5;
  }

  v6 = a3 - a1;
  if (v6 < 0)
  {
    v6 = a1 - a3;
  }

  return v6 > 2 || v5 > 2;
}

BOOL sub_245B5D168(float64x2_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = vabdd_f64(a5, a8);
  if (v10 <= 2.0)
  {
    v21 = a1[1].f64[1];
    if (v21 == 0.0 || vabdd_f64(a5, v21) > 0.005)
    {
      v22 = (a5 + a8) * 0.5;
      a1[1].f64[0] = v22 * 0.0174532925;
      a1[1].f64[1] = v22;
      v23 = __sincos_stret(v22 * 0.0174532925);
      v24 = v23.__sinval * -0.00669437999 * v23.__sinval + 1.0;
      v25 = sqrt(v24);
      v26.f64[0] = v24 * v25;
      v26.f64[1] = v25;
      *a1 = vdivq_f64(xmmword_245B62D70, v26);
      a1[2].f64[0] = v23.__cosval;
    }

    v27 = 360.0;
    v28 = a6 + 360.0;
    if (a6 >= 0.0)
    {
      v28 = a6;
    }

    v29 = a9 + 360.0;
    if (a9 >= 0.0)
    {
      v29 = a9;
    }

    v30 = v29 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
LABEL_13:
        *a2 = (a8 - a5) * 0.0174532925 * (a1->f64[0] + a7);
        *a3 = v30 * 0.0174532925 * ((a1->f64[1] + a7) * a1[2].f64[0]);
        *a4 = a10 - a7;
        return v10 <= 2.0;
      }
    }

    else
    {
      v27 = -360.0;
    }

    v30 = v30 + v27;
    goto LABEL_13;
  }

  return v10 <= 2.0;
}

long double sub_245B5D2FC(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v14 = 0.0;
  v15 = 0.0;
  if (!sub_245B5D0E4(a2, a3, a4, a5) && sub_245B5D168(a1, &v15, &v14, &v13, a2, a3, a6, a4, a5, a6))
  {
    return sqrt(v14 * v14 + v15 * v15);
  }

  return sub_245B5CB70(a2, a3, a4, a5);
}

void sub_245B5E1A8(_Unwind_Exception *a1)
{
  if (STACK[0x7B0])
  {
    sub_245B4720C(STACK[0x7B0]);
  }

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

os_log_t sub_245B5EC94()
{
  result = os_log_create("com.apple.locationd.Position", "Vision");
  qword_27EE33DF0 = result;
  return result;
}

uint64_t cnnavigation::ECEFToENU()
{
  return MEMORY[0x282152570]();
}

{
  return MEMORY[0x282152578]();
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

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}