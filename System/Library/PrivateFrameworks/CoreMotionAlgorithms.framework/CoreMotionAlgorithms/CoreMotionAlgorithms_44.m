void sub_245F1A54C(uint64_t a1, unint64_t a2, uint64_t a3, float a4, float a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v42 = a5;
  v43 = a4;
  if (!*(a1 + 4346))
  {
    goto LABEL_5;
  }

  v8 = a1 + 4352;
  v9 = *(a1 + 4346) + *(a1 + 4344) - 1;
  v10 = *(a1 + 4348);
  if (v9 < v10)
  {
    v10 = 0;
  }

  if (*(v8 + 8 * (v9 - v10)) >= a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB20();
    }

    v18 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 4344) + *(a1 + 4346) - 1;
      v20 = *(a1 + 4348);
      if (v19 < v20)
      {
        v20 = 0;
      }

      v21 = *(v8 + 8 * (v19 - v20));
      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v21;
      _os_log_impl(&dword_245D80000, v18, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedAuxDM] AuxDM timestamp must be greater than the last value. Input: %llu us, last: %llu us", buf, 0x16u);
    }
  }

  else
  {
LABEL_5:
    if (*(a1 + 6168) == 1)
    {
      *(a1 + 6144) = a2;
      *(a1 + 6152) = sub_245F24AA4(a3);
      *(a1 + 6156) = v11;
      *(a1 + 6160) = v12;
      *(a1 + 6164) = v13;
      *(a1 + 6168) = 0;
    }

    else
    {
      v14 = *(a1 + 6144);
      if (v14 + 1000000 >= a2)
      {
        sub_245F1A8DC((a1 + 3032), v14, a2, buf);
        v23 = *buf;
        for (i = *&buf[8]; v23 != i; ++v23)
        {
          v25 = *v23;
          v26 = sub_245F1AA0C(*(a1 + 6144), a2, (a1 + 6152), a3, *v23, v22);
          *&v41 = __PAIR64__(v27, LODWORD(v26));
          *(&v41 + 1) = __PAIR64__(v29, v28);
          v30 = *(a1 + 4346);
          v31 = *(a1 + 4348);
          v32 = *(a1 + 4344);
          if (v32 + v30 >= v31)
          {
            v33 = *(a1 + 4348);
          }

          else
          {
            v33 = 0;
          }

          *(a1 + 4352 + 8 * (v32 + v30 - v33)) = v25;
          if (v31 <= v30)
          {
            if (v32 + 1 < v31)
            {
              LOWORD(v31) = 0;
            }

            *(a1 + 4344) = v32 + 1 - v31;
          }

          else
          {
            *(a1 + 4346) = v30 + 1;
          }

          sub_245F0A878((a1 + 4752), &v41);
          if (*(a1 + 6176) == 1)
          {
            sub_245F1AB30(a1);
          }
        }

        if (*(a1 + 4346))
        {
          v34 = *(a1 + 4346) + *(a1 + 4344) - 1;
          v35 = *(a1 + 4348);
          if (v34 < v35)
          {
            v35 = 0;
          }

          *(a1 + 6144) = *(a1 + 8 * (v34 - v35) + 4352);
          v36 = *(a1 + 4752) + *(a1 + 4754) - 1;
          v37 = *(a1 + 4756);
          if (v36 < v37)
          {
            v37 = 0;
          }

          *(a1 + 6152) = *(a1 + 16 * (v36 - v37) + 4760);
        }

        if (*(a1 + 5600) == 16)
        {
          v38 = *(a1 + 5592);
          *(a1 + 5600) = 15;
          *(a1 + 5592) = v38 + 1;
          sub_245F1DBB8(a1 + 5560, 1);
        }

        sub_245F154C8(a1 + 5560, &v43);
        if (*(a1 + 5648) == 16)
        {
          v39 = *(a1 + 5640);
          *(a1 + 5648) = 15;
          *(a1 + 5640) = v39 + 1;
          sub_245F1DBB8(a1 + 5608, 1);
        }

        sub_245F154C8(a1 + 5608, &v42);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else
      {
        *(a1 + 6144) = a2;
        *(a1 + 6152) = sub_245F24AA4(a3);
        *(a1 + 6156) = v15;
        *(a1 + 6160) = v16;
        *(a1 + 6164) = v17;
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_245F1A8DC(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v5 = a1[1];
  if (a1[1])
  {
    v8 = a1 + 4;
    v9 = *a1;
    v10 = v5 + v9 - 1;
    v11 = *(a1 + 1);
    if (v10 < v11)
    {
      v11 = 0;
    }

    if (*&v8[4 * (v10 - v11)] >= a2 && *&v8[4 * v9] < a3)
    {
      v13 = v5 - 1;
      do
      {
        v14 = v13;
        if (!v13)
        {
          break;
        }

        v15 = sub_245F1BE4C(a1, v13);
        v13 = v14 - 1;
      }

      while (*v15 >= a3);
      if (*sub_245F1BE4C(a1, v14) > a2)
      {
        v16 = v14 + 1;
        do
        {
          v17 = v16 - 1;
          if (v16 == 1)
          {
            goto LABEL_14;
          }

          v18 = sub_245F1BE4C(a1, v16 - 2);
          v16 = v17;
        }

        while (*v18 > a2);
        while (v17 <= v14)
        {
LABEL_14:
          v19 = sub_245F1BE4C(a1, v17);
          sub_245F1BD6C(a4, v19);
          ++v17;
        }
      }
    }
  }
}

void sub_245F1A9F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_245F1AA0C(unint64_t a1, unint64_t a2, float32x2_t *a3, uint64_t a4, unint64_t a5, float32x4_t a6)
{
  if (a2 < a1)
  {
    a6.i64[0] = 0;
  }

  else
  {
    v41 = v6;
    v42 = v7;
    v8 = a5;
    v9 = a1;
    a6.i64[0] = 0;
    if (a5 >= a1)
    {
      v12 = a2;
      v13.f32[0] = sub_245F24A60(a3, a6);
      v35.i64[0] = __PAIR64__(v14, v13.u32[0]);
      v35.i64[1] = __PAIR64__(v16, v15);
      v36 = sub_245F249DC(a4, v35.f32, v13);
      v37 = v17;
      v38 = v18;
      v39 = v19;
      LODWORD(v40) = sub_245F24AA4(&v36);
      *(&v40 + 4) = __PAIR64__(v21, v20);
      HIDWORD(v40) = v22;
      v23.f32[0] = sub_245F24F24(&v40);
      v24 = (v12 - v9) * 0.000001;
      *&v24 = v24;
      v26 = (v8 - v9) * 0.000001;
      v23.i32[1] = v27;
      v33 = vmul_n_f32(vdiv_f32(v23, vdup_lane_s32(*&v24, 0)), v26);
      v34 = (v25 / *&v24) * v26;
      *v28.i64 = sub_245F24E08(&v35, &v33);
      v36 = sub_245F249DC(&v35, a3, v28);
      v37 = v29;
      v38 = v30;
      v39 = v31;
      a6.f32[0] = sub_245F24AA4(&v36);
    }
  }

  return *a6.i64;
}

uint64_t sub_245F1AB30(uint64_t result)
{
  v79 = *MEMORY[0x277D85DE8];
  if (*(result + 2))
  {
    v1 = result;
    v2 = result + 6921;
    if (*(result + 6921) == 1)
    {
      v3 = result + 4352;
      v4 = *(result + 4344) + *(result + 4346) - 1;
      v5 = *(result + 4348);
      if (v4 < v5)
      {
        v5 = 0;
      }

      v6 = *(v3 + 8 * (v4 - v5));
      v7 = *(result + 2) - 1;
      while (v7)
      {
        result = sub_245F1BE4C(v1, v7--);
        if (*result == v6)
        {
          v8 = *(v1 + 3034) - 1;
          do
          {
            v9 = v8;
            if (!v8)
            {
              break;
            }

            v10 = sub_245F1BE4C((v1 + 3032), v8);
            v8 = v9 - 1;
          }

          while (*v10 != v6);
          if (*sub_245F1BE4C((v1 + 3032), v9) != v6)
          {
            if (qword_27EE374F0 != -1)
            {
              sub_245F2CB20();
            }

            v11 = qword_27EE374F8;
            if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
            {
              v12 = *sub_245F1BE4C((v1 + 3032), v9);
              *buf = 134218496;
              *&buf[4] = v6;
              *&buf[12] = 2048;
              *&buf[14] = v12;
              v77 = 2048;
              v78 = v9;
              _os_log_impl(&dword_245D80000, v11, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedAuxDM] Expected exact source vs aux timestamp, not finding one should not have been possible. fBufAuxDM6TimestampMicroSeconds.back(): %llu, fBufSrcDM6TimestampMicroSeconds[indSrc]: %llu, indSrc: %lu", buf, 0x20u);
            }
          }

          v13 = sub_245F0C3C0((v1 + 3440), v9);
          v75[0] = sub_245F24A60(v13, v14);
          v75[1] = v15;
          v75[2] = v16;
          v75[3] = v17;
          sub_245F21210(v1 + 6176);
          v74[0] = v18.f32[0];
          v74[1] = v19;
          v74[2] = v20;
          v74[3] = v21;
          v22 = *(v1 + 4752) + *(v1 + 4754) - 1;
          v23 = *(v1 + 4756);
          if (v22 < v23)
          {
            v23 = 0;
          }

          v24.f32[0] = sub_245F249DC(v1 + 16 * (v22 - v23) + 4760, v74, v18);
          v70 = __PAIR64__(v25, v24.u32[0]);
          v71 = v26;
          v72 = v27;
          v28.f32[0] = sub_245F249DC(&v70, v75, v24);
          *buf = v28.i32[0];
          *&buf[4] = v29;
          *&buf[8] = v30;
          *&buf[12] = v31;
          v32.f32[0] = sub_245F24A60(buf, v28);
          *&v73 = __PAIR64__(v33, v32.u32[0]);
          *(&v73 + 1) = __PAIR64__(v35, v34);
          v36.f32[0] = sub_245F24A60((v1 + 6924), v32);
          *buf = v36.i32[0];
          *&buf[4] = v37;
          *&buf[8] = v38;
          *&buf[12] = v39;
          v40.f32[0] = sub_245F249DC(&v73, buf, v36);
          *&v73 = __PAIR64__(v41, v40.u32[0]);
          *(&v73 + 1) = __PAIR64__(v43, v42);
          v44 = *(v1 + 4344) + *(v1 + 4346) - 1;
          v45 = *(v1 + 4348);
          if (v44 < v45)
          {
            v45 = 0;
          }

          v46 = *(v3 + 8 * (v44 - v45));
          sub_245F1AF00(v1, &v73, v46, v40);
          v47 = *(v1 + 6888);
          *buf = sub_245F24B04(&v73, v1 + 6872, v48);
          *&buf[4] = v49;
          *&buf[8] = v50;
          *&buf[12] = v51;
          v52 = sub_245F24F24(buf);
          v53 = 0;
          v70 = __PAIR64__(v54, LODWORD(v52));
          v71 = v55;
          v56 = 0.0;
          do
          {
            v56 = v56 + (*(&v70 + v53) * *(&v70 + v53));
            v53 += 4;
          }

          while (v53 != 12);
          v57 = v47 - v46;
          if (v47 <= v46)
          {
            v57 = v46 - v47;
          }

          if (v57 <= 0x7A11F && sqrtf(v56) < 0.017453)
          {
            v73 = *(v1 + 6872);
          }

          *(v1 + 6896) = v73;
          *(v1 + 6912) = v46;
          v58 = *(v1 + 6978);
          if (*(v1 + 6978) && *(v2 + 2955) == 1)
          {
            while (v58-- >= 1)
            {
              if (*sub_245F1BE4C((v1 + 6976), v58) == v46)
              {
                v60 = sub_245F0C3C0((v1 + 7944), v58);
                v62.f32[0] = sub_245F24A60((v1 + 6924), v61);
                *buf = v62.i32[0];
                *&buf[4] = v63;
                *&buf[8] = v64;
                *&buf[12] = v65;
                LODWORD(v73) = sub_245F249DC(v60, buf, v62);
                *(&v73 + 4) = __PAIR64__(v67, v66);
                HIDWORD(v73) = v68;
                break;
              }
            }
          }

          result = *(v1 + 6696);
          if (result)
          {
            *buf = v73;
            v70 = v46;
            result = (*(*result + 48))(result, &v70, buf);
          }

          break;
        }
      }
    }
  }

  v69 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245F1AF00(uint64_t a1, float32x2_t *a2, unint64_t a3, float32x4_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1 + 4096;
  if ((*(a1 + 6921) & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 6888);
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = v6 - a3;
  if (v6 < a3)
  {
    goto LABEL_10;
  }

  v9 = *(a1 + 6944);
  if (a3 <= v9)
  {
    goto LABEL_10;
  }

  *a4.i64 = (a3 - v9) * 0.000001;
  a4.f32[0] = *a4.i64;
  if (a4.f32[0] < 5.0)
  {
    goto LABEL_10;
  }

  if (v8 >= 0x30D41)
  {
    goto LABEL_10;
  }

  v11.f32[0] = sub_245F24A60((a1 + 6924), a4);
  *buf = v11.i32[0];
  v37 = __PAIR64__(v13, v12);
  *v38 = v14;
  v15.f32[0] = sub_245F249DC(a1 + 6872, buf, v11);
  v35[0] = v15.i32[0];
  v35[1] = v16;
  v35[2] = v17;
  v35[3] = v18;
  *buf = sub_245F24B04(a2, v35, v15);
  v37 = __PAIR64__(v20, v19);
  *v38 = v21;
  v22 = sub_245F24F24(buf);
  v23 = 0;
  *v34 = v22;
  v34[1] = v24;
  v34[2] = v25;
  v26 = 0.0;
  do
  {
    v26 = v26 + (*&v34[v23] * *&v34[v23]);
    ++v23;
  }

  while (v23 != 3);
  v27 = sqrtf(v26);
  if (v27 < 0.087266)
  {
LABEL_10:
    *(a1 + 6960) = 0;
LABEL_11:
    *(v5 + 2873) = 0;
    goto LABEL_12;
  }

  v29 = *(a1 + 6960);
  if (!v29)
  {
    *(a1 + 6960) = a3;
    goto LABEL_11;
  }

  v30 = a3 >= v29;
  v31 = a3 - v29;
  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32 >= 0x4C4B40 && (*(v5 + 2873) & 1) == 0)
  {
    *(v5 + 2873) = 1;
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB34();
    }

    v33 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349824;
      v37 = a3;
      *v38 = 2050;
      *&v38[2] = v32;
      v39 = 2050;
      v40 = v8;
      v41 = 2050;
      v42 = (v27 * 57.296);
      _os_log_impl(&dword_245D80000, v33, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[checkPersistentCorrectedVsCurrentRollDelta] Detected persistent large difference between corrected vs. current roll estimate. Timestamp: %{public}llu us, sustained duration: %{public}llu us durationSinceLastCurrentUpdate: %{public}llu us, rollDelta: %{public}.3f deg", buf, 0x2Au);
    }
  }

LABEL_12:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_245F1B12C(unsigned __int16 *a1, unint64_t a2, _OWORD *a3, float a4, float a5)
{
  v79 = *MEMORY[0x277D85DE8];
  v8 = a1 + 3084;
  v76 = a5;
  v77 = a4;
  v9 = a1[1517];
  v10 = a1[1516];
  if (!a1[1517])
  {
    v21 = 0;
    goto LABEL_56;
  }

  v11 = a1 + 1520;
  v12 = v9 + v10 - 1;
  v13 = *(a1 + 759);
  if (v12 < v13)
  {
    v13 = 0;
  }

  v14 = *&v11[4 * (v12 - v13)];
  if (v14 < a2)
  {
    sub_245F1B7EC(a1, v14, a2, buf);
    v15 = *buf;
    v16 = *&buf[8];
    if (*buf == *&buf[8])
    {
      goto LABEL_48;
    }

    v17 = a1[1517];
    if (**buf - v14 > 0x9C3)
    {
      goto LABEL_32;
    }

    if (a1[1517])
    {
      v18 = v17 + a1[1516] - 1;
      v19 = *(a1 + 759);
      if (v18 < v19)
      {
        v19 = 0;
      }

      v20 = *&v11[4 * (v18 - v19)];
    }

    else
    {
      v20 = 0;
    }

    v26 = a1[2173];
    if (a1[2173])
    {
      v27 = v26 + a1[2172] - 1;
      v28 = *(a1 + 1087);
      if (v27 < v28)
      {
        v28 = 0;
      }

      v29 = *&a1[4 * (v27 - v28) + 2176];
      if (!a1[1517])
      {
LABEL_27:
        if (v26 && v17 && v29 == v20)
        {
          v30 = v26 - 1;
          a1[2173] = v30;
          if (a1[2377])
          {
            LOWORD(v31) = a1[2377] - 1;
            a1[2377] = v31;
            v31 = v31;
          }

          else
          {
            v31 = 0;
          }

          if (v30)
          {
            v69 = a1[2172] + v30 - 1;
            v70 = *(a1 + 1087);
            if (v69 < v70)
            {
              v70 = 0;
            }

            *(a1 + 768) = *&a1[4 * (v69 - v70) + 2176];
            v71 = a1[2376] + v31 - 1;
            v72 = *(a1 + 1189);
            if (v71 < v72)
            {
              v72 = 0;
            }

            *(a1 + 3076) = *&a1[8 * (v71 - v72) + 2380];
          }

          else
          {
            *v8 = 1;
          }

LABEL_33:
          v32 = a1[1516] + v17 - 1;
          v33 = *(a1 + 759);
          if (v32 < v33)
          {
            v33 = 0;
          }

          v34 = *&v11[4 * (v32 - v33)];
          v35 = a1[1720] + a1[1721] - 1;
          v36 = *(a1 + 861);
          if (v35 < v36)
          {
            v36 = 0;
          }

          v37 = *&a1[8 * (v35 - v36) + 1724];
          v75 = v37;
          do
          {
            v38 = *v15;
            v39 = sub_245F1AA0C(v34, a2, &v75, a3, *v15, v37);
            *&v74 = __PAIR64__(v40, LODWORD(v39));
            *(&v74 + 1) = __PAIR64__(v42, v41);
            v43 = a1[1517];
            v44 = *(a1 + 759);
            v45 = a1[1516];
            if (v45 + v43 >= v44)
            {
              v46 = *(a1 + 759);
            }

            else
            {
              v46 = 0;
            }

            *&v11[4 * (v45 + v43 - v46)] = v38;
            if (v44 <= v43)
            {
              if (v45 + 1 < v44)
              {
                LOWORD(v44) = 0;
              }

              a1[1516] = v45 + 1 - v44;
            }

            else
            {
              a1[1517] = v43 + 1;
            }

            sub_245F0A878(a1 + 1720, &v74);
            ++v15;
          }

          while (v15 != v16);
          v15 = *buf;
LABEL_48:
          if (!v15)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

LABEL_32:
        if (!v17)
        {
LABEL_49:
          *&buf[8] = v15;
          operator delete(v15);
LABEL_50:
          v9 = a1[1517];
          v10 = a1[1516];
          if (a1[1517])
          {
            v47 = v9 + v10 - 1;
            v48 = *(a1 + 759);
            if (v47 < v48)
            {
              v48 = 0;
            }

            v21 = *&v11[4 * (v47 - v48)];
            if (v21 + 2500 >= a2)
            {
LABEL_66:
              if (*(a1 + 768) > (*(a1 + 849) + 10000))
              {
                sub_245F196C0(a1);
                sub_245F1C1D8(a1);
              }

              if (*(a1 + 536) == 16)
              {
                v54 = *(a1 + 535);
                *(a1 + 536) = 15;
                *(a1 + 535) = v54 + 1;
                sub_245F1DBB8((a1 + 2124), 1);
              }

              sub_245F154C8((a1 + 2124), &v77);
              if (*(a1 + 542) == 16)
              {
                v55 = *(a1 + 541);
                *(a1 + 542) = 15;
                *(a1 + 541) = v55 + 1;
                sub_245F1DBB8((a1 + 2148), 1);
              }

              sub_245F154C8((a1 + 2148), &v76);
              v56 = *(a1 + 868);
              v57 = (a2 - v56) * 0.000001;
              if (a2 <= v56)
              {
                v57 = 0.0;
              }

              *(a1 + 2468) = v57;
              if (!a1[1])
              {
                goto LABEL_81;
              }

              v58 = a1[1] + *a1 - 1;
              v59 = *(a1 + 1);
              if (v58 < v59)
              {
                v59 = 0;
              }

              v60 = *&a1[4 * (v58 - v59) + 4];
              if (v60)
              {
                v61 = v60 - v21;
                if (v60 <= v21)
                {
                  v61 = v21 - v60;
                }

                v62 = v61 > 0x124F7;
                v8[802] = v61 < 0x124F8;
              }

              else
              {
LABEL_81:
                v8[802] = 0;
                v62 = 1;
              }

              v63 = v8[800] ^ 1 | v62;
              v8[3709] = v63 & 1;
              if (*(a1 + 700))
              {
                sub_245F12BC8(v73, a1 + 695);
                v64 = sub_245F10E5C(v73);
                v65 = *&v64 < 0.7854;
                sub_245F12B1C(v73);
                if ((v8[3709] & 1) == 0)
                {
LABEL_94:
                  if (v8[801] & v63)
                  {
                    sub_245F1B91C(a1);
                    v8[801] = 0;
                    *(a1 + 870) = 0;
                  }

                  goto LABEL_96;
                }
              }

              else
              {
                if ((v63 & 1) == 0)
                {
                  goto LABEL_94;
                }

                v65 = 1;
              }

              if (v8[3708] == 1 && v65 && *(a1 + 2468) > 5.0)
              {
                sub_245F1B91C(a1);
                v8[3708] = 0;
                v8[801] = 0;
                *(a1 + 870) = 0;
                if (qword_27EE374F0 != -1)
                {
                  sub_245F2CB34();
                }

                v66 = qword_27EE374F8;
                if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
                {
                  v67 = *(a1 + 2468);
                  *buf = 134349312;
                  *&buf[4] = a2;
                  *&buf[12] = 2050;
                  *&buf[14] = v67;
                  _os_log_impl(&dword_245D80000, v66, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedSrcDM] Performed soft reset on the first hover-or-out opportunity. Timestamp: %{public}llu us, durationFromSessionStartSeconds: %{public}.3f s", buf, 0x16u);
                }
              }

              goto LABEL_94;
            }
          }

          else
          {
            v21 = 0;
          }

LABEL_56:
          v49 = *(a1 + 759);
          v50 = v10 + v9;
          if (v50 >= v49)
          {
            v51 = *(a1 + 759);
          }

          else
          {
            v51 = 0;
          }

          *&a1[4 * (v50 - v51) + 1520] = a2;
          if (v49 <= v9)
          {
            v52 = v10 + 1;
            if (v10 + 1 >= v49)
            {
              v53 = v49;
            }

            else
            {
              v53 = 0;
            }

            a1[1516] = v52 - v53;
          }

          else
          {
            a1[1517] = v9 + 1;
          }

          sub_245F0A878(a1 + 1720, a3);
          goto LABEL_66;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v29 = 0;
      if (!a1[1517])
      {
        goto LABEL_27;
      }
    }

    LOWORD(v17) = v17 - 1;
    a1[1517] = v17;
    if (a1[1721])
    {
      --a1[1721];
    }

    goto LABEL_27;
  }

  if (qword_27EE374F0 != -1)
  {
    sub_245F2CB20();
  }

  v22 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
  {
    v23 = a1[1516] + a1[1517] - 1;
    v24 = *(a1 + 759);
    if (v23 < v24)
    {
      v24 = 0;
    }

    v25 = *&v11[4 * (v23 - v24)];
    *buf = 134218240;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = v25;
    _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedSrcDM] SrcDM timestamp must be greater than the last value. Input: %llu us, last: %llu us", buf, 0x16u);
  }

LABEL_96:
  v68 = *MEMORY[0x277D85DE8];
}

void sub_245F1B7EC(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v5 = a1[1];
  if (a1[1])
  {
    v8 = a1 + 4;
    v9 = *a1;
    v10 = v5 + v9 - 1;
    v11 = *(a1 + 1);
    if (v10 < v11)
    {
      v11 = 0;
    }

    if (*&v8[4 * (v10 - v11)] >= a2 && *&v8[4 * v9] < a3)
    {
      v13 = v5 - 1;
      do
      {
        v14 = v13;
        if (!v13)
        {
          break;
        }

        v15 = sub_245F1BE4C(a1, v13);
        v13 = v14 - 1;
      }

      while (*v15 >= a3);
      if (*sub_245F1BE4C(a1, v14) > a2)
      {
        v16 = v14 + 1;
        do
        {
          v17 = v16 - 1;
          if (v16 == 1)
          {
            goto LABEL_14;
          }

          v18 = sub_245F1BE4C(a1, v16 - 2);
          v16 = v17;
        }

        while (*v18 > a2);
        while (v17 <= v14)
        {
LABEL_14:
          v19 = sub_245F1BE4C(a1, v17);
          sub_245F1BD6C(a4, v19);
          ++v17;
        }
      }
    }
  }
}

void sub_245F1B900(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245F1B91C(uint64_t result)
{
  v1 = result + 4096;
  if (*(result + 6921) == 1)
  {
    v2 = result;
    v3 = *(result + 6912);
    if (v3)
    {
      if (*(result + 6704) == 1)
      {
        v4 = *(result + 6728);
        if (v4 <= v3)
        {
          v5 = v3 - v4;
        }

        else
        {
          v5 = v4 - v3;
        }

        if (v5 <= 0x30D40)
        {
          *v6.i64 = sub_245F0D1C4(result + 6704);
          LODWORD(v10) = sub_245F249DC(v2 + 6896, (v2 + 6924), v6);
          *(&v10 + 4) = __PAIR64__(v8, v7);
          HIDWORD(v10) = v9;
          sub_245F0CEAC(v1 + 2608, &v10, *(v2 + 6912), 0.0017453, 0.017453);
          result = sub_245F1FFF0(v2 + 6176);
          *(v2 + 6792) = *(v2 + 6912);
        }
      }
    }
  }

  return result;
}

void sub_245F1B9E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_245F1BCCC(&v22, *(a1 + 2));
  if (*(a1 + 2))
  {
    v4 = 0;
    do
    {
      v5 = sub_245F1BE4C(a1, v4);
      sub_245F1BD6C(&v22, v5);
      ++v4;
    }

    while (v4 < *(a1 + 2));
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_245F1BCCC(&v19, *(a1 + 3034));
  if (*(a1 + 3034))
  {
    v6 = 0;
    do
    {
      v7 = sub_245F1BE4C((a1 + 3032), v6);
      sub_245F1BD6C(&v19, v7);
      ++v6;
    }

    while (v6 < *(a1 + 3034));
  }

  sub_245F1BF64(&v19, &v22, &v15);
  if (v15 == v16)
  {
    goto LABEL_11;
  }

  v8 = *(a1 + 4346);
  v9 = *(a1 + 4344) + v8 - 1;
  v10 = *(a1 + 4348);
  if (v9 < v10)
  {
    v10 = 0;
  }

  if (*(a1 + 8 * (v9 - v10) + 4352) < *(v19 + *v15))
  {
LABEL_11:
    sub_245F1D5D4(a2, &v31, &v28, &v25);
  }

  else
  {
    v14 = 0;
    if (v8)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (v11 >= (v16 - v15) >> 3)
        {
          break;
        }

        v13 = sub_245F1BE4C((a1 + 4344), v12);
        if (*v13 == *(v19 + *(v15 + v11)))
        {
          sub_245F1BD6C(&v25, &v14);
          sub_245F1BD6C(&v28, v15 + v11);
          sub_245F1BD6C(&v31, __p + v11++);
        }

        v12 = v14 + 1;
        v14 = v12;
      }

      while (v12 < *(a1 + 4346));
    }

    sub_245F1D5D4(a2, &v31, &v28, &v25);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_245F1BC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  sub_245F1D710(&a10);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  v25 = *(v23 - 80);
  if (v25)
  {
    *(v23 - 72) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 56);
  if (v26)
  {
    *(v23 - 48) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void *sub_245F1BCCC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_245DF8830(result, a2);
    }

    sub_245DF85A4();
  }

  return result;
}

void sub_245F1BD6C(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_245DF85A4();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_245DF8830(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_245F1BE4C(unsigned __int16 *a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D70F8);
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

void sub_245F1BF64(unint64_t **a1@<X0>, unint64_t **a2@<X1>, void *a3@<X8>)
{
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  if (v8 == v7 || (v9 = *a2, v10 = a2[1], v11 = *a2, *a2 == v10))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    v35[1] = 0;
    v36 = 0;
    v35[0] = 0;
    a3[4] = 0;
    a3[5] = 0;
    goto LABEL_24;
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  sub_245F1DC48(v8, v7, v11, v10, &__p, v37);
  v12 = __p;
  if (__p == v31)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    v35[1] = 0;
    v36 = 0;
    v35[0] = 0;
    a3[4] = 0;
    a3[5] = 0;
    v33[1] = 0;
    v34 = 0;
    v33[0] = 0;
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v13 = (v31 - __p) >> 3;
  v14 = a1[1];
  v16 = *a2;
  v15 = a2[1];
  v17 = v14 - *a1;
  if (v14 != *a1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v17 >> 3;
    v22 = 1;
    do
    {
      if ((*a1)[v19] == *(__p + v18))
      {
        v37[0] = v19;
        sub_245F1BD6C(v35, v37);
        ++v20;
      }

      if (v21 <= v22)
      {
        break;
      }

      v19 = v22;
      v18 = v20;
      ++v22;
    }

    while (v13 > v20);
  }

  if (v15 == v16)
  {
    v29 = 0;
    v28 = 0uLL;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v15 - v16;
    v27 = 1;
    do
    {
      if ((*a2)[v24] == *(__p + v23))
      {
        v37[0] = v24;
        sub_245F1BD6C(v33, v37);
        ++v25;
      }

      if (v26 <= v27)
      {
        break;
      }

      v24 = v27;
      v23 = v25;
      ++v27;
    }

    while (v13 > v25);
    v28 = *v33;
    v29 = v34;
  }

  *a3 = *v35;
  a3[2] = v36;
  v35[1] = 0;
  v36 = 0;
  v35[0] = 0;
  *(a3 + 3) = v28;
  a3[5] = v29;
  v33[1] = 0;
  v34 = 0;
  v33[0] = 0;
  v12 = __p;
  if (__p)
  {
LABEL_22:
    v31 = v12;
    operator delete(v12);
    if (v33[0])
    {
      v33[1] = v33[0];
      operator delete(v33[0]);
    }
  }

LABEL_24:
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }
}

void sub_245F1C194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_245F1C1D8(uint64_t a1)
{
  v114 = *MEMORY[0x277D85DE8];
  sub_245F1C968(a1, v105);
  if (v105[0] == 1)
  {
    v2 = v108;
    v3 = v106;
    v103 = 0;
    v104 = 0x3F80000000000000;
    v102[0] = 0;
    v102[1] = 0x3F80000000000000;
    *&v101 = 0;
    *(&v101 + 1) = 0x3F80000000000000;
    *&v100 = 0;
    *(&v100 + 1) = 0x3F80000000000000;
    if (*(a1 + 3034))
    {
      if (*(a1 + 4346))
      {
        v4 = *(a1 + 3034) + *(a1 + 3032) - 1;
        v5 = *(a1 + 3036);
        if (v4 < v5)
        {
          v5 = 0;
        }

        v6 = *(a1 + 8 * (v4 - v5) + 3040);
        v7 = *(a1 + 6944);
        if (*(a1 + 5600) < 5uLL)
        {
          v9 = 1;
        }

        else
        {
          sub_245F12BC8(v97, (a1 + 5560));
          v8 = sub_245F10E5C(v97);
          v9 = *&v8 >= 0.087266;
          sub_245F12B1C(v97);
        }

        if (*(a1 + 4288) < 5uLL)
        {
          v11 = 1;
        }

        else
        {
          sub_245F12BC8(v96, (a1 + 4248));
          v10 = sub_245F10E5C(v96);
          v11 = *&v10 >= 0.087266;
          sub_245F12B1C(v96);
        }

        if (v2 + 1 != v3)
        {
          v13 = 0;
          v14 = v2 + 1 - v3;
          v88 = (v6 - v7) > 0x4C4B3F || v9 || v11;
          v15 = v107;
          if (v14 <= 1)
          {
            v14 = 1;
          }

          v89 = v14;
          while (1)
          {
            v16 = *sub_245F1BE4C((a1 + 4344), v3 + v13);
            v17 = *sub_245F1BE4C((a1 + 4344), v3 + v13);
            if (v17 != *sub_245F1BE4C((a1 + 3032), v15 + v13))
            {
              if (qword_27EE374F0 != -1)
              {
                sub_245F2CB34();
              }

              v18 = qword_27EE374F8;
              if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
              {
                v19 = *sub_245F1BE4C((a1 + 4344), v3 + v13);
                v20 = *sub_245F1BE4C((a1 + 3032), v15 + v13);
                *buf = 134218240;
                v112 = v19;
                LOWORD(v113[0]) = 2048;
                *(v113 + 2) = v20;
                _os_log_impl(&dword_245D80000, v18, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedSrcDM] aux timestamp: %llu us does not match the src timestamp: %llu", buf, 0x16u);
              }
            }

            v21 = sub_245F0C3C0((a1 + 3440), v15 + v13);
            LODWORD(v103) = sub_245F24A60(v21, v22);
            HIDWORD(v103) = v23;
            v104 = __PAIR64__(v25, v24);
            *v102[0].f32 = *sub_245F0C3C0((a1 + 4752), v3 + v13);
            sub_245F21210(a1 + 6176);
            *buf = v26.i32[0];
            v112 = __PAIR64__(v28, v27);
            v113[0] = v29;
            v30.f32[0] = sub_245F249DC(v102, buf, v26);
            v90 = __PAIR64__(v31, v30.u32[0]);
            v91 = v32;
            v92 = v33;
            v34.f32[0] = sub_245F249DC(&v90, &v103, v30);
            v93 = __PAIR64__(v35, v34.u32[0]);
            v94 = v36;
            v95 = v37;
            v38.f32[0] = sub_245F24A60(&v93, v34);
            *&v101 = __PAIR64__(v39, v38.u32[0]);
            *(&v101 + 1) = __PAIR64__(v41, v40);
            if ((*(a1 + 6704) & 1) == 0)
            {
              break;
            }

            v42.f32[0] = sub_245F24A60((a1 + 6776), v38);
            v93 = __PAIR64__(v43, v42.u32[0]);
            v94 = v44;
            v95 = v45;
            LODWORD(v100) = sub_245F249DC(&v101, &v93, v42);
            *(&v100 + 4) = __PAIR64__(v47, v46);
            HIDWORD(v100) = v48;
            v49 = (v16 - *(a1 + 6792)) * 0.000001;
            if (v49 >= 0.0000001)
            {
              v98.f32[0] = sub_245F24F24(&v100) / v49;
              v98.f32[1] = v50 / v49;
              v99 = v51 / v49;
              if (!v88)
              {
                v99 = 0.0;
                v98 = 0;
              }

              sub_245F0D1E8((a1 + 6704), &v98, v16);
              sub_245F210D0(a1 + 6176, v16);
              v52 = 0;
              v53 = 0.0;
              do
              {
                v53 = v53 + (v98.f32[v52] * v98.f32[v52]);
                ++v52;
              }

              while (v52 != 3);
              v54 = sqrtf(v53);
              v55 = *(a1 + 5658);
              v56 = *(a1 + 5660);
              v57 = *(a1 + 5656);
              if (v57 + v55 >= v56)
              {
                v58 = *(a1 + 5660);
              }

              else
              {
                v58 = 0;
              }

              *(a1 + 5664 + 4 * (v57 + v55 - v58)) = v54;
              if (v56 <= v55)
              {
                if (v57 + 1 < v56)
                {
                  LOWORD(v56) = 0;
                }

                *(a1 + 5656) = v57 + 1 - v56;
              }

              else
              {
                *(a1 + 5658) = v55 + 1;
              }

              if (v109 == 1)
              {
                v59 = __p;
                v60 = *(__p + v13);
                if (v60 == -1)
                {
                  v75 = 0;
                }

                else
                {
                  v61 = sub_245F1BE4C((a1 + 968), v60);
                  v93.i32[0] = sub_245F24A60((a1 + 6708), v62);
                  v93.i32[1] = v63;
                  v94 = v64;
                  v95 = v65;
                  v66 = sub_245F0F554(&v93);
                  v68 = fmodf((v67 - v61[1]) + 3.1416, 6.2832);
                  if (v68 < 0.0)
                  {
                    v68 = v68 + 6.2832;
                  }

                  v69 = fabsf(v68 + -3.1416);
                  v70 = *v61;
                  v71 = fmodf((v66 - *v61) + 3.1416, 6.2832);
                  if (v71 < 0.0)
                  {
                    v71 = v71 + 6.2832;
                  }

                  v72 = fabsf(v71 + -3.1416);
                  v73 = v69 <= 0.7854 || v70 <= 0.17453;
                  v74 = !v73;
                  v75 = v74 & (v72 < 0.17453);
                }

                if ((*(a1 + 6472) & 1) != 0 || v75)
                {
                  v76 = v59[v13];
                  if (v76 != -1)
                  {
                    v87 = sub_245F1BE4C((a1 + 968), v76);
                    if (*v87 > 0.17453)
                    {
                      v77 = sub_245F1BE4C((a1 + 1936), v76);
                      v78 = 9.0;
                      if (v75)
                      {
                        v78 = 1.0;
                      }

                      v93 = vmul_n_f32(*v77, v78);
                      v79 = sub_245F0C3C0((a1 + 3440), v15 + v13);
                      sub_245F210D8(a1 + 6176, v87, &v93, v79, v102, v16);
                      v80 = *(a1 + 5600);
                      v81 = 0.0;
                      v82 = 0.0;
                      if (v80)
                      {
                        v82 = *(*(*(a1 + 5568) + (((v80 + *(a1 + 5592) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v80 + *(a1 + 5592) - 1) & 0x3FF));
                      }

                      for (i = 0; i != 3; ++i)
                      {
                        v81 = v81 + (v98.f32[i] * v98.f32[i]);
                      }

                      if (sqrtf(v81) < 0.87266 && v82 < 0.87266)
                      {
                        v84 = 0;
                        v85 = 0.0;
                        do
                        {
                          v85 = v85 + (v98.f32[v84] * v98.f32[v84]);
                          ++v84;
                        }

                        while (v84 != 3);
                        v73 = fmaxf(sqrtf(v85), v82) <= 0.5236;
                        v86 = 9.0;
                        if (v73)
                        {
                          v86 = 1.0;
                        }

                        v90 = vmul_n_f32(v93, v86);
                        sub_245F0DB8C(a1 + 6704, v87, &v90, v16);
                      }
                    }
                  }
                }
              }

              goto LABEL_36;
            }

LABEL_37:
            if (++v13 == v89)
            {
              goto LABEL_13;
            }
          }

          sub_245F0D1C4(a1 + 6704);
          sub_245F0CEAC(a1 + 6704, &v101, v16, 0.0017453, 0.017453);
LABEL_36:
          *(a1 + 6776) = v101;
          *(a1 + 6792) = v16;
          goto LABEL_37;
        }
      }
    }
  }

LABEL_13:
  if (__p)
  {
    operator delete(__p);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_245F1C91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245F1C968(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  if (*(a1 + 6176) != 1 || !a1[2173] || !a1[1517])
  {
    goto LABEL_35;
  }

  v4 = a1 + 2176;
  v5 = a1[2173] + a1[2172] - 1;
  v6 = *(a1 + 1087);
  if (v5 < v6)
  {
    v6 = 0;
  }

  v7 = *&v4[4 * (v5 - v6)];
  v8 = a1[1516];
  if (v7 < *&a1[4 * v8 + 1520])
  {
    goto LABEL_35;
  }

  v9 = *(a1 + 849);
  if (v7 <= v9)
  {
    goto LABEL_35;
  }

  v10 = a1[1517] + v8 - 1;
  v11 = *(a1 + 759);
  if (v10 < v11)
  {
    v11 = 0;
  }

  if (*&a1[4 * (v10 - v11) + 1520] <= v9)
  {
    goto LABEL_35;
  }

  v12 = 0;
  do
  {
    v13 = sub_245F1BE4C(a1 + 1516, v12);
    v14 = a1[1517];
    if (*v13 >= *&v4[4 * a1[2172]])
    {
      break;
    }

    ++v12;
  }

  while (v12 < v14);
  if (v12 == v14 || !a1[2173])
  {
    goto LABEL_35;
  }

  v15 = 0;
  do
  {
    v16 = *sub_245F1BE4C(a1 + 2172, v15);
    v17 = sub_245F1BE4C(a1 + 1516, v12);
    v18 = a1[2173];
    if (v16 >= *v17)
    {
      break;
    }

    ++v15;
  }

  while (v15 < v18);
  if (v15 == v18)
  {
    goto LABEL_35;
  }

  v19 = *sub_245F1BE4C(a1 + 2172, v15);
  if (v19 != *sub_245F1BE4C(a1 + 1516, v12))
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB20();
    }

    v22 = qword_27EE374F8;
    if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v20 = a1[2173];
  if (v15 < v20)
  {
    while (v12 < a1[1517])
    {
      v21 = sub_245F1BE4C(a1 + 2172, v15);
      v20 = a1[2173];
      if (*v21 > *(a1 + 849))
      {
        break;
      }

      ++v12;
      if (++v15 >= v20)
      {
        break;
      }
    }

    v20 = v20;
  }

  if (v15 == v20 || v12 == a1[1517])
  {
    goto LABEL_35;
  }

  v28 = *sub_245F1BE4C(a1 + 2172, v15);
  if (v28 != *sub_245F1BE4C(a1 + 1516, v12))
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB20();
    }

    v22 = qword_27EE374F8;
    if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_35;
    }

LABEL_30:
    v23 = *sub_245F1BE4C(a1 + 1516, v12);
    v24 = *sub_245F1BE4C(a1 + 2172, v15);
    *buf = 134218752;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    *&buf[22] = 2048;
    v56 = v15;
    v57 = 2048;
    v58 = v24;
    v25 = "[BarrelRoll]:[CMABarrelRoll]:[getPastMEKFUpdateIndices] Unexpected timestamp mismatch.indSrc: %zu, src: %llu, indAux: %zu, aux: %llu";
    v26 = v22;
    goto LABEL_31;
  }

  v29 = v12;
  v30 = v15;
  if (v15 < a1[2173])
  {
    v30 = v15;
    v29 = v12;
    while (v29 < a1[1517])
    {
      v31 = *sub_245F1BE4C(a1 + 2172, v30);
      if (v31 != *sub_245F1BE4C(a1 + 1516, v29))
      {
        break;
      }

      ++v30;
      ++v29;
      if (v30 >= a1[2173])
      {
        goto LABEL_49;
      }
    }
  }

  if (v30 && v29)
  {
LABEL_49:
    v32 = v30 - 1;
    v33 = v29 - 1;
    v34 = v32 - v15;
    if (v32 < v15 || v33 < v12)
    {
      v52 = v32;
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB20();
      }

      v53 = qword_27EE374F8;
      if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_35;
      }

      *buf = 134218752;
      *&buf[4] = v52;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v56 = v33;
      v57 = 2048;
      v58 = v12;
      v25 = "[BarrelRoll]:[CMABarrelRoll]:[getPastMEKFUpdateIndices] Unexpected index order.lastAuxInd: %zu, firstAuxInd: %zu, lastSrcInd: %zu, firstSrcInd: %zu";
    }

    else
    {
      v54 = v32;
      if (v34 == v33 - v12)
      {
        *a2 = 1;
        *(a2 + 8) = v15;
        *(a2 + 16) = v12;
        *(a2 + 24) = v32;
        *(a2 + 32) = v33;
        if (a1[1])
        {
          v35 = *sub_245F1BE4C(a1 + 2172, v15);
          v36 = a1 + 4;
          v37 = *a1 + a1[1] - 1;
          v38 = *(a1 + 1);
          if (v37 < v38)
          {
            v38 = 0;
          }

          if (v35 <= *&v36[4 * (v37 - v38)] && *sub_245F1BE4C(a1 + 2172, v54) >= *&v36[4 * *a1] && a1[1])
          {
            v39 = 0;
            do
            {
              v40 = *sub_245F1BE4C(a1, v39);
              v41 = sub_245F1BE4C(a1 + 1516, v12);
              v42 = a1[1];
              if (v40 >= *v41)
              {
                break;
              }

              ++v39;
            }

            while (v39 < v42);
            if (v39 != v42)
            {
              v43 = v39;
              sub_245F1D7A8(buf, v34 + 1);
              v44 = *buf;
              *(a2 + 48) = *buf;
              v45 = *&buf[8];
              *(a2 + 56) = *&buf[8];
              if (v45 != v44)
              {
                v46 = v45 - v44;
                if (v46 <= 1)
                {
                  v46 = 1;
                }

                v47 = v46 - 1;
                do
                {
                  v48 = v47;
                  v49 = *sub_245F1BE4C(a1 + 1516, v12);
                  v50 = v43;
                  if (v49 == *sub_245F1BE4C(a1, v43))
                  {
                    *v44 = v43++;
                    v50 = v43;
                  }

                  else
                  {
                    v51 = *sub_245F1BE4C(a1 + 1516, v12);
                    if (v51 > *sub_245F1BE4C(a1, v43))
                    {
                      break;
                    }
                  }

                  if (v50 == a1[1])
                  {
                    break;
                  }

                  v47 = v48 - 1;
                  ++v12;
                  ++v44;
                }

                while (v48);
              }

              *(a2 + 40) = 1;
            }
          }
        }

        goto LABEL_35;
      }

      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB20();
      }

      v53 = qword_27EE374F8;
      if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_35;
      }

      *buf = 134218752;
      *&buf[4] = v54;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v56 = v33;
      v57 = 2048;
      v58 = v12;
      v25 = "[BarrelRoll]:[CMABarrelRoll]:[getPastMEKFUpdateIndices] Unexpected index delta.lastAuxInd: %zu, firstAuxInd: %zu, lastSrcInd: %zu, firstSrcInd: %zu";
    }

    v26 = v53;
LABEL_31:
    _os_log_impl(&dword_245D80000, v26, OS_LOG_TYPE_DEBUG, v25, buf, 0x2Au);
  }

LABEL_35:
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245F1D028(unsigned __int16 *a1, float *a2, unint64_t *a3, float *a4)
{
  v4 = a1[2173];
  v5 = v4 - 3;
  if (v4 < 3)
  {
    return 0;
  }

  v10 = v4 - 1;
  v11 = *sub_245F1BE4C(a1 + 2172, v4 - 1);
  v12 = v4 - 2;
  v13 = *sub_245F1BE4C(a1 + 2172, v12);
  v14 = (v11 - v13) * 0.000001;
  if (v14 < 0.0000001)
  {
    return 0;
  }

  v15 = sub_245F0C3C0(a1 + 2376, v10);
  v16 = sub_245F0C3C0(a1 + 2376, v12);
  v18.f32[0] = sub_245F24A60(v16, v17);
  v52 = v18.i32[0];
  v53 = v19;
  v54 = v20;
  v55 = v21;
  LODWORD(v56) = sub_245F249DC(v15, &v52, v18);
  *(&v56 + 4) = __PAIR64__(v23, v22);
  HIDWORD(v56) = v24;
  v25 = sub_245F24F24(&v56);
  v27 = v26;
  v29 = v28;
  v30 = *sub_245F1BE4C(a1 + 2172, v5);
  v31 = (v13 - v30) * 0.000001;
  if (v31 < 0.0000001)
  {
    return 0;
  }

  v32 = v29 / v14;
  v33 = v27 / v14;
  v34 = v25 / v14;
  v35 = sub_245F0C3C0(a1 + 2376, v12);
  v36 = sub_245F0C3C0(a1 + 2376, v5);
  v38.f32[0] = sub_245F24A60(v36, v37);
  v52 = v38.i32[0];
  v53 = v39;
  v54 = v40;
  v55 = v41;
  LODWORD(v56) = sub_245F249DC(v35, &v52, v38);
  *(&v56 + 4) = __PAIR64__(v43, v42);
  HIDWORD(v56) = v44;
  v45 = sub_245F24F24(&v56) / v31;
  v47 = v46 / v31;
  v49 = v48 / v31;
  v50 = (v11 - v30) * 0.000001;
  *a2 = (v34 - v45) / v50;
  a2[1] = (v33 - v47) / v50;
  a2[2] = (v32 - v49) / v50;
  *a3 = (v13 + v11) >> 1;
  *a4 = (v34 + v45) * 0.5;
  a4[1] = (v33 + v47) * 0.5;
  a4[2] = (v32 + v49) * 0.5;
  return 1;
}

void sub_245F1D24C(unsigned __int16 *a1, float32x2_t *a2, float32x4_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a1 + 6971;
  if (a1[1])
  {
    v5 = a1[1] + *a1 - 1;
    v6 = *(a1 + 1);
    if (v5 < v6)
    {
      v6 = 0;
    }

    v7 = *&a1[4 * (v5 - v6) + 4];
  }

  else
  {
    v7 = 0.0;
  }

  v8 = *(a1 + 868);
  *a3.i64 = (LODWORD(v7) - v8) * 0.000001;
  a3.f32[0] = *a3.i64;
  v9 = 0.0;
  if (*&v7 <= v8)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a3.f32[0];
  }

  a3.i32[0] = 15.0;
  if (v10 <= 15.0)
  {
    *buf = sub_245F24B04(a2, (a1 + 3448), a3);
    v25 = COERCE_DOUBLE(__PAIR64__(v12, v11));
    *v26 = v13;
    v14 = sub_245F24F24(buf);
    v15 = 0;
    *v23 = v14;
    v23[1] = v16;
    v23[2] = v17;
    do
    {
      v9 = v9 + (*&v23[v15] * *&v23[v15]);
      ++v15;
    }

    while (v15 != 3);
    v18 = sqrtf(v9);
    if (v10 > 0.2 && v10 < 5.0)
    {
      if (v18 > 0.087266 && (*v4 & 1) == 0)
      {
        *v4 = 1;
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CB34();
        }

        v20 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          v25 = v10;
          *v26 = 2050;
          *&v26[2] = (v18 * 57.296);
          _os_log_impl(&dword_245D80000, v20, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[checkPencilDM6InitAnomaly] Detected cold start init anomaly. deltaFromSessionStartSeconds: %{public}.3f s, rollDeltaWillAndDidUpdateRad: %{public}.3f deg", buf, 0x16u);
        }
      }
    }

    else
    {
      *v4 = 0;
      if (v10 < 15.0 && v18 > 0.087266)
      {
        sub_245F1FFF0((a1 + 3088));
      }
    }

    if (*v4 == 1 && (v4[2905] & 1) == 0)
    {
      v4[2905] = 1;
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB34();
      }

      v21 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        v25 = v7;
        *v26 = 2050;
        *&v26[2] = v10;
        v27 = 2050;
        v28 = (v18 * 57.296);
        _os_log_impl(&dword_245D80000, v21, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedSrcDM] Will perform soft reset on the first hover-or-out opportunity. Timestamp: %{public}llu us, durationFromSessionStartSeconds: %{public}.3f s,  rollDeltaWillAndDidUpdateRad: %{public}.3f deg", buf, 0x20u);
      }
    }
  }

  else
  {
    *v4 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
}

double sub_245F1D50C(uint64_t a1)
{
  if (*(a1 + 6921) != 1)
  {
    return 0.0;
  }

  v15 = v1;
  v16 = v2;
  v14 = *(a1 + 6872);
  v4.f32[0] = sub_245F24A60((a1 + 6924), v14);
  v13[0] = v4.f32[0];
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v8.f32[0] = sub_245F249DC(&v14, v13, v4);
  v14.i64[0] = __PAIR64__(v9, v8.u32[0]);
  v14.i64[1] = __PAIR64__(v11, v10);
  sub_245F1D24C(a1, &v14, v8);
  LODWORD(result) = v14.i32[0];
  return result;
}

os_log_t sub_245F1D5A4()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

void *sub_245F1D5D4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_245F1D694(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_245F1D694((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_245F1D694((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  return a1;
}

void sub_245F1D660(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245F1D694(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_245DF87F4(result, a4);
  }

  return result;
}

void sub_245F1D6F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245F1D710(uint64_t a1)
{
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

uint64_t sub_245F1D754(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_245F1D7A8(void *result, unint64_t a2)
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

void sub_245F1D8A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245F1D8BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_245F1D954(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245F1DBAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_245D81068(a1);
}

uint64_t sub_245F1DBB8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

os_log_t sub_245F1DC18()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

void sub_245F1DC48(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X3>, const void **a5@<X4>, unint64_t **a6@<X8>)
{
  if (a3 != a4)
  {
    v10 = a3;
    v12 = 0;
    do
    {
      v13 = sub_245F1DD64(a1, a2, v10);
      v14 = a1 == v13;
      if (a1 == v13 && v12)
      {
        sub_245F1BD6C(a5, v13);
        v14 = 0;
        ++v13;
        ++v10;
      }

      if (v13 == a2)
      {
        break;
      }

      v15 = sub_245F1DD64(v10, a4, v13);
      v16 = v15;
      v12 = v10 == v15;
      if (v10 == v15 && v14)
      {
        sub_245F1BD6C(a5, v13);
        v12 = 0;
        ++v13;
        v10 = v16 + 1;
      }

      else
      {
        v10 = v15;
      }

      a1 = v13;
    }

    while (v10 != a4);
  }

  *a6 = a2;
  a6[1] = a4;
  a6[2] = a5;
}

unint64_t *sub_245F1DD64(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (a2 != a1)
  {
    v3 = *a3;
    if (*a1 >= *a3)
    {
      return a1;
    }

    v4 = a2 - a1;
    if (v4 >= 1)
    {
      v4 = 1;
    }

    v5 = &a1[v4];
    if (v5 == a2)
    {
LABEL_17:
      v7 = a2;
    }

    else
    {
      v6 = 1;
      while (1)
      {
        v7 = v5;
        if (*v5 >= v3)
        {
          break;
        }

        v4 = a2 - v5;
        v8 = v4 <= 2 * v6;
        v6 *= 2;
        if (v8)
        {
          v9 = v6;
        }

        else
        {
          v9 = a2 - v5;
        }

        if (!v8)
        {
          v4 = v6;
        }

        if (v6 < 0)
        {
          v4 = v9;
        }

        v5 = &v7[v4];
        a1 = v7;
        if (v5 == a2)
        {
          a1 = v7;
          goto LABEL_17;
        }
      }
    }

    if (v4)
    {
      if (v4 == 1)
      {
        return v7;
      }

      do
      {
        v10 = v4 >> 1;
        v11 = &a1[v4 >> 1];
        v13 = *v11;
        v12 = v11 + 1;
        v4 += ~(v4 >> 1);
        if (v13 < v3)
        {
          a1 = v12;
        }

        else
        {
          v4 = v10;
        }
      }

      while (v4);
    }

    return a1;
  }

  return a2;
}

float sub_245F1DE2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], a2, a3, a4);
  v8 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v5, v6, v7);
  v10 = objc_msgSend_components_fromDate_(v8, v9, 252, v4);
  v14 = objc_msgSend_copy(v10, v11, v12, v13);
  objc_msgSend_setDay_(v14, v15, 1, v16);
  objc_msgSend_setMonth_(v14, v17, 1, v18);
  v19 = objc_alloc(MEMORY[0x277CBEA80]);
  v22 = objc_msgSend_initWithCalendarIdentifier_(v19, v20, *MEMORY[0x277CBE5C0], v21);
  v25 = objc_msgSend_dateFromComponents_(v22, v23, v14, v24);
  v27 = objc_msgSend_components_fromDate_toDate_options_(v22, v26, 16, v25, v4, 0);
  v31 = objc_msgSend_year(v10, v28, v29, v30);
  v35 = fabs((objc_msgSend_day(v27, v32, v33, v34) + 1));
  return v35 / dbl_245F33120[(objc_msgSend_year(v10, v36, v37, v38) & 3) == 0] + v31;
}

void sub_245F1DF30(uint64_t a1)
{
  *(a1 + 48) = xmmword_245F32B50;
  *(a1 + 64) = xmmword_245F32B60;
  *(a1 + 80) = xmmword_245F33130;
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  *(a1 + 136) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 112);
      v2 = (*(a1 + 104) + 8);
      *(a1 + 104) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 1024;
LABEL_7:
    *(a1 + 128) = v6;
  }

  *(a1 + 144) = 1;
}

void sub_245F1DFD4(uint64_t a1, unint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, uint64_t a7, unint64_t **a8, void *a9, void *a10)
{
  v10 = *a8;
  v11 = a8[1];
  if (*a8 == v11)
  {
    return;
  }

  if (*(a7 + 2))
  {
    v20 = *(a7 + 4) == *(a7 + 2);
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v22 = 0;
    v23 = 0.0;
    do
    {
      v23 = v23 + *sub_245F09E3C(a7, v22++);
      v24 = *(a7 + 2);
    }

    while (v22 < v24);
    v10 = *a8;
    v11 = a8[1];
    v25 = v23 / v24;
    v21 = v25 > 0.05236;
    *(a1 + 148) = v25;
  }

  else
  {
    v21 = 0;
  }

  if ((v11 - v10) <= 0x3F)
  {
    v26 = 2;
LABEL_25:
    *(a1 + 145) = v26;

    sub_245F1E22C(a1, 0, a2);
    return;
  }

  while (v10 != v11)
  {
    if ((*sub_245F1893C(a6, *v10) & 1) == 0)
    {
      v26 = 3;
      goto LABEL_25;
    }

    ++v10;
  }

  if (!v21)
  {
    v26 = 4;
    goto LABEL_25;
  }

  sub_245F1E334(a1, a3, a4, a5, a8, a9, a10);
  if ((*(a1 + 52) - *(a1 + 48)) < 0.0034907 || (v27.f32[0] = *(a1 + 64) - *(a1 + 60), v27.f32[0] < 0.0034907))
  {
    v26 = 5;
    goto LABEL_25;
  }

  sub_245F1E640(a1, a3, a8, v28, v27);
  if (sub_245F1E774(a1, v28))
  {
    *(a1 + 145) = 1;
    sub_245F1E22C(a1, 1, a2);
    if (*(a1 + 136) == 16)
    {
      ++*(a1 + 128);
      *(a1 + 136) = 15;
      sub_245F1DBB8(a1 + 96, 1);
    }

    sub_245F154C8(a1 + 96, &v29);
  }

  else
  {
    *(a1 + 145) = 6;
    sub_245F1E22C(a1, 0, a2);
  }
}

void sub_245F1E22C(uint64_t a1, int a2, unint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 144) != a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB5C();
    }

    v6 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 144);
      v9[0] = 67109632;
      v9[1] = v7;
      v10 = 1024;
      v11 = a2;
      v12 = 2048;
      v13 = (a3 * 0.000001);
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilRingSensorTrustModel]:[setTrustPencilBool] Changed fTrustPencilRingSensorBool from %d to %d, t: %.6f s", v9, 0x18u);
    }

    *(a1 + 144) = a2;
  }

  v8 = *MEMORY[0x277D85DE8];
}

