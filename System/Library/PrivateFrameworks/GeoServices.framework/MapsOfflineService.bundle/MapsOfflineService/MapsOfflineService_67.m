uint64_t sub_45185C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a1 + 8;
  if (!*(a1 + 32))
  {
    v24 = *(a1 + 8);
    if (v24 == *(a1 + 16))
    {
LABEL_10:
      v15 = 0;
      v6 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      LODWORD(v19) = 0;
      v23 = 0;
      v16 = 0;
      v18 = 0;
      v31 = 0;
      memset(v70, 0, 7);
      if (!*(a1 + 32))
      {
        goto LABEL_11;
      }

      goto LABEL_40;
    }

    v15 = *a1;
    v19 = *v24;
    v25 = sub_2B4D24(*a1, *v24, 0);
    v26 = &v25[-*v25];
    v27 = *v26;
    if (v27 < 7)
    {
      v23 = 0;
      if (v27 < 5)
      {
        v51 = 0;
        goto LABEL_34;
      }
    }

    else if (*(v26 + 3))
    {
      v23 = *&v25[*(v26 + 3)];
    }

    else
    {
      v23 = 0;
    }

    v51 = *(v26 + 2);
    if (v51)
    {
      v51 += &v25[*&v25[v51]];
    }

LABEL_34:
    v28 = (v51 + 4 * (v19 >> 32) + 4 + *(v51 + 4 * (v19 >> 32) + 4));
    v55 = (v28 - *v28);
    v56 = *v55;
    if (v56 < 7)
    {
      v29 = 0;
      goto LABEL_39;
    }

    if (v55[3])
    {
      v29 = v28 + v55[3] + *(v28 + v55[3]);
      if (v56 < 0xB)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v29 = 0;
      if (v56 < 0xB)
      {
        goto LABEL_39;
      }
    }

    v62 = v55[5];
    if (v62)
    {
      v16 = 0;
      v18 = 0;
      v31 = 0;
      v30 = v28 + v62 + *(v28 + v62);
      if (*(a1 + 32))
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    }

LABEL_39:
    v30 = 0;
    v16 = 0;
    v18 = 0;
    v31 = 0;
    if (!*(a1 + 32))
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

  v7 = *(a1 + 16);
  if (*(a1 + 8) == v7)
  {
    goto LABEL_10;
  }

  v8 = a1 + 8;
  v9 = *(v7 - 8);
  v10 = sub_2B4D24(*a1, v9, 0);
  v11 = &v10[*&v10[-*v10 + 4]];
  v12 = &v11[4 * HIDWORD(v9) + *v11];
  v13 = (v12 + 4 + *(v12 + 4));
  v14 = *(a1 + 8);
  v15 = *a1;
  v16 = ((*(a1 + 16) - v14) >> 3) - 1;
  v17 = (v13 + *(v13 - *v13 + 6));
  v18 = *(v17 + *v17) - 1;
  v19 = *(v14 + 8 * v16);
  v20 = sub_2B4D24(*a1, v19, 0);
  v21 = &v20[-*v20];
  v22 = *v21;
  if (v22 < 7)
  {
    v23 = 0;
    if (v22 < 5)
    {
      v50 = 0;
      v6 = v8;
      goto LABEL_20;
    }
  }

  else if (*(v21 + 3))
  {
    v23 = *&v20[*(v21 + 3)];
  }

  else
  {
    v23 = 0;
  }

  v6 = v8;
  v50 = *(v21 + 2);
  if (v50)
  {
    v50 += &v20[*&v20[v50]];
  }

LABEL_20:
  v28 = (v50 + 4 * (v19 >> 32) + 4 + *(v50 + 4 * (v19 >> 32) + 4));
  v52 = (v28 - *v28);
  v53 = *v52;
  if (v53 < 7)
  {
    v29 = 0;
    goto LABEL_25;
  }

  if (!v52[3])
  {
    v29 = 0;
    if (v53 < 0xB)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v29 = v28 + v52[3] + *(v28 + v52[3]);
  if (v53 >= 0xB)
  {
LABEL_28:
    v54 = v52[5];
    if (!v54)
    {
      goto LABEL_25;
    }

    v30 = v28 + v54 + *(v28 + v54);
    v31 = 1;
    if (*(a1 + 32))
    {
      goto LABEL_40;
    }

LABEL_11:
    v32 = *(a1 + 16);
    if (*(a1 + 8) != v32)
    {
      v33 = v15;
      v34 = v6;
      v35 = a2;
      v36 = a3;
      v37 = *(v32 - 8);
      v66 = v19;
      v64 = v16;
      v65 = v18;
      v63 = v23;
      v19 = v29;
      v38 = v30;
      v39 = v31;
      v40 = sub_2B4D24(*a1, v37, 0);
      v31 = v39;
      v30 = v38;
      v29 = v19;
      v41 = 0;
      v42 = &v40[*&v40[-*v40 + 4]];
      v43 = HIDWORD(v37);
      a3 = v36;
      a2 = v35;
      v6 = v34;
      v15 = v33;
      v44 = &v42[4 * v43 + *v42];
      v45 = (v44 + 4 + *(v44 + 4));
      v46 = (v45 + *(v45 - *v45 + 6));
      v47 = *(v46 + *v46);
      v48 = *a1;
      v23 = v63;
      v16 = v64;
      v18 = v65;
      LODWORD(v19) = v66;
      v49 = (*(a1 + 16) - *(a1 + 8)) >> 3;
      v68 = 0u;
      v69 = 0u;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_25:
  v30 = 0;
  v31 = 1;
  if (!*(a1 + 32))
  {
    goto LABEL_11;
  }

LABEL_40:
  if (*(a1 + 8) != *(a1 + 16))
  {
    v48 = *a1;
    v68 = 0u;
    v69 = 0u;
    v41 = 1;
    LODWORD(v49) = -1;
    v47 = -1;
    goto LABEL_43;
  }

LABEL_42:
  v48 = 0;
  LODWORD(v49) = 0;
  v47 = 0;
  v41 = 0;
  v68 = 0u;
  v69 = 0u;
  memset(v67, 0, 7);
LABEL_43:
  v73 = v68;
  v80[0] = v15;
  v80[1] = v6;
  v80[2] = v28;
  v80[3] = v29;
  v80[4] = v30;
  v81 = v19;
  v82 = v23;
  v83 = v16;
  v84 = v18;
  v85 = v31;
  *v86 = v70[0];
  *&v86[3] = *(v70 + 3);
  v72 = v48;
  v74 = v69;
  v75 = 0;
  v76 = v49;
  v77 = v47;
  v78 = v41;
  *v79 = v67[0];
  *&v79[3] = *(v67 + 3);
  v88 = a2;
  v87 = 0.0;
  v71[0] = &v87;
  v71[1] = a3;
  v71[2] = &v88;
  sub_451E00(v80, &v72, v71);
  v57 = v87 * 100.0;
  if (v87 * 100.0 >= 0.0)
  {
    v58 = v87 * 100.0;
    if (v57 >= 4.50359963e15)
    {
      goto LABEL_49;
    }

    v59 = (v57 + v57) + 1;
  }

  else
  {
    v58 = v87 * 100.0;
    if (v57 <= -4.50359963e15)
    {
      goto LABEL_49;
    }

    v59 = (v57 + v57) - 1 + (((v57 + v57) - 1) >> 63);
  }

  v58 = (v59 >> 1);
LABEL_49:
  if (v58 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v57 >= 0.0)
  {
    if (v57 < 4.50359963e15)
    {
      v60 = (v57 + v57) + 1;
      return (v60 >> 1);
    }
  }

  else if (v57 > -4.50359963e15)
  {
    v60 = (v57 + v57) - 1 + (((v57 + v57) - 1) >> 63);
    return (v60 >> 1);
  }

  return v57;
}

uint64_t sub_451E00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(result + 48) != *(a2 + 48) || *(result + 52) != *(a2 + 52))
  {
    v6 = *(result + 16);
    v34[0] = *result;
    v34[1] = v6;
    v7 = *(result + 48);
    v34[2] = *(result + 32);
    v35 = v7;
    if (*(result + 56))
    {
      result = sub_31EA68(result);
    }

    else
    {
      result = sub_31E948(result);
    }

    v31 = vdupq_n_s64(0xC066800000000000);
    v32 = vdupq_n_s64(0x4076800000000000uLL);
    v30 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v29 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    if (*(v5 + 48) != *(a2 + 48))
    {
      goto LABEL_11;
    }

LABEL_10:
    if (*(v5 + 52) != *(a2 + 52))
    {
      while (1)
      {
LABEL_11:
        v8 = sub_318DA8(v34);
        v10 = v9;
        v11 = sub_318DA8(v5);
        v13 = v12;
        v14 = **(a3 + 16);
        v15 = exp(3.14159265 - HIDWORD(v8) * 6.28318531 / 4294967300.0);
        v16 = atan((v15 - 1.0 / v15) * 0.5) * 57.2957795 * 0.0174532925;
        v17 = exp(3.14159265 - HIDWORD(v11) * 6.28318531 / 4294967300.0);
        v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795 * 0.0174532925;
        v19.i64[0] = v8;
        v19.i64[1] = v11;
        v20 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v19), v32), v29), v31), v30);
        v33 = vsubq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0];
        v21 = sin((v16 - v18) * 0.5);
        v22 = v21 * v21;
        v23 = cos(v16);
        v24 = v23 * cos(v18);
        v25 = sin(0.5 * v33);
        v26 = atan2(sqrt(v25 * v25 * v24 + v22), sqrt(1.0 - (v25 * v25 * v24 + v22)));
        v27 = (v26 + v26) * 6372797.56;
        if (v14 == 1 && v10 != 0x7FFFFFFF && v13 != 0x7FFFFFFF)
        {
          v28 = fabs((v10 - v13));
          v27 = sqrt(v27 * v27 + v28 / 100.0 * (v28 / 100.0));
        }

        **a3 = v27 + **a3;
        if (*(v5 + 56))
        {
          sub_31EA68(v5);
          if (!BYTE8(v35))
          {
            goto LABEL_19;
          }

LABEL_9:
          result = sub_31EA68(v34);
          if (*(v5 + 48) == *(a2 + 48))
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_31E948(v5);
          if (BYTE8(v35))
          {
            goto LABEL_9;
          }

LABEL_19:
          result = sub_31E948(v34);
          if (*(v5 + 48) == *(a2 + 48))
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  return result;
}

void sub_45213C(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_45185C(**a1, 1, &v15);
  sub_AAE34(v3, v4);
  sub_AAE4C(v3, *v2[1]);
  sub_AAE60(v3, *v2[2]);
  sub_AAE74(v3, *v2[3]);
  sub_AAFAC(v3, *v2[4]);
  sub_AAFC0(v3, *v2[5]);
  v5 = *v2[1] / *v2[2];
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  sub_AAEA0(v3, v5);
  LOBYTE(v6) = *v2[6];
  v15 = v6;
  sub_AAEA8(v3, &v15);
  sub_AAEB4(v3, 0.0);
  v7 = sub_4566B4((v2[7] + 12));
  v8 = v2[7];
  if (v7)
  {
    v9 = sub_3F80((v8 + 12));
  }

  else
  {
    v9 = sub_5AAC4(v8 + 12);
  }

  sub_AAFFC(v3, v9);
  v10 = sub_4566B4(v2[7]);
  v11 = v2[7];
  if (v10)
  {
    v12 = sub_3F80(v11);
    sub_A2448(v3, v12);
    if (!sub_4566B4(v2[7]))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = sub_5AAC4(v11);
    sub_A2448(v3, v13);
    if (!sub_4566B4(v2[7]))
    {
LABEL_8:
      sub_AAEC8(v3, 0);
      sub_9C3B0();
    }
  }

  v14 = sub_456754(v2[7]);
  sub_AAEC8(v3, v14);
  sub_9C3B0();
}

uint64_t sub_452478(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_45185C(**a1, 1, &v32);
  sub_AAE34(v3, v4);
  sub_AAE4C(v3, *v2[1]);
  sub_AAE60(v3, *v2[2]);
  sub_AAE74(v3, *v2[3]);
  sub_AAFAC(v3, *v2[4]);
  sub_AAFC0(v3, *v2[5]);
  v5 = *v2[1] / *v2[2];
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  sub_AAEA0(v3, v5);
  LOBYTE(v6) = *v2[6];
  v32 = v6;
  sub_AAEA8(v3, &v32);
  sub_AAEB4(v3, 0.0);
  v7 = sub_4566B4((v2[7] + 12));
  v8 = v2[7];
  if (v7)
  {
    v9 = sub_3F80((v8 + 12));
  }

  else
  {
    v9 = sub_5AAC4(v8 + 12);
  }

  sub_AAFFC(v3, v9);
  v10 = sub_4566B4(v2[7]);
  v11 = v2[7];
  if (v10)
  {
    v12 = sub_3F80(v11);
    sub_A2448(v3, v12);
    if (!sub_4566B4(v2[7]))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = sub_5AAC4(v11);
    sub_A2448(v3, v17);
    if (!sub_4566B4(v2[7]))
    {
LABEL_8:
      sub_AAEC8(v3, 0);
      if (!sub_6EECC())
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  v18 = sub_456754(v2[7]);
  sub_AAEC8(v3, v18);
  if (!sub_6EECC())
  {
LABEL_9:
    v13 = v2[10];
    v14 = *v13 - *v2[11];
    v15 = v14 * sub_2A5130(v3, *v13);
    if (v15 >= 0.0)
    {
      if (v15 < 4.50359963e15)
      {
        v16 = (v15 + v15) + 1;
        goto LABEL_35;
      }
    }

    else if (v15 > -4.50359963e15)
    {
      v16 = (v15 + v15) - 1 + (((v15 + v15) - 1) >> 63);
LABEL_35:
      v15 = (v16 >> 1);
    }

    v34 = v15;
    v32 = COERCE_DOUBLE(sub_456D5C(&v34));
    v33 = v30;
    sub_456D84(v2[9], &v32);
    return *v2[9];
  }

LABEL_14:
  v19 = v2[8];
  v34 = *v2[4];
  v20 = *v19;
  v21 = v19[1];
  if (*v19 != v21)
  {
    do
    {
      if (v21 == v20 + 12)
      {
        return *v2[9];
      }

      if (*(v20 + 20) >= *(v20 + 8))
      {
        v22 = v21;
        if (v20 == v21)
        {
          goto LABEL_17;
        }

        v22 = v20 - 12;
        while (v22 + 24 != v21)
        {
          v28 = *(v22 + 32);
          v29 = *(v22 + 20);
          v22 += 12;
          if (v28 < v29)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v22 = v21;
        if (v20 == v21)
        {
          goto LABEL_17;
        }

        v22 = v20 - 12;
        while (v22 + 24 != v21)
        {
          v26 = *(v22 + 32);
          v27 = *(v22 + 20);
          v22 += 12;
          if (v26 > v27)
          {
            goto LABEL_17;
          }
        }
      }

      v22 = v21;
LABEL_17:
      if (v22 == v21)
      {
        v23 = -12;
      }

      else
      {
        v23 = 0;
      }

      v24 = v22 + v23;
      v32 = COERCE_DOUBLE(sub_450B98(v19, v20, v22 + v23, &v34, v3, 1, *v2[1]));
      v33 = v25;
      sub_456D84(v2[9], &v32);
      v19 = v2[8];
      v21 = v19[1];
      v20 = v24;
    }

    while (v24 != v21);
  }

  return *v2[9];
}

void sub_4527AC(int ***a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_AAE88(*a2, ***a1);
  v4 = *v2[1];
  v5 = *v2[2] + 12;
  v6 = 0.0;
  if (v5 != v4 && v4 + 12 != v5)
  {
    v11 = 0.0;
    do
    {
      sub_314EC(v4, (v4 + 12), v6);
      v11 = v11 + v6;
      v12 = v4 + 24;
      v4 += 12;
    }

    while (v12 != v5);
    v6 = v11 * 100.0;
    if (v11 * 100.0 < 0.0)
    {
      if (v6 <= -4.50359963e15)
      {
        v8 = 1;
        v9 = v11 * 100.0;
      }

      else
      {
        v9 = (((v6 + v6) - 1) / 2);
        v8 = 1;
      }

LABEL_7:
      if (v9 >= 9.22337204e18)
      {
        v13 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_20;
      }

      if (v8)
      {
        if (v6 > -4.50359963e15)
        {
          v10 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
LABEL_18:
          v6 = (v10 >> 1);
        }
      }

      else if (v6 < 4.50359963e15)
      {
        v10 = (v6 + v6) + 1;
        goto LABEL_18;
      }

      v13 = v6;
LABEL_20:
      sub_AAE34(v3, v13);
      v14 = v13 / 100.0 * 1000.0 / (*v2[3] / 3.6) / 100.0;
      if (v14 >= 0.0)
      {
        if (v14 >= 4.50359963e15)
        {
          goto LABEL_26;
        }

        v15 = (v14 + v14) + 1;
      }

      else
      {
        if (v14 <= -4.50359963e15)
        {
          goto LABEL_26;
        }

        v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
      }

      v14 = (v15 >> 1);
LABEL_26:
      v16 = v14;
      sub_AAE74(v3, v14);
      sub_AAFAC(v3, *v2[4]);
      *v2[4] += v16;
      sub_9BD0C(v3);
    }

    if (v6 >= 4.50359963e15)
    {
      v8 = 0;
      v9 = v11 * 100.0;
      goto LABEL_7;
    }
  }

  v8 = 0;
  v9 = (((v6 + v6) + 1) >> 1);
  goto LABEL_7;
}

uint64_t sub_452A18(int ***a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_AAE88(*a2, ***a1);
  v4 = *v2[1];
  v5 = *v2[2] + 12;
  v6 = 0.0;
  if (v5 == v4 || v4 + 12 == v5)
  {
    goto LABEL_6;
  }

  v11 = 0.0;
  do
  {
    sub_314EC(v4, (v4 + 12), v6);
    v11 = v11 + v6;
    v12 = v4 + 24;
    v4 += 12;
  }

  while (v12 != v5);
  v6 = v11 * 100.0;
  if (v11 * 100.0 >= 0.0)
  {
    if (v6 >= 4.50359963e15)
    {
      v8 = 0;
      v9 = v11 * 100.0;
      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    v9 = (((v6 + v6) + 1) >> 1);
    goto LABEL_7;
  }

  if (v6 <= -4.50359963e15)
  {
    v8 = 1;
    v9 = v11 * 100.0;
  }

  else
  {
    v9 = (((v6 + v6) - 1) / 2);
    v8 = 1;
  }

LABEL_7:
  if (v9 >= 9.22337204e18)
  {
    v13 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_20;
  }

  if (v8)
  {
    if (v6 > -4.50359963e15)
    {
      v10 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
LABEL_18:
      v6 = (v10 >> 1);
    }
  }

  else if (v6 < 4.50359963e15)
  {
    v10 = (v6 + v6) + 1;
    goto LABEL_18;
  }

  v13 = v6;
LABEL_20:
  sub_AAE34(v3, v13);
  v14 = v13 / 100.0 * 1000.0 / (*v2[3] / 3.6) / 100.0;
  if (v14 >= 0.0)
  {
    if (v14 < 4.50359963e15)
    {
      v15 = (v14 + v14) + 1;
      goto LABEL_25;
    }
  }

  else if (v14 > -4.50359963e15)
  {
    v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
LABEL_25:
    v14 = (v15 >> 1);
  }

  v16 = v14;
  sub_AAE74(v3, v14);
  v17 = sub_AAFAC(v3, *v2[4]);
  *v2[4] += v16;
  v19 = sub_2A5130(v3, v17);
  return sub_456D5C(&v19);
}

void sub_452C84()
{
  byte_278FAA7 = 3;
  LODWORD(qword_278FA90) = 5136193;
  byte_278FABF = 3;
  LODWORD(qword_278FAA8) = 5136194;
  byte_278FAD7 = 3;
  LODWORD(qword_278FAC0) = 5136195;
  byte_278FAEF = 15;
  strcpy(&qword_278FAD8, "vehicle_mass_kg");
  byte_278FB07 = 21;
  strcpy(&xmmword_278FAF0, "vehicle_cargo_mass_kg");
  byte_278FB1F = 19;
  strcpy(&qword_278FB08, "vehicle_aux_power_w");
  byte_278FB37 = 15;
  strcpy(&qword_278FB20, "dcdc_efficiency");
  strcpy(&qword_278FB38, "drive_train_efficiency");
  HIBYTE(word_278FB4E) = 22;
  operator new();
}

void sub_452E60(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_278FB4E) < 0)
  {
    sub_21E1C98();
  }

  sub_21E1CA4();
  _Unwind_Resume(a1);
}

uint64_t sub_452E80(void *a1)
{
  if (sub_F63FF4(a1) > 1)
  {
    v3 = sub_45AC50(a1) + 552;
    v4 = sub_588D8(a1);
    if (v3 != v4)
    {
      v5 = v4;
      do
      {
        v6 = sub_73EEC(v3);
        if (*v6 != 0x7FFFFFFF && v6[9] != 0x7FFFFFFF)
        {
          v8 = v6;
          if (sub_4566B4(v6 + 2))
          {
            v9 = v8[28];
            if (v9)
            {
              if (v9 == 2)
              {
                v10 = *(v8 + 13);
                if (v10 <= 0xFFFFFFFEFFFFFFFFLL && v10)
                {
                  return v3;
                }
              }

              else
              {
                if (v9 != 1)
                {
                  sub_5AF20();
                }

                if (*(v8 + 13) != -1)
                {
                  return v3;
                }
              }
            }
          }
        }

        v3 += 552;
      }

      while (v3 != v5);
      return v5;
    }

    return v3;
  }

  else
  {

    return sub_588D8(a1);
  }
}

uint64_t sub_452F94(uint64_t a1)
{
  if (sub_4C35B0(a1) > 1)
  {
    v3 = sub_5FC64(a1) + 1096;
    v4 = sub_445EF4(a1);
    if (v3 != v4)
    {
      v5 = v4;
      do
      {
        v6 = sub_4D2130(v3);
        if (*v6 != 0x7FFFFFFF && v6[9] != 0x7FFFFFFF)
        {
          v8 = v6;
          if (sub_4566B4(v6 + 2))
          {
            v9 = v8[28];
            if (v9)
            {
              if (v9 == 2)
              {
                v10 = *(v8 + 13);
                if (v10 <= 0xFFFFFFFEFFFFFFFFLL && v10)
                {
                  return v3;
                }
              }

              else
              {
                if (v9 != 1)
                {
                  sub_5AF20();
                }

                if (*(v8 + 13) != -1)
                {
                  return v3;
                }
              }
            }
          }
        }

        v3 += 1096;
      }

      while (v3 != v5);
      return v5;
    }

    return v3;
  }

  else
  {

    return sub_445EF4(a1);
  }
}

uint64_t sub_4530A8(uint64_t a1)
{
  if (sub_4C35B0(a1) > 1)
  {
    sub_4C35E0(a1);
    v3 = v2;
    sub_4C35EC(a1);
    v5 = v4 + 1096;
    if (v3 != v4 + 1096)
    {
      do
      {
        v8 = v3 - 1096;
        v9 = sub_4D2130(v3 - 1096);
        if (*v9 != 0x7FFFFFFF && v9[9] != 0x7FFFFFFF)
        {
          v11 = v9;
          if (sub_4566B4(v9 + 2))
          {
            v12 = v11[28];
            if (v12)
            {
              if (v12 == 2)
              {
                v6 = *(v11 + 13);
                if (v6 <= 0xFFFFFFFEFFFFFFFFLL && v6 != 0)
                {
                  goto LABEL_21;
                }
              }

              else
              {
                if (v12 != 1)
                {
                  sub_5AF20();
                }

                if (*(v11 + 13) != -1)
                {
                  goto LABEL_21;
                }
              }
            }
          }
        }

        v3 -= 1096;
      }

      while (v8 != v5);
      v3 = v5;
LABEL_21:
      v5 = v3;
    }

    sub_4C35EC(a1);
    if (v5 != v13 + 1096)
    {
      return v5 - 1096;
    }
  }

  return sub_445EF4(a1);
}

uint64_t sub_4531E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(sub_4D2130(a1) + 112))
  {
    return 0;
  }

  v6 = sub_3B1D8C(a3);
  v7 = sub_4D2130(a1);
  v8 = sub_2ADD9C(v6, *(v7 + 104), *(v7 + 112));
  return sub_445AB0((a2 + 160), v8) ^ 1;
}

