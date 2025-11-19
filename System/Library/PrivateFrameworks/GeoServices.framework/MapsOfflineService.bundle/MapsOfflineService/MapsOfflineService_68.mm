void sub_463AFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_463B18(uint64_t a1, int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), (a2 + 1));
  if (*(a1 + 16) - *a1 <= 0x3F7uLL)
  {
    operator new();
  }

  return a1;
}

void sub_463BCC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E2018(v1);
  _Unwind_Resume(a1);
}

double sub_463BF0(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  v3 = a1[3];
  v4 = *(v3 + 4 * a2);
  v5 = *a1;
  v6 = *a1 + 8 * v4;
  v7 = *(v6 + 4);
  v8 = *a3;
  *(v6 + 4) = *a3;
  if (v8 >= v7)
  {
    v16 = (4 * v4) | 1;
    v17 = *(a1 + 12);
    if (v16 < v17)
    {
      v18 = 4 * v4;
      do
      {
        v19 = v18 + 5;
        if (v19 <= v16)
        {
          break;
        }

        v20 = v19 >= v17 ? v17 : v19;
        v21 = v4;
        v22 = *(v5 + 8 * v4 + 4);
        v23 = v16;
        v24 = (v5 + 4 + 8 * v16);
        LODWORD(v4) = -1;
        v25 = v22;
        do
        {
          v27 = *v24;
          v24 += 2;
          v26 = v27;
          if (v27 < v25)
          {
            v25 = v26;
            LODWORD(v4) = v23;
          }

          ++v23;
        }

        while (v23 < v20);
        if (v4 >= v17)
        {
          break;
        }

        v28 = (v5 + 8 * v4);
        result = *v28;
        *v28 = *(v5 + 8 * v21);
        *(v28 + 1) = v22;
        *(v5 + 8 * v21) = result;
        v30 = *v28;
        v31 = *(v3 + 4 * v30);
        *(v3 + 4 * v30) = *(v3 + 4 * LODWORD(result));
        *(v3 + 4 * LODWORD(result)) = v31;
        v18 = 4 * v4;
        v16 = (4 * v4) | 1;
        v17 = *(a1 + 12);
      }

      while (v16 < v17);
    }
  }

  else if (v4)
  {
    do
    {
      v9 = v4 - 1;
      v10 = (v5 + 8 * ((v4 - 1) >> 2));
      v11 = (v5 + 8 * v4);
      v12 = v10[1];
      v13 = v11[1];
      if (v12 < v13)
      {
        break;
      }

      v14 = *v11;
      *v11 = *v10;
      v11[1] = v12;
      *v10 = v14;
      v10[1] = v13;
      v4 = *v11;
      v15 = *(v3 + 4 * v4);
      *(v3 + 4 * v4) = *(v3 + 4 * v14);
      *(v3 + 4 * v14) = v15;
      LODWORD(v4) = v9 >> 2;
    }

    while (v9 >= 4);
  }

  return result;
}

void sub_463D28(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v5 = a2;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = a1 + 24;
  v9 = v7 - v6;
  v10 = (v7 - v6) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v22 = v9 >> 1;
      v23 = (v9 >> 1) | 1;
      if (v10 <= v22)
      {
        sub_569AC(v8, v23 - v10, &dword_2297CE8);
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
      }

      else if (v23 < v10)
      {
        v7 = v6 + 4 * v23;
        *(a1 + 32) = v7;
      }

      v9 = v7 - v6;
      v10 = (v7 - v6) >> 2;
    }

    while (v10 <= v5);
  }

  v24 = v5 | (*a3 << 32);
  sub_2512DC(a1, &v24);
  v11 = *(a1 + 48);
  v12 = *(a1 + 24);
  *(v12 + 4 * v5) = v11;
  *(a1 + 48) = v11 + 1;
  if (v11)
  {
    v13 = *a1;
    do
    {
      v14 = v11 - 1;
      v15 = (v13 + 8 * ((v11 - 1) >> 2));
      v16 = (v13 + 8 * v11);
      v17 = v15[1];
      v18 = v16[1];
      if (v17 < v18)
      {
        break;
      }

      v19 = *v16;
      *v16 = *v15;
      v16[1] = v17;
      *v15 = v19;
      v15[1] = v18;
      v20 = *v16;
      v21 = *(v12 + 4 * v20);
      *(v12 + 4 * v20) = *(v12 + 4 * v19);
      *(v12 + 4 * v19) = v21;
      v11 = v14 >> 2;
    }

    while (v14 > 3);
  }
}

uint64_t sub_463E58(uint64_t a1, int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), (a2 + 1));
  if (*(a1 + 16) - *a1 <= 0x3F7uLL)
  {
    operator new();
  }

  return a1;
}

void sub_463F0C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E2018(v1);
  _Unwind_Resume(a1);
}

double sub_463F30(uint64_t *a1, unsigned int a2, int *a3)
{
  v3 = a1[3];
  v4 = *(v3 + 4 * a2);
  v5 = *a1;
  v6 = *a1 + 8 * v4;
  v7 = *(v6 + 4);
  v8 = *a3;
  *(v6 + 4) = *a3;
  if (v8 >= v7)
  {
    v16 = (4 * v4) | 1;
    v17 = *(a1 + 12);
    if (v16 < v17)
    {
      v18 = 4 * v4;
      do
      {
        v19 = v18 + 5;
        if (v19 <= v16)
        {
          break;
        }

        v20 = v19 >= v17 ? v17 : v19;
        v21 = v4;
        v22 = *(v5 + 8 * v4 + 4);
        v23 = v16;
        v24 = (v5 + 4 + 8 * v16);
        LODWORD(v4) = -1;
        v25 = v22;
        do
        {
          v27 = *v24;
          v24 += 2;
          v26 = v27;
          if (v27 < v25)
          {
            v25 = v26;
            LODWORD(v4) = v23;
          }

          ++v23;
        }

        while (v23 < v20);
        if (v4 >= v17)
        {
          break;
        }

        v28 = (v5 + 8 * v4);
        result = *v28;
        *v28 = *(v5 + 8 * v21);
        *(v28 + 1) = v22;
        *(v5 + 8 * v21) = result;
        v30 = *v28;
        v31 = *(v3 + 4 * v30);
        *(v3 + 4 * v30) = *(v3 + 4 * LODWORD(result));
        *(v3 + 4 * LODWORD(result)) = v31;
        v18 = 4 * v4;
        v16 = (4 * v4) | 1;
        v17 = *(a1 + 12);
      }

      while (v16 < v17);
    }
  }

  else if (v4)
  {
    do
    {
      v9 = v4 - 1;
      v10 = (v5 + 8 * ((v4 - 1) >> 2));
      v11 = (v5 + 8 * v4);
      v12 = v10[1];
      v13 = v11[1];
      if (v12 < v13)
      {
        break;
      }

      v14 = *v11;
      *v11 = *v10;
      v11[1] = v12;
      *v10 = v14;
      v10[1] = v13;
      v4 = *v11;
      v15 = *(v3 + 4 * v4);
      *(v3 + 4 * v4) = *(v3 + 4 * v14);
      *(v3 + 4 * v14) = v15;
      LODWORD(v4) = v9 >> 2;
    }

    while (v9 >= 4);
  }

  return result;
}

void sub_464068(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v5 = a2;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = a1 + 24;
  v9 = v7 - v6;
  v10 = (v7 - v6) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v22 = v9 >> 1;
      v23 = (v9 >> 1) | 1;
      if (v10 <= v22)
      {
        sub_569AC(v8, v23 - v10, &dword_2297CEC);
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
      }

      else if (v23 < v10)
      {
        v7 = v6 + 4 * v23;
        *(a1 + 32) = v7;
      }

      v9 = v7 - v6;
      v10 = (v7 - v6) >> 2;
    }

    while (v10 <= v5);
  }

  v24 = v5 | (*a3 << 32);
  sub_2512DC(a1, &v24);
  v11 = *(a1 + 48);
  v12 = *(a1 + 24);
  *(v12 + 4 * v5) = v11;
  *(a1 + 48) = v11 + 1;
  if (v11)
  {
    v13 = *a1;
    do
    {
      v14 = v11 - 1;
      v15 = (v13 + 8 * ((v11 - 1) >> 2));
      v16 = (v13 + 8 * v11);
      v17 = v15[1];
      v18 = v16[1];
      if (v17 < v18)
      {
        break;
      }

      v19 = *v16;
      *v16 = *v15;
      v16[1] = v17;
      *v15 = v19;
      v15[1] = v18;
      v20 = *v16;
      v21 = *(v12 + 4 * v20);
      *(v12 + 4 * v20) = *(v12 + 4 * v19);
      *(v12 + 4 * v19) = v21;
      v11 = v14 >> 2;
    }

    while (v14 > 3);
  }
}

uint64_t sub_464198(uint64_t *a1, int a2, uint64_t a3)
{
  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  if (v8 < 2)
  {
    return 0;
  }

  v91 = v6;
  v92 = v5;
  v93 = v3;
  v94 = v4;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8 - 1;
  }

  if (a2)
  {
    v13 = 1;
  }

  else
  {
    v13 = v8 - 2;
  }

  v14 = (v7 + 12 * v12);
  v15.i64[0] = *v14;
  v15.i64[1] = HIDWORD(*v14);
  v16 = vcvtq_f64_u64(v15);
  v17 = v14[2];
  v18 = *(a3 + 88) / 100.0;
  if (a2)
  {
    v19 = 1;
  }

  else
  {
    v19 = -1;
  }

  if (v17 == 0x7FFFFFFF)
  {
    v20 = -v13;
    v21 = 1 - v8;
    v22 = (v7 + 12 * v13);
    v23 = vdupq_n_s64(0x4059000000000000uLL);
    do
    {
      v24 = v20 - v19;
      v25 = v22 + 12 * v19;
      if (v21 == v20)
      {
        break;
      }

      if (!v20)
      {
        break;
      }

      v26.i64[0] = *v22;
      v26.i64[1] = HIDWORD(*v22);
      v27 = vdivq_f64(vsubq_f64(v16, vcvtq_f64_u64(v26)), v23);
      v22 = (v22 + 12 * v19);
      v20 -= v19;
    }

    while (sqrt(vaddvq_f64(vmulq_f64(v27, v27))) < v18);
    v28 = v19 + v24;
  }

  else
  {
    v29 = -v13;
    v30 = 1 - v8;
    v25 = (v7 + 12 * v13);
    v31 = vdupq_n_s64(0x4059000000000000uLL);
    do
    {
      v32.i64[0] = *v25;
      v32.i64[1] = HIDWORD(*v25);
      v33 = vdivq_f64(vsubq_f64(v16, vcvtq_f64_u64(v32)), v31);
      v34 = *(v25 + 2);
      v35 = vaddvq_f64(vmulq_f64(v33, v33));
      v36 = v17 - v34;
      if (v17 - v34 < 0)
      {
        v36 = v34 - v17;
      }

      if (v34 != 0x7FFFFFFF)
      {
        v35 = v35 + v36 / 100.0 * (v36 / 100.0);
      }

      v37 = v29 - v19;
      v25 += 12 * v19;
      if (v30 == v29)
      {
        break;
      }

      if (!v29)
      {
        break;
      }

      v29 -= v19;
    }

    while (sqrt(v35) < v18);
    v28 = v19 + v37;
  }

  v38 = -v28;
  v39 = sub_4637F8(v14, &v25[-12 * v19], v16.f64[0]);
  v40 = NAN;
  v89 = -1;
  v90 = 0x7FFFFFFF;
  if (v38)
  {
    v41 = v39;
    v40 = *(a3 + 92);
    v42 = v40 / 100.0;
    v43 = 12 * (v19 + v38);
    v44 = v38;
    v45 = v38;
    v46 = v39;
    while (1)
    {
      v47 = *a1;
      if (v38 == -1 - 0x5555555555555555 * ((a1[1] - *a1) >> 2))
      {
        return sub_4637F8((*a1 + 12 * v12), (*a1 + 12 * v38), v40);
      }

      v48 = v47 + 12 * v12;
      v49 = v47 + v43;
      v50 = (v47 + 12 * v44);
      v51.i64[0] = *v48;
      v51.i64[1] = HIDWORD(*v48);
      v52 = vcvtq_f64_u64(v51);
      v53 = *(v47 + v43);
      v51.i64[0] = v53;
      v51.i64[1] = HIDWORD(v53);
      v54 = vsubq_f64(vcvtq_f64_u64(v51), v52);
      v55 = vmulq_f64(v54, v54);
      v56 = vaddvq_f64(v55);
      v57 = fabs(v56);
      if (v56 == 0.0 || v57 < 2.22044605e-16)
      {
        break;
      }

      v61.i64[0] = *v50;
      v61.i64[1] = HIDWORD(*v50);
      v62 = vmulq_f64(v54, vsubq_f64(vcvtq_f64_u64(v61), v52));
      v63 = vdivq_f64(vaddq_f64(v62, vdupq_laneq_s64(v62, 1)), vaddq_f64(v55, vdupq_laneq_s64(v55, 1)));
      if (v63.f64[0] <= 0.0)
      {
        v59 = *v48;
        v60 = *(v48 + 8);
        goto LABEL_42;
      }

      if (v63.f64[0] >= 1.0)
      {
        break;
      }

      v64 = llround(vaddq_f64(vmulq_f64(v54, v63), v52).f64[0]);
      *&v52.f64[0] = *&vaddq_f64(vmulq_laneq_f64(v63, v54, 1), vdupq_laneq_s64(v52, 1));
      LODWORD(v89) = v64;
      HIDWORD(v89) = llround(v52.f64[0]);
      v65 = *(v48 + 8);
      if (v65 != 0x7FFFFFFF)
      {
        v66 = *(v47 + v43 + 8);
        if (v66 != 0x7FFFFFFF)
        {
          v52.f64[0] = v63.f64[0] * (v66 - v65) + v65;
          v90 = v52.f64[0];
        }
      }

LABEL_43:
      sub_46315C(v50, &v89, v52.f64[0]);
      if (v40 >= v42)
      {
        return sub_4637F8((*a1 + 12 * v12), (*a1 + 12 * v38), v40);
      }

      v67 = *a1;
      v68 = *a1 + 12 * v12;
      v69 = *a1 + v43;
      v70 = (*a1 + 12 * v45);
      v71.i64[0] = *v68;
      v71.i64[1] = HIDWORD(*v68);
      v72 = vcvtq_f64_u64(v71);
      v71.i64[0] = *v69;
      v71.i64[1] = HIDWORD(*v69);
      v73 = vsubq_f64(vcvtq_f64_u64(v71), v72);
      v74 = vmulq_f64(v73, v73);
      v75 = vaddvq_f64(v74);
      v76 = fabs(v75);
      if (v75 != 0.0 && v76 >= 2.22044605e-16)
      {
        v80.i64[0] = *v70;
        v80.i64[1] = HIDWORD(*v70);
        v81 = vmulq_f64(v73, vsubq_f64(vcvtq_f64_u64(v80), v72));
        v82 = vdivq_f64(vaddq_f64(v81, vdupq_laneq_s64(v81, 1)), vaddq_f64(v74, vdupq_laneq_s64(v74, 1)));
        if (v82.f64[0] <= 0.0)
        {
          v78 = *v68;
          v79 = *(v68 + 8);
          goto LABEL_56;
        }

        if (v82.f64[0] < 1.0)
        {
          v83 = llround(vaddq_f64(vmulq_f64(v73, v82), v72).f64[0]);
          *&v72.f64[0] = *&vaddq_f64(vmulq_laneq_f64(v82, v73, 1), vdupq_laneq_s64(v72, 1));
          LODWORD(v89) = v83;
          HIDWORD(v89) = llround(v72.f64[0]);
          v84 = *(v68 + 8);
          if (v84 != 0x7FFFFFFF)
          {
            v85 = *(v67 + v43 + 8);
            if (v85 != 0x7FFFFFFF)
            {
              v72.f64[0] = v82.f64[0] * (v85 - v84) + v84;
              v90 = v72.f64[0];
            }
          }

          goto LABEL_57;
        }
      }

      v78 = *v69;
      v79 = *(v69 + 8);
LABEL_56:
      v90 = v79;
      v89 = v78;
LABEL_57:
      sub_46315C(v70, &v89, v72.f64[0]);
      if (v40 < v42)
      {
        v38 += v19;
        v86 = sub_4637F8((*a1 + 12 * v12), (*a1 + v43), v40);
        v87 = v41;
        if (v86 < v41)
        {
          v41 = v86;
        }

        if (v86 < v87)
        {
          v44 = v38;
        }

        v88 = v46;
        if (v86 > v46)
        {
          v46 = v86;
        }

        if (v86 > v88)
        {
          v45 = v38;
        }

        v43 += 12 * v19;
        if (v38)
        {
          continue;
        }
      }

      return sub_4637F8((*a1 + 12 * v12), (*a1 + 12 * v38), v40);
    }

    v59 = *v49;
    v60 = *(v49 + 8);
LABEL_42:
    v90 = v60;
    v89 = v59;
    goto LABEL_43;
  }

  return sub_4637F8((*a1 + 12 * v12), (*a1 + 12 * v38), v40);
}