float sub_245F1E334(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, void *a5, void *a6, void *a7)
{
  *(a1 + 48) = xmmword_245F32B50;
  *(a1 + 64) = xmmword_245F32B60;
  *(a1 + 80) = xmmword_245F33130;
  if ((atomic_load_explicit(&qword_27EE388D0, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CB70();
  }

  if ((atomic_load_explicit(&qword_27EE388D8, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CBD0();
  }

  *(a1 + 8) = *a1;
  sub_245F1E8D0(a1, (a5[1] - *a5) >> 3);
  *(a1 + 32) = *(a1 + 24);
  sub_245F1E8D0((a1 + 24), (a5[1] - *a5) >> 3);
  if (a5[1] == *a5)
  {
    v40 = 0;
    v35 = *(a1 + 80);
    v36 = *(a1 + 92);
    v37 = *(a1 + 56);
    v39 = *(a1 + 68);
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = sub_245F0C3C0(a3, *(*a6 + 8 * v12));
      v14 = sub_245F0C3C0(a4, *(*a7 + 8 * v12));
      v16.f32[0] = sub_245F24A60(v13, v15);
      v45 = v16.f32[0];
      v46 = v17;
      v47 = v18;
      v48 = v19;
      v20.f32[0] = sub_245F249DC(v14, &v45, v16);
      v49 = __PAIR64__(v21, v20.u32[0]);
      v50 = v22;
      v51 = v23;
      v45 = sub_245F24A60(&v49, v20);
      v46 = v24;
      v47 = v25;
      v48 = v26;
      v27 = sub_245F24D2C(&v45, *&qword_27EE388E0, *(&qword_27EE388E0 + 1), *&dword_27EE388E8);
      v29 = v28;
      v45 = acosf(fmaxf(fminf(((v30 * *&dword_27EE388F8) + (v28 * *(&qword_27EE388F0 + 1))) + (v27 * *&qword_27EE388F0), 1.0), -1.0));
      sub_245F1E970(a1, &v45);
      v44 = atan2f(v29, v27);
      sub_245F1E970((a1 + 24), &v44);
      v31 = *sub_245F1BE4C(a2, *(*a5 + 8 * v12));
      v32 = *(sub_245F1BE4C(a2, *(*a5 + 8 * v12)) + 4);
      v33 = v44;
      v34 = v45;
      v35 = v45 + *(a1 + 80);
      *(a1 + 80) = v35;
      v36 = v33 + *(a1 + 92);
      *(a1 + 92) = v36;
      v37 = v31 + *(a1 + 56);
      *(a1 + 56) = v37;
      v38 = *(a1 + 72);
      v39 = v32 + *(a1 + 68);
      *(a1 + 68) = v39;
      if (v34 < v38)
      {
        *(a1 + 72) = v34;
      }

      if (v33 < *(a1 + 84))
      {
        *(a1 + 84) = v33;
      }

      if (v31 < *(a1 + 48))
      {
        *(a1 + 48) = v31;
      }

      if (v32 < *(a1 + 60))
      {
        *(a1 + 60) = v32;
      }

      if (v34 > *(a1 + 76))
      {
        *(a1 + 76) = v34;
      }

      if (v33 > *(a1 + 88))
      {
        *(a1 + 88) = v33;
      }

      if (v31 > *(a1 + 52))
      {
        *(a1 + 52) = v31;
      }

      if (v32 > *(a1 + 64))
      {
        *(a1 + 64) = v32;
      }

      ++v12;
      v40 = (a5[1] - *a5) >> 3;
    }

    while (v40 > v12);
  }

  *(a1 + 80) = v35 / v40;
  *(a1 + 92) = v36 / v40;
  *(a1 + 56) = v37 / v40;
  result = v39 / v40;
  *(a1 + 68) = result;
  return result;
}

float32x4_t sub_245F1E640@<Q0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, float32x4_t a5@<Q1>)
{
  v7 = *(a1 + 84);
  v6 = *(a1 + 88);
  v9 = *(a1 + 60);
  v8 = *(a1 + 64);
  v10 = *a3;
  if (a3[1] == *a3)
  {
    v17 = 0;
    v15 = 0uLL;
  }

  else
  {
    v14 = 0;
    v15 = 0uLL;
    do
    {
      v19 = v15;
      v16 = *sub_245F1BE4C(a2, *(v10 + 8 * v14));
      a5.f32[0] = *(*(a1 + 24) + 4 * v14) - *(sub_245F1BE4C(a2, *(*a3 + 8 * v14)) + 4);
      a5.f32[1] = a5.f32[0] - (*(a1 + 92) - *(a1 + 68));
      a5.f32[2] = *(*a1 + 4 * v14) - v16;
      a5.f32[3] = a5.f32[2] - (*(a1 + 80) - *(a1 + 56));
      v15 = vmlaq_f32(v19, a5, a5);
      ++v14;
      v10 = *a3;
      v17 = (a3[1] - *a3) >> 3;
    }

    while (v17 > v14);
  }

  a5.f32[0] = v17;
  *a4 = vabds_f32(v8 - v9, v6 - v7);
  result = vsqrtq_f32(vdivq_f32(v15, vdupq_lane_s32(*a5.f32, 0)));
  *(a4 + 4) = result;
  return result;
}

uint64_t sub_245F1E774(uint64_t a1, float *a2)
{
  if (*(a1 + 144))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = *"fff?";
  }

  if (*(a1 + 136))
  {
    sub_245F12BC8(v15, (a1 + 96));
    v4 = fminf(sub_245F15550(v15), 0.087266);
    sub_245F12B1C(v15);
  }

  else
  {
    v4 = 0.17453;
  }

  v5 = v3;
  v6 = v3 * *"";
  v7 = a2[3] >= (v3 * v4) || v6 <= a2[4];
  v8 = *a2;
  v9 = a2[2];
  if (!v7 && v5 * 0.043633231 > v8 && v6 > v9)
  {
    return 1;
  }

  v12 = v5 * 0.00872664619;
  v13 = v5 * 0.0872664619 > a2[4];
  v14 = v5 * 0.00349065848;
  if (v12 <= v8)
  {
    v13 = 0;
  }

  return v14 > v9 && v13;
}

void *sub_245F1E8D0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_245DF85BC(result, a2);
    }

    sub_245DF85A4();
  }

  return result;
}