uint64_t sub_453260(uint64_t a1)
{
  if (sub_4C35B0(a1) >= 2)
  {
    v4 = sub_5FC64(a1) + 1096;
    v5 = sub_445EF4(a1);
    if (v4 == v5)
    {
      return 0;
    }

    v6 = v5;
    v2 = 0;
    while (1)
    {
      v7 = sub_4D2130(v4);
      if (*v7 == 0x7FFFFFFF || v7[9] == 0x7FFFFFFF)
      {
        goto LABEL_8;
      }

      v9 = v7;
      if (!sub_4566B4(v7 + 2))
      {
        goto LABEL_8;
      }

      v10 = v9[28];
      switch(v10)
      {
        case 0:
          goto LABEL_8;
        case 2:
          v11 = *(v9 + 13);
          if (v11)
          {
            v12 = v11 >= 0xFFFFFFFF00000000;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            goto LABEL_8;
          }

          break;
        case 1:
          if (*(v9 + 13) == -1)
          {
            goto LABEL_8;
          }

          break;
        default:
          sub_5AF20();
      }

      ++v2;
LABEL_8:
      v4 += 1096;
      if (v4 == v6)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t sub_45336C(void *a1)
{
  if (sub_F63FF4(a1) >= 2)
  {
    v4 = sub_45AC50(a1) + 552;
    v5 = sub_588D8(a1);
    if (v4 == v5)
    {
      return 0;
    }

    v6 = v5;
    v2 = 0;
    while (1)
    {
      v7 = sub_73EEC(v4);
      if (*v7 == 0x7FFFFFFF || v7[9] == 0x7FFFFFFF)
      {
        goto LABEL_8;
      }

      v9 = v7;
      if (!sub_4566B4(v7 + 2))
      {
        goto LABEL_8;
      }

      v10 = v9[28];
      switch(v10)
      {
        case 0:
          goto LABEL_8;
        case 2:
          v11 = *(v9 + 13);
          if (v11)
          {
            v12 = v11 >= 0xFFFFFFFF00000000;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            goto LABEL_8;
          }

          break;
        case 1:
          if (*(v9 + 13) == -1)
          {
            goto LABEL_8;
          }

          break;
        default:
          sub_5AF20();
      }

      ++v2;
LABEL_8:
      v4 += 552;
      if (v4 == v6)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t sub_453478(void *a1)
{
  if (sub_68C590(a1) >= 2)
  {
    v2 = sub_45AC50(a1) + 12656;
    v3 = sub_588D8(a1);
    if (v2 != v3)
    {
      v6 = v3;
      v4 = 0;
      while (1)
      {
        v7 = sub_4D2130(v2);
        if (*v7 == 0x7FFFFFFF || v7[9] == 0x7FFFFFFF)
        {
          goto LABEL_7;
        }

        v9 = v7;
        if (!sub_4566B4(v7 + 2))
        {
          goto LABEL_7;
        }

        v10 = v9[28];
        switch(v10)
        {
          case 0:
            goto LABEL_7;
          case 2:
            v11 = *(v9 + 13);
            if (v11)
            {
              v12 = v11 >= 0xFFFFFFFF00000000;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              goto LABEL_7;
            }

            break;
          case 1:
            if (*(v9 + 13) == -1)
            {
              goto LABEL_7;
            }

            break;
          default:
            sub_5AF20();
        }

        ++v4;
LABEL_7:
        v2 += 12656;
        if (v2 == v6)
        {
          return v4;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_453578@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_4C35D4(a1, v7);
  v6 = a2;
  return sub_4548F4(v7[0], v7[1], a3, &v6);
}

void sub_4535CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4535E8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_68C448(a1, v7);
  v6 = a2;
  return sub_454A24(v7[0], v7[1], a3, &v6);
}

void sub_45363C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_453658@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_68C448(a1, v7);
  v6 = a2;
  return sub_454B58(v7[0], v7[1], a3, &v6);
}

void sub_4536AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_4536C8(void *a1, int a2)
{
  sub_68C448(a1, &v11);
  v3 = v11;
  v4 = v12;
  if (v11 == v12)
  {
    return 0;
  }

  do
  {
    v7 = *(sub_4D2130(v3) + 48);
    v8 = sub_4D2130(v3);
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);
    if (v9 != v10)
    {
      while (*v9 != a2)
      {
        v9 += 16;
        if (v9 == v10)
        {
          v9 = *(v8 + 48);
          break;
        }
      }
    }

    result = v7 != v9;
    v3 += 12656;
  }

  while (v7 == v9 && v3 != v4);
  return result;
}

void sub_453774(int a1, int a2, int a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 304);
  v12 = *(a5 + 16) * a4[1];
  if (v12 >= 0.0)
  {
    if (v12 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v13 = (v12 + v12) + 1;
  }

  else
  {
    if (v12 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v13 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
  }

  v12 = (v13 >> 1);
LABEL_7:
  sub_A24CC(*(a6 + 304), v12);
  sub_A2480(v11, a4[2]);
  sub_A249C(v11, *a4, a4[3]);
  sub_AAFAC(v11, *a5);
  sub_A24E8(v11, *(a5 + 4));
  sub_AAFC0(v11, *(a5 + 8));
  sub_AAFFC(v11, a1);
  sub_A2448(v11, a2);
  sub_A2464(v11, a3);

  sub_A86E4(v11);
}

uint64_t sub_4538A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, unsigned int a6, __int128 *a7, void *a8)
{
  v11 = a2;
  sub_1180B80(a1, a3, a4, a5, a6, a7, a8, v10);
  if (!sub_446D14(v10))
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  v8 = sub_3B8500(v10);
  return sub_4568F8(v8, &v11);
}

void sub_453918(void *a1@<X0>, void **a2@<X8>)
{
  v4 = sub_4D1DC0(a1);
  v5 = sub_4D39C4(a1);
  if (sub_4DADF0(v5))
  {
    sub_4DABE0(v5, 0, v22);
    sub_4DAC4C(v5, 0, v21);
    v6 = sub_4DB0D4(v22, v21);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    if (!v6)
    {
      if (v4)
      {
        if (!(v4 >> 62))
        {
          operator new();
        }

        sub_1794();
      }

      sub_4DB030(v22, 1, v20);
      v19[0] = v21[0];
      v19[1] = v21[1];
      while (sub_4DB0E8(v20, v19))
      {
        v7 = nullsub_1(v20);
        v23 = sub_3F80(v7);
        sub_DD38(a2, &v23);
        sub_4DAFB4(v20);
      }

      v8 = nullsub_1(v21);
      v9 = sub_3F80(v8);
      v11 = a2[1];
      v10 = a2[2];
      if (v11 >= v10)
      {
        v13 = *a2;
        v14 = v11 - *a2;
        v15 = v14 >> 2;
        v16 = (v14 >> 2) + 1;
        if (v16 >> 62)
        {
          sub_1794();
        }

        v17 = v10 - v13;
        if (v17 >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        *(4 * v15) = v9;
        v12 = 4 * v15 + 4;
        memcpy(0, v13, v14);
        *a2 = 0;
        a2[1] = v12;
        a2[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v11 = v9;
        v12 = (v11 + 4);
      }

      a2[1] = v12;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_453B44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_453B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4D39C4(a1);
  v18 = sub_4DACB0(v6);
  v19 = v7;
  if (sub_456704(&v18))
  {
    return sub_446FA4(a2, a3);
  }

  v9 = sub_4D39C4(a1);
  v18 = sub_4DAC3C(v9);
  v19 = v10;
  v11 = sub_4D39C4(a1);
  v12 = sub_4DADB4(v11);
  v13 = *(v12 + 8);
  v16 = *v12;
  v17 = v13;
  v14 = sub_456C80(&v16, &v18);
  v15 = sub_5AAC4(&v18);
  return sub_446DFC(a3, v15 + v14, a2);
}

uint64_t sub_453C34@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 == a2)
  {
    goto LABEL_15;
  }

  v6 = a1;
  v7 = a4;
  v8 = a1;
  do
  {
    v9 = sub_4D389C(v8);
    if (!v9)
    {
      break;
    }

    v8 += 137;
  }

  while (v8 != a2);
  if (!v9 || (v10 = sub_4D39C4(v6), !sub_4DADD8(v10)))
  {
    a4 = v7;
LABEL_15:

    return sub_446FA4(a3, a4);
  }

  v11 = sub_4D39C4(v6);
  v16 = sub_4DAC3C(v11);
  v17 = v12;
  sub_446E70(&v18, &v16, a3);
  while (1)
  {
    sub_453B68(v6, a3, &v16);
    if (!sub_4566B4(&v16))
    {
      break;
    }

    result = sub_456784(&v16, &v18);
    if (result)
    {
      v14 = &v16;
    }

    else
    {
      v14 = &v18;
    }

    v15 = v14[2];
    v18 = *v14;
    v19 = v15;
    v6 += 1096;
    if (v6 == a2)
    {
      *v7 = v18;
      *(v7 + 16) = v19;
      return result;
    }
  }

  return sub_446FA4(a3, v7);
}

uint64_t sub_453D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_5FC64(a1);
  v7 = sub_445EF4(a1);

  return sub_453C34(v6, v7, a2, a3);
}

double sub_453DEC(uint64_t a1)
{
  if (!sub_4C49E0(a1))
  {
    return 0.0;
  }

  v2 = sub_58BBC(a1);
  v3 = *v2;
  v4 = v2[1];
  v5 = 1.79769313e308;
  while (v3 != v4)
  {
    v6 = sub_4D39C4(v3);
    v20 = sub_4DACB0(v6);
    v21 = v7;
    if (sub_456704(&v20))
    {
      return 0.0;
    }

    v8 = sub_4D39C4(v3);
    v20 = sub_4DAC3C(v8);
    v21 = v9;
    v10 = sub_4D39C4(v3);
    v11 = sub_4DADB4(v10);
    v12 = *(v11 + 8);
    v18 = *v11;
    v19 = v12;
    v13 = sub_456C80(&v18, &v20);
    v14 = v18;
    v15 = sub_5AAC4(&v20);
    v16 = v14 - v15;
    if (v14 != v15 && v13 / v16 < v5)
    {
      v5 = v13 / v16;
    }

    v3 += 1096;
  }

  return v5;
}

void sub_453EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a3;
  v8 = nullsub_1(a5);
  v9 = *(v8 + 8);
  v29 = *v8;
  v30 = v9;
  v28 = sub_4566AC(&v29);
  sub_FA17A4(v27, a6);
  sub_F6349C(v18, a1);
  sub_FA340C(v27, v18, &v31, 0, &v26);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v10 = v18[0];
  if (v18[0])
  {
    v11 = v18[1];
    v12 = v18[0];
    if (v18[1] != v18[0])
    {
      do
      {
        v11 = sub_4547F0(v11 - 552);
      }

      while (v11 != v10);
      v12 = v18[0];
    }

    v18[1] = v10;
    operator delete(v12);
  }

  v19 = 9;
  strcpy(v18, "EVRouting");
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v13 = sub_3AEC94(a6, v18, &v22);
  sub_5ADDC(&v25, v13);
  v14 = v22;
  if (v22)
  {
    v15 = v23;
    v16 = v22;
    if (v23 != v22)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v22;
    }

    v23 = v14;
    operator delete(v16);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  operator new();
}

void sub_4545A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  sub_5C010(&STACK[0x298]);
  sub_5C010(&STACK[0x2C0]);
  sub_419F14(&STACK[0x2E8]);
  sub_419720(&STACK[0x300]);
  _Unwind_Resume(a1);
}

BOOL sub_4546EC(void *a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 - *a2;
  if (v4 == v7)
  {
    if (v2 == v3)
    {
      return 0;
    }

    v8 = *a2;
    v9 = *a1;
    while (*v9 == *v8)
    {
      ++v9;
      ++v8;
      if (v9 == v3)
      {
        return 0;
      }
    }
  }

  v11 = v4 >> 3;
  v13 = v3 == v2;
  v12 = 0;
  v13 = v13 || v6 == v5;
  if (!v13)
  {
    v14 = v7 >> 3;
    v15 = 1;
    do
    {
      v16 = *v5++;
      if (v2[v12] == v16)
      {
        ++v12;
      }
    }

    while (v12 < v11 && v15++ < v14);
  }

  return v12 == v11;
}

uint64_t sub_454784(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 8);
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_4547F0(v3 - 552);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    *(a1 + 8) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_4547F0(uint64_t a1)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    *(a1 + 536) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 504);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 240);
  if (v4)
  {
    *(a1 + 248) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    *(a1 + 224) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    *(a1 + 160) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    *(a1 + 136) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = *(a1 + 112);
    v10 = *(a1 + 104);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 24);
        if (v11)
        {
          *(v9 - 16) = v11;
          operator delete(v11);
        }

        v9 -= 56;
      }

      while (v9 != v8);
      v10 = *(a1 + 104);
    }

    *(a1 + 112) = v8;
    operator delete(v10);
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    *(a1 + 32) = v12;
    operator delete(v12);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_4548F4(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    while (1)
    {
      v9 = sub_4D2130(v8);
      if (*v9 == 0x7FFFFFFF || v9[9] == 0x7FFFFFFF)
      {
        goto LABEL_4;
      }

      v11 = v9;
      if (!sub_4566B4(v9 + 2))
      {
        goto LABEL_4;
      }

      v12 = v11[28];
      if (!v12)
      {
        goto LABEL_4;
      }

      if (v12 != 2)
      {
        break;
      }

      v13 = *(v11 + 13);
      if (v13 <= 0xFFFFFFFEFFFFFFFFLL && v13)
      {
        goto LABEL_17;
      }

LABEL_4:
      v8 += 1096;
      if (v8 == a2)
      {
        return a3;
      }
    }

    if (v12 != 1)
    {
      sub_5AF20();
    }

    if (*(v11 + 13) == -1)
    {
      goto LABEL_4;
    }

LABEL_17:
    v14 = sub_3EB950(v8);
    if (*v14 == -1 && *(v14 + 2) == 3)
    {
      v15 = sub_3B1D8C(*a4);
      v16 = sub_4D2130(v8);
      v17 = sub_2AB8BC(v15, *(v16 + 104), *(v16 + 112));
      sub_2512DC(a3, &v17);
    }

    goto LABEL_4;
  }

  return a3;
}

uint64_t sub_454A24(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    while (1)
    {
      v9 = sub_4D2130(v8);
      if (*v9 == 0x7FFFFFFF || v9[9] == 0x7FFFFFFF)
      {
        goto LABEL_4;
      }

      v11 = v9;
      if (!sub_4566B4(v9 + 2))
      {
        goto LABEL_4;
      }

      v12 = v11[28];
      if (!v12)
      {
        goto LABEL_4;
      }

      if (v12 != 2)
      {
        break;
      }

      v13 = *(v11 + 13);
      if (v13 <= 0xFFFFFFFEFFFFFFFFLL && v13)
      {
        goto LABEL_17;
      }

LABEL_4:
      v8 += 12656;
      if (v8 == a2)
      {
        return a3;
      }
    }

    if (v12 != 1)
    {
      sub_5AF20();
    }

    if (*(v11 + 13) == -1)
    {
      goto LABEL_4;
    }

LABEL_17:
    v14 = sub_3EB950(v8);
    if (*v14 == -1 && *(v14 + 2) == 3)
    {
      v15 = sub_3B1D8C(*a4);
      v16 = sub_4D2130(v8);
      v17 = sub_2AB8BC(v15, *(v16 + 104), *(v16 + 112));
      sub_2512DC(a3, &v17);
    }

    goto LABEL_4;
  }

  return a3;
}

uint64_t sub_454B58(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    while (1)
    {
      v9 = sub_4D2130(v8);
      if (*v9 == 0x7FFFFFFF || v9[9] == 0x7FFFFFFF)
      {
        goto LABEL_4;
      }

      v11 = v9;
      if (!sub_4566B4(v9 + 2))
      {
        goto LABEL_4;
      }

      v12 = v11[28];
      if (!v12)
      {
        goto LABEL_4;
      }

      if (v12 != 2)
      {
        break;
      }

      v13 = *(v11 + 13);
      if (v13 <= 0xFFFFFFFEFFFFFFFFLL && v13)
      {
        goto LABEL_17;
      }

LABEL_4:
      v8 += 12656;
      if (v8 == a2)
      {
        return a3;
      }
    }

    if (v12 != 1)
    {
      sub_5AF20();
    }

    if (*(v11 + 13) == -1)
    {
      goto LABEL_4;
    }

LABEL_17:
    v14 = sub_3EB950(v8);
    if (*v14 == -1 && *(v14 + 2) == 3)
    {
      v16 = sub_454C7C(a4, v8);
      v17 = v15;
      sub_376F0(a3, &v16);
    }

    goto LABEL_4;
  }

  return a3;
}

uint64_t sub_454C7C(void **a1, uint64_t a2)
{
  v3 = sub_3B1D8C(*a1);
  v4 = sub_4D2130(a2);
  sub_2AD1B4(v3, *(v4 + 104), *(v4 + 112), &v11);
  v5 = v17;
  sub_99F0C(&v20);
  v6 = __p;
  if (__p)
  {
    v7 = v19;
    v8 = __p;
    if (v19 != __p)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v19 = v6;
    operator delete(v8);
  }

  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(v13);
    if ((v12 & 0x80000000) == 0)
    {
      return v5;
    }

LABEL_15:
    operator delete(v11);
    return v5;
  }

  operator delete(v15);
  if (v14 < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v12 < 0)
  {
    goto LABEL_15;
  }

  return v5;
}

void sub_454D80()
{
  byte_278FC07 = 3;
  LODWORD(qword_278FBF0) = 5136193;
  byte_278FC1F = 3;
  LODWORD(qword_278FC08) = 5136194;
  byte_278FC37 = 3;
  LODWORD(qword_278FC20) = 5136195;
  byte_278FC4F = 15;
  strcpy(&qword_278FC38, "vehicle_mass_kg");
  byte_278FC67 = 21;
  strcpy(&xmmword_278FC50, "vehicle_cargo_mass_kg");
  byte_278FC7F = 19;
  strcpy(&qword_278FC68, "vehicle_aux_power_w");
  byte_278FC97 = 15;
  strcpy(&qword_278FC80, "dcdc_efficiency");
  strcpy(&qword_278FC98, "drive_train_efficiency");
  HIBYTE(word_278FCAE) = 22;
  operator new();
}