void sub_464684(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = 0;
  v11 = (a6 + 16);
  *(a6 + 8) = 0x7FFFFFFF;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0x7FFFFFFF;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  v12 = &off_2734B00;
  if (*(a1 + 32))
  {
    v12 = *(a1 + 32);
  }

  v13 = *(v12 + 7) / 10000000.0;
  v14 = -1;
  if (v13 <= 180.0)
  {
    v15 = *(v12 + 6) / 10000000.0;
    if (fabs(v15) <= 85.0511288 && v13 >= -180.0)
    {
      v16 = sin(fmin(fmax(v15, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v17) = ((log((v16 + 1.0) / (1.0 - v16)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v17 >= 0xFFFFFFFE)
      {
        v17 = 4294967294;
      }

      else
      {
        v17 = v17;
      }

      v14 = ((v13 + 180.0) / 360.0 * 4294967300.0) | (v17 << 32);
    }
  }

  *a6 = v14;
  *(a6 + 8) = 0x7FFFFFFF;
  v18 = *(a1 + 16);
  if ((v18 & 0x10) != 0)
  {
    *(a6 + 8) = *(a1 + 56);
  }

  if ((v18 & 0x100) != 0)
  {
    v19 = *(a1 + 72);
    if (v19 >= 0x7FFFFFFF)
    {
      v19 = 0x7FFFFFFF;
    }

    *(a6 + 40) = v19;
  }

  *(a6 + 44) = *(a1 + 76);
  v20 = *(a1 + 80);
  if (v20 >= 4)
  {
    LOBYTE(v20) = 0;
  }

  *(a6 + 45) = v20 & (v18 << 21 >> 31);
  if ((v18 & 4) != 0)
  {
    sub_1210FF8(v105, *(a1 + 40));
    *(a6 + 48) = v105[0];
    *(a6 + 56) = *&v105[8];
    v18 = *(a1 + 16);
  }

  if ((v18 & 8) == 0 || !a2)
  {
    if ((v18 & 8) != 0)
    {
      goto LABEL_23;
    }

LABEL_32:
    v97 = 0;
    goto LABEL_34;
  }

  if (*(a5 + 264))
  {
    goto LABEL_32;
  }

LABEL_23:
  v100 = (**a4)(a4, *(a1 + 48));
  LOBYTE(v101) = v21;
  if (v21)
  {
    (*(*a4 + 32))(v105, a4, &v100, 0);
    v22 = v106;
    if (v108 < 0)
    {
      operator delete(__p);
    }

    if (*&v105[8])
    {
      *&v105[16] = *&v105[8];
      operator delete(*&v105[8]);
    }

    if (v22)
    {
      sub_465E04(a6, &v100, a4, a3, v105);
      v23 = *(a6 + 24);
      v24 = *(a6 + 32);
      if (v23 >= v24)
      {
        v77 = *v11;
        v78 = v23 - *v11;
        v79 = v78 >> 5;
        v80 = (v78 >> 5) + 1;
        if (v80 >> 59)
        {
          sub_1794();
        }

        v81 = v24 - v77;
        if (v81 >> 4 > v80)
        {
          v80 = v81 >> 4;
        }

        if (v81 >= 0x7FFFFFFFFFFFFFE0)
        {
          v82 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v82 = v80;
        }

        if (v82)
        {
          if (!(v82 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v94 = (32 * v79);
        v95 = *&v105[16];
        *v94 = *v105;
        v94[1] = v95;
        v96 = 32 * v79 + 32;
        memcpy(0, v77, v78);
        *(a6 + 16) = 0;
        *(a6 + 24) = v96;
        *(a6 + 32) = 0;
        if (v77)
        {
          operator delete(v77);
        }

        *(a6 + 24) = v96;
      }

      else
      {
        v25 = *&v105[16];
        *v23 = *v105;
        *(v23 + 1) = v25;
        *(a6 + 24) = v23 + 32;
      }
    }

    else
    {
      if (sub_12119FC())
      {
        sub_19594F8(v105);
        sub_4A5C(v105, "Road ID ", 8);
        v36 = std::ostream::operator<<();
        sub_4A5C(v36, " is no longer navigable.", 24);
        operator new();
      }

      *(a6 + 24) = *(a6 + 16);
    }

    return;
  }

  v97 = 1;
LABEL_34:
  v99 = v11;
  if (sub_12119FC())
  {
    sub_19594F8(v105);
    sub_4A5C(v105, "Road ID ", 8);
    v26 = std::ostream::operator<<();
    sub_4A5C(v26, " not found or origin segment, fallback to map-matching.", 55);
    operator new();
  }

  v103 = 0;
  v104 = 0uLL;
  (*(*a4 + 24))(a4, a6, *(a5 + 8), &v103);
  if (sub_12119FC())
  {
    sub_19594F8(v105);
    sub_4A5C(v105, "Found ", 6);
    v27 = std::ostream::operator<<();
    sub_4A5C(v27, " nearest candidates", 19);
    operator new();
  }

  v29 = v103;
  v28 = v104;
  if (v103 == v104)
  {
    *(a6 + 24) = *(a6 + 16);
    goto LABEL_127;
  }

  if (!v97)
  {
    goto LABEL_54;
  }

  do
  {
    v30 = (*(*a4 + 16))(a4, v29);
    if ((v31 & 1) != 0 && v30 == *(a1 + 48))
    {
      v28 = v104;
      if (v29 == v104)
      {
        goto LABEL_51;
      }

LABEL_45:
      sub_465E04(a6, v29, a4, a3, v105);
      v32 = *(a6 + 24);
      v33 = *(a6 + 32);
      if (v32 >= v33)
      {
        v71 = *v99;
        v72 = v32 - *v99;
        v73 = v72 >> 5;
        v74 = (v72 >> 5) + 1;
        if (v74 >> 59)
        {
          sub_1794();
        }

        v75 = v33 - v71;
        if (v75 >> 4 > v74)
        {
          v74 = v75 >> 4;
        }

        if (v75 >= 0x7FFFFFFFFFFFFFE0)
        {
          v76 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v76 = v74;
        }

        if (v76)
        {
          if (!(v76 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v92 = (32 * v73);
        v93 = *&v105[16];
        *v92 = *v105;
        v92[1] = v93;
        v35 = 32 * v73 + 32;
        memcpy(0, v71, v72);
        *(a6 + 16) = 0;
        *(a6 + 24) = v35;
        *(a6 + 32) = 0;
        if (v71)
        {
          operator delete(v71);
        }
      }

      else
      {
        v34 = *&v105[16];
        *v32 = *v105;
        v32[1] = v34;
        v35 = (v32 + 2);
      }

      *(a6 + 24) = v35;
      goto LABEL_127;
    }

    ++v29;
  }

  while (v29 != v28);
  v29 = v28;
  v28 = v104;
  if (v29 != v104)
  {
    goto LABEL_45;
  }

LABEL_51:
  v29 = v103;
LABEL_54:
  while (v29 != v28)
  {
    if ((*(a1 + 16) & 0x20) != 0)
    {
      if (*(a1 + 48))
      {
        v43 = a2;
      }

      else
      {
        v43 = 0;
      }

      sub_466300(a6, a1, v29, a4, a5, v43, v105);
      v44 = *(a6 + 24);
      v45 = *(a6 + 32);
      if (v44 < v45)
      {
        goto LABEL_52;
      }

      v46 = *v99;
      v47 = v44 - *v99;
      v48 = v47 >> 5;
      v49 = (v47 >> 5) + 1;
      if (v49 >> 59)
      {
        sub_1794();
      }

      v50 = v45 - v46;
      if (v50 >> 4 > v49)
      {
        v49 = v50 >> 4;
      }

      if (v50 >= 0x7FFFFFFFFFFFFFE0)
      {
        v51 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        if (!(v51 >> 59))
        {
          operator new();
        }

        sub_1808();
      }
    }

    else
    {
      sub_4668A4(a6, v29, a4, a5, v105);
      v39 = *(a6 + 24);
      v40 = *(a6 + 32);
      if (v39 >= v40)
      {
        v52 = *v99;
        v53 = v39 - *v99;
        v54 = v53 >> 5;
        v55 = (v53 >> 5) + 1;
        if (v55 >> 59)
        {
          sub_1794();
        }

        v56 = v40 - v52;
        if (v56 >> 4 > v55)
        {
          v55 = v56 >> 4;
        }

        if (v56 >= 0x7FFFFFFFFFFFFFE0)
        {
          v57 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v57 = v55;
        }

        if (v57)
        {
          if (!(v57 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v58 = (32 * v54);
        v59 = *&v105[16];
        *v58 = *v105;
        v58[1] = v59;
        v42 = 32 * v54 + 32;
        memcpy(0, v52, v53);
        *(a6 + 16) = 0;
        *(a6 + 24) = v42;
        *(a6 + 32) = 0;
        if (v52)
        {
          operator delete(v52);
        }
      }

      else
      {
        v41 = *&v105[16];
        *v39 = *v105;
        v39[1] = v41;
        v42 = (v39 + 2);
      }

      *(a6 + 24) = v42;
      v60 = (*(*a4 + 8))(a4, v29);
      LODWORD(__dst) = v60;
      BYTE6(__dst) = BYTE6(v60);
      WORD2(__dst) = WORD2(v60);
      sub_4668A4(a6, &__dst, a4, a5, v105);
      v44 = *(a6 + 24);
      v61 = *(a6 + 32);
      if (v44 < v61)
      {
LABEL_52:
        v37 = *&v105[16];
        *v44 = *v105;
        v44[1] = v37;
        v38 = (v44 + 2);
        goto LABEL_53;
      }

      v46 = *v99;
      v47 = v44 - *v99;
      v48 = v47 >> 5;
      v62 = (v47 >> 5) + 1;
      if (v62 >> 59)
      {
        sub_1794();
      }

      v63 = v61 - v46;
      if (v63 >> 4 > v62)
      {
        v62 = v63 >> 4;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFE0)
      {
        v51 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v62;
      }

      if (v51)
      {
        if (!(v51 >> 59))
        {
          operator new();
        }

        sub_1808();
      }
    }

    v64 = (32 * v48);
    v65 = 32 * v51;
    v66 = *&v105[16];
    *v64 = *v105;
    v64[1] = v66;
    v38 = 32 * v48 + 32;
    memcpy(0, v46, v47);
    *(a6 + 16) = 0;
    *(a6 + 24) = v38;
    *(a6 + 32) = v65;
    if (v46)
    {
      operator delete(v46);
    }

LABEL_53:
    *(a6 + 24) = v38;
    ++v29;
  }

  sub_466B1C(v99);
  v67 = *v99;
  v68 = *(*v99 + 16);
  if (v68 == 1.79769313e308)
  {
    *(a6 + 24) = v67;
  }

  else
  {
    v69 = *(a6 + 24);
    if (v67 != v69)
    {
      if (v68 <= v68 + *a5)
      {
        while (1)
        {
          if (sub_12119FC())
          {
            sub_19594F8(v105);
            sub_4A5C(v105, "Candidate segment for geoid ", 28);
            v83 = std::ostream::operator<<();
            sub_4A5C(v83, "(index=", 7);
            v84 = std::ostream::operator<<();
            v85 = sub_4A5C(v84, ") (", 3);
            v87 = sub_463550(v85, a6, v86);
            v88 = sub_4A5C(v87, "): ", 3);
            v89 = sub_30E900(v88, *v67);
            sub_4A5C(v89, ", fraction: ", 12);
            v90 = std::ostream::operator<<();
            sub_4A5C(v90, ", score: ", 9);
            std::ostream::operator<<();
            operator new();
          }

          v70 = v67 + 32;
          v69 = *(a6 + 24);
          if (v67 + 32 == v69)
          {
            break;
          }

          v91 = *(v67 + 48);
          v67 += 32;
          if (v91 > v68 + *a5)
          {
            goto LABEL_99;
          }
        }
      }

      else
      {
        v70 = *v99;
LABEL_99:
        if (v70 != v69)
        {
          *(a6 + 24) = v70;
        }
      }
    }
  }

LABEL_127:
  if (v103)
  {
    *&v104 = v103;
    operator delete(v103);
  }
}

void sub_465B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  sub_1959728(&a36);
  v39 = *v37;
  if (!*v37)
  {
    _Unwind_Resume(a1);
  }

  *(v36 + 24) = v39;
  operator delete(v39);
  _Unwind_Resume(a1);
}

void sub_465C8C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 != v3)
  {
    if (((v4 - v3) >> 5) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = a2;
  v6 = a1;
}

void sub_465D64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_465D80(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 7);
          if (v6)
          {
            *(v4 - 6) = v6;
            operator delete(v6);
          }

          v4 -= 72;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_465E04(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = 0.5;
  if (a4)
  {
    (*(*a3 + 32))(&v26, a3, a2, 1);
    sub_45B1FC(&v27, a1, v25);
    v10 = 0.0;
    if (0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 2) >= 2)
    {
      v11 = v27 + 12;
      if (v28 != v27 + 12)
      {
        v12 = v27;
        v13 = 1.79769313e308;
        v14 = 0.0;
        v15 = 0.0;
        do
        {
          sub_46315C(v12, v11, v9);
          v17 = v16;
          sub_46315C(v12, v25, v16);
          v19 = v18;
          sub_46315C(v25, v11, v18);
          v9 = fmax(v19 + v20 - v17, 0.0);
          if (v9 < v13)
          {
            v13 = v9;
            v15 = v14 + v19;
          }

          v14 = v14 + v17;
          v11 += 12;
          v12 = (v12 + 12);
        }

        while (v11 != v28);
        v10 = 0.0;
        if (v14 != 0.0)
        {
          if (v15 / v14 <= 1.0)
          {
            v10 = v15 / v14;
          }

          else
          {
            v10 = 1.0;
          }
        }
      }
    }

    v7 = fmax(v10, 0.0);
    if (sub_12119FC())
    {
      sub_19594F8(&v24);
      v21 = sub_4A5C(&v24, "Support point start/end of path (", 33);
      v23 = sub_463550(v21, a1, v22);
      sub_4A5C(v23, ") fraction: ", 12);
      std::ostream::operator<<();
      operator new();
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }
  }

  *a5 = *a2;
  *(a5 + 8) = v7;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
}

void sub_466274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    sub_1959728(&a21);
    sub_45B1B8(v21 - 192);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a21);
  sub_45B1B8(v21 - 192);
  _Unwind_Resume(a1);
}

void sub_466300(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  (*(*a4 + 32))(&v66, a4, a3, 1);
  sub_45B1FC(&v67, a1, &v63);
  v15 = v68;
  if (0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 2) >= 2)
  {
    v16 = 0.0;
    if (v68 != v67 + 12)
    {
      v17 = v67;
      v18 = 1.79769313e308;
      v19 = 0.0;
      v20 = 0.0;
      v15 = v67 + 12;
      do
      {
        sub_46315C(v17, v15, v14);
        v22 = v21;
        sub_46315C(v17, &v63, v21);
        v24 = v23;
        sub_46315C(&v63, v15, v23);
        v14 = fmax(v24 + v25 - v22, 0.0);
        if (v14 < v18)
        {
          v18 = v14;
          v20 = v19 + v24;
        }

        v19 = v19 + v22;
        v15 += 12;
        v17 = (v17 + 12);
      }

      while (v15 != v68);
      v16 = 0.0;
      if (v19 != 0.0)
      {
        v14 = v20 / v19;
        if (v20 / v19 <= 1.0)
        {
          v16 = v20 / v19;
        }

        else
        {
          v16 = 1.0;
        }
      }
    }
  }

  else
  {
    v16 = 0.0;
  }

  v53 = a6;
  v26 = v65;
  v27 = *(a2 + 60) - 360 * (((11651 * *(a2 + 60)) >> 22) + ((11651 * *(a2 + 60)) >> 31));
  v54 = *(a2 + 64);
  v55 = v64;
  v28 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v67) >> 2) - 2;
  if (v28 >= v65)
  {
    v28 = v65;
  }

  v29 = sub_4637F8(v67 + 3 * v28, v67 + 3 * v28 + 3, v14);
  v31 = v29 - v27;
  v32 = (v29 - v27);
  v33 = v29 - v27 - 360;
  if (v32 > 180)
  {
    v31 = v29 - v27 - 360;
  }

  if (v31 < -179)
  {
    v31 += 360;
  }

  if (v31 >= 0)
  {
    v34 = v31;
  }

  else
  {
    v34 = -v31;
  }

  v35 = v29;
  if (v34 >= 0x5A)
  {
    v35 = (v29 + 180) % 0x168u;
  }

  if (v26)
  {
    v36 = v26 - 1;
    if (-2 - 0x5555555555555555 * ((v68 - v67) >> 2) < v26 - 1)
    {
      v36 = -2 - 0x5555555555555555 * ((v68 - v67) >> 2);
    }

    v29 = sub_4637F8(v67 + 3 * v36, v67 + 3 * v36 + 3, v30);
    LOWORD(v32) = v29 - v27;
    v33 = v29 - v27 - 360;
  }

  if (v32 <= 180)
  {
    LOWORD(v37) = v32;
  }

  else
  {
    LOWORD(v37) = v33;
  }

  if (v37 < -179)
  {
    LOWORD(v37) = v37 + 360;
  }

  v37 = v37;
  if ((v37 & 0x8000u) != 0)
  {
    v37 = -v37;
  }

  if (v37 >= 0x5A)
  {
    v29 = (v29 + 180) % 0x168u;
    LOWORD(v32) = v29 - v27;
    v33 = v29 - v27 - 360;
  }

  v38 = fmax(v16, 0.0);
  v39 = v37 > 0x59u;
  if (v32 > 180)
  {
    LOWORD(v32) = v33;
  }

  if (v32 < -179)
  {
    LOWORD(v32) = v32 + 360;
  }

  v32 = v32;
  if ((v32 & 0x8000u) != 0)
  {
    v32 = -v32;
  }

  LOWORD(v40) = v35 - v27;
  if ((v35 - v27) > 180)
  {
    LOWORD(v40) = v35 - v27 - 360;
  }

  if (v40 < -179)
  {
    LOWORD(v40) = v40 + 360;
  }

  v40 = v40;
  if ((v40 & 0x8000u) != 0)
  {
    v40 = -v40;
  }

  if (v32 < v40)
  {
    v35 = v29;
  }

  if (v35 == v29)
  {
    v41 = v39;
  }

  else
  {
    v41 = v34 > 0x59u;
  }

  v62 = *a3;
  if (v41)
  {
    v42 = (*(*a4 + 8))(a4, a3);
    v38 = 1.0 - v38;
    LODWORD(v62) = v42;
    BYTE6(v62) = BYTE6(v42);
    WORD2(v62) = WORD2(v42);
  }

  (*(*a4 + 32))(&v56, a4, &v62, 0);
  v43 = v59;
  if (v61 < 0)
  {
    operator delete(__p);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v43)
  {
    v44 = 0.0;
    v45 = 0.0;
    if (v54 && (v53 & 1) == 0)
    {
      v46 = v54 - v66;
      if (v54 <= v66)
      {
        v46 = v66 - v54;
      }

      if (HIDWORD(v54) == WORD1(v66))
      {
        v45 = 0.0;
      }

      else
      {
        v45 = 1.0;
      }

      v44 = v46;
    }

    v47 = sub_4636F0((*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), &v69);
    v48 = v35 - v27;
    if ((v35 - v27) > 180)
    {
      v48 = v35 - v27 - 360;
    }

    if (v48 < -179)
    {
      v48 += 360;
    }

    if (v48 >= 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = -v48;
    }

    v50 = v55;
    v51 = pow(v55 / 100.0, *(a5 + 16));
    v52 = v51 + pow(v49, *(a5 + 24)) + v44 * *(a5 + 32) + v45 * *(a5 + 40) + v47 * *(a5 + 48);
  }

  else
  {
    v52 = 1.79769313e308;
    v50 = v55;
  }

  *a7 = v62;
  *(a7 + 8) = v38;
  *(a7 + 16) = v52;
  *(a7 + 24) = v50;
  if (v70 < 0)
  {
    operator delete(v69);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }
}

void sub_4668A4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a3 + 32))(&v33, a3, a2, 1);
  sub_45B1FC(&v34, a1, &v31);
  v11 = 0.0;
  if (0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2) >= 2)
  {
    v12 = v34 + 12;
    if (v35 != v34 + 12)
    {
      v13 = v34;
      v14 = 1.79769313e308;
      v15 = 0.0;
      v16 = 0.0;
      do
      {
        sub_46315C(v13, v12, v10);
        v18 = v17;
        sub_46315C(v13, &v31, v17);
        v20 = v19;
        sub_46315C(&v31, v12, v19);
        v10 = fmax(v20 + v21 - v18, 0.0);
        if (v10 < v14)
        {
          v14 = v10;
          v16 = v15 + v20;
        }

        v15 = v15 + v18;
        v12 += 3;
        v13 = (v13 + 12);
      }

      while (v12 != v35);
      v11 = 0.0;
      if (v15 != 0.0)
      {
        if (v16 / v15 <= 1.0)
        {
          v11 = v16 / v15;
        }

        else
        {
          v11 = 1.0;
        }
      }
    }
  }

  v22 = v32;
  (*(*a3 + 32))(&v25, a3, a2, 0);
  if (v28 == 1)
  {
    v23 = pow(v22 / 100.0, *(a4 + 16));
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v23 = 1.79769313e308;
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(__p);
LABEL_16:
  v24 = fmax(v11, 0.0);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  *a5 = *a2;
  *(a5 + 8) = v24;
  *(a5 + 16) = v23;
  *(a5 + 24) = v22;
  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_466AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_45B1B8(va);
  _Unwind_Resume(a1);
}

void sub_466B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_45B1B8(va);
  _Unwind_Resume(a1);
}

void sub_466B1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 5);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_466C8C(v2, v3, &v14, v5, 1);
  v7 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_21:
    if (v7 != v6)
    {
      a1[1] = v7;
    }

    return;
  }

  if (v7 + 2 != v6)
  {
    v8 = 0;
    LODWORD(v9) = *v7;
    while (1)
    {
      v10 = v9;
      v9 = *&v7[v8 + 2];
      if (v10 == v9 && WORD2(v7[v8]) == WORD2(v9))
      {
        v11 = &v7[v8];
        if (BYTE6(v7[v8]) == BYTE6(v9))
        {
          break;
        }
      }

      v8 += 2;
      if (&v7[v8 + 2] == v6)
      {
        return;
      }
    }

    if (v11 != v6)
    {
      v12 = &v7[v8 + 4];
      if (v12 != v6)
      {
        do
        {
          if (__PAIR64__(*(v11 + 2), *v11) != __PAIR64__(WORD2(*v12), *v12) || *(v11 + 6) != BYTE6(*v12))
          {
            v13 = *v12;
            *(v11 + 44) = *(v12 + 12);
            v11[2] = v13;
            v11 += 2;
          }

          v12 += 2;
        }

        while (v12 != v6);
        v6 = a1[1];
      }

      v7 = v11 + 2;
      goto LABEL_21;
    }
  }
}