void sub_245F1E970(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_245DF85A4();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_245DF85BC(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

os_log_t sub_245F1EA50()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

uint64_t sub_245F1EA80(uint64_t a1)
{
  v2 = a1 + 32;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  v4 = 0;
  sub_245F1FDAC(a1 + 32, sub_245F1EB50, &v4, 0x2710uLL);
  *(a1 + 88) = v2;
  *(a1 + 96) = a1 + 56;
  *(a1 + 104) = 10000;
  *(a1 + 112) = 1;
  *(a1 + 124) = 0;
  *(a1 + 116) = 0;
  *(a1 + 132) = 0x4120000000000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 180) = 1;
  *(a1 + 184) = 1;
  *(a1 + 192) = xmmword_245F33170;
  *(a1 + 208) = 0;
  sub_245F1ECAC(a1);
  return a1;
}

void sub_245F1EB50(void *a1, float *a2, unint64_t a3)
{
  if (atomic_load_explicit(&qword_27EE38908, memory_order_acquire))
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    sub_245F2CC2C(a3);
    if (!a3)
    {
      return;
    }
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *&dword_27EE38900;
    v9 = *a2;
    sub_245F1FC44();
    v11 = v9 + (v10 * 0.5);
    if (sub_245F1FCFC() >= 0.4)
    {
      sub_245F1FC44();
      v13 = v11;
      if (v11 >= (v14 * 0.5))
      {
        sub_245F1FC44();
        v13 = v15 * 0.5;
      }
    }

    else
    {
      v12 = fminf(v11, 5.0);
      v13 = v12 + ((v12 * -2.0) * sub_245F1FCFC());
    }

    v16 = v8 * v7;
    v17 = (*a1 + v6);
    v17[2] = v13;
    v18 = sqrtf((v11 * v11) - (v13 * v13));
    v19 = __sincosf_stret(v16);
    *v17 = v19.__cosval * v18;
    v17[1] = v19.__sinval * v18;
    sub_245F1FC44();
    *(*a1 + v6 + 12) = v20 * 0.5;
    sub_245F1FC44();
    *(*a1 + v6 + 16) = v21 * 0.5;
    ++v7;
    v6 += 20;
  }

  while (a3 != v7);
}

void sub_245F1ECAC(uint64_t a1)
{
  sub_245F24680(0x2B73049Cu, 1, 1, 0, 0, 0);
  *sub_245F102D0(&v16, 0) = 0;
  *sub_245F102D0(&v16, 1uLL) = 0;
  if (*(a1 + 104))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(**(a1 + 88) + v2);
      *sub_245F102D0(&v15, 0) = v4;
      v5 = *(**(a1 + 88) + v2 + 4);
      *sub_245F102D0(&v15, 1uLL) = v5;
      v6 = v15;
      v7 = vmul_f32(v6, v6);
      v7.f32[0] = sqrtf(vaddv_f32(v7));
      if (v7.f32[0] > 0.00000011921)
      {
        v6 = vdiv_f32(v15, vdup_lane_s32(v7, 0));
      }

      v15 = v6;
      v8 = *sub_245F102D0(&v15, 0);
      v9 = sub_245F102D0(&v16, 0);
      *v9 = v8 + *v9;
      v10 = *sub_245F102D0(&v15, 1uLL);
      v11 = sub_245F102D0(&v16, 1uLL);
      *v11 = v10 + *v11;
      ++v3;
      v12 = *(a1 + 104);
      v2 += 20;
    }

    while (v3 < v12);
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = sqrtf(vaddv_f32(vmul_f32(v16, v16))) / v13;
  *(a1 + 136) = sqrtf((1.0 - v14) + (1.0 - v14));
  sub_245F24680(0x2B73049Cu, 2, 1, 0, 0, 0);
}

void sub_245F1EE54(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  sub_245F1EEB0((a1 + 32), sub_245F1EB50, &v4, a2);
  *(a1 + 104) = a2;
  sub_245F1ECAC(a1);
}

void sub_245F1EEB0(void **a1, void (*a2)(void **, uint64_t, void *), uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    a1[6] = a4;
    v8 = *a1;
    if (v8)
    {
      a1[1] = v8;
      operator delete(v8);
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_245F1FE0C(a1, a4);
    v9 = a1[3];
    if (v9)
    {
      a1[4] = v9;
      operator delete(v9);
    }

    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    sub_245F1BCCC(a1 + 3, a4);
    a2(a1, a3, a1[6]);

    sub_245F1FEC8(a1);
  }

  else
  {
    if (qword_27EE37500 != -1)
    {
      sub_245F2CC98();
    }

    v10 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_245D80000, v10, OS_LOG_TYPE_FAULT, "Number of particles must be nonzero", v11, 2u);
    }
  }
}

void sub_245F1EFDC(uint64_t a1, float32x2_t *a2, double a3)
{
  v4 = *(a1 + 144);
  if (v4 <= 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v5 = a3 - v4;
    v6 = v5;
  }

  v7 = *a2;
  v8 = vadd_f32(*(a1 + 160), vmul_n_f32(*a2, v6));
  *(a1 + 152) = *a2;
  *(a1 + 160) = v8;
  v8.f32[0] = v6 + *(a1 + 168);
  *(a1 + 168) = v8.i32[0];
  *(a1 + 144) = a3;
  if (v8.f32[0] <= 0.25)
  {
    if (*(a1 + 112) == 1)
    {
      v9 = v6;
      sub_245F1F184((a1 + 32), &v10);
      v6 = v9;
      *(a1 + 116) = v10;
      *(a1 + 132) = v11;
    }

    *&v10 = v6;
    *(&v10 + 4) = *(a1 + 152);
    BYTE12(v10) = 0;
    v11 = 0;
    sub_245F1F1E8((a1 + 116), &v10);
  }

  else
  {
    sub_245F1F0CC(a1, -1.0, *&v7);
    sub_245F1F184((a1 + 32), &v10);
    *(a1 + 116) = v10;
    *(a1 + 132) = v11;
  }

  *(a1 + 112) = 0;
}

float32_t sub_245F1F0CC(float32x2_t *a1, float a2, double a3)
{
  LODWORD(a3) = a1[21].i32[0];
  if (*&a3 > 0.0)
  {
    v7 = a1[21].i32[0];
    v8 = vdiv_f32(a1[20], vdup_lane_s32(*&a3, 0));
    v9 = 1;
    v10 = a1[22].f32[0] - a1[21].f32[1];
    v11 = a2;
    if (a1[10])
    {
      v4 = 0;
      v5 = 0;
      do
      {
        sub_245F1F1E8((*&a1[4] + v4), &v7);
        ++v5;
        v4 += 20;
      }

      while (v5 < *&a1[10]);
    }

    sub_245F1ECAC(a1);
  }

  sub_245F1F9BC(a1);
  a1[21].i32[0] = 0;
  a1[20] = 0;
  result = a1[22].f32[0];
  a1[21].f32[1] = result;
  return result;
}

void *sub_245F1F184@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = result[6];
  do
  {
    if (v4)
    {
      v5 = result[3];
      v6 = *(a2 + 4 * v3);
      v7 = (*result + v2);
      v8 = v4;
      do
      {
        v9 = *v7;
        v7 += 5;
        v10 = v9;
        v11 = *v5++;
        v6 = v6 + v10 * v11;
        --v8;
      }

      while (v8);
      *(a2 + 4 * v3) = v6;
    }

    ++v3;
    v2 += 4;
  }

  while (v3 != 5);
  return result;
}

void sub_245F1F1E8(float32x2_t *a1, uint64_t a2)
{
  v8 = *a2;
  if (*a2 != 0.0)
  {
    v40[1] = v7;
    v40[2] = v6;
    v40[3] = v5;
    v40[4] = v4;
    v40[7] = v2;
    v40[8] = v3;
    v11 = *(a2 + 4);
    v40[0] = v11;
    if (*(a2 + 12) == 1)
    {
      v12 = sqrtf(0.002 / v8);
      sub_245F1FC44();
      v14 = v13;
      v15 = sub_245F102D0(v40, 0);
      *v15 = *v15 + ((v12 * 5.5) * v14);
      sub_245F1FC44();
      v17 = v16;
      v18 = sub_245F102D0(v40, 1uLL);
      *v18 = *v18 + ((v12 * 5.5) * v17);
      sub_245F1FC44();
      v20 = v12 * v19;
      v21 = sub_245F1FCFC();
      v22 = -1.0;
      if (v21 >= 0.005)
      {
        v22 = 1.0;
      }

      v8 = *a2;
      v24 = *(v40 + 1);
      v23 = *v40;
    }

    else
    {
      v24 = *(&v11 + 1);
      v23 = *&v11;
      v20 = 0.0;
      v22 = 1.0;
    }

    *&v25 = v8 * v23;
    *&v26 = v8 * v24;
    v28 = a1[1].f32[0];
    v27 = a1[1].f32[1];
    v29 = a1->f32[1];
    v30 = (v8 * v27) + *&v25 * 0.5 * v8 + a1->f32[0];
    a1->f32[0] = v30;
    v31 = a1[2].f32[0];
    v32 = (v31 * *a2) + *&v26 * 0.5 * *a2;
    v40[0] = __PAIR64__(v26, v25);
    *&v32 = v32 + v29;
    a1->i32[1] = LODWORD(v32);
    a1[1].f32[0] = v22 * ((v20 * v8) + (v28 + *(a2 + 16)));
    a1[1].f32[1] = *&v25 + v27;
    a1[2].f32[0] = *&v26 + v31;
    if (*(a2 + 20) > 0.0 && sub_245F1FCFC() < 0.05)
    {
      v33 = sqrtf(vaddv_f32(vmul_f32(*a1, *a1)));
      sub_245F1FC44();
      v35 = (*(a2 + 20) + (v34 * 0.1)) * (*(a2 + 20) + (v34 * 0.1));
      v36 = a1[1].f32[0] * a1[1].f32[0];
      v37 = v35 - v36;
      v38 = v35 < v36;
      v39 = 0.0;
      if (!v38)
      {
        v39 = v37;
      }

      *a1 = vmul_n_f32(*a1, sqrtf(v39) / fmaxf(v33, 0.0001));
    }
  }
}

uint64_t sub_245F1F400(uint64_t result, float a2)
{
  if (*(result + 180) == 1)
  {
    *(result + 172) = a2;
    *(result + 180) = 0;
  }

  *(result + 176) = a2;
  return result;
}

void sub_245F1F41C(uint64_t a1, int a2, float a3, double a4, float a5)
{
  *a1 = a3;
  *(a1 + 4) = a5;
  if (a2)
  {
    sub_245F1EEB0((a1 + 32), sub_245F1EB50, a1, *(a1 + 104));
    sub_245F1ECAC(a1);
    *(a1 + 168) = 0;
    *(a1 + 160) = 0;
    *(a1 + 172) = *(a1 + 176);
  }

  sub_245F1F4A4(a1, 0, a4);
}