void sub_455188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_278FBB0)
  {
    qword_278FBB8 = qword_278FBB0;
    operator delete(qword_278FBB0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_45527C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a2;
  a1[1] = sub_3B1D8C(a4);
  v6[23] = 9;
  strcpy(v6, "EVRouting");
  memset(v5, 0, sizeof(v5));
  sub_3AEC94(a4, v6, v5);
  operator new();
}

void sub_4553C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

void sub_455448(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v26 = a3;
  v25[0] = sub_3514C(a2, &v26);
  v25[1] = v9;
  LODWORD(v9) = *(a1 + 16);
  v23 = 0;
  v24 = 0;
  __p = 0;
  sub_331A48(v25, v9, &__p);
  sub_2B889C(&__p);
  v10 = __p;
  v11 = v23;
  sub_E6F038(*a1, &v16);
  v12 = *(a1 + 20);
  v13 = sub_99078(&v16);
  sub_96E6C(v21, a2, v26, a4);
  v19 = v21[0];
  v20 = v21[1];
  v14 = 1 << v12;
  if (v12 == 255)
  {
    v14 = 0;
  }

  v16 = v13;
  v17 = 512;
  v18 = v14;
  v15 = *(a1 + 8);
  a5[1] = 0;
  a5[2] = 0;
  for (*a5 = 0; v10 != v11; ++v10)
  {
    sub_4555A0(v15, *v10, &v16, a5);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void sub_455568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4555A0(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = sub_2D52A4(*a1, 16, a2, 1);
  if (v9)
  {
    v10 = (v8 + *v8);
    v11 = (v10 - *v10);
    if (*v11 >= 5u)
    {
      v12 = v11[2];
      if (v12)
      {
        v13 = (v10 + v12 + *(v10 + v12));
        v14 = *v13;
        if (v14)
        {
          v15 = 0;
          v16 = &v13[v14];
          v36 = a4;
          do
          {
            v17 = v13[1];
            v18 = ++v13 + v17;
            if (sub_2ACD98(v18))
            {
              v39 = v18;
              v40 = (v7 | (v15 << 32));
              if (!sub_2AC230(a3, &v39) && !sub_96E88((a3 + 24), &v39))
              {
                sub_2ABB9C(a1, v18, v7 | (v15 << 32), &v39);
                if (v45[1] && v46 != -1)
                {
                  v19 = *(a4 + 8);
                  if (v19 >= *(a4 + 16))
                  {
                    v20 = sub_2AE5C0(a4, &v39);
                  }

                  else
                  {
                    sub_2AE6F4(*(a4 + 8), &v39);
                    v20 = v19 + 80;
                    *(a4 + 8) = v19 + 80;
                  }

                  *(a4 + 8) = v20;
                }

                v27 = v42;
                if (v42)
                {
                  v28 = v43;
                  v29 = v42;
                  if (v43 != v42)
                  {
                    do
                    {
                      if (*(v28 - 1) < 0)
                      {
                        operator delete(*(v28 - 3));
                      }

                      v28 -= 6;
                    }

                    while (v28 != v27);
                    v29 = v42;
                  }

                  v43 = v27;
                  operator delete(v29);
                }

                v30 = v39;
                if (v39)
                {
                  v31 = v40;
                  v32 = v39;
                  if (v40 != v39)
                  {
                    do
                    {
                      v33 = *(v31 - 3);
                      if (v33)
                      {
                        *(v31 - 2) = v33;
                        operator delete(v33);
                      }

                      v31 -= 48;
                    }

                    while (v31 != v30);
                    v32 = v39;
                  }

                  v40 = v30;
                  operator delete(v32);
                }
              }
            }

            else if (sub_7E7E4(3u))
            {
              sub_19594F8(&v39);
              v21 = sub_4A5C(&v39, "Found invalid charging station POI in quad node ", 48);
              v22 = sub_58200(v21, v7);
              sub_4A5C(v22, ".", 1);
              if ((v50 & 0x10) != 0)
              {
                v24 = v49;
                v25 = v45;
                if (v49 < v46)
                {
                  v49 = v46;
                  v24 = v46;
                  v25 = v45;
                }
              }

              else
              {
                if ((v50 & 8) == 0)
                {
                  v23 = 0;
                  v38 = 0;
LABEL_28:
                  *(&__dst + v23) = 0;
                  sub_7E854(&__dst, 3u);
                  a4 = v36;
                  if (v38 < 0)
                  {
                    operator delete(__dst);
                  }

                  v39 = v35;
                  *(&v39 + *(v35 - 3)) = v34;
                  if (v48 < 0)
                  {
                    operator delete(__p);
                  }

                  std::locale::~locale(&v41);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  goto LABEL_7;
                }

                v24 = v44;
                v25 = &v42;
              }

              v26 = *v25;
              v23 = v24 - *v25;
              if (v23 >= 0x7FFFFFFFFFFFFFF8)
              {
                sub_3244();
              }

              if (v23 >= 0x17)
              {
                operator new();
              }

              v38 = v24 - *v25;
              if (v23)
              {
                memmove(&__dst, v26, v23);
              }

              goto LABEL_28;
            }

LABEL_7:
            ++v15;
          }

          while (v13 != v16);
        }
      }
    }
  }
}

void sub_4559E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *(v12 + 8) = v11;
  sub_2ADCE0(va);
  _Unwind_Resume(a1);
}

void sub_4559F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2ADCE0(va);
  _Unwind_Resume(a1);
}

void sub_455A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_455B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_455B80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  if (*a3 == v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = -1;
    do
    {
      sub_455C94(*(a1 + 8), v6, __p);
      v10 = sub_455E4C(a1, __p);
      if (v15 < 0)
      {
        v11 = v10;
        operator delete(__p[0]);
        v10 = v11;
      }

      v9 &= v10;
      v6 += 110;
    }

    while (v6 != v7);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v13 = *a2;
  v12 = *(a2 + 8);
  while (v13 != v12)
  {
    if (((v9 >> *v13) & 1) == 0)
    {
      sub_455F94(a4, v13);
    }

    ++v13;
  }
}

void sub_455C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_455C94(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  sub_2B3C60(a1, a2, 1, &__p);
  v5 = __p;
  if (__p == v20)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  v6 = sub_2B51D8(a1, *(__p + 1));
  v7 = (v6 - *v6);
  if (*v7 >= 0xDu && (v8 = v7[6]) != 0)
  {
    v9 = 4 * *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2AF704(a1 + 3896, 1u, 0);
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 5);
    if (v12)
    {
      v12 += &v10[*&v10[v12]];
    }
  }

  v13 = (v12 + v9 + 4 + *(v12 + v9 + 4));
  v14 = (v13 - *v13);
  if (*v14 < 5u || (v15 = v14[2]) == 0)
  {
    *(a3 + 23) = 0;
    *a3 = 0;
    v5 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_18;
  }

  v16 = (v13 + v15);
  v17 = *v16;
  v18 = *(v16 + v17);
  if (v18 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v18;
  if (v18)
  {
    memcpy(a3, v16 + v17 + 4, v18);
  }

  *(a3 + v18) = 0;
  v5 = __p;
  if (__p)
  {
LABEL_18:
    v20 = v5;
    operator delete(v5);
  }
}

void sub_455E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_455E4C(void **a1, uint64_t a2)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v2 = sub_5FAE8(*a1, a2, &__p);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    v5 = 0;
    v6 = __p;
    if (!__p)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v5 = 0;
  do
  {
    if (*(v3 + 8) != 1)
    {
      sub_5AF20();
    }

    v5 |= 1 << sub_99114(*v3);
    v3 += 16;
  }

  while (v3 != v4);
  v6 = __p;
  if (__p)
  {
LABEL_8:
    v7 = v13;
    v8 = v6;
    if (v13 != v6)
    {
      do
      {
        v9 = v7 - 16;
        v10 = *(v7 - 2);
        if (v10 != -1)
        {
          (off_266AA10[v10])(&v15, v7 - 16);
        }

        *(v7 - 2) = -1;
        v7 -= 16;
      }

      while (v9 != v6);
      v8 = __p;
    }

    v13 = v6;
    operator delete(v8);
  }

  return v5;
}

void sub_455F94(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_1794();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_4560B4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = 0x8000000080000000;
  a1[2] = 0x7FFFFFFF7FFFFFFFLL;
  v11 = 9;
  v9 = 0;
  strcpy(v10, "EVRouting");
  __p = 0;
  v8 = 0;
  sub_3AEC94(a3, v10, &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  operator new();
}

void sub_456208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_456238(uint64_t a1)
{
  result = sub_4566B4((a1 + 12));
  if (result)
  {
    v3 = *a1;
    v4 = (a1 + 12);
    v5 = result;
    sub_4DADDC(v3, v4);
    return v5;
  }

  return result;
}

BOOL sub_45627C(void *a1)
{
  if (*(a1 + 2) == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = v1;
  v11 = v2;
  result = sub_44F320(*a1);
  if (result)
  {
    result = sub_E6F0C8(*a1);
    if (result)
    {
      if (sub_E6F454(*a1) <= *(a1 + 2))
      {
        return 0;
      }

      else
      {
        v5 = nullsub_1(*a1);
        v6 = *(v5 + 8);
        *(a1 + 12) = *v5;
        *(a1 + 5) = v6;
        v7 = *a1;
        v8 = 0x7FFFFFFF;
        v9 = 0x7FFFFFFF7FFFFFFFLL;
        sub_4DADDC(v7, &v8);
        return 1;
      }
    }
  }

  return result;
}

void sub_45633C()
{
  byte_278FD0F = 3;
  LODWORD(qword_278FCF8) = 5136193;
  byte_278FD27 = 3;
  LODWORD(qword_278FD10) = 5136194;
  byte_278FD3F = 3;
  LODWORD(qword_278FD28) = 5136195;
  byte_278FD57 = 15;
  strcpy(&qword_278FD40, "vehicle_mass_kg");
  byte_278FD6F = 21;
  strcpy(&xmmword_278FD58, "vehicle_cargo_mass_kg");
  byte_278FD87 = 19;
  strcpy(&qword_278FD70, "vehicle_aux_power_w");
  byte_278FD9F = 15;
  strcpy(&qword_278FD88, "dcdc_efficiency");
  strcpy(&qword_278FDA0, "drive_train_efficiency");
  HIBYTE(word_278FDB6) = 22;
  operator new();
}

void sub_456518(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_278FDB6) < 0)
  {
    sub_21E1E60();
  }

  sub_21E1E6C();
  _Unwind_Resume(a1);
}