void sub_466C8C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 8;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v31 = *(a2 - 2);
        v32 = *(v10 + 2);
        v33 = v31 < v32;
        if (v31 == v32 && (v34 = *(a2 - 2), v35 = v10[6], v33 = v34 < v35, v35 == v34))
        {
          v36 = *v10;
          v37 = (*(a2 - 8) << 32) | (*(a2 - 14) << 16);
          if (!*(a2 - 26))
          {
            ++v37;
          }

          if ((v36 & 0xFF000000000000) != 0)
          {
            v38 = (v36 >> 16) & 0xFFFF0000 | (v36 << 32);
          }

          else
          {
            v38 = ((v36 >> 16) & 0xFFFF0000 | (v36 << 32)) + 1;
          }

          if (v37 >= v38)
          {
            return;
          }
        }

        else if (!v33)
        {
          return;
        }

        *v41 = *v10;
        *&v41[16] = *(v10 + 1);
        v39 = *v9;
        *(v10 + 3) = *(a2 - 5);
        *v10 = v39;
        *v9 = *v41;
        *(a2 - 5) = *&v41[12];
        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_46743C(v10, v10 + 8, v10 + 16, a2 - 8);
      return;
    }

    if (v13 == 5)
    {

      sub_46764C(v10, v10 + 8, v10 + 16, v10 + 24, a2 - 8);
      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_467900(v10, a2);
      }

      else
      {

        sub_467AE8(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_46857C(v10, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v10[8 * (v13 >> 1)];
    if (v13 < 0x81)
    {
      sub_46712C(&v10[8 * (v13 >> 1)], v10, a2 - 8);
      if (a5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_46712C(v10, &v10[8 * (v13 >> 1)], a2 - 8);
      v16 = v10 + 8;
      v17 = 8 * v14;
      v18 = (32 * v14 + a1 - 32);
      sub_46712C((a1 + 32), v18, a2 - 16);
      sub_46712C((a1 + 64), &v16[v17], a2 - 24);
      sub_46712C(v18, v15, &v16[v17]);
      *v40 = *a1;
      *&v40[16] = *(a1 + 16);
      v19 = *v15;
      *(a1 + 12) = *(v15 + 3);
      *a1 = v19;
      *(v15 + 3) = *&v40[12];
      *v15 = *v40;
      if (a5)
      {
        goto LABEL_26;
      }
    }

    v20 = *(a1 - 16);
    v21 = *(a1 + 16);
    v22 = v20 < v21;
    if (v20 == v21 && (v23 = *(a1 - 8), v24 = *(a1 + 24), v22 = v23 < v24, v24 == v23))
    {
      v25 = *a1;
      v26 = (*(a1 - 32) << 32) | (*(a1 - 28) << 16);
      if (!*(a1 - 26))
      {
        ++v26;
      }

      if ((v25 & 0xFF000000000000) != 0)
      {
        v27 = (v25 >> 16) & 0xFFFF0000 | (v25 << 32);
      }

      else
      {
        v27 = ((v25 >> 16) & 0xFFFF0000 | (v25 << 32)) + 1;
      }

      if (v26 >= v27)
      {
LABEL_30:
        v10 = sub_467C78(a1, a2);
        goto LABEL_31;
      }
    }

    else if (!v22)
    {
      goto LABEL_30;
    }

LABEL_26:
    v28 = sub_467FBC(a1, a2);
    if ((v29 & 1) == 0)
    {
      goto LABEL_29;
    }

    v30 = sub_46822C(a1, v28);
    v10 = v28 + 8;
    if (sub_46822C((v28 + 8), a2))
    {
      a4 = -v12;
      a2 = v28;
      if (v30)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v30)
    {
LABEL_29:
      sub_466C8C(a1, v28, a3, -v12, a5 & 1);
      v10 = v28 + 8;
LABEL_31:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  sub_46712C(v10, v10 + 8, a2 - 8);
}

uint64_t sub_46712C(__int128 *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(a2 + 2);
  v4 = *(a1 + 2);
  v5 = v3 < v4;
  if (v3 != v4 || (v6 = a2[6], v7 = *(a1 + 6), v5 = v6 < v7, v7 != v6))
  {
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_19:
    v19 = *(a3 + 2);
    v20 = v19 < v3;
    if (v19 == v3 && (v21 = a3[6], v22 = a2[6], v20 = v21 < v22, v22 == v21))
    {
      v23 = *a2;
      v24 = (*a3 << 32) | (*(a3 + 2) << 16);
      if (!*(a3 + 6))
      {
        ++v24;
      }

      if ((v23 & 0xFF000000000000) != 0)
      {
        v25 = (v23 >> 16) & 0xFFFF0000 | (v23 << 32);
      }

      else
      {
        v25 = ((v23 >> 16) & 0xFFFF0000 | (v23 << 32)) + 1;
      }

      if (v24 >= v25)
      {
LABEL_27:
        *v48 = *a1;
        v26 = *a1;
        *&v48[16] = a1[1];
        v27 = *(a2 + 3);
        *a1 = *a2;
        *(a1 + 12) = v27;
        *a2 = v26;
        *(a2 + 3) = *&v48[12];
        *&v26 = *(a3 + 2);
        *&v27 = *(a2 + 2);
        v28 = *&v26 < *&v27;
        if (*&v26 == *&v27 && (v29 = a3[6], v30 = a2[6], v28 = v29 < v30, v30 == v29))
        {
          v31 = *a2;
          v32 = (*a3 << 32) | (*(a3 + 2) << 16);
          if (!*(a3 + 6))
          {
            ++v32;
          }

          if ((v31 & 0xFF000000000000) != 0)
          {
            v33 = (v31 >> 16) & 0xFFFF0000 | (v31 << 32);
          }

          else
          {
            v33 = ((v31 >> 16) & 0xFFFF0000 | (v31 << 32)) + 1;
          }

          if (v32 >= v33)
          {
            return 1;
          }
        }

        else if (!v28)
        {
          return 1;
        }

        *v51 = *a2;
        v44 = *a2;
        *&v51[16] = *(a2 + 1);
        v45 = *(a3 + 3);
        *a2 = *a3;
        *(a2 + 3) = v45;
        *a3 = v44;
        *(a3 + 3) = *&v51[12];
        return 1;
      }
    }

    else if (!v20)
    {
      goto LABEL_27;
    }

    *v50 = *a1;
    v42 = *a1;
    *&v50[16] = a1[1];
    v43 = *(a3 + 3);
    *a1 = *a3;
    *(a1 + 12) = v43;
    *a3 = v42;
    *(a3 + 3) = *&v50[12];
    return 1;
  }

  v8 = *a1;
  v9 = (*a2 << 32) | (*(a2 + 2) << 16);
  if (!*(a2 + 6))
  {
    ++v9;
  }

  if ((v8 & 0xFF000000000000) != 0)
  {
    v10 = (v8 >> 16) & 0xFFFF0000 | (v8 << 32);
  }

  else
  {
    v10 = ((v8 >> 16) & 0xFFFF0000 | (v8 << 32)) + 1;
  }

  if (v9 < v10)
  {
    goto LABEL_19;
  }

LABEL_9:
  v11 = *(a3 + 2);
  v12 = v11 < v3;
  if (v11 == v3 && (v13 = a3[6], v14 = a2[6], v12 = v13 < v14, v14 == v13))
  {
    v15 = *a2;
    v16 = (*a3 << 32) | (*(a3 + 2) << 16);
    if (!*(a3 + 6))
    {
      ++v16;
    }

    if ((v15 & 0xFF000000000000) != 0)
    {
      v17 = (v15 >> 16) & 0xFFFF0000 | (v15 << 32);
    }

    else
    {
      v17 = ((v15 >> 16) & 0xFFFF0000 | (v15 << 32)) + 1;
    }

    if (v16 >= v17)
    {
      return 0;
    }
  }

  else if (!v12)
  {
    return 0;
  }

  *v49 = *a2;
  v34 = *a2;
  *&v49[16] = *(a2 + 1);
  v35 = *(a3 + 3);
  *a2 = *a3;
  *(a2 + 3) = v35;
  *a3 = v34;
  *(a3 + 3) = *&v49[12];
  *&v34 = *(a2 + 2);
  *&v35 = *(a1 + 2);
  v36 = *&v34 < *&v35;
  if (*&v34 == *&v35 && (v37 = a2[6], v38 = *(a1 + 6), v36 = v37 < v38, v38 == v37))
  {
    v39 = *a1;
    v40 = (*a2 << 32) | (*(a2 + 2) << 16);
    if (!*(a2 + 6))
    {
      ++v40;
    }

    if ((v39 & 0xFF000000000000) != 0)
    {
      v41 = (v39 >> 16) & 0xFFFF0000 | (v39 << 32);
    }

    else
    {
      v41 = ((v39 >> 16) & 0xFFFF0000 | (v39 << 32)) + 1;
    }

    if (v40 < v41)
    {
      goto LABEL_51;
    }
  }

  else if (v36)
  {
LABEL_51:
    *v52 = *a1;
    v46 = *a1;
    *&v52[16] = a1[1];
    v47 = *(a2 + 3);
    *a1 = *a2;
    *(a1 + 12) = v47;
    *a2 = v46;
    *(a2 + 3) = *&v52[12];
    return 1;
  }

  return 1;
}

__n128 sub_46743C(uint64_t *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  sub_46712C(a1, a2, a3);
  result.n128_u64[0] = *(a4 + 2);
  v9 = *(a3 + 2);
  v10 = result.n128_f64[0] < v9;
  if (result.n128_f64[0] != v9 || (v11 = a4[6], v12 = a3[6], v10 = v11 < v12, v12 != v11))
  {
    if (!v10)
    {
      return result;
    }

LABEL_11:
    *v34 = *a3;
    v16 = *a3;
    *&v34[16] = *(a3 + 1);
    v17 = *(a4 + 3);
    *a3 = *a4;
    *(a3 + 3) = v17;
    *a4 = v16;
    result.n128_u64[1] = *&v34[20];
    *(a4 + 3) = *&v34[12];
    result.n128_u64[0] = *(a3 + 2);
    *&v17 = *(a2 + 2);
    v18 = result.n128_f64[0] < *&v17;
    if (result.n128_f64[0] == *&v17 && (v19 = a3[6], v20 = a2[6], v18 = v19 < v20, v20 == v19))
    {
      v21 = *a2;
      v22 = (*a3 << 32) | (*(a3 + 2) << 16);
      if (!*(a3 + 6))
      {
        ++v22;
      }

      if ((v21 & 0xFF000000000000) != 0)
      {
        v23 = (v21 >> 16) & 0xFFFF0000 | (v21 << 32);
      }

      else
      {
        v23 = ((v21 >> 16) & 0xFFFF0000 | (v21 << 32)) + 1;
      }

      if (v22 >= v23)
      {
        return result;
      }
    }

    else if (!v18)
    {
      return result;
    }

    *v35 = *a2;
    v24 = *a2;
    *&v35[16] = *(a2 + 1);
    v25 = *(a3 + 3);
    *a2 = *a3;
    *(a2 + 3) = v25;
    *a3 = v24;
    result.n128_u64[1] = *&v35[20];
    *(a3 + 3) = *&v35[12];
    result.n128_u64[0] = *(a2 + 2);
    *&v25 = a1[2];
    v26 = result.n128_f64[0] < *&v25;
    if (result.n128_f64[0] == *&v25 && (v27 = a2[6], v28 = *(a1 + 6), v26 = v27 < v28, v28 == v27))
    {
      v29 = *a1;
      v30 = (*a2 << 32) | (*(a2 + 2) << 16);
      if (!*(a2 + 6))
      {
        ++v30;
      }

      if ((v29 & 0xFF000000000000) != 0)
      {
        v31 = (v29 >> 16) & 0xFFFF0000 | (v29 << 32);
      }

      else
      {
        v31 = ((v29 >> 16) & 0xFFFF0000 | (v29 << 32)) + 1;
      }

      if (v30 >= v31)
      {
        return result;
      }
    }

    else if (!v26)
    {
      return result;
    }

    *v36 = *a1;
    v32 = *a1;
    *&v36[16] = *(a1 + 1);
    v33 = *(a2 + 3);
    *a1 = *a2;
    *(a1 + 12) = v33;
    *a2 = v32;
    result = *&v36[12];
    *(a2 + 3) = *&v36[12];
    return result;
  }

  v13 = *a3;
  v14 = (*a4 << 32) | (*(a4 + 2) << 16);
  if (!*(a4 + 6))
  {
    ++v14;
  }

  if ((v13 & 0xFF000000000000) != 0)
  {
    v15 = (v13 >> 16) & 0xFFFF0000 | (v13 << 32);
  }

  else
  {
    v15 = ((v13 >> 16) & 0xFFFF0000 | (v13 << 32)) + 1;
  }

  if (v14 < v15)
  {
    goto LABEL_11;
  }

  return result;
}

__n128 sub_46764C(__int128 *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  sub_46743C(a1, a2, a3, a4);
  result.n128_u64[0] = *(a5 + 2);
  v11 = *(a4 + 2);
  v12 = result.n128_f64[0] < v11;
  if (result.n128_f64[0] != v11 || (v13 = a5[6], v14 = a4[6], v12 = v13 < v14, v14 != v13))
  {
    if (!v12)
    {
      return result;
    }

LABEL_11:
    *v44 = *a4;
    v18 = *a4;
    *&v44[16] = *(a4 + 1);
    v19 = *(a5 + 3);
    *a4 = *a5;
    *(a4 + 3) = v19;
    *a5 = v18;
    result.n128_u64[1] = *&v44[20];
    *(a5 + 3) = *&v44[12];
    result.n128_u64[0] = *(a4 + 2);
    *&v19 = *(a3 + 2);
    v20 = result.n128_f64[0] < *&v19;
    if (result.n128_f64[0] == *&v19 && (v21 = a4[6], v22 = a3[6], v20 = v21 < v22, v22 == v21))
    {
      v23 = *a3;
      v24 = (*a4 << 32) | (*(a4 + 2) << 16);
      if (!*(a4 + 6))
      {
        ++v24;
      }

      if ((v23 & 0xFF000000000000) != 0)
      {
        v25 = (v23 >> 16) & 0xFFFF0000 | (v23 << 32);
      }

      else
      {
        v25 = ((v23 >> 16) & 0xFFFF0000 | (v23 << 32)) + 1;
      }

      if (v24 >= v25)
      {
        return result;
      }
    }

    else if (!v20)
    {
      return result;
    }

    *v45 = *a3;
    v26 = *a3;
    *&v45[16] = *(a3 + 1);
    v27 = *(a4 + 3);
    *a3 = *a4;
    *(a3 + 3) = v27;
    *a4 = v26;
    result.n128_u64[1] = *&v45[20];
    *(a4 + 3) = *&v45[12];
    result.n128_u64[0] = *(a3 + 2);
    *&v27 = *(a2 + 2);
    v28 = result.n128_f64[0] < *&v27;
    if (result.n128_f64[0] == *&v27 && (v29 = a3[6], v30 = a2[6], v28 = v29 < v30, v30 == v29))
    {
      v31 = *a2;
      v32 = (*a3 << 32) | (*(a3 + 2) << 16);
      if (!*(a3 + 6))
      {
        ++v32;
      }

      if ((v31 & 0xFF000000000000) != 0)
      {
        v33 = (v31 >> 16) & 0xFFFF0000 | (v31 << 32);
      }

      else
      {
        v33 = ((v31 >> 16) & 0xFFFF0000 | (v31 << 32)) + 1;
      }

      if (v32 >= v33)
      {
        return result;
      }
    }

    else if (!v28)
    {
      return result;
    }

    *v46 = *a2;
    v34 = *a2;
    *&v46[16] = *(a2 + 1);
    v35 = *(a3 + 3);
    *a2 = *a3;
    *(a2 + 3) = v35;
    *a3 = v34;
    result.n128_u64[1] = *&v46[20];
    *(a3 + 3) = *&v46[12];
    result.n128_u64[0] = *(a2 + 2);
    *&v35 = *(a1 + 2);
    v36 = result.n128_f64[0] < *&v35;
    if (result.n128_f64[0] == *&v35 && (v37 = a2[6], v38 = *(a1 + 6), v36 = v37 < v38, v38 == v37))
    {
      v39 = *a1;
      v40 = (*a2 << 32) | (*(a2 + 2) << 16);
      if (!*(a2 + 6))
      {
        ++v40;
      }

      if ((v39 & 0xFF000000000000) != 0)
      {
        v41 = (v39 >> 16) & 0xFFFF0000 | (v39 << 32);
      }

      else
      {
        v41 = ((v39 >> 16) & 0xFFFF0000 | (v39 << 32)) + 1;
      }

      if (v40 >= v41)
      {
        return result;
      }
    }

    else if (!v36)
    {
      return result;
    }

    *v47 = *a1;
    v42 = *a1;
    *&v47[16] = a1[1];
    v43 = *(a2 + 3);
    *a1 = *a2;
    *(a1 + 12) = v43;
    *a2 = v42;
    result = *&v47[12];
    *(a2 + 3) = *&v47[12];
    return result;
  }

  v15 = *a4;
  v16 = (*a5 << 32) | (*(a5 + 2) << 16);
  if (!*(a5 + 6))
  {
    ++v16;
  }

  if ((v15 & 0xFF000000000000) != 0)
  {
    v17 = (v15 >> 16) & 0xFFFF0000 | (v15 << 32);
  }

  else
  {
    v17 = ((v15 >> 16) & 0xFFFF0000 | (v15 << 32)) + 1;
  }

  if (v16 < v17)
  {
    goto LABEL_11;
  }

  return result;
}

_OWORD *sub_467900(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = v4;
        v4 = v2;
        v7 = *(v6 + 6);
        v8 = *(v6 + 2);
        v9 = v7 < v8;
        if (v7 == v8 && (v10 = *(v6 + 14), v11 = *(v6 + 6), v9 = v10 < v11, v11 == v10))
        {
          v12 = *v6;
          v13 = *v4;
          v14 = *(v6 + 18);
          v15 = (v13 << 32) | (v14 << 16);
          v16 = *(v6 + 38);
          if (!*(v6 + 38))
          {
            ++v15;
          }

          if ((v12 & 0xFF000000000000) != 0)
          {
            v17 = (v12 >> 16) & 0xFFFF0000 | (v12 << 32);
          }

          else
          {
            v17 = ((v12 >> 16) & 0xFFFF0000 | (v12 << 32)) + 1;
          }

          if (v15 >= v17)
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (!v9)
          {
            goto LABEL_6;
          }

          v13 = *v4;
          v14 = *(v6 + 18);
          v16 = *(v6 + 38);
          v10 = *(v6 + 14);
        }

        v26 = *(v6 + 39);
        v27 = *(v6 + 47);
        *v4 = *v6;
        *(v4 + 12) = *(v6 + 12);
        v5 = result;
        if (v6 == result)
        {
          goto LABEL_5;
        }

        if (v16)
        {
          v18 = (v13 << 32) | (v14 << 16);
        }

        else
        {
          v18 = ((v13 << 32) | (v14 << 16)) + 1;
        }

        v19 = v3;
        while (1)
        {
          v20 = (result + v19);
          v21 = (result + v19 - 32);
          v22 = *(result + v19 - 16);
          v23 = v7 < v22;
          if (v7 != v22)
          {
            break;
          }

          v24 = *(v20 - 2);
          v23 = v10 < v24;
          if (v24 != v10)
          {
            break;
          }

          if ((*v21 & 0xFF000000000000) != 0)
          {
            v25 = (*v21 >> 16) & 0xFFFF0000 | (*v21 << 32);
          }

          else
          {
            v25 = ((*v21 >> 16) & 0xFFFF0000 | (*v21 << 32)) + 1;
          }

          if (v18 >= v25)
          {
            v5 = v6;
            goto LABEL_5;
          }

LABEL_24:
          v6 -= 2;
          *v20 = *v21;
          *(v20 + 12) = *(result + v19 - 20);
          v19 -= 32;
          if (!v19)
          {
            v5 = result;
            goto LABEL_5;
          }
        }

        if (v23)
        {
          goto LABEL_24;
        }

        v5 = (result + v19);
LABEL_5:
        *v5 = v13;
        *(v5 + 2) = v14;
        *(v5 + 6) = v16;
        *(v5 + 15) = v27;
        *(v5 + 7) = v26;
        *(v5 + 2) = v7;
        *(v5 + 6) = v10;
LABEL_6:
        v2 = v4 + 2;
        v3 += 32;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned int *sub_467AE8(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
LABEL_4:
    while (result + 8 != a2)
    {
      v2 = result;
      result += 8;
      v3 = *(v2 + 6);
      v4 = *(v2 + 2);
      v5 = v3 < v4;
      if (v3 == v4 && (v6 = v2[14], v7 = v2[6], v5 = v6 < v7, v7 == v6))
      {
        v8 = *v2;
        v9 = *result;
        v10 = *(v2 + 18);
        v11 = (v9 << 32) | (v10 << 16);
        v12 = *(v2 + 38);
        if (*(v2 + 38))
        {
          v13 = (v9 << 32) | (v10 << 16);
        }

        else
        {
          v13 = v11 + 1;
        }

        if ((v8 & 0xFF000000000000) != 0)
        {
          v14 = (v8 >> 16) & 0xFFFF0000 | (v8 << 32);
        }

        else
        {
          v14 = ((v8 >> 16) & 0xFFFF0000 | (v8 << 32)) + 1;
        }

        if (v13 < v14)
        {
          goto LABEL_17;
        }
      }

      else if (v5)
      {
        v9 = *result;
        v10 = *(v2 + 18);
        v12 = *(v2 + 38);
        v6 = v2[14];
        v11 = (v9 << 32) | (v10 << 16);
LABEL_17:
        v21 = *(v2 + 39);
        v22 = *(v2 + 47);
        if (!v12)
        {
          ++v11;
        }

        for (i = result; ; i -= 8)
        {
          *i = *(i - 2);
          *(i + 3) = *(i - 5);
          v16 = *(i - 6);
          v17 = v3 < v16;
          if (v3 == v16 && (v18 = *(i - 10), v17 = v6 < v18, v18 == v6))
          {
            v19 = *(i - 8);
            if ((v19 & 0xFF000000000000) != 0)
            {
              v20 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
            }

            else
            {
              v20 = ((v19 >> 16) & 0xFFFF0000 | (v19 << 32)) + 1;
            }

            if (v11 >= v20)
            {
LABEL_3:
              *(i - 8) = v9;
              *(i - 14) = v10;
              *(i - 26) = v12;
              *(i - 25) = v21;
              *(i - 17) = v22;
              *(i - 2) = v3;
              *(i - 2) = v6;
              goto LABEL_4;
            }
          }

          else if (!v17)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

  return result;
}

unsigned int *sub_467C78(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 6);
  v45 = *(a1 + 7);
  v46 = *(a1 + 15);
  v5 = *(a1 + 2);
  v6 = a1[6];
  v7 = *(a2 - 16);
  v8 = v5 < v7;
  if (v5 == v7)
  {
    v9 = *(a2 - 8);
    v8 = v6 < v9;
    if (v9 == v6)
    {
      v10 = *(a2 - 32);
      v11 = (v2 << 32) | (v3 << 16);
      if (*(a1 + 6))
      {
        v12 = (v2 << 32) | (v3 << 16);
      }

      else
      {
        v12 = v11 + 1;
      }

      if ((v10 & 0xFF000000000000) != 0)
      {
        v13 = (v10 >> 16) & 0xFFFF0000 | (v10 << 32);
      }

      else
      {
        v13 = ((v10 >> 16) & 0xFFFF0000 | (v10 << 32)) + 1;
      }

      if (v12 >= v13)
      {
        goto LABEL_26;
      }

LABEL_13:
      if (*(a1 + 6))
      {
        v14 = v11;
      }

      else
      {
        v14 = v11 + 1;
      }

      for (i = a1 + 8; ; i += 8)
      {
        v16 = *(i + 2);
        v17 = v5 < v16;
        if (v5 == v16 && (v18 = i[6], v17 = v6 < v18, v18 == v6))
        {
          if ((*i & 0xFF000000000000) != 0)
          {
            v19 = (*i >> 16) & 0xFFFF0000 | (*i << 32);
          }

          else
          {
            v19 = ((*i >> 16) & 0xFFFF0000 | (*i << 32)) + 1;
          }

          if (v14 < v19)
          {
            goto LABEL_38;
          }
        }

        else if (v17)
        {
          goto LABEL_38;
        }
      }
    }
  }

  if (v8)
  {
    v11 = (v2 << 32) | (v3 << 16);
    goto LABEL_13;
  }

LABEL_26:
  i = a1 + 8;
  if ((a1 + 8) < a2)
  {
    v20 = (v2 << 32) | (v3 << 16);
    if (!*(a1 + 6))
    {
      ++v20;
    }

    do
    {
      v21 = *(i + 2);
      v22 = v5 < v21;
      if (v5 == v21 && (v23 = i[6], v22 = v6 < v23, v23 == v6))
      {
        if ((*i & 0xFF000000000000) != 0)
        {
          v24 = (*i >> 16) & 0xFFFF0000 | (*i << 32);
        }

        else
        {
          v24 = ((*i >> 16) & 0xFFFF0000 | (*i << 32)) + 1;
        }

        if (v20 < v24)
        {
          break;
        }
      }

      else if (v22)
      {
        break;
      }

      i += 8;
    }

    while (i < a2);
  }

LABEL_38:
  if (i >= a2)
  {
    goto LABEL_52;
  }

  if (*(a1 + 6))
  {
    v25 = (v2 << 32) | (v3 << 16);
  }

  else
  {
    v25 = ((v2 << 32) | (v3 << 16)) + 1;
  }

  for (j = a2 - 48; ; j -= 32)
  {
    v28 = v5 < v7;
    if (v5 == v7)
    {
      v29 = *(j + 40);
      v28 = v6 < v29;
      if (v29 == v6)
      {
        break;
      }
    }

    if (!v28)
    {
      goto LABEL_51;
    }

LABEL_44:
    v27 = *j;
    v7 = v27;
  }

  v30 = *(j + 16);
  if ((v30 & 0xFF000000000000) != 0)
  {
    v31 = (v30 >> 16) & 0xFFFF0000 | (v30 << 32);
  }

  else
  {
    v31 = ((v30 >> 16) & 0xFFFF0000 | (v30 << 32)) + 1;
  }

  if (v25 < v31)
  {
    goto LABEL_44;
  }

LABEL_51:
  a2 = j + 16;
LABEL_52:
  if (i < a2)
  {
    v32 = (v2 << 32) | (v3 << 16);
    if (!*(a1 + 6))
    {
      ++v32;
    }

    do
    {
      *v44 = *i;
      *&v44[16] = *(i + 1);
      v33 = *a2;
      *(i + 3) = *(a2 + 12);
      *i = v33;
      *(a2 + 12) = *&v44[12];
      *a2 = *v44;
      do
      {
        while (1)
        {
          i += 8;
          v34 = *(i + 2);
          v35 = v5 < v34;
          if (v5 == v34)
          {
            v36 = i[6];
            v35 = v6 < v36;
            if (v36 == v6)
            {
              break;
            }
          }

          if (v35)
          {
            goto LABEL_67;
          }
        }

        if ((*i & 0xFF000000000000) != 0)
        {
          v37 = (*i >> 16) & 0xFFFF0000 | (*i << 32);
        }

        else
        {
          v37 = ((*i >> 16) & 0xFFFF0000 | (*i << 32)) + 1;
        }
      }

      while (v32 >= v37);
      do
      {
LABEL_67:
        while (1)
        {
          a2 -= 32;
          v38 = *(a2 + 16);
          v39 = v5 < v38;
          if (v5 == v38)
          {
            v40 = *(a2 + 24);
            v39 = v6 < v40;
            if (v40 == v6)
            {
              break;
            }
          }

          if (!v39)
          {
            goto LABEL_56;
          }
        }

        if ((*a2 & 0xFF000000000000) != 0)
        {
          v41 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
        }

        else
        {
          v41 = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32)) + 1;
        }
      }

      while (v32 < v41);
LABEL_56:
      ;
    }

    while (i < a2);
  }

  if (i - 8 != a1)
  {
    v42 = *(i - 2);
    *(a1 + 3) = *(i - 5);
    *a1 = v42;
  }

  *(i - 8) = v2;
  *(i - 14) = v3;
  *(i - 26) = v4;
  *(i - 17) = v46;
  *(i - 25) = v45;
  *(i - 2) = v5;
  *(i - 2) = v6;
  return i;
}

unsigned int *sub_467FBC(unsigned int *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a1[6];
  v7 = (*a1 >> 16) & 0xFFFF0000 | (*a1 << 32);
  if ((*a1 & 0xFF000000000000) == 0)
  {
    ++v7;
  }

  while (1)
  {
    v8 = &a1[v2];
    v9 = *&a1[v2 + 12];
    v10 = v9 < v5;
    if (v9 == v5)
    {
      v11 = *(v8 + 14);
      v10 = v11 < v6;
      if (v6 == v11)
      {
        break;
      }
    }

    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_5:
    v2 += 8;
  }

  v12 = (*(v8 + 8) << 32) | (LOWORD(a1[v2 + 9]) << 16);
  if (!BYTE2(a1[v2 + 9]))
  {
    ++v12;
  }

  if (v12 < v7)
  {
    goto LABEL_5;
  }

LABEL_11:
  v13 = &a1[v2 + 8];
  if (v2 * 4)
  {
    do
    {
      while (1)
      {
        a2 -= 4;
        v14 = a2[2];
        v15 = v14 < v5;
        if (v14 == v5)
        {
          v16 = *(a2 + 6);
          v15 = v16 < v6;
          if (v6 == v16)
          {
            break;
          }
        }

        if (v15)
        {
          goto LABEL_31;
        }
      }

      v17 = (*a2 << 32) | (*(a2 + 2) << 16);
      if (!*(a2 + 6))
      {
        ++v17;
      }
    }

    while (v17 >= v7);
  }

  else
  {
    do
    {
      if (v13 >= a2)
      {
        break;
      }

      while (1)
      {
        a2 -= 4;
        v18 = a2[2];
        v19 = v18 < v5;
        if (v18 != v5)
        {
          break;
        }

        v20 = *(a2 + 6);
        v19 = v20 < v6;
        if (v6 != v20)
        {
          break;
        }

        v21 = (*a2 << 32) | (*(a2 + 2) << 16);
        if (!*(a2 + 6))
        {
          ++v21;
        }

        if (v21 < v7 || v13 >= a2)
        {
          goto LABEL_31;
        }
      }
    }

    while (!v19);
  }

LABEL_31:
  v23 = v13;
  if (v13 < a2)
  {
    v24 = a2;
    do
    {
      *v36 = *v23;
      *&v36[16] = *(v23 + 1);
      v25 = *v24;
      *(v23 + 3) = *(v24 + 12);
      *v23 = v25;
      *(v24 + 12) = *&v36[12];
      *v24 = *v36;
      do
      {
        while (1)
        {
          v23 += 8;
          v26 = *(v23 + 2);
          v27 = v26 < v5;
          if (v26 == v5)
          {
            v28 = v23[6];
            v27 = v28 < v6;
            if (v6 == v28)
            {
              break;
            }
          }

          if (!v27)
          {
            goto LABEL_43;
          }
        }

        v29 = (*v23 << 32) | (*(v23 + 2) << 16);
        if (!*(v23 + 6))
        {
          ++v29;
        }
      }

      while (v29 < v7);
      do
      {
LABEL_43:
        while (1)
        {
          v24 -= 4;
          v30 = v24[2];
          v31 = v30 < v5;
          if (v30 == v5)
          {
            v32 = *(v24 + 6);
            v31 = v32 < v6;
            if (v6 == v32)
            {
              break;
            }
          }

          if (v31)
          {
            goto LABEL_33;
          }
        }

        v33 = (*v24 << 32) | (*(v24 + 2) << 16);
        if (!*(v24 + 6))
        {
          ++v33;
        }
      }

      while (v33 >= v7);
LABEL_33:
      ;
    }

    while (v23 < v24);
  }

  if (v23 - 8 != a1)
  {
    v34 = *(v23 - 2);
    *(a1 + 3) = *(v23 - 5);
    *a1 = v34;
  }

  *(v23 - 4) = v3;
  *(v23 - 3) = v4;
  *(v23 - 2) = v5;
  *(v23 - 2) = v6;
  return v23 - 8;
}

BOOL sub_46822C(uint64_t a1, unsigned int *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_46712C(a1, (a1 + 32), a2 - 8);
        return 1;
      case 4:
        sub_46743C(a1, (a1 + 32), (a1 + 64), a2 - 8);
        return 1;
      case 5:
        sub_46764C(a1, (a1 + 32), (a1 + 64), (a1 + 96), a2 - 8);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 2);
      v4 = *(a1 + 16);
      v5 = v3 < v4;
      if (v3 == v4 && (v6 = *(a2 - 2), v7 = *(a1 + 24), v5 = v6 < v7, v7 == v6))
      {
        v8 = *a1;
        v9 = (*(a2 - 8) << 32) | (*(a2 - 14) << 16);
        if (!*(a2 - 26))
        {
          ++v9;
        }

        if ((v8 & 0xFF000000000000) != 0)
        {
          v10 = (v8 >> 16) & 0xFFFF0000 | (v8 << 32);
        }

        else
        {
          v10 = ((v8 >> 16) & 0xFFFF0000 | (v8 << 32)) + 1;
        }

        if (v9 >= v10)
        {
          return 1;
        }
      }

      else if (!v5)
      {
        return 1;
      }

      v36 = (a2 - 8);
      *v41 = *a1;
      v37 = *a1;
      *&v41[16] = *(a1 + 16);
      v38 = *(a2 - 5);
      *a1 = *(a2 - 2);
      *(a1 + 12) = v38;
      *v36 = v37;
      *(v36 + 12) = *&v41[12];
      return 1;
    }
  }

  v11 = a1 + 64;
  sub_46712C(a1, (a1 + 32), (a1 + 64));
  v14 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (2)
  {
    v17 = *(v14 + 2);
    v18 = *(v11 + 16);
    v19 = v17 < v18;
    if (v17 == v18 && (v20 = v14[6], v21 = *(v11 + 24), v19 = v20 < v21, v21 == v20))
    {
      v22 = *v11;
      v23 = *(v14 + 2);
      v24 = *(v14 + 6);
      if ((*v11 & 0xFF000000000000) != 0)
      {
        v25 = (v22 >> 16) & 0xFFFF0000 | (v22 << 32);
      }

      else
      {
        v25 = ((v22 >> 16) & 0xFFFF0000 | (v22 << 32)) + 1;
      }

      if (((*(v14 + 6) == 0) | (*v14 << 32) | (*(v14 + 2) << 16)) >= v25)
      {
        goto LABEL_22;
      }

      v26 = v23 << 16;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v23 = *(v14 + 2);
      v24 = *(v14 + 6);
      v20 = v14[6];
      v26 = v23 << 16;
    }

    v27 = *v14;
    v40 = *(v14 + 7);
    v42 = *(v14 + 15);
    *(v14 + 3) = *(v11 + 12);
    *v14 = *v11;
    v28 = v26 | (v27 << 32) | (v24 == 0);
    v29 = v15;
    while (1)
    {
      v30 = a1 + v29;
      v31 = *(a1 + v29 + 48);
      v32 = v17 < v31;
      if (v17 != v31 || (v33 = *(v30 + 56), v32 = v20 < v33, v33 != v20))
      {
        if (!v32)
        {
          goto LABEL_21;
        }

        goto LABEL_34;
      }

      v34 = *(v30 + 32);
      v35 = (v34 & 0xFF000000000000) != 0 ? (v34 >> 16) & 0xFFFF0000 | (v34 << 32) : ((v34 >> 16) & 0xFFFF0000 | (v34 << 32)) + 1;
      if (v28 >= v35)
      {
        break;
      }

LABEL_34:
      v11 -= 32;
      *(v30 + 64) = *(v30 + 32);
      *(v30 + 76) = *(v30 + 44);
      v29 -= 32;
      if (v29 == -64)
      {
        v11 = a1;
        goto LABEL_21;
      }
    }

    v11 = a1 + v29 + 64;
LABEL_21:
    *v11 = v27;
    *(v11 + 4) = v23;
    *(v11 + 6) = v24;
    *(v11 + 15) = v42;
    *(v11 + 7) = v40;
    *(v11 + 16) = v17;
    *(v11 + 24) = v20;
    if (++v16 == 8)
    {
      return v14 + 8 == a2;
    }

    else
    {
LABEL_22:
      v11 = v14;
      v15 += 32;
      v14 += 8;
      if (v14 != a2)
      {
        continue;
      }

      return 1;
    }
  }
}

unsigned int *sub_46857C(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        sub_468838(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 8)
      {
        v15 = *(i + 2);
        v16 = *(a1 + 16);
        v17 = v15 < v16;
        if (v15 == v16 && (v18 = i[6], v19 = *(a1 + 24), v17 = v18 < v19, v19 == v18))
        {
          v20 = *a1;
          v21 = (*i << 32) | (*(i + 2) << 16);
          if (!*(i + 6))
          {
            ++v21;
          }

          if ((v20 & 0xFF000000000000) != 0)
          {
            v22 = (v20 >> 16) & 0xFFFF0000 | (v20 << 32);
          }

          else
          {
            v22 = ((v20 >> 16) & 0xFFFF0000 | (v20 << 32)) + 1;
          }

          if (v21 >= v22)
          {
            continue;
          }
        }

        else if (!v17)
        {
          continue;
        }

        *v41 = *i;
        v13 = *i;
        *&v41[16] = *(i + 1);
        v14 = *(a1 + 12);
        *i = *a1;
        *(i + 3) = v14;
        *a1 = v13;
        *(a1 + 12) = *&v41[12];
        sub_468838(a1, a4, v8, a1);
      }
    }

    if (v8 < 2)
    {
      return i;
    }

LABEL_28:
    v26 = 0;
    *v42 = *a1;
    *&v42[16] = *(a1 + 16);
    v27 = a1;
    while (1)
    {
      v29 = v27;
      v30 = &v27[8 * v26];
      v27 = v30 + 8;
      v31 = 2 * v26;
      v26 = (2 * v26) | 1;
      v32 = v31 + 2;
      if (v32 < v8)
      {
        v33 = *(v30 + 6);
        v34 = *(v30 + 10);
        v35 = v33 < v34;
        if (v33 == v34 && (v36 = v30[14], v37 = v30[22], v35 = v36 < v37, v37 == v36))
        {
          v38 = *(v30 + 8);
          v39 = (v30[8] << 32) | (*(v30 + 18) << 16);
          if (!*(v30 + 38))
          {
            ++v39;
          }

          if ((v38 & 0xFF000000000000) != 0)
          {
            v40 = (v38 >> 16) & 0xFFFF0000 | (v38 << 32);
          }

          else
          {
            v40 = ((v38 >> 16) & 0xFFFF0000 | (v38 << 32)) + 1;
          }

          if (v39 >= v40)
          {
            goto LABEL_30;
          }
        }

        else if (!v35)
        {
          goto LABEL_30;
        }

        v27 = v30 + 16;
        v26 = v32;
      }

LABEL_30:
      v28 = *v27;
      *(v29 + 3) = *(v27 + 3);
      *v29 = v28;
      if (v26 > ((v8 - 2) >> 1))
      {
        v6 -= 8;
        if (v27 != v6)
        {
          v24 = *v6;
          *(v27 + 3) = *(v6 + 3);
          *v27 = v24;
          *v6 = *v42;
          *(v6 + 3) = *&v42[12];
          sub_468AB8(a1, (v27 + 8), a4, (v27 - a1 + 32) >> 5);
          v25 = v8-- <= 2;
          if (v25)
          {
            return i;
          }

          goto LABEL_28;
        }

        *(v27 + 3) = *&v42[12];
        *v27 = *v42;
        v25 = v8-- <= 2;
        if (v25)
        {
          return i;
        }

        goto LABEL_28;
      }
    }
  }

  return a3;
}