void sub_245F1F4A4(uint64_t a1, int a2, double a3)
{
  if (a2 <= 2)
  {
    v4 = *(a1 + 144);
    if (v4 > a3)
    {
      a3 = *(a1 + 144);
    }

    v5 = a3 - v4;
    v6 = v4 <= 0.0;
    v7 = 0.0;
    if (!v6)
    {
      *&v7 = v5;
    }

    *(a1 + 160) = vadd_f32(*(a1 + 160), vmul_n_f32(*(a1 + 152), *&v7));
    *&v7 = *&v7 + *(a1 + 168);
    *(a1 + 168) = LODWORD(v7);
    *(a1 + 144) = a3;
    if (a2 == 2)
    {
      sub_245F1F5BC((a1 + 32), sub_245F1F868, a1 + 8);
    }

    else if (a2 == 1)
    {
      sub_245F1F5BC((a1 + 32), sub_245F1F7E4, a1 + 24);
    }

    else
    {
      if (a2)
      {
        return;
      }

      sub_245F1F0CC(a1, *a1, v7);
      sub_245F1F5BC((a1 + 32), sub_245F1F6AC, a1);
    }

    sub_245F1F918(a1);
    *(a1 + 112) = 1;

    sub_245F1F9BC(a1);
  }
}

void sub_245F1F5BC(void *a1, float (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1[6])
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0.0;
  do
  {
    v9 = a2(*a1 + v6, a3);
    v10 = a1[3];
    v11 = *(v10 + 8 * v7) * (v9 + 0.0);
    *(v10 + 8 * v7) = v11;
    v8 = v8 + v11;
    ++v7;
    v12 = a1[6];
    v6 += 20;
  }

  while (v7 < v12);
  if (v8 > 0.000001)
  {
    if (v12)
    {
      v13 = a1[3];
      do
      {
        *v13 = *v13 / v8;
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
LABEL_9:

    sub_245F1FEC8(a1);
  }
}

float sub_245F1F6AC(float *a1, float *a2)
{
  v2 = a2[1];
  v3 = (*a2 - sqrtf(((*a1 * *a1) + (a1[1] * a1[1])) + (a1[2] * a1[2]))) / *a2;
  if (v2 <= -0.125)
  {
    v13 = &unk_245F331A0;
  }

  else
  {
    if (v2 < 0.275)
    {
      v4 = &unk_245F33580;
      v5 = 0.0;
      v6 = &unk_245F331A0;
      v7 = 4;
      v8 = &off_278E97068;
      do
      {
        v9 = **(v8 - 1);
        if (v2 > v9)
        {
          v10 = **v8;
          if (v2 <= v10)
          {
            v4 = *v8;
            v6 = *(v8 - 1);
            v5 = (v2 - v9) / (v10 - v9);
          }
        }

        ++v8;
        --v7;
      }

      while (v7);
      v11 = sub_245F1FD3C(v6, v3);
      return (v5 * sub_245F1FD3C(v4, v3)) + ((1.0 - v5) * v11);
    }

    v13 = &unk_245F33580;
  }

  return sub_245F1FD3C(v13, v3);
}

float sub_245F1F7E4(uint64_t a1, float *a2)
{
  if ((atomic_load_explicit(&qword_27EE38910, memory_order_acquire) & 1) == 0)
  {
    v5 = a1;
    v6 = a2;
    sub_245F2CCAC();
    a1 = v5;
    a2 = v6;
  }

  v2 = sqrtf(vaddv_f32(vmul_f32(*(a1 + 12), *(a1 + 12))));
  v3 = *&dword_27EE38904;
  return v3 * expf((((v2 - *a2) * (v2 - *a2)) * -0.5) / 31.36);
}

float sub_245F1F868(uint64_t a1, float *a2)
{
  v2 = (a2[2] * a2[2]) * 50.0;
  v3 = (a2[3] * a2[3]) * 50.0;
  v4 = (v2 * v3) + -0.0001;
  v5 = a2[1] - *(a1 + 16);
  v6 = 1.0 / (sqrtf(v4) * 6.28318531);
  return expf(((v5 * (((v2 / v4) * v5) + ((0.01 / v4) * (*a2 - *(a1 + 12))))) + ((*a2 - *(a1 + 12)) * (((0.01 / v4) * v5) + ((v3 / v4) * (*a2 - *(a1 + 12)))))) * -0.5) * v6;
}

void sub_245F1F918(uint64_t a1)
{
  v2 = *(a1 + 184);
  *(a1 + 184) = v2 + 1;
  if (0xAAAAAAAAAAAAAAABLL * v2 <= 0x5555555555555555)
  {
    *(a1 + 184) = 1;
    sub_245F24680(0x2B730488u, 1, 1, 0, 0, 0);
    sub_245F1FAEC(a1 + 32);

    sub_245F24680(0x2B730488u, 2, 1, 0, 0, 0);
  }
}

void sub_245F1F9BC(uint64_t a1)
{
  sub_245F24680(0x2B730498u, 1, 1, 0, 0, 0);
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = 0;
    v4 = **(a1 + 96);
    v5 = (**(a1 + 88) + 8);
    v6 = 0.0;
    v7 = *(a1 + 104);
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = -*v5;
      if (*v5 > 0.0)
      {
        v11 = *v5;
      }

      v12 = vaddv_f32(vmul_f32(*(v5 - 2), *(v5 - 2)));
      v13 = sqrtf(v12);
      v14 = sqrtf(v12 + (*v5 * *v5));
      v15 = *v4++;
      v16 = v15;
      v6 = v6 + (v16 * v11);
      v8 = v8 + (v16 * v13);
      v9 = v9 + (v16 * v14);
      if (v11 > 1.8)
      {
        v10 = v10 + v16;
        ++v3;
      }

      v5 += 5;
      --v7;
    }

    while (v7);
    v17 = v3;
  }

  else
  {
    v10 = 0.0;
    v17 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
  }

  *(a1 + 208) = v10;
  *(a1 + 192) = v6;
  *(a1 + 196) = v8;
  *(a1 + 200) = v9;
  *(a1 + 204) = v17 / v2;

  sub_245F24680(0x2B730498u, 2, 1, 0, 0, 0);
}

void sub_245F1FAEC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = sub_245F1FCFC();
  v4 = *(a1 + 48);
  v5 = **(a1 + 24);
  v6 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  sub_245F1FE0C(a1, v4);
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = v3 / v4;
    do
    {
      v11 = v7 - 1;
      if (v5 >= v10 || v9 >= v11)
      {
        v13 = v9;
      }

      else
      {
        do
        {
          v13 = v9 + 1;
          v5 = v5 + *(*(a1 + 24) + 8 + 8 * v9);
          v14 = v5 >= v10 || v13 >= v11;
          ++v9;
        }

        while (!v14);
      }

      v15 = &v6[20 * v13];
      v16 = *a1 + 20 * v8++;
      v17 = *v15;
      *(v16 + 16) = *(v15 + 4);
      *v16 = v17;
      v10 = (1.0 / v2) + v10;
      v7 = *(a1 + 48);
      v18 = v8 >= v7 || v13 >= v7;
      v9 = v13;
    }

    while (!v18);
    sub_245F1FEC8(a1);
  }

  else
  {
    sub_245F1FEC8(a1);
    if (!v6)
    {
      return;
    }
  }

  operator delete(v6);
}

void sub_245F1FC2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_245F1FC44()
{
  if (byte_27EE37538)
  {
    byte_27EE37538 = 0;
  }

  else
  {
    do
    {
      v0 = (sub_245F1FCFC() * 2.0) + -1.0;
      v1 = (sub_245F1FCFC() * 2.0) + -1.0;
      v2 = (v1 * v1) + (v0 * v0);
    }

    while (v2 >= 1.0);
    if (v2 != 0.0)
    {
      *&dword_27EE3753C = v1 * sqrtf((logf((v1 * v1) + (v0 * v0)) * -2.0) / v2);
      byte_27EE37538 = 1;
    }
  }
}

float sub_245F1FCFC()
{
  if ((atomic_load_explicit(&qword_27EE37540, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CCFC();
  }

  return vcvts_n_f32_u32(sub_245F0F530(&off_281B31D00, 0x7FFFFFFFu), 0x1FuLL);
}

float sub_245F1FD3C(float *a1, float a2)
{
  if (a1[2] > a2 || a1[31] < a2)
  {
    return a1[1];
  }

  v3 = a1 + 33;
  v4 = 29;
  while (1)
  {
    v5 = *(v3 - 30);
    if (v5 > a2)
    {
      v6 = *(v3 - 31);
      if (v6 < a2)
      {
        break;
      }
    }

    ++v3;
    if (!--v4)
    {
      return 0.0;
    }
  }

  return *(v3 - 1) + (((*v3 - *(v3 - 1)) / (v5 - v6)) * (a2 - v6));
}

uint64_t sub_245F1FDAC(uint64_t a1, void (*a2)(void **, uint64_t, void *), uint64_t a3, unint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  sub_245F1EEB0(a1, a2, a3, a4);
  return a1;
}

void sub_245F1FDE8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_245F2CD64(v1);
  _Unwind_Resume(a1);
}

void *sub_245F1FE0C(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      v2 = result[1] - *result;
      sub_245F1FF9C(result, a2);
    }

    sub_245DF85A4();
  }

  return result;
}

uint64_t sub_245F1FEC8(uint64_t result)
{
  if ((atomic_load_explicit(&qword_27EE37550, memory_order_acquire) & 1) == 0)
  {
    v9 = result;
    sub_245F2CD7C(result);
    result = v9;
  }

  v1 = *(result + 48);
  if (v1)
  {
    v2 = qword_27EE37548;
    v3 = (v1 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(v1 - 1);
    v5 = xmmword_245F32BD0;
    v6 = (*(result + 24) + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = v2;
      }

      if (v8.i8[4])
      {
        *v6 = v2;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

os_log_t sub_245F1FF6C()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  qword_27EE37508 = result;
  return result;
}

void sub_245F1FF9C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_245DF8694();
}

uint64_t sub_245F1FFF0(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 472) & 1) == 0)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CDEC();
    }

    v2 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_INFO))
    {
      v3 = sub_245F24F24((a1 + 124));
      v4 = 0;
      *v12 = v3;
      v12[1] = v5;
      v12[2] = v6;
      v7 = 0.0;
      do
      {
        v7 = v7 + (*&v12[v4] * *&v12[v4]);
        ++v4;
      }

      while (v4 != 3);
      v8 = *(a1 + 448) * 57.296;
      v9 = *(a1 + 456);
      *buf = 134349568;
      v14 = (sqrtf(v7) * 57.296);
      v15 = 2050;
      v16 = v8;
      v17 = 2050;
      v18 = v9;
      _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_INFO, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[softReset] Enter soft reset. fDMYawAlignmentQ_IP_IS.angle: %{public}.1f deg, fDMYawAlignmentMEKF angle: %{public}.1f deg, timestamp: %{public}llu", buf, 0x20u);
    }
  }

  *(a1 + 476) = *(a1 + 124);
  *(a1 + 472) = 1;
  result = sub_245F0F63C(a1 + 448);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245F20138(unsigned __int8 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  v82 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    v18 = *(a9 + 8);
    if (*a9 == v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = *sub_245F1BE4C(a2, *(v18 - 8));
    }

    sub_245F1DFD4((a1 + 144), v19, a3, a5, a6, a7, a8, a9, a10, a11);
  }

  v20 = a1[288];
  a1[296] = v20;
  if ((v20 & 1) != 0 || (*a1 & 1) == 0)
  {
    v21 = *a9;
    if (*a9 != *(a9 + 8))
    {
      v22 = 0;
      do
      {
        v23 = sub_245F1BE4C(a3, v21[v22]);
        if (*a1 == 1 && *v23 < 0.17453)
        {
          goto LABEL_62;
        }

        ++v22;
        v21 = *a9;
        v24 = *(a9 + 8);
      }

      while (v22 < (v24 - *a9) >> 3);
      v25 = sub_245F1BE4C(a2, *(v24 - 8));
      if (*a1 != 1 || ((*v25 - *(a1 + 2)) <= 0x4C4B40 ? (v26 = 200000) : (v26 = 5000000), v26 < *v25 - *(a1 + 4)))
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CDEC();
        }

        v27 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          v28 = *a1;
          v29 = (*(a9 + 8) - *a9) >> 3;
          v30 = a3[1];
          v31 = a6[1];
          v32 = *a2;
          v33 = *&a2[4 * v32 + 4];
          v34 = v32 + a2[1] - 1;
          v35 = *(a2 + 1);
          if (v34 < v35)
          {
            v35 = 0;
          }

          v36 = *&a2[4 * (v34 - v35) + 4];
          v37 = a5[1];
          *buf = 67110656;
          *&buf[4] = v28;
          *&buf[8] = 2048;
          *&buf[10] = v29;
          *&buf[18] = 2048;
          *&buf[20] = v30;
          *&buf[28] = 2048;
          *&buf[30] = v31;
          v76 = 2048;
          v77 = v37;
          v78 = 2048;
          v79 = v33;
          v80 = 2048;
          v81 = v36;
          _os_log_impl(&dword_245D80000, v27, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[updateDMInertialYaw] Starting north alignment. fBoolInitializedDMYawAlignment: %d, numMatchedSensorData: %zu, numRingSensor: %zu, numAuxDM: %zu, numSrcDM: %zu, first/last ring timestamp entry in buffer: %llu %llu us", buf, 0x44u);
        }

        sub_245F14C3C((a1 + 304));
        v38 = *a9;
        if (*(a9 + 8) != *a9)
        {
          v39 = 0;
          do
          {
            v40 = sub_245F1BE4C(a3, v38[v39]);
            v41 = sub_245F1BE4C(a4, *(*a9 + 8 * v39));
            v42 = sub_245F0C3C0(a5, *(*a10 + 8 * v39));
            v43 = sub_245F0C3C0(a6, *(*a11 + 8 * v39));
            sub_245F14C7C(a1 + 38, v40, v41, v42, v43);
            ++v39;
            v38 = *a9;
          }

          while (v39 < (*(a9 + 8) - *a9) >> 3);
        }

        if (*a1)
        {
          sub_245F15034((a1 + 304), *(a1 + 30));
        }

        else
        {
          sub_245F14E88((a1 + 304));
        }

        sub_245F15088((a1 + 304), 0x32u);
        v45 = fmodf(*(a1 + 86) + 3.1416, 6.2832);
        if (v45 < 0.0)
        {
          v45 = v45 + 6.2832;
        }

        v46 = v45 + -3.1416;
        v74 = v45 + -3.1416;
        v47 = sub_245F2082C(*(a1 + 30), v44, a3, a5, a6, a9, a10, a11);
        v49 = sub_245F2082C(v46, v48, a3, a5, a6, a9, a10, a11);
        if (*a1 != 1 || v47 >= v49)
        {
          if (*(a1 + 8) == 64)
          {
            ++*(a1 + 7);
            *(a1 + 8) = 63;
            sub_245F1DBB8((a1 + 24), 1);
          }

          sub_245F12BC8(v73, a1 + 3);
          v50 = sub_245F15550(v73);
          v51 = fmodf(v50 + 3.1416, 6.2832);
          if (v51 < 0.0)
          {
            v51 = v51 + 6.2832;
          }

          v52 = v51 + -3.1416;
          sub_245F12B1C(v73);
          if (vabds_f32(v52, v46) <= 3.14159265)
          {
            goto LABEL_46;
          }

          if (v52 <= 0.0 || v46 >= 0.0)
          {
            if (v52 >= 0.0 || v46 <= 0.0)
            {
LABEL_46:
              v55 = sub_245F1BE4C(a2, *(*(a9 + 8) - 8));
              if ((sub_245F209B8(a1, *v55, v46) & 1) == 0)
              {
                sub_245F154C8((a1 + 24), &v74);
                v56 = sub_245F1BE4C(a2, *(*(a9 + 8) - 8));
                v57 = *v56;
                *(a1 + 2) = *v56;
                if (!*(a1 + 1))
                {
                  *(a1 + 1) = v57;
                }

                sub_245F12BC8(v72, a1 + 3);
                v58 = sub_245F15550(v72);
                v59 = fmodf(v58 + 3.1416, 6.2832);
                if (v59 < 0.0)
                {
                  v59 = v59 + 6.2832;
                }

                *(a1 + 30) = v59 + -3.1416;
                sub_245F12B1C(v72);
                v60 = *(a1 + 30);
                v70 = 0;
                v71 = v60;
                sub_245F24E08(buf, &v70);
                *(a1 + 124) = *buf;
                v61 = qword_27EE374F0;
                if ((*a1 & 1) == 0)
                {
                  if (qword_27EE374F0 != -1)
                  {
                    sub_245F2CE00();
                  }

                  v62 = qword_27EE374F8;
                  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
                  {
                    v63 = *(a1 + 2) * 0.000001;
                    v64 = (*(a1 + 30) * 57.296);
                    *buf = 134218240;
                    *&buf[4] = v63;
                    *&buf[12] = 2048;
                    *&buf[14] = v64;
                    _os_log_impl(&dword_245D80000, v62, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[updateDMInertialYaw] Initialized DM north alignment, t: %.6f s, angle: %.6f deg", buf, 0x16u);
                    v61 = qword_27EE374F0;
                  }

                  else
                  {
                    v61 = -1;
                  }

                  *a1 = 1;
                }

                if (v61 != -1)
                {
                  sub_245F2CE00();
                }

                v65 = qword_27EE374F8;
                if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = *(a1 + 2) * 0.000001;
                  v67 = (*(a1 + 30) * 57.296);
                  *buf = 134218496;
                  *&buf[4] = v66;
                  *&buf[12] = 2048;
                  *&buf[14] = (v74 * 57.296);
                  *&buf[22] = 2048;
                  *&buf[24] = v67;
                  _os_log_impl(&dword_245D80000, v65, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[updateDMInertialYaw] Updated DM north alignment, t: %.6f s, new angle: %.6f deg, median angle: %.6f deg", buf, 0x20u);
                }
              }

              goto LABEL_62;
            }

            v53 = v46;
            v54 = -6.28318531;
          }

          else
          {
            v53 = v46;
            v54 = 6.28318531;
          }

          v46 = v53 + v54;
          v74 = v46;
          goto LABEL_46;
        }
      }
    }
  }

LABEL_62:
  v68 = *MEMORY[0x277D85DE8];
}

void sub_245F20804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_245F12B1C(va);
  _Unwind_Resume(a1);
}

float sub_245F2082C(float a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, uint64_t *a6, void *a7, void *a8)
{
  if (*a6 == a6[1])
  {
    return 0.0;
  }

  v58 = v11;
  v59 = v10;
  v60 = v8;
  v61 = v9;
  v48 = 0;
  v49 = a1;
  sub_245F24E08(&v47, &v48);
  v18 = *a6;
  if (a6[1] == *a6)
  {
    v45 = 0;
    v20 = 0.0;
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v21 = *(v18 + 8 * v19);
      v22 = *(*a7 + 8 * v19);
      v23 = sub_245F0C3C0(a5, *(*a8 + 8 * v19));
      v24 = sub_245F0C3C0(a4, v22);
      v26.f32[0] = sub_245F249DC(v23, v47.f32, v25);
      v57[0] = v26.i32[0];
      v57[1] = v27;
      v57[2] = v28;
      v57[3] = v29;
      v30.f32[0] = sub_245F24A60(v24, v26);
      v50 = v30.f32[0];
      v51 = v31;
      v52 = v32;
      v53 = v33;
      v34.f32[0] = sub_245F249DC(v57, &v50, v30);
      v54 = __PAIR64__(v35, v34.u32[0]);
      v55 = v36;
      v56 = v37;
      v50 = sub_245F24A60(&v54, v34);
      v51 = v38;
      v52 = v39;
      v53 = v40;
      v41 = sub_245F24D2C(&v50, 0.0, 1.0, 0.0);
      v43 = atan2f(v42, v41);
      v44 = sub_245F1BE4C(a3, v21);
      v20 = v20 + ((*(v44 + 4) - v43) * (*(v44 + 4) - v43));
      ++v19;
      v18 = *a6;
      v45 = (a6[1] - *a6) >> 3;
    }

    while (v45 > v19);
  }

  return sqrtf(v20 / v45);
}

uint64_t sub_245F209B8(void *a1, uint64_t a2, float a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v48 = a3;
  if (!a1[8])
  {
    goto LABEL_51;
  }

  if (a1[14] == 16)
  {
    ++a1[13];
    a1[14] = 15;
    sub_245F1DBB8((a1 + 9), 1);
  }

  sub_245F12BC8(v47, a1 + 3);
  v6 = sub_245F15550(v47);
  v7 = fmodf(v6 + 3.1416, 6.2832);
  if (v7 < 0.0)
  {
    v7 = v7 + 6.2832;
  }

  v8 = v7 + -3.1416;
  sub_245F12B1C(v47);
  v9 = vabds_f32(v8, a3);
  v10 = fabsf(v8) * 0.15;
  if (v10 > 0.2618)
  {
    v10 = 0.2618;
  }

  if (v9 >= v10)
  {
    if (v9 > 1.5708)
    {
      v16 = a1[10];
      v17 = a1[11];
      a1[14] = 0;
      v18 = (v17 - v16) >> 3;
      if (v18 >= 3)
      {
        do
        {
          operator delete(*v16);
          v19 = a1[11];
          v16 = (a1[10] + 8);
          a1[10] = v16;
          v18 = (v19 - v16) >> 3;
        }

        while (v18 > 2);
      }

      if (v18 == 1)
      {
        v20 = 512;
        goto LABEL_54;
      }

      if (v18 == 2)
      {
        v20 = 1024;
LABEL_54:
        a1[13] = v20;
      }

LABEL_63:
      result = 1;
      goto LABEL_64;
    }

    if (!a1[14])
    {
      sub_245F154C8((a1 + 9), &v48);
      goto LABEL_63;
    }

    sub_245F12BC8(v46, a1 + 9);
    v21 = sub_245F15550(v46);
    v22 = fmodf(v21 + 3.1416, 6.2832);
    if (v22 < 0.0)
    {
      v22 = v22 + 6.2832;
    }

    v23 = v22 + -3.1416;
    sub_245F12B1C(v46);
    v24 = fmodf((v48 - v23) + 3.1416, 6.2832);
    if (v24 < 0.0)
    {
      v24 = v24 + 6.2832;
    }

    v25 = fabsf(v24 + -3.1416);
    v26 = fabsf(v23) * 0.15;
    if (v26 > 0.2618)
    {
      v26 = 0.2618;
    }

    v27 = a1[13];
    v28 = a1[10];
    v29 = a1[11];
    v30 = &v28[v27 >> 10];
    v31 = *v30;
    v32 = (*v30 + 4 * (v27 & 0x3FF));
    v33 = *v32;
    if (v29 == v28 || (v34 = *(v28 + (((a1[14] + v27) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((a1[14] + v27) & 0x3FF), v32 == v34))
    {
      v35 = *v32;
    }

    else
    {
      v35 = *v32;
      do
      {
        v36 = *v32++;
        v37 = v36;
        if (v36 > v35)
        {
          v35 = v37;
        }

        if (v37 < v33)
        {
          v33 = v37;
        }

        if (v32 - v31 == 4096)
        {
          v38 = v30[1];
          ++v30;
          v31 = v38;
          v32 = v38;
        }
      }

      while (v32 != v34);
    }

    if (v25 <= v26 && (v35 - v33) <= 0.34907)
    {
      sub_245F154C8((a1 + 9), &v48);
      v40 = 8;
      if (v9 > 1.0472)
      {
        v40 = 2;
      }

      if (a1[14] > v40)
      {
        sub_245F20E64(a1 + 3);
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CE00();
        }

        v41 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          v50 = (v9 * 57.296);
          v51 = 2048;
          v52 = (v48 * 57.296);
          v53 = 2048;
          v54 = (v8 * 57.296);
          v55 = 2048;
          v56 = a2;
          _os_log_impl(&dword_245D80000, v41, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[updateDMInertialYaw] Reset median buffer. Large delta between new angle and median: %.1f deg, new angle: %.1f deg, old median: %.1f deg, timestamp: %llu", buf, 0x2Au);
        }

        sub_245F20E64(a1 + 9);
        goto LABEL_51;
      }

      goto LABEL_63;
    }

    a1[14] = 0;
    v42 = v29 - v28;
    if (v42 >= 3)
    {
      do
      {
        operator delete(*v28);
        v43 = a1[11];
        v28 = (a1[10] + 8);
        a1[10] = v28;
        v42 = (v43 - v28) >> 3;
      }

      while (v42 > 2);
    }

    if (v42 == 1)
    {
      v44 = 512;
    }

    else
    {
      if (v42 != 2)
      {
LABEL_62:
        sub_245F154C8((a1 + 9), &v48);
        goto LABEL_63;
      }

      v44 = 1024;
    }

    a1[13] = v44;
    goto LABEL_62;
  }

  v11 = a1[10];
  v12 = a1[11];
  a1[14] = 0;
  v13 = (v12 - v11) >> 3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v11);
      v14 = a1[11];
      v11 = (a1[10] + 8);
      a1[10] = v11;
      v13 = (v14 - v11) >> 3;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v15 = 512;
    goto LABEL_39;
  }

  if (v13 != 2)
  {
LABEL_51:
    result = 0;
    goto LABEL_64;
  }

  v15 = 1024;
LABEL_39:
  result = 0;
  a1[13] = v15;
LABEL_64:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245F20E3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_245F12B1C(va);
  _Unwind_Resume(a1);
}