_DWORD *sub_456538(_DWORD *result, int a2, int a3, int a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

uint64_t sub_456544(uint64_t result, int a2, void *a3)
{
  *result = a2;
  *(result + 4) = *a3;
  return result;
}

uint64_t sub_456588(_DWORD *a1, double a2)
{
  v2 = (a1[1] - *a1) * a2;
  if (v2 >= 0.0)
  {
    if (v2 < 4.50359963e15)
    {
      v3 = (v2 + v2) + 1;
      goto LABEL_6;
    }
  }

  else if (v2 > -4.50359963e15)
  {
    v3 = (v2 + v2) - 1 + (((v2 + v2) - 1) >> 63);
LABEL_6:
    v2 = (v3 >> 1);
  }

  LODWORD(v5) = *a1 + v2;
  *(&v5 + 4) = *a1;
  return v5;
}

uint64_t sub_456608(unsigned int a1, _DWORD *a2)
{
  v2 = a1 / 100.0 * (a2[1] - *a2);
  if (v2 >= 0.0)
  {
    if (v2 < 4.50359963e15)
    {
      v3 = (v2 + v2) + 1;
      goto LABEL_6;
    }
  }

  else if (v2 > -4.50359963e15)
  {
    v3 = (v2 + v2) - 1 + (((v2 + v2) - 1) >> 63);
LABEL_6:
    v2 = (v3 >> 1);
  }

  LODWORD(v5) = *a2 + v2;
  *(&v5 + 4) = *a2;
  return v5;
}

BOOL sub_4566B4(int *a1)
{
  v1 = *a1;
  if (*a1 == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = a1[1];
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v4 = a1[2];
  return v4 != 0x7FFFFFFF && v3 <= v4 && v3 >= 0 && v3 <= v1 && v1 <= v4;
}

BOOL sub_456704(int *a1)
{
  v1 = *a1;
  if (*a1 == 0x7FFFFFFF)
  {
    return 1;
  }

  v3 = a1[1];
  if (v3 == 0x7FFFFFFF)
  {
    return 1;
  }

  v4 = a1[2];
  return v4 == 0x7FFFFFFF || v3 > v4 || v3 < 0 || v3 > v1 || v1 > v4;
}

uint64_t sub_456824(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 + *a1;
  if (*(a1 + 8) < v2)
  {
    v2 = *(a1 + 8);
  }

  if (v2 >= *(a1 + 4))
  {
    LODWORD(v4) = v2;
    *(&v4 + 4) = *(a1 + 4);
    return v4;
  }

  else
  {
    LODWORD(v5) = 0x7FFFFFFF;
    *(&v5 + 4) = *(a1 + 4);
    return v5;
  }
}

_DWORD *sub_456880(_DWORD *result, _DWORD *a2)
{
  v2 = *a2 + *result;
  if (result[2] < v2)
  {
    v2 = result[2];
  }

  if (v2 < result[1])
  {
    v2 = 0x7FFFFFFF;
  }

  LODWORD(v3) = v2;
  *(&v3 + 4) = *(result + 1);
  *result = v3;
  result[2] = DWORD2(v3);
  return result;
}

uint64_t sub_4568F8(unsigned int *a1, _DWORD *a2)
{
  if (sub_4566A4(a1) > a2[1] - *a2)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  v5 = *a2 + sub_3F80(a1);
  v6 = a2[1] - sub_5AAC4(a1);
  sub_456D7C(a1);
  return v5 | (v6 << 32);
}

uint64_t sub_456984(int *a1, int *a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  if (a1 == a2)
  {
    return v3;
  }

  while (1)
  {
    v5 = 0x7FFFFFFF7FFFFFFFLL;
    if (v4 == 0x7FFFFFFF || v3 == 0x7FFFFFFF)
    {
      break;
    }

    if (v4 > v3)
    {
      return 0x7FFFFFFF7FFFFFFFLL;
    }

    if (HIDWORD(v3) == 0x7FFFFFFF)
    {
      return v5;
    }

    v10 = a1[2];
    if (v10 == 0x7FFFFFFF)
    {
      return 0x7FFFFFFF7FFFFFFFLL;
    }

    v11 = *a1;
    if (*a1 == 0x7FFFFFFF || v10 > v11)
    {
      return 0x7FFFFFFF7FFFFFFFLL;
    }

    v12 = a1[1];
    if (v12 == 0x7FFFFFFF)
    {
      return v5;
    }

    if (v11 <= SHIDWORD(v3))
    {
      LODWORD(v7) = v11 + v4;
      if (v3 <= v11 + v4)
      {
        v7 = v7;
      }

      else
      {
        v7 = v3;
      }

      LODWORD(v8) = HIDWORD(v3) - v10;
      if (HIDWORD(v3) - v10 >= v12)
      {
        v8 = v12;
      }

      else
      {
        v8 = v8;
      }

      v4 += v10;
      v9 = v3 - v12;
      if (v4 <= v9)
      {
        v4 = v9;
      }

      v3 = v7 | (v8 << 32);
      a1 += 3;
      if (a1 == a2)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0x7FFFFFFF7FFFFFFFLL;
      v4 = 0x7FFFFFFF;
      a1 += 3;
      if (a1 == a2)
      {
        return v3;
      }
    }
  }

  return v5;
}

BOOL sub_456A78(_DWORD *a1)
{
  v1 = a1[2];
  if (v1 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (*a1 == 0x7FFFFFFF)
  {
    return 0;
  }

  return v1 <= *a1 && a1[1] != 0x7FFFFFFF;
}

unsigned int *sub_456ABC(unsigned int *result, _DWORD *a2)
{
  v2 = result[1];
  if (v2 >= *a2)
  {
    v3 = result[2];
    LODWORD(v4) = v3 + *a2;
    v5 = *result;
    if (*result <= v4)
    {
      v4 = v4;
    }

    else
    {
      v4 = v5;
    }

    v7 = a2[1];
    v6 = a2[2];
    v8 = v2 - v6;
    if (v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = v6 + v3;
    if ((v6 + v3) <= (v5 - v7))
    {
      v10 = v5 - v7;
    }

    *result = v4 | (v9 << 32);
    result[2] = v10;
  }

  else
  {
    *result = 0x7FFFFFFF7FFFFFFFLL;
    result[2] = 0x7FFFFFFF;
  }

  return result;
}

uint64_t sub_456B24(int *a1, int a2)
{
  v2 = a1[2];
  if (v2 == 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  v3 = *a1;
  if (*a1 == 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  v4 = a1[1];
  v5 = v2 > v3 || v4 == 0x7FFFFFFF;
  if (v5 || v3 > a2)
  {
    return 0x7FFFFFFFLL;
  }

  v8 = a2 - v2;
  if (v8 >= v4)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_456B70(int *a1, unsigned int *a2)
{
  v4 = sub_3F80(a2);
  v5 = a1[2];
  if (v5 == 0x7FFFFFFF || (v6 = *a1, *a1 == 0x7FFFFFFF) || ((v7 = a1[1], v5 <= v6) ? (v8 = v7 == 0x7FFFFFFF) : (v8 = 1), !v8 ? (v9 = v6 <= v4) : (v9 = 0), !v9))
  {
    v13 = sub_4566AC(a2);
    return sub_45656C(&v13);
  }

  else
  {
    v11 = v4 - v5;
    if (v11 >= v7)
    {
      v12 = a1[1];
    }

    else
    {
      v12 = v11;
    }

    v14 = sub_4566AC(a2);
    sub_456544(&v15, v12, &v14);
    return v15;
  }
}

uint64_t sub_456C34(int *a1, int a2)
{
  v3 = a1[2];
  result = 0x7FFFFFFFLL;
  if (v3 != 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 != 0x7FFFFFFF)
    {
      v6 = a1[1];
      if (v5 - v3 <= a2)
      {
        v7 = v3 + a2;
      }

      else
      {
        v7 = 0x7FFFFFFF;
      }

      if (v5 < v3 || v6 == 0x7FFFFFFF || v6 < a2)
      {
        return 0x7FFFFFFFLL;
      }

      else
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_456C80(int *a1, unsigned int *a2)
{
  if (sub_3F80(a2) < *a1)
  {
    return 0x7FFFFFFFLL;
  }

  v5 = sub_3F80(a2);
  v6 = *a1;
  v7 = a1[1];
  v8 = v5 - v6;
  v9 = v7 - sub_5AAC4(a2);
  if (v9 >= v8)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_456CF8(int *a1, signed int *a2)
{
  v2 = a1[1];
  if (v2 < *a2)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  LODWORD(v4) = a1[2] + *a2;
  if (*a1 <= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = *a1;
  }

  v5 = a2[1];
  LODWORD(v6) = v2 - a2[2];
  if (v6 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v6;
  }

  return v4 | (v6 << 32);
}

__n128 sub_456D50(__n128 *a1)
{
  result.n128_u64[0] = 0x8000000080000000;
  result.n128_u64[1] = 0x8000000080000000;
  *a1 = result;
  return result;
}

unsigned int *sub_456D84(unsigned int *result, _DWORD *a2)
{
  LODWORD(v2) = a2[1];
  v4 = result[2];
  v3 = result[3];
  LODWORD(v5) = *a2 + v3;
  v6 = result[1];
  if (*result <= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = *result;
  }

  v7 = a2[3];
  if ((v7 + v6) <= v2)
  {
    v2 = v2;
  }

  else
  {
    v2 = v7 + v6;
  }

  if (v4 <= a2[2])
  {
    v4 = a2[2];
  }

  LODWORD(v8) = v6 + *a2;
  if (v4 <= v8)
  {
    v8 = v8;
  }

  else
  {
    v8 = v4;
  }

  *result = v5 | (v2 << 32);
  *(result + 1) = v8 | ((v7 + v3) << 32);
  return result;
}

BOOL sub_456DD4(unsigned int *a1)
{
  v1 = *a1;
  if (*a1 == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = a1[1];
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v4 = a1[2];
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  return ((v3 | v1 | v4) & 0x80000000) == 0 && a1[3] != 0x7FFFFFFF && v1 <= v4 && v3 <= v4;
}

uint64_t sub_456E3C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *(a2 + 8);
  if (v6 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  sub_2AEA24((a1 + 24), (a2 + 24));
  v7 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 48) = v7;
  *(a1 + 80) = *a3;
  return a1;
}

void sub_456F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2AE9A0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_456F78(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v3 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 48) = v3;
  result = *a3;
  *(a1 + 80) = *a3;
  return result;
}

void sub_456FD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  v5[23] = 9;
  strcpy(v5, "EVRouting");
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a4, v5, __p);
  sub_458EB0();
}

void sub_45741C(_Unwind_Exception *a1)
{
  sub_4578A0((v4 + 792));
  sub_360988(v3);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  sub_457968(v2);
  _Unwind_Resume(a1);
}

void sub_457450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_457474(uint64_t a1)
{
  v2 = nullsub_1(*(a1 + 32));
  v3 = sub_4566AC(v2);
  v4 = a1 + 1640;
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1668) = 0u;
  sub_E6F038(*(a1 + 32), &v48);
  v6 = *(&v48 + 1);
  for (i = v48; i != v6; i += 16)
  {
    v7 = *i;
    v8 = *(v4 + 4 * v7);
    if (v8 <= *(i + 1))
    {
      v8 = *(i + 1);
    }

    *(v4 + 4 * v7) = v8;
  }

  sub_E6F044(*(a1 + 32), &v48);
  if (v48 != *(&v48 + 1))
  {
    v9 = *(a1 + 1632);
    v10 = *(&v48 + 1) - v48 - 16;
    if (v10 > 0xF)
    {
      v12 = 0;
      v13 = (v10 >> 4) + 1;
      v11 = (v48 + 16 * (v13 & 0x1FFFFFFFFFFFFFFELL));
      v14 = (v48 + 16);
      v15 = v13 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        v16 = *(v14 - 16);
        v17 = *v14;
        v14 += 32;
        v9 |= 1 << v16;
        v12 |= 1 << v17;
        v15 -= 2;
      }

      while (v15);
      v9 |= v12;
      if (v13 == (v13 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = v48;
    }

    do
    {
      v18 = *v11;
      v11 += 16;
      v9 |= 1 << v18;
    }

    while (v11 != *(&v48 + 1));
LABEL_12:
    *(a1 + 1632) = v9;
  }

  v19 = *(a1 + 48) - *(a1 + 40);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 5);
    do
    {
      v24 = *(a1 + 40) + v20;
      if (*(v24 + 24) == *(v24 + 32))
      {
        v29 = *(a1 + 80);
        v28 = *(a1 + 88);
        if (v29 < v28)
        {
          *v29 = xmmword_2297BF0;
          v23 = v29 + 16;
        }

        else
        {
          v30 = *(a1 + 72);
          v31 = v29 - v30;
          v32 = (v29 - v30) >> 4;
          v33 = v32 + 1;
          if ((v32 + 1) >> 60)
          {
            goto LABEL_58;
          }

          v34 = v28 - v30;
          if (v34 >> 3 > v33)
          {
            v33 = v34 >> 3;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF0)
          {
            v35 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            if (!(v35 >> 60))
            {
              operator new();
            }

LABEL_59:
            sub_1808();
          }

          v44 = (v29 - v30) >> 4;
          v45 = (16 * v32);
          v46 = (16 * v32 - 16 * v44);
          *v45 = xmmword_2297BF0;
          v23 = v45 + 1;
          memcpy(v46, v30, v31);
          *(a1 + 72) = v46;
          *(a1 + 80) = v23;
          *(a1 + 88) = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        *(a1 + 80) = v23;
      }

      else
      {
        sub_4586B4(a1, v24, v3, SHIDWORD(v3), &v48);
        v26 = *(a1 + 80);
        v25 = *(a1 + 88);
        if (v26 >= v25)
        {
          v36 = *(a1 + 72);
          v37 = v26 - v36;
          v38 = (v26 - v36) >> 4;
          v39 = v38 + 1;
          if ((v38 + 1) >> 60)
          {
LABEL_58:
            sub_1794();
          }

          v40 = v25 - v36;
          if (v40 >> 3 > v39)
          {
            v39 = v40 >> 3;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF0)
          {
            v41 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            if (!(v41 >> 60))
            {
              operator new();
            }

            goto LABEL_59;
          }

          *(16 * v38) = v48;
          v27 = 16 * v38 + 16;
          memcpy(0, v36, v37);
          *(a1 + 72) = 0;
          *(a1 + 80) = v27;
          *(a1 + 88) = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v26 = v48;
          v27 = (v26 + 16);
        }

        *(a1 + 80) = v27;
        if (DWORD1(v49) != 0x7FFFFFFF && DWORD2(v49) != 0x7FFFFFFF && HIDWORD(v49) != 0x7FFFFFFF && v49 && (v49 != v48 || *(&v49 + 4) != *(&v48 + 4) || HIDWORD(v49) != HIDWORD(v48)) && (DWORD1(v49) || v49 != 1 || *(&v49 + 1)))
        {
          v47 = v21;
          sub_459A78(a1 + 96, &v47, &v50);
          v42 = v50;
          if (v52 == 1)
          {
            v43 = *(v50 + 8) + 20 * v51;
            *v43 = v47;
            *(v43 + 4) = xmmword_2297BF0;
          }

          *(*(v42 + 8) + 20 * v51 + 4) = v49;
        }
      }

      ++v21;
      v20 += 96;
    }

    while (v22 != v21);
  }
}

void *sub_4578A0(void *a1)
{
  v2 = a1 + 96;
  do
  {
    v3 = v2 - 6;
    v4 = *(v2 - 3);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v2 - 5;
      do
      {
        if ((*(*v3 + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 16);
          if (v9)
          {
            *(v8 + 24) = v9;
            operator delete(v9);
            v4 = *(v2 - 3);
          }
        }

        ++v6;
        v5 += 40;
      }

      while (v6 != v4);
      operator delete(*(v2 - 6));
      *(v2 - 6) = &unk_2290750;
      *(v2 - 1) = 0;
      *(v2 - 4) = 0;
      *(v2 - 3) = 0;
      *v7 = 0;
    }

    v2 -= 6;
  }

  while (v3 != a1);
  return a1;
}

void ***sub_457968(void ***a1)
{
  if (*a1)
  {
    sub_459298(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_4579A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  v7 = 9;
  strcpy(v6, "EVRouting");
  __p = 0;
  v5 = 0uLL;
  sub_3AEC94(a4, v6, &__p);
  sub_458EB0();
}

void sub_457F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_457968(&a12);
  sub_4578A0((v23 + 792));
  sub_360988(v22);
  v25 = *v23;
  if (*v23)
  {
    *(v20 + 80) = v25;
    operator delete(v25);
  }

  sub_457968(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_458034(uint64_t a1, unsigned __int16 a2, int a3)
{
  if (a3 != 1)
  {
    v5 = a2;
LABEL_9:
    sub_45817C(a1 + 864, (*(a1 + 72) + 16 * v5), v22);
    return v23 + 16;
  }

  v3 = 0;
  v4 = a2;
  v5 = a2;
  v6 = ~a2 + (a2 << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = a1 + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF);
  v12 = *(v9 + 96);
  v10 = v9 + 96;
  v11 = v12;
  v13 = v8 >> 7;
  v14 = *(v10 + 24);
  v15 = 0x101010101010101 * (v8 & 0x7F);
  while (1)
  {
    v16 = v13 & v14;
    v17 = *(v11 + v16);
    v18 = ((v17 ^ v15) - 0x101010101010101) & ~(v17 ^ v15) & 0x8080808080808080;
    if (v18)
    {
      break;
    }

LABEL_6:
    if ((v17 & (~v17 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v3 += 8;
    v13 = v3 + v16;
  }

  while (1)
  {
    v19 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v14;
    v20 = (*(v10 + 8) + 20 * v19);
    if (*v20 == v4)
    {
      break;
    }

    v18 &= v18 - 1;
    if (!v18)
    {
      goto LABEL_6;
    }
  }

  if (v14 == v19)
  {
    goto LABEL_9;
  }

  sub_45817C(a1 + 864, v20 + 1, v22);
  return v23 + 16;
}

uint64_t sub_45817C@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = a2[1];
  v5 = a2[2];
  v6 = (v5 + (((v4 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v4 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = a2[3];
  v8 = v7 + (v6 << 6) + (v6 >> 2) + 2654435769u;
  v9 = (v8 ^ ~v6) + ((v8 ^ v6) << 21);
  v10 = 21 * ((265 * (v9 ^ (v9 >> 24))) ^ ((265 * (v9 ^ (v9 >> 24))) >> 14));
  v11 = 2147483649u * (v10 ^ (v10 >> 28));
  v12 = (result + 48 * (((((v10 ^ (v10 >> 28)) >> 8) ^ ((-2147483647 * (v10 ^ (v10 >> 28))) >> 16)) ^ ((-2147483647 * (v10 ^ (v10 >> 28))) >> 24)) & 0xF));
  v13 = v11 >> 7;
  v14 = v12[3];
  v15 = *v12;
  v16 = 0x101010101010101 * (v11 & 0x7F);
  while (1)
  {
    v17 = v13 & v14;
    v18 = *(v15 + v17);
    v19 = ((v18 ^ v16) - 0x101010101010101) & ~(v18 ^ v16) & 0x8080808080808080;
    if (v19)
    {
      break;
    }

LABEL_8:
    if ((v18 & (~v18 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v13 = v3 + v17;
  }

  while (1)
  {
    v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v14;
    v21 = (v12[1] + 40 * v20);
    if (__PAIR64__(*(v21 + 1), *v21) == __PAIR64__(v4, *a2) && *(v21 + 1) == __PAIR64__(v7, v5))
    {
      break;
    }

    v19 &= v19 - 1;
    if (!v19)
    {
      goto LABEL_8;
    }
  }

  if (v14 == v20)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v12;
  a3[1] = (result + 768);
  a3[2] = (v15 + v20);
  a3[3] = v21;
  a3[4] = (v15 + v14);
  return result;
}

void sub_45830C(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, signed int a3@<W2>, signed int a4@<W3>, void *a5@<X8>)
{
  v7 = *(a1 + 40) + 96 * a2;
  sub_4586B4(a1, v7, a3, a4, &v35);
  sub_45817C(a1 + 864, &v35, &v29);
  v33 = 0;
  v34 = 0;
  __p = 0;
  v11 = *(v31 + 16);
  v10 = *(v31 + 24);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = sub_444404(&__p, a3, a4);
  v13 = v12;
  if (v37 == 0x7FFFFFFF || v38 == 0x7FFFFFFF || HIDWORD(v38) == 0x7FFFFFFF || !v36 || v36 == v35 && v37 == DWORD1(v35) && v38 == *(&v35 + 1) || !v37 && v36 == 1 && !v38)
  {
    goto LABEL_21;
  }

  v14 = *(a1 + 24) * v12;
  if (v14 >= 0.0)
  {
    if (v14 < 4.50359963e15)
    {
      v15 = (v14 + v14) + 1;
      goto LABEL_19;
    }
  }

  else if (v14 > -4.50359963e15)
  {
    v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
LABEL_19:
    v14 = (v15 >> 1);
  }

  v13 = v14;
LABEL_21:
  v16 = 0;
  *a5 = 0;
  a5[1] = 0;
  v17 = (a1 + 1684);
  a5[2] = 0;
  do
  {
    v28 = *v17;
    if (DWORD1(v28))
    {
      v27 = v16;
      v18 = ((*(a1 + 1632) >> v16) & 1) == 0;
      v26 = v18;
      v19 = v28 == v35 && DWORD1(v28) == DWORD1(v35);
      if (v19 && *(&v28 + 1) == *(&v35 + 1))
      {
        v20 = sub_458AA4(v12, v7, &v27);
        v29 = v20;
        *v30 = v21;
        v22 = a5[1];
        if (v22 < a5[2])
        {
          sub_96DCC(a5[1], v16, SHIDWORD(v20), v21, v18);
          v12 = v22 + 16;
          goto LABEL_23;
        }

LABEL_22:
        v12 = sub_459378(a5, &v27, &v29 + 1, v30, &v26);
LABEL_23:
        a5[1] = v12;
        goto LABEL_24;
      }

      sub_45817C(a1 + 864, &v28, &v29);
      v12 = sub_444404((v31 + 16), a3, a4);
      if (v12 <= v13)
      {
        v23 = sub_458AA4(v12, v7, &v27);
        v29 = v23;
        *v30 = v24;
        v25 = a5[1];
        if (v25 < a5[2])
        {
          sub_96DCC(a5[1], v27, SHIDWORD(v23), v24, v26);
          v12 = v25 + 16;
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

LABEL_24:
    ++v16;
    ++v17;
  }

  while (v16 != 11);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_458658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_4586B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, signed int a3@<W2>, signed int a4@<W3>, __int128 *a5@<X8>)
{
  v8 = a1 + 1684;
  *(a1 + 1684) = xmmword_2297C10;
  *(a1 + 1700) = xmmword_2297C10;
  *(a1 + 1716) = xmmword_2297C10;
  *(a1 + 1732) = xmmword_2297C10;
  *(a1 + 1748) = xmmword_2297C10;
  *(a1 + 1764) = xmmword_2297C10;
  *(a1 + 1780) = xmmword_2297C10;
  *(a1 + 1796) = xmmword_2297C10;
  *(a1 + 1812) = xmmword_2297C10;
  *(a1 + 1828) = xmmword_2297C10;
  *(a1 + 1844) = xmmword_2297C10;
  memset_pattern16(__b, &unk_2266850, 0x2CuLL);
  v35 = xmmword_2297C10;
  v36 = xmmword_2297C10;
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v10 != v9)
  {
    v11 = 0x7FFFFFFF;
    v30 = 0x7FFFFFFF;
    do
    {
      v12 = *v10;
      v13 = *(a1 + 1640 + 4 * v12);
      if (v13 >= *(v10 + 1))
      {
        v13 = *(v10 + 1);
      }

      if (!v13)
      {
        goto LABEL_3;
      }

      LOBYTE(v34) = v10[16];
      DWORD1(v34) = v13;
      *(&v34 + 1) = *(v10 + 1);
      sub_45817C(a1 + 864, &v34, &v32);
      if (!v32)
      {
        sub_459058(a1, &v34);
      }

      v14 = sub_444404((*(&v33 + 1) + 16), a3, a4);
      v15 = __b[v12];
      if (v14 == v15)
      {
        v16 = (v8 + 16 * v12);
        v17 = *(v16 + 1);
        v18 = v17 < SDWORD1(v34);
        if (DWORD1(v34) == v17)
        {
          v19 = *v16;
          v20 = v19 == v34;
          v18 = v19 < v34;
          if (v20)
          {
            v21 = *(v16 + 2);
            v18 = v21 < SDWORD2(v34);
            if (DWORD2(v34) == v21)
            {
              v18 = *(v16 + 3) < SHIDWORD(v34);
            }
          }
        }

        if (v18)
        {
          v22 = &v34;
        }

        else
        {
          v22 = (v8 + 16 * v12);
        }

        *v16 = *v22;
        if (v14 == v11)
        {
LABEL_25:
          v23 = SDWORD1(v36) < SDWORD1(v34);
          if (DWORD1(v34) == DWORD1(v36))
          {
            v23 = v36 < v34;
            if (v36 == v34)
            {
              v23 = SDWORD2(v36) < SDWORD2(v34);
              if (DWORD2(v34) == DWORD2(v36))
              {
                v23 = SHIDWORD(v36) < SHIDWORD(v34);
              }
            }
          }

          v20 = !v23;
          v24 = &v36;
          if (!v20)
          {
            v24 = &v34;
          }

          v36 = *v24;
          if (v14 == 0x7FFFFFFF)
          {
            goto LABEL_34;
          }

LABEL_32:
          if (v14 < v11)
          {
            v36 = v34;
            v11 = v14;
          }

          goto LABEL_34;
        }
      }

      else if (v14 < v15)
      {
        __b[v12] = v14;
        *(v8 + 16 * v12) = v34;
        if (v14 == v11)
        {
          goto LABEL_25;
        }
      }

      else if (v14 == v11)
      {
        goto LABEL_25;
      }

      if (v14 != 0x7FFFFFFF)
      {
        goto LABEL_32;
      }

LABEL_34:
      if ((*(a1 + 1632) >> *v10))
      {
        if (v14 == v30)
        {
          v25 = SDWORD1(v35) < SDWORD1(v34);
          if (DWORD1(v34) == DWORD1(v35))
          {
            v25 = v35 < v34;
            if (v35 == v34)
            {
              v25 = SDWORD2(v35) < SDWORD2(v34);
              if (DWORD2(v34) == DWORD2(v35))
              {
                v25 = SHIDWORD(v35) < SHIDWORD(v34);
              }
            }
          }

          v20 = !v25;
          v26 = &v35;
          if (!v20)
          {
            v26 = &v34;
          }

          v35 = *v26;
        }

        if (v14 != 0x7FFFFFFF && v14 < v30)
        {
          v35 = v34;
          v30 = v14;
        }
      }

LABEL_3:
      v10 += 48;
    }

    while (v10 != v9);
  }

  v28 = v35;
  result = *&v36;
  *a5 = v36;
  a5[1] = v28;
  return result;
}

void sub_458A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_458AA4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v21 = xmmword_2297C10;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v3 == v4)
  {
    return 1;
  }

  v5 = *a3;
  do
  {
    if (*v3 == v5)
    {
      v6 = v3[16];
      v7 = *(v3 + 1);
      v8 = *(v3 + 2);
      v9 = *(v3 + 3);
      v17[0] = v3[16];
      v18 = v7;
      v19 = v8;
      v20 = v9;
      if (v7)
      {
        v10 = v17;
        if (DWORD1(v21) != 0x7FFFFFFF && DWORD2(v21) != 0x7FFFFFFF && HIDWORD(v21) != 0x7FFFFFFF)
        {
          if (v21)
          {
            v10 = &v21;
            if (v7 != 0x7FFFFFFF && v8 != 0x7FFFFFFF && v9 != 0x7FFFFFFF && v6)
            {
              v11 = SHIDWORD(v21) < v9;
              if (v8 == DWORD2(v21))
              {
                v12 = v11;
              }

              else
              {
                v12 = SDWORD2(v21) < v8;
              }

              v13 = v21 == v6;
              v14 = v21 < v6;
              if (v13)
              {
                v14 = v12;
              }

              if (v7 == DWORD1(v21))
              {
                v15 = v14;
              }

              else
              {
                v15 = SDWORD1(v21) < v7;
              }

              if (v15)
              {
                v10 = v17;
              }

              else
              {
                v10 = &v21;
              }
            }
          }
        }

        v21 = *v10;
      }
    }

    v3 += 48;
  }

  while (v3 != v4);
  return v21;
}

void sub_458BBC(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 40);
  *(a1 + 1684) = xmmword_2297C10;
  *(a1 + 1700) = xmmword_2297C10;
  *(a1 + 1716) = xmmword_2297C10;
  *(a1 + 1732) = xmmword_2297C10;
  *(a1 + 1748) = xmmword_2297C10;
  *(a1 + 1764) = xmmword_2297C10;
  *(a1 + 1780) = xmmword_2297C10;
  *(a1 + 1796) = xmmword_2297C10;
  *(a1 + 1812) = xmmword_2297C10;
  *(a1 + 1828) = xmmword_2297C10;
  *(a1 + 1844) = xmmword_2297C10;
  v5 = v4 + 96 * a2;
  v6 = *(v5 + 24);
  for (i = *(v5 + 32); v6 != i; v6 += 48)
  {
    v9 = *v6;
    if (*v6)
    {
      v10 = v6[16];
      v12 = *(v6 + 1);
      v11 = *(v6 + 2);
      v13 = *(v6 + 3);
      v20 = v6[16];
      v21 = v12;
      v22 = v11;
      v23 = v13;
      v14 = (a1 + 1684 + 16 * v9);
      v15 = *(v14 + 1);
      v16 = v15 < v12;
      if (v12 == v15)
      {
        v17 = *v14;
        v18 = v17 == v10;
        v16 = v17 < v10;
        if (v18)
        {
          v19 = *(v14 + 2);
          v16 = v19 < v11;
          if (v11 == v19)
          {
            v16 = *(v14 + 3) < v13;
          }
        }
      }

      if (v16)
      {
        v8 = &v20;
      }

      else
      {
        v8 = v14;
      }

      *v14 = *v8;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  operator new();
}

void sub_458D88(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_458DB0(uint64_t a1, unsigned __int16 a2, signed int a3, signed int a4)
{
  if (a3 == 0x7FFFFFFFLL || a4 == 0x7FFFFFFFLL)
  {
    return 0x7FFFFFFF00000000;
  }

  if (a2 == 0xFFFFLL)
  {
    return 0x7FFFFFFF00000000;
  }

  v6 = *(a1 + 40);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - v6) >> 5) < a2)
  {
    return 0x7FFFFFFF00000000;
  }

  v8 = v6 + 96 * a2;
  if (!*(v8 + 52) || *(v8 + 56) == -1)
  {
    return 0x7FFFFFFF00000000;
  }

  v10 = v4;
  v11 = v5;
  sub_4586B4(a1, v8, a3, a4, &v9);
  return v9;
}

void sub_459034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_459058(uint64_t a1, int *a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 8) * a2[1];
  if (v5 >= 0.0)
  {
    if (v5 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v6 = (v5 + v5) + 1;
  }

  else
  {
    if (v5 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
  }

  v5 = (v6 >> 1);
LABEL_7:
  sub_A24CC(v4, v5);
  sub_A2480(*(a1 + 64), a2[2]);
  sub_A249C(*(a1 + 64), *a2, a2[3]);
  sub_AAFAC(*(a1 + 64), 36000);
  sub_A24E8(*(a1 + 64), 36000);
  sub_AAFC0(*(a1 + 64), 0x48CA6u);
  v7 = nullsub_1(*(a1 + 32));
  v8 = sub_4566AC(v7);
  v9 = HIDWORD(v8);
  v10 = v8;
  sub_AAFFC(*(a1 + 64), v8);
  sub_A2448(*(a1 + 64), v10);
  sub_A2464(*(a1 + 64), v9);
  sub_9DC58(*(a1 + 64), *(a1 + 16), &v11);
}

void sub_459248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a14;
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void sub_459298(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = *(v3 - 9);
      if (v5)
      {
        v6 = *(v3 - 8);
        v7 = *(v3 - 9);
        if (v6 != v5)
        {
          do
          {
            if (*(v6 - 1) < 0)
            {
              operator delete(*(v6 - 3));
            }

            v6 -= 6;
          }

          while (v6 != v5);
          v7 = *(v3 - 9);
        }

        *(v3 - 8) = v5;
        operator delete(v7);
      }

      v8 = v3 - 12;
      v9 = *(v3 - 12);
      if (v9)
      {
        v10 = *(v3 - 11);
        v4 = *(v3 - 12);
        if (v10 != v9)
        {
          do
          {
            v11 = *(v10 - 3);
            if (v11)
            {
              *(v10 - 2) = v11;
              operator delete(v11);
            }

            v10 -= 48;
          }

          while (v10 != v9);
          v4 = *v8;
        }

        *(v3 - 11) = v9;
        operator delete(v4);
      }

      v3 -= 12;
    }

    while (v8 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_459378(uint64_t a1, char *a2, int *a3, int *a4, char *a5)
{
  v5 = (*(a1 + 8) - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_1794();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v10 = sub_96DCC(16 * v5, *a2, *a3, *a4, *a5);
  v11 = v10 + 16;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v10 - v13;
  memcpy((v10 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_459484(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_45949C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_459568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4596B4(va);
  _Unwind_Resume(a1);
}

void sub_45957C(void ***a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v4 + *a1 - v6;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = v8[2];
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(v8 + 3);
      *(v9 + 40) = v8[5];
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      v10 = *(v8 + 3);
      *(v9 + 62) = *(v8 + 62);
      *(v9 + 48) = v10;
      *(v9 + 80) = *(v8 + 5);
      v8 += 12;
      v9 += 96;
    }

    while (v8 != v6);
  }

  sub_4596EC(a1, v5, v6);
  a2[1] = v7;
  v11 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_4596B4(uint64_t a1)
{
  sub_45982C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_4596EC(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = v4[3];
      if (v6)
      {
        v7 = v4[4];
        v8 = v4[3];
        if (v7 != v6)
        {
          do
          {
            if (*(v7 - 1) < 0)
            {
              operator delete(*(v7 - 3));
            }

            v7 -= 6;
          }

          while (v7 != v6);
          v8 = v4[3];
        }

        v4[4] = v6;
        operator delete(v8);
      }

      v9 = *v4;
      if (*v4)
      {
        v10 = v4[1];
        v5 = *v4;
        if (v10 != v9)
        {
          do
          {
            v11 = *(v10 - 3);
            if (v11)
            {
              *(v10 - 2) = v11;
              operator delete(v11);
            }

            v10 -= 48;
          }

          while (v10 != v9);
          v5 = *v4;
        }

        v4[1] = v9;
        operator delete(v5);
      }

      v4 += 12;
    }

    while (v4 != a3);
  }
}

uint64_t sub_4597C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 12;
        sub_2AE1D0(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_45982C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v6 = (i - 96);
    *(a1 + 16) = i - 96;
    v7 = *(i - 72);
    if (v7)
    {
      v8 = *(i - 64);
      v9 = *(i - 72);
      if (v8 != v7)
      {
        do
        {
          if (*(v8 - 1) < 0)
          {
            operator delete(*(v8 - 24));
          }

          v8 -= 48;
        }

        while (v8 != v7);
        v9 = *(i - 72);
      }

      *(i - 64) = v7;
      operator delete(v9);
    }

    v10 = *v6;
    if (*v6)
    {
      v11 = *(i - 88);
      v5 = *v6;
      if (v11 != v10)
      {
        do
        {
          v12 = *(v11 - 3);
          if (v12)
          {
            *(v11 - 2) = v12;
            operator delete(v12);
          }

          v11 -= 48;
        }

        while (v11 != v10);
        v5 = *v6;
      }

      *(i - 88) = v10;
      operator delete(v5);
    }
  }
}

uint64_t sub_459914(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 96 * v2;
  __p = 0;
  v11 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  *(v6 + 62) = *(a2 + 62);
  *(v6 + 48) = v7;
  *(v6 + 80) = *(a2 + 80);
  v12 = 96 * v2 + 96;
  v13 = 0;
  sub_45957C(a1, &__p);
  v8 = *(a1 + 8);
  sub_45982C(&__p, v11);
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_459A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4596B4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_459A78@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 265 * ((~v4 + (v4 << 21)) ^ ((~v4 + (v4 << 21)) >> 24));
  v6 = 2147483649u * ((21 * (v5 ^ (v5 >> 14))) ^ ((21 * (v5 ^ (v5 >> 14))) >> 28));
  v7 = (a1 + 48 * (((BYTE1(v6) ^ BYTE2(v6)) ^ BYTE3(v6)) & 0xF));
  v8 = v6 >> 7;
  v9 = v7[3];
  while (1)
  {
    v10 = v8 & v9;
    v11 = *(*v7 + v10);
    v12 = ((v11 ^ (0x101010101010101 * (v6 & 0x7F))) - 0x101010101010101) & ~(v11 ^ (0x101010101010101 * (v6 & 0x7F))) & 0x8080808080808080;
    if (v12)
    {
      break;
    }

LABEL_5:
    if ((v11 & (~v11 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_459B98(v7, v6);
      *a3 = v7;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v8 = v3 + v10;
  }

  while (1)
  {
    result = (v10 + (__clz(__rbit64(v12)) >> 3)) & v9;
    if (v4 == *(v7[1] + 20 * result))
    {
      break;
    }

    v12 &= v12 - 1;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  *a3 = v7;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_459B98(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_459C90(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_459C90(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_459CC0();
  }

  return sub_459E7C(a1);
}

uint64_t sub_459E7C(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 20 * i);
        v19 = 265 * ((~v18 + (v18 << 21)) ^ ((~v18 + (v18 << 21)) >> 24));
        v20 = 2147483649u * ((21 * (v19 ^ (v19 >> 14))) ^ ((21 * (v19 ^ (v19 >> 14))) >> 28));
        v21 = v13 & (v20 >> 7);
        v22 = *(v17->i64 + v21) & (~*(v17->i64 + v21) << 7) & 0x8080808080808080;
        if (v22)
        {
          v15 = v13 & (v20 >> 7);
        }

        else
        {
          v23 = 8;
          v15 = v13 & (v20 >> 7);
          do
          {
            v15 = (v15 + v23) & v13;
            v23 += 8;
            v22 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v22);
        }

        v16 = (v15 + (__clz(__rbit64(v22)) >> 3)) & v13;
        if ((((v16 - v21) ^ (i - v21)) & v13) > 7)
        {
          v24 = v17->u8[v16];
          v17->i8[v16] = v20 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v20 & 0x7F;
          v25 = *(result + 8);
          if (v24 == 128)
          {
            v26 = v25 + 20 * v16;
            v27 = (v25 + 20 * i);
            v28 = *v27;
            *(v26 + 16) = *(v27 + 4);
            *v26 = v28;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v29 = (v25 + 20 * i);
            v30 = *v29;
            v31 = *(v29 + 4);
            v32 = 20 * v16;
            v33 = (v25 + 20 * v16);
            v34 = *(v33 + 4);
            *v29 = *v33;
            *(v29 + 4) = v34;
            v35 = *(result + 8) + v32;
            *v35 = v30;
            *(v35 + 16) = v31;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v20 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v20 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v36 = i - (i >> 3);
    v37 = i == 7;
    v38 = 6;
    if (!v37)
    {
      v38 = v36;
    }
  }

  else
  {
    v38 = 0;
  }

  *(result + 40) = v38 - *(result + 16);
  return result;
}

unint64_t sub_45A164@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a2[1] + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = (a2[2] + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = a2[3] + (v7 << 6) + (v7 >> 2) + 2654435769u;
  v9 = (v8 ^ ~v7) + ((v8 ^ v7) << 21);
  v10 = 21 * ((265 * (v9 ^ (v9 >> 24))) ^ ((265 * (v9 ^ (v9 >> 24))) >> 14));
  result = sub_45A284(a1, 2147483649u * (v10 ^ (v10 >> 28)), a2, &v18);
  v12 = v18;
  v13 = v20;
  if (v20 == 1)
  {
    v14 = v18[1] + 40 * v19;
    *v14 = *a2;
    result = sub_444138((v14 + 16));
    v13 = v20;
  }

  v15 = *v12 + v19;
  v16 = v12[1] + 40 * v19;
  v17 = *v12 + v12[3];
  *a3 = v12;
  *(a3 + 8) = a1 + 768;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  *(a3 + 48) = v13;
  return result;
}

unint64_t sub_45A284@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0;
  v5 = (a1 + 48 * (((BYTE1(a2) ^ BYTE2(a2)) ^ BYTE3(a2)) & 0xF));
  v6 = a2 >> 7;
  v7 = v5[3];
  while (1)
  {
    v8 = v6 & v7;
    v9 = *(*v5 + (v6 & v7));
    v10 = ((v9 ^ (0x101010101010101 * (a2 & 0x7F))) - 0x101010101010101) & ~(v9 ^ (0x101010101010101 * (a2 & 0x7F))) & 0x8080808080808080;
    if (v10)
    {
      break;
    }

LABEL_8:
    if ((v9 & (~v9 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_45A3A8(v5, a2);
      *a4 = v5;
      *(a4 + 8) = result;
      *(a4 + 16) = 1;
      return result;
    }

    v4 += 8;
    v6 = v4 + v8;
  }

  while (1)
  {
    result = (v8 + (__clz(__rbit64(v10)) >> 3)) & v7;
    v12 = (v5[1] + 40 * result);
    if (*v12 == *a3 && v12[1] == a3[1] && v12[2] == a3[2] && v12[3] == a3[3])
    {
      break;
    }

    v10 &= v10 - 1;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  *a4 = v5;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  return result;
}

unint64_t sub_45A3A8(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_45A4A0(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_45A4A0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_45A4D0();
  }

  return sub_45A6EC(a1);
}

uint64_t sub_45A6EC(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = (*(result + 8) + 40 * i);
        v19 = (v18[1] + 0x388152A534) ^ 0xDEADBEEFLL;
        v20 = (v18[2] + 2654435769 + (v19 << 6) + (v19 >> 2)) ^ v19;
        v21 = v18[3] + 2654435769 + (v20 << 6) + (v20 >> 2);
        v22 = (v21 ^ ~v20) + ((v21 ^ v20) << 21);
        v23 = 21 * ((265 * (v22 ^ (v22 >> 24))) ^ ((265 * (v22 ^ (v22 >> 24))) >> 14));
        v24 = 2147483649u * (v23 ^ (v23 >> 28));
        v25 = v13 & (v24 >> 7);
        v26 = *(v17->i64 + v25) & (~*(v17->i64 + v25) << 7) & 0x8080808080808080;
        if (v26)
        {
          v15 = v13 & (v24 >> 7);
        }

        else
        {
          v27 = 8;
          v15 = v13 & (v24 >> 7);
          do
          {
            v15 = (v15 + v27) & v13;
            v27 += 8;
            v26 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v26);
        }

        v16 = (v15 + (__clz(__rbit64(v26)) >> 3)) & v13;
        if ((((v16 - v25) ^ (i - v25)) & v13) > 7)
        {
          v28 = v17->u8[v16];
          v17->i8[v16] = v24 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v24 & 0x7F;
          v29 = *(result + 8);
          if (v28 == 128)
          {
            v30 = v29 + 40 * v16;
            v31 = v29 + 40 * i;
            *(v30 + 24) = 0;
            *(v30 + 32) = 0;
            *(v30 + 16) = 0;
            v32 = *(v31 + 16);
            *v30 = *v31;
            *(v30 + 16) = v32;
            *(v30 + 32) = *(v31 + 32);
            *(v31 + 24) = 0;
            *(v31 + 32) = 0;
            *(v31 + 16) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v33 = (v29 + 40 * i);
            v34 = v33[1];
            v44 = *v33;
            v35 = *(v33 + 4);
            *(v33 + 3) = 0;
            *(v33 + 4) = 0;
            *(v33 + 2) = 0;
            v36 = *(result + 8);
            v37 = v36 + 40 * i;
            v38 = v36 + 40 * v16;
            *(v37 + 16) = 0;
            *(v37 + 24) = 0;
            *(v37 + 32) = 0;
            v39 = *(v38 + 16);
            *v37 = *v38;
            *(v37 + 16) = v39;
            *(v37 + 32) = *(v38 + 32);
            *(v38 + 24) = 0;
            *(v38 + 32) = 0;
            *(v38 + 16) = 0;
            v40 = *(result + 8) + 40 * v16;
            *v40 = v44;
            *(v40 + 16) = v34;
            *(v40 + 32) = v35;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v24 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v24 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v41 = i - (i >> 3);
    v42 = i == 7;
    v43 = 6;
    if (!v42)
    {
      v43 = v41;
    }
  }

  else
  {
    v43 = 0;
  }

  *(result + 40) = v43 - *(result + 16);
  return result;
}

void sub_45AA54()
{
  byte_278FE17 = 3;
  LODWORD(qword_278FE00) = 5136193;
  byte_278FE2F = 3;
  LODWORD(qword_278FE18) = 5136194;
  byte_278FE47 = 3;
  LODWORD(qword_278FE30) = 5136195;
  byte_278FE5F = 15;
  strcpy(&qword_278FE48, "vehicle_mass_kg");
  byte_278FE77 = 21;
  strcpy(&xmmword_278FE60, "vehicle_cargo_mass_kg");
  byte_278FE8F = 19;
  strcpy(&qword_278FE78, "vehicle_aux_power_w");
  byte_278FEA7 = 15;
  strcpy(&qword_278FE90, "dcdc_efficiency");
  strcpy(&qword_278FEA8, "drive_train_efficiency");
  HIBYTE(word_278FEBE) = 22;
  operator new();
}

void sub_45AC30(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_278FEBE) < 0)
  {
    sub_21E1F3C();
  }

  sub_21E1F48();
  _Unwind_Resume(a1);
}

uint64_t sub_45AD4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v21);
  sub_4A5C(&v22, "MULTIPOINT(", 11);
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      sub_4A5C(&v22, "(", 1);
      v6 = &v22 + *(v22 - 24);
      v7 = *(v6 + 2);
      *(v6 + 2) = 16;
      v8 = std::ostream::operator<<();
      sub_4A5C(v8, " ", 1);
      LODWORD(v9) = *(v3 + v4 + 4);
      v10 = v9 * -6.28318531 / 4294967300.0 + 3.14159265;
      v11 = exp(v10);
      v12 = exp(-v10);
      atan((v11 - v12) * 0.5);
      std::ostream::operator<<();
      *(&v23 + *(v22 - 24)) = v7;
      sub_4A5C(&v22, ")", 1);
      ++v5;
      v3 = *a1;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
      if (v5 < v13)
      {
        sub_4A5C(&v22, ",", 1);
        v3 = *a1;
        v13 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
      }

      v4 += 12;
    }

    while (v5 < v13);
  }

  sub_4A5C(&v22, ")", 1);
  if ((v32 & 0x10) != 0)
  {
    v16 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v16 = v28;
    }

    v15 = a2;
    v17 = v27;
    v14 = v16 - v27;
    if (v16 - v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v14 = 0;
      v15 = a2;
      a2[23] = 0;
      goto LABEL_17;
    }

    v15 = a2;
    v17 = v25;
    v14 = v26 - v25;
    if ((v26 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  v15[23] = v14;
  if (v14)
  {
    memmove(v15, v17, v14);
  }

LABEL_17:
  v15[v14] = 0;
  v22 = v18;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_45B18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_45B1B8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_45B1FC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1] - *a1;
  *a3 = -1;
  *(a3 + 8) = 0x7FFFFFFF;
  if (0xAAAAAAAAAAAAAAABLL * (v5 >> 2) <= 1)
  {
    *(a3 + 12) = 0x7FFFFFFF;
    *(a3 + 16) = -1;
    return;
  }

  if (v5 != 12)
  {
    v17 = 0;
    v18 = 0;
    v7 = -1;
    v8 = 0x7FFFFFFF;
    while (1)
    {
      v50 = -1;
      v51 = 0x7FFFFFFF;
      v19 = v4 + v17;
      v20 = v4 + v17 + 12;
      v21 = *(v4 + v17);
      v22.i64[0] = v21;
      v22.i64[1] = HIDWORD(v21);
      v23 = vcvtq_f64_u64(v22);
      v22.i64[0] = *v20;
      v22.i64[1] = HIDWORD(*v20);
      v24 = vsubq_f64(vcvtq_f64_u64(v22), v23);
      v25 = vmulq_f64(v24, v24);
      v26 = vaddvq_f64(v25);
      v27 = fabs(v26);
      if (v26 != 0.0 && v27 >= 2.22044605e-16)
      {
        v31.i64[0] = *a2;
        v31.i64[1] = HIDWORD(*a2);
        v32 = vmulq_f64(v24, vsubq_f64(vcvtq_f64_u64(v31), v23));
        v33 = vdivq_f64(vaddq_f64(v32, vdupq_laneq_s64(v32, 1)), vaddq_f64(v25, vdupq_laneq_s64(v25, 1)));
        if (v33.f64[0] <= 0.0)
        {
          v29 = *v19;
          v30 = *(v19 + 8);
          goto LABEL_23;
        }

        if (v33.f64[0] < 1.0)
        {
          v34 = llround(vaddq_f64(vmulq_f64(v24, v33), v23).f64[0]);
          *&v23.f64[0] = *&vaddq_f64(vmulq_laneq_f64(v33, v24, 1), vdupq_laneq_s64(v23, 1));
          LODWORD(v50) = v34;
          HIDWORD(v50) = llround(v23.f64[0]);
          v35 = v4 + v17;
          v36 = *(v4 + v17 + 8);
          if (v36 != 0x7FFFFFFF)
          {
            v37 = *(v35 + 20);
            if (v37 != 0x7FFFFFFF)
            {
              v23.f64[0] = v33.f64[0] * (v37 - v36) + v36;
              v51 = v23.f64[0];
            }
          }

          goto LABEL_24;
        }
      }

      v29 = *v20;
      v30 = *(v20 + 8);
LABEL_23:
      v51 = v30;
      v50 = v29;
LABEL_24:
      sub_46315C(a2, &v50, v23.f64[0]);
      v39 = v38 * 100.0;
      v40 = v39 >= -2147483650.0 && v39 < 2147483650.0;
      v41 = llround(v39);
      if (!v40)
      {
        v41 = 0x7FFFFFFF;
      }

      if (v8 == 0x7FFFFFFF || v41 < v8)
      {
        *a3 = v50;
        *(a3 + 8) = v51;
        v7 = v18;
        v8 = v41;
      }

      ++v18;
      v4 = *a1;
      v17 += 12;
      if (v18 >= -1 - 0x5555555555555555 * ((a1[1] - *a1) >> 2))
      {
        goto LABEL_5;
      }
    }
  }

  v7 = -1;
  v8 = 0x7FFFFFFF;
LABEL_5:
  *(a3 + 12) = v8;
  *(a3 + 16) = v7;
  v9 = v4 + 12 * v7;
  v10.i64[0] = *a2;
  v10.i64[1] = HIDWORD(*a2);
  v11 = vcvtq_f64_u64(v10);
  v10.i64[0] = *v9;
  v10.i64[1] = HIDWORD(*v9);
  v12 = vdivq_f64(vsubq_f64(vcvtq_f64_u64(v10), v11), vdupq_n_s64(0x4059000000000000uLL));
  v13 = *(v9 + 8);
  if (v13 == 0x7FFFFFFF || (v14 = *(a2 + 8), v14 == 0x7FFFFFFF))
  {
    v15 = vaddvq_f64(vmulq_f64(v12, v12));
  }

  else
  {
    v42 = v13 - v14;
    if (v42 < 0)
    {
      v42 = -v42;
    }

    v15 = vaddvq_f64(vmulq_f64(v12, v12)) + v42 / 100.0 * (v42 / 100.0);
  }

  v43 = sqrt(v15);
  v44 = v4 + 12 * (v7 + 1);
  v45.i64[0] = *v44;
  v45.i64[1] = HIDWORD(*v44);
  v46 = vdivq_f64(vsubq_f64(vcvtq_f64_u64(v45), v11), vdupq_n_s64(0x4059000000000000uLL));
  v47 = *(v44 + 8);
  if (v47 == 0x7FFFFFFF || (v48 = *(a2 + 8), v48 == 0x7FFFFFFF))
  {
    if (v43 <= sqrt(vaddvq_f64(vmulq_f64(v46, v46))))
    {
      return;
    }

    goto LABEL_38;
  }

  v49 = v47 - v48;
  if (v49 < 0)
  {
    v49 = -v49;
  }

  if (v43 > sqrt(vaddvq_f64(vmulq_f64(v46, v46)) + v49 / 100.0 * (v49 / 100.0)))
  {
LABEL_38:
    *(a3 + 16) = v7 + 1;
  }
}

uint64_t sub_45B588(uint64_t a1)
{
  sub_12118F8();
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_45B5C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::chrono::steady_clock::now();
  sub_45C658(a2, *a1, a1 + 8, &v29);
  if (sub_12119FC())
  {
    sub_19594F8(&v28);
    v22 = sub_4A5C(&v28, "Support point locations: ", 25);
    __dst = 0;
    v24 = 0;
    v25 = 0;
    if (v30 != v29)
    {
      if (0x8E38E38E38E38E39 * ((v30 - v29) >> 3) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }

    sub_45AD4C(&__dst, __p);
    if ((v27 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v7 = v27;
    }

    else
    {
      v7 = __p[1];
    }

    sub_4A5C(v22, v6, v7);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (__dst)
    {
      v24 = __dst;
      operator delete(__dst);
    }

    operator new();
  }

  v8 = v29;
  if (0x8E38E38E38E38E39 * ((v30 - v29) >> 3) < 2)
  {
    goto LABEL_17;
  }

  v9 = *(a1 + 64);
  if (v9 >= 2)
  {
    if (v9 == 2 && (v29[2] == v29[3] || *(v30 - 56) == *(v30 - 48)))
    {
LABEL_17:
      if (sub_1211B74())
      {
        sub_19594F8(&v28);
        sub_4A5C(&v28, "Got less than 2 support points or not all necessary support points could be snapped.", 84);
        operator new();
      }

      *(a3 + 112) = 0;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 120) = 1065353216;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 1065353216;
      *(a3 + 168) = 0;
      goto LABEL_39;
    }
  }

  else if (v29 != v30)
  {
    while (*(v8 + 16) != *(v8 + 24))
    {
      v8 += 72;
      if (v8 == v30)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_17;
  }

LABEL_27:
  if (sub_12119FC())
  {
    sub_19594F8(&v28);
    sub_4A5C(&v28, "Decoding path with ", 19);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " support points.", 16);
    operator new();
  }

  if (sub_45CF70(a1, &v29))
  {
    sub_45D3D0(a3);
  }

  sub_45D614(a1, &v29, a3);
  v11 = *(a2 + 56);
  if (!v11)
  {
    v11 = &off_2734BA0;
  }

  v12 = *(v11 + 6);
  if (v12 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12 == 1;
  }

  *(a3 + 168) = v13;
  std::chrono::steady_clock::now();
  if (sub_12119FC())
  {
    sub_19594F8(&v28);
    sub_4A5C(&v28, "Decoded path with ", 18);
    v14 = std::ostream::operator<<();
    sub_4A5C(v14, " segments (origin_fraction: ", 28);
    v15 = std::ostream::operator<<();
    sub_4A5C(v15, ", destination_fraction: ", 24);
    v16 = std::ostream::operator<<();
    sub_4A5C(v16, ") in ", 5);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " ms.", 4);
    operator new();
  }

LABEL_39:
  v18 = v29;
  if (v29)
  {
    v19 = v30;
    v20 = v29;
    if (v30 != v29)
    {
      do
      {
        v21 = *(v19 - 56);
        if (v21)
        {
          *(v19 - 48) = v21;
          operator delete(v21);
        }

        v19 -= 72;
      }

      while (v19 != v18);
      v20 = v29;
    }

    v30 = v18;
    operator delete(v20);
  }
}

void sub_45C4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_1959728(&a26);
  sub_463370(v26);
  sub_45D974((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_45C628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a7)
  {
    operator delete(a7);
  }

  sub_1959728(va);
  sub_45D974(v12 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_45C658@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 40);
  v6 = (v5 + 8);
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(result + 32);
  if (!v7)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v9 = result;
  v10 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v10)
  {
    v18 = 0;
    v15 = v6;
LABEL_15:
    v19 = &v6[v7];
    do
    {
      v20 = *v15++;
      if (*(v20 + 84) == 1)
      {
        ++v18;
      }
    }

    while (v15 != v19);
    goto LABEL_19;
  }

  v11 = 0;
  v12 = 0;
  v13 = v10 + 1;
  v14 = (v10 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v15 = &v6[v14];
  v16 = v6 + 1;
  v17 = v14;
  do
  {
    result = *(*v16 + 84);
    if (*(*(v16 - 1) + 84) == 1)
    {
      ++v11;
    }

    if (result == 1)
    {
      ++v12;
    }

    v16 += 2;
    v17 -= 2;
  }

  while (v17);
  v18 = v12 + v11;
  if (v13 != v14)
  {
    goto LABEL_15;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v45 = a4;
  LOBYTE(v46) = 0;
  if (v18)
  {
    if (v18 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (v7 >= 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    do
    {
      v25 = *(*(v9 + 40) + 8 * v21 + 8);
      if (*(v25 + 84) == 1)
      {
        if ((v24 & 1) != 0 || (*(v25 + 48) != v23 ? (v26 = v22 == -1) : (v26 = 1), v26))
        {
          v27 = 1;
        }

        else
        {
          v27 = (*(v25 + 16) >> 2) & 1;
        }

        sub_464684(*(*(v9 + 40) + 8 * v21 + 8), v22 == 0, v27, a2, a3, &v45);
        v28 = *a4 + 72 * v22;
        v29 = v45;
        *(v28 + 8) = v46;
        *v28 = v29;
        v30 = *(v28 + 16);
        if (v30)
        {
          *(v28 + 24) = v30;
          operator delete(v30);
          *(v28 + 16) = 0;
          *(v28 + 24) = 0;
          *(v28 + 32) = 0;
        }

        *(v28 + 16) = *__p;
        *(v28 + 32) = v48;
        __p[0] = 0;
        __p[1] = 0;
        v48 = 0;
        v31 = v49;
        *(v28 + 44) = v50;
        *(v28 + 40) = v31;
        *(v28 + 48) = v51;
        *(v28 + 56) = v52;
        *(v28 + 64) = v53;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*(*a4 + 72 * v22 + 16) == *(*a4 + 72 * v22 + 24))
        {
          result = sub_12119FC();
          if (result)
          {
            sub_19594F8(&v45);
            sub_4A5C(&v45, "Could not snap point ", 21);
            v37 = std::ostream::operator<<();
            v38 = sub_4A5C(v37, " (", 2);
            v40 = sub_463550(v38, *a4 + 72 * v22, v39);
            sub_4A5C(v40, ")", 1);
            operator new();
          }
        }

        else
        {
          result = sub_12119FC();
          if (result)
          {
            sub_19594F8(&v45);
            sub_4A5C(&v45, "Snapped locations for point ", 28);
            v32 = std::ostream::operator<<();
            v33 = sub_4A5C(v32, ": ", 2);
            sub_465C8C(*a4 + 72 * v22, a2, __dst);
            sub_45AD4C(__dst, v43);
            if ((v44 & 0x80u) == 0)
            {
              v34 = v43;
            }

            else
            {
              v34 = v43[0];
            }

            if ((v44 & 0x80u) == 0)
            {
              v35 = v44;
            }

            else
            {
              v35 = v43[1];
            }

            sub_4A5C(v33, v34, v35);
            if (v44 < 0)
            {
              operator delete(v43[0]);
              v36 = __dst[0];
              if (__dst[0])
              {
LABEL_48:
                __dst[1] = v36;
                operator delete(v36);
              }
            }

            else
            {
              v36 = __dst[0];
              if (__dst[0])
              {
                goto LABEL_48;
              }
            }

            operator new();
          }
        }

        ++v22;
        v23 = *(v25 + 48);
        v24 &= v23 == 0;
        v7 = *(v9 + 32);
      }

      ++v21;
    }

    while (v21 < v7);
  }

  return result;
}

void sub_45CE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
    sub_1959728(&a33);
    sub_45D974(a11);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a33);
  sub_45D974(a11);
  _Unwind_Resume(a1);
}

BOOL sub_45CF70(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = **(*a2 + 16);
  v18 = v6;
  if (v4 == v5)
  {
LABEL_5:
    (*(**a1 + 32))(&v12);
    v8 = 0;
    if (v15)
    {
      if (sub_1211940())
      {
        sub_19594F8(&v11);
        sub_4A5C(&v11, "Computing origin/destination fractions.", 39);
        operator new();
      }

      v9 = sub_45DA9C(a1, &v18, *a2);
      v8 = v9 <= sub_45DA9C(a1, &v18, a2[1] - 72);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  else
  {
    while (1)
    {
      v7 = *(v4 + 16);
      if (__PAIR64__(*(v7 + 4), *v7) != __PAIR64__(WORD2(v6), v6) || *(v7 + 6) != BYTE6(v6))
      {
        return 0;
      }

      v4 += 72;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

void sub_45D32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1959728(&a21);
  sub_45B1B8(v21 - 152);
  _Unwind_Resume(a1);
}

void sub_45D3D0(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0;
  operator new();
}

void sub_45D614(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 + 8;
  v5 = *(a1 + 64);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      __p = *a1;
      v36 = (a1 + 8);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0;
      v42 = -1;
      v43 = 0u;
      v44 = 0u;
      memset(v45, 0, sizeof(v45));
      sub_4610E4(&__p, a2, &v31);
      sub_45FDC0(a1, &v31, &v33, a3);
      v17 = v33;
      if (v33)
      {
        v18 = v34;
        v19 = v33;
        if (v34 != v33)
        {
          do
          {
            v20 = *(v18 - 7);
            if (v20)
            {
              *(v18 - 6) = v20;
              operator delete(v20);
            }

            v18 -= 72;
          }

          while (v18 != v17);
          v19 = v33;
        }

        v34 = v17;
        operator delete(v19);
      }

      v25 = v31;
      if (v31)
      {
        v26 = v32;
        v27 = v31;
        if (v32 != v31)
        {
          v28 = v32;
          do
          {
            v30 = *(v28 - 3);
            v28 -= 24;
            v29 = v30;
            if (v30)
            {
              *(v26 - 2) = v29;
              operator delete(v29);
            }

            v26 = v28;
          }

          while (v28 != v25);
          v27 = v31;
        }

        v32 = v25;
        operator delete(v27);
      }

      sub_463434(&__p);
      return;
    }

LABEL_11:
    *(a3 + 112) = 0;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 120) = 1065353216;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 1065353216;
    *(a3 + 168) = 0;
    return;
  }

  if (!*(a1 + 64))
  {
    sub_45E478(a2, &__p);
    if (sub_45F330(*a1, v4, &__p, a2))
    {
      sub_45FDC0(a1, &__p, a2, a3);
      v8 = __p;
      if (!__p)
      {
        return;
      }
    }

    else
    {
      *(a3 + 112) = 0;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 120) = 1065353216;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 1065353216;
      *(a3 + 168) = 0;
      v8 = __p;
      if (!__p)
      {
        return;
      }
    }

    v21 = v36;
    v10 = v8;
    if (v36 != v8)
    {
      v22 = v36;
      do
      {
        v24 = *(v22 - 3);
        v22 -= 24;
        v23 = v24;
        if (v24)
        {
          *(v21 - 2) = v23;
          operator delete(v23);
        }

        v21 = v22;
      }

      while (v22 != v8);
      goto LABEL_28;
    }

LABEL_29:
    v36 = v8;
    operator delete(v10);
    return;
  }

  if (v5 != 1)
  {
    goto LABEL_11;
  }

  sub_460B8C(a2, &__p);
  sub_45FDC0(a1, &__p, a2, a3);
  v8 = __p;
  if (__p)
  {
    v9 = v36;
    v10 = __p;
    if (v36 != __p)
    {
      v11 = v36;
      do
      {
        v13 = *(v11 - 3);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v9 - 2) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
LABEL_28:
      v10 = __p;
      goto LABEL_29;
    }

    goto LABEL_29;
  }
}

void sub_45D91C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_462EDC(va);
  sub_463434(va1);
  _Unwind_Resume(a1);
}

void sub_45D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_463434(va);
  _Unwind_Resume(a1);
}

void sub_45D94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_45D960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void **sub_45D974(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 7);
        if (v5)
        {
          *(v3 - 6) = v5;
          operator delete(v5);
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__n128 sub_45D9F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 72) = *(a2 + 64);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 136) = *(a2 + 128);
  *(a1 + 120) = v9;
  *(a1 + 104) = v8;
  *(a1 + 88) = v7;
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  *(a1 + 200) = *(a2 + 192);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  if (a1 + 8 != a2)
  {
    sub_462F9C(a1 + 216, *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 4);
  }

  result = *(a2 + 232);
  v14 = *(a2 + 248);
  *(a1 + 272) = *(a2 + 264);
  *(a1 + 240) = result;
  *(a1 + 256) = v14;
  return result;
}

double sub_45DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a1 + 32))(&v23);
  sub_45B1FC(&v24, a3, &v20);
  v5 = v22 == -1 || v21 == 0x7FFFFFFF;
  if (v5 || (v20 == -1 ? (v6 = HIDWORD(v20) == -1) : (v6 = 0), v6))
  {
    v7 = 0.0;
    if (sub_1211B74())
    {
      sub_19594F8(&v19);
      sub_4A5C(&v19, "Could not snap the location onto the road.", 42);
      operator new();
    }
  }

  else
  {
    v7 = 0.0;
    if (0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 2) >= 2)
    {
      v8 = v24 + 12;
      if (v25 != v24 + 12)
      {
        v9 = v24;
        v10 = 1.79769313e308;
        v11 = 0.0;
        v12 = 0.0;
        do
        {
          sub_46315C(v9, v8, v4);
          v14 = v13;
          sub_46315C(v9, &v20, v13);
          v16 = v15;
          sub_46315C(&v20, v8, v15);
          v4 = fmax(v16 + v17 - v14, 0.0);
          if (v4 < v10)
          {
            v10 = v4;
            v12 = v11 + v16;
          }

          v11 = v11 + v14;
          v8 += 12;
          v9 = (v9 + 12);
        }

        while (v8 != v25);
        v7 = 0.0;
        if (v11 != 0.0)
        {
          if (v12 / v11 <= 1.0)
          {
            v7 = v12 / v11;
          }

          else
          {
            v7 = 1.0;
          }
        }
      }
    }
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v7;
}

void sub_45DEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1959728(&a21);
  sub_45B1B8(v21 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_45DF5C(uint64_t a1, int *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v10 = *a1;
    v11 = v5 - *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4) + 1;
    if (v12 > 0x555555555555555)
    {
      sub_1794();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 16 * (v11 >> 4);
    v16 = *a3;
    *v15 = *a2;
    *(v15 + 8) = v16;
    *(v15 + 16) = *a4;
    *(v15 + 32) = *(a4 + 2);
    *(v15 + 40) = 0;
    v9 = v15 + 48;
    v17 = (v15 - v11);
    if (v10 != v5)
    {
      v18 = v17;
      do
      {
        v19 = *v10;
        v20 = v10[2];
        v18[1] = v10[1];
        v18[2] = v20;
        *v18 = v19;
        v18 += 3;
        v10 += 3;
      }

      while (v10 != v5);
      v10 = *a1;
    }

    *a1 = v17;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v7 = *a3;
    *v5 = *a2;
    *(v5 + 8) = v7;
    v8 = *a4;
    *(v5 + 32) = *(a4 + 2);
    *(v5 + 16) = v8;
    *(v5 + 40) = 0;
    v9 = v5 + 48;
  }

  *(a1 + 8) = v9;
  return v9 - 48;
}

void sub_45E0F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1211940())
  {
    sub_19594F8(&v6);
    sub_4A5C(&v6, "Computing origin/destination fractions.", 39);
    operator new();
  }

  *a2 = sub_45DA9C(a1, *(a2 + 16), *a3);
  *(a2 + 8) = sub_45DA9C(a1, *(a2 + 24) - 8, a3[1] - 72);
}

void sub_45E3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      sub_1959728(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void *sub_45E478@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = (result[1] - *result) >> 3;
  if (0x8E38E38E38E38E39 * v2 != 1)
  {
    if (0x8E38E38E38E38E39 * v2 - 1 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_45F18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, void *a23, uint64_t a24)
{
  if (*(v24 - 209) < 0)
  {
    operator delete(*(v24 - 232));
  }

  sub_1959728(&__p);
  sub_34BE0((v24 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_45F330(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a4[1] - *a4) >> 3);
  if (v4 < 2)
  {
    return 1;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) != v4 - 1)
  {
    return 0;
  }

  v44[0] = a1;
  v44[1] = a1;
  sub_463B18(v45, 100);
  v49 = 0u;
  v48 = 0u;
  v50 = 1065353216;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = a2;
  v10 = *a4;
  v9 = a4[1];
  v11 = 0x8E38E38E38E38E39 * ((v9 - *a4) >> 3);
  if (v11 >= 2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = a1;
    while (1)
    {
      v16 = v14 - 1;
      v17 = *a3 + 24 * (v14 - 1);
      v18 = *v17;
      if (*v17 != *(v17 + 8))
      {
        if (v13 == v16)
        {
          v13 = v14;
        }

        else
        {
          v19 = v10 + 72 * v16;
          v20 = *(v19 + 16);
          v21 = *(v19 + 24);
          v22 = (v19 + 16);
          v23 = v20;
          if (v20 != v21)
          {
            v24 = *v18;
            v23 = v20;
            while (__PAIR64__(*(v23 + 2), *v23) != __PAIR64__(WORD2(v24), v24) || *(v23 + 6) != BYTE6(v24))
            {
              v23 += 2;
              if (v23 == v21)
              {
                goto LABEL_30;
              }
            }
          }

          if (v23 == v21)
          {
LABEL_30:
            if (sub_1211B74())
            {
              sub_19594F8(v43);
              sub_4A5C(v43, "Start segment of pathlet ", 25);
              v30 = std::ostream::operator<<();
              sub_4A5C(v30, " not found in the possible segments of point ", 45);
              std::ostream::operator<<();
              operator new();
            }

LABEL_35:
            v29 = 0;
            goto LABEL_36;
          }

          *v43 = *v20;
          v25 = *v43;
          *&v43[16] = v20[1];
          v26 = *(v23 + 12);
          *v20 = *v23;
          *(v20 + 12) = v26;
          *(v23 + 12) = *&v43[12];
          *v23 = v25;
          v27 = *v22 + 32;
          if (v27 != v22[1])
          {
            v22[1] = v27;
          }

          if ((sub_46F6E0(v15, v44, a4, v13, v14 - 1) & 1) == 0)
          {
            if (sub_1211B74())
            {
              sub_19594F8(v43);
              sub_4A5C(v43, "Could not decode path between ", 30);
              v35 = std::ostream::operator<<();
              sub_4A5C(v35, " and ", 5);
              v36 = std::ostream::operator<<();
              sub_4A5C(v36, " (out of ", 9);
              v37 = std::ostream::operator<<();
              sub_4A5C(v37, ")", 1);
              operator new();
            }

            goto LABEL_35;
          }

          ++v12;
          v10 = *a4;
          v9 = a4[1];
          v13 = v14;
          v15 = a1;
        }
      }

      ++v14;
      v11 = 0x8E38E38E38E38E39 * ((v9 - v10) >> 3);
      if (v14 >= v11)
      {
        goto LABEL_22;
      }
    }
  }

  v13 = 0;
  v12 = 0;
  v15 = a1;
LABEL_22:
  if ((sub_46F6E0(v15, v44, a4, v13, v11 - 1) & 1) == 0)
  {
    if (sub_1211B74())
    {
      sub_19594F8(v43);
      sub_4A5C(v43, "Could not decode path between ", 30);
      v31 = std::ostream::operator<<();
      sub_4A5C(v31, " and ", 5);
      std::ostream::operator<<();
      operator new();
    }

    goto LABEL_35;
  }

  if (v12 && sub_12119FC())
  {
    sub_19594F8(v43);
    sub_4A5C(v43, "Ran ", 4);
    v28 = std::ostream::operator<<();
    sub_4A5C(v28, " queries", 8);
    sub_3608D0(v41, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/submodules/path-codec/include/path-codec/PathletP2PDecoder.h");
    sub_1959680(v43, &__p);
    sub_1211A10(v41, 264, &__p);
    if (v40 < 0)
    {
      operator delete(__p);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    sub_1959728(v43);
    v29 = 1;
  }

  else
  {
    v29 = 1;
  }

LABEL_36:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  v32 = v49;
  if (v49)
  {
    do
    {
      v33 = *v32;
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v34 = v48;
  *&v48 = 0;
  if (v34)
  {
    operator delete(v34);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  return v29;
}

void sub_45FCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    sub_1959728(&a23);
    sub_46FB2C((v23 - 240));
    _Unwind_Resume(a1);
  }

  sub_1959728(&a23);
  sub_46FB2C((v23 - 240));
  _Unwind_Resume(a1);
}

void *sub_45FDC0@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v64 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 1065353216;
  v74 = 1065353216;
  v75 = 0;
  if (*a2 == a2[1])
  {
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *a4 = 0uLL;
    *(a4 + 16) = 0uLL;
    v65 = 0uLL;
    v66[0] = 0;
    v66[1] = 0;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    v66[2] = 0;
    v66[3] = 0;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    v67 = 0uLL;
    v68 = 0uLL;
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    *(a4 + 96) = 0;
    *(a4 + 104) = 0;
    *(a4 + 112) = 0;
    *(a4 + 120) = 1065353216;
    v72 = 0uLL;
    *&v69 = 0;
    *(a4 + 128) = 0;
    *(a4 + 136) = 0;
    *(a4 + 144) = 0;
    *(a4 + 152) = 0;
    goto LABEL_73;
  }

  v6 = a2;
  if (sub_1211940())
  {
    sub_19594F8(&v63);
    sub_4A5C(&v63, "Start stitching pathlets", 24);
    operator new();
  }

  if (sub_585D8((*a3 + 48)))
  {
    v8 = sub_45DA9C(a1, **v6, *a3);
    v9 = *a3;
    v10 = *(&v67 + 1);
    if (*(&v67 + 1) >= v68)
    {
      v13 = v67;
      v14 = *(&v67 + 1) - v67;
      v15 = 0xAAAAAAAAAAAAAAABLL * ((*(&v67 + 1) - v67) >> 4);
      v16 = v15 + 1;
      if (v15 + 1 > 0x555555555555555)
      {
        sub_1794();
      }

      if (0x5555555555555556 * ((v68 - v67) >> 4) > v16)
      {
        v16 = 0x5555555555555556 * ((v68 - v67) >> 4);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v17 = 0x555555555555555;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (v17 <= 0x555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v18 = 16 * ((*(&v67 + 1) - v67) >> 4);
      *v18 = 0;
      *(v18 + 8) = v8;
      v19 = *(v9 + 48);
      *(v18 + 32) = *(v9 + 64);
      *(v18 + 16) = v19;
      *(v18 + 40) = 0;
      v12 = 48 * v15 + 48;
      v20 = (48 * v15 - v14);
      if (v13 != v10)
      {
        v21 = v13;
        v22 = v20;
        do
        {
          v23 = *v21;
          v24 = v21[2];
          v22[1] = v21[1];
          v22[2] = v24;
          *v22 = v23;
          v22 += 3;
          v21 += 3;
        }

        while (v21 != v10);
      }

      *&v67 = v20;
      *(&v67 + 1) = 48 * v15 + 48;
      *&v68 = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      **(&v67 + 1) = 0;
      *(v10 + 8) = v8;
      v11 = *(v9 + 48);
      *(v10 + 32) = *(v9 + 64);
      *(v10 + 16) = v11;
      *(v10 + 40) = 0;
      v12 = v10 + 48;
    }

    *(&v67 + 1) = v12;
  }

  v25 = *v6;
  if (v6[1] == *v6)
  {
LABEL_57:
    sub_45E0F0(a1, &v64, a3);
    v52 = v65;
    *a4 = v64;
    *(a4 + 16) = v52;
    v53 = v66[3];
    *(a4 + 32) = v66[0];
    v65 = 0uLL;
    *(a4 + 40) = *&v66[1];
    *(a4 + 56) = v53;
    memset(v66, 0, sizeof(v66));
    *(a4 + 64) = v67;
    v67 = 0uLL;
    v54 = v68;
    v68 = 0uLL;
    *(a4 + 80) = v54;
    v55 = v69;
    *(a4 + 96) = v69;
    *&v69 = 0;
    v56 = v70;
    *(a4 + 104) = *(&v55 + 1);
    *(a4 + 112) = v56;
    *(a4 + 120) = v71;
    if (v56)
    {
      v57 = *(*(&v55 + 1) + 8);
      if ((v55 & (v55 - 1)) != 0)
      {
        if (*(&v55 + 1) >= v55)
        {
          v57 = *(&v55 + 1) % v55;
        }
      }

      else
      {
        v57 = *(&v55 + 1) & (v55 - 1);
      }

      *(*(&v54 + 1) + 8 * v57) = a4 + 104;
      *(&v69 + 1) = 0;
      v70 = 0;
    }

    v58 = v72;
    v59 = v73;
    *(a4 + 144) = v73;
    v72 = 0uLL;
    *(a4 + 128) = v58;
    *(a4 + 152) = *(&v59 + 1);
    *(a4 + 160) = v74;
    if (*(&v59 + 1))
    {
      v60 = *(v59 + 8);
      if ((*(&v58 + 1) & (*(&v58 + 1) - 1)) != 0)
      {
        if (v60 >= *(&v58 + 1))
        {
          v60 %= *(&v58 + 1);
        }
      }

      else
      {
        v60 &= *(&v58 + 1) - 1;
      }

      *(v58 + 8 * v60) = a4 + 144;
      v73 = 0uLL;
    }

    *(a4 + 168) = v75;
    return sub_463370(&v64);
  }

  v26 = 0;
  while (1)
  {
    v29 = &v25[3 * v26];
    v30 = *v29;
    v31 = v29[1];
    if (*v29 != v31)
    {
      break;
    }

LABEL_27:
    ++v26;
    v25 = *v6;
    if (v26 >= 0xAAAAAAAAAAAAAAABLL * (v6[1] - *v6))
    {
      goto LABEL_57;
    }
  }

  v32 = *(&v65 + 1);
  if (v65 == *(&v65 + 1))
  {
LABEL_33:
    sub_3790B0(&v65, v32, v30, v31, (v31 - v30) >> 3);
    v33 = (*(&v65 + 1) - v65) >> 3;
    v34 = v33 - (v66[2] - v66[1]);
    if (v33 <= v66[2] - v66[1])
    {
      if (v33 < v66[2] - v66[1])
      {
        v66[2] = v66[1] + v33;
      }
    }

    else
    {
      if (v66[3] - v66[2] < v34)
      {
        if ((v33 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v35 = v33 + v66[1];
      memset(v66[2], *(*a3 + 72 * v26 + 45), v34);
      v66[2] = v35;
    }

    v36 = *a3 + 72 * v26;
    if (sub_585D8((v36 + 120)))
    {
      v37 = sub_45DA9C(a1, *(&v65 + 1) - 8, v36 + 72);
      v38 = ((*(&v65 + 1) - v65) >> 3) - 1;
      v39 = *(&v67 + 1);
      if (*(&v67 + 1) < v68)
      {
        **(&v67 + 1) = v38;
        *(v39 + 8) = v37;
        v27 = *(v36 + 120);
        *(v39 + 32) = *(v36 + 136);
        *(v39 + 16) = v27;
        *(v39 + 40) = 0;
        v28 = v39 + 48;
      }

      else
      {
        v40 = v67;
        v41 = *(&v67 + 1) - v67;
        v42 = 0xAAAAAAAAAAAAAAABLL * ((*(&v67 + 1) - v67) >> 4);
        v43 = v42 + 1;
        if (v42 + 1 > 0x555555555555555)
        {
          sub_1794();
        }

        if (0x5555555555555556 * ((v68 - v67) >> 4) > v43)
        {
          v43 = 0x5555555555555556 * ((v68 - v67) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v44 = 0x555555555555555;
        }

        else
        {
          v44 = v43;
        }

        if (v44)
        {
          if (v44 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v45 = 16 * ((*(&v67 + 1) - v67) >> 4);
        *v45 = v38;
        *(v45 + 8) = v37;
        v46 = *(v36 + 120);
        *(v45 + 32) = *(v36 + 136);
        *(v45 + 16) = v46;
        *(v45 + 40) = 0;
        v47 = (48 * v42 - v41);
        if (v40 != v39)
        {
          v48 = v40;
          v49 = v47;
          do
          {
            v50 = *v48;
            v51 = v48[2];
            v49[1] = v48[1];
            v49[2] = v51;
            *v49 = v50;
            v49 += 3;
            v48 += 3;
          }

          while (v48 != v39);
        }

        v28 = v45 + 48;
        *&v67 = v47;
        *(&v67 + 1) = v45 + 48;
        *&v68 = 0;
        if (v40)
        {
          operator delete(v40);
        }

        v6 = a2;
      }

      *(&v67 + 1) = v28;
    }

    goto LABEL_27;
  }

  if (__PAIR64__(*(*(&v65 + 1) - 4), *(*(&v65 + 1) - 8)) == __PAIR64__(WORD2(*v30), *v30) && *(*(&v65 + 1) - 2) == BYTE6(*v30))
  {
    *(&v65 + 1) -= 8;
    --v66[2];
    v31 = v29[1];
    v32 -= 8;
    goto LABEL_33;
  }

  if (sub_1211B74())
  {
    sub_19594F8(&v63);
    sub_4A5C(&v63, "Decoded path is disconnected.", 29);
    operator new();
  }

  *(a4 + 112) = 0;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 120) = 1065353216;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
LABEL_73:
  *(a4 + 160) = 1065353216;
  *(a4 + 168) = 0;
  return sub_463370(&v64);
}

void sub_4609E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_1959728(&a26);
  sub_463370(&a59);
  _Unwind_Resume(a1);
}

void sub_460B8C(void *a1@<X2>, void *a2@<X8>)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  if (v3 > 1)
  {
    if (v3 - 1 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_461030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    sub_1959728(&a21);
    sub_34BE0((v21 - 104));
    _Unwind_Resume(a1);
  }

  sub_1959728(&a21);
  sub_34BE0((v21 - 104));
  _Unwind_Resume(a1);
}

void sub_4610BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_35390(va);
  _Unwind_Resume(a1);
}

void sub_4610E4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v4 = 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3);
  *(a1 + 22) = v4 - 1;
  *(a1 + 23) = 0;
  a1[12] = 0;
  v5 = a1[2];
  a1[3] = v5;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[4] - v5) >> 2) < v4)
  {
    if (v4 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  v274 = 0u;
  v275 = 0u;
  v276 = 1065353216;
  v6 = a2[1];
  if (v6 != *a2)
  {
    v7 = 0;
    v8 = 0;
    v244 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v245 = vdupq_n_s64(0x4076800000000000uLL);
    v242 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v243 = vdupq_n_s64(0xC066800000000000);
    v6 = *a2;
    while (1)
    {
      v12 = v6 + 72 * v7;
      v13 = *(v12 + 16);
      v249 = (v12 + 16);
      v14 = *(v12 + 24);
      while (v13 != v14)
      {
        v277 = v13;
        v16 = sub_4754E4(&v274, v13);
        v17 = v16;
        v18 = v16[4];
        v19 = v16[5];
        if (v18 < v19)
        {
          *v18 = v8;
          *(v18 + 8) = vextq_s8(*(v13 + 8), *(v13 + 8), 8uLL);
          v15 = v18 + 24;
        }

        else
        {
          v20 = v16[3];
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v20) >> 3) + 1;
          if (v21 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v22 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 3);
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0x555555555555555)
          {
            v23 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (v23 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v24 = 8 * ((v18 - v20) >> 3);
          *v24 = v8;
          *(v24 + 8) = vextq_s8(*(v13 + 8), *(v13 + 8), 8uLL);
          v15 = v24 + 24;
          v25 = (v24 - (v18 - v20));
          memcpy(v25, v20, v18 - v20);
          v17[3] = v25;
          v17[4] = v15;
          v17[5] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        v17[4] = v15;
        v13 += 32;
      }

      if (v8)
      {
        v26 = (*a2 + 72 * (v8 - 1));
        v28 = *v26;
        v27 = v26[1];
        v29 = v28 == -1 && v27 == -1;
        if (v29 || ((v30 = (*a2 + 72 * v7), v32 = *v30, v31 = v30[1], *v30 == -1) ? (v33 = v31 == -1) : (v33 = 0), v33))
        {
          v51 = 0x7FFFFFFF;
        }

        else
        {
          v34 = 3.14159265 - v27 * 6.28318531 / 4294967300.0;
          v35 = exp(v34);
          v36 = exp(-v34);
          v37 = atan((v35 - v36) * 0.5) * 57.2957795 * 0.0174532925;
          v38.i64[0] = v28;
          v38.i64[1] = v32;
          v39 = exp(3.14159265 - v31 * 6.28318531 / 4294967300.0);
          v40 = exp(-(3.14159265 - v31 * 6.28318531 / 4294967300.0));
          v41 = atan((v39 - v40) * 0.5) * 57.2957795 * 0.0174532925;
          v42 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v38), v245), v244), v243), v242);
          v246 = vsubq_f64(v42, vdupq_laneq_s64(v42, 1)).f64[0];
          v43 = sin((v37 - v41) * 0.5);
          v44 = v43 * v43;
          v45 = cos(v37);
          v46 = v45 * cos(v41);
          v47 = sin(0.5 * v246);
          v48 = atan2(sqrt(v47 * v47 * v46 + v44), sqrt(1.0 - (v47 * v47 * v46 + v44)));
          v49 = (v48 + v48) * 6372797.56 * 100.0;
          v50 = v49 >= -2147483650.0 && v49 < 2147483650.0;
          v51 = llround(v49);
          if (!v50)
          {
            v51 = 0x7FFFFFFF;
          }
        }

        v52 = a1;
        v53 = *(a1[2] + 12 * (v8 - 1)) + v51;
        v54 = v249[1] - *v249;
        v55 = a1[3];
        v56 = a1[4];
        if (v55 >= v56)
        {
LABEL_44:
          v57 = v52[2];
          v58 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v57) >> 2) + 1;
          if (v58 > 0x1555555555555555)
          {
            sub_1794();
          }

          v59 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v57) >> 2);
          if (2 * v59 > v58)
          {
            v58 = 2 * v59;
          }

          if (v59 >= 0xAAAAAAAAAAAAAAALL)
          {
            v60 = 0x1555555555555555;
          }

          else
          {
            v60 = v58;
          }

          if (v60)
          {
            if (v60 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v10 = a1;
          v61 = (4 * ((v55 - v57) >> 2));
          *v61 = v53;
          v61[1] = v54 >> 5;
          v61[2] = v54 >> 5;
          v9 = v61 + 3;
          v62 = v61 - (v55 - v57);
          memcpy(v62, v57, v55 - v57);
          a1[2] = v62;
          a1[3] = v9;
          a1[4] = 0;
          if (v57)
          {
            operator delete(v57);
          }

          goto LABEL_7;
        }
      }

      else
      {
        v53 = 0;
        v52 = a1;
        v54 = v249[1] - *v249;
        v55 = a1[3];
        v56 = a1[4];
        if (v55 >= v56)
        {
          goto LABEL_44;
        }
      }

      *v55 = v53;
      *(v55 + 1) = v54 >> 5;
      *(v55 + 2) = v54 >> 5;
      v9 = v55 + 12;
      v10 = v52;
LABEL_7:
      v10[3] = v9;
      v6 = *a2;
      v11 = a2[1];
      v7 = ++v8;
      if (0x8E38E38E38E38E39 * ((v11 - *a2) >> 3) <= v8)
      {
        v3 = a1;
        goto LABEL_58;
      }
    }
  }

  v11 = a2[1];
LABEL_58:
  v64 = v3 + 8;
  v63 = v3[8];
  v3[6] = v3[5];
  v65 = v3[9];
  v66 = v63;
  if (v65 != v63)
  {
    do
    {
      v67 = *(v65 - 3);
      if (v67)
      {
        do
        {
          v68 = *v67;
          operator delete(v67);
          v67 = v68;
        }

        while (v68);
      }

      v70 = *(v65 - 5);
      v65 -= 5;
      v69 = v70;
      *v65 = 0;
      if (v70)
      {
        operator delete(v69);
      }
    }

    while (v65 != v63);
    v6 = *a2;
    v11 = a2[1];
    v66 = *v64;
    v3 = a1;
  }

  v3[9] = v63;
  v71 = 0x8E38E38E38E38E39 * ((v11 - v6) >> 3);
  v72 = 0xCCCCCCCCCCCCCCCDLL * ((v63 - v66) >> 3);
  if (v71 <= v72)
  {
    if (v71 < v72)
    {
      v73 = (v66 + 40 * v71);
      while (v63 != v73)
      {
        v74 = *(v63 - 3);
        if (v74)
        {
          do
          {
            v75 = *v74;
            operator delete(v74);
            v74 = v75;
          }

          while (v75);
        }

        v77 = *(v63 - 5);
        v63 -= 5;
        v76 = v77;
        *v63 = 0;
        if (v77)
        {
          operator delete(v76);
        }
      }

      a1[9] = v73;
    }
  }

  else
  {
    sub_475888(v64, v71 - v72);
  }

  sub_463E58(&v269, 100);
  v78 = *a2;
  v79 = *(*a2 + 44);
  v260 = 0;
  v261 = 0;
  v262 = 1;
  v263 = xmmword_2297C60;
  v264 = 0;
  v265 = 0;
  v266 = 0;
  v267 = v79;
  v268 = 0;
  v81 = *(v78 + 16);
  v80 = *(v78 + 24);
  if (v81 != v80)
  {
    while (1)
    {
      v82 = sub_474E90(a1, *v81, 0);
      v83 = a1[5];
      (*(**a1 + 32))(&v277);
      v84 = *(v81 + 16);
      *v257 = *v81;
      v258 = v84;
      v85 = sub_4750A4(a1, v257, &v260);
      v86 = v83 + 36 * v82;
      LODWORD(__dst) = v85;
      v87 = llround(-(*(v81 + 8) * SHIDWORD(v277)));
      *(v86 + 12) = -1;
      *(v86 + 16) = __dst;
      *(v86 + 20) = v87;
      *(v86 + 24) = 0;
      *(v86 + 28) = 0;
      *(v86 + 32) = 0;
      *(v86 + 33) = *(*a2 + 44);
      *(v86 + 34) = 0;
      if (v82 >= ((v272 - v271) >> 2) || *(v271 + v82) == -1)
      {
        sub_464068(&v269, v82, &__dst);
      }

      else
      {
        sub_463F30(&v269, v82, &__dst);
      }

      if ((v282 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v88 = v278;
      if (v278)
      {
        goto LABEL_87;
      }

LABEL_78:
      v81 += 32;
      if (v81 == v80)
      {
        goto LABEL_88;
      }
    }

    v88 = v278;
    if (!v278)
    {
      goto LABEL_78;
    }

LABEL_87:
    v279 = v88;
    operator delete(v88);
    goto LABEL_78;
  }

LABEL_88:
  v89 = a3;
  v90 = a1;
  if (!v273)
  {
LABEL_174:
    *(v89 + 16) = 0u;
    *(v89 + 32) = 0u;
    *v89 = 0u;
    if (sub_1211B74())
    {
      sub_19594F8(&v277);
      sub_4A5C(&v277, "PathletGlobalDecoder failed.", 28);
      operator new();
    }

    goto LABEL_216;
  }

  while (1)
  {
    v91 = v269;
    v92 = *v269;
    v93 = *(v90 + 40);
    v94 = v93 + 36 * v92;
    v95 = *(v94 + 32);
    v96 = *(v94 + 16);
    *v257 = *v94;
    v258 = v96;
    v259 = v95;
    v97 = LODWORD(v257[1]);
    if (LODWORD(v257[1]) == *(v90 + 88))
    {
      break;
    }

    v98 = v271;
    *(v271 + *v269) = -1;
    v99 = --v273;
    if (v273)
    {
      v100 = v91[v99];
      *v91 = v100;
      v98[v100] = 0;
      v101 = v273;
      if (v273 >= 2)
      {
        v102 = 0;
        v103 = 0;
        v104 = 1;
        do
        {
          v105 = v102 + 5;
          if (v105 <= v104)
          {
            break;
          }

          v106 = v105 >= v101 ? v101 : v105;
          v107 = v103;
          v108 = HIDWORD(v91[v103]);
          v109 = v104;
          v110 = &v91[v104] + 1;
          v103 = -1;
          v111 = v108;
          do
          {
            v113 = *v110;
            v110 += 2;
            v112 = v113;
            if (v113 < v111)
            {
              v111 = v112;
              v103 = v109;
            }

            ++v109;
          }

          while (v109 < v106);
          if (v103 >= v101)
          {
            break;
          }

          v114 = &v91[v103];
          v115 = *v114;
          *v114 = v91[v107];
          v114[1] = v108;
          v91[v107] = v115;
          v116 = *v114;
          v117 = v98[v116];
          v98[v116] = v98[v115];
          v98[v115] = v117;
          v102 = 4 * v103;
          v104 = (4 * v103) | 1;
          v101 = v273;
        }

        while (v104 < v273);
      }
    }

    v270 -= 8;
    if (v97 < *(v90 + 96) || v259 == 1 && !*(*(v90 + 16) + 12 * (v97 + 1) + 4))
    {
      goto LABEL_91;
    }

    v118 = *(v90 + 100);
    if (HIDWORD(v258) < v118)
    {
      LODWORD(v277) = *(v94 + 16) + *(*(v90 + 8) + 116) * (v118 - *(v94 + 28));
      *(v94 + 16) = v277;
      *(v94 + 28) = v118;
      if (v92 >= (v272 - v98) >> 2 || v98[v92] == -1)
      {
        sub_464068(&v269, v92, &v277);
      }

      else
      {
        sub_463F30(&v269, v92, &v277);
      }

      goto LABEL_91;
    }

    v119 = v258;
    v256 = v257[0];
    v247 = SWORD4(v258);
    v255 = WORD4(v258);
    (*(**v90 + 32))(&v277);
    v120 = v259;
    if (sub_4727F8(&v274, &v256))
    {
      __dst = &v256;
      v121 = sub_4754E4(&v274, &v256);
      v123 = v121[3];
      v122 = v121[4];
      if (v123 != v122)
      {
        v124 = v97 + 1;
        do
        {
          v125 = *v123;
          if (*v123 == v97)
          {
            v126 = *(v90 + 16);
            v127 = v126 + 12 * v97;
            v128 = *(v127 + 8) - 1;
            *(v127 + 8) = v128;
            if (!v128)
            {
              *(v127 + 4) = 0;
              if (*(v90 + 92) < v97)
              {
                *(v90 + 92) = v97;
                v129 = *(*(v90 + 8) + 96);
                v130 = v97 - v129;
                if (v97 >= v129)
                {
                  *(v90 + 96) = v130;
                }

                else
                {
                  v130 = *(v90 + 96);
                }

                if (v130 <= v97)
                {
                  v131 = v97;
                }

                else
                {
                  v131 = v130;
                }

                v132 = v130 - 1;
                v133 = (v126 + 12 * v130 + 20);
                v134 = v131 - v130;
                while (v134)
                {
                  v135 = *v133;
                  v133 += 3;
                  ++v132;
                  --v134;
                  if (v135)
                  {
                    goto LABEL_132;
                  }
                }

                v132 = v131;
LABEL_132:
                *(v90 + 100) = v132;
              }
            }
          }

          if (v125 > v97)
          {
            v136 = sub_474E90(v90, v256, v125);
            v137 = *(v90 + 8);
            v138 = *(v137 + 104) * *(v123 + 8);
            v139 = *v123;
            if (*v123 - LODWORD(v257[1]) == 1)
            {
              v140 = v138 + *(v137 + 112);
            }

            else
            {
              v140 = v138 + (*(v137 + 116) * (v139 - HIDWORD(v258)));
              v141 = llround(*(v137 + 120) * (*(*(v90 + 16) + 12 * v139) - *(*(v90 + 16) + 12 * LODWORD(v257[1]))));
              v142 = __OFSUB__(v141, DWORD1(v258));
              v143 = v141 - DWORD1(v258);
              if (!((v143 < 0) ^ v142 | (v143 == 0)))
              {
                v140 = v140 + v143 / 100.0;
              }
            }

            if (v139 == *(v90 + 88))
            {
              v144 = *(v123 + 16);
              v140 = v140 + v144 * sub_475C1C(v90, &v277, v257);
            }

            LODWORD(__dst) = v119 + v140;
            v145 = *(v90 + 40) + 36 * v136;
            if (__dst < *(v145 + 16))
            {
              if (v125 == v124)
              {
                --*(*(v90 + 16) + 12 * v124 + 4);
                v120 = 1;
              }

              *(v145 + 12) = v92;
              *(v145 + 16) = __dst;
              *(v145 + 20) = 0;
              *(v145 + 24) = 0;
              *(v145 + 28) = v125;
              *(v145 + 32) = 0;
              *(v145 + 33) = *(*a2 + 72 * v125 + 44);
              *(v145 + 34) = 0;
              if (v136 >= ((v272 - v271) >> 2) || *(v271 + v136) == -1)
              {
                sub_464068(&v269, v136, &__dst);
              }

              else
              {
                sub_463F30(&v269, v136, &__dst);
              }
            }
          }

          v123 += 24;
        }

        while (v123 != v122);
      }
    }

    v146 = v280;
    if (v280 >= 0x168u)
    {
      v146 = sub_464198(&v278, 0, *(v90 + 8));
      v280 = v146;
    }

    sub_475184(v90, v256, (v146 + 180) % 0x168u);
    v147 = v90;
    v148 = *(v90 + 136);
    v149 = *(v147 + 128);
    v150 = v148 - v149;
    if (v148 != v149)
    {
      while (*(v149 + 44) != 1)
      {
LABEL_151:
        v149 += 80;
        if (v149 == v148)
        {
          goto LABEL_169;
        }
      }

      v151 = sub_474E90(a1, *v149, v97);
      v152 = a1[5];
      v153 = sub_475C1C(a1, &v277, v257);
      v154 = (*(**a1 + 8))(*a1, v149);
      if (LODWORD(v257[0]) == v154 && WORD2(v257[0]) == WORD2(v154))
      {
        v155 = BYTE6(v257[0]) == BYTE6(v154);
        if (BYTE1(v259) == v155)
        {
LABEL_161:
          v157 = v152 + 36 * v151;
          LODWORD(__dst) = v153 + v119;
          if (v153 + v119 < *(v157 + 16))
          {
            if (v150 == 160)
            {
              v158 = &v255;
            }

            else
            {
              v158 = &v255;
              if (v247 < *(v149 + 72))
              {
                v158 = (v149 + 72);
              }
            }

            v159 = *v158;
            v160 = DWORD1(v258) + HIDWORD(v277);
            v161 = *(v149 + 74) | BYTE2(v259);
            *(v157 + 12) = v92;
            *(v157 + 16) = __dst;
            *(v157 + 20) = v160;
            *(v157 + 24) = v159;
            *(v157 + 28) = HIDWORD(v258);
            *(v157 + 32) = v120 & 1;
            *(v157 + 33) = 0;
            *(v157 + 34) = v161;
            if (v151 >= ((v272 - v271) >> 2) || *(v271 + v151) == -1)
            {
              sub_464068(&v269, v151, &__dst);
            }

            else
            {
              sub_463F30(&v269, v151, &__dst);
            }
          }

          goto LABEL_151;
        }
      }

      else
      {
        v155 = 0;
        if (!BYTE1(v259))
        {
          goto LABEL_161;
        }
      }

      v29 = v155 == 0;
      v156 = 132;
      if (!v29)
      {
        v156 = 128;
      }

      v153 += *(a1[1] + v156);
      goto LABEL_161;
    }

LABEL_169:
    if ((v282 & 0x80000000) == 0)
    {
      v162 = v278;
      v89 = a3;
      v90 = a1;
      if (!v278)
      {
        goto LABEL_91;
      }

LABEL_173:
      v279 = v162;
      operator delete(v162);
      goto LABEL_91;
    }

    operator delete(__p);
    v162 = v278;
    v89 = a3;
    v90 = a1;
    if (v278)
    {
      goto LABEL_173;
    }

LABEL_91:
    if (!v273)
    {
      goto LABEL_174;
    }
  }

  *(v89 + 16) = 0u;
  *(v89 + 32) = 0u;
  *v89 = 0u;
  v163 = *v91;
  v164 = *(v93 + 36 * *v91 + 8);
  v165 = sub_476010((v89 + 24), *a2 + 72 * v164);
  v166 = *(v90 + 40);
  v167 = *(v90 + 48);
  v168 = *(v166 + 36 * v163 + 12);
  *(v89 + 32) = v165;
  if (0x8E38E38E38E38E39 * ((v167 - v166) >> 2) > v168)
  {
    do
    {
      v170 = v166 + 36 * v168;
      v171 = *(v170 + 8);
      if (v171 == v164)
      {
        v172 = *(a3 + 8);
        v174 = *(v172 - 2);
        v173 = *(v172 - 1);
        if (v174 < v173)
        {
          goto LABEL_178;
        }
      }

      else
      {
        v175 = *a2 + 72 * v171;
        v176 = *(a3 + 32);
        if (v176 >= *(a3 + 40))
        {
          v181 = sub_476010((a3 + 24), *a2 + 72 * v171);
        }

        else
        {
          v177 = *v175;
          *(v176 + 8) = *(v175 + 8);
          *(v176 + 16) = 0;
          *v176 = v177;
          *(v176 + 24) = 0;
          *(v176 + 32) = 0;
          v179 = *(v175 + 16);
          v178 = *(v175 + 24);
          if (v178 != v179)
          {
            if (((v178 - v179) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v180 = *(v175 + 40);
          *(v176 + 56) = *(v175 + 56);
          *(v176 + 40) = v180;
          v181 = v176 + 72;
        }

        *(a3 + 32) = v181;
        v182 = *(a3 + 8);
        v183 = *(a3 + 16);
        if (v182 >= v183)
        {
          v184 = *a3;
          v185 = v182 - *a3;
          v186 = 0xAAAAAAAAAAAAAAABLL * (v185 >> 3) + 1;
          if (v186 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v187 = 0xAAAAAAAAAAAAAAABLL * ((v183 - v184) >> 3);
          if (2 * v187 > v186)
          {
            v186 = 2 * v187;
          }

          if (v187 >= 0x555555555555555)
          {
            v188 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v188 = v186;
          }

          if (v188)
          {
            if (v188 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_268:
            sub_1808();
          }

          v189 = (8 * (v185 >> 3));
          *v189 = 0;
          v189[1] = 0;
          v189[2] = 0;
          v172 = v189 + 3;
          v190 = v189 - v185;
          memcpy(v189 - v185, v184, v185);
          *a3 = v190;
          *(a3 + 8) = v172;
          *(a3 + 16) = 0;
          if (v184)
          {
            operator delete(v184);
          }
        }

        else
        {
          *v182 = 0;
          v182[1] = 0;
          v172 = v182 + 3;
          v182[2] = 0;
        }

        *(a3 + 8) = v172;
        v164 = v171;
        v174 = *(v172 - 2);
        v173 = *(v172 - 1);
        if (v174 < v173)
        {
LABEL_178:
          *v174 = *v170;
          v169 = v174 + 8;
          goto LABEL_179;
        }
      }

      v191 = *(v172 - 3);
      v192 = v174 - v191;
      v193 = (v174 - v191) >> 3;
      v194 = v193 + 1;
      if ((v193 + 1) >> 61)
      {
        sub_1794();
      }

      v195 = v173 - v191;
      if (v195 >> 2 > v194)
      {
        v194 = v195 >> 2;
      }

      if (v195 >= 0x7FFFFFFFFFFFFFF8)
      {
        v196 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v196 = v194;
      }

      if (v196)
      {
        if (!(v196 >> 61))
        {
          operator new();
        }

        goto LABEL_268;
      }

      v197 = v193;
      v198 = (8 * v193);
      v199 = &v198[-v197];
      *v198 = *v170;
      v169 = v198 + 1;
      memcpy(v199, v191, v192);
      *(v172 - 3) = v199;
      *(v172 - 2) = v169;
      *(v172 - 1) = 0;
      if (v191)
      {
        operator delete(v191);
      }

LABEL_179:
      *(v172 - 2) = v169;
      v166 = a1[5];
      v168 = *(v166 + 36 * v168 + 12);
    }

    while (0x8E38E38E38E38E39 * ((a1[6] - v166) >> 2) > v168);
  }

  if (sub_12119FC())
  {
    sub_19594F8(&v277);
    sub_4A5C(&v277, "PathletGlobalDecoder skipped ", 29);
    v200 = std::ostream::operator<<();
    sub_4A5C(v200, " support points.", 16);
    operator new();
  }

  v205 = *a3;
  v206 = *(a3 + 8);
  if (*a3 != v206)
  {
    v207 = v206 - 3;
    if (v206 - 3 > v205)
    {
      v208 = v206 - 6;
      v209 = v205 + 3;
      if (v206 - 6 > v205 + 3)
      {
        v209 = v206 - 6;
      }

      v210 = v209 - 3;
      if (v210 == v205)
      {
        v211 = *a3;
      }

      else
      {
        v211 = (v205 + 1);
      }

      v212 = v210 - v211;
      if (v210 == v205)
      {
        v213 = v212 / 0x30;
      }

      else
      {
        v213 = v212 / 0x30 + 1;
      }

      if (v213 >= 9)
      {
        if (v205 >= v206 || (v214 = *(a3 + 8), v215 = *a3, &v206[-3 * v213 - 3] >= &v205[3 * v213 + 3]))
        {
          v216 = v213 + 1;
          v207 -= 3 * (v216 & 0x1FFFFFFFFFFFFFFELL);
          v214 = &v206[-3 * (v216 & 0x1FFFFFFFFFFFFFFELL)];
          v215 = &v205[3 * (v216 & 0x1FFFFFFFFFFFFFFELL)];
          v217 = *a3;
          v218 = v216 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            v283 = vld3q_f64(v217);
            v284 = vld3q_f64(v208);
            v285.val[0] = vextq_s8(v284.val[0], v284.val[0], 8uLL);
            v285.val[1] = vextq_s8(v284.val[1], v284.val[1], 8uLL);
            v285.val[2] = vextq_s8(v284.val[2], v284.val[2], 8uLL);
            vst3q_f64(v217, v285);
            v217 += 6;
            v284.val[0] = vextq_s8(v283.val[0], v283.val[0], 8uLL);
            v284.val[1] = vextq_s8(v283.val[1], v283.val[1], 8uLL);
            v284.val[2] = vextq_s8(v283.val[2], v283.val[2], 8uLL);
            vst3q_f64(v208, v284);
            v208 -= 6;
            v218 -= 2;
          }

          while (v218);
          if (v216 == (v216 & 0x1FFFFFFFFFFFFFFELL))
          {
            goto LABEL_245;
          }
        }
      }

      else
      {
        v214 = *(a3 + 8);
        v215 = *a3;
      }

      do
      {
        v219 = v207;
        v220 = *v215;
        *v215 = *v207;
        *v207 = v220;
        v207 -= 3;
        v221 = *(v215 + 1);
        v215[1] = *(v214 - 2);
        *(v214 - 2) = v221;
        v222 = *(v215 + 2);
        v215[2] = *(v214 - 1);
        *(v214 - 1) = v222;
        v215 += 3;
        v214 = v219;
      }

      while (v215 < v207);
    }
  }

LABEL_245:
  v224 = *(a3 + 24);
  v223 = *(a3 + 32);
  if (v224 != v223)
  {
    v225 = v223 - 72;
    if (v223 - 72 > v224)
    {
      do
      {
        v277 = *v224;
        LODWORD(v278) = *(v224 + 8);
        v226 = *(v224 + 16);
        *(v224 + 16) = 0;
        *(v224 + 24) = 0;
        v228 = *(v224 + 32);
        v227 = *(v224 + 40);
        *(v224 + 32) = 0;
        v229 = *(v224 + 48);
        v230 = *(v224 + 56);
        v231 = *(v225 + 8);
        *v224 = *v225;
        *(v224 + 8) = v231;
        v232 = *(v225 + 32);
        *(v224 + 16) = *(v225 + 16);
        *(v224 + 32) = v232;
        *(v225 + 24) = 0;
        *(v225 + 32) = 0;
        *(v225 + 16) = 0;
        LODWORD(v232) = *(v225 + 40);
        *(v224 + 44) = *(v225 + 44);
        *(v224 + 40) = v232;
        *(v224 + 48) = *(v225 + 48);
        *(v224 + 56) = *(v225 + 56);
        *(v224 + 64) = *(v225 + 64);
        *v225 = v277;
        *(v225 + 8) = v278;
        v233 = *(v225 + 16);
        if (v233)
        {
          *(v225 + 24) = v233;
          v251 = v230;
          v253 = v226;
          operator delete(v233);
          v230 = v251;
          v226 = v253;
        }

        *(v225 + 16) = v226;
        *(v225 + 32) = v228;
        *(v225 + 40) = v227;
        *(v225 + 44) = WORD2(v227);
        *(v225 + 48) = v229;
        *(v225 + 56) = v230;
        v224 += 72;
        v225 -= 72;
      }

      while (v224 < v225);
      v205 = *a3;
      v206 = *(a3 + 8);
    }
  }

  while (v205 != v206)
  {
    v234 = *v205;
    v235 = *(v205 + 1);
    v236 = (v235 - 8);
    if (*v205 != v235 && v236 > v234)
    {
      v238 = v234 + 8;
      do
      {
        v239 = *(v238 - 8);
        v240 = *v236;
        *(v238 - 5) = *(v236 + 3);
        *(v238 - 8) = v240;
        *v236 = v239;
        *(v236 + 6) = BYTE6(v239);
        *(v236 + 2) = WORD2(v239);
        v236 -= 2;
        v241 = v238 >= v236;
        v238 += 8;
      }

      while (!v241);
    }

    v205 += 3;
  }

LABEL_216:
  if (v271)
  {
    v272 = v271;
    operator delete(v271);
  }

  if (v269)
  {
    v270 = v269;
    operator delete(v269);
  }

  v201 = v275;
  if (v275)
  {
    do
    {
      v203 = *v201;
      v204 = v201[3];
      if (v204)
      {
        v201[4] = v204;
        operator delete(v204);
      }

      operator delete(v201);
      v201 = v203;
    }

    while (v203);
  }

  v202 = v274;
  *&v274 = 0;
  if (v202)
  {
    operator delete(v202);
  }
}

void sub_462CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  sub_1959728(&a61);
  sub_462EDC(a21);
  sub_21DB4B4(&a48);
  sub_39AFC(&a55);
  _Unwind_Resume(a1);
}

void sub_462E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_21DB4B4(&a42);
  sub_39AFC(&a49);
  _Unwind_Resume(a1);
}

void sub_462E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_21DB4B4(&a42);
  sub_39AFC(&a49);
  _Unwind_Resume(a1);
}

void sub_462E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_45B1B8(&a55);
  sub_21DB4B4(&a42);
  sub_39AFC(&a49);
  _Unwind_Resume(a1);
}

void **sub_462EDC(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 7);
        if (v5)
        {
          *(v3 - 6) = v5;
          operator delete(v5);
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 != v6)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 3);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 2) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

char *sub_462F9C(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = *(a1 + 8);
  if (a4 <= (v12 - result) >> 4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      *(result + 1) = *(v4 + 8);
      v4 += 16;
      result += 16;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        *(result + 1) = *(v4 + 8);
        v4 += 16;
        result += 16;
      }

      while (v4 != v13);
    }

    if (v13 == a3)
    {
      *(a1 + 8) = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13++;
        *v12 = v15;
        v12 += 16;
        v14 += 16;
      }

      while (v13 != a3);
      *(a1 + 8) = v14;
    }
  }

  return result;
}

void sub_46315C(uint64_t *a1, _DWORD *a2, double a3)
{
  LODWORD(a3) = *(a1 + 1);
  v5 = 3.14159265 - *&a3 * 6.28318531 / 4294967300.0;
  v6 = exp(v5);
  v7 = exp(-v5);
  *&v8 = atan((v6 - v7) * 0.5) * 57.2957795;
  v9 = *a1;
  HIDWORD(v9) = *a2;
  v22 = v9;
  v10 = *&v8 * 0.0174532925;
  LODWORD(v8) = a2[1];
  v11 = 3.14159265 - v8 * 6.28318531 / 4294967300.0;
  v12 = exp(v11);
  v13 = exp(-v11);
  v14 = atan((v12 - v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15.i64[0] = v22;
  v15.i64[1] = HIDWORD(v22);
  v16 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v15), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v23 = vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0];
  v17 = sin((v10 - v14) * 0.5);
  v18 = v17 * v17;
  v19 = cos(v10);
  v20 = v19 * cos(v14);
  v21 = sin(0.5 * v23);
  atan2(sqrt(v21 * v21 * v20 + v18), sqrt(1.0 - (v21 * v21 * v20 + v18)));
}

void *sub_463370(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[16];
  a1[16] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    do
    {
      v11 = *v5;
      v12 = v5[3];
      if (v12)
      {
        v5[4] = v12;
        operator delete(v12);
      }

      operator delete(v5);
      v5 = v11;
    }

    while (v11);
  }

  v6 = a1[11];
  a1[11] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    a1[9] = v7;
    operator delete(v7);
  }

  v8 = a1[5];
  if (v8)
  {
    a1[6] = v8;
    operator delete(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    a1[3] = v9;
    operator delete(v9);
  }

  return a1;
}

void *sub_463434(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    v3 = a1[17];
    v4 = a1[16];
    if (v3 == v2)
    {
LABEL_11:
      a1[17] = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 32));
      v5 = *(v3 - 64);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_4:
      v3 -= 80;
      if (v3 == v2)
      {
        v4 = a1[16];
        goto LABEL_11;
      }
    }

    v5 = *(v3 - 64);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    *(v3 - 56) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

LABEL_12:
  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    v8 = a1[9];
    v9 = a1[8];
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 3);
        if (v10)
        {
          do
          {
            v11 = *v10;
            operator delete(v10);
            v10 = v11;
          }

          while (v11);
        }

        v13 = *(v8 - 5);
        v8 -= 5;
        v12 = v13;
        *v8 = 0;
        if (v13)
        {
          operator delete(v12);
        }
      }

      while (v8 != v7);
      v9 = a1[8];
    }

    a1[9] = v7;
    operator delete(v9);
  }

  v14 = a1[5];
  if (v14)
  {
    a1[6] = v14;
    operator delete(v14);
  }

  v15 = a1[2];
  if (v15)
  {
    a1[3] = v15;
    operator delete(v15);
  }

  return a1;
}

uint64_t *sub_463550(uint64_t *a1, uint64_t a2, double a3)
{
  v5 = *a1;
  v6 = a1 + *(*a1 - 24);
  v7 = *(v6 + 2);
  *(v6 + 2) = 6;
  *(a1 + *(v5 - 24) + 8) = *(a1 + *(v5 - 24) + 8) & 0xFFFFFEFB | 4;
  LODWORD(a3) = *(a2 + 4);
  v8 = *&a3 * -6.28318531 / 4294967300.0 + 3.14159265;
  v9 = exp(v8);
  v10 = exp(-v8);
  atan((v9 - v10) * 0.5);
  v11 = std::ostream::operator<<();
  sub_4A5C(v11, ",", 1);
  std::ostream::operator<<();
  if (*(a2 + 8) != 0x7FFFFFFF)
  {
    sub_4A5C(a1, ",", 1);
    std::ostream::operator<<();
  }

  *(a1 + *(*a1 - 24) + 8) = v7;
  return a1;
}

double sub_4636F0(size_t *a1, size_t *a2)
{
  sub_4639F8(a1, v13);
  sub_4639F8(a2, __p);
  v3 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = v13[1];
  }

  v5 = v12;
  v6 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  v7 = 1.0;
  if (v4 != v5)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    operator delete(__p[0]);
    if ((v14 & 0x80) == 0)
    {
      return v7;
    }

    goto LABEL_21;
  }

  if ((v14 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v13[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (!memcmp(v9, v10, v4))
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  if (v6 < 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v3 & 0x80) == 0)
  {
    return v7;
  }

LABEL_21:
  operator delete(v13[0]);
  return v7;
}

void sub_4637DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4637F8(_DWORD *a1, _DWORD *a2, double a3)
{
  LODWORD(a3) = a2[1];
  v5 = 3.14159265 - *&a3 * 6.28318531 / 4294967300.0;
  v6 = exp(v5);
  v7 = exp(-v5);
  *&v8 = atan((v6 - v7) * 0.5);
  v9 = *&v8 * 57.2957795;
  LODWORD(v8) = a1[1];
  v10 = 3.14159265 - v8 * 6.28318531 / 4294967300.0;
  v11 = exp(v10);
  v12 = exp(-v10);
  v13 = atan((v11 - v12) * 0.5) * 57.2957795;
  v14 = cos((v9 + v13) * 0.5 * 3.14159265 / 180.0);
  LODWORD(v15) = *a2;
  LODWORD(v16) = *a1;
  v17 = atan2((v15 * 360.0 / 4294967300.0 + -180.0 - (v16 * 360.0 / 4294967300.0 + -180.0)) * v14, v9 - v13);
  if (v17 < 0.0)
  {
    v17 = v17 + 6.28318531;
  }

    ;
  }

    ;
  }

    ;
  }

  v19 = llround(i);
  return v19 - 360 * (((11651 * v19) >> 22) + ((11651 * v19) >> 31));
}

size_t *sub_4639F8@<X0>(size_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 23);
  if (v3 >= 0)
  {
    v4 = result;
  }

  else
  {
    v4 = *result;
  }

  if (v3 >= 0)
  {
    v5 = *(result + 23);
  }

  else
  {
    v5 = result[1];
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v6 = result;
  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    result = memmove(a2, v4, v5);
  }

  a2[v5] = 0;
  v7 = *(v6 + 1);
  if (v6[23] >= 0)
  {
    v8 = v6[23];
  }

  else
  {
    v6 = *v6;
    v8 = v7;
  }

  if (v8)
  {
    if (a2[23] >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    do
    {
      result = __tolower(*v6);
      *v9++ = result;
      ++v6;
      --v8;
    }

    while (v8);
  }

  return result;
}