uint64_t sub_468838(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 5)
  {
    return result;
  }

  v6 = v4 >> 4;
  v7 = (v4 >> 4) + 1;
  v8 = (result + 32 * v7);
  v9 = v6 + 2;
  if (v9 < a3)
  {
    v10 = *(v8 + 2);
    v11 = *(v8 + 6);
    v12 = v10 < v11;
    if (v10 == v11 && (v13 = v8[6], v14 = v8[14], v12 = v13 < v14, v14 == v13))
    {
      v15 = *(v8 + 4);
      v16 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!*(v8 + 6))
      {
        ++v16;
      }

      if ((v15 & 0xFF000000000000) != 0)
      {
        v17 = (v15 >> 16) & 0xFFFF0000 | (v15 << 32);
      }

      else
      {
        v17 = ((v15 >> 16) & 0xFFFF0000 | (v15 << 32)) + 1;
      }

      if (v16 >= v17)
      {
        goto LABEL_15;
      }
    }

    else if (!v12)
    {
      goto LABEL_15;
    }

    v8 += 8;
    v7 = v9;
  }

LABEL_15:
  v18 = *(v8 + 2);
  v19 = *(a4 + 2);
  v20 = v18 < v19;
  if (v18 == v19 && (v21 = v8[6], v22 = *(a4 + 6), v20 = v21 < v22, v22 == v21))
  {
    v23 = *a4;
    v24 = (*v8 << 32) | (*(v8 + 2) << 16);
    if (!*(v8 + 6))
    {
      ++v24;
    }

    v25 = (v23 >> 16) & 0xFFFF0000 | (v23 << 32);
    if ((v23 & 0xFF000000000000) == 0)
    {
      ++v25;
    }

    if (v24 < v25)
    {
      return result;
    }
  }

  else
  {
    if (v20)
    {
      return result;
    }

    v23 = *a4;
    v21 = *(a4 + 6);
  }

  v26 = a4[1];
  v27 = *v8;
  *(a4 + 12) = *(v8 + 3);
  *a4 = v27;
  if (v5 >= v7)
  {
    v29 = (v23 >> 16) & 0xFFFF0000 | (v23 << 32);
    if ((v23 & 0xFF000000000000) == 0)
    {
      ++v29;
    }

    while (1)
    {
      v33 = 2 * v7;
      v7 = (2 * v7) | 1;
      v28 = (result + 32 * v7);
      v34 = v33 + 2;
      if (v34 >= a3)
      {
        goto LABEL_33;
      }

      v35 = *(v28 + 2);
      v36 = *(v28 + 6);
      v37 = v35 < v36;
      if (v35 != v36)
      {
        break;
      }

      v38 = v28[6];
      v39 = v28[14];
      v37 = v38 < v39;
      if (v39 != v38)
      {
        break;
      }

      v40 = *(v28 + 4);
      v41 = (*v28 << 32) | (*(v28 + 2) << 16);
      if (!*(v28 + 6))
      {
        ++v41;
      }

      if ((v40 & 0xFF000000000000) != 0)
      {
        v42 = (v40 >> 16) & 0xFFFF0000 | (v40 << 32);
      }

      else
      {
        v42 = ((v40 >> 16) & 0xFFFF0000 | (v40 << 32)) + 1;
      }

      if (v41 < v42)
      {
        goto LABEL_32;
      }

LABEL_33:
      v30 = *(v28 + 2);
      v31 = v30 < v19;
      if (v30 == v19 && (v43 = v28[6], v31 = v43 < v21, v21 == v43))
      {
        v44 = (*v28 << 32) | (*(v28 + 2) << 16);
        if (!*(v28 + 6))
        {
          ++v44;
        }

        if (v44 < v29)
        {
LABEL_52:
          *v8 = v23;
          *(v8 + 1) = v26;
          *(v8 + 2) = v19;
          v8[6] = v21;
          return result;
        }
      }

      else if (v31)
      {
        goto LABEL_52;
      }

      v32 = *v28;
      *(v8 + 3) = *(v28 + 3);
      *v8 = v32;
      v8 = v28;
      if (v5 < v7)
      {
        goto LABEL_28;
      }
    }

    if (!v37)
    {
      goto LABEL_33;
    }

LABEL_32:
    v28 += 8;
    v7 = v34;
    goto LABEL_33;
  }

  v28 = v8;
LABEL_28:
  *v28 = v23;
  *(v28 + 1) = v26;
  *(v28 + 2) = v19;
  v28[6] = v21;
  return result;
}

uint64_t sub_468AB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 32 * (v4 >> 1));
  v7 = (a2 - 32);
  v8 = *(v6 + 2);
  v9 = *(a2 - 16);
  v10 = v8 < v9;
  if (v8 == v9 && (v11 = v6[6], v12 = *(a2 - 8), v10 = v11 < v12, v12 == v11))
  {
    v13 = *v7;
    v14 = (*v6 << 32) | (*(v6 + 2) << 16);
    if (!*(v6 + 6))
    {
      ++v14;
    }

    v15 = (v13 >> 16) & 0xFFFF0000 | (v13 << 32);
    if ((v13 & 0xFF000000000000) == 0)
    {
      ++v15;
    }

    if (v14 >= v15)
    {
      return result;
    }
  }

  else
  {
    if (!v10)
    {
      return result;
    }

    v13 = *(a2 - 32);
    v11 = *(a2 - 8);
  }

  v16 = *(a2 - 24);
  v17 = *v6;
  *(a2 - 20) = *(v6 + 3);
  *v7 = v17;
  if (v4 >= 2)
  {
    if ((v13 & 0xFF000000000000) != 0)
    {
      v19 = (v13 >> 16) & 0xFFFF0000 | (v13 << 32);
    }

    else
    {
      v19 = ((v13 >> 16) & 0xFFFF0000 | (v13 << 32)) + 1;
    }

    while (1)
    {
      v21 = v5 - 1;
      v5 = (v5 - 1) >> 1;
      v18 = (result + 32 * v5);
      v22 = *(v18 + 2);
      v23 = v22 < v9;
      if (v22 == v9 && (v24 = v18[6], v23 = v24 < v11, v11 == v24))
      {
        v25 = (*v18 << 32) | (*(v18 + 2) << 16);
        if (!*(v18 + 6))
        {
          ++v25;
        }

        if (v25 >= v19)
        {
LABEL_25:
          *v6 = v13;
          *(v6 + 1) = v16;
          *(v6 + 2) = v9;
          v6[6] = v11;
          return result;
        }
      }

      else if (!v23)
      {
        goto LABEL_25;
      }

      v20 = *v18;
      *(v6 + 3) = *(v18 + 3);
      *v6 = v20;
      v6 = (result + 32 * v5);
      if (v21 <= 1)
      {
        goto LABEL_14;
      }
    }
  }

  v18 = (result + 32 * (v4 >> 1));
LABEL_14:
  *v18 = v13;
  *(v18 + 1) = v16;
  *(v18 + 2) = v9;
  v18[6] = v11;
  return result;
}

uint64_t sub_468C10(uint64_t *a1)
{
  (*(**a1 + 32))(&v4);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  sub_45B1FC(&v9, a1[1], &v4);
  v2 = v4;
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return v2;
}

void sub_468D34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_468D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_45B1B8(va);
  _Unwind_Resume(a1);
}