void sub_245F20E64(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[4] = v6;
}

uint64_t sub_245F20EE0(unsigned __int8 *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (qword_27EE374F0 != -1)
  {
    sub_245F2CDEC();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = (*(a1 + 30) * 57.296);
    v7 = a1[296];
    v20[0] = 67110144;
    v20[1] = v3;
    v21 = 2048;
    v22 = v4;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v6;
    v27 = 1024;
    v28 = v7;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[reset] Resetting. Values before reset: fBoolInitializedDMYawAlignment: %d, fFirstDMYawAlignmentUpdateTimeMicroSeconds: %llu us, fLatestDMYawAlignmentUpdateTimeMicroSeconds: %llu us, fDMYawAlignmentAngle: %.1f deg, fBoolTrustPencilRingSensor: %d", v20, 0x2Cu);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  *(a1 + 8) = 0;
  v10 = (v9 - v8) >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v8);
      v11 = *(a1 + 5);
      v8 = (*(a1 + 4) + 8);
      *(a1 + 4) = v8;
      v10 = (v11 - v8) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 512;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_12;
    }

    v12 = 1024;
  }

  *(a1 + 7) = v12;
LABEL_12:
  v13 = *(a1 + 10);
  v14 = *(a1 + 11);
  *(a1 + 14) = 0;
  v15 = (v14 - v13) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v13);
      v16 = *(a1 + 11);
      v13 = (*(a1 + 10) + 8);
      *(a1 + 10) = v13;
      v15 = (v16 - v13) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v17 = 512;
    goto LABEL_18;
  }

  if (v15 == 2)
  {
    v17 = 1024;
LABEL_18:
    *(a1 + 13) = v17;
  }

  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 34) = 1065353216;
  sub_245F1DF30((a1 + 144));
  a1[296] = 1;
  sub_245F14C3C((a1 + 304));
  result = sub_245F0F63C((a1 + 448));
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245F210D8(uint64_t a1, float *a2, float *a3, float32x2_t *a4, float32x2_t *a5, unint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_245F0F884(a1 + 448, a2, a3, a4, a5, a6);
  if (*(a1 + 472) == 1)
  {
    *(a1 + 472) = 0;
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CDEC();
    }

    v7 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_INFO))
    {
      v8 = sub_245F24F24((a1 + 124));
      v9 = 0;
      *v16 = v8;
      v16[1] = v10;
      v16[2] = v11;
      v12 = 0.0;
      do
      {
        v12 = v12 + (*&v16[v9] * *&v16[v9]);
        ++v9;
      }

      while (v9 != 3);
      v13 = *(a1 + 448);
      v14 = *(a1 + 456);
      *buf = 134218496;
      v18 = (sqrtf(v12) * 57.296);
      v19 = 2048;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_INFO, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[feedMEKF] Exit soft reset. fDMYawAlignmentQ_IP_IS.angle: %.1f deg, fDMYawAlignmentMEKF angle: %.1f deg, timestamp: %llu", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_245F21210(uint64_t a1)
{
  if (*(a1 + 472) == 1)
  {
    v2 = *(a1 + 476);
    v3 = *(a1 + 480);
    v4 = *(a1 + 484);
    v5 = *(a1 + 488);
  }

  else
  {
    if (*(a1 + 464) == 1)
    {
      v6 = sub_245F0F648((a1 + 448));
    }

    else
    {
      v6 = *(a1 + 124);
      v7 = *(a1 + 128);
      v8 = *(a1 + 132);
      v9 = *(a1 + 136);
    }

    *(a1 + 124) = v6;
    *(a1 + 128) = v7;
    *(a1 + 132) = v8;
    *(a1 + 136) = v9;
  }
}

os_log_t sub_245F21278()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

uint64_t sub_245F212B0(uint64_t result, double a2, double a3, double a4)
{
  if (*(result + 24))
  {
    v4 = *(result + 8) + a3 - *(result + 16);
    v5 = v4 / (v4 + a4);
    *result = *result + v5 * (a2 - *result);
    *(result + 8) = v4 * (1.0 - v5);
    *(result + 16) = a3;
  }

  else
  {
    *result = a2;
    *(result + 8) = a4;
    *(result + 16) = a3;
    *(result + 24) = 1;
  }

  return result;
}

double sub_245F21304(double *a1, double *a2, double *a3)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *a2;
  v8 = *a3;
  a1[1] = v3 * v5 + *a2 * a3[1] - v4 * v6 + a2[1] * *a3;
  v9 = a3[1];
  v10 = a2[1];
  a1[2] = v7 * v5 - v3 * v9 + v10 * v6 + v4 * v8;
  v11 = a2[2];
  v12 = a3[2];
  a1[3] = v11 * v9 - v10 * v12 + v7 * v6 + v3 * v8;
  result = -(v11 * v12) - v10 * v9 - a2[3] * a3[3] + v7 * v8;
  *a1 = result;
  return result;
}

void sub_245F21380(uint64_t a1, float a2, double a3)
{
  if (a3 >= 0.0)
  {
    v29 = v6;
    v30 = v5;
    v31 = v3;
    v32 = v4;
    v24 = *(a1 + 24) + *(a1 + 24);
    v23 = *a1;
    v22 = -*a1;
    v9 = __sincos_stret(a2 * -0.5 * *"");
    cosval = v9.__cosval;
    _Q1 = *(a1 + 8);
    _Q2 = vaddq_f64(_Q1, _Q1);
    _Q4.f64[0] = v22;
    _Q4.f64[1] = v23;
    v13 = vcvt_f32_f64(vmlaq_n_f64(vmulq_f64(vextq_s8(_Q2, _Q2, 8uLL), _Q4), _Q1, v24));
    _Q2.i64[0] = _Q2.i64[1];
    __asm { FMLS            D4, D2, V1.D[1] }

    *_Q1.f64 = _Q4.f64[0];
    v27 = vmulq_n_f64(vcvtq_f64_f32(v13), v9.__sinval);
    v28 = v9.__sinval * *_Q1.f64;
    sub_245F21304(v25, &cosval, a1);
    v18 = v25[1];
    *a1 = v25[0];
    *(a1 + 16) = v18;
    v19 = *(a1 + 76);
    if (v19 >= 0.0)
    {
      v20 = v19 + a2;
      *(a1 + 76) = v20;
      v21 = 360.0;
      if (v20 >= 360.0)
      {
        v21 = -360.0;
      }

      else if (v20 >= 0.0)
      {
        return;
      }

      *(a1 + 76) = v20 + v21;
    }
  }
}

void sub_245F214AC(uint64_t a1, char *__s, char *a3)
{
  v6 = strlen(__s);
  if (v6 < 0x7FFFFFFFFFFFFFF8)
  {
    v7 = v6;
    if (v6 < 0x17)
    {
      v10 = v6;
      if (v6)
      {
        memcpy(&__dst, __s, v6);
      }

      *(&__dst + v7) = 0;
      sub_245DFA3D4(a3, "/tmp/", 1048576000, 86400, 50, "msl", 2, 300, &v8);
      sub_245DF9D2C(a1);
    }

    operator new();
  }

  sub_245DF891C();
}

void sub_245F21610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_245DF91EC(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_245F2163C()
{
  if (qword_27EE38918 != -1)
  {
    sub_245F2CE28();
  }

  return qword_27EE38B28;
}

void sub_245F21674(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a2, a3, a4);
  v8 = objc_msgSend_processName(v4, v5, v6, v7);
  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s.%@", v10, "com.apple.CoreMotionAlgorithms.Msl", v8);
  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"CoreMotionAlgorithms-%@", v12, v8);
  operator new();
}

void sub_245F21758(uint64_t a1)
{
  sub_245DFA114(a1);

  JUMPOUT(0x24C194490);
}

void sub_245F21790(uint64_t a1)
{
  if (*(a1 + 3928))
  {
    v4 = sub_245F2163C();

    sub_245DFA234(v4, a1);
  }

  else
  {
    sub_245E65E4C(v5, a1);
    Current = CFAbsoluteTimeGetCurrent();
    v6 |= 1u;
    *&v5[87] = Current;
    v3 = sub_245F2163C();
    sub_245DFA234(v3, v5);
    sub_245E5ADCC(v5);
  }
}

float *sub_245F21830(float *result, __int16 *a2, __int16 *a3, uint64_t a4, int a5)
{
  for (; a4; --a4)
  {
    _H1 = *a2;
    __asm { FCVT            S1, H1 }

    v11 = *result * _S1;
    *result = v11;
    if (a5)
    {
      _H1 = *a3;
      __asm { FCVT            S1, H1 }

      *result = v11 + _S1;
    }

    ++a3;
    ++a2;
    ++result;
  }

  return result;
}

void sub_245F21874(float *a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = a1;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v6 = a1[a2];
      if (v6 < 0.0)
      {
        v6 = 0.0;
      }
    }

    else
    {
      if (a4 != 2)
      {
        return;
      }

      v6 = 1.0 / (expf(-a1[a2]) + 1.0);
    }

LABEL_10:
    v5[a2] = v6;
    return;
  }

  if (a4 != 3)
  {
    if (a4 != 4)
    {
      return;
    }

    v7 = a1[a2];
    v6 = v7 * (1.0 / (expf(-v7) + 1.0));
    goto LABEL_10;
  }

  v8 = a3;
  v9 = a1;
  if (a3 >= 2)
  {
    v10 = a1 + 1;
    v11 = *a1;
    v12 = 4 * a3 - 4;
    v9 = a1;
    v13 = a1 + 1;
    do
    {
      v14 = *v13++;
      v15 = v14;
      if (v11 < v14)
      {
        v11 = v15;
        v9 = v10;
      }

      v10 = v13;
      v12 -= 4;
    }

    while (v12);
  }

  if (a3)
  {
    v16 = *v9;
    v17 = 0.0;
    v18 = a1;
    v19 = a3;
    do
    {
      v20 = expf(*v18 - v16);
      *v18++ = v20;
      v17 = v17 + v20;
      --v19;
    }

    while (v19);
    do
    {
      v21 = *v5;
      if (v17 > 0.0000001)
      {
        v21 = *v5 / v17;
      }

      *v5++ = v21;
      --v8;
    }

    while (v8);
  }
}

void sub_245F219BC(float *a1, float *a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a4 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if (a6)
  {
    v12 = 0;
    v13 = a5 + 1;
    v14 = (a3 + 2);
    v15 = 2 * a5 + 2;
    do
    {
      _H0 = *(a3 + 2 * v12 * v13);
      __asm { FCVT            S0, H0 }

      a2[v12] = _S0;
      v22 = v14;
      v23 = a1;
      for (i = a5; i; --i)
      {
        v25 = *v23++;
        v26 = v25;
        LOWORD(v25) = *v22++;
        _H2 = LOWORD(v25);
        __asm { FCVT            S2, H2 }

        _S0 = _S0 + (v26 * _S2);
        a2[v12] = _S0;
      }

      sub_245F21874(a2, v12++, a6, v8);
      v14 = (v14 + v15);
    }

    while (v12 != a6);
  }

  if (a4 == 3)
  {
    v29 = 3;
  }

  else
  {
    v29 = 0;
  }

  sub_245F21874(a2, 0, a6, v29);
}

double sub_245F21AC0(uint64_t a1)
{
  *a1 = &unk_2858D7078;
  *(a1 + 8) = 0x19000000000;
  *(a1 + 4816) = 0x19000000000;
  *(a1 + 8024) = 0;
  *(a1 + 8036) = 0xBF8000003F800000;
  *(a1 + 8032) = 0;
  result = 0.0;
  *(a1 + 8048) = 0u;
  *(a1 + 8064) = 0x3F80000000000000;
  return result;
}

double sub_245F21B18(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 4816) = 0;
  *(a1 + 8024) = 0;
  *(a1 + 8032) = 0;
  *(a1 + 8036) = 0xBF8000003F800000;
  result = 0.0;
  *(a1 + 8048) = 0u;
  *(a1 + 8064) = 0x3F80000000000000;
  return result;
}

__n128 sub_245F21B4C(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4)
{
  sub_245F0C75C((a1 + 8), a2);
  v7 = *(a1 + 4818);
  v8 = *(a1 + 4820);
  v9 = *(a1 + 4816);
  if (v9 + v7 >= v8)
  {
    v10 = *(a1 + 4820);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 8 * (v9 + v7 - v10) + 4824) = a4;
  if (v8 <= v7)
  {
    if (v9 + 1 < v8)
    {
      LOWORD(v8) = 0;
    }

    *(a1 + 4816) = v9 + 1 - v8;
  }

  else
  {
    *(a1 + 4818) = v7 + 1;
  }

  result = *a3;
  *(a1 + 8056) = *a3;
  return result;
}

BOOL sub_245F21BDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    return 0;
  }

  objc_msgSend_transform(a2, a2, a3, a4);
  v135 = 0.0;
  v136 = 0.0;
  v134 = 0;
  sub_245F22D48(&v136, &v135, &v134, v143, v144, v145);
  v9 = __sincos_stret(a5 * 3.14159265 / -180.0);
  sinval = v9.__sinval;
  if ((atomic_load_explicit(&qword_27EE38920, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CE3C();
    sinval = v9.__sinval;
  }

  v110 = -sinval;
  v11 = __sincos_stret(v136 * 3.14159265 / 180.0);
  v10.f64[0] = v11.__sinval;
  v109 = v10;
  v19 = __sincos_stret(v135 * 3.14159265 / 180.0);
  v15.f64[0] = v19.__cosval;
  v20 = v137;
  v21 = v138;
  v22 = v139;
  v23 = v140;
  v24 = v141;
  v25 = v142;
  if ((atomic_load_explicit(qword_27EE38928, memory_order_acquire) & 1) == 0)
  {
    v107 = v20;
    v108 = v15;
    v105 = v22;
    v106 = v21;
    v103 = v24;
    v104 = v23;
    v102 = v25;
    sub_245F2CE9C();
    v25 = v102;
    v24 = v103;
    v23 = v104;
    v22 = v105;
    v21 = v106;
    v20 = v107;
    v15.f64[0] = v108.f64[0];
  }

  v26 = 0;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v124 = xmmword_27EE38960;
  v125 = unk_27EE38970;
  v126 = xmmword_27EE38980;
  v127 = xmmword_27EE38990;
  v122 = xmmword_27EE38940;
  v123 = unk_27EE38950;
  v28.f64[0] = v9.__cosval;
  v28.f64[1] = v110;
  __asm { FMOV            V7.2D, #1.0 }

  v17.f64[0] = 0.0;
  do
  {
    v34 = *(&v122 + v26);
    v33 = *(&v122 + v26 + 16);
    v35 = (&v116 + v26);
    *v35 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v28, v34.f64[0]), v9, v34, 1), 0, v33.f64[0]);
    v35[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v17, v34), v17, v34, 1), _Q7, v33);
    v26 += 32;
  }

  while (v26 != 96);
  v36 = 0;
  v122 = v20;
  v123 = v21;
  v124 = v22;
  v125 = v23;
  v126 = v24;
  v127 = v25;
  v17.f64[1] = v11.__cosval;
  do
  {
    v38 = *(&v122 + v36 * 16);
    v37 = *(&v122 + v36 * 16 + 16);
    v27.f64[0] = -v19.__sinval;
    v39 = &v115[v36];
    v27.f64[1] = -(v15.f64[0] * v109.f64[0]);
    v15.f64[1] = -(v19.__sinval * v109.f64[0]);
    *v39 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v27, v38.f64[0]), v15, v38, 1), v17, v37.f64[0]);
    v16.f64[0] = v11.__cosval * v19.__sinval;
    v18.f64[0] = v11.__cosval * v15.f64[0];
    v39[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v18, v38), v16, v38, 1), v37, v109);
    v36 += 2;
  }

  while (v36 != 6);
  v40 = 0;
  v42 = v116;
  v41 = v117;
  v44 = v118;
  v43 = v119;
  v46 = v120;
  v45 = v121;
  do
  {
    v48 = v115[v40];
    v47 = v115[v40 + 1];
    v49 = (&v122 + v40 * 16);
    *v49 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v42, v48.f64[0]), v44, v48, 1), v46, *v47.i64);
    v49[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v41, v48.f64[0]), v43, v48, 1), v45, *v47.i64);
    v40 += 2;
  }

  while (v40 != 6);
  v50 = 0;
  v118 = xmmword_27EE389C0;
  v119 = unk_27EE389D0;
  v120 = xmmword_27EE389E0;
  v121 = unk_27EE389F0;
  v116 = xmmword_27EE389A0;
  v117 = *algn_27EE389B0;
  v52 = v122;
  v51 = v123;
  v54 = v124;
  v53 = v125;
  v56 = v126;
  v55 = v127;
  do
  {
    v58 = *(&v116 + v50);
    v57 = *(&v116 + v50 + 16);
    v59 = (&v128 + v50);
    *v59 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v52, v58.f64[0]), v54, v58, 1), v56, *&v57);
    v59[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v51, v58.f64[0]), v53, v58, 1), v55, *&v57);
    v50 += 32;
  }

  while (v50 != 96);
  v60 = *&v128 + *(&v130 + 1) + *&v133;
  if (v60 >= 0.0)
  {
    v66 = sqrt(v60 + 1.0);
    v67 = v66 + v66;
    v111 = vmulq_n_f64(vsubq_f64(vzip1q_s64(v131, v132), vextq_s8(v132, v129, 8uLL)), 1.0 / v67);
    v73 = (*(&v128 + 1) - *&v130) * (1.0 / v67);
    v68 = v67 * 0.25;
    goto LABEL_26;
  }

  if (*&v128 >= *(&v130 + 1) && *&v128 >= *&v133)
  {
    v69 = sqrt(*&v128 + 1.0 - *(&v130 + 1) - *&v133);
    v70.f64[0] = v69 + v69;
    v71 = 1.0 / v70.f64[0];
    v70.f64[1] = *(&v128 + 1) + *&v130;
    __asm { FMOV            V3.2D, #0.25 }

    _Q3.f64[1] = 1.0 / v70.f64[0];
    v111 = vmulq_f64(v70, _Q3);
    v73 = (*v129.i64 + *v132.i64) * (1.0 / v70.f64[0]);
    v74 = *v131.i64 - *&v132.i64[1];
LABEL_24:
    v68 = v74 * v71;
    goto LABEL_26;
  }

  v62 = 1.0 - *&v128;
  if (*(&v130 + 1) < *&v133)
  {
    v63 = sqrt(v62 - *(&v130 + 1) + *&v133);
    v64 = v63 + v63;
    v71 = 1.0 / v64;
    v111 = vmulq_n_f64(vaddq_f64(vzip1q_s64(v129, v131), v132), 1.0 / v64);
    v73 = v64 * 0.25;
    v74 = *(&v128 + 1) - *&v130;
    goto LABEL_24;
  }

  v75 = sqrt(*(&v130 + 1) + v62 - *&v133);
  v76 = v75 + v75;
  v77.f64[0] = 1.0 / v76;
  v73 = (*v131.i64 + *&v132.i64[1]) * (1.0 / v76);
  v68 = (*v132.i64 - *v129.i64) * (1.0 / v76);
  v77.f64[1] = v76;
  __asm { FMOV            V0.2D, #0.25 }

  _Q0.f64[0] = *(&v128 + 1) + *&v130;
  v111 = vmulq_f64(v77, _Q0);
LABEL_26:
  objc_msgSend_timestamp(a2, v12, v13, v14, v102, v103, v104, v105, v106, *&v107, *&v108);
  v80 = (v79 * 1000000.0);
  v81.i64[1] = *&v111.f64[1];
  *v81.f32 = vcvt_f32_f64(v111);
  *&v82 = v73;
  *&v122 = v81.i64[0];
  v81.f32[0] = v68;
  *(&v122 + 1) = __PAIR64__(v81.u32[0], v82);
  sub_245F24EC0(&v122, v81);
  v116 = v122;
  v86 = *(a1 + 4818);
  v87 = *(a1 + 4820);
  v88 = *(a1 + 4816);
  if (v87 == v86 && *(a1 + 4824 + 8 * v88) < v80)
  {
    v89 = v86 + v88 - 1;
    v90 = v89 >= v86 ? *(a1 + 4818) : 0;
    if (*(a1 + 4824 + 8 * (v89 - v90)) > v80)
    {
      if (v86 >= 2)
      {
        v91 = 1;
        v92 = v80;
        do
        {
          if (v92 >= *sub_245F1BE4C((a1 + 4816), v91 - 1) && v92 < *sub_245F1BE4C((a1 + 4816), v91))
          {
            v112 = (*sub_245F1BE4C((a1 + 4816), v91) - v92) * 0.000001;
            v93 = sub_245F0C7C8((a1 + 8), v91 - 1);
            v94 = sub_245F0C7C8((a1 + 8), v91);
            v95 = v112 * ((v93[1].f32[0] + v94[1].f32[0]) * 0.5);
            v113 = vmul_n_f32(vmul_f32(vadd_f32(*v93, *v94), 0x3F0000003F000000), v112);
            v114 = v95;
            *v96.i64 = sub_245F24E08(v115, &v113);
            LODWORD(v116) = sub_245F249DC(v115, &v116, v96);
            *(&v116 + 4) = __PAIR64__(v98, v97);
            HIDWORD(v116) = v99;
            v92 = *sub_245F1BE4C((a1 + 4816), v91);
          }

          ++v91;
        }

        while (v91 < *(a1 + 4818));
      }

LABEL_42:
      *(a1 + 8024) = v116;
      *(a1 + 8040) = 989432550;
      *(a1 + 8048) = v80;
      objc_msgSend_confidence(a2, v83, v84, v85);
      return v101 >= 0.85;
    }
  }

  v100 = v86 + v88 - 1;
  if (v100 < v87)
  {
    v87 = 0;
  }

  if (*(a1 + 8 * (v100 - v87) + 4824) == v80)
  {
    goto LABEL_42;
  }

  result = 0;
  *(a1 + 8024) = v122;
  *(a1 + 8040) = 989432550;
  *(a1 + 8048) = v80;
  return result;
}

uint64_t sub_245F22254(float *a1)
{
  sub_245E55178(v14);
  sub_245E7A8D8(v14);
  Current = CFAbsoluteTimeGetCurrent();
  v16 |= 1u;
  *&v14[87] = Current;
  v3 = v15;
  v4 = *a1;
  *(v15 + 40) |= 2u;
  *(v3 + 16) = v4;
  v5 = v15;
  v6 = a1[2];
  *(v15 + 40) |= 1u;
  *(v5 + 8) = v6;
  v7 = v15;
  v8 = *(a1 + 12);
  *(v15 + 40) |= 4u;
  *(v7 + 24) = v8;
  v9 = v15;
  *&v6 = a1[4];
  *(v15 + 40) |= 0x10u;
  *(v9 + 32) = LODWORD(v6);
  v10 = v15;
  *&v6 = a1[5];
  *(v15 + 40) |= 8u;
  *(v10 + 28) = LODWORD(v6);
  v11 = v15;
  LOBYTE(v8) = *(a1 + 24);
  *(v15 + 40) |= 0x20u;
  *(v11 + 36) = v8;
  v12 = v15;
  LOBYTE(v8) = *(a1 + 25);
  *(v15 + 40) |= 0x40u;
  *(v12 + 37) = v8;
  sub_245F21790(v14);
  return sub_245E5ADCC(v14);
}

uint64_t sub_245F22370(uint64_t a1, float *a2, double a3)
{
  sub_245E55178(v31);
  sub_245E7A7B8(v31);
  Current = CFAbsoluteTimeGetCurrent();
  v33 |= 1u;
  *&v31[87] = Current;
  v7 = v32;
  *(v32 + 92) |= 0x40u;
  *(v7 + 56) = a3;
  v8 = v32;
  v9 = *(a1 + 12);
  *(v32 + 92) |= 1u;
  *(v8 + 8) = v9;
  v10 = v32;
  v11 = *(a1 + 16);
  *(v32 + 92) |= 2u;
  *(v10 + 16) = v11;
  v12 = v32;
  v13 = a2[2];
  *(v32 + 92) |= 4u;
  *(v12 + 24) = v13;
  v14 = v32;
  v15 = a2[3];
  *(v32 + 92) |= 8u;
  *(v14 + 32) = v15;
  v16 = v32;
  v17 = a2[4];
  *(v32 + 92) |= 0x10u;
  *(v16 + 40) = v17;
  v18 = v32;
  v19 = a2[5];
  *(v32 + 92) |= 0x20u;
  *(v18 + 48) = v19;
  v20 = v32;
  v21 = a2[6];
  *(v32 + 92) |= 0x80u;
  *(v20 + 64) = v21;
  v22 = v32;
  v23 = a2[7];
  *(v32 + 92) |= 0x100u;
  *(v22 + 72) = v23;
  v24 = v32;
  v25 = *(a1 + 20);
  *(v32 + 92) |= 0x800u;
  *(v24 + 88) = v25;
  v26 = v32;
  v27 = *(a1 + 24);
  *(v32 + 92) |= 0x400u;
  *(v26 + 84) = v27;
  v28 = v32;
  LODWORD(v23) = *(a1 + 8);
  *(v32 + 92) |= 0x200u;
  *(v28 + 80) = LODWORD(v23);
  v29 = v32;
  LOBYTE(v27) = *(a1 + 28);
  *(v32 + 92) |= 0x1000u;
  *(v29 + 89) = v27;
  sub_245F21790(v31);
  return sub_245E5ADCC(v31);
}

uint64_t sub_245F2254C()
{
  sub_245E55178(v5);
  sub_245E7A9F8(v5);
  Current = CFAbsoluteTimeGetCurrent();
  v7 |= 1u;
  *&v5[87] = Current;
  v1 = v6;
  v2 = sub_245EBEFE4();
  *(v1 + 20) |= 1u;
  *(v1 + 8) = v2;
  v3 = v6;
  *(v6 + 20) |= 2u;
  *(v3 + 16) = 1;
  sub_245F21790(v5);
  return sub_245E5ADCC(v5);
}

uint64_t sub_245F225E8(double *a1)
{
  sub_245F24680(0x2B7304A4u, 1, 1, 0, 0, 0);
  sub_245E55178(v20);
  sub_245E7A608(v20);
  Current = CFAbsoluteTimeGetCurrent();
  v22 |= 1u;
  *&v20[87] = Current;
  v3 = v21;
  v4 = *a1;
  *(v21 + 124) |= 0x10u;
  *(v3 + 40) = v4;
  v5 = v21;
  v6 = *(a1 + 1);
  *(v21 + 124) |= 2u;
  *(v5 + 16) = v6;
  v7 = v21;
  v8 = *(a1 + 2);
  *(v21 + 124) |= 4u;
  *(v7 + 24) = v8;
  v9 = v21;
  v10 = *(a1 + 3);
  *(v21 + 124) |= 8u;
  *(v9 + 32) = v10;
  v11 = v21;
  v12 = *(a1 + 4);
  *(v21 + 124) |= 1u;
  *(v11 + 8) = v12;
  v13 = v21;
  *&v12 = a1[8];
  *(v21 + 124) |= 0x40000u;
  *(v13 + 100) = v12;
  v14 = v21;
  *&v12 = a1[9];
  *(v21 + 124) |= 0x80000u;
  *(v14 + 104) = v12;
  v15 = v21;
  *&v12 = a1[10];
  *(v21 + 124) |= 0x100000u;
  *(v15 + 108) = v12;
  v16 = v21;
  *&v12 = a1[5];
  *(v21 + 124) |= 0x2000u;
  *(v16 + 80) = v12;
  v17 = v21;
  *&v12 = a1[6];
  *(v21 + 124) |= 0x4000u;
  *(v17 + 84) = v12;
  v18 = v21;
  *&v12 = a1[7];
  *(v21 + 124) |= 0x8000u;
  *(v18 + 88) = v12;
  sub_245F21790(v20);
  sub_245F24680(0x2B7304A4u, 2, 1, 0, 0, 0);
  return sub_245E5ADCC(v20);
}

uint64_t sub_245F227B8(uint64_t *a1)
{
  sub_245E55178(v8);
  sub_245E7A968(v8);
  Current = CFAbsoluteTimeGetCurrent();
  v10 |= 1u;
  *&v8[87] = Current;
  v3 = v9;
  v4 = *a1;
  *(v9 + 20) |= 1u;
  *(v3 + 8) = v4;
  v5 = v9;
  v6 = *(a1 + 2);
  *(v9 + 20) |= 2u;
  *(v5 + 16) = v6;
  sub_245F21790(v8);
  return sub_245E5ADCC(v8);
}

uint64_t sub_245F22858(double *a1)
{
  sub_245F24680(0x2B7304A8u, 1, 1, 0, 0, 0);
  sub_245E55178(v14);
  sub_245E7A728(v14);
  Current = CFAbsoluteTimeGetCurrent();
  v16 |= 1u;
  *&v14[87] = Current;
  v3 = v15;
  v4 = *a1;
  *(v15 + 56) |= 8u;
  *(v3 + 32) = v4;
  v5 = v15;
  v6 = *(a1 + 1);
  *(v15 + 56) |= 0x10u;
  *(v5 + 40) = v6;
  v7 = v15;
  v8 = a1[2];
  *(v15 + 56) |= 2u;
  *(v7 + 16) = v8;
  v9 = v15;
  v10 = *(a1 + 3);
  *(v15 + 56) |= 0x20u;
  *(v9 + 48) = v10;
  v11 = v15;
  v12 = *(a1 + 16);
  *(v15 + 56) |= 1u;
  *(v11 + 8) = v12;
  sub_245F21790(v14);
  sub_245F24680(0x2B7304A8u, 2, 1, 0, 0, 0);
  return sub_245E5ADCC(v14);
}

uint64_t sub_245F22984(uint64_t a1)
{
  sub_245E55178(v8);
  sub_245E7A698(v8);
  Current = CFAbsoluteTimeGetCurrent();
  v10 |= 1u;
  *&v8[87] = Current;
  v3 = *(a1 + 8) != 1;
  v4 = v9;
  *(v9 + 16) |= 2u;
  *(v4 + 12) = v3;
  v5 = *(a1 + 12) != 1;
  v6 = v9;
  *(v9 + 16) |= 1u;
  *(v6 + 8) = v5;
  sub_245F21790(v8);
  return sub_245E5ADCC(v8);
}

uint64_t sub_245F22A34(uint64_t *a1)
{
  sub_245E55178(v11);
  sub_245E7A848(v11);
  Current = CFAbsoluteTimeGetCurrent();
  v13 |= 1u;
  *&v11[87] = Current;
  v3 = v12;
  v4 = *a1;
  *(v12 + 44) |= 1u;
  *(v3 + 8) = v4;
  v5 = v12;
  LODWORD(v4) = *(a1 + 2);
  *(v12 + 44) |= 2u;
  *(v5 + 16) = v4;
  v6 = v12;
  LODWORD(v4) = *(a1 + 3);
  *(v12 + 44) |= 0x10u;
  *(v6 + 28) = v4;
  v7 = v12;
  LODWORD(v4) = *(a1 + 4);
  *(v12 + 44) |= 0x20u;
  *(v7 + 32) = v4;
  v8 = v12;
  LODWORD(v4) = *(a1 + 5);
  *(v12 + 44) |= 0x40u;
  *(v8 + 36) = v4;
  v9 = v12;
  LODWORD(v4) = *(a1 + 6);
  *(v12 + 44) |= 0x80u;
  *(v9 + 40) = v4;
  sub_245F21790(v11);
  return sub_245E5ADCC(v11);
}

uint64_t sub_245F22B34(void *a1)
{
  sub_245E55178(v10);
  sub_245E7AB18(v10);
  Current = CFAbsoluteTimeGetCurrent();
  v13 |= 1u;
  v12 = Current;
  v3 = v11;
  v4 = a1[2];
  *(v11 + 40) |= 4u;
  *(v3 + 24) = v4;
  v5 = v11;
  v6 = a1[3];
  *(v11 + 40) |= 2u;
  *(v5 + 16) = v6;
  v7 = v11;
  v8 = a1[1];
  *(v11 + 40) |= 1u;
  *(v7 + 8) = v8;
  sub_245F21790(v10);
  return sub_245E5ADCC(v10);
}

uint64_t sub_245F22BEC(float *a1)
{
  sub_245E55178(v22);
  sub_245E7AA88(v22);
  Current = CFAbsoluteTimeGetCurrent();
  v24 |= 1u;
  *&v22[87] = Current;
  v3 = v23;
  v4 = *a1;
  *(v23 + 60) |= 0x10u;
  *(v3 + 40) = v4;
  v5 = v23;
  v6 = a1[2];
  *(v23 + 60) |= 2u;
  *(v5 + 16) = v6;
  v7 = v23;
  v8 = a1[3];
  *(v23 + 60) |= 0x20u;
  *(v7 + 48) = v8;
  v9 = v23;
  v10 = a1[4];
  *(v23 + 60) |= 8u;
  *(v9 + 32) = v10;
  v11 = v23;
  v12 = a1[5];
  *(v23 + 60) |= 1u;
  *(v11 + 8) = v12;
  v13 = v23;
  v14 = a1[6];
  *(v23 + 60) |= 4u;
  *(v13 + 24) = v14;
  v15 = v23;
  v16 = *(a1 + 28);
  *(v23 + 60) |= 0x100u;
  *(v15 + 58) = v16;
  v17 = v23;
  v18 = *(a1 + 29);
  *(v23 + 60) |= 0x40u;
  *(v17 + 56) = v18;
  v19 = v23;
  v20 = *(a1 + 30);
  *(v23 + 60) |= 0x80u;
  *(v19 + 57) = v20;
  sub_245F21790(v22);
  return sub_245E5ADCC(v22);
}

void sub_245F22D48(double *a1, long double *a2, double *a3, long double a4, long double a5, long double a6)
{
  v9 = sqrt(a5 * a5 + a4 * a4);
  *a2 = atan2(a5, a4) / 0.0174532925;
  v10 = v9 * 0.99330562;
  v11 = 0.0;
  v12 = 1.57079633;
  if (v9 * 0.99330562 != 0.0)
  {
    __y = a6;
    v13 = 0;
    v14 = 0.0;
    v12 = 0.0;
    do
    {
      v15 = v12;
      v12 = atan2(__y, v10);
      v16 = __sincos_stret(v12);
      v17 = 6378137.0 / sqrt(v16.__sinval * -0.00669437999 * v16.__sinval + 1.0);
      v11 = v9 / v16.__cosval - v17;
      if (vabdd_f64(v15, v12) >= 0.000001)
      {
        if (v13 > 8)
        {
          goto LABEL_13;
        }
      }

      else if (vabdd_f64(v14, v11) < 0.001 || v13 >= 9)
      {
        goto LABEL_13;
      }

      ++v13;
      v10 = v9 * (v17 / (v11 + v17) * -0.00669437999 + 1.0);
      v14 = v9 / v16.__cosval - v17;
    }

    while (v10 != 0.0);
    v12 = 1.57079633;
  }

LABEL_13:
  *a1 = v12 / 0.0174532925;
  *a3 = v11;
}

uint64_t sub_245F22EB8(uint64_t a1)
{
  *a1 = 0xBFF0000000000000;
  v2 = a1 + 20480;
  *(a1 + 8) = 3212836864;
  *(a1 + 16) = 1127481344;
  *(a1 + 20) = 0;
  *(a1 + 24) = 2;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0xBFF0000000000000;
  *(a1 + 40) = 1127481344;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0xBFF0000000000000;
  *(a1 + 72) = xmmword_245F33780;
  *(a1 + 88) = 0;
  *(a1 + 91) = 0;
  *(a1 + 96) = &unk_2858D7220;
  *(a1 + 104) = 0x3F8374BC6A7EF9DBLL;
  *(a1 + 112) = 0;
  v3.i64[0] = 0x3F0000003FLL;
  v3.i64[1] = 0x3F0000003FLL;
  *(a1 + 120) = vnegq_f32(v3);
  sub_245F0A0B4(a1 + 136);
  *(a1 + 21024) = xmmword_245F33790;
  *(v2 + 560) = 0;
  *(v2 + 564) = 0;
  *(a1 + 21048) = 0xBFF0000000000000;
  *(a1 + 21056) = 0;
  *(a1 + 21064) = 0;
  sub_245F181B8(a1 + 21072);
  sub_245F1EE50(a1 + 21288);
  *(v2 + 1024) = 0;
  *(v2 + 1028) = 0;
  *(v2 + 1032) = 1;
  *(v2 + 1052) = 20;
  *(a1 + 21524) = 0;
  *(v2 + 1136) = 1;
  *(a1 + 21648) = 0x1400000000;
  *(a1 + 21640) = 0x3FB0000000000000;
  *(a1 + 21816) = 0xBFF0000000000000;
  *(a1 + 21824) = 0;
  *(a1 + 21831) = 0;
  *(a1 + 21840) = 10000;
  *(v2 + 1368) = 0;
  *(a1 + 21856) = 0xC12E848000000000;
  *(v2 + 1384) = -1082130432;
  *(a1 + 21872) = 0xC12E848000000000;
  *(v2 + 1400) = 0;
  *(v2 + 1440) = 0;
  *(a1 + 21928) = 0;
  *(a1 + 21944) = 0;
  *(a1 + 21936) = 0;
  *(a1 + 21952) = 0;
  *(a1 + 21960) = 0xBFF0000000000000;
  *(a1 + 21968) = 0xBFF0000000000000;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 21976) = _D0;
  *(v2 + 1504) = 0;
  *(v2 + 1506) = 0;
  *(a1 + 21992) = 0xC12E848000000000;
  *(a1 + 22000) = 0xC12E848000000000;
  *(v2 + 1528) = 0;
  *(a1 + 22012) = 0x42C80000BF800000;
  *(v2 + 1540) = 0;
  *(v2 + 1544) = 0;
  *(a1 + 22032) = &unk_2858D7220;
  *(a1 + 22048) = 0;
  *(a1 + 22040) = 0x3FDFF7CED916872BLL;
  sub_245F230F0(a1);
  return a1;
}