void sub_468D64(uint64_t a1@<X0>, uint64_t a2@<X1>, void (__cdecl **a3)(std::ostringstream *__hidden this)@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v7 = a1;
  sub_46B518((a1 + 16), (a2 + 16), a3, &v147);
  v8 = v147 == -1 && v148 == 0xFFFF;
  if (!v8 || v149 != 1)
  {
    if (sub_1211940())
    {
      sub_19594F8(v146);
      sub_4A5C(v146, "Decoded single-segment path.", 28);
      operator new();
    }

    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    operator new();
  }

  v10 = *(v7 + 40);
  if (v10 == 0x7FFFFFFF || (v11 = *(a2 + 40), v11 == 0x7FFFFFFF))
  {
    v130 = llround(*(a4 + 60) * 1.2);
    v129 = a4;
    v133 = v7;
    if (!sub_1211940())
    {
      goto LABEL_21;
    }

LABEL_19:
    sub_19594F8(v146);
    sub_4A5C(v146, "Max exploration distance: ", 26);
    v15 = std::ostream::operator<<();
    sub_4A5C(v15, " m.", 3);
    operator new();
  }

  v12 = v11 - v10;
  if (v12 < 0)
  {
    v12 = -v12;
  }

  v13 = *(a4 + 72) + v12;
  v14 = llround(*(a4 + 64) * v12);
  if (v13 > v14)
  {
    v14 = v13;
  }

  v130 = v14;
  v129 = a4;
  v133 = v7;
  if (sub_1211940())
  {
    goto LABEL_19;
  }

LABEL_21:
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v141 = 0u;
  v142 = 0u;
  __dst = 0u;
  v16 = *(v7 + 24);
  if (v16 == *(v7 + 16))
  {
    goto LABEL_155;
  }

  do
  {
    v16 -= 4;
    (*(*a3 + 9))(a3, v16, &v143);
    if (*(v7 + 44) == 1)
    {
      v19 = v144;
    }

    else
    {
      v20 = (*(*a3 + 1))(a3, v16);
      v21 = v143;
      v19 = v144;
      if (v143 != v144)
      {
        while (__PAIR64__(*(v21 + 2), *v21) != __PAIR64__(WORD2(v20), v20) || v21[6] != BYTE6(v20))
        {
          v21 += 8;
          if (v21 == v144)
          {
            goto LABEL_42;
          }
        }

        if (v21 != v144)
        {
          v22 = v21 + 8;
          if (v21 + 8 != v144)
          {
            do
            {
              if (__PAIR64__(*(v22 + 2), *v22) != __PAIR64__(WORD2(v20), v20) || v22[6] != BYTE6(v20))
              {
                v23 = *v22;
                *(v21 + 3) = *(v22 + 3);
                *v21 = v23;
                v21 += 8;
              }

              v22 += 8;
            }

            while (v22 != v19);
            v19 = v144;
          }
        }
      }

      if (v21 != v19)
      {
        v19 = v21;
        v144 = v21;
      }
    }

LABEL_42:
    v24 = *v16;
    if (v19 != v143)
    {
      if (((v19 - v143) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v25 = *(&__dst + 1);
    if (v141 == *(&__dst + 1))
    {
      v26 = 0;
    }

    else
    {
      v26 = 73 * ((v141 - *(&__dst + 1)) >> 3) - 1;
    }

    v27 = *(&v142 + 1) + v142;
    if (v26 == *(&v142 + 1) + v142)
    {
      sub_46B6A8(&__dst);
      v25 = *(&__dst + 1);
      v27 = *(&v142 + 1) + v142;
    }

    v17 = *(v25 + 8 * (v27 / 0x49)) + 56 * (v27 % 0x49);
    *v17 = v24;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = -1;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    v18 = ++*(&v142 + 1);
    v7 = v133;
  }

  while (v16 != *(v133 + 16));
  if (!v18 || (v28 = v129, !*(v129 + 80)))
  {
LABEL_155:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v82 = *(&__dst + 1);
    v83 = v141;
    if (v141 == *(&__dst + 1))
    {
      goto LABEL_217;
    }

    goto LABEL_156;
  }

  v29 = 0;
  while (1)
  {
    v30 = v142;
    v31 = v18 - 1;
    v32 = *(&__dst + 1);
    v33 = *(*(&__dst + 1) + 8 * ((v30 + v18 - 1) / 0x49uLL)) + 56 * ((v30 + v18 - 1) % 0x49uLL);
    v34 = *(v33 + 32);
    v35 = *(v33 + 8);
    if (v34 != (*(v33 + 16) - v35) >> 3)
    {
      break;
    }

    if (v35)
    {
      *(v33 + 16) = v35;
      operator delete(v35);
      v32 = *(&__dst + 1);
      v18 = *(&v142 + 1);
      v30 = v142;
      v31 = *(&v142 + 1) - 1;
    }

    v36 = v141 - v32;
    v8 = v36 == 0;
    v37 = 73 * (v36 >> 3) - 1;
    *(&v142 + 1) = v31;
    if (v8)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    if ((v38 - (v30 + v18) + 1) < 0x92)
    {
      goto LABEL_153;
    }

    operator delete(*(v141 - 8));
    *&v141 = v141 - 8;
    v18 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_155;
    }

LABEL_154:
    if (v29 >= *(v28 + 80))
    {
      goto LABEL_155;
    }
  }

  if (v34 != -1)
  {
    v39 = &v35[8 * v34];
    *(v33 + 32) = v34 + 1;
    (*(*a3 + 4))(&__p, a3, v39, 0);
    if (*(v33 + 48) + HIDWORD(__p) <= v130)
    {
      (*(*a3 + 9))(a3, v39, &v143);
      if (*(v33 + 40) || *(v133 + 44) != 1)
      {
        v44 = (*(*a3 + 1))(a3, v39);
        v46 = v143;
        v45 = v144;
        if (v143 != v144)
        {
          while (__PAIR64__(*(v46 + 2), *v46) != __PAIR64__(WORD2(v44), v44) || v46[6] != BYTE6(v44))
          {
            v46 += 8;
            if (v46 == v144)
            {
              goto LABEL_142;
            }
          }

          if (v46 != v144)
          {
            v47 = v46 + 8;
            if (v46 + 8 != v144)
            {
              do
              {
                if (__PAIR64__(*(v47 + 2), *v47) != __PAIR64__(WORD2(v44), v44) || v47[6] != BYTE6(v44))
                {
                  v48 = *v47;
                  *(v46 + 3) = *(v47 + 3);
                  *v46 = v48;
                  v46 += 8;
                }

                v47 += 8;
              }

              while (v47 != v45);
              v45 = v144;
            }
          }
        }

        if (v46 == v45)
        {
LABEL_142:
          v42 = v29;
          v128 = *v39;
          v43 = v45 - v143;
          if (v45 != v143)
          {
LABEL_143:
            if ((v43 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }
        }

        else
        {
          v42 = v29;
          v144 = v46;
          v128 = *v39;
          v43 = v46 - v143;
          if (v46 != v143)
          {
            goto LABEL_143;
          }
        }
      }

      else
      {
        v42 = v29;
        v128 = *v39;
        v43 = v144 - v143;
        if (v144 != v143)
        {
          goto LABEL_143;
        }
      }

      v75 = v42;
      v76 = *(&__dst + 1);
      v77 = HIDWORD(__p);
      v78 = *(v33 + 48);
      if (v141 == *(&__dst + 1))
      {
        v79 = 0;
      }

      else
      {
        v79 = 73 * ((v141 - *(&__dst + 1)) >> 3) - 1;
      }

      v80 = *(&v142 + 1) + v142;
      if (v79 == *(&v142 + 1) + v142)
      {
        sub_46B6A8(&__dst);
        v76 = *(&__dst + 1);
        v80 = *(&v142 + 1) + v142;
      }

      v81 = *(v76 + 8 * (v80 / 0x49)) + 56 * (v80 % 0x49);
      *v81 = v128;
      *(v81 + 8) = 0;
      *(v81 + 16) = 0;
      *(v81 + 24) = 0;
      *(v81 + 32) = -1;
      *(v81 + 40) = v33;
      *(v81 + 48) = v78 + v77;
      ++*(&v142 + 1);
      v28 = v129;
      v29 = v75;
      if ((v139 & 0x80000000) == 0)
      {
LABEL_111:
        v59 = v137[0];
        if (!v137[0])
        {
          goto LABEL_153;
        }

LABEL_152:
        v137[1] = v59;
        operator delete(v59);
        goto LABEL_153;
      }
    }

    else
    {
      if (sub_1211940())
      {
        sub_19594F8(v146);
        v40 = sub_4A5C(v146, "Reached max exploration at ", 27);
        sub_30E900(v40, *v39);
        operator new();
      }

      if ((v139 & 0x80000000) == 0)
      {
        goto LABEL_111;
      }
    }

    operator delete(v138);
    v59 = v137[0];
    if (!v137[0])
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  if (sub_1211940())
  {
    sub_19594F8(v146);
    v41 = sub_4A5C(v146, "Exploring ", 10);
    sub_30E900(v41, *v33);
    operator new();
  }

  *(v33 + 32) = 0;
  v49 = *(a2 + 16);
  v50 = *(a2 + 24);
  if (v49 == v50)
  {
    ++v29;
    if (*(v33 + 16) - *(v33 + 8) <= 8uLL)
    {
      goto LABEL_153;
    }

    goto LABEL_97;
  }

  v51 = *(v33 + 16);
  if (*(v33 + 8) == v51)
  {
LABEL_87:
    ++v29;
    if (v51 - *(v33 + 8) <= 8)
    {
      goto LABEL_153;
    }

LABEL_97:
    LOWORD(v135) = (*(*a3 + 7))(a3, v33);
    v134 = (*(v33 + 48) == 0) & *(v133 + 44);
    v55 = *(v33 + 8);
    v54 = *(v33 + 16);
    if (v134)
    {
      v56 = *(v33 + 8);
      if (v55 != v54)
      {
LABEL_99:
        v146[0] = a3;
        v146[1] = &v135;
        v146[2] = &v134;
        sub_46BA70(v56, v54, v146, 126 - 2 * __clz((v54 - v56) >> 3), 1);
        goto LABEL_153;
      }
    }

    else
    {
      if (v55 != v54)
      {
        while (1)
        {
          v57 = (*(*a3 + 6))(a3, v55);
          v58 = v57 + 360 * ((v135 + 180) / 0x168u) - (v135 + 180);
          if ((v57 + 360 * ((v135 + 180) / 0x168u) - (v135 + 180)) > 180)
          {
            LOWORD(v58) = v58 - 360;
          }

          if (v58 < -179)
          {
            LOWORD(v58) = v58 + 360;
          }

          v58 = v58;
          if ((v58 & 0x8000u) != 0)
          {
            v58 = -v58;
          }

          if (v58 > *(v28 + 84))
          {
            break;
          }

          v55 += 2;
          if (v55 == v54)
          {
            v55 = v54;
            goto LABEL_125;
          }
        }

        if (v55 != v54)
        {
          for (i = v55 + 2; i != v54; i += 2)
          {
            v61 = (*(*a3 + 6))(a3, i);
            v62 = v61 + 360 * ((v135 + 180) / 0x168u) - (v135 + 180);
            if ((v61 + 360 * ((v135 + 180) / 0x168u) - (v135 + 180)) > 180)
            {
              LOWORD(v62) = v62 - 360;
            }

            if (v62 < -179)
            {
              LOWORD(v62) = v62 + 360;
            }

            v62 = v62;
            if ((v62 & 0x8000u) != 0)
            {
              v62 = -v62;
            }

            if (v62 <= *(v28 + 84))
            {
              v63 = *i;
              *(v55 + 3) = *(i + 3);
              *v55 = v63;
              v55 += 2;
            }
          }
        }
      }

LABEL_125:
      v56 = *(v33 + 8);
      v54 = *(v33 + 16);
      if (v55 == v54)
      {
        if (v56 != v54)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v54 = v55;
        *(v33 + 16) = v55;
        if (v56 != v55)
        {
          goto LABEL_99;
        }
      }
    }

    v64 = *(&v142 + 1);
    v65 = v142;
    v66 = *(&v142 + 1) - 1;
    v67 = *(&__dst + 1);
    v68 = *(*(&__dst + 1) + 8 * ((*(&v142 + 1) - 1 + v142) / 0x49uLL)) + 56 * ((*(&v142 + 1) - 1 + v142) % 0x49uLL);
    v69 = *(v68 + 8);
    if (v69)
    {
      *(v68 + 16) = v69;
      operator delete(v69);
      v67 = *(&__dst + 1);
      v64 = *(&v142 + 1);
      v65 = v142;
      v66 = *(&v142 + 1) - 1;
    }

    v70 = v141 - v67;
    v8 = v70 == 0;
    v71 = 73 * (v70 >> 3) - 1;
    *(&v142 + 1) = v66;
    if (v8)
    {
      v72 = 0;
    }

    else
    {
      v72 = v71;
    }

    if ((v72 - (v65 + v64) + 1) >= 0x92)
    {
      operator delete(*(v141 - 8));
      *&v141 = v141 - 8;
    }

    if (sub_1211940())
    {
      sub_19594F8(v146);
      v73 = sub_4A5C(v146, "Segment ", 8);
      v74 = sub_30E900(v73, *v33);
      sub_4A5C(v74, " does not have any outgoing segments after pruning.", 51);
      operator new();
    }

LABEL_153:
    v18 = *(&v142 + 1);
    if (!*(&v142 + 1))
    {
      goto LABEL_155;
    }

    goto LABEL_154;
  }

  while (1)
  {
    v52 = *v49;
    v53 = *(v33 + 8);
    while (__PAIR64__(*(v53 + 2), *v53) != __PAIR64__(WORD2(v52), v52) || *(v53 + 6) != BYTE6(v52))
    {
      v53 += 2;
      if (v53 == v51)
      {
        goto LABEL_89;
      }
    }

    if (v53 != v51)
    {
      break;
    }

LABEL_89:
    v49 += 4;
    if (v49 == v50)
    {
      goto LABEL_87;
    }
  }

  v94 = *(v33 + 8);
  v95 = *v94;
  v96 = *v53;
  *(v94 + 3) = *(v53 + 3);
  *v94 = v96;
  *v53 = v95;
  *(v53 + 6) = BYTE6(v95);
  *(v53 + 2) = WORD2(v95);
  *(v33 + 32) = 1;
  v97 = v143;
  v144 = v143;
  v98 = *(*(&__dst + 1) + 8 * ((*(&v142 + 1) + v142 - 1) / 0x49uLL)) + 56 * ((*(&v142 + 1) + v142 - 1) % 0x49uLL);
  do
  {
    v99 = v98;
    v100 = *(v98 + 8) + 8 * *(v98 + 32);
    if (v97 < v145)
    {
      *v97 = *(v100 - 8);
      v97 += 8;
    }

    else
    {
      v101 = v143;
      v102 = v97 - v143;
      v103 = (v97 - v143) >> 3;
      v104 = v103 + 1;
      if ((v103 + 1) >> 61)
      {
        goto LABEL_219;
      }

      v105 = v145 - v143;
      if ((v145 - v143) >> 2 > v104)
      {
        v104 = v105 >> 2;
      }

      if (v105 >= 0x7FFFFFFFFFFFFFF8)
      {
        v106 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v106 = v104;
      }

      if (v106)
      {
        if (!(v106 >> 61))
        {
          operator new();
        }

        goto LABEL_220;
      }

      v107 = v103;
      v108 = (8 * v103);
      v109 = *(v100 - 8);
      v110 = &v108[-v107];
      *v108 = v109;
      v97 = (v108 + 1);
      memcpy(v110, v101, v102);
      v143 = v110;
      v144 = v97;
      v145 = 0;
      if (v101)
      {
        operator delete(v101);
      }
    }

    v144 = v97;
    v98 = v99[5];
  }

  while (v98);
  if (v97 >= v145)
  {
    v112 = v143;
    v113 = v97 - v143;
    v114 = (v97 - v143) >> 3;
    v115 = v114 + 1;
    if ((v114 + 1) >> 61)
    {
LABEL_219:
      sub_1794();
    }

    v116 = v145 - v143;
    if ((v145 - v143) >> 2 > v115)
    {
      v115 = v116 >> 2;
    }

    if (v116 >= 0x7FFFFFFFFFFFFFF8)
    {
      v117 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v117 = v115;
    }

    if (v117)
    {
      if (!(v117 >> 61))
      {
        operator new();
      }

LABEL_220:
      sub_1808();
    }

    v118 = (v97 - v143) >> 3;
    v119 = (8 * v114);
    v120 = (8 * v114 - 8 * v118);
    *v119 = *v99;
    v111 = (v119 + 1);
    memcpy(v120, v112, v113);
    v143 = v120;
    v144 = v111;
    v145 = 0;
    if (v112)
    {
      operator delete(v112);
    }
  }

  else
  {
    *v97 = *v99;
    v111 = v97 + 8;
  }

  v144 = v111;
  v121 = v143;
  v122 = (v111 - 8);
  if (v143 != v111 && v122 > v143)
  {
    v124 = v143 + 8;
    do
    {
      v125 = *(v124 - 1);
      v126 = *v122;
      *(v124 - 5) = *(v122 + 3);
      *(v124 - 2) = v126;
      *v122 = v125;
      *(v122 + 6) = BYTE6(v125);
      *(v122 + 4) = WORD2(v125);
      v122 -= 8;
      v127 = v124 >= v122;
      v124 += 8;
    }

    while (!v127);
    v121 = v143;
    v111 = v144;
  }

  *a5 = v121;
  a5[1] = v111;
  a5[2] = v145;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v82 = *(&__dst + 1);
  v83 = v141;
  if (v141 == *(&__dst + 1))
  {
LABEL_217:
    *(&v142 + 1) = 0;
    v91 = 0;
    goto LABEL_166;
  }

LABEL_156:
  v84 = &v82[v142 / 0x49];
  v85 = *v84;
  v86 = *v84 + 56 * (v142 % 0x49);
  v87 = v82[(*(&v142 + 1) + v142) / 0x49uLL] + 56 * ((*(&v142 + 1) + v142) % 0x49uLL);
  v88 = v83;
  if (v86 != v87)
  {
    do
    {
      v89 = *(v86 + 8);
      if (v89)
      {
        *(v86 + 16) = v89;
        operator delete(v89);
        v85 = *v84;
      }

      v86 += 56;
      if (v86 - v85 == 4088)
      {
        v90 = v84[1];
        ++v84;
        v85 = v90;
        v86 = v90;
      }
    }

    while (v86 != v87);
    v83 = v141;
    v82 = *(&__dst + 1);
    v88 = v141;
  }

  *(&v142 + 1) = 0;
  v91 = v88 - v82;
  if (v91 >= 3)
  {
    do
    {
      operator delete(*v82);
      v82 = (*(&__dst + 1) + 8);
      *(&__dst + 1) = v82;
      v83 = v141;
      v91 = (v141 - v82) >> 3;
    }

    while (v91 > 2);
  }

LABEL_166:
  if (v91 == 1)
  {
    v92 = 36;
LABEL_170:
    *&v142 = v92;
  }

  else if (v91 == 2)
  {
    v92 = 73;
    goto LABEL_170;
  }

  if (v82 != v83)
  {
    do
    {
      v93 = *v82++;
      operator delete(v93);
    }

    while (v82 != v83);
    if (v141 != *(&__dst + 1))
    {
      *&v141 = v141 + ((*(&__dst + 1) - v141 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__dst)
  {
    operator delete(__dst);
  }

  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }
}

void sub_46AA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a60);
  sub_46F3A0(&a48);
  v62 = *(v60 + 48);
  if (!v62)
  {
    _Unwind_Resume(a1);
  }

  *(v60 + 56) = v62;
  operator delete(v62);
  _Unwind_Resume(a1);
}

BOOL sub_46ACAC(uint64_t a1, uint64_t **a2, void **a3)
{
  v5 = a3[1];
  v6 = **a2;
  if (__PAIR64__(*(v5 - 2), *(v5 - 2)) == __PAIR64__(WORD2(v6), v6) && *(v5 - 2) == BYTE6(v6))
  {
    return 1;
  }

  v8 = v5 - *a3;
  if (v8 <= 8)
  {
    result = sub_12119FC();
    if (result)
    {
      sub_19594F8(&v25);
      sub_4A5C(&v25, "Previous pathlet is a single-segment pathlet, alignment not possible.", 69);
      operator new();
    }

    return result;
  }

  v22 = *(*a3 + v8 - 16);
  v23 = 0;
  v24 = 0uLL;
  (*(*a1 + 64))(a1, &v22, &v23);
  v9 = v23;
  if (v23 != v24)
  {
    v10 = **a2;
    while (__PAIR64__(*(v9 + 2), *v9) != __PAIR64__(WORD2(v10), v10) || *(v9 + 6) != BYTE6(v10))
    {
      v9 += 2;
      if (v9 == v24)
      {
        goto LABEL_16;
      }
    }
  }

  if (v9 == v24)
  {
LABEL_16:
    result = sub_1211B74();
    if (result)
    {
      sub_19594F8(&v25);
      sub_4A5C(&v25, "Could not align pathlets.", 25);
      operator new();
    }

    v19 = v23;
    if (v23)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v12 = a3[1];
    v11 = a3[2];
    v13 = (v12 - 1);
    a3[1] = v12 - 1;
    if ((v12 - 1) >= v11)
    {
      v14 = *a3;
      v15 = v13 - *a3;
      v16 = (v15 >> 3) + 1;
      if (v16 >> 61)
      {
        sub_1794();
      }

      v17 = v11 - v14;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v20 = (8 * (v15 >> 3));
      *v20 = *v9;
      v12 = v20 + 1;
      memcpy(0, v14, v15);
      *a3 = 0;
      a3[1] = v12;
      a3[2] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v13 = *v9;
    }

    a3[1] = v12;
    result = 1;
    v19 = v23;
    if (v23)
    {
LABEL_32:
      *&v24 = v19;
      v21 = result;
      operator delete(v19);
      return v21;
    }
  }

  return result;
}

void sub_46B428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_1959728(&a29);
  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

__n128 sub_46B518@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*a1 != a1[1])
  {
    while (1)
    {
      (*(*a3 + 32))(&v15, a3, v5, 1);
      v10 = HIDWORD(v15);
      if ((v19 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v18);
      v11 = __p;
      if (__p)
      {
        goto LABEL_6;
      }

LABEL_7:
      v12 = *a2;
      v13 = a2[1];
      if (*a2 != v13)
      {
        while (__PAIR64__(*(v5 + 4), *v5) != __PAIR64__(WORD2(*v12), *v12) || *(v5 + 6) != BYTE6(*v12))
        {
          v12 += 32;
          if (v12 == v13)
          {
            goto LABEL_3;
          }
        }
      }

      if (v12 != v13 && llround(*(v5 + 8) * v10) <= llround(*(v12 + 8) * v10))
      {
        result = *v12;
        v14 = *(v12 + 16);
        *a4 = *v12;
        *(a4 + 16) = v14;
        return result;
      }

LABEL_3:
      v5 += 32;
      if (v5 == a1[1])
      {
        goto LABEL_17;
      }
    }

    v11 = __p;
    if (!__p)
    {
      goto LABEL_7;
    }

LABEL_6:
    v17 = v11;
    operator delete(v11);
    goto LABEL_7;
  }

LABEL_17:
  result.n128_u64[0] = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 6) = 1;
  *(a4 + 4) = -1;
  *a4 = -1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0x7FFFFFFF;
  return result;
}

void *sub_46B6A8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_46BA18(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_46BA70(uint64_t result, int *a2, void *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 2;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v31 = (*(**a3 + 48))(*a3, a2 - 1);
        v32 = v31 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v31 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v32) = v32 - 360;
        }

        if (v32 < -179)
        {
          LOWORD(v32) = v32 + 360;
        }

        if ((v32 & 0x8000u) == 0)
        {
          v33 = v32;
        }

        else
        {
          v33 = -v32;
        }

        result = (*(**a3 + 48))(*a3, v10);
        v34 = result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v34) = v34 - 360;
        }

        if (v34 < -179)
        {
          LOWORD(v34) = v34 + 360;
        }

        v34 = v34;
        if ((v34 & 0x8000u) != 0)
        {
          v34 = -v34;
        }

        v25 = v33 >= v34;
        v35 = v33 > v34;
        v36 = !v25;
        if (!*a3[2])
        {
          v35 = v36;
        }

        if (v35)
        {
          v37 = *v10;
          v38 = *v9;
          *(v10 + 3) = *(a2 - 5);
          *v10 = v38;
          *v9 = v37;
          *(a2 - 2) = BYTE6(v37);
          *(a2 - 2) = WORD2(v37);
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return sub_46C628(v10, (v10 + 8), (v10 + 16), a2 - 2, a3);
    }

    if (v13 == 5)
    {

      return sub_46CA48(v10, (v10 + 8), (v10 + 16), (v10 + 24), a2 - 2, a3);
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_46CFB4(v10, a2, a3);
      }

      else
      {

        return sub_46D2BC(v10, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v39 = (v13 - 2) >> 1;
        v40 = v39 + 1;
        v41 = (v10 + 8 * v39);
        do
        {
          sub_46E8E4(v10, a3, (a2 - v10) >> 3, v41);
          v41 -= 2;
          --v40;
        }

        while (v40);
        do
        {
          result = sub_46EE5C(v10, a2, a3, v13);
          a2 -= 2;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v10 + 8 * (v13 >> 1);
    if (v13 < 0x81)
    {
      sub_46C084((v8 + 8 * (v13 >> 1)), v8, a2 - 2, a3);
      if (a5)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_46C084(v8, (v8 + 8 * (v13 >> 1)), a2 - 2, a3);
      v16 = 8 * v14;
      v17 = (8 * v14 + v8 - 8);
      sub_46C084((v8 + 8), v17, a2 - 4, a3);
      sub_46C084((v8 + 16), (v8 + 8 + v16), a2 - 6, a3);
      sub_46C084(v17, v15, (v8 + 8 + v16), a3);
      v18 = *v8;
      v19 = *(v15 + 3);
      *v8 = *v15;
      *(v8 + 3) = v19;
      *v15 = v18;
      *(v15 + 6) = BYTE6(v18);
      *(v15 + 4) = WORD2(v18);
      if (a5)
      {
        goto LABEL_36;
      }
    }

    v20 = (*(**a3 + 48))(*a3, v8 - 8);
    v21 = v20 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
    if ((v20 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
    {
      LOWORD(v21) = v21 - 360;
    }

    if (v21 < -179)
    {
      LOWORD(v21) = v21 + 360;
    }

    if ((v21 & 0x8000u) == 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = -v21;
    }

    v23 = (*(**a3 + 48))(*a3, v8);
    v24 = v23 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
    if ((v23 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
    {
      LOWORD(v24) = v24 - 360;
    }

    if (v24 < -179)
    {
      LOWORD(v24) = v24 + 360;
    }

    v24 = v24;
    if ((v24 & 0x8000u) != 0)
    {
      v24 = -v24;
    }

    v25 = v22 >= v24;
    v26 = v22 > v24;
    v27 = !v25;
    if (!*a3[2])
    {
      v26 = v27;
    }

    if (!v26)
    {
      result = sub_46D5A4(v8, a2, a3);
      v10 = result;
      goto LABEL_41;
    }

LABEL_36:
    v28 = sub_46DD2C(v8, a2, a3);
    if ((v29 & 1) == 0)
    {
      goto LABEL_39;
    }

    v30 = sub_46E3BC(v8, v28, a3);
    v10 = (v28 + 2);
    result = sub_46E3BC((v28 + 2), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v28;
      if (v30)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v30)
    {
LABEL_39:
      result = sub_46BA70(v8, v28, a3, -v12, a5 & 1);
      v10 = (v28 + 2);
LABEL_41:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return sub_46C084(v10, (v10 + 8), a2 - 2, a3);
}

uint64_t sub_46C084(uint64_t *a1, int *a2, int *a3, void *a4)
{
  v8 = (*(**a4 + 48))();
  v9 = v8 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180);
  if ((v8 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180)) > 180)
  {
    LOWORD(v9) = v9 - 360;
  }

  if (v9 < -179)
  {
    LOWORD(v9) = v9 + 360;
  }

  if ((v9 & 0x8000u) == 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  v11 = (*(**a4 + 48))(*a4, a1);
  v12 = v11 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180);
  if ((v11 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180)) > 180)
  {
    LOWORD(v12) = v12 - 360;
  }

  if (v12 < -179)
  {
    LOWORD(v12) = v12 + 360;
  }

  v12 = v12;
  if ((v12 & 0x8000u) != 0)
  {
    v12 = -v12;
  }

  v13 = v10 >= v12;
  v14 = v10 > v12;
  v15 = !v13;
  if (*a4[2])
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = (*(**a4 + 48))(*a4, a3);
  v18 = v17 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180);
  if ((v17 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180)) > 180)
  {
    LOWORD(v18) = v18 - 360;
  }

  if (v18 < -179)
  {
    LOWORD(v18) = v18 + 360;
  }

  if ((v18 & 0x8000u) == 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = -v18;
  }

  v20 = (*(**a4 + 48))(*a4, a2);
  v21 = v20 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180);
  if ((v20 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180)) > 180)
  {
    LOWORD(v21) = v21 - 360;
  }

  if (v21 < -179)
  {
    LOWORD(v21) = v21 + 360;
  }

  v21 = v21;
  if ((v21 & 0x8000u) != 0)
  {
    v21 = -v21;
  }

  v13 = v19 >= v21;
  v22 = v19 > v21;
  v23 = !v13;
  if (*a4[2])
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  if (v16)
  {
    v25 = *a1;
    if (v24)
    {
      v26 = *a3;
      *(a1 + 3) = *(a3 + 3);
      *a1 = v26;
      *(a3 + 6) = BYTE6(v25);
      *(a3 + 2) = WORD2(v25);
      *a3 = v25;
    }

    else
    {
      v38 = *a2;
      *(a1 + 3) = *(a2 + 3);
      *a1 = v38;
      *(a2 + 6) = BYTE6(v25);
      *(a2 + 2) = WORD2(v25);
      *a2 = v25;
      v39 = (*(**a4 + 48))(*a4, a3);
      v40 = v39 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180);
      if ((v39 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180)) > 180)
      {
        LOWORD(v40) = v40 - 360;
      }

      if (v40 < -179)
      {
        LOWORD(v40) = v40 + 360;
      }

      if ((v40 & 0x8000u) == 0)
      {
        v41 = v40;
      }

      else
      {
        v41 = -v40;
      }

      v42 = (*(**a4 + 48))(*a4, a2);
      v43 = v42 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180);
      if ((v42 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180)) > 180)
      {
        LOWORD(v43) = v43 - 360;
      }

      if (v43 < -179)
      {
        LOWORD(v43) = v43 + 360;
      }

      v43 = v43;
      if ((v43 & 0x8000u) != 0)
      {
        v43 = -v43;
      }

      v13 = v41 >= v43;
      v44 = v41 > v43;
      v45 = !v13;
      if (!*a4[2])
      {
        v44 = v45;
      }

      if (v44)
      {
        v46 = *a2;
        v47 = *a3;
        *(a2 + 3) = *(a3 + 3);
        *a2 = v47;
        *a3 = v46;
        *(a3 + 6) = BYTE6(v46);
        *(a3 + 2) = WORD2(v46);
      }
    }

    return 1;
  }

  if (v24)
  {
    v27 = *a2;
    v28 = *a3;
    *(a2 + 3) = *(a3 + 3);
    *a2 = v28;
    *a3 = v27;
    *(a3 + 6) = BYTE6(v27);
    *(a3 + 2) = WORD2(v27);
    v29 = (*(**a4 + 48))(*a4, a2);
    v30 = v29 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180);
    if ((v29 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180)) > 180)
    {
      LOWORD(v30) = v30 - 360;
    }

    if (v30 < -179)
    {
      LOWORD(v30) = v30 + 360;
    }

    if ((v30 & 0x8000u) == 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = -v30;
    }

    v32 = (*(**a4 + 48))(*a4, a1);
    v33 = v32 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180);
    if ((v32 + 360 * ((*a4[1] + 180) / 0x168u) - (*a4[1] + 180)) > 180)
    {
      LOWORD(v33) = v33 - 360;
    }

    if (v33 < -179)
    {
      LOWORD(v33) = v33 + 360;
    }

    v33 = v33;
    if ((v33 & 0x8000u) != 0)
    {
      v33 = -v33;
    }

    v13 = v31 >= v33;
    v34 = v31 > v33;
    v35 = !v13;
    if (!*a4[2])
    {
      v34 = v35;
    }

    if (v34)
    {
      v36 = *a1;
      v37 = *a2;
      *(a1 + 3) = *(a2 + 3);
      *a1 = v37;
      *a2 = v36;
      *(a2 + 6) = BYTE6(v36);
      *(a2 + 2) = WORD2(v36);
    }

    return 1;
  }

  return 0;
}