double sub_245F230F0(uint64_t a1)
{
  v2 = a1 + 20480;
  sub_245F18784(a1 + 21072);
  *(a1 + 21880) = 0xC12E848000000000;
  *(a1 + 21888) = 0;
  *(v2 + 1354) = 0;
  *(a1 + 8) = 3212836864;
  *(a1 + 16) = 1127481344;
  sub_245F1EE54(a1 + 21288, *(a1 + 21840));
  *(a1 + 20) = 0;
  *(a1 + 24) = 2;
  sub_245F212A8(a1 + 21928);
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 21976) = _D0;
  *(v2 + 1504) = 0;
  *(v2 + 1506) = 0;
  *(a1 + 21992) = 0xC12E848000000000;
  *(a1 + 22000) = 0xC12E848000000000;
  *(v2 + 1528) = 0;
  result = 5.27765832e13;
  *(a1 + 22012) = 0x42C80000BF800000;
  *(v2 + 1540) = 0;
  return result;
}

void sub_245F231F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 20480;
  sub_245F24680(0x2B7304ACu, 1, 1, 0, 0, 0);
  *a1 = *a2;
  if (*(v4 + 1353) == 1 && (*(v4 + 1354) & 1) != 0)
  {
    v5 = *(a2 + 24);
    v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a2 + 8)), v5);
    sub_245F24EC0(&v12, v5);
    v6 = *(a2 + 80);
    v10 = vmul_f32(vcvt_f32_f64(*(a2 + 64)), vdup_n_s32(0xC11CE80A));
    v11 = v6 * -9.8067;
    sub_245F24D6C(v12.f32, &v10);
    sub_245F1EFDC(a1 + 21288, &v10, *a2);
    if (sub_245F135D4(a1 + 96, a2))
    {
      sub_245F233C0(a1, *a2);
    }

    *(a1 + 32) = *a2;
    *(a1 + 44) = *(a1 + 21404);
    *(a1 + 60) = *(a1 + 21420);
    *(a1 + 8) = *(v4 + 1008);
    v7 = sub_245F2356C(a1, v12.f32);
    v8 = (*(v4 + 944) + *(v4 + 944)) * 57.296;
    *(a1 + 12) = v7;
    *(a1 + 16) = v8;
    *(a1 + 40) = v8;
    sub_245F23624(a1, *a2);
    sub_245F237B0(a1, *a2);
    sub_245F24680(0x2B7304ACu, 2, 1, 0, 0, 0);
  }

  else
  {
    sub_245F135D4(a1 + 96, a2);
    if (*(v4 + 1472) == 1)
    {
      v9 = *(a1 + 21928);
      *(a1 + 8) = v9;
      *(a1 + 28) = 1;
      if (*a1 - *(a1 + 21944) > 2.0)
      {
        *(a1 + 28) = 0;
      }
    }
  }
}

void sub_245F233C0(uint64_t a1, double a2)
{
  v4 = a1 + 20480;
  v5 = *(a1 + 8);
  v7 = v5 >= 3.0 && v5 < 5.0;
  v8 = *(a1 + 21024) + 0.04;
  if (v7 && v8 > 1.3)
  {
    v8 = 1.3;
  }

  if (v8 > 0.6 && v5 < 3.0)
  {
    v10 = 0.6;
  }

  else
  {
    v10 = v8;
  }

  v14 = v10;
  if (*(a1 + 21064) == 1)
  {
    v11 = atan2f(*(a1 + 124), *(a1 + 120));
    v12 = __sincosf_stret(v11);
    v13 = *(a1 + 128);
    sub_245F24680(0x2B73048Cu, 1, 1, 0, 0, 0);
    *(a1 + 21296) = vmul_n_f32(__PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), v14);
    *(a1 + 21304) = v13;
    sub_245F1F4A4(a1 + 21288, 2, a2);
    sub_245F24680(0x2B73048Cu, 2, 1, 0, 0, 0);
    *(a1 + 21872) = a2;
  }

  else
  {
    sub_245F24680(0x2B730490u, 1, 1, 0, 0, 0);
    *(v4 + 832) = v14;
    sub_245F1F4A4(a1 + 21288, 1, a2);

    sub_245F24680(0x2B730490u, 2, 1, 0, 0, 0);
  }
}

float sub_245F2356C(uint64_t a1, float *a2)
{
  v3 = 0;
  v10 = 0.0;
  v4 = vneg_f32(*(a1 + 44));
  v9 = v4;
  v5 = 0;
  do
  {
    *v5.i32 = *v5.i32 + (v9.f32[v3] * v9.f32[v3]);
    ++v3;
  }

  while (v3 != 3);
  *v5.i32 = sqrtf(*v5.i32);
  v9 = vdiv_f32(v4, vdup_lane_s32(v5, 0));
  v10 = 0.0 / *v5.i32;
  sub_245F24CD0(a2, &v9);
  v7 = v9.f32[1];
  v6 = v9.f32[0];
  if (*(a1 + 21828) == 1)
  {
    v7 = -v9.f32[1];
    v6 = -v9.f32[0];
  }

  return atan2f(v6, v7) * 57.296;
}

void sub_245F23624(uint64_t a1, double a2)
{
  v3 = a1 + 20480;
  v4 = a2 - *(a1 + 21880);
  v5 = v4 > 3.0;
  if (a2 - *(a1 + 21872) <= 3.0)
  {
    v5 = 0;
  }

  v7 = v4 > 5.0 && *(a1 + 8) > 15.0;
  if (v7 || (v4 <= 10.0 ? (v8 = !v5) : (v8 = 0), !v8))
  {
    if (*(a1 + 21952) == 1)
    {
      v9 = *(a1 + 21928);
      *(a1 + 8) = v9;
      *(a1 + 28) = 1;
      if (*a1 - *(a1 + 21944) > 2.0)
      {
        *(a1 + 28) = 0;
      }
    }
  }

  v10 = *(a1 + 20);
  v11 = *(a1 + 16);
  if ((sub_245F2404C(a1) & 1) == 0)
  {
    if (v10)
    {

      sub_245F240BC(a1, v4 > 10.0, v11 > 120.0, v11 < 90.0);
    }

    else
    {
      v12 = *(a1 + 8);
      v13 = v12 - *(v3 + 1384);
      if (v13 <= 0.0)
      {
        v13 = -v13;
      }

      if (v4 >= 0.5 || v11 >= 90.0 || v12 < 2.0 || v13 <= 0.5)
      {
        v17 = *(a1 + 24);
      }

      else
      {
        v17 = 0;
        *(v3 + 1024) = 1;
      }

      *(a1 + 24) = v17;
      *(a1 + 20) = v17 == 0;
    }
  }
}

uint64_t sub_245F237B0(uint64_t result, double a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = (result + 20480);
  if (*(result + 21984) != 1)
  {
    goto LABEL_35;
  }

  v3 = result;
  v4 = *(result + 21985);
  if ((v4 & 1) == 0 && *(result + 28) == 1 && *(result + 8) < 8.0)
  {
    v4 = 1;
  }

  *(result + 21985) = v4;
  v5 = (result + 80);
  v6 = *(result + 80);
  v7 = *(result + 21986) | (vabds_f32(v6, *(result + 21976)) > 1.7);
  *(result + 21986) = v7;
  v8 = *(result + 21492);
  *(result + 22024) = v8 > 0.9;
  if (v8 <= 0.9)
  {
    v10 = 0;
    *(result + 21992) = a2;
    v9 = a2 - a2;
    *(result + 22012) = 0x42C80000BF800000;
    v12 = -1.0;
    v11 = 100.0;
  }

  else
  {
    v9 = a2 - *(result + 21992);
    v10 = v9 > 4.5;
    if (*(result + 28))
    {
      v11 = *(result + 8);
      v12 = *(result + 22012);
      if (v11 > v12)
      {
        v12 = *(result + 8);
      }

      *(result + 22012) = v12;
      if (v11 >= *(result + 22016))
      {
        v11 = *(result + 22016);
      }

      *(result + 22016) = v11;
    }

    else
    {
      v12 = *(result + 22012);
      v11 = *(result + 22016);
    }
  }

  v13 = v12 - v11;
  if (v4 & *(result + 21504)) != 1 || v7 & 1 | !v10 || v13 <= 0.5 || (*(result + 22009))
  {
    v14 = *(result + 22008);
    v15 = a2;
    if (v14 != 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    LOBYTE(v14) = 1;
    *(result + 22008) = 1;
  }

  v15 = *(result + 22000);
LABEL_23:
  v16 = (result + 64);
  *(result + 22000) = v15;
  v17 = a2 - v15;
  if (v8 > 0.9)
  {
    v5 = (result + 22020);
  }

  v18 = *v5;
  *(result + 22020) = *v5;
  v19 = vabds_f32(v18, v6);
  if (v17 > 10.0 || v19 > 1.0)
  {
    LOBYTE(v14) = 0;
    *(result + 22008) = 256;
  }

  v20 = vrev64_s32(*(result + 21480));
  *(result + 64) = *(result + 32);
  *(result + 72) = v20;
  *(result + 80) = *(result + 21980);
  *(result + 84) = v8;
  *(result + 88) = *(result + 21496);
  *(result + 92) = *(result + 20);
  *(result + 93) = v8 > 0.9;
  *(result + 94) = v14;
  v21 = *(result + 22040);
  if (v21 <= 0.0 || v21 + *(result + 22048) <= a2)
  {
    *(result + 22048) = a2;
    if (qword_27EE374E0 != -1)
    {
      sub_245F2CF04();
    }

    v22 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v3 + 64);
      v24 = *(v3 + 72);
      v25 = *(v3 + 76);
      v26 = *(v3 + 80);
      v27 = *(v3 + 92);
      v28 = *(v3 + 84);
      v29 = *(v3 + 88);
      v30 = *(v3 + 93);
      v31 = *(v3 + 94);
      v32 = v2[1505];
      v33 = v2[1506];
      v34 = v2[1529];
      v36 = 134353920;
      v37 = v23;
      v38 = 2050;
      v39 = v24;
      v40 = 2050;
      v41 = v25;
      v42 = 2050;
      v43 = v26;
      v44 = 2050;
      v45 = v28;
      v46 = 2050;
      v47 = v29;
      v48 = 1026;
      v49 = v27;
      v50 = 1026;
      v51 = v30;
      v52 = 1026;
      v53 = v31;
      v54 = 1026;
      v55 = v32;
      v56 = 1026;
      v57 = v33;
      v58 = 2050;
      v59 = v9;
      v60 = 1026;
      v61 = v10;
      v62 = 2050;
      v63 = v13;
      v64 = 1026;
      v65 = v13 > 0.5;
      v66 = 2050;
      v67 = v17;
      v68 = 1026;
      v69 = v17 > 10.0;
      v70 = 2050;
      v71 = v19;
      v72 = 1026;
      v73 = v19 > 1.0;
      v74 = 1026;
      v75 = v34;
      _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_DEFAULT, "CMPrecisionFindingPositionEstimator::fVerticalState,timestamp,%{public}f,horizontalDistance,%{public}f,verticalDistance,%{public}f,relativeAltitude,%{public}f,fractionAboveThreshold,%{public}f,likelihoodAboveThreshold,%{public}f,isConverged,%{public}d,isAboveBelow,%{public}d,isAboveBelowMessageShowing,%{public}d,wasInMediumRange,%{public}d,wasLevelChanged,%{public}d,timeElapsedSinceAboveBelowFractionHigh,%{public}f,isAboveBelowFractionConsistentlyHigh,%{public}d,distanceChangeSinceAboveBelowFractionHigh,%{public}f,isDistanceChangedEnoughForAboveBelowMessage,%{public}d,timeElapsedSinceAboveBelowMessageShown,%{public}f,aboveBelowMessageShownLongerThanThreshold,%{public}d,elevationChangeSinceAboveBelowMessageShown,%{public}f,isChangingLevelWhileAboveBelowMessageShowing,%{public}d,wasAboveBelowMessageShown,%{public}d", &v36, 0xA2u);
    }
  }

  result = sub_245F22BEC(v16);
LABEL_35:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