uint64_t sub_46C628(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4, void *a5)
{
  sub_46C084(a1, a2, a3, a5);
  v10 = (*(**a5 + 48))(*a5, a4);
  v11 = v10 + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180);
  if ((v10 + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180)) > 180)
  {
    LOWORD(v11) = v11 - 360;
  }

  if (v11 < -179)
  {
    LOWORD(v11) = v11 + 360;
  }

  if ((v11 & 0x8000u) == 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  result = (*(**a5 + 48))(*a5, a3);
  v14 = result + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180);
  if ((result + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180)) > 180)
  {
    LOWORD(v14) = v14 - 360;
  }

  if (v14 < -179)
  {
    LOWORD(v14) = v14 + 360;
  }

  v14 = v14;
  if ((v14 & 0x8000u) != 0)
  {
    v14 = -v14;
  }

  v15 = v12 >= v14;
  v16 = v12 > v14;
  v17 = !v15;
  if (!*a5[2])
  {
    v16 = v17;
  }

  if (v16)
  {
    v18 = *a3;
    v19 = *a4;
    *(a3 + 3) = *(a4 + 3);
    *a3 = v19;
    *a4 = v18;
    *(a4 + 6) = BYTE6(v18);
    *(a4 + 2) = WORD2(v18);
    v20 = (*(**a5 + 48))(*a5, a3);
    v21 = v20 + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180);
    if ((v20 + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180)) > 180)
    {
      LOWORD(v21) = v21 - 360;
    }

    if (v21 < -179)
    {
      LOWORD(v21) = v21 + 360;
    }

    if ((v21 & 0x8000u) == 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = -v21;
    }

    result = (*(**a5 + 48))(*a5, a2);
    v23 = result + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180);
    if ((result + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180)) > 180)
    {
      LOWORD(v23) = v23 - 360;
    }

    if (v23 < -179)
    {
      LOWORD(v23) = v23 + 360;
    }

    v23 = v23;
    if ((v23 & 0x8000u) != 0)
    {
      v23 = -v23;
    }

    v15 = v22 >= v23;
    v24 = v22 > v23;
    v25 = !v15;
    if (!*a5[2])
    {
      v24 = v25;
    }

    if (v24)
    {
      v26 = *a2;
      v27 = *a3;
      *(a2 + 3) = *(a3 + 3);
      *a2 = v27;
      *a3 = v26;
      *(a3 + 6) = BYTE6(v26);
      *(a3 + 2) = WORD2(v26);
      v28 = (*(**a5 + 48))(*a5, a2);
      v29 = v28 + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180);
      if ((v28 + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180)) > 180)
      {
        LOWORD(v29) = v29 - 360;
      }

      if (v29 < -179)
      {
        LOWORD(v29) = v29 + 360;
      }

      if ((v29 & 0x8000u) == 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = -v29;
      }

      result = (*(**a5 + 48))(*a5, a1);
      v31 = result + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180);
      if ((result + 360 * ((*a5[1] + 180) / 0x168u) - (*a5[1] + 180)) > 180)
      {
        LOWORD(v31) = v31 - 360;
      }

      if (v31 < -179)
      {
        LOWORD(v31) = v31 + 360;
      }

      v31 = v31;
      if ((v31 & 0x8000u) != 0)
      {
        v31 = -v31;
      }

      v15 = v30 >= v31;
      v32 = v30 > v31;
      v33 = !v15;
      if (!*a5[2])
      {
        v32 = v33;
      }

      if (v32)
      {
        v34 = *a1;
        v35 = *a2;
        *(a1 + 3) = *(a2 + 3);
        *a1 = v35;
        *a2 = v34;
        *(a2 + 6) = BYTE6(v34);
        *(a2 + 2) = WORD2(v34);
      }
    }
  }

  return result;
}

uint64_t sub_46CA48(uint64_t a1, int *a2, int *a3, uint64_t *a4, int *a5, void *a6)
{
  sub_46C628(a1, a2, a3, a4, a6);
  v12 = (*(**a6 + 48))(*a6, a5);
  v13 = v12 + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180);
  if ((v12 + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180)) > 180)
  {
    LOWORD(v13) = v13 - 360;
  }

  if (v13 < -179)
  {
    LOWORD(v13) = v13 + 360;
  }

  if ((v13 & 0x8000u) == 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  result = (*(**a6 + 48))(*a6, a4);
  v16 = result + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180);
  if ((result + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180)) > 180)
  {
    LOWORD(v16) = v16 - 360;
  }

  if (v16 < -179)
  {
    LOWORD(v16) = v16 + 360;
  }

  v16 = v16;
  if ((v16 & 0x8000u) != 0)
  {
    v16 = -v16;
  }

  v17 = v14 >= v16;
  v18 = v14 > v16;
  v19 = !v17;
  if (!*a6[2])
  {
    v18 = v19;
  }

  if (v18)
  {
    v20 = *a4;
    v21 = *a5;
    *(a4 + 3) = *(a5 + 3);
    *a4 = v21;
    *a5 = v20;
    *(a5 + 6) = BYTE6(v20);
    *(a5 + 2) = WORD2(v20);
    v22 = (*(**a6 + 48))(*a6, a4);
    v23 = v22 + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180);
    if ((v22 + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180)) > 180)
    {
      LOWORD(v23) = v23 - 360;
    }

    if (v23 < -179)
    {
      LOWORD(v23) = v23 + 360;
    }

    if ((v23 & 0x8000u) == 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = -v23;
    }

    result = (*(**a6 + 48))(*a6, a3);
    v25 = result + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180);
    if ((result + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180)) > 180)
    {
      LOWORD(v25) = v25 - 360;
    }

    if (v25 < -179)
    {
      LOWORD(v25) = v25 + 360;
    }

    v25 = v25;
    if ((v25 & 0x8000u) != 0)
    {
      v25 = -v25;
    }

    v17 = v24 >= v25;
    v26 = v24 > v25;
    v27 = !v17;
    if (!*a6[2])
    {
      v26 = v27;
    }

    if (v26)
    {
      v28 = *a3;
      v29 = *a4;
      *(a3 + 3) = *(a4 + 3);
      *a3 = v29;
      *a4 = v28;
      *(a4 + 6) = BYTE6(v28);
      *(a4 + 2) = WORD2(v28);
      v30 = (*(**a6 + 48))(*a6, a3);
      v31 = v30 + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180);
      if ((v30 + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180)) > 180)
      {
        LOWORD(v31) = v31 - 360;
      }

      if (v31 < -179)
      {
        LOWORD(v31) = v31 + 360;
      }

      if ((v31 & 0x8000u) == 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = -v31;
      }

      result = (*(**a6 + 48))(*a6, a2);
      v33 = result + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180);
      if ((result + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180)) > 180)
      {
        LOWORD(v33) = v33 - 360;
      }

      if (v33 < -179)
      {
        LOWORD(v33) = v33 + 360;
      }

      v33 = v33;
      if ((v33 & 0x8000u) != 0)
      {
        v33 = -v33;
      }

      v17 = v32 >= v33;
      v34 = v32 > v33;
      v35 = !v17;
      if (!*a6[2])
      {
        v34 = v35;
      }

      if (v34)
      {
        v36 = *a2;
        v37 = *a3;
        *(a2 + 3) = *(a3 + 3);
        *a2 = v37;
        *a3 = v36;
        *(a3 + 6) = BYTE6(v36);
        *(a3 + 2) = WORD2(v36);
        v38 = (*(**a6 + 48))(*a6, a2);
        v39 = v38 + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180);
        if ((v38 + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180)) > 180)
        {
          LOWORD(v39) = v39 - 360;
        }

        if (v39 < -179)
        {
          LOWORD(v39) = v39 + 360;
        }

        if ((v39 & 0x8000u) == 0)
        {
          v40 = v39;
        }

        else
        {
          v40 = -v39;
        }

        result = (*(**a6 + 48))(*a6, a1);
        v41 = result + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180);
        if ((result + 360 * ((*a6[1] + 180) / 0x168u) - (*a6[1] + 180)) > 180)
        {
          LOWORD(v41) = v41 - 360;
        }

        if (v41 < -179)
        {
          LOWORD(v41) = v41 + 360;
        }

        v41 = v41;
        if ((v41 & 0x8000u) != 0)
        {
          v41 = -v41;
        }

        v17 = v40 >= v41;
        v42 = v40 > v41;
        v43 = !v17;
        if (!*a6[2])
        {
          v42 = v43;
        }

        if (v42)
        {
          v44 = *a1;
          v45 = *a2;
          *(a1 + 3) = *(a2 + 3);
          *a1 = v45;
          *a2 = v44;
          *(a2 + 6) = BYTE6(v44);
          *(a2 + 2) = WORD2(v44);
        }
      }
    }
  }

  return result;
}

uint64_t sub_46CFB4(uint64_t result, void *a2, void *a3)
{
  if (result != a2)
  {
    v28[11] = v3;
    v28[12] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v12 = v10;
        v10 = v7;
        v13 = (*(**a3 + 48))(*a3, v7);
        v14 = v13 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v13 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v14) = v14 - 360;
        }

        if (v14 < -179)
        {
          LOWORD(v14) = v14 + 360;
        }

        if ((v14 & 0x8000u) == 0)
        {
          v15 = v14;
        }

        else
        {
          v15 = -v14;
        }

        result = (*(**a3 + 48))(*a3, v12);
        v16 = result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v16) = v16 - 360;
        }

        if (v16 < -179)
        {
          LOWORD(v16) = v16 + 360;
        }

        v16 = v16;
        if ((v16 & 0x8000u) != 0)
        {
          v16 = -v16;
        }

        v17 = v15 >= v16;
        v18 = v15 > v16;
        v19 = !v17;
        if (!*a3[2])
        {
          v18 = v19;
        }

        if (v18)
        {
          v28[0] = *v10;
          v20 = v9;
          do
          {
            v21 = v6 + v20;
            *(v21 + 2) = *(v6 + v20);
            *(v21 + 11) = *(v6 + v20 + 3);
            if (!v20)
            {
              v11 = v6;
              goto LABEL_5;
            }

            v20 -= 8;
            v22 = (*(**a3 + 48))(*a3, v28);
            v23 = v22 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
            if ((v22 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
            {
              LOWORD(v23) = v23 - 360;
            }

            if (v23 < -179)
            {
              LOWORD(v23) = v23 + 360;
            }

            if ((v23 & 0x8000u) == 0)
            {
              v24 = v23;
            }

            else
            {
              v24 = -v23;
            }

            result = (*(**a3 + 48))(*a3, v6 + v20);
            v25 = result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
            if ((result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
            {
              LOWORD(v25) = v25 - 360;
            }

            if (v25 < -179)
            {
              LOWORD(v25) = v25 + 360;
            }

            v25 = v25;
            if ((v25 & 0x8000u) != 0)
            {
              v25 = -v25;
            }

            v17 = v24 >= v25;
            v26 = v24 > v25;
            v27 = !v17;
            if (!*a3[2])
            {
              v26 = v27;
            }
          }

          while (v26);
          v11 = (v6 + v20 + 8);
LABEL_5:
          *v11 = v28[0];
          *(v11 + 3) = *(v28 + 3);
        }

        v7 = v10 + 1;
        v9 += 8;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_46D2BC(uint64_t result, void *a2, void *a3)
{
  if (result != a2)
  {
    v25[9] = v3;
    v25[10] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = (result - 8);
      do
      {
        v10 = v6;
        v6 = v7;
        v11 = (*(**a3 + 48))(*a3, v7);
        v12 = v11 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v11 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v12) = v12 - 360;
        }

        if (v12 < -179)
        {
          LOWORD(v12) = v12 + 360;
        }

        if ((v12 & 0x8000u) == 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = -v12;
        }

        result = (*(**a3 + 48))(*a3, v10);
        v14 = result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v14) = v14 - 360;
        }

        if (v14 < -179)
        {
          LOWORD(v14) = v14 + 360;
        }

        v14 = v14;
        if ((v14 & 0x8000u) != 0)
        {
          v14 = -v14;
        }

        v15 = v13 >= v14;
        v16 = v13 > v14;
        v17 = !v15;
        if (!*a3[2])
        {
          v16 = v17;
        }

        if (v16)
        {
          v25[0] = *v6;
          v18 = v9;
          do
          {
            v18[4] = v18[2];
            *(v18 + 19) = *(v18 + 11);
            v19 = (*(**a3 + 48))(*a3, v25);
            v20 = v19 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
            if ((v19 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
            {
              LOWORD(v20) = v20 - 360;
            }

            if (v20 < -179)
            {
              LOWORD(v20) = v20 + 360;
            }

            if ((v20 & 0x8000u) == 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = -v20;
            }

            result = (*(**a3 + 48))(*a3, v18);
            v22 = result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
            if ((result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
            {
              LOWORD(v22) = v22 - 360;
            }

            if (v22 < -179)
            {
              LOWORD(v22) = v22 + 360;
            }

            v22 = v22;
            if ((v22 & 0x8000u) != 0)
            {
              v22 = -v22;
            }

            v15 = v21 >= v22;
            v23 = v21 > v22;
            v24 = !v15;
            if (!*a3[2])
            {
              v23 = v24;
            }

            v18 -= 2;
          }

          while (v23);
          v18[4] = v25[0];
          *(v18 + 19) = *(v25 + 3);
        }

        v7 = v6 + 1;
        v9 += 2;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_46D5A4(uint64_t *a1, int *a2, void *a3)
{
  v4 = a2;
  v59 = *a1;
  v6 = a2 - 2;
  v7 = (*(**a3 + 48))(*a3, &v59);
  v8 = v7 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
  if ((v7 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
  {
    LOWORD(v8) = v8 - 360;
  }

  if (v8 < -179)
  {
    LOWORD(v8) = v8 + 360;
  }

  if ((v8 & 0x8000u) == 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  v10 = (*(**a3 + 48))(*a3, v6);
  v11 = v10 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
  if ((v10 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
  {
    LOWORD(v11) = v11 - 360;
  }

  if (v11 < -179)
  {
    LOWORD(v11) = v11 + 360;
  }

  v11 = v11;
  if ((v11 & 0x8000u) != 0)
  {
    v11 = -v11;
  }

  v12 = v9 >= v11;
  v13 = v9 > v11;
  v14 = !v12;
  if (!*a3[2])
  {
    v13 = v14;
  }

  if (v13)
  {
    v15 = a1;
    do
    {
      ++v15;
      v16 = (*(**a3 + 48))(*a3, &v59);
      v17 = v16 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v16 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v17) = v17 - 360;
      }

      if (v17 < -179)
      {
        LOWORD(v17) = v17 + 360;
      }

      if ((v17 & 0x8000u) == 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = -v17;
      }

      v19 = (*(**a3 + 48))(*a3, v15);
      v20 = v19 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v19 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v20) = v20 - 360;
      }

      if (v20 < -179)
      {
        LOWORD(v20) = v20 + 360;
      }

      v20 = v20;
      if ((v20 & 0x8000u) != 0)
      {
        v20 = -v20;
      }

      v12 = v18 >= v20;
      v21 = v18 > v20;
      v22 = !v12;
      if (!*a3[2])
      {
        v21 = v22;
      }
    }

    while (!v21);
  }

  else
  {
    v23 = a1 + 1;
    do
    {
      v15 = v23;
      if (v23 >= v4)
      {
        break;
      }

      v24 = (*(**a3 + 48))(*a3, &v59);
      v25 = v24 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v24 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v25) = v25 - 360;
      }

      if (v25 < -179)
      {
        LOWORD(v25) = v25 + 360;
      }

      if ((v25 & 0x8000u) == 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = -v25;
      }

      v27 = (*(**a3 + 48))(*a3, v15);
      v28 = v27 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v27 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v28) = v28 - 360;
      }

      if (v28 < -179)
      {
        LOWORD(v28) = v28 + 360;
      }

      v28 = v28;
      if ((v28 & 0x8000u) != 0)
      {
        v28 = -v28;
      }

      v12 = v26 >= v28;
      v29 = v26 > v28;
      v30 = !v12;
      v31 = *a3[2] ? v29 : v30;
      v23 = v15 + 1;
    }

    while (!v31);
  }

  if (v15 < v4)
  {
    do
    {
      v4 -= 2;
      v32 = (*(**a3 + 48))(*a3, &v59);
      v33 = v32 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v32 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v33) = v33 - 360;
      }

      if (v33 < -179)
      {
        LOWORD(v33) = v33 + 360;
      }

      if ((v33 & 0x8000u) == 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = -v33;
      }

      v35 = (*(**a3 + 48))(*a3, v4);
      v36 = v35 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v35 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v36) = v36 - 360;
      }

      if (v36 < -179)
      {
        LOWORD(v36) = v36 + 360;
      }

      v36 = v36;
      if ((v36 & 0x8000u) != 0)
      {
        v36 = -v36;
      }

      v12 = v34 >= v36;
      v37 = v34 > v36;
      v38 = !v12;
      if (!*a3[2])
      {
        v37 = v38;
      }
    }

    while (v37);
  }

  while (v15 < v4)
  {
    v39 = *v15;
    v40 = *v4;
    *(v15 + 3) = *(v4 + 3);
    *v15 = v40;
    *v4 = v39;
    *(v4 + 6) = BYTE6(v39);
    *(v4 + 2) = WORD2(v39);
    do
    {
      ++v15;
      v41 = (*(**a3 + 48))(*a3, &v59);
      v42 = v41 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v41 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v42) = v42 - 360;
      }

      if (v42 < -179)
      {
        LOWORD(v42) = v42 + 360;
      }

      if ((v42 & 0x8000u) == 0)
      {
        v43 = v42;
      }

      else
      {
        v43 = -v42;
      }

      v44 = (*(**a3 + 48))(*a3, v15);
      v45 = v44 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v44 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v45) = v45 - 360;
      }

      if (v45 < -179)
      {
        LOWORD(v45) = v45 + 360;
      }

      v45 = v45;
      if ((v45 & 0x8000u) != 0)
      {
        v45 = -v45;
      }

      v12 = v43 >= v45;
      v46 = v43 > v45;
      v47 = !v12;
      if (!*a3[2])
      {
        v46 = v47;
      }
    }

    while (!v46);
    do
    {
      v4 -= 2;
      v48 = (*(**a3 + 48))(*a3, &v59);
      v49 = v48 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v48 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v49) = v49 - 360;
      }

      if (v49 < -179)
      {
        LOWORD(v49) = v49 + 360;
      }

      if ((v49 & 0x8000u) == 0)
      {
        v50 = v49;
      }

      else
      {
        v50 = -v49;
      }

      v51 = (*(**a3 + 48))(*a3, v4);
      v52 = v51 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v51 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v52) = v52 - 360;
      }

      if (v52 < -179)
      {
        LOWORD(v52) = v52 + 360;
      }

      v52 = v52;
      if ((v52 & 0x8000u) != 0)
      {
        v52 = -v52;
      }

      v12 = v50 >= v52;
      v53 = v50 > v52;
      v54 = !v12;
      if (!*a3[2])
      {
        v53 = v54;
      }
    }

    while (v53);
  }

  v55 = (v15 - 1);
  if (v15 - 1 != a1)
  {
    v56 = *v55;
    *(a1 + 3) = *(v15 - 5);
    *a1 = v56;
  }

  v57 = v59;
  *(v15 - 5) = *(&v59 + 3);
  *v55 = v57;
  return v15;
}

int *sub_46DD2C(int *a1, int *a2, void *a3)
{
  v6 = 0;
  v52 = *a1;
  do
  {
    v6 += 2;
    v7 = (*(**a3 + 48))(*a3, &a1[v6]);
    v8 = v7 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
    if ((v7 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
    {
      LOWORD(v8) = v8 - 360;
    }

    if (v8 < -179)
    {
      LOWORD(v8) = v8 + 360;
    }

    if ((v8 & 0x8000u) == 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    v10 = (*(**a3 + 48))(*a3, &v52);
    v11 = v10 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
    if ((v10 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
    {
      LOWORD(v11) = v11 - 360;
    }

    if (v11 < -179)
    {
      LOWORD(v11) = v11 + 360;
    }

    v11 = v11;
    if ((v11 & 0x8000u) != 0)
    {
      v11 = -v11;
    }

    v12 = v9 >= v11;
    v13 = v9 > v11;
    v14 = !v12;
    if (!*a3[2])
    {
      v13 = v14;
    }
  }

  while (v13);
  v15 = &a1[v6];
  v16 = &a1[v6 - 2];
  if (v6 == 2)
  {
    do
    {
      if (v15 >= a2)
      {
        break;
      }

      a2 -= 2;
      v24 = (*(**a3 + 48))(*a3, a2);
      v25 = v24 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v24 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v25) = v25 - 360;
      }

      if (v25 < -179)
      {
        LOWORD(v25) = v25 + 360;
      }

      if ((v25 & 0x8000u) == 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = -v25;
      }

      v27 = (*(**a3 + 48))(*a3, &v52);
      v28 = v27 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v27 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v28) = v28 - 360;
      }

      if (v28 < -179)
      {
        LOWORD(v28) = v28 + 360;
      }

      v28 = v28;
      if ((v28 & 0x8000u) != 0)
      {
        v28 = -v28;
      }

      v12 = v26 >= v28;
      v29 = v26 > v28;
      v30 = !v12;
      if (!*a3[2])
      {
        v29 = v30;
      }
    }

    while (!v29);
  }

  else
  {
    do
    {
      a2 -= 2;
      v17 = (*(**a3 + 48))(*a3, a2);
      v18 = v17 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v17 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v18) = v18 - 360;
      }

      if (v18 < -179)
      {
        LOWORD(v18) = v18 + 360;
      }

      if ((v18 & 0x8000u) == 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = -v18;
      }

      v20 = (*(**a3 + 48))(*a3, &v52);
      v21 = v20 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
      if ((v20 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
      {
        LOWORD(v21) = v21 - 360;
      }

      if (v21 < -179)
      {
        LOWORD(v21) = v21 + 360;
      }

      v21 = v21;
      if ((v21 & 0x8000u) != 0)
      {
        v21 = -v21;
      }

      v12 = v19 >= v21;
      v22 = v19 > v21;
      v23 = !v12;
      if (!*a3[2])
      {
        v22 = v23;
      }
    }

    while (!v22);
  }

  if (v15 < a2)
  {
    v31 = &a1[v6];
    v32 = a2;
    do
    {
      v33 = *v31;
      v34 = *v32;
      *(v31 + 3) = *(v32 + 3);
      *v31 = v34;
      *v32 = v33;
      *(v32 + 6) = BYTE6(v33);
      *(v32 + 2) = WORD2(v33);
      do
      {
        v31 += 2;
        v35 = (*(**a3 + 48))(*a3, v31);
        v36 = v35 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v35 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v36) = v36 - 360;
        }

        if (v36 < -179)
        {
          LOWORD(v36) = v36 + 360;
        }

        if ((v36 & 0x8000u) == 0)
        {
          v37 = v36;
        }

        else
        {
          v37 = -v36;
        }

        v38 = (*(**a3 + 48))(*a3, &v52);
        v39 = v38 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v38 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v39) = v39 - 360;
        }

        if (v39 < -179)
        {
          LOWORD(v39) = v39 + 360;
        }

        v39 = v39;
        if ((v39 & 0x8000u) != 0)
        {
          v39 = -v39;
        }

        v12 = v37 >= v39;
        v40 = v37 > v39;
        v41 = !v12;
        if (!*a3[2])
        {
          v40 = v41;
        }
      }

      while (v40);
      do
      {
        v32 -= 2;
        v42 = (*(**a3 + 48))(*a3, v32);
        v43 = v42 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v42 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v43) = v43 - 360;
        }

        if (v43 < -179)
        {
          LOWORD(v43) = v43 + 360;
        }

        if ((v43 & 0x8000u) == 0)
        {
          v44 = v43;
        }

        else
        {
          v44 = -v43;
        }

        v45 = (*(**a3 + 48))(*a3, &v52);
        v46 = v45 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v45 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v46) = v46 - 360;
        }

        if (v46 < -179)
        {
          LOWORD(v46) = v46 + 360;
        }

        v46 = v46;
        if ((v46 & 0x8000u) != 0)
        {
          v46 = -v46;
        }

        v12 = v44 >= v46;
        v47 = v44 > v46;
        v48 = !v12;
        if (!*a3[2])
        {
          v47 = v48;
        }
      }

      while (!v47);
    }

    while (v31 < v32);
    v16 = v31 - 2;
  }

  if (v16 != a1)
  {
    v49 = *v16;
    *(a1 + 3) = *(v16 + 3);
    *a1 = v49;
  }

  v50 = v52;
  *(v16 + 3) = *(&v52 + 3);
  *v16 = v50;
  return v16;
}