int8x16_t sub_245F23B80(uint64_t a1, uint64_t a2)
{
  result.i64[0] = *(a2 + 8);
  if (*result.i64 > 0.00999999978)
  {
    v22 = v2;
    v23 = v3;
    v7 = a1 + 20480;
    v20 = 0u;
    v21 = 0u;
    sub_245F18214(a2, &v20);
    sub_245F24680(0x2B7304B0u, 1, 1, 0, 0, 0);
    if (*(v7 + 1353) == 1 && (v8 = *(a2 + 8), (sub_245F18688(a1 + 21072, *(v7 + 1024), v8) & 1) != 0))
    {
      sub_245F18240(a1 + 21072, a2, &v20, *(a1 + 32));
      if (BYTE9(v21) == 1)
      {
        if (*(v7 + 1354) == 1)
        {
          v9 = *(a2 + 8);
        }

        else
        {
          if (qword_27EE374E0 != -1)
          {
            sub_245F2CF18();
          }

          v10 = off_27EE374E8;
          if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 0;
            _os_log_impl(&dword_245D80000, v10, OS_LOG_TYPE_DEFAULT, "Particle filter successfully initialized.", v19, 2u);
          }

          *(v7 + 1354) = 1;
          v9 = *(a2 + 8);
          v11 = v9;
          *(v7 + 1384) = v11;
        }

        LODWORD(v21) = sub_245F186F4(a1 + 21072, v9);
        v12 = *(a2 + 8) - *(a1 + 21888);
        v13 = sub_245F18748(*a2 - *(a1 + 21880), v12, a1 + 21072, *(v7 + 1024));
        v14 = *(a2 + 8);
        sub_245F1F41C(a1 + 21288, v13, v14, *a2, *&v21);
        v15 = *(v7 + 1008);
        *(a1 + 8) = v15;
        *(a1 + 28) = 1;
        sub_245F212B0(a1 + 21928, v15, *a2, 0.0001);
        *a1 = *a2;
        v16 = *(v7 + 1440);
        v17 = *(a2 + 32);
        v18 = *(a2 + 16);
        *(a1 + 21880) = *a2;
        *(a1 + 21896) = v18;
        *(a1 + 21912) = v17;
        if ((v16 & 1) == 0)
        {
          *(v7 + 1440) = 1;
        }
      }

      else
      {
        sub_245F23DD8(a1, a2);
      }

      sub_245F22254(&v20);
      sub_245F24680(0x2B7304B0u, 2, 1, 0, 0, 0);
    }

    else
    {
      sub_245F22254(&v20);
      sub_245F23DD8(a1, a2);
    }

    result = vextq_s8(*a2, *a2, 8uLL);
    *(v7 + 1480) = result;
  }

  return result;
}

double sub_245F23DD8(uint64_t a1, double *a2)
{
  result = a2[1];
  if (result <= 65.0)
  {
    v6 = *(a1 + 21960);
    if (v6 >= 0.0)
    {
      v7 = *(a1 + 21968);
      if (v7 >= 0.0)
      {
        v3 = *a2;
        if (*(a1 + 21952))
        {
          v8 = v3 - *(a1 + 21944);
          if (v8 <= 0.0)
          {
            v9 = 1000000.0;
          }

          else
          {
            v9 = (result - *(a1 + 21928)) / v8;
          }

          if (v9 * v9 <= 0.5 || v9 <= 0.0)
          {
            v4 = 0.5;
          }

          else
          {
            v4 = v9 * v9;
          }

          goto LABEL_4;
        }

        v10 = v3 - v7;
        if (result < v6)
        {
          v6 = a2[1];
        }

        if (v10 < 1.5)
        {
          result = v6;
        }

        if (result <= 65.0)
        {
          v5 = a1 + 21928;
          v4 = 1.0;
          goto LABEL_5;
        }
      }
    }
  }

  else if (*(a1 + 21952) == 1)
  {
    result = *(a1 + 21928);
    v3 = *a2;
    v4 = 1000000.0;
LABEL_4:
    v5 = a1 + 21928;
LABEL_5:
    sub_245F212B0(v5, result, v3, v4);
  }

  return result;
}

unsigned __int16 *sub_245F23EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 20480;
  sub_245F24290((a1 + 21528), (a2 + 8));
  *(v4 + 1032) = 1;
  result = sub_245F187A0((a1 + 21648), a2);
  *(v4 + 1136) = 1;
  return result;
}

double sub_245F23F14(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 20480;
  if (*(a1 + 21833) != 1 || *(a1 + 21824) != *(a2 + 8) || *(a1 + 21828) != *(a2 + 12))
  {
    if (qword_27EE374E0 != -1)
    {
      sub_245F2CF04();
    }

    v5 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_245D80000, v5, OS_LOG_TYPE_DEFAULT, "Wrist and crown successfully initialized.", v7, 2u);
    }

    *(a1 + 21816) = *a2;
    *(v4 + 1353) = 1;
    return sub_245F18070(a1 + 21032, a2);
  }

  return result;
}

float sub_245F23FF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 20480;
  v4 = *(a2 + 16);
  if ((*(a1 + 21984) & 1) == 0)
  {
    *(a1 + 21976) = v4;
    *(a1 + 21984) = 1;
  }

  sub_245F1F400(a1 + 21288, v4);
  result = *(a2 + 16);
  *(v3 + 1500) = result;
  return result;
}

uint64_t sub_245F2404C(uint64_t a1)
{
  v2 = sub_245F2415C(a1);
  if (v2)
  {
    *(a1 + 20) = 0;
    *(a1 + 24) = 4;
    *(a1 + 21832) = 1;
  }

  else if (*(a1 + 21832) == 1)
  {
    sub_245F230F0(a1);
    *(a1 + 21832) = 0;
  }

  return v2;
}

float sub_245F240BC(uint64_t a1, int a2, int a3, int a4)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 21848);
  }

  v8 = (a4 ^ 1) & v6;
  v7 = v8 == 0;
  *(a1 + 21848) = v8;
  v9 = 32;
  if (!v7)
  {
    v9 = 21856;
  }

  v10 = *(a1 + v9);
  *(a1 + 21856) = v10;
  if (a3 && *(a1 + 32) - v10 > 1.5)
  {
    v11 = 2;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (v5 < 1.75)
  {
    v11 = 1;
  }

  if (a2)
  {
    v11 = 3;
  }

  *(a1 + 24) = v11;
  *(a1 + 20) = v11 == 0;
  if (!v11)
  {
    v4 = (a1 + 21864);
  }

  result = *v4;
  *(a1 + 21864) = *v4;
  return result;
}

uint64_t sub_245F2415C(unsigned __int16 *a1)
{
  v1 = a1 + 10240;
  if (a1[10765] && a1[10825])
  {
    v3 = *sub_245F187F4(a1 + 10824, a1[10825] - 1);
    v4 = v1[525] - 1;
    while (v4 != -1 && v3 - *sub_245F187F4(a1 + 10824, v4) <= 2.0)
    {
      v5 = sub_245F242E8(a1 + 10764, v4--);
      if (CLMotionActivity::indexToActivityType((*v5 - 1)) - 1 >= 2)
      {
        return 1;
      }
    }
  }

  return 0;
}

os_log_t sub_245F2421C()
{
  result = os_log_create("com.apple.locationd.Motion", "PrecisionFinding");
  off_27EE374E8 = result;
  return result;
}

os_log_t sub_245F2424C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

unsigned __int16 *sub_245F24290(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 < v3)
  {
    v3 = 0;
  }

  *&result[2 * (v4 + v2 - v3) + 4] = *a2;
  v5 = *(result + 1);
  if (v5 <= v2)
  {
    v6 = v4 + 1;
    if (v4 + 1 >= v5)
    {
      v7 = *(result + 1);
    }

    else
    {
      v7 = 0;
    }

    *result = v6 - v7;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

uint64_t sub_245F242E8(unsigned __int16 *a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D71F0);
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
  return &a1[2 * (v5 - v4) + 4];
}

void sub_245F24680(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27EE38A08 != -1)
  {
    dispatch_once(&qword_27EE38A08, &unk_2858D7240);
  }

  if (byte_27EE38A00 == 1)
  {
    v12 = a1 | 1;
    if (a2 != 1)
    {
      v12 = a1;
    }

    if (a2 == 2)
    {
      v13 = a1 | 2;
    }

    else
    {
      v13 = v12;
    }

    MEMORY[0x2822039B8](v13, a3, a4, a5, a6);
  }
}

uint64_t sub_245F24748(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3, a4);
  result = objc_msgSend_BOOLForKey_(v4, v5, @"LogAriadneSignposts", v6);
  byte_27EE38A00 = result;
  return result;
}

uint64_t *sub_245F24864(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 2) = 0;
  *(a1 + 12) = 0x500000000;
  a1[5] = 0x400000000;
  if (!a2 || *(a2 + 16) >= 5u)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D7260);
    }

    v5 = qword_27EE37528;
    if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
    {
      v6 = *a1;
      v7 = *(*a1 + 16);
      v8 = 134218496;
      v9 = v6;
      v10 = 1024;
      v11 = v7;
      v12 = 1024;
      v13 = 4;
      _os_log_impl(&dword_245D80000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: (fIirFilterParams != __null) && (fIirFilterParams->filterOrder <= kMaxFilterOrder), file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMIirFilter.cpp, line 17,IirFilterParams,%p,filterOrder,%d,maxFilterOrder,%d.", &v8, 0x18u);
    }
  }

  *(a1 + 3) = 0;
  *(a1 + 10) = 0;
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

os_log_t sub_245F2498C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

float32_t sub_245F249DC(uint64_t a1, float *a2, float32x4_t a3)
{
  v3 = *(a1 + 8);
  a3.i32[0] = *(a1 + 12);
  v4 = a2[1];
  v5 = *(a1 + 4);
  v6 = a2[2];
  v7 = a2[3];
  *&v8 = (((v3 * v4) + (a3.f32[0] * *a2)) - (v5 * v6)) + (*a1 * v7);
  *&v9 = (((a3.f32[0] * v4) - (v3 * *a2)) + (*a1 * v6)) + (v5 * v7);
  *&v10 = (((v5 * *a2) - (*a1 * v4)) + (a3.f32[0] * v6)) + (v3 * v7);
  v11 = (-(v5 * v4) - (*a1 * *a2)) - (v3 * v6);
  v13.i64[0] = __PAIR64__(v9, v8);
  a3.f32[0] = v11 + (a3.f32[0] * v7);
  v13.i64[1] = __PAIR64__(a3.u32[0], v10);
  sub_245F24EC0(&v13, a3);
  return v13.f32[0];
}

float32_t sub_245F24A60(float32x2_t *a1, float32x4_t a2)
{
  v2 = a1[1].i32[1];
  a2.f32[0] = -a1[1].f32[0];
  *v4.f32 = vneg_f32(*a1);
  v4.i64[1] = __PAIR64__(v2, a2.u32[0]);
  sub_245F24EC0(&v4, a2);
  return v4.f32[0];
}

float sub_245F24AA4(uint64_t a1)
{
  v3 = *(a1 + 12);
  if (v3 >= 0.0)
  {
    result = *a1;
    v6 = *(a1 + 4);
    v7 = *(a1 + 8);
  }

  else
  {
    v9 = v1;
    v10 = v2;
    v4.i64[0] = *a1;
    v4.i32[2] = *(a1 + 8);
    v4.f32[3] = v3;
    v8 = vnegq_f32(v4);
    sub_245F24EC0(&v8, v8);
    return v8.f32[0];
  }

  return result;
}

float sub_245F24B04(float32x2_t *a1, uint64_t a2, float32x4_t a3)
{
  v4.f32[0] = sub_245F24A60(a1, a3);
  v12[0] = v4.f32[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v13[0] = sub_245F249DC(a2, v12, v4);
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  return sub_245F24AA4(v13);
}

float sub_245F24B54(float *a1)
{
  v1 = a1[1];
  v2 = (*a1 * a1[2]) - (a1[3] * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*a1 * *a1)) * -2.0) + 1.0);
}

float sub_245F24B98(float *a1)
{
  v1 = (*a1 * a1[3]) + (a1[1] * a1[2]);
  v2 = v1 + v1;
  v3 = -1.0;
  v4 = v2 <= -1.0;
  v5 = v2 < 1.0 || v2 <= -1.0;
  if (v2 >= 1.0)
  {
    v4 = 1;
  }

  if (!v5)
  {
    v3 = 1.0;
  }

  if (v4)
  {
    return asinf(v3);
  }

  else
  {
    return asinf(v2);
  }
}

float sub_245F24BDC(float *a1)
{
  v1 = a1[2];
  v2 = (*a1 * a1[1]) - (a1[3] * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*a1 * *a1)) * -2.0) + 1.0);
}

float sub_245F24C20(float *a1)
{
  v1 = 0;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  result = ((v3 * v4) - (*a1 * v2)) + ((v3 * v4) - (*a1 * v2));
  v6 = -(v3 * *a1) - (v4 * v2);
  v7 = (((v4 * v4) + (*a1 * *a1)) * 2.0) + -1.0;
  *v11 = result;
  *&v11[1] = v6 + v6;
  *&v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (*&v11[v1] * *&v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*&v11[v9] * *&v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

void sub_245F24CD0(float *a1, uint64_t a2)
{
  sub_245F24FD4(v5, a1, 1.0);
  *a2 = sub_245F17C3C(v5, a2);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

float sub_245F24D2C(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_245F24FD4(v6, a1, 1.0);
  return sub_245F17C3C(v6, v5);
}

void sub_245F24D6C(float *a1, uint64_t a2)
{
  sub_245F24FD4(v5, a1, -1.0);
  *a2 = sub_245F17C3C(v5, a2);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

float sub_245F24DC8(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_245F24FD4(v6, a1, -1.0);
  return sub_245F17C3C(v6, v5);
}

double sub_245F24E08(float32x4_t *a1, float *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  v6 = sqrtf(v5);
  v7 = 0.5;
  v8 = v6 * 0.5;
  if ((v6 * 0.5) > 0.0)
  {
    v7 = (sinf(v6 * 0.5) / v8) * 0.5;
  }

  a1->f32[0] = v7 * *a2;
  a1->f32[1] = v7 * a2[1];
  a1->f32[2] = v7 * a2[2];
  v9.f32[0] = cosf(v8);
  a1->i32[3] = v9.i32[0];

  *&result = sub_245F24EC0(a1, v9).u64[0];
  return result;
}

float32x4_t sub_245F24EC0(float32x4_t *a1, float32x4_t result)
{
  result.f32[0] = sqrtf((((a1->f32[1] * a1->f32[1]) + (a1->f32[0] * a1->f32[0])) + (a1->f32[2] * a1->f32[2])) + (a1->f32[3] * a1->f32[3]));
  v2 = result.f32[0] + -1.0;
  if ((result.f32[0] + -1.0) <= 0.0)
  {
    v2 = -(result.f32[0] + -1.0);
  }

  if (v2 >= 0.00000011921)
  {
    if (result.f32[0] == 0.0)
    {
      a1->i64[0] = 0;
      a1->i64[1] = 0x3F80000000000000;
    }

    else
    {
      result = vdivq_f32(*a1, vdupq_lane_s32(*result.f32, 0));
      *a1 = result;
    }
  }

  return result;
}

float sub_245F24F24(__int128 *a1)
{
  v11 = *a1;
  v2 = sub_245F24AA4(&v11);
  v3 = 0;
  *v10 = v2;
  v10[1] = v4;
  v10[2] = v5;
  v6 = 0.0;
  do
  {
    v6 = v6 + (*&v10[v3] * *&v10[v3]);
    ++v3;
  }

  while (v3 != 3);
  v7 = sqrtf(v6);
  if (v7 >= 0.00000011921)
  {
    v8 = atan2f(v7, v1);
    return v2 * ((v8 + v8) / v7);
  }

  return v2;
}

float sub_245F24FD4(float *a1, float *a2, float a3)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = v3 + v3;
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 + v7;
  v9 = v3 * (v3 + v3);
  v10 = ((v7 + v7) * v7) + -1.0;
  v11 = ((v4 + v4) * v4) + -1.0;
  v12 = (v6 + v6) * v7;
  v13 = (v6 + v6) * v4;
  v14 = v3 * (v6 + v6);
  v15 = v8 * v4;
  v16 = v3 * v8;
  v17 = v5 * v4;
  v18 = v9 + (((v6 + v6) * v6) + -1.0);
  v19 = v12 - (v17 * a3);
  v20 = v13 + (v16 * a3);
  v21 = v12 + (v17 * a3);
  v22 = v9 + v10;
  v23 = v15 - (v14 * a3);
  v24 = v13 - (v16 * a3);
  result = v15 + (v14 * a3);
  *a1 = v18;
  a1[1] = v19;
  a1[2] = v20;
  a1[3] = v21;
  a1[4] = v22;
  a1[5] = v23;
  a1[6] = v24;
  a1[7] = result;
  a1[8] = v9 + v11;
  return result;
}

void sub_245F25054(float *a1)
{
  if ((atomic_load_explicit(&qword_27EE38A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE38A18))
  {
    dword_27EE38A10 = 1043452116;
    __cxa_guard_release(&qword_27EE38A18);
  }

  v4 = sub_245F24C20(a1);
  v5 = 0;
  v6 = sqrtf((v2 * v2) + (v4 * v4));
  v7 = -1.0;
  if (v3 > v6)
  {
    v7 = 1.0;
  }

  v22 = 0x3F80000000000000;
  v23 = 0;
  v8 = (v3 * -0.0) + (v2 * v7);
  v9 = 0.0;
  v10 = (v3 * 0.0) - (v4 * v7);
  v11 = (v2 * -0.0) + (v4 * 0.0);
  v21[0] = v8;
  v21[1] = v10;
  v21[2] = v11;
  do
  {
    v9 = v9 + (v21[v5] * v21[v5]);
    ++v5;
  }

  while (v5 != 3);
  v12 = sqrtf(v9);
  if (v12 <= *&dword_27EE38A10)
  {
    v15 = 1.0;
    v16 = 0.0;
    v14 = 0.0;
  }

  else
  {
    v13 = -atan2f(v6, v3 * v7) / v12;
    v24[0] = v8 * v13;
    v24[1] = v10 * v13;
    v24[2] = v11 * v13;
    sub_245F24E08(&v20, v24);
    sub_245F24FD4(v24, v20.f32, -1.0);
    v14 = sub_245F17C3C(v24, &v22);
  }

  v17 = sub_245F24DC8(a1, v14, v15, v16);
    ;
  }

    ;
  }
}

os_log_t sub_245F25F28()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  qword_27EE37508 = result;
  return result;
}

void sub_245F26298(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_isRunning(*(a1 + 32), a2, a3, a4))
  {
    objc_msgSend_stopPencilFusionUpdatesPrivate(*(a1 + 32), v5, v6, v7);
  }

  objc_msgSend_setHandlerQueue_(*(a1 + 32), v5, *(a1 + 40), v7);
  v11 = objc_msgSend_copy(*(a1 + 48), v8, v9, v10);
  objc_msgSend_setHandler_(*(a1 + 32), v12, v11, v13);
  objc_msgSend_setRunning_(*(a1 + 32), v14, 1, v15);
  objc_msgSend_setCurrentEstimationUpdateIndex_(*(a1 + 32), v16, 0, v17);
  v18 = *(*(a1 + 32) + 8);

  sub_245F12268(v18);
}

void sub_245F26634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_245F26668(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_estimations(*(a1 + 32), a2, a3, a4);
  result = objc_msgSend_lastObject(v5, v6, v7, v8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t sub_245F268C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isRunning(*(a1 + 48), a2, a3, a4);
  if (result)
  {
    if (objc_msgSend_mslEnabled(*(a1 + 48), v6, v7, v8))
    {
      LODWORD(v12) = *(a1 + 64);
      LODWORD(v13) = *(a1 + 68);
      LODWORD(v14) = *(a1 + 72);
      LODWORD(v15) = *(a1 + 76);
      LODWORD(v16) = *(a1 + 80);
      objc_msgSend_logTouchAltitudeAngle_altitudeAngleConfidence_azimuthAngle_azimuthAngleConfidence_position_positionConfidence_timestamp_(*(a1 + 48), v9, v10, v11, v12, v13, v14, v15, *(a1 + 32), v16, *(a1 + 56));
    }

    sub_245F106BC(*(*(a1 + 48) + 8), (*(a1 + 56) * 1000000.0), fabsf(*(a1 + 40)) < 0.000001, *(a1 + 68) > 0.5, *(a1 + 64), *(a1 + 72));
    *v17.i64 = sub_245F1D50C(*(*(a1 + 48) + 8) + 8);
    v99 = __PAIR64__(v18, v17.u32[0]);
    v100 = v19;
    v101 = v20;
    v98[0] = sub_245F24A60(&v99, v17);
    v98[1] = v21;
    v98[2] = v22;
    v98[3] = v23;
    v24 = sub_245F0F554(v98);
    v26 = v25;
    v28 = v27;
    v29 = objc_opt_new();
    *&v30 = v24;
    objc_msgSend_setAltitudeAngle_(v29, v31, v32, v33, v30);
    LODWORD(v34) = v26;
    objc_msgSend_setAzimuthAngle_(v29, v35, v36, v37, v34);
    LODWORD(v38) = v28;
    objc_msgSend_setRollAngle_(v29, v39, v40, v41, v38);
    objc_msgSend_setPosition_(v29, v42, v43, v44, *(a1 + 32));
    v45 = MEMORY[0x277CCABB0];
    v46 = *(a1 + 48);
    v47 = *(v46 + 32);
    *(v46 + 32) = v47 + 1;
    v50 = objc_msgSend_numberWithUnsignedLongLong_(v45, v48, v47, v49);
    objc_msgSend_setEstimationUpdateIndex_(v29, v51, v50, v52);
    objc_msgSend_setEstimated_(v29, v53, 1, v54);
    objc_msgSend_setTimestamp_(v29, v55, v56, v57, *(a1 + 56));
    v61 = objc_msgSend_estimations(*(a1 + 48), v58, v59, v60);
    objc_msgSend_addObject_(v61, v62, v29, v63);
    v67 = objc_msgSend_estimations(*(a1 + 48), v64, v65, v66);
    if (objc_msgSend_count(v67, v68, v69, v70) >= 0x19)
    {
      do
      {
        v74 = objc_msgSend_estimations(*(a1 + 48), v71, v72, v73);
        objc_msgSend_removeObjectAtIndex_(v74, v75, 0, v76);
        v80 = objc_msgSend_estimations(*(a1 + 48), v77, v78, v79);
      }

      while (objc_msgSend_count(v80, v81, v82, v83) > 0x18);
    }

    result = objc_msgSend_mslEnabled(*(a1 + 48), v84, v85, v86);
    if (result)
    {
      v90 = *(a1 + 48);
      v91 = objc_msgSend_estimations(v90, v87, v88, v89);
      Object = objc_msgSend_lastObject(v91, v92, v93, v94);
      return objc_msgSend_logPencilFusionResult_(v90, v96, Object, v97);
    }
  }

  return result;
}

uint64_t sub_245F27010(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isRunning(*(a1 + 96), a2, a3, a4);
  if (result)
  {
    v6 = fabsf(COERCE_FLOAT(*(a1 + 32)));
    v7 = *(*(a1 + 96) + 8);
    v8 = *(a1 + 135);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    sub_245F24EC0(&v16, v16);
    v9 = vmulq_f32(v15, v15);
    v9.f32[0] = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
    v10 = vmulq_f32(*(a1 + 64), *(a1 + 64));
    sub_245F1117C(v7, v8, v16.f32, v9, sqrtf(v10.f32[2] + vaddv_f32(*v10.f32)), v6);
    sub_245F1256C(*(*(a1 + 96) + 8), *(a1 + 135), *(a1 + 80), COERCE_FLOAT32_T(HIDWORD(*(a1 + 80))), COERCE_FLOAT(*(a1 + 88)), *(a1 + 120), *(a1 + 124));
    result = objc_msgSend_mslEnabled(*(a1 + 96), v11, v12, v13);
    if (result)
    {
      return objc_msgSend_logPencilDeviceMotionQuaternion_rotationRate_acceleration_gyroBias_temperatureGyroBias_temperatureGyro_status_sensorTime_timestamp_(*(a1 + 96), v14, *(a1 + 120), *(a1 + 124), *(a1 + 128), *(a1 + 104), *(a1 + 48), *(a1 + 32), *(a1 + 64), *(a1 + 80), *(a1 + 112));
    }
  }

  return result;
}

uint64_t sub_245F27308(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isRunning(*(a1 + 80), a2, a3, a4);
  if (result)
  {
    v6 = *(*(a1 + 80) + 8);
    v7 = (*(a1 + 88) * 1000000.0);
    v16 = *(a1 + 32);
    sub_245F24EC0(&v16, v16);
    v8 = vmulq_f32(*(a1 + 48), *(a1 + 48));
    v9 = vmulq_f32(*(a1 + 64), *(a1 + 64));
    sub_245F11700(v6, v7, &v16, sqrtf(v8.f32[2] + vaddv_f32(*v8.f32)), sqrtf(v9.f32[2] + vaddv_f32(*v9.f32)));
    result = objc_msgSend_mslEnabled(*(a1 + 80), v10, v11, v12);
    if (result)
    {
      return objc_msgSend_logHostDeviceMotionQuaternion_rotationRate_acceleration_timestamp_(*(a1 + 80), v13, v14, v15, *(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 88));
    }
  }

  return result;
}

uint64_t sub_245F27870(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_handler(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);
  v7 = *(v5 + 16);

  return v7();
}

void sub_245F27FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_245E5ADCC(va);
  _Unwind_Resume(a1);
}

void sub_245F2824C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_245E5ADCC(va);
  _Unwind_Resume(a1);
}