BOOL sub_46E3BC(uint64_t a1, int *a2, void *a3)
{
  v5 = (a2 - a1) >> 3;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        v6 = a2 - 2;
        v7 = (*(**a3 + 48))(*a3, a2 - 1);
        v8 = v7 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v7 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v8) = v8 - 360;
        }

        if (v8 < -179)
        {
          LOWORD(v8) = v8 + 360;
        }

        if ((v8 & 0x8000u) == 0)
        {
          v9 = v8;
        }

        else
        {
          v9 = -v8;
        }

        v10 = (*(**a3 + 48))(*a3, a1);
        v11 = v10 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v10 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v11) = v11 - 360;
        }

        if (v11 < -179)
        {
          LOWORD(v11) = v11 + 360;
        }

        v11 = v11;
        if ((v11 & 0x8000u) != 0)
        {
          v11 = -v11;
        }

        v12 = v9 >= v11;
        v13 = v9 > v11;
        v14 = !v12;
        if (!*a3[2])
        {
          v13 = v14;
        }

        if (v13)
        {
          v15 = *a1;
          v16 = *v6;
          *(a1 + 3) = *(v6 + 3);
          *a1 = v16;
          *v6 = v15;
          *(v6 + 6) = BYTE6(v15);
          *(v6 + 2) = WORD2(v15);
        }

        return 1;
      }

      goto LABEL_29;
    }

    return 1;
  }

  switch(v5)
  {
    case 3:
      sub_46C084(a1, (a1 + 8), a2 - 2, a3);
      return 1;
    case 4:
      sub_46C628(a1, (a1 + 8), (a1 + 16), a2 - 2, a3);
      return 1;
    case 5:
      sub_46CA48(a1, (a1 + 8), (a1 + 16), (a1 + 24), a2 - 2, a3);
      return 1;
  }

LABEL_29:
  v17 = (a1 + 16);
  sub_46C084(a1, (a1 + 8), (a1 + 16), a3);
  v18 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    v22 = (*(**a3 + 48))(*a3, v18);
    v23 = v22 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
    if ((v22 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
    {
      LOWORD(v23) = v23 - 360;
    }

    if (v23 < -179)
    {
      LOWORD(v23) = v23 + 360;
    }

    if ((v23 & 0x8000u) == 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = -v23;
    }

    v25 = (*(**a3 + 48))(*a3, v17);
    v26 = v25 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
    if ((v25 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
    {
      LOWORD(v26) = v26 - 360;
    }

    if (v26 < -179)
    {
      LOWORD(v26) = v26 + 360;
    }

    v26 = v26;
    if ((v26 & 0x8000u) != 0)
    {
      v26 = -v26;
    }

    v12 = v24 >= v26;
    v27 = v24 > v26;
    v28 = !v12;
    if (!*a3[2])
    {
      v27 = v28;
    }

    if (v27)
    {
      v40 = *v18;
      v29 = v19;
      do
      {
        v30 = a1 + v29;
        *(v30 + 24) = *(a1 + v29 + 16);
        *(v30 + 27) = *(a1 + v29 + 19);
        if (v29 == -16)
        {
          v21 = a1;
          goto LABEL_32;
        }

        v31 = (*(**a3 + 48))(*a3, &v40);
        v32 = v31 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v31 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v32) = v32 - 360;
        }

        if (v32 < -179)
        {
          LOWORD(v32) = v32 + 360;
        }

        if ((v32 & 0x8000u) == 0)
        {
          v33 = v32;
        }

        else
        {
          v33 = -v32;
        }

        v34 = (*(**a3 + 48))(*a3, v30 + 8);
        v35 = v34 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v34 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v35) = v35 - 360;
        }

        if (v35 < -179)
        {
          LOWORD(v35) = v35 + 360;
        }

        v35 = v35;
        if ((v35 & 0x8000u) != 0)
        {
          v35 = -v35;
        }

        v12 = v33 >= v35;
        v36 = v33 > v35;
        v37 = !v12;
        if (!*a3[2])
        {
          v36 = v37;
        }

        v29 -= 8;
      }

      while (v36);
      v21 = (a1 + v29 + 24);
LABEL_32:
      *v21 = v40;
      *(v21 + 3) = *(&v40 + 3);
      if (++v20 == 8)
      {
        return v18 + 1 == a2;
      }
    }

    v17 = v18;
    v19 += 8;
    if (++v18 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_46E8E4(uint64_t result, void *a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v45 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v7 = (a4 - result) >> 2;
      v8 = v7 + 1;
      v9 = result;
      v10 = (result + 8 * (v7 + 1));
      v11 = v7 + 2;
      if (v7 + 2 < a3)
      {
        v12 = (*(**a2 + 48))(*a2, v10);
        v13 = v12 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180);
        if ((v12 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180)) > 180)
        {
          LOWORD(v13) = v13 - 360;
        }

        if (v13 < -179)
        {
          LOWORD(v13) = v13 + 360;
        }

        if ((v13 & 0x8000u) == 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = -v13;
        }

        v15 = (*(**a2 + 48))(*a2, v10 + 2);
        v16 = v15 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180);
        if ((v15 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180)) > 180)
        {
          LOWORD(v16) = v16 - 360;
        }

        if (v16 < -179)
        {
          LOWORD(v16) = v16 + 360;
        }

        v16 = v16;
        if ((v16 & 0x8000u) != 0)
        {
          v16 = -v16;
        }

        v17 = v14 >= v16;
        v18 = v14 > v16;
        v19 = !v17;
        if (!*a2[2])
        {
          v18 = v19;
        }

        if (v18)
        {
          v10 += 2;
          v8 = v11;
        }
      }

      v20 = (*(**a2 + 48))(*a2, v10);
      v21 = v20 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180);
      if ((v20 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180)) > 180)
      {
        LOWORD(v21) = v21 - 360;
      }

      if (v21 < -179)
      {
        LOWORD(v21) = v21 + 360;
      }

      if ((v21 & 0x8000u) == 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = -v21;
      }

      result = (*(**a2 + 48))(*a2, v5);
      v23 = result + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180);
      if ((result + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180)) > 180)
      {
        LOWORD(v23) = v23 - 360;
      }

      if (v23 < -179)
      {
        LOWORD(v23) = v23 + 360;
      }

      v23 = v23;
      if ((v23 & 0x8000u) != 0)
      {
        v23 = -v23;
      }

      v17 = v22 >= v23;
      v24 = v22 > v23;
      v25 = !v17;
      if (!*a2[2])
      {
        v24 = v25;
      }

      if (!v24)
      {
        v47 = *v5;
        do
        {
          v32 = v10;
          v33 = *v10;
          *(v5 + 3) = *(v10 + 3);
          *v5 = v33;
          if (v45 < v8)
          {
            break;
          }

          v34 = (2 * v8) | 1;
          v35 = v9;
          v10 = (v9 + 8 * v34);
          v36 = 2 * v8 + 2;
          if (v36 < a3)
          {
            v37 = (*(**a2 + 48))(*a2, v9 + 8 * v34);
            v38 = v37 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180);
            if ((v37 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180)) > 180)
            {
              LOWORD(v38) = v38 - 360;
            }

            if (v38 < -179)
            {
              LOWORD(v38) = v38 + 360;
            }

            if ((v38 & 0x8000u) == 0)
            {
              v39 = v38;
            }

            else
            {
              v39 = -v38;
            }

            v40 = (*(**a2 + 48))(*a2, v10 + 2);
            v41 = v40 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180);
            if ((v40 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180)) > 180)
            {
              LOWORD(v41) = v41 - 360;
            }

            if (v41 < -179)
            {
              LOWORD(v41) = v41 + 360;
            }

            v41 = v41;
            if ((v41 & 0x8000u) != 0)
            {
              v41 = -v41;
            }

            v17 = v39 >= v41;
            v42 = v39 > v41;
            v43 = !v17;
            if (!*a2[2])
            {
              v42 = v43;
            }

            if (v42)
            {
              v10 += 2;
              v34 = v36;
            }
          }

          v26 = (*(**a2 + 48))(*a2, v10);
          v27 = v26 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180);
          if ((v26 + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180)) > 180)
          {
            LOWORD(v27) = v27 - 360;
          }

          if (v27 < -179)
          {
            LOWORD(v27) = v27 + 360;
          }

          if ((v27 & 0x8000u) == 0)
          {
            v28 = v27;
          }

          else
          {
            v28 = -v27;
          }

          result = (*(**a2 + 48))(*a2, &v47);
          v29 = result + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180);
          if ((result + 360 * ((*a2[1] + 180) / 0x168u) - (*a2[1] + 180)) > 180)
          {
            LOWORD(v29) = v29 - 360;
          }

          if (v29 < -179)
          {
            LOWORD(v29) = v29 + 360;
          }

          v29 = v29;
          if ((v29 & 0x8000u) != 0)
          {
            v29 = -v29;
          }

          v17 = v28 >= v29;
          v30 = v28 > v29;
          v31 = !v17;
          if (!*a2[2])
          {
            v30 = v31;
          }

          v5 = v32;
          v8 = v34;
          v9 = v35;
        }

        while (!v30);
        v44 = v47;
        *(v32 + 3) = *(&v47 + 3);
        *v32 = v44;
      }
    }
  }

  return result;
}

void *sub_46EE5C(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = 0;
    v26 = *result;
    v7 = (a4 - 2) >> 1;
    v24 = result;
    v8 = result;
    do
    {
      v10 = &v8[2 * v6];
      v11 = v10 + 2;
      v12 = (2 * v6) | 1;
      v13 = 2 * v6 + 2;
      if (v13 < a4)
      {
        v14 = v10 + 4;
        v15 = (*(**a3 + 48))(*a3, v11);
        v16 = v15 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v15 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v16) = v16 - 360;
        }

        if (v16 < -179)
        {
          LOWORD(v16) = v16 + 360;
        }

        if ((v16 & 0x8000u) == 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = -v16;
        }

        result = (*(**a3 + 48))(*a3, v14);
        v18 = result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v18) = v18 - 360;
        }

        if (v18 < -179)
        {
          LOWORD(v18) = v18 + 360;
        }

        v18 = v18;
        if ((v18 & 0x8000u) != 0)
        {
          v18 = -v18;
        }

        v19 = v17 >= v18;
        v20 = v17 > v18;
        v21 = !v19;
        if (!*a3[2])
        {
          v20 = v21;
        }

        if (v20)
        {
          v11 = v14;
          v12 = v13;
        }
      }

      v9 = *v11;
      *(v8 + 3) = *(v11 + 3);
      *v8 = v9;
      v8 = v11;
      v6 = v12;
    }

    while (v12 <= v7);
    v22 = (a2 - 8);
    if (v11 == (a2 - 8))
    {
      *v11 = v26;
      *(v11 + 6) = BYTE6(v26);
      *(v11 + 2) = WORD2(v26);
    }

    else
    {
      v23 = *v22;
      *(v11 + 3) = *(a2 - 5);
      *v11 = v23;
      *(a2 - 2) = BYTE6(v26);
      *(a2 - 4) = WORD2(v26);
      *v22 = v26;

      return sub_46F0D0(v24, (v11 + 2), a3, (v11 - v24 + 8) >> 3);
    }
  }

  return result;
}

uint64_t sub_46F0D0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v27[9] = v4;
    v27[10] = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = (result + 8 * (v6 >> 1));
    v11 = (a2 - 8);
    v12 = (*(**a3 + 48))(*a3, v10);
    v13 = v12 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
    if ((v12 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
    {
      LOWORD(v13) = v13 - 360;
    }

    if (v13 < -179)
    {
      LOWORD(v13) = v13 + 360;
    }

    if ((v13 & 0x8000u) == 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    result = (*(**a3 + 48))(*a3, v11);
    v15 = result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
    if ((result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
    {
      LOWORD(v15) = v15 - 360;
    }

    if (v15 < -179)
    {
      LOWORD(v15) = v15 + 360;
    }

    v15 = v15;
    if ((v15 & 0x8000u) != 0)
    {
      v15 = -v15;
    }

    v16 = v14 >= v15;
    v17 = v14 > v15;
    v18 = !v16;
    if (!*a3[2])
    {
      v17 = v18;
    }

    if (v17)
    {
      v27[0] = *v11;
      do
      {
        v19 = v10;
        v20 = *v10;
        *(v11 + 3) = *(v10 + 3);
        *v11 = v20;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (v8 + 8 * v9);
        v21 = (*(**a3 + 48))(*a3, v10);
        v22 = v21 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((v21 + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v22) = v22 - 360;
        }

        if (v22 < -179)
        {
          LOWORD(v22) = v22 + 360;
        }

        if ((v22 & 0x8000u) == 0)
        {
          v23 = v22;
        }

        else
        {
          v23 = -v22;
        }

        result = (*(**a3 + 48))(*a3, v27);
        v24 = result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180);
        if ((result + 360 * ((*a3[1] + 180) / 0x168u) - (*a3[1] + 180)) > 180)
        {
          LOWORD(v24) = v24 - 360;
        }

        if (v24 < -179)
        {
          LOWORD(v24) = v24 + 360;
        }

        v24 = v24;
        if ((v24 & 0x8000u) != 0)
        {
          v24 = -v24;
        }

        v16 = v23 >= v24;
        v25 = v23 > v24;
        v26 = !v16;
        if (!*a3[2])
        {
          v25 = v26;
        }

        v11 = v19;
      }

      while (v25);
      *v19 = v27[0];
      *(v19 + 3) = *(v27 + 3);
    }
  }

  return result;
}

void **sub_46F3A0(void **a1)
{
  sub_46F418(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_46F418(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v10 = v3 - v2;
    if (v10 < 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = a1[4];
  v5 = &v2[v4 / 0x49];
  v6 = *v5 + 56 * (v4 % 0x49);
  v7 = v2[(a1[5] + v4) / 0x49] + 56 * ((a1[5] + v4) % 0x49);
  if (v6 != v7)
  {
    do
    {
      v8 = *(v6 + 8);
      if (v8)
      {
        *(v6 + 16) = v8;
        operator delete(v8);
      }

      v6 += 56;
      if (v6 - *v5 == 4088)
      {
        v9 = v5[1];
        ++v5;
        v6 = v9;
      }
    }

    while (v6 != v7);
    v2 = a1[1];
    v3 = a1[2];
  }

  a1[5] = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
LABEL_11:
      operator delete(*v2);
      v11 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

LABEL_12:
  if (v10 == 1)
  {
    v12 = 36;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 73;
  }

  a1[4] = v12;
}

void *sub_46F560(void *result, uint64_t ***a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result == v2)
  {
    goto LABEL_21;
  }

  v4 = *a2;
  v5 = **a2;
  v6 = (*a2)[1];
  if (v5 == v6)
  {
LABEL_9:
    if (v3 == v2)
    {
      return result;
    }

    v8 = v3 + 8;
    if (v3 + 8 != v2 && v5 != v6)
    {
      v9 = v3;
      do
      {
        v11 = v3;
        v3 = v8;
        v12 = *v4;
        v13 = v4[1];
        if (*v4 != v13)
        {
          v14 = *v8;
          v15 = *(v11 + 18);
          v16 = *(v11 + 38);
          while (1)
          {
            v17 = *v12;
            if (v14 == *v12 && v15 == WORD2(v17) && v16 == BYTE6(v17))
            {
              break;
            }

            if (++v12 == v13)
            {
              goto LABEL_13;
            }
          }

          v10 = *v3;
          *(v9 + 12) = *(v3 + 3);
          *v9 = v10;
          v9 += 2;
        }

LABEL_13:
        v8 = v3 + 8;
      }

      while (v3 + 8 != v2);
      if (v9 == result[1])
      {
        return result;
      }

LABEL_22:
      result[1] = v9;
      return result;
    }

LABEL_21:
    v9 = v3;
    if (v3 == v2)
    {
      return result;
    }

    goto LABEL_22;
  }

  do
  {
    v7 = **a2;
    while (__PAIR64__(*(v3 + 2), *v3) != __PAIR64__(WORD2(*v7), *v7) || *(v3 + 6) != BYTE6(*v7))
    {
      if (++v7 == v6)
      {
        goto LABEL_9;
      }
    }

    v3 += 8;
  }

  while (v3 != v2);
  return result;
}

uint64_t sub_46F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != a4)
  {
    v10 = 0;
    v11 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v9 = 0;
    if (a5 - a4 == 1)
    {
      operator new();
    }

    operator new();
  }

  return 1;
}

void sub_46FAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a15;
    if (!a15)
    {
LABEL_3:
      v21 = a18;
      if (!a18)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v21);
      goto LABEL_8;
    }
  }

  else
  {
    v20 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  v21 = a18;
  if (!a18)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *sub_46FB2C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[9];
  a1[9] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[3] = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_46FBA8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char **a6@<X8>)
{
  v11 = *(a1 + 40);
  if (v11 == 0x7FFFFFFF || (v12 = *(a2 + 40), v12 == 0x7FFFFFFF))
  {
    v19 = llround(*(a5 + 60) * 1.2);
    if (!sub_1211940())
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_19594F8(&v18);
    sub_4A5C(&v18, "Max exploration radius: ", 24);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " m.", 3);
    operator new();
  }

  v13 = v12 - v11;
  if (v13 < 0)
  {
    v13 = -v13;
  }

  v14 = *(a5 + 72) + v13;
  v15 = llround(*(a5 + 64) * v13);
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v19 = v16;
  if (sub_1211940())
  {
    goto LABEL_11;
  }

LABEL_12:
  sub_47046C(a3, a1, a2, a4, &v19, a6);
}

void sub_46FF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      sub_1959728(&a21);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  sub_1959728(&a21);
  _Unwind_Resume(a1);
}

void sub_46FFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_46FFC8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  if (a3 - a2 != -1)
  {
    if (!((a3 - a2 + 1) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_0 = 0;
  v6 = *a4;
  v7 = (a4[1] - *a4) >> 3;
  MEMORY[0xFFFFFFFFFFFFFFF8] = v7 - 1;
  v8 = 0;
  v9 = *a1 + 72 * a2;
  v10 = 1;
  while (v8 < v7)
  {
    v11 = v9 + 72 * v10;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v12 == v13)
    {
      break;
    }

LABEL_9:
    v14 = *(v6 + 8 * v8);
    v15 = v12;
    while (__PAIR64__(*(v15 + 4), *v15) != __PAIR64__(WORD2(v14), v14) || *(v15 + 6) != BYTE6(v14))
    {
      v15 += 32;
      if (v15 == v13)
      {
        if (++v8 == v7)
        {
          goto LABEL_15;
        }

        goto LABEL_9;
      }
    }

    *(8 * v10++) = v8;
    if (v10 == -1)
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      return;
    }
  }

LABEL_15:
  if (sub_12119FC())
  {
    sub_19594F8(&v17);
    sub_4A5C(&v17, "No path segment could be matched with any of the segments of point ", 67);
    v16 = std::ostream::operator<<();
    sub_4A5C(v16, ".", 1);
    operator new();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  operator delete(0);
}

void sub_4703D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    sub_1959728(&a22);
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_47046C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _DWORD *a5@<X4>, char **a6@<X8>)
{
  v189.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v9 = a1 + 2;
  v8 = a1[2];
  a1[6] = a1[5];
  a1[3] = v8;
  *(a1 + 16) = 0;
  v195 = a6;
  if (a1[12])
  {
    v10 = a1[11];
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

    a1[11] = 0;
    v12 = a1[10];
    if (v12)
    {
      bzero(a1[9], 8 * v12);
    }

    a1[12] = 0;
    a6 = v195;
  }

  a1[15] = a1[14];
  v215 = 0;
  v216 = 0;
  v217 = 0;
  v13 = *(a2 + 16);
  v192 = *(a2 + 24);
  v201 = a1 + 2;
  while (v13 != v192)
  {
    (*(**a1 + 32))(&v208);
    if (v211)
    {
      v14 = *(a3 + 16);
      v15 = *(a3 + 24);
      if (v14 != v15)
      {
        v16 = *v13;
        do
        {
          if (__PAIR64__(*(v14 + 4), *v14) == __PAIR64__(WORD2(v16), v16) && *(v14 + 6) == BYTE6(v16) && *(v13 + 8) <= *(v14 + 8))
          {
            *v195 = 0;
            v195[1] = 0;
            v195[2] = 0;
            operator new();
          }

          v14 += 32;
        }

        while (v14 != v15);
      }

      v18 = a1[14];
      v17 = a1[15];
      v207 = v13;
      *(sub_472340(v9 + 7, v13) + 6) = -1431655765 * ((v17 - v18) >> 3);
      v19 = a1[15];
      v20 = a1[16];
      if (v19 >= v20)
      {
        v22 = a1[14];
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 3) + 1;
        if (v23 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v22) >> 3);
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (v25 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v26 = 8 * ((v19 - v22) >> 3);
        *v26 = *v13;
        *(v26 + 8) = xmmword_2297CA0;
        v21 = v26 + 24;
        v27 = (v26 - (v19 - v22));
        memcpy(v27, v22, v19 - v22);
        a1[14] = v27;
        a1[15] = v21;
        a1[16] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v19 = *v13;
        *(v19 + 8) = xmmword_2297CA0;
        v21 = v19 + 24;
      }

      a1[15] = v21;
      v28 = *(a2 + 44);
      (*(**a1 + 72))(*a1, v13, &v215);
      if ((v28 & 1) == 0)
      {
        v29 = (*(**a1 + 8))(*a1, v13);
        LODWORD(v207) = v29;
        BYTE6(v207) = BYTE6(v29);
        WORD2(v207) = WORD2(v29);
        __dst = &v207;
        sub_4726E4(&v215, &__dst);
      }

      v30 = v215;
      v31 = 1;
      if (*(a2 + 44))
      {
        v31 = 2;
      }

      v198 = v216;
      v199 = v31;
      if (v216 != v215)
      {
        v197 = (v216 - v215) >> 3;
        v196 = v13;
        while (1)
        {
          v32 = *v30;
          v33 = (*v30 >> 16) & 0xFFFF0000 | (*v30 << 32);
          if ((*v30 & 0xFF000000000000) != 0)
          {
            v34 = (*v30 >> 16) & 0xFFFF0000 | (*v30 << 32);
          }

          else
          {
            v34 = v33 + 1;
          }

          v35 = a1[10];
          v202 = v30;
          if (v35)
          {
            v36 = (0x2127599BF4325C37 * (v34 ^ (v33 >> 23))) ^ ((0x2127599BF4325C37 * (v34 ^ (v33 >> 23))) >> 47);
            v37 = vcnt_s8(v35);
            v37.i16[0] = vaddlv_u8(v37);
            if (v37.u32[0] > 1uLL)
            {
              v38 = v36;
              if (v36 >= *&v35)
              {
                v38 = v36 % *&v35;
              }
            }

            else
            {
              v38 = v36 & (*&v35 - 1);
            }

            v39 = *(v9[7] + 8 * v38);
            if (v39)
            {
              v40 = *v39;
              if (v40)
              {
                if (v37.u32[0] < 2uLL)
                {
                  v41 = *&v35 - 1;
                  while (1)
                  {
                    v43 = v40[1];
                    if (v36 == v43)
                    {
                      if (__PAIR64__(*(v40 + 10), *(v40 + 4)) == __PAIR64__(WORD2(v32), v32) && *(v40 + 22) == BYTE6(v32))
                      {
                        goto LABEL_86;
                      }
                    }

                    else if ((v43 & v41) != v38)
                    {
                      goto LABEL_71;
                    }

                    v40 = *v40;
                    if (!v40)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                do
                {
                  v42 = v40[1];
                  if (v36 == v42)
                  {
                    if (__PAIR64__(*(v40 + 10), *(v40 + 4)) == __PAIR64__(WORD2(v32), v32) && *(v40 + 22) == BYTE6(v32))
                    {
                      goto LABEL_86;
                    }
                  }

                  else
                  {
                    if (v42 >= *&v35)
                    {
                      v42 %= *&v35;
                    }

                    if (v42 != v38)
                    {
                      break;
                    }
                  }

                  v40 = *v40;
                }

                while (v40);
              }
            }
          }

LABEL_71:
          v45 = a1[14];
          v44 = a1[15];
          v207 = v30;
          *(sub_472340(v9 + 7, v30) + 6) = -1431655765 * ((v44 - v45) >> 3);
          v46 = a1[15];
          v47 = a1[16];
          if (v46 >= v47)
          {
            v49 = a1[14];
            v50 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v49) >> 3) + 1;
            if (v50 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v51 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v49) >> 3);
            if (2 * v51 > v50)
            {
              v50 = 2 * v51;
            }

            if (v51 >= 0x555555555555555)
            {
              v52 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v52 = v50;
            }

            if (v52)
            {
              if (v52 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v53 = 8 * ((v46 - v49) >> 3);
            *v53 = *v30;
            *(v53 + 8) = xmmword_2297CB0;
            v48 = v53 + 24;
            v54 = (v53 - (v46 - v49));
            memcpy(v54, v49, v46 - v49);
            a1[14] = v54;
            a1[15] = v48;
            a1[16] = 0;
            if (v49)
            {
              operator delete(v49);
            }

            v30 = v202;
          }

          else
          {
            *v46 = *v30;
            *(v46 + 8) = xmmword_2297CB0;
            v48 = v46 + 24;
          }

          a1[15] = v48;
LABEL_86:
          v207 = v30;
          v55 = *(sub_472340(v9 + 7, v30) + 6);
          v56 = sub_472044(a1 + 1, 1.0 - *(v13 + 8), v13, v30, a4, v197 == v199);
          v207 = v56;
          v57 = a1[14] + 24 * v55;
          v60 = *(v57 + 16);
          v58 = v57 + 16;
          v59 = v60;
          if (v60 == -1)
          {
            break;
          }

          v61 = *(v58 + 4);
          if (v61 == 0x7FFFFFFF)
          {
            break;
          }

          if (v59 == v56)
          {
            if (v61 > SHIDWORD(v56))
            {
              break;
            }
          }

          else if (v59 > v56)
          {
            break;
          }

LABEL_44:
          v30 += 8;
          v9 = v201;
          if (v30 == v198)
          {
            goto LABEL_132;
          }
        }

        *v58 = v56;
        v62 = a1[14] + 24 * v55;
        v63 = *v13;
        *(v62 + 11) = *(v13 + 3);
        *(v62 + 8) = v63;
        v65 = a1[5];
        v64 = a1[6];
        v66 = v64 - v65;
        v67 = (v64 - v65) >> 2;
        v203 = v55;
        if (v67 <= v55)
        {
          v68 = a1[5];
          while (1)
          {
            v69 = (v66 >> 1) | 1;
            if (v67 <= v66 >> 1)
            {
              v70 = v69 - v67;
              v71 = a1[7];
              if (v70 <= (v71 - v64) >> 2)
              {
                memset(v64, 255, ((2 * v66 - 4 * v67) & 0xFFFFFFFFFFFFFFFCLL) + 4);
                v64 += 4 * v70;
                a1[6] = v64;
                v68 = v65;
              }

              else
              {
                v72 = v64 - v68;
                v73 = (v64 - v68) >> 2;
                v74 = v73 + v70;
                if ((v73 + v70) >> 62)
                {
                  sub_1794();
                }

                v75 = v71 - v68;
                if (v75 >> 1 > v74)
                {
                  v74 = v75 >> 1;
                }

                if (v75 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v76 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v76 = v74;
                }

                if (v76)
                {
                  if (!(v76 >> 62))
                  {
                    operator new();
                  }

LABEL_252:
                  sub_1808();
                }

                v204 = v73;
                v77 = a1;
                v78 = 4 * v73;
                memset((4 * v73), 255, ((2 * v66 - 4 * v67) & 0xFFFFFFFFFFFFFFFCLL) + 4);
                v64 = (4 * v73 + 4 * v70);
                v65 = (v78 - 4 * v204);
                memcpy(v65, v68, v72);
                v77[5] = v65;
                v77[6] = v64;
                v77[7] = 0;
                a1 = v77;
                if (v68)
                {
                  operator delete(v68);
                  v65 = v77[5];
                  v64 = v77[6];
                }

                v68 = v65;
                v55 = v203;
              }
            }

            else if (v69 < v67)
            {
              v64 = &v68[4 * v69];
              a1[6] = v64;
            }

            v66 = v64 - v68;
            v67 = (v64 - v68) >> 2;
            if (v67 > v55)
            {
              goto LABEL_108;
            }
          }
        }

        if (*&v65[4 * v55] == -1)
        {
LABEL_108:
          v79 = v55 | (v207 << 32);
          v81 = a1[3];
          v80 = a1[4];
          if (v81 >= v80)
          {
            v83 = *v201;
            v84 = v81 - *v201;
            v85 = (v84 >> 3) + 1;
            if (v85 >> 61)
            {
              sub_1794();
            }

            v86 = v80 - v83;
            if (v86 >> 2 > v85)
            {
              v85 = v86 >> 2;
            }

            if (v86 >= 0x7FFFFFFFFFFFFFF8)
            {
              v87 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v87 = v85;
            }

            if (v87)
            {
              if (!(v87 >> 61))
              {
                operator new();
              }

              goto LABEL_252;
            }

            v13 = v196;
            v88 = (8 * (v84 >> 3));
            *v88 = v79;
            v82 = v88 + 1;
            memcpy(0, v83, v84);
            a1[2] = 0;
            a1[3] = v82;
            a1[4] = 0;
            if (v83)
            {
              operator delete(v83);
            }

            v30 = v202;
            v55 = v203;
          }

          else
          {
            *v81 = v79;
            v82 = v81 + 1;
            v13 = v196;
            v30 = v202;
          }

          a1[3] = v82;
          v89 = *(a1 + 16);
          v90 = a1[5];
          *(v90 + 4 * v55) = v89;
          *(a1 + 16) = v89 + 1;
          if (v89)
          {
            v91 = *v201;
            do
            {
              v92 = v89 - 1;
              v93 = (v91 + 8 * ((v89 - 1) >> 2));
              v94 = (v91 + 8 * v89);
              v95 = v93[1];
              v96 = v94[1];
              if (v95 < v96)
              {
                break;
              }

              v97 = *v94;
              *v94 = *v93;
              v94[1] = v95;
              *v93 = v97;
              v93[1] = v96;
              v98 = *v94;
              v99 = *(v90 + 4 * v98);
              *(v90 + 4 * v98) = *(v90 + 4 * v97);
              *(v90 + 4 * v97) = v99;
              v89 = v92 >> 2;
            }

            while (v92 >= 4);
          }
        }

        else
        {
          sub_463BF0(v201, v55, &v207);
          v13 = v196;
          v30 = v202;
        }

        goto LABEL_44;
      }

LABEL_132:
      if (v213 < 0)
      {
LABEL_19:
        operator delete(__p);
      }
    }

    else if (v213 < 0)
    {
      goto LABEL_19;
    }

    if (v209)
    {
      v210 = v209;
      operator delete(v209);
    }

    v13 += 32;
    a6 = v195;
  }

  if (*(a1 + 16))
  {
    v100 = 0;
    while (1)
    {
      v101 = a1[2];
      v102 = a1[14];
      v103 = (v102 + 24 * *v101);
      v104 = *v103;
      v214 = *v103;
      v105 = v103[2];
      for (i = *(a3 + 16); i != *(a3 + 24); i += 32)
      {
        if (__PAIR64__(*(i + 4), *i) == __PAIR64__(WORD2(v104), v104) && *(i + 6) == BYTE6(v104))
        {
          v170 = v215;
          v216 = v215;
          v207 = *(v102 + 24 * *v101);
          v171 = v215;
          if ((v207 & 0xFFFFFFFFFFFFFFLL) != 0x1FFFFFFFFFFFFLL)
          {
            do
            {
              v172 = v216;
              if (v216 >= v217)
              {
                v174 = v215;
                v175 = v216 - v215;
                v176 = (v216 - v215) >> 3;
                v177 = v176 + 1;
                if ((v176 + 1) >> 61)
                {
                  sub_1794();
                }

                v178 = v217 - v215;
                if ((v217 - v215) >> 2 > v177)
                {
                  v177 = v178 >> 2;
                }

                if (v178 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v179 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v179 = v177;
                }

                if (v179)
                {
                  if (!(v179 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v180 = (8 * v176);
                v181 = &v180[-((v216 - v215) >> 3)];
                *v180 = v207;
                v173 = (v180 + 1);
                memcpy(v181, v174, v175);
                v215 = v181;
                v216 = v173;
                v217 = 0;
                if (v174)
                {
                  operator delete(v174);
                }

                v9 = v201;
              }

              else
              {
                *v216 = v207;
                v173 = v172 + 8;
              }

              v216 = v173;
              v208 = &v207;
              v182 = a1[14] + 24 * *(sub_472340(v9 + 7, &v207) + 6);
              v183 = *(v182 + 8);
              *(&v207 + 3) = *(v182 + 11);
              LODWORD(v207) = v183;
            }

            while (v183 != -1 || WORD2(v207) != 0xFFFF || BYTE6(v207) != 1);
            v171 = v215;
            v170 = v216;
            if (v215 == v216)
            {
              a6 = v195;
            }

            else
            {
              v184 = v216 - 8;
              a6 = v195;
              if (v216 - 8 > v215)
              {
                v185 = v215 + 8;
                do
                {
                  v186 = *(v185 - 1);
                  v187 = *v184;
                  *(v185 - 5) = *(v184 + 3);
                  *(v185 - 2) = v187;
                  *v184 = v186;
                  v184[6] = BYTE6(v186);
                  *(v184 + 2) = WORD2(v186);
                  v184 -= 8;
                  v188 = v185 >= v184;
                  v185 += 8;
                }

                while (!v188);
                v171 = v215;
                v170 = v216;
              }
            }
          }

          *a6 = v171;
          a6[1] = v170;
          a6[2] = v217;
          return;
        }
      }

      v107 = a1[5];
      *(v107 + 4 * *v101) = -1;
      v108 = *(a1 + 16) - 1;
      *(a1 + 16) = v108;
      if (v108)
      {
        v109 = v101[v108];
        *v101 = v109;
        *(v107 + 4 * v109) = 0;
        v110 = *(a1 + 16);
        if (v110 >= 2)
        {
          v111 = 0;
          v112 = 0;
          v113 = 1;
          do
          {
            v114 = v111 + 5;
            if (v114 <= v113)
            {
              break;
            }

            v115 = v114 >= v110 ? v110 : v114;
            v116 = v112;
            v117 = HIDWORD(v101[v112]);
            v118 = v113;
            v119 = &v101[v113] + 1;
            v112 = -1;
            v120 = v117;
            do
            {
              v122 = *v119;
              v119 += 2;
              v121 = v122;
              if (v122 < v120)
              {
                v120 = v121;
                v112 = v118;
              }

              ++v118;
            }

            while (v118 < v115);
            if (v112 >= v110)
            {
              break;
            }

            v123 = &v101[v112];
            v124 = *v123;
            *v123 = v101[v116];
            v123[1] = v117;
            v101[v116] = v124;
            v125 = *v123;
            v126 = *(v107 + 4 * v125);
            *(v107 + 4 * v125) = *(v107 + 4 * v124);
            *(v107 + 4 * v124) = v126;
            v111 = 4 * v112;
            v113 = (4 * v112) | 1;
            v110 = *(a1 + 16);
          }

          while (v113 < v110);
        }
      }

      a1[3] -= 8;
      if (sub_1211940())
      {
        sub_19594F8(&v208);
        v127 = sub_4A5C(&v208, "Exploring ", 10);
        sub_30E900(v127, v214);
        operator new();
      }

      v128 = v100 + 1;
      HIDWORD(v129) = 989560465 * v128;
      LODWORD(v129) = 989560465 * v128;
      if ((v129 >> 4) <= 0x68DB8 && (std::chrono::steady_clock::now().__d_.__rep_ - v189.__d_.__rep_) / 1000000 > *(a1[17] + 76))
      {
        break;
      }

      (*(**a1 + 72))(*a1, &v214, &v215);
      v130 = (*(**a1 + 8))(*a1, &v214);
      LODWORD(v208) = v130;
      BYTE6(v208) = BYTE6(v130);
      WORD2(v208) = WORD2(v130);
      v207 = &v208;
      sub_4726E4(&v215, &v207);
      v193 = v128;
      v131 = v215;
      v132 = v216;
      v133 = v216 - v215;
      if (v216 != v215)
      {
        while (1)
        {
          v134 = *v131;
          v135 = (*v131 >> 16) & 0xFFFF0000 | (*v131 << 32);
          if ((*v131 & 0xFF000000000000) != 0)
          {
            v136 = (*v131 >> 16) & 0xFFFF0000 | (*v131 << 32);
          }

          else
          {
            v136 = v135 + 1;
          }

          v137 = a1[10];
          if (v137)
          {
            v138 = (0x2127599BF4325C37 * (v136 ^ (v135 >> 23))) ^ ((0x2127599BF4325C37 * (v136 ^ (v135 >> 23))) >> 47);
            v139 = vcnt_s8(v137);
            v139.i16[0] = vaddlv_u8(v139);
            if (v139.u32[0] > 1uLL)
            {
              v140 = v138;
              if (v138 >= *&v137)
              {
                v140 = v138 % *&v137;
              }
            }

            else
            {
              v140 = v138 & (*&v137 - 1);
            }

            v141 = *(v9[7] + 8 * v140);
            if (v141)
            {
              v142 = *v141;
              if (v142)
              {
                if (v139.u32[0] < 2uLL)
                {
                  v143 = *&v137 - 1;
                  while (1)
                  {
                    v145 = v142[1];
                    if (v138 == v145)
                    {
                      if (__PAIR64__(*(v142 + 10), *(v142 + 4)) == __PAIR64__(WORD2(v134), v134) && *(v142 + 22) == BYTE6(v134))
                      {
                        goto LABEL_204;
                      }
                    }

                    else if ((v145 & v143) != v140)
                    {
                      goto LABEL_189;
                    }

                    v142 = *v142;
                    if (!v142)
                    {
                      goto LABEL_189;
                    }
                  }
                }

                do
                {
                  v144 = v142[1];
                  if (v138 == v144)
                  {
                    if (__PAIR64__(*(v142 + 10), *(v142 + 4)) == __PAIR64__(WORD2(v134), v134) && *(v142 + 22) == BYTE6(v134))
                    {
                      goto LABEL_204;
                    }
                  }

                  else
                  {
                    if (v144 >= *&v137)
                    {
                      v144 %= *&v137;
                    }

                    if (v144 != v140)
                    {
                      break;
                    }
                  }

                  v142 = *v142;
                }

                while (v142);
              }
            }
          }

LABEL_189:
          v147 = a1[14];
          v146 = a1[15];
          v208 = v131;
          *(sub_472340(v9 + 7, v131) + 6) = -1431655765 * ((v146 - v147) >> 3);
          v148 = a1[15];
          v149 = a1[16];
          if (v148 >= v149)
          {
            v151 = a1[14];
            v152 = 0xAAAAAAAAAAAAAAABLL * ((v148 - v151) >> 3) + 1;
            if (v152 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v153 = 0xAAAAAAAAAAAAAAABLL * ((v149 - v151) >> 3);
            if (2 * v153 > v152)
            {
              v152 = 2 * v153;
            }

            if (v153 >= 0x555555555555555)
            {
              v154 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v154 = v152;
            }

            if (v154)
            {
              if (v154 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v155 = 8 * ((v148 - v151) >> 3);
            *v155 = *v131;
            *(v155 + 8) = xmmword_2297CB0;
            v150 = v155 + 24;
            v156 = (v155 - (v148 - v151));
            memcpy(v156, v151, v148 - v151);
            a1[14] = v156;
            a1[15] = v150;
            a1[16] = 0;
            if (v151)
            {
              operator delete(v151);
            }

            a6 = v195;
          }

          else
          {
            *v148 = *v131;
            *(v148 + 8) = xmmword_2297CB0;
            v150 = v148 + 24;
            a6 = v195;
          }

          a1[15] = v150;
LABEL_204:
          v208 = v131;
          v157 = *(sub_472340(v9 + 7, v131) + 6);
          v158 = sub_472044(a1 + 1, 1.0, &v214, v131, a4, v133 == 8);
          v159 = v158 + v105;
          v160 = (v158 & 0xFFFFFFFF00000000) + v105;
          v161 = HIDWORD(v160);
          v205 = v160 & 0xFFFFFFFF00000000 | (v158 + v105);
          if (*a5 != 0x7FFFFFFF && *a5 <= SHIDWORD(v160))
          {
            if (sub_1211940())
            {
              sub_19594F8(&v208);
              sub_4A5C(&v208, "Exceeding the search radius, pruning the search here.", 53);
              operator new();
            }

            goto LABEL_162;
          }

          v162 = a1[14] + 24 * v157;
          v165 = *(v162 + 16);
          v164 = v162 + 16;
          v163 = v165;
          if (v165 == -1)
          {
            break;
          }

          v166 = *(v164 + 4);
          if (v166 == 0x7FFFFFFF)
          {
            break;
          }

          if (v163 == v159)
          {
            if (v166 > v161)
            {
              break;
            }
          }

          else if (v163 > v159)
          {
            break;
          }

LABEL_162:
          if (++v131 == v132)
          {
            goto LABEL_136;
          }
        }

        v167 = a1[5];
        if (v157 >= (a1[6] - v167) >> 2 || *(v167 + 4 * v157) == -1)
        {
          sub_463D28(v9, v157, &v205);
        }

        else
        {
          sub_463BF0(v9, v157, &v205);
        }

        *(a1[14] + 24 * v157 + 16) = v205;
        v168 = a1[14] + 24 * v157;
        v169 = v214;
        *(v168 + 11) = *(&v214 + 3);
        *(v168 + 8) = v169;
        goto LABEL_162;
      }

LABEL_136:
      v100 = v193;
      if (!*(a1 + 16))
      {
        goto LABEL_248;
      }
    }

    if (sub_12119FC())
    {
      sub_19594F8(&v208);
      sub_4A5C(&v208, "Reached time limit for exploration.", 35);
      operator new();
    }
  }

LABEL_248:
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (v215)
  {
    v216 = v215;
    operator delete(v215);
  }
}

void sub_471F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  sub_1959728(&a47);
  v49 = *(v47 - 128);
  if (v49)
  {
    *(v47 - 120) = v49;
    operator delete(v49);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_472044(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6)
{
  v11 = (*(**a1 + 56))(*a1);
  v12 = (*(**a1 + 48))(*a1, a4);
  (*(**a1 + 32))(&v41);
  (*(**a1 + 32))(&v36);
  v15 = v41;
  v16 = 1.0;
  if (v41 <= 7u)
  {
    LODWORD(v14) = *(a5 + v41 + 7);
    v16 = v14;
  }

  if (a6)
  {
    goto LABEL_15;
  }

  v17 = v12 + 360 * ((v11 + 180) / 0x168u) - (v11 + 180);
  if ((v12 + 360 * ((v11 + 180) / 0x168u) - (v11 + 180)) > 180)
  {
    LOWORD(v17) = v17 - 360;
  }

  if (v17 < -179)
  {
    LOWORD(v17) = v17 + 360;
  }

  if ((v17 & 0x8000u) != 0)
  {
    v17 = -v17;
  }

  v18 = a5[1];
  v13 = *a5;
  if (*a5 == v18)
  {
LABEL_15:
    v21 = 0;
  }

  else
  {
    v19 = 0;
    while (1)
    {
      v20 = *(v13 + v19);
      if (v20 >= v17)
      {
        break;
      }

      v19 += 8;
      if (v13 + v19 == v18)
      {
        goto LABEL_23;
      }
    }

    if (v13 + v19 == v18)
    {
LABEL_23:
      v21 = *(v18 - 4);
      goto LABEL_24;
    }

    if (*(a5 + 24) != 1 || v19 == 0)
    {
      v21 = *(v13 + v19 + 4);
    }

    else
    {
      v33 = v13 + v19;
      v34 = *(v33 - 8);
      v35 = *(v33 + 4);
      v13 = *(v33 - 4);
      v21 = v13 + vcvtad_u64_f64((v17 - v34) / (v20 - v34) * (v35 - v13));
    }
  }

LABEL_24:
  v23 = HIDWORD(v41);
  v24 = v36;
  v25 = WORD1(v41);
  v26 = WORD1(v36);
  v28 = *(a5 + 15);
  v27 = *(a5 + 16);
  if (v40 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v15 == v24)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  LODWORD(v13) = llround(v23 * a2);
  v30 = fmax(round(llround(v13 / 100.0) / v16), 1.0);
  if (v25 == v26)
  {
    v31 = 0;
  }

  else
  {
    v31 = v27;
  }

  return (v21 + v29 + v31 + v30) | (v13 << 32);
}