void sub_245F28404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_245E5ADCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245F28838(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v67[16] = *MEMORY[0x277D85DE8];
  v66[0] = @"Axis";
  v67[0] = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *(a1 + 104), a4);
  v66[1] = @"MinDeltaGyroBias";
  LODWORD(v5) = *(a1 + 32);
  v67[1] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v8, v5);
  v66[2] = @"MeanDeltaGyroBias";
  LODWORD(v9) = *(a1 + 36);
  v67[2] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v10, v11, v12, v9);
  v66[3] = @"MaxDeltaGyroBias";
  LODWORD(v13) = *(a1 + 40);
  v67[3] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v14, v15, v16, v13);
  v66[4] = @"MinGyroBias";
  LODWORD(v17) = *(a1 + 44);
  v67[4] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v18, v19, v20, v17);
  v66[5] = @"MeanGyroBias";
  LODWORD(v21) = *(a1 + 48);
  v67[5] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v23, v24, v21);
  v66[6] = @"MaxGyroBias";
  LODWORD(v25) = *(a1 + 52);
  v67[6] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v26, v27, v28, v25);
  v66[7] = @"MinGyroBiasTemperature";
  LODWORD(v29) = *(a1 + 56);
  v67[7] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v30, v31, v32, v29);
  v66[8] = @"MeanGyroBiasTemperature";
  LODWORD(v33) = *(a1 + 60);
  v67[8] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, v36, v33);
  v66[9] = @"MaxGyroBiasTemperature";
  LODWORD(v37) = *(a1 + 64);
  v67[9] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v38, v39, v40, v37);
  v66[10] = @"MinGyroTemperature";
  LODWORD(v41) = *(a1 + 68);
  v67[10] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v42, v43, v44, v41);
  v66[11] = @"MeanGyroTemperature";
  LODWORD(v45) = *(a1 + 72);
  v67[11] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v46, v47, v48, v45);
  v66[12] = @"MaxGyroTemperature";
  LODWORD(v49) = *(a1 + 76);
  v67[12] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v50, v51, v52, v49);
  v66[13] = @"MinTimeBetweenGyroBiasUpdates";
  v67[13] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v53, *(a1 + 80), v54);
  v66[14] = @"MeanTimeBetweenGyroBiasUpdates";
  v67[14] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v55, *(a1 + 88), v56);
  v66[15] = @"MaxTimeBetweenGyroBiasUpdates";
  v67[15] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v57, *(a1 + 96), v58);
  v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, v67, v66, 16);
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v61 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
  {
    v64 = 138477827;
    v65 = v60;
    _os_log_impl(&dword_245D80000, v61, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilFusion]:[sendPencilGyroBiasAxisStatistics]: \n%{private}@", &v64, 0xCu);
  }

  v62 = *MEMORY[0x277D85DE8];
  return v60;
}

uint64_t sub_245F28B7C(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v73[16] = *MEMORY[0x277D85DE8];
  v72[0] = @"ContactCondition";
  v73[0] = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, a1[8], a4);
  v72[1] = @"MinAzimuth";
  LODWORD(v5) = a1[9];
  v73[1] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v8, v5);
  v72[2] = @"MeanAzimuth";
  LODWORD(v9) = a1[10];
  v73[2] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v10, v11, v12, v9);
  v72[3] = @"MaxAzimuth";
  LODWORD(v13) = a1[11];
  v73[3] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v14, v15, v16, v13);
  v72[4] = @"MinTilt";
  LODWORD(v17) = a1[12];
  v73[4] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v18, v19, v20, v17);
  v72[5] = @"MeanTilt";
  LODWORD(v21) = a1[13];
  v73[5] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v23, v24, v21);
  v72[6] = @"MaxTilt";
  LODWORD(v25) = a1[14];
  v73[6] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v26, v27, v28, v25);
  v72[7] = @"MinGyroNorm";
  LODWORD(v29) = a1[15];
  v73[7] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v30, v31, v32, v29);
  v72[8] = @"MeanGyroNorm";
  LODWORD(v33) = a1[16];
  v73[8] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, v36, v33);
  v72[9] = @"MaxGyroNorm";
  LODWORD(v37) = a1[17];
  v73[9] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v38, v39, v40, v37);
  v72[10] = @"MinGyroShaftAxisNorm";
  LODWORD(v41) = a1[18];
  v73[10] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v42, v43, v44, v41);
  v72[11] = @"MeanGyroShaftAxisNorm";
  LODWORD(v45) = a1[19];
  v73[11] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v46, v47, v48, v45);
  v72[12] = @"MaxGyroShaftAxisNorm";
  LODWORD(v49) = a1[20];
  v73[12] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v50, v51, v52, v49);
  v72[13] = @"MinUserAccelNorm";
  LODWORD(v53) = a1[21];
  v73[13] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v54, v55, v56, v53);
  v72[14] = @"MeanUserAccelNorm";
  LODWORD(v57) = a1[22];
  v73[14] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v58, v59, v60, v57);
  v72[15] = @"MaxUserAccelNorm";
  LODWORD(v61) = a1[23];
  v73[15] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v62, v63, v64, v61);
  v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, v73, v72, 16);
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v67 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
  {
    v70 = 138477827;
    v71 = v66;
    _os_log_impl(&dword_245D80000, v67, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilFusion]:[sendPencilSensorContactTypeStatistics]: \n%{private}@", &v70, 0xCu);
  }

  v68 = *MEMORY[0x277D85DE8];
  return v66;
}

uint64_t sub_245F28EB8(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v35[12] = *MEMORY[0x277D85DE8];
  v34[0] = @"MinAuxToRingSensorLatency";
  v35[0] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], a2, a1[4], a4);
  v34[1] = @"MeanAuxToRingSensorLatency";
  v35[1] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v5, a1[5], v6);
  v34[2] = @"MaxAuxToRingSensorLatency";
  v35[2] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v7, a1[6], v8);
  v34[3] = @"MinPencilIMUSamplePeriod";
  v35[3] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v9, a1[7], v10);
  v34[4] = @"MeanPencilIMUSamplePeriod";
  v35[4] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v11, a1[8], v12);
  v34[5] = @"MaxPencilIMUSamplePeriod";
  v35[5] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v13, a1[9], v14);
  v34[6] = @"MinSourceIMUSamplePeriod";
  v35[6] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v15, a1[10], v16);
  v34[7] = @"MeanSourceIMUSamplePeriod";
  v35[7] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v17, a1[11], v18);
  v34[8] = @"MaxSourceIMUSamplePeriod";
  v35[8] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v19, a1[12], v20);
  v34[9] = @"MinRingSensorSamplePeriod";
  v35[9] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v21, a1[13], v22);
  v34[10] = @"MeanRingSensorSamplePeriod";
  v35[10] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v23, a1[14], v24);
  v34[11] = @"MaxRingSensorSamplePeriod";
  v35[11] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v25, a1[15], v26);
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v35, v34, 12);
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v29 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
  {
    v32 = 138477827;
    v33 = v28;
    _os_log_impl(&dword_245D80000, v29, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilFusion]:[sendPencilTimingStatistics]: \n%{private}@", &v32, 0xCu);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

void *sub_245F291A0(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_245F12848((v2 + 835));
    sub_245F128C8(v2 + 773);
    sub_245F12B1C(v2 + 702);
    sub_245F12B1C(v2 + 696);
    sub_245F12B1C(v2 + 538);
    sub_245F12B1C(v2 + 532);

    JUMPOUT(0x24C194490);
  }

  return result;
}

os_log_t sub_245F29240()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

void sub_245F2929C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x24C194490);
}

void sub_245F29380(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_245F293BC(uint64_t a1, unint64_t *a2, int *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = *a2;
  v9 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak((a1 + 8));
  v11 = v8;
  LODWORD(v11) = v4;
  LODWORD(v12) = v6;
  LODWORD(v13) = v7;
  objc_msgSend_updateEstimationsWithRealValuesWithQuaternion_timestamp_(Weak, v14, v15, v16, v11, COERCE_DOUBLE(v5 | 0x3EB0C6F700000000), v12, v13, v8 * 0.000001);

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_245F29448(uint64_t a1, uint64_t a2)
{
  if (sub_245E4E264(a2, &unk_2858D7340))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_245F29B80(NSObject *a1)
{
  v1 = a1;
  v126 = *MEMORY[0x277D85DE8];
  isa = a1[9].isa;
  if (isa > 1)
  {
    switch(isa)
    {
      case 4:
        v3 = 2;
        break;
      case 3:
        v3 = 6;
        break;
      case 2:
        v3 = 5;
        break;
      default:
LABEL_46:
        if ((BYTE4(a1[8].isa) & 1) == 0)
        {
          if (qword_27EE374E0 != -1)
          {
            dispatch_once(&qword_27EE374E0, &unk_2858D7350);
          }

          v103 = off_27EE374E8;
          if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = &unk_245F3EE63;
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *&buf[28] = 2081;
            *&buf[30] = "!estimatorPosition.isConverged && revokeReason != CMAPositionRevokeReasonUnknown";
            _os_log_impl(&dword_245D80000, v103, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:If not converged, there must be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_27EE374E0 != -1)
            {
              dispatch_once(&qword_27EE374E0, &unk_2858D7350);
            }
          }

          v104 = off_27EE374E8;
          if (os_signpost_enabled(off_27EE374E8))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = &unk_245F3EE63;
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *&buf[28] = 2081;
            *&buf[30] = "!estimatorPosition.isConverged && revokeReason != CMAPositionRevokeReasonUnknown";
            _os_signpost_emit_with_name_impl(&dword_245D80000, v104, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "If not converged, there must be a revoke reason", "{msg%{public}.0s:If not converged, there must be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_27EE374E0 != -1)
            {
              dispatch_once(&qword_27EE374E0, &unk_2858D7350);
            }
          }

          v1 = off_27EE374E8;
          if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = &unk_245F3EE63;
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *&buf[28] = 2081;
            *&buf[30] = "!estimatorPosition.isConverged && revokeReason != CMAPositionRevokeReasonUnknown";
            _os_log_impl(&dword_245D80000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:If not converged, there must be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v107 = "[CMAPrecisionFindingManager updateDeviceMotion:]_block_invoke";
          v6 = 156;
          goto LABEL_23;
        }

LABEL_12:
        if (qword_27EE374E0 != -1)
        {
          dispatch_once(&qword_27EE374E0, &unk_2858D7350);
        }

        v4 = off_27EE374E8;
        if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = &unk_245F3EE63;
          *&buf[18] = 2082;
          *&buf[20] = "assert";
          *&buf[28] = 2081;
          *&buf[30] = "revokeReason == CMAPositionRevokeReasonNotRevoked";
          _os_log_impl(&dword_245D80000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:If converged, there must not be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_27EE374E0 != -1)
          {
            dispatch_once(&qword_27EE374E0, &unk_2858D7350);
          }
        }

        v5 = off_27EE374E8;
        if (os_signpost_enabled(off_27EE374E8))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = &unk_245F3EE63;
          *&buf[18] = 2082;
          *&buf[20] = "assert";
          *&buf[28] = 2081;
          *&buf[30] = "revokeReason == CMAPositionRevokeReasonNotRevoked";
          _os_signpost_emit_with_name_impl(&dword_245D80000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "If converged, there must not be a revoke reason", "{msg%{public}.0s:If converged, there must not be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_27EE374E0 != -1)
          {
            dispatch_once(&qword_27EE374E0, &unk_2858D7350);
          }
        }

        v1 = off_27EE374E8;
        if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = &unk_245F3EE63;
          *&buf[18] = 2082;
          *&buf[20] = "assert";
          *&buf[28] = 2081;
          *&buf[30] = "revokeReason == CMAPositionRevokeReasonNotRevoked";
          _os_log_impl(&dword_245D80000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:If converged, there must not be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v107 = "[CMAPrecisionFindingManager updateDeviceMotion:]_block_invoke";
        v6 = 154;
LABEL_23:
        v105 = "/Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Framework/CoreMotionAlgorithms/PrecisionFinding/CMAPrecisionFindingManager.mm";
        v106 = v6;
        abort_report_np();
        goto LABEL_24;
    }

LABEL_11:
    if ((BYTE4(a1[8].isa) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  if (isa)
  {
    if (isa != 1)
    {
      goto LABEL_46;
    }

    v3 = 4;
    goto LABEL_11;
  }

LABEL_24:
  v3 = 1;
LABEL_25:
  v7 = objc_opt_new();
  v10 = v7;
  if (BYTE4(v1[8].isa))
  {
    objc_msgSend_setConvergenceStatus_(v7, v8, 2, v9, v105, v106, v107);
  }

  else
  {
    objc_msgSend_setConvergenceStatus_(v7, v8, 1, v9, v105, v106, v107);
  }

  objc_msgSend_setRevokeReason_(v10, v11, v3, v12);
  objc_msgSend_setDistance_(v10, v13, v14, v15, *&v1[7].isa);
  objc_msgSend_setHorizontalAngle_(v10, v16, v17, v18, *(&v1[7].isa + 1));
  objc_msgSend_setHorizontalAngleAccuracy_(v10, v19, v20, v21, *&v1[8].isa);
  if (BYTE4(v1[9].isa) == 1)
  {
    v25 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v22, v23, v24, *&v1[7].isa);
    objc_msgSend_setHorizontalDistanceNumber_(v10, v26, v25, v27);
  }

  else
  {
    objc_msgSend_setHorizontalDistanceNumber_(v10, v22, 0, v24);
  }

  v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v28, v29, v30, *(&v1[7].isa + 1));
  objc_msgSend_setHorizontalAngleNumber_(v10, v32, v31, v33);
  v37 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v34, v35, v36, *&v1[8].isa);
  objc_msgSend_setHorizontalAngleAccuracyNumber_(v10, v38, v37, v39);
  v43 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v40, v41, v42, *&v1[8].isa);
  objc_msgSend_setHorizontalAngleUncertaintyNumber_(v10, v44, v43, v45);
  v48 = v1[4].isa;
  v49 = *(v48 + 23);
  v50 = *(v48 + 102);
  if (v50)
  {
    objc_msgSend_setVerticalState_(v10, v46, 2, v47);
  }

  else
  {
    objc_msgSend_setVerticalState_(v10, v46, 1, v47);
  }

  v54 = objc_msgSend_delegate(v1[4].isa, v51, v52, v53);
  objc_msgSend_didUpdatePreciseDevicePosition_withError_(v54, v55, v10, 0);
  v59 = objc_msgSend_analyticsManager(v1[4].isa, v56, v57, v58);
  objc_msgSend_feedRevokeReason_(v59, v60, LODWORD(v1[9].isa), v61);
  v108 = *(&v1[11].isa + 4);
  v62 = *(&v1[12].isa + 1);
  v109 = v1[13].isa;
  v66 = objc_msgSend_analyticsManager(v1[4].isa, v63, v64, v65);
  v67 = v62;
  objc_msgSend_feedEstimatedHeight_(v66, v68, v69, v70, v67);
  v74 = objc_msgSend_analyticsManager(v1[4].isa, v71, v72, v73);
  objc_msgSend_feedFractionAboveThreshold_(v74, v75, v76, v77, v49);
  v78 = *&v1[8].isa;
  *buf = *&v1[6].isa;
  *&buf[16] = v78;
  v79 = *&v1[12].isa;
  v110[0] = *&v1[10].isa;
  v110[1] = v79;
  objc_msgSend_timestamp(v1[5].isa, v80, v81, v82);
  sub_245F22370(buf, v110, v83);
  if (*(&v1[7].isa + 1) > 0.0 || *&v1[8].isa > 0.0 || (v101.i64[0] = v108, v101.i64[1] = v109, (vaddvq_s32(vandq_s8(vcgtzq_f32(v101), xmmword_245F33920)) & 0xF) != 0))
  {
    v87 = v1[4].isa;
    objc_msgSend_timestamp(v1[5].isa, v84, v85, v86);
    v89 = (v88 * 1000000.0);
    v90 = *(v87 + 2762);
    if (v90 && *(v87 + 2763) + v90 > v89)
    {
      v91 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v91 = OS_LOG_TYPE_DEFAULT;
      *(v87 + 2763) = v89;
    }

    if (qword_27EE374E0 != -1)
    {
      dispatch_once(&qword_27EE374E0, &unk_2858D7350);
    }

    v92 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, v91))
    {
      objc_msgSend_timestamp(v1[5].isa, v93, v94, v95);
      v96 = *(&v1[7].isa + 1);
      v97 = *&v1[8].isa;
      v98 = BYTE4(v1[8].isa);
      v99 = v1[9].isa;
      *buf = 134351616;
      *&buf[4] = v100;
      *&buf[12] = 2050;
      *&buf[14] = v96;
      *&buf[22] = 2050;
      *&buf[24] = v97;
      *&buf[32] = 2050;
      *&buf[34] = *&v108;
      v112 = 2050;
      v113 = *(&v108 + 1);
      v114 = 2050;
      v115 = v67;
      v116 = 2050;
      v117 = *&v109;
      v118 = 2050;
      v119 = *(&v109 + 1);
      v120 = 1026;
      v121 = v98;
      v122 = 1026;
      v123 = v99;
      v124 = 1026;
      v125 = v50 & 1;
      _os_log_impl(&dword_245D80000, v92, v91, "CMAPrecisionFindingManager,timestamp,%{public}f,horizontalAngle,%{public}f,horizontalAngleUncertainty,%{public}f,positionX,%{public}f,positionY,%{public}f,positionZ,%{public}f,velocityX,%{public}f,velocityY,%{public}f,isConverged,%{public}d,revokeReason,%{public}d,verticalState,%{public}d", buf, 0x64u);
    }
  }

  v102 = *MEMORY[0x277D85DE8];
}

void sub_245F2A95C(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = objc_msgSend_analyticsManager(*(a1 + 32), v3, v4, v5);
  v10 = objc_msgSend_analyticsDictionary(v6, v7, v8, v9);
  v18 = objc_msgSend_initWithDictionary_(v2, v11, v10, v12);
  v16 = objc_msgSend_delegate(*(a1 + 32), v13, v14, v15);
  objc_msgSend_didUpdateAnalytics_withError_(v16, v17, v18, 0);
}

os_log_t sub_245F2AB64()
{
  result = os_log_create("com.apple.locationd.Motion", "PrecisionFinding");
  off_27EE374E8 = result;
  return result;
}

void sub_245F2AB94()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void sub_245F2AC30(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_245D80000, a2, OS_LOG_TYPE_DEBUG, "MSL config updated from user defaults %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_245F2ACC0(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_245D80000, a2, OS_LOG_TYPE_FAULT, "fUserDefaults returned nil for domain: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_245F2AE40(uint64_t a1, void *a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 39) < 0)
  {
    a2 = *a2;
  }

  v4 = 136446210;
  v5 = a2;
  _os_log_error_impl(&dword_245D80000, log, OS_LOG_TYPE_ERROR, "Unable to create directory at path: %{public}s", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_245F2AEF0()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37600 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v0 = qword_27EE375F8;
    if (os_log_type_enabled(qword_27EE375F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v3 = "assert";
      v4 = 2080;
      v5 = "fValid";
      v6 = 2080;
      v7 = "On call to writeItem client should check if the logger was opened";
      _os_log_fault_impl(&dword_245D80000, v0, OS_LOG_TYPE_FAULT, "Event: %s\n Condition: %s\n Message: %s", buf, 0x20u);
      if (qword_27EE37600 != -1)
      {
        dispatch_once(&qword_27EE37600, &unk_2858D1908);
      }
    }

    v1 = qword_27EE375F8;
    if (os_log_type_enabled(qword_27EE375F8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v3 = "assert";
      v4 = 2080;
      v5 = "fValid";
      v6 = 2080;
      v7 = "On call to writeItem client should check if the logger was opened";
      _os_log_impl(&dword_245D80000, v1, OS_LOG_TYPE_INFO, "Event: %s\n Condition: %s\n Message: %s", buf, 0x20u);
    }

    abort_report_np();
LABEL_8:
    dispatch_once(&qword_27EE37600, &unk_2858D1908);
  }
}

void sub_245F2B0C4(unsigned int *a1, unsigned int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6EF0);
  }

  v4 = qword_27EE37528;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
  {
    v5 = *a1;
    v6 = *a2;
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_245D80000, v4, OS_LOG_TYPE_FAULT, "Assertion failed: rhs.capacity() == capacity(), file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 70,capacity,%zu,%zu.", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_245F2B1E8()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B294()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B340()
{
  if (__cxa_guard_acquire(&qword_27EE376A0))
  {
    qword_27EE376A8 = 0x3F80000000000000;
    dword_27EE376B0 = 0;

    __cxa_guard_release(&qword_27EE376A0);
  }
}

void sub_245F2B3F0()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B49C()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B548()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B5F4()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B6A0()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
  {
    sub_245F0F4F8();
    sub_245F0F510(&dword_245D80000, v0, v1, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B760()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B80C()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 231,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B8B8()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
  {
    sub_245F0F4F8();
    sub_245F0F510(&dword_245D80000, v0, v1, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 232,invalid element %zu <= %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2B978()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 186,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2BA24()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  v0 = qword_27EE37528;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_245D80000, v0, OS_LOG_TYPE_FAULT, "Assertion failed: i0 < N-Ni+1 && j0 < N-Nj+1, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 302,indices exceed factored matrix size.", v1, 2u);
  }
}

void sub_245F2BAB0()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2BB64()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2BC14()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2BCC4()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2BD74()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2BE24()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2BED4()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2BF80()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C034()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C0E8()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C1B0()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C25C()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C308()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C3B4()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C460()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C50C()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C5B8()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C664()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C710()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C7BC()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C868()
{
  v7 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", v2, v3, v4, v5, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_245F2C964()
{
  if (__cxa_guard_acquire(&qword_27EE376D0))
  {
    qword_27EE376E0 = 0x3FC90FDB00000000;
    dword_27EE376E8 = 0;

    __cxa_guard_release(&qword_27EE376D0);
  }
}

void sub_245F2C9C4()
{
  if (__cxa_guard_acquire(&qword_27EE376D8))
  {
    qword_27EE376F0 = 0;
    dword_27EE376EC = -1077342245;

    __cxa_guard_release(&qword_27EE376D8);
  }
}

void sub_245F2CA9C()
{
  if (__cxa_guard_acquire(&qword_27EE388B8))
  {
    qword_27EE388C0 = 0x3F80000000000000;
    dword_27EE388C8 = 0;
    __cxa_guard_release(&qword_27EE388B8);
  }
}

void sub_245F2CB70()
{
  if (__cxa_guard_acquire(&qword_27EE388D0))
  {
    qword_27EE388E0 = 0x3F80000000000000;
    dword_27EE388E8 = 0;

    __cxa_guard_release(&qword_27EE388D0);
  }
}

void sub_245F2CBD0()
{
  if (__cxa_guard_acquire(&qword_27EE388D8))
  {
    qword_27EE388F0 = 0;
    dword_27EE388F8 = 1065353216;

    __cxa_guard_release(&qword_27EE388D8);
  }
}

void sub_245F2CC2C(unint64_t a1)
{
  if (__cxa_guard_acquire(&qword_27EE38908))
  {
    *&v2 = 6.28318531 / a1;
    dword_27EE38900 = v2;

    __cxa_guard_release(&qword_27EE38908);
  }
}

void sub_245F2CCAC()
{
  if (__cxa_guard_acquire(&qword_27EE38910))
  {
    dword_27EE38904 = 1032971806;

    __cxa_guard_release(&qword_27EE38910);
  }
}

void sub_245F2CCFC()
{
  if (__cxa_guard_acquire(&qword_27EE37540))
  {
    __cxa_atexit(nullsub_7, &off_281B31D00, &dword_245D80000);

    __cxa_guard_release(&qword_27EE37540);
  }
}

void sub_245F2CD64(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void sub_245F2CD7C(uint64_t a1)
{
  if (__cxa_guard_acquire(&qword_27EE37550))
  {
    *&qword_27EE37548 = (1.0 / *(a1 + 48));

    __cxa_guard_release(&qword_27EE37550);
  }
}

__n128 sub_245F2CE3C()
{
  if (__cxa_guard_acquire(&qword_27EE38920))
  {
    xmmword_27EE38940 = xmmword_245F336F0;
    unk_27EE38950 = 0u;
    xmmword_27EE38960 = xmmword_245F33700;
    unk_27EE38970 = 0u;
    xmmword_27EE38980 = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    xmmword_27EE38990 = _Q0;
    __cxa_guard_release(&qword_27EE38920);
  }

  return result;
}

__n128 sub_245F2CE9C()
{
  if (__cxa_guard_acquire(qword_27EE38928))
  {
    xmmword_27EE389A0 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    *algn_27EE389B0 = _Q0;
    unk_27EE389D0 = 0u;
    xmmword_27EE389C0 = xmmword_245F336F0;
    unk_27EE389F0 = 0u;
    xmmword_27EE389E0 = xmmword_245F33710;
    __cxa_guard_release(qword_27EE38928);
  }

  return result;
}

uint64_t PB::TextFormatter::format()
{
  return MEMORY[0x2821A4518]();
}

{
  return MEMORY[0x2821A4520]();
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x2821A4528](this, a2);
}

{
  return MEMORY[0x2821A4540](this, a2);
}

{
  return MEMORY[0x2821A4548](this, a2);
}

{
  return MEMORY[0x2821A4550](this, a2);
}

{
  return MEMORY[0x2821A4558](this, a2);
}

uint64_t PB::Reader::read()
{
  return MEMORY[0x2821A4580]();
}

{
  return MEMORY[0x2821A4588]();
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x2821A45A8](this);
}

{
  return MEMORY[0x2821A45B0](this);
}

{
  return MEMORY[0x2821A45B8](this);
}

{
  return MEMORY[0x2821A45C0](this);
}

uint64_t PB::Writer::write()
{
  return MEMORY[0x2821A45D0]();
}

{
  return MEMORY[0x2821A45D8]();
}

uint64_t PB::Writer::writeSInt(PB::Writer *this)
{
  return MEMORY[0x2821A45F8](this);
}

{
  return MEMORY[0x2821A4600](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7938]();
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

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}