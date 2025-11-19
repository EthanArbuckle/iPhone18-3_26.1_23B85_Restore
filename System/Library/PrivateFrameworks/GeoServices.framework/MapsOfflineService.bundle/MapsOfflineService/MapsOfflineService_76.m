void sub_4E02BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4E02F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_4D27A4(a1);
  v4 = *v3;
  v83 = *(v3 + 8);
  if (*v3 != v83)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1.0;
    v9 = 0.5;
    v90 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v91 = vdupq_n_s64(0x4076800000000000uLL);
    v88 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v89 = vdupq_n_s64(0xC066800000000000);
    do
    {
      v10 = *(a3 + 32);
      v11 = v10 - 1;
      v12 = v4[2];
      if (v5 < v10 - 1 && v7 < v12)
      {
        v13 = v10 - v5 - 2;
        v14 = *(a3 + 40) + 8 * v5 + 16;
        do
        {
          v6 = v7;
          v15 = *(*(v14 - 8) + 32);
          if (!v15)
          {
            v15 = &off_2734B00;
          }

          v16 = *(v15 + 7) / 10000000.0;
          v17 = -1;
          if (v16 <= 180.0)
          {
            v18 = *(v15 + 6) / 10000000.0;
            if (fabs(v18) <= 85.0511288 && v16 >= -180.0)
            {
              v19 = sin(fmin(fmax(v18, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
              LODWORD(v20) = ((log((v19 + v8) / (v8 - v19)) / -12.5663706 + v9) * 4294967300.0);
              if (v20 >= 0xFFFFFFFE)
              {
                v20 = 4294967294;
              }

              else
              {
                v20 = v20;
              }

              v17 = ((v16 + 180.0) / 360.0 * 4294967300.0) | (v20 << 32);
            }
          }

          v21 = *(*v14 + 32);
          if (!v21)
          {
            v21 = &off_2734B00;
          }

          v22 = *(v21 + 7) / 10000000.0;
          v23 = -1;
          if (v22 <= 180.0)
          {
            v24 = *(v21 + 6) / 10000000.0;
            if (fabs(v24) <= 85.0511288 && v22 >= -180.0)
            {
              v25 = sin(fmin(fmax(v24, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
              LODWORD(v26) = ((log((v25 + v8) / (v8 - v25)) / -12.5663706 + v9) * 4294967300.0);
              if (v26 >= 0xFFFFFFFE)
              {
                v26 = 4294967294;
              }

              else
              {
                v26 = v26;
              }

              v23 = ((v22 + 180.0) / 360.0 * 4294967300.0) | (v26 << 32);
            }
          }

          if (v17 == -1 && HIDWORD(v17) == 0xFFFFFFFF)
          {
            v7 = v6 + 0x7FFFFFFFFFFFFFFFLL;
            if (!v13)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          if (v23 == -1 && HIDWORD(v23) == 0xFFFFFFFF)
          {
            v7 = v6 + 0x7FFFFFFFFFFFFFFFLL;
            if (!v13)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          v27 = exp(3.14159265 - HIDWORD(v17) * 6.28318531 / 4294967300.0);
          v28 = atan((v27 - v8 / v27) * 0.5) * 57.2957795 * 0.0174532925;
          v29.i64[0] = v17;
          v29.i64[1] = v23;
          v30 = exp(3.14159265 - HIDWORD(v23) * 6.28318531 / 4294967300.0);
          v8 = 1.0;
          v31 = atan((v30 - 1.0 / v30) * 0.5) * 57.2957795 * 0.0174532925;
          v32 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v29), v91), v90), v89), v88);
          v93 = vsubq_f64(v32, vdupq_laneq_s64(v32, 1)).f64[0];
          v33 = sin((v28 - v31) * 0.5);
          v34 = v33 * v33;
          v35 = cos(v28);
          v36 = v35 * cos(v31);
          v37 = sin(0.5 * v93);
          v38 = atan2(sqrt(v37 * v37 * v36 + v34), sqrt(1.0 - (v37 * v37 * v36 + v34)));
          v39 = (v38 + v38) * 6372797.56 * 100.0;
          if (v39 >= 0.0)
          {
            v40 = v39;
            if (v39 >= 4.50359963e15)
            {
              goto LABEL_39;
            }

            v41 = (v39 + v39) + 1;
          }

          else
          {
            v40 = v39;
            if (v39 <= -4.50359963e15)
            {
              goto LABEL_39;
            }

            v41 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
          }

          v40 = (v41 >> 1);
LABEL_39:
          v9 = 0.5;
          if (v40 >= 9.22337204e18)
          {
            v7 = v6 + 0x7FFFFFFFFFFFFFFELL;
            if (!v13)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          if (v39 >= 0.0)
          {
            if (v39 >= 4.50359963e15)
            {
              goto LABEL_48;
            }

            v42 = (v39 + v39) + 1;
          }

          else
          {
            if (v39 <= -4.50359963e15)
            {
              goto LABEL_48;
            }

            v42 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
          }

          v39 = (v42 >> 1);
LABEL_48:
          v7 = v39 + v6;
          if (!v13)
          {
LABEL_51:
            v5 = v11;
            break;
          }

LABEL_49:
          ++v5;
          --v13;
          v14 += 8;
        }

        while (v7 < v12);
      }

      v43 = v12 - v6;
      v44 = v7 - v12;
      sub_4E0E48(a1, *v4, v5 - (v12 - v6 < v7 - v12), a2, a3);
      v45 = *(a3 + 32);
      v46 = v4[3];
      v87 = v4;
      v86 = v5 - (v12 - v6 < v7 - v12);
      if (v5 >= v45 - 1)
      {
        v50 = v4[3];
      }

      else
      {
        v94 = v4[3];
        if (v7 < v46)
        {
          v47 = v5 + 1;
          v48 = *(a3 + 40) + 8 * v5 + 16;
          if (v43 >= v44)
          {
            v49 = 0;
          }

          else
          {
            v49 = -1;
          }

          v50 = v46;
          while (1)
          {
            v6 = v7;
            v51 = *(v48 - 8);
            v52 = *(v51 + 32);
            if (!v52)
            {
              v52 = &off_2734B00;
            }

            v53 = *(v52 + 7) / 10000000.0;
            v54 = -1;
            if (v53 <= 180.0)
            {
              v55 = *(v52 + 6) / 10000000.0;
              if (fabs(v55) <= 85.0511288 && v53 >= -180.0)
              {
                v56 = sin(fmin(fmax(v55, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
                LODWORD(v57) = ((log((v56 + v8) / (v8 - v56)) / -12.5663706 + v9) * 4294967300.0);
                if (v57 >= 0xFFFFFFFE)
                {
                  v57 = 4294967294;
                }

                else
                {
                  v57 = v57;
                }

                v54 = ((v53 + 180.0) / 360.0 * 4294967300.0) | (v57 << 32);
              }
            }

            v58 = *(*v48 + 32);
            if (!v58)
            {
              v58 = &off_2734B00;
            }

            v59 = *(v58 + 7) / 10000000.0;
            v60 = -1;
            if (v59 <= 180.0)
            {
              v61 = *(v58 + 6) / 10000000.0;
              if (fabs(v61) <= 85.0511288 && v59 >= -180.0)
              {
                v62 = sin(fmin(fmax(v61, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
                LODWORD(v63) = ((log((v62 + v8) / (v8 - v62)) / -12.5663706 + v9) * 4294967300.0);
                if (v63 >= 0xFFFFFFFE)
                {
                  v63 = 4294967294;
                }

                else
                {
                  v63 = v63;
                }

                v60 = ((v59 + 180.0) / 360.0 * 4294967300.0) | (v63 << 32);
              }
            }

            if (v54 == -1 && HIDWORD(v54) == 0xFFFFFFFF)
            {
              v64 = 0x7FFFFFFFFFFFFFFFLL;
              if (v49)
              {
                goto LABEL_100;
              }

              goto LABEL_102;
            }

            if (v60 == -1 && HIDWORD(v60) == 0xFFFFFFFF)
            {
              v64 = 0x7FFFFFFFFFFFFFFFLL;
              v50 = v94;
              if (v49)
              {
                goto LABEL_100;
              }

              goto LABEL_102;
            }

            v65 = exp(3.14159265 - HIDWORD(v54) * 6.28318531 / 4294967300.0);
            v66 = atan((v65 - v8 / v65) * 0.5) * 57.2957795 * 0.0174532925;
            v67.i64[0] = v54;
            v67.i64[1] = v60;
            v68 = exp(3.14159265 - HIDWORD(v60) * 6.28318531 / 4294967300.0);
            v8 = 1.0;
            v69 = atan((v68 - 1.0 / v68) * 0.5) * 57.2957795 * 0.0174532925;
            v70 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v67), v91), v90), v89), v88);
            v92 = vsubq_f64(v70, vdupq_laneq_s64(v70, 1)).f64[0];
            v71 = sin((v66 - v69) * 0.5);
            v72 = v71 * v71;
            v73 = cos(v66);
            v74 = v73 * cos(v69);
            v75 = sin(0.5 * v92);
            v76 = atan2(sqrt(v75 * v75 * v74 + v72), sqrt(1.0 - (v75 * v75 * v74 + v72)));
            v77 = (v76 + v76) * 6372797.56 * 100.0;
            if (v77 >= 0.0)
            {
              v78 = v77;
              if (v77 >= 4.50359963e15)
              {
                goto LABEL_90;
              }

              v79 = (v77 + v77) + 1;
            }

            else
            {
              v78 = v77;
              if (v77 <= -4.50359963e15)
              {
                goto LABEL_90;
              }

              v79 = (v77 + v77) - 1 + (((v77 + v77) - 1) >> 63);
            }

            v78 = (v79 >> 1);
LABEL_90:
            v9 = 0.5;
            v50 = v94;
            if (v78 >= 9.22337204e18)
            {
              v64 = 0x7FFFFFFFFFFFFFFELL;
              if (v49)
              {
                goto LABEL_100;
              }

              goto LABEL_102;
            }

            if (v77 >= 0.0)
            {
              if (v77 >= 4.50359963e15)
              {
                goto LABEL_99;
              }

              v80 = (v77 + v77) + 1;
            }

            else
            {
              if (v77 <= -4.50359963e15)
              {
                goto LABEL_99;
              }

              v80 = (v77 + v77) - 1 + (((v77 + v77) - 1) >> 63);
            }

            v77 = (v80 >> 1);
LABEL_99:
            v64 = v77;
            if (v49)
            {
LABEL_100:
              if (*(v51 + 84) != 2)
              {
                v81 = *(v51 + 16);
                *(v51 + 84) = 2;
                *(v51 + 48) = 0;
                *(v51 + 68) = 0;
                *(v51 + 60) = 0;
                *(v51 + 76) = 0;
                *(v51 + 16) = v81 & 0xFFFFF417 | 0x800;
                v45 = *(a3 + 32);
              }
            }

LABEL_102:
            v7 = v64 + v6;
            ++v5;
            if (v47 < v45 - 1)
            {
              ++v47;
              v48 += 8;
              --v49;
              if (v7 < v50)
              {
                continue;
              }
            }

            goto LABEL_107;
          }
        }

        v50 = v4[3];
      }

LABEL_107:
      v82 = v5 - (v50 - v6 < v7 - v50);
      if (v82 != v86)
      {
        sub_4E0E48(a1, v87[1], v82, a2, a3);
      }

      v4 = v87 + 8;
    }

    while (v87 + 8 != v83);
  }
}

void sub_4E0E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a5 + 40) + 8 * a3 + 8) + 84) == 1)
  {
    return;
  }

  v8 = a3;
  sub_4D0560();
  v10 = v9;
  v12 = v11 + a2;
  v13 = &off_2734B00;
  if (*(*(*(a5 + 40) + 8 * v8 + 8) + 32))
  {
    v13 = *(*(*(a5 + 40) + 8 * v8 + 8) + 32);
  }

  v14 = *(v13 + 7) / 10000000.0;
  v15 = -1;
  if (v14 <= 180.0)
  {
    v16 = *(v13 + 6) / 10000000.0;
    if (fabs(v16) <= 85.0511288 && v14 >= -180.0)
    {
      v17 = sin(fmin(fmax(v16, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v18) = ((log((v17 + 1.0) / (1.0 - v17)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v18 >= 0xFFFFFFFE)
      {
        v18 = 4294967294;
      }

      else
      {
        v18 = v18;
      }

      v15 = ((v14 + 180.0) / 360.0 * 4294967300.0) | (v18 << 32);
    }
  }

  v70 = v15;
  v71 = 0x7FFFFFFF;
  sub_4D0560();
  v21 = v19;
  v22 = v20;
  if (v19)
  {
    if (v10)
    {
      for (i = 0; ; i += sub_4D23F8(v21, v22++, v26))
      {
        v24 = sub_4D1DC0(v21);
        v25 = sub_4D1DC0(v10);
        if (v22 >= v24 || v12 >= v25)
        {
          if (v22 < v24 == v12 < v25)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v27 = sub_4D1F50(v21, v22);
          if (v27 == sub_4D1F50(v10, v12))
          {
            goto LABEL_30;
          }
        }
      }
    }

    if (v20 < sub_4D1DC0(v19))
    {
      i = 0;
      do
      {
        i += sub_4D23F8(v21, v22++, v29);
      }

      while (v22 < sub_4D1DC0(v21));
      goto LABEL_30;
    }

LABEL_29:
    LODWORD(i) = 0;
    goto LABEL_30;
  }

  if (!v10 || v12 >= sub_4D1DC0(v10))
  {
    goto LABEL_29;
  }

  i = 0;
  do
  {
    i += sub_4D23F8(0, v22++, v28);
  }

  while (v12 < sub_4D1DC0(v10));
LABEL_30:
  v30 = sub_4D1F50(v10, v12);
  sub_2B7A20(a4, *(v30 + 32) & 0xFFFFFFFFFFFFFFLL, v72);
  sub_31BF20(v72, &v75);
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  v31 = sub_4A7FF4(&v75, 0, 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 2) - 1, &v70, 0, 0x7FFFFFFFFFFFFFFFLL, 1);
  v32 = sub_4D1F50(v10, v12);
  v33 = sub_2B51D8(a4, *(v32 + 32) | (*(v32 + 36) << 32));
  v35 = (v33 - *v33);
  v36 = 0.0;
  if (*v35 >= 9u)
  {
    v37 = v35[4];
    if (v37)
    {
      LODWORD(v34) = *(v33 + v37);
      v36 = v34;
    }
  }

  sub_47190(&v70, &v75);
  v39 = v36 * v38;
  v40 = (v39 + v39);
  if (v39 > -4.50359963e15)
  {
    v41 = ((v40 - 1) / 2);
  }

  else
  {
    v41 = v39;
  }

  v42 = ((v40 + 1) >> 1);
  if (v39 >= 4.50359963e15)
  {
    v42 = v39;
  }

  if (v39 >= 0.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = v41;
  }

  v44 = v75;
  v45 = v75 + 12 * v31;
  v46 = v70 - *v45;
  if (v70 != *v45)
  {
    v48 = HIDWORD(v70);
    v47 = v45[1];
LABEL_47:
    v50 = --v46;
    if (v46 < -v46)
    {
      v50 = v46;
    }

      ;
    }

      ;
    }

    if (!v44)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v47 = v45[1];
  v48 = HIDWORD(v70);
  j = 0.0;
  if (v47 != HIDWORD(v70))
  {
    goto LABEL_47;
  }

LABEL_54:
  v76 = v44;
  operator delete(v44);
LABEL_55:
  v51 = llround(j * 100.0) % 36000;
  if (v51 <= 0xFFFF735F)
  {
    v52 = v51;
  }

  else
  {
    v52 = v51 - 29536;
  }

  v53 = *(*(a5 + 40) + 8 * v8 + 8);
  *(v53 + 16) |= 0x800u;
  *(v53 + 84) = 1;
  v54 = *(sub_4D1F50(v10, v12) + 32);
  v55 = sub_2B51D8(a4, v54 & 0xFFFFFFFFFFFFLL);
  v56 = (v55 - *v55);
  if (*v56 >= 0x1Du && (v57 = v56[14]) != 0)
  {
    v58 = *(v55 + v57);
  }

  else
  {
    v58 = 0;
  }

  if ((v54 & 0xFF000000000000) == 0x1000000000000)
  {
    v59 = -v58;
  }

  else
  {
    v59 = v58;
  }

  v60 = *(v53 + 16);
  *(v53 + 16) = v60 | 8;
  *(v53 + 48) = v59;
  v61 = v52 / 100.0;
  if (v61 < 4.50359963e15)
  {
    v61 = (((v61 + v61) + 1) >> 1);
  }

  *(v53 + 16) = v60 | 0x28;
  *(v53 + 60) = v61;
  v62 = sub_4D1F50(v10, v12);
  v63 = sub_2B51D8(a4, *(v62 + 32) | (*(v62 + 36) << 32));
  v64 = (v63 - *v63);
  if (*v64 < 0x1Bu)
  {
    LODWORD(v65) = 0;
  }

  else
  {
    v65 = v64[13];
    if (v65)
    {
      LODWORD(v65) = *(v63 + v65);
    }
  }

  *(v53 + 16) |= 0x40u;
  *(v53 + 64) = v65;
  v66 = sub_4D1F50(v10, v12);
  v67 = sub_2B51D8(a4, *(v66 + 32) | (*(v66 + 36) << 32));
  v68 = (v67 - *v67);
  if (*v68 < 0x13u)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v69 = v68[9];
    if (v69)
    {
      LODWORD(v69) = *(v67 + v69);
    }
  }

  *(v53 + 16) |= 0x180u;
  *(v53 + 68) = v69;
  *(v53 + 72) = i + v43;
}

void sub_4E14F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4E1528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_4D27A4(a1);
  v4 = *v3;
  v83 = *(v3 + 8);
  if (*v3 != v83)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1.0;
    v9 = 0.5;
    v90 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v91 = vdupq_n_s64(0x4076800000000000uLL);
    v88 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v89 = vdupq_n_s64(0xC066800000000000);
    do
    {
      v10 = *(a3 + 32);
      v11 = v10 - 1;
      v12 = v4[2];
      if (v5 < v10 - 1 && v7 < v12)
      {
        v13 = v10 - v5 - 2;
        v14 = *(a3 + 40) + 8 * v5 + 16;
        do
        {
          v6 = v7;
          v15 = *(*(v14 - 8) + 32);
          if (!v15)
          {
            v15 = &off_2734B00;
          }

          v16 = *(v15 + 7) / 10000000.0;
          v17 = -1;
          if (v16 <= 180.0)
          {
            v18 = *(v15 + 6) / 10000000.0;
            if (fabs(v18) <= 85.0511288 && v16 >= -180.0)
            {
              v19 = sin(fmin(fmax(v18, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
              LODWORD(v20) = ((log((v19 + v8) / (v8 - v19)) / -12.5663706 + v9) * 4294967300.0);
              if (v20 >= 0xFFFFFFFE)
              {
                v20 = 4294967294;
              }

              else
              {
                v20 = v20;
              }

              v17 = ((v16 + 180.0) / 360.0 * 4294967300.0) | (v20 << 32);
            }
          }

          v21 = *(*v14 + 32);
          if (!v21)
          {
            v21 = &off_2734B00;
          }

          v22 = *(v21 + 7) / 10000000.0;
          v23 = -1;
          if (v22 <= 180.0)
          {
            v24 = *(v21 + 6) / 10000000.0;
            if (fabs(v24) <= 85.0511288 && v22 >= -180.0)
            {
              v25 = sin(fmin(fmax(v24, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
              LODWORD(v26) = ((log((v25 + v8) / (v8 - v25)) / -12.5663706 + v9) * 4294967300.0);
              if (v26 >= 0xFFFFFFFE)
              {
                v26 = 4294967294;
              }

              else
              {
                v26 = v26;
              }

              v23 = ((v22 + 180.0) / 360.0 * 4294967300.0) | (v26 << 32);
            }
          }

          if (v17 == -1 && HIDWORD(v17) == 0xFFFFFFFF)
          {
            v7 = v6 + 0x7FFFFFFFFFFFFFFFLL;
            if (!v13)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          if (v23 == -1 && HIDWORD(v23) == 0xFFFFFFFF)
          {
            v7 = v6 + 0x7FFFFFFFFFFFFFFFLL;
            if (!v13)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          v27 = exp(3.14159265 - HIDWORD(v17) * 6.28318531 / 4294967300.0);
          v28 = atan((v27 - v8 / v27) * 0.5) * 57.2957795 * 0.0174532925;
          v29.i64[0] = v17;
          v29.i64[1] = v23;
          v30 = exp(3.14159265 - HIDWORD(v23) * 6.28318531 / 4294967300.0);
          v8 = 1.0;
          v31 = atan((v30 - 1.0 / v30) * 0.5) * 57.2957795 * 0.0174532925;
          v32 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v29), v91), v90), v89), v88);
          v93 = vsubq_f64(v32, vdupq_laneq_s64(v32, 1)).f64[0];
          v33 = sin((v28 - v31) * 0.5);
          v34 = v33 * v33;
          v35 = cos(v28);
          v36 = v35 * cos(v31);
          v37 = sin(0.5 * v93);
          v38 = atan2(sqrt(v37 * v37 * v36 + v34), sqrt(1.0 - (v37 * v37 * v36 + v34)));
          v39 = (v38 + v38) * 6372797.56 * 100.0;
          if (v39 >= 0.0)
          {
            v40 = v39;
            if (v39 >= 4.50359963e15)
            {
              goto LABEL_39;
            }

            v41 = (v39 + v39) + 1;
          }

          else
          {
            v40 = v39;
            if (v39 <= -4.50359963e15)
            {
              goto LABEL_39;
            }

            v41 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
          }

          v40 = (v41 >> 1);
LABEL_39:
          v9 = 0.5;
          if (v40 >= 9.22337204e18)
          {
            v7 = v6 + 0x7FFFFFFFFFFFFFFELL;
            if (!v13)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          if (v39 >= 0.0)
          {
            if (v39 >= 4.50359963e15)
            {
              goto LABEL_48;
            }

            v42 = (v39 + v39) + 1;
          }

          else
          {
            if (v39 <= -4.50359963e15)
            {
              goto LABEL_48;
            }

            v42 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
          }

          v39 = (v42 >> 1);
LABEL_48:
          v7 = v39 + v6;
          if (!v13)
          {
LABEL_51:
            v5 = v11;
            break;
          }

LABEL_49:
          ++v5;
          --v13;
          v14 += 8;
        }

        while (v7 < v12);
      }

      v43 = v12 - v6;
      v44 = v7 - v12;
      sub_4E207C(a1, *v4, v5 - (v12 - v6 < v7 - v12), a2, a3);
      v45 = *(a3 + 32);
      v46 = v4[3];
      v87 = v4;
      v86 = v5 - (v12 - v6 < v7 - v12);
      if (v5 >= v45 - 1)
      {
        v50 = v4[3];
      }

      else
      {
        v94 = v4[3];
        if (v7 < v46)
        {
          v47 = v5 + 1;
          v48 = *(a3 + 40) + 8 * v5 + 16;
          if (v43 >= v44)
          {
            v49 = 0;
          }

          else
          {
            v49 = -1;
          }

          v50 = v46;
          while (1)
          {
            v6 = v7;
            v51 = *(v48 - 8);
            v52 = *(v51 + 32);
            if (!v52)
            {
              v52 = &off_2734B00;
            }

            v53 = *(v52 + 7) / 10000000.0;
            v54 = -1;
            if (v53 <= 180.0)
            {
              v55 = *(v52 + 6) / 10000000.0;
              if (fabs(v55) <= 85.0511288 && v53 >= -180.0)
              {
                v56 = sin(fmin(fmax(v55, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
                LODWORD(v57) = ((log((v56 + v8) / (v8 - v56)) / -12.5663706 + v9) * 4294967300.0);
                if (v57 >= 0xFFFFFFFE)
                {
                  v57 = 4294967294;
                }

                else
                {
                  v57 = v57;
                }

                v54 = ((v53 + 180.0) / 360.0 * 4294967300.0) | (v57 << 32);
              }
            }

            v58 = *(*v48 + 32);
            if (!v58)
            {
              v58 = &off_2734B00;
            }

            v59 = *(v58 + 7) / 10000000.0;
            v60 = -1;
            if (v59 <= 180.0)
            {
              v61 = *(v58 + 6) / 10000000.0;
              if (fabs(v61) <= 85.0511288 && v59 >= -180.0)
              {
                v62 = sin(fmin(fmax(v61, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
                LODWORD(v63) = ((log((v62 + v8) / (v8 - v62)) / -12.5663706 + v9) * 4294967300.0);
                if (v63 >= 0xFFFFFFFE)
                {
                  v63 = 4294967294;
                }

                else
                {
                  v63 = v63;
                }

                v60 = ((v59 + 180.0) / 360.0 * 4294967300.0) | (v63 << 32);
              }
            }

            if (v54 == -1 && HIDWORD(v54) == 0xFFFFFFFF)
            {
              v64 = 0x7FFFFFFFFFFFFFFFLL;
              if (v49)
              {
                goto LABEL_100;
              }

              goto LABEL_102;
            }

            if (v60 == -1 && HIDWORD(v60) == 0xFFFFFFFF)
            {
              v64 = 0x7FFFFFFFFFFFFFFFLL;
              v50 = v94;
              if (v49)
              {
                goto LABEL_100;
              }

              goto LABEL_102;
            }

            v65 = exp(3.14159265 - HIDWORD(v54) * 6.28318531 / 4294967300.0);
            v66 = atan((v65 - v8 / v65) * 0.5) * 57.2957795 * 0.0174532925;
            v67.i64[0] = v54;
            v67.i64[1] = v60;
            v68 = exp(3.14159265 - HIDWORD(v60) * 6.28318531 / 4294967300.0);
            v8 = 1.0;
            v69 = atan((v68 - 1.0 / v68) * 0.5) * 57.2957795 * 0.0174532925;
            v70 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v67), v91), v90), v89), v88);
            v92 = vsubq_f64(v70, vdupq_laneq_s64(v70, 1)).f64[0];
            v71 = sin((v66 - v69) * 0.5);
            v72 = v71 * v71;
            v73 = cos(v66);
            v74 = v73 * cos(v69);
            v75 = sin(0.5 * v92);
            v76 = atan2(sqrt(v75 * v75 * v74 + v72), sqrt(1.0 - (v75 * v75 * v74 + v72)));
            v77 = (v76 + v76) * 6372797.56 * 100.0;
            if (v77 >= 0.0)
            {
              v78 = v77;
              if (v77 >= 4.50359963e15)
              {
                goto LABEL_90;
              }

              v79 = (v77 + v77) + 1;
            }

            else
            {
              v78 = v77;
              if (v77 <= -4.50359963e15)
              {
                goto LABEL_90;
              }

              v79 = (v77 + v77) - 1 + (((v77 + v77) - 1) >> 63);
            }

            v78 = (v79 >> 1);
LABEL_90:
            v9 = 0.5;
            v50 = v94;
            if (v78 >= 9.22337204e18)
            {
              v64 = 0x7FFFFFFFFFFFFFFELL;
              if (v49)
              {
                goto LABEL_100;
              }

              goto LABEL_102;
            }

            if (v77 >= 0.0)
            {
              if (v77 >= 4.50359963e15)
              {
                goto LABEL_99;
              }

              v80 = (v77 + v77) + 1;
            }

            else
            {
              if (v77 <= -4.50359963e15)
              {
                goto LABEL_99;
              }

              v80 = (v77 + v77) - 1 + (((v77 + v77) - 1) >> 63);
            }

            v77 = (v80 >> 1);
LABEL_99:
            v64 = v77;
            if (v49)
            {
LABEL_100:
              if (*(v51 + 84) != 2)
              {
                v81 = *(v51 + 16);
                *(v51 + 84) = 2;
                *(v51 + 48) = 0;
                *(v51 + 68) = 0;
                *(v51 + 60) = 0;
                *(v51 + 76) = 0;
                *(v51 + 16) = v81 & 0xFFFFF417 | 0x800;
                v45 = *(a3 + 32);
              }
            }

LABEL_102:
            v7 = v64 + v6;
            ++v5;
            if (v47 < v45 - 1)
            {
              ++v47;
              v48 += 8;
              --v49;
              if (v7 < v50)
              {
                continue;
              }
            }

            goto LABEL_107;
          }
        }

        v50 = v4[3];
      }

LABEL_107:
      v82 = v5 - (v50 - v6 < v7 - v50);
      if (v82 != v86)
      {
        sub_4E207C(a1, v87[1], v82, a2, a3);
      }

      v4 = v87 + 8;
    }

    while (v87 + 8 != v83);
  }
}

void sub_4E207C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a5 + 40) + 8 * a3 + 8) + 84) == 1)
  {
    return;
  }

  v8 = a3;
  sub_4D0560();
  v10 = v9;
  v12 = v11 + a2;
  v13 = &off_2734B00;
  if (*(*(*(a5 + 40) + 8 * v8 + 8) + 32))
  {
    v13 = *(*(*(a5 + 40) + 8 * v8 + 8) + 32);
  }

  v14 = *(v13 + 7) / 10000000.0;
  v15 = -1;
  if (v14 <= 180.0)
  {
    v16 = *(v13 + 6) / 10000000.0;
    if (fabs(v16) <= 85.0511288 && v14 >= -180.0)
    {
      v17 = sin(fmin(fmax(v16, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v18) = ((log((v17 + 1.0) / (1.0 - v17)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v18 >= 0xFFFFFFFE)
      {
        v18 = 4294967294;
      }

      else
      {
        v18 = v18;
      }

      v15 = ((v14 + 180.0) / 360.0 * 4294967300.0) | (v18 << 32);
    }
  }

  v70 = v15;
  v71 = 0x7FFFFFFF;
  sub_4D0560();
  v21 = v19;
  v22 = v20;
  if (v19)
  {
    if (v10)
    {
      for (i = 0; ; i += sub_4D23F8(v21, v22++, v26))
      {
        v24 = sub_4D1DC0(v21);
        v25 = sub_4D1DC0(v10);
        if (v22 >= v24 || v12 >= v25)
        {
          if (v22 < v24 == v12 < v25)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v27 = sub_4D1F50(v21, v22);
          if (v27 == sub_4D1F50(v10, v12))
          {
            goto LABEL_30;
          }
        }
      }
    }

    if (v20 < sub_4D1DC0(v19))
    {
      i = 0;
      do
      {
        i += sub_4D23F8(v21, v22++, v29);
      }

      while (v22 < sub_4D1DC0(v21));
      goto LABEL_30;
    }

LABEL_29:
    LODWORD(i) = 0;
    goto LABEL_30;
  }

  if (!v10 || v12 >= sub_4D1DC0(v10))
  {
    goto LABEL_29;
  }

  i = 0;
  do
  {
    i += sub_4D23F8(0, v22++, v28);
  }

  while (v12 < sub_4D1DC0(v10));
LABEL_30:
  v30 = sub_4D1F50(v10, v12);
  sub_2B7A20(a4, *(v30 + 32) & 0xFFFFFFFFFFFFFFLL, v72);
  sub_31BF20(v72, &v75);
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  v31 = sub_4A7FF4(&v75, 0, 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 2) - 1, &v70, 0, 0x7FFFFFFFFFFFFFFFLL, 1);
  v32 = sub_4D1F50(v10, v12);
  v33 = sub_2B51D8(a4, *(v32 + 32) | (*(v32 + 36) << 32));
  v35 = (v33 - *v33);
  v36 = 0.0;
  if (*v35 >= 9u)
  {
    v37 = v35[4];
    if (v37)
    {
      LODWORD(v34) = *(v33 + v37);
      v36 = v34;
    }
  }

  sub_47190(&v70, &v75);
  v39 = v36 * v38;
  v40 = (v39 + v39);
  if (v39 > -4.50359963e15)
  {
    v41 = ((v40 - 1) / 2);
  }

  else
  {
    v41 = v39;
  }

  v42 = ((v40 + 1) >> 1);
  if (v39 >= 4.50359963e15)
  {
    v42 = v39;
  }

  if (v39 >= 0.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = v41;
  }

  v44 = v75;
  v45 = v75 + 12 * v31;
  v46 = v70 - *v45;
  if (v70 != *v45)
  {
    v48 = HIDWORD(v70);
    v47 = v45[1];
LABEL_47:
    v50 = --v46;
    if (v46 < -v46)
    {
      v50 = v46;
    }

      ;
    }

      ;
    }

    if (!v44)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v47 = v45[1];
  v48 = HIDWORD(v70);
  j = 0.0;
  if (v47 != HIDWORD(v70))
  {
    goto LABEL_47;
  }

LABEL_54:
  v76 = v44;
  operator delete(v44);
LABEL_55:
  v51 = llround(j * 100.0) % 36000;
  if (v51 <= 0xFFFF735F)
  {
    v52 = v51;
  }

  else
  {
    v52 = v51 - 29536;
  }

  v53 = *(*(a5 + 40) + 8 * v8 + 8);
  *(v53 + 16) |= 0x800u;
  *(v53 + 84) = 1;
  v54 = *(sub_4D1F50(v10, v12) + 32);
  v55 = sub_2B51D8(a4, v54 & 0xFFFFFFFFFFFFLL);
  v56 = (v55 - *v55);
  if (*v56 >= 0x1Du && (v57 = v56[14]) != 0)
  {
    v58 = *(v55 + v57);
  }

  else
  {
    v58 = 0;
  }

  if ((v54 & 0xFF000000000000) == 0x1000000000000)
  {
    v59 = -v58;
  }

  else
  {
    v59 = v58;
  }

  v60 = *(v53 + 16);
  *(v53 + 16) = v60 | 8;
  *(v53 + 48) = v59;
  v61 = v52 / 100.0;
  if (v61 < 4.50359963e15)
  {
    v61 = (((v61 + v61) + 1) >> 1);
  }

  *(v53 + 16) = v60 | 0x28;
  *(v53 + 60) = v61;
  v62 = sub_4D1F50(v10, v12);
  v63 = sub_2B51D8(a4, *(v62 + 32) | (*(v62 + 36) << 32));
  v64 = (v63 - *v63);
  if (*v64 < 0x1Bu)
  {
    LODWORD(v65) = 0;
  }

  else
  {
    v65 = v64[13];
    if (v65)
    {
      LODWORD(v65) = *(v63 + v65);
    }
  }

  *(v53 + 16) |= 0x40u;
  *(v53 + 64) = v65;
  v66 = sub_4D1F50(v10, v12);
  v67 = sub_2B51D8(a4, *(v66 + 32) | (*(v66 + 36) << 32));
  v68 = (v67 - *v67);
  if (*v68 < 0x13u)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v69 = v68[9];
    if (v69)
    {
      LODWORD(v69) = *(v67 + v69);
    }
  }

  *(v53 + 16) |= 0x180u;
  *(v53 + 68) = v69;
  *(v53 + 72) = i + v43;
}

void sub_4E2728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4E275C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_4D27A4(a1);
  v4 = *v3;
  v83 = *(v3 + 8);
  if (*v3 != v83)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1.0;
    v9 = 0.5;
    v90 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v91 = vdupq_n_s64(0x4076800000000000uLL);
    v88 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v89 = vdupq_n_s64(0xC066800000000000);
    do
    {
      v10 = *(a3 + 32);
      v11 = v10 - 1;
      v12 = v4[2];
      if (v5 < v10 - 1 && v7 < v12)
      {
        v13 = v10 - v5 - 2;
        v14 = *(a3 + 40) + 8 * v5 + 16;
        do
        {
          v6 = v7;
          v15 = *(*(v14 - 8) + 32);
          if (!v15)
          {
            v15 = &off_2734B00;
          }

          v16 = *(v15 + 7) / 10000000.0;
          v17 = -1;
          if (v16 <= 180.0)
          {
            v18 = *(v15 + 6) / 10000000.0;
            if (fabs(v18) <= 85.0511288 && v16 >= -180.0)
            {
              v19 = sin(fmin(fmax(v18, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
              LODWORD(v20) = ((log((v19 + v8) / (v8 - v19)) / -12.5663706 + v9) * 4294967300.0);
              if (v20 >= 0xFFFFFFFE)
              {
                v20 = 4294967294;
              }

              else
              {
                v20 = v20;
              }

              v17 = ((v16 + 180.0) / 360.0 * 4294967300.0) | (v20 << 32);
            }
          }

          v21 = *(*v14 + 32);
          if (!v21)
          {
            v21 = &off_2734B00;
          }

          v22 = *(v21 + 7) / 10000000.0;
          v23 = -1;
          if (v22 <= 180.0)
          {
            v24 = *(v21 + 6) / 10000000.0;
            if (fabs(v24) <= 85.0511288 && v22 >= -180.0)
            {
              v25 = sin(fmin(fmax(v24, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
              LODWORD(v26) = ((log((v25 + v8) / (v8 - v25)) / -12.5663706 + v9) * 4294967300.0);
              if (v26 >= 0xFFFFFFFE)
              {
                v26 = 4294967294;
              }

              else
              {
                v26 = v26;
              }

              v23 = ((v22 + 180.0) / 360.0 * 4294967300.0) | (v26 << 32);
            }
          }

          if (v17 == -1 && HIDWORD(v17) == 0xFFFFFFFF)
          {
            v7 = v6 + 0x7FFFFFFFFFFFFFFFLL;
            if (!v13)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          if (v23 == -1 && HIDWORD(v23) == 0xFFFFFFFF)
          {
            v7 = v6 + 0x7FFFFFFFFFFFFFFFLL;
            if (!v13)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          v27 = exp(3.14159265 - HIDWORD(v17) * 6.28318531 / 4294967300.0);
          v28 = atan((v27 - v8 / v27) * 0.5) * 57.2957795 * 0.0174532925;
          v29.i64[0] = v17;
          v29.i64[1] = v23;
          v30 = exp(3.14159265 - HIDWORD(v23) * 6.28318531 / 4294967300.0);
          v8 = 1.0;
          v31 = atan((v30 - 1.0 / v30) * 0.5) * 57.2957795 * 0.0174532925;
          v32 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v29), v91), v90), v89), v88);
          v93 = vsubq_f64(v32, vdupq_laneq_s64(v32, 1)).f64[0];
          v33 = sin((v28 - v31) * 0.5);
          v34 = v33 * v33;
          v35 = cos(v28);
          v36 = v35 * cos(v31);
          v37 = sin(0.5 * v93);
          v38 = atan2(sqrt(v37 * v37 * v36 + v34), sqrt(1.0 - (v37 * v37 * v36 + v34)));
          v39 = (v38 + v38) * 6372797.56 * 100.0;
          if (v39 >= 0.0)
          {
            v40 = v39;
            if (v39 >= 4.50359963e15)
            {
              goto LABEL_39;
            }

            v41 = (v39 + v39) + 1;
          }

          else
          {
            v40 = v39;
            if (v39 <= -4.50359963e15)
            {
              goto LABEL_39;
            }

            v41 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
          }

          v40 = (v41 >> 1);
LABEL_39:
          v9 = 0.5;
          if (v40 >= 9.22337204e18)
          {
            v7 = v6 + 0x7FFFFFFFFFFFFFFELL;
            if (!v13)
            {
              goto LABEL_51;
            }

            goto LABEL_49;
          }

          if (v39 >= 0.0)
          {
            if (v39 >= 4.50359963e15)
            {
              goto LABEL_48;
            }

            v42 = (v39 + v39) + 1;
          }

          else
          {
            if (v39 <= -4.50359963e15)
            {
              goto LABEL_48;
            }

            v42 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
          }

          v39 = (v42 >> 1);
LABEL_48:
          v7 = v39 + v6;
          if (!v13)
          {
LABEL_51:
            v5 = v11;
            break;
          }

LABEL_49:
          ++v5;
          --v13;
          v14 += 8;
        }

        while (v7 < v12);
      }

      v43 = v12 - v6;
      v44 = v7 - v12;
      sub_4E32B0(a1, *v4, v5 - (v12 - v6 < v7 - v12), a2, a3);
      v45 = *(a3 + 32);
      v46 = v4[3];
      v87 = v4;
      v86 = v5 - (v12 - v6 < v7 - v12);
      if (v5 >= v45 - 1)
      {
        v50 = v4[3];
      }

      else
      {
        v94 = v4[3];
        if (v7 < v46)
        {
          v47 = v5 + 1;
          v48 = *(a3 + 40) + 8 * v5 + 16;
          if (v43 >= v44)
          {
            v49 = 0;
          }

          else
          {
            v49 = -1;
          }

          v50 = v46;
          while (1)
          {
            v6 = v7;
            v51 = *(v48 - 8);
            v52 = *(v51 + 32);
            if (!v52)
            {
              v52 = &off_2734B00;
            }

            v53 = *(v52 + 7) / 10000000.0;
            v54 = -1;
            if (v53 <= 180.0)
            {
              v55 = *(v52 + 6) / 10000000.0;
              if (fabs(v55) <= 85.0511288 && v53 >= -180.0)
              {
                v56 = sin(fmin(fmax(v55, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
                LODWORD(v57) = ((log((v56 + v8) / (v8 - v56)) / -12.5663706 + v9) * 4294967300.0);
                if (v57 >= 0xFFFFFFFE)
                {
                  v57 = 4294967294;
                }

                else
                {
                  v57 = v57;
                }

                v54 = ((v53 + 180.0) / 360.0 * 4294967300.0) | (v57 << 32);
              }
            }

            v58 = *(*v48 + 32);
            if (!v58)
            {
              v58 = &off_2734B00;
            }

            v59 = *(v58 + 7) / 10000000.0;
            v60 = -1;
            if (v59 <= 180.0)
            {
              v61 = *(v58 + 6) / 10000000.0;
              if (fabs(v61) <= 85.0511288 && v59 >= -180.0)
              {
                v62 = sin(fmin(fmax(v61, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
                LODWORD(v63) = ((log((v62 + v8) / (v8 - v62)) / -12.5663706 + v9) * 4294967300.0);
                if (v63 >= 0xFFFFFFFE)
                {
                  v63 = 4294967294;
                }

                else
                {
                  v63 = v63;
                }

                v60 = ((v59 + 180.0) / 360.0 * 4294967300.0) | (v63 << 32);
              }
            }

            if (v54 == -1 && HIDWORD(v54) == 0xFFFFFFFF)
            {
              v64 = 0x7FFFFFFFFFFFFFFFLL;
              if (v49)
              {
                goto LABEL_100;
              }

              goto LABEL_102;
            }

            if (v60 == -1 && HIDWORD(v60) == 0xFFFFFFFF)
            {
              v64 = 0x7FFFFFFFFFFFFFFFLL;
              v50 = v94;
              if (v49)
              {
                goto LABEL_100;
              }

              goto LABEL_102;
            }

            v65 = exp(3.14159265 - HIDWORD(v54) * 6.28318531 / 4294967300.0);
            v66 = atan((v65 - v8 / v65) * 0.5) * 57.2957795 * 0.0174532925;
            v67.i64[0] = v54;
            v67.i64[1] = v60;
            v68 = exp(3.14159265 - HIDWORD(v60) * 6.28318531 / 4294967300.0);
            v8 = 1.0;
            v69 = atan((v68 - 1.0 / v68) * 0.5) * 57.2957795 * 0.0174532925;
            v70 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v67), v91), v90), v89), v88);
            v92 = vsubq_f64(v70, vdupq_laneq_s64(v70, 1)).f64[0];
            v71 = sin((v66 - v69) * 0.5);
            v72 = v71 * v71;
            v73 = cos(v66);
            v74 = v73 * cos(v69);
            v75 = sin(0.5 * v92);
            v76 = atan2(sqrt(v75 * v75 * v74 + v72), sqrt(1.0 - (v75 * v75 * v74 + v72)));
            v77 = (v76 + v76) * 6372797.56 * 100.0;
            if (v77 >= 0.0)
            {
              v78 = v77;
              if (v77 >= 4.50359963e15)
              {
                goto LABEL_90;
              }

              v79 = (v77 + v77) + 1;
            }

            else
            {
              v78 = v77;
              if (v77 <= -4.50359963e15)
              {
                goto LABEL_90;
              }

              v79 = (v77 + v77) - 1 + (((v77 + v77) - 1) >> 63);
            }

            v78 = (v79 >> 1);
LABEL_90:
            v9 = 0.5;
            v50 = v94;
            if (v78 >= 9.22337204e18)
            {
              v64 = 0x7FFFFFFFFFFFFFFELL;
              if (v49)
              {
                goto LABEL_100;
              }

              goto LABEL_102;
            }

            if (v77 >= 0.0)
            {
              if (v77 >= 4.50359963e15)
              {
                goto LABEL_99;
              }

              v80 = (v77 + v77) + 1;
            }

            else
            {
              if (v77 <= -4.50359963e15)
              {
                goto LABEL_99;
              }

              v80 = (v77 + v77) - 1 + (((v77 + v77) - 1) >> 63);
            }

            v77 = (v80 >> 1);
LABEL_99:
            v64 = v77;
            if (v49)
            {
LABEL_100:
              if (*(v51 + 84) != 2)
              {
                v81 = *(v51 + 16);
                *(v51 + 84) = 2;
                *(v51 + 48) = 0;
                *(v51 + 68) = 0;
                *(v51 + 60) = 0;
                *(v51 + 76) = 0;
                *(v51 + 16) = v81 & 0xFFFFF417 | 0x800;
                v45 = *(a3 + 32);
              }
            }

LABEL_102:
            v7 = v64 + v6;
            ++v5;
            if (v47 < v45 - 1)
            {
              ++v47;
              v48 += 8;
              --v49;
              if (v7 < v50)
              {
                continue;
              }
            }

            goto LABEL_107;
          }
        }

        v50 = v4[3];
      }

LABEL_107:
      v82 = v5 - (v50 - v6 < v7 - v50);
      if (v82 != v86)
      {
        sub_4E32B0(a1, v87[1], v82, a2, a3);
      }

      v4 = v87 + 8;
    }

    while (v87 + 8 != v83);
  }
}

void sub_4E32B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a5 + 40) + 8 * a3 + 8) + 84) == 1)
  {
    return;
  }

  v8 = a3;
  sub_4D0560();
  v10 = v9;
  v12 = v11 + a2;
  v13 = &off_2734B00;
  if (*(*(*(a5 + 40) + 8 * v8 + 8) + 32))
  {
    v13 = *(*(*(a5 + 40) + 8 * v8 + 8) + 32);
  }

  v14 = *(v13 + 7) / 10000000.0;
  v15 = -1;
  if (v14 <= 180.0)
  {
    v16 = *(v13 + 6) / 10000000.0;
    if (fabs(v16) <= 85.0511288 && v14 >= -180.0)
    {
      v17 = sin(fmin(fmax(v16, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v18) = ((log((v17 + 1.0) / (1.0 - v17)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v18 >= 0xFFFFFFFE)
      {
        v18 = 4294967294;
      }

      else
      {
        v18 = v18;
      }

      v15 = ((v14 + 180.0) / 360.0 * 4294967300.0) | (v18 << 32);
    }
  }

  v71 = v15;
  v72 = 0x7FFFFFFF;
  sub_4D0560();
  v21 = v19;
  v22 = v20;
  if (v19)
  {
    if (v10)
    {
      for (i = 0; ; i += sub_4D23F8(v21, v22++, v26))
      {
        v24 = sub_4D1DC0(v21);
        v25 = sub_4D1DC0(v10);
        if (v22 >= v24 || v12 >= v25)
        {
          if (v22 < v24 == v12 < v25)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v27 = sub_4D1F50(v21, v22);
          if (v27 == sub_4D1F50(v10, v12))
          {
            goto LABEL_30;
          }
        }
      }
    }

    if (v20 < sub_4D1DC0(v19))
    {
      i = 0;
      do
      {
        i += sub_4D23F8(v21, v22++, v29);
      }

      while (v22 < sub_4D1DC0(v21));
      goto LABEL_30;
    }

LABEL_29:
    LODWORD(i) = 0;
    goto LABEL_30;
  }

  if (!v10 || v12 >= sub_4D1DC0(v10))
  {
    goto LABEL_29;
  }

  i = 0;
  do
  {
    i += sub_4D23F8(0, v22++, v28);
  }

  while (v12 < sub_4D1DC0(v10));
LABEL_30:
  v30 = sub_4D1F50(v10, v12);
  sub_2B7A20(a4, (((*(v30 + 36) & 0x20000000) << 19) | (*(v30 + 36) << 32) | *(v30 + 32)) ^ 0x1000000000000, v73);
  sub_31BF20(v73, &v76);
  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

  v31 = sub_4A7FF4(&v76, 0, 0xAAAAAAAAAAAAAAABLL * ((v77 - v76) >> 2) - 1, &v71, 0, 0x7FFFFFFFFFFFFFFFLL, 1);
  v32 = sub_4D1F50(v10, v12);
  v33 = sub_2B51D8(a4, *(v32 + 32) | ((*(v32 + 36) & 0x1FFFFFFF) << 32));
  v35 = (v33 - *v33);
  v36 = 0.0;
  if (*v35 >= 9u)
  {
    v37 = v35[4];
    if (v37)
    {
      LODWORD(v34) = *(v33 + v37);
      v36 = v34;
    }
  }

  sub_47190(&v71, &v76);
  v39 = v36 * v38;
  v40 = (v39 + v39);
  if (v39 > -4.50359963e15)
  {
    v41 = ((v40 - 1) / 2);
  }

  else
  {
    v41 = v39;
  }

  v42 = ((v40 + 1) >> 1);
  if (v39 >= 4.50359963e15)
  {
    v42 = v39;
  }

  if (v39 >= 0.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = v41;
  }

  v44 = v76;
  v45 = v76 + 12 * v31;
  v46 = v71 - *v45;
  if (v71 != *v45)
  {
    v48 = HIDWORD(v71);
    v47 = v45[1];
LABEL_47:
    v50 = --v46;
    if (v46 < -v46)
    {
      v50 = v46;
    }

      ;
    }

      ;
    }

    if (!v44)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v47 = v45[1];
  v48 = HIDWORD(v71);
  j = 0.0;
  if (v47 != HIDWORD(v71))
  {
    goto LABEL_47;
  }

LABEL_54:
  v77 = v44;
  operator delete(v44);
LABEL_55:
  v51 = llround(j * 100.0) % 36000;
  if (v51 <= 0xFFFF735F)
  {
    v52 = v51;
  }

  else
  {
    v52 = v51 - 29536;
  }

  v53 = *(*(a5 + 40) + 8 * v8 + 8);
  *(v53 + 16) |= 0x800u;
  *(v53 + 84) = 1;
  v54 = sub_4D1F50(v10, v12);
  v55 = *(v54 + 36);
  v56 = sub_2B51D8(a4, *(v54 + 32) | (v55 << 32));
  v57 = (v56 - *v56);
  if (*v57 >= 0x1Du && (v58 = v57[14]) != 0)
  {
    v59 = *(v56 + v58);
  }

  else
  {
    v59 = 0;
  }

  if ((v55 & 0x20000000) != 0)
  {
    v60 = v59;
  }

  else
  {
    v60 = -v59;
  }

  v61 = *(v53 + 16);
  *(v53 + 16) = v61 | 8;
  *(v53 + 48) = v60;
  v62 = v52 / 100.0;
  if (v62 < 4.50359963e15)
  {
    v62 = (((v62 + v62) + 1) >> 1);
  }

  *(v53 + 16) = v61 | 0x28;
  *(v53 + 60) = v62;
  v63 = sub_4D1F50(v10, v12);
  v64 = sub_2B51D8(a4, *(v63 + 32) | ((*(v63 + 36) & 0x1FFFFFFF) << 32));
  v65 = (v64 - *v64);
  if (*v65 < 0x1Bu)
  {
    LODWORD(v66) = 0;
  }

  else
  {
    v66 = v65[13];
    if (v66)
    {
      LODWORD(v66) = *(v64 + v66);
    }
  }

  *(v53 + 16) |= 0x40u;
  *(v53 + 64) = v66;
  v67 = sub_4D1F50(v10, v12);
  v68 = sub_2B51D8(a4, *(v67 + 32) | ((*(v67 + 36) & 0x1FFFFFFF) << 32));
  v69 = (v68 - *v68);
  if (*v69 < 0x13u)
  {
    LODWORD(v70) = 0;
  }

  else
  {
    v70 = v69[9];
    if (v70)
    {
      LODWORD(v70) = *(v68 + v70);
    }
  }

  *(v53 + 16) |= 0x180u;
  *(v53 + 68) = v70;
  *(v53 + 72) = i + v43;
}

void sub_4E396C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4E39A0()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_2790328 = 0u;
  unk_2790338 = 0u;
  dword_2790348 = 1065353216;
  sub_3A9A34(&xmmword_2790328, v0);
  sub_3A9A34(&xmmword_2790328, v3);
  sub_3A9A34(&xmmword_2790328, __p);
  sub_3A9A34(&xmmword_2790328, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_2790300 = 0;
    qword_2790308 = 0;
    qword_27902F8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_4E3BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2790310)
  {
    qword_2790318 = qword_2790310;
    operator delete(qword_2790310);
  }

  _Unwind_Resume(exception_object);
}

void **sub_4E3C94(void **a1)
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
        v5 = *(v3 - 9);
        if (v5)
        {
          *(v3 - 8) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 12);
        if (v6)
        {
          *(v3 - 11) = v6;
          operator delete(v6);
        }

        v3 -= 136;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double sub_4E3D18(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

__n128 sub_4E3D28(void *a1, uint64_t a2, __n128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  result = *a3;
  *(a1 + 3) = *a3;
  a1[5] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

double sub_4E3DA4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 + 1 >= (0x6DB6DB6DB6DB6DB7 * ((a1[4] - a1[3]) >> 3)))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0;
    *a3 = 0x7FFFFFFF;
    *(a3 + 8) = 0x7FFFFFFF;
    *(a3 + 12) = 0x7FFFFFFF7FFFFFFFLL;
    *(a3 + 32) = 0x8000000080000000;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    *(a3 + 92) = 0x8000000080000000;
    *(a3 + 100) = 0x7FFFFFFF;
    result = 0.0;
    *(a3 + 120) = xmmword_2297C00;
  }

  else
  {
    sub_3EDBB0(a3, (*a1 + 136 * (a2 + 1)));
  }

  return result;
}

uint64_t sub_4E3E40(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 24) != v1)
  {
    return sub_4DAED8(v1 - 56);
  }

  return result;
}

void sub_4E3E58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1E1E1E1E1E1E1E2)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_4E3F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_4E4008(&a11);
  *(v11 + 8) = v12;
  sub_4E3F74(&a9);
  _Unwind_Resume(a1);
}

void ***sub_4E3F74(void ***a1)
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
          v6 = *(v4 - 9);
          if (v6)
          {
            *(v4 - 8) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 12);
          if (v7)
          {
            *(v4 - 11) = v7;
            operator delete(v7);
          }

          v4 -= 136;
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

uint64_t sub_4E4008(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 72);
      if (v5)
      {
        *(v3 - 64) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 96);
      if (v6)
      {
        *(v3 - 88) = v6;
        operator delete(v6);
      }

      v3 -= 136;
    }
  }

  return a1;
}

uint64_t sub_4E407C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v7 = *v5;
      *(a4 + 8) = *(v5 + 2);
      *a4 = v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      v9 = v5[2];
      v8 = v5[3];
      if (v8 != v9)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v6 = v5[5];
      *(a4 + 48) = *(v5 + 12);
      *(a4 + 40) = v6;
      v5 += 7;
      a4 += 56;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_4E41B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 24) = v12;
    operator delete(v12);
  }

  sub_4E41D8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4E41D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 40);
      if (v5)
      {
        *(v3 - 32) = v5;
        operator delete(v5);
      }

      v3 -= 56;
    }
  }

  return a1;
}

double sub_4E423C@<D0>(_OWORD *a1@<X8>)
{
  sub_4D0560();
  v3 = v2;
  v5 = v4;
  sub_4D0568();
  v7 = v6;
  v9 = v8;
  sub_4D0560();
  v11 = v10;
  v13 = v12;
  sub_4D0568();
  sub_4E6E5C(v3, v5, v7, v9, v11, v13, v14, v15, v18);
  result = *v18;
  v17 = v18[1];
  *a1 = v18[0];
  a1[1] = v17;
  return result;
}

void sub_4E42F8(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v46 = *a1;
  v6 = *(a1 + 3);
  v47 = *(a1 + 2);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v7 = *(a1 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v9 = *(a1 + 6);
  v8 = *(a1 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = *a2;
  v10 = *(a2 + 3);
  v39 = *(a2 + 2);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v11 = *(a2 + 4);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v13 = *(a2 + 6);
  v12 = *(a2 + 7);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v30 = *a3;
  v14 = *(a3 + 3);
  v31 = *(a3 + 2);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v15 = *(a3 + 4);
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v17 = *(a3 + 6);
  v16 = *(a3 + 7);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = *a4;
  v18 = *(a4 + 3);
  v23 = *(a4 + 2);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v19 = *(a4 + 4);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v28 = 0;
  v29 = 0;
  v21 = *(a4 + 6);
  v20 = *(a4 + 7);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_4E7318(&v46, &v38, &v30, &v22, a5);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_4E46D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB674(&a29);
  sub_3DB674((v29 - 160));
  _Unwind_Resume(a1);
}

void sub_4E4754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
    sub_3DB674((v36 - 160));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x4E4744);
}

void sub_4E4790(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(v1 - 136);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4E47BC(uint64_t a1, char a2, int a3)
{
  v6 = sub_5FC64(a1);
  v7 = sub_445EF4(a1);
  v14 = a2;
  v13 = a3;
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v7;
  result = 0;
  v12 = 0;
  if (a3 == 2)
  {
    v10 = (v9 - 1096);
  }

  else
  {
    v10 = v9;
  }

  v11[0] = &v12;
  v11[1] = &v14;
  v11[2] = &v13;
  if (v10 != v6)
  {
    LODWORD(result) = 0;
    do
    {
      result = sub_4E66C4(v11, result, v6);
      v6 += 274;
    }

    while (v6 != v10);
  }

  return result;
}

uint64_t sub_4E4880(uint64_t a1, char a2, int a3)
{
  v6 = sub_45AC50(a1);
  v7 = sub_588D8(a1);
  v14 = a2;
  v13 = a3;
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v7;
  result = 0;
  v12 = 0;
  if (a3 == 2)
  {
    v10 = (v9 - 12656);
  }

  else
  {
    v10 = v9;
  }

  v11[0] = &v12;
  v11[1] = &v14;
  v11[2] = &v13;
  if (v10 != v6)
  {
    LODWORD(result) = 0;
    do
    {
      result = sub_4E66C4(v11, result, v6);
      v6 += 3164;
    }

    while (v6 != v10);
  }

  return result;
}

uint64_t sub_4E494C(unsigned int *a1, unsigned int *a2, int a3, int a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v8 = a1;
  LODWORD(v5) = 0;
  v9 = a1;
  do
  {
    v5 = sub_4D26B4(v9, a3) + v5;
    v9 += 274;
  }

  while (v9 != a2);
  if (a4)
  {
    v10 = 0;
    v16 = a3;
    v15 = a4;
    v14 = 0;
    if (a4 == 2)
    {
      v11 = a2 - 274;
    }

    else
    {
      v11 = a2;
    }

    v13[0] = &v14;
    v13[1] = &v16;
    v13[2] = &v15;
    if (v11 != v8)
    {
      v10 = 0;
      do
      {
        v10 = sub_4E66C4(v13, v10, v8);
        v8 += 274;
      }

      while (v8 != v11);
    }

    return v10 + v5;
  }

  return v5;
}

uint64_t sub_4E4A28(unsigned int *a1, unsigned int *a2, int a3, int a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v8 = a1;
  LODWORD(v5) = 0;
  v9 = a1;
  do
  {
    v5 = sub_4D26B4(v9, a3) + v5;
    v9 += 3164;
  }

  while (v9 != a2);
  if (a4)
  {
    v10 = 0;
    v16 = a3;
    v15 = a4;
    v14 = 0;
    if (a4 == 2)
    {
      v11 = a2 - 3164;
    }

    else
    {
      v11 = a2;
    }

    v13[0] = &v14;
    v13[1] = &v16;
    v13[2] = &v15;
    if (v11 != v8)
    {
      v10 = 0;
      do
      {
        v10 = sub_4E66C4(v13, v10, v8);
        v8 += 3164;
      }

      while (v8 != v11);
    }

    return v10 + v5;
  }

  return v5;
}

uint64_t sub_4E4B18(uint64_t a1, int a2, int a3)
{
  v6 = sub_5FC64(a1);
  v7 = sub_445EF4(a1);
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v7;
  LODWORD(v8) = 0;
  v10 = v6;
  do
  {
    v8 = sub_4D26B4(v10, a2) + v8;
    v10 += 274;
  }

  while (v10 != v9);
  if (a3)
  {
    v11 = 0;
    v17 = a2;
    v16 = a3;
    v15 = 0;
    if (a3 == 2)
    {
      v12 = v9 - 274;
    }

    else
    {
      v12 = v9;
    }

    v14[0] = &v15;
    v14[1] = &v17;
    v14[2] = &v16;
    if (v12 != v6)
    {
      v11 = 0;
      do
      {
        v11 = sub_4E66C4(v14, v11, v6);
        v6 += 274;
      }

      while (v6 != v12);
    }

    return v11 + v8;
  }

  return v8;
}

uint64_t sub_4E4C04(uint64_t a1, int a2, int a3)
{
  v6 = sub_45AC50(a1);
  v7 = sub_588D8(a1);
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v7;
  LODWORD(v8) = 0;
  v10 = v6;
  do
  {
    v8 = sub_4D26B4(v10, a2) + v8;
    v10 += 3164;
  }

  while (v10 != v9);
  if (a3)
  {
    v11 = 0;
    v17 = a2;
    v16 = a3;
    v15 = 0;
    if (a3 == 2)
    {
      v12 = v9 - 3164;
    }

    else
    {
      v12 = v9;
    }

    v14[0] = &v15;
    v14[1] = &v17;
    v14[2] = &v16;
    if (v12 != v6)
    {
      v11 = 0;
      do
      {
        v11 = sub_4E66C4(v14, v11, v6);
        v6 += 3164;
      }

      while (v6 != v12);
    }

    return v11 + v8;
  }

  return v8;
}

unint64_t sub_4E4D04(uint64_t a1, uint64_t a2)
{
  if (sub_4C49D0(a1))
  {
    return -1;
  }

  v4 = *sub_58BBC(a1);
  if (sub_4D1F6C(v4))
  {
    return -1;
  }

  v6 = sub_45AC50(v4);
  v7 = sub_4D2148(v4, 0);
  return sub_48CA24(a2, v6, v7);
}

unint64_t sub_4E4D94(void *a1, uint64_t a2)
{
  if (sub_4D1F6C(a1))
  {
    return -1;
  }

  v5 = sub_45AC50(a1);
  v6 = sub_4D2148(a1, 0);
  return sub_4992B4(a2, v5, v6);
}

unint64_t sub_4E4E0C(uint64_t a1, uint64_t a2)
{
  if (sub_4C49D0(a1))
  {
    return -1;
  }

  v4 = (*(sub_58BBC(a1) + 8) - 1096);
  if (sub_4D1F6C(v4))
  {
    return -1;
  }

  v6 = sub_4D1F60(v4);
  v7 = sub_4D1DC0(v4);
  v8 = sub_4D21C8(v4, v7 - 1);
  return sub_48CA24(a2, v6, v8);
}

unint64_t sub_4E4EA8(void *a1, uint64_t a2)
{
  if (sub_4D1F6C(a1))
  {
    return -1;
  }

  v5 = sub_4D1F60(a1);
  v6 = sub_4D1DC0(a1);
  v7 = sub_4D21C8(a1, v6 - 1);
  return sub_48CA24(a2, v5, v7);
}

unint64_t sub_4E4F28(uint64_t a1, uint64_t a2)
{
  if (sub_4C49D0(a1))
  {
    return -1;
  }

  v4 = (*(sub_58BBC(a1) + 8) - 1096);
  if (sub_4D1F6C(v4))
  {
    return -1;
  }

  v6 = sub_4D1F60(v4);
  v7 = sub_4D1DC0(v4);
  v8 = sub_4D21C8(v4, v7 - 1);
  return sub_4992B4(a2, v6, v8);
}

unint64_t sub_4E4FC4(void *a1, uint64_t a2)
{
  if (sub_4D1F6C(a1))
  {
    return -1;
  }

  v5 = sub_4D1F60(a1);
  v6 = sub_4D1DC0(a1);
  v7 = sub_4D21C8(a1, v6 - 1);
  return sub_4992B4(a2, v5, v7);
}

void sub_4E5044(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4C4AE4(a1);
  v7 = *(v6 + 32) | (*(v6 + 36) << 32);
  v8 = sub_4C4AEC(a1);
  v9 = *(v8 + 32) | (*(v8 + 36) << 32);
  sub_4E51E0(a2, v7, v20);
  sub_4E51E0(a2, v9, __p);
  v10 = SHIBYTE(v21);
  v11 = v20[1];
  if (v21 >= 0)
  {
    v12 = HIBYTE(v21);
  }

  else
  {
    v12 = v20[1];
  }

  v13 = v19;
  v14 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v13 = __p[1];
  }

  if (v12 == v13 && ((v15 = v20[0], v21 >= 0) ? (v16 = v20) : (v16 = v20[0]), (v19 & 0x80u) == 0 ? (v17 = __p) : (v17 = __p[0]), !memcmp(v16, v17, v12)))
  {
    if (v10 < 0)
    {
      sub_325C(a3, v15, v11);
      v14 = v19;
    }

    else
    {
      *a3 = *v20;
      *(a3 + 16) = v21;
    }
  }

  else
  {
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  if ((v14 & 0x80) == 0)
  {
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v20[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_19;
  }
}

void sub_4E5194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

int *sub_4E51E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = sub_2B51D8(a1, a2);
  v6 = (v5 - *v5);
  if (*v6 >= 0xDu && (v7 = v6[6]) != 0)
  {
    v8 = 4 * *(v5 + v7);
  }

  else
  {
    v8 = 0;
  }

  result = sub_2AF704(a1 + 3896, 1u, 0);
  v10 = (result - *result);
  if (*v10 < 0xBu)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10[5];
    if (v11)
    {
      v11 += result + *(result + v11);
    }
  }

  v12 = (v11 + v8 + 4 + *(v11 + v8 + 4));
  v13 = (v12 - *v12);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = (v12 + v14);
    v16 = *v15;
    v17 = *(v15 + v16);
    if (v17 >= 0x17)
    {
      operator new();
    }

    a3[23] = v17;
    if (v17)
    {
      result = memcpy(a3, v15 + v16 + 4, v17);
    }

    a3[v17] = 0;
  }

  else
  {
    a3[23] = 0;
    *a3 = 0;
  }

  return result;
}

void *sub_4E5344@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 23);
  v5 = *(result + 1);
  if (v4 >= 0)
  {
    v6 = *(result + 23);
  }

  else
  {
    v6 = *(result + 1);
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[1];
  }

  if (v6 != v7)
  {
    goto LABEL_12;
  }

  v9 = result;
  v10 = *result;
  if (v4 < 0)
  {
    result = *result;
  }

  if (v8 < 0)
  {
    a2 = *a2;
  }

  result = memcmp(result, a2, v6);
  if (!result)
  {
    if (v4 < 0)
    {

      return sub_325C(a3, v10, v5);
    }

    else
    {
      *a3 = *v9;
      *(a3 + 16) = v9[2];
    }
  }

  else
  {
LABEL_12:
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  return result;
}

void sub_4E5428(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4C4AE4(a1);
  v7 = *(v6 + 32) | (*(v6 + 36) << 32);
  v8 = sub_4C4AEC(a1);
  v9 = *(v8 + 32) | (*(v8 + 36) << 32);
  sub_4E51E0(a2, v7, v20);
  sub_4E51E0(a2, v9, __p);
  v10 = SHIBYTE(v21);
  v11 = v20[1];
  if (v21 >= 0)
  {
    v12 = HIBYTE(v21);
  }

  else
  {
    v12 = v20[1];
  }

  v13 = v19;
  v14 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v13 = __p[1];
  }

  if (v12 == v13 && ((v15 = v20[0], v21 >= 0) ? (v16 = v20) : (v16 = v20[0]), (v19 & 0x80u) == 0 ? (v17 = __p) : (v17 = __p[0]), !memcmp(v16, v17, v12)))
  {
    if (v10 < 0)
    {
      sub_325C(a3, v15, v11);
      v14 = v19;
    }

    else
    {
      *a3 = *v20;
      *(a3 + 16) = v21;
    }
  }

  else
  {
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  if ((v14 & 0x80) == 0)
  {
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v20[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_19;
  }
}

void sub_4E5578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_4E55C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4C4AE4(a1);
  v7 = *(v6 + 32) | ((*(v6 + 36) & 0x1FFFFFFF) << 32);
  v8 = sub_4C4AEC(a1);
  v9 = *(v8 + 32) | ((*(v8 + 36) & 0x1FFFFFFF) << 32);
  sub_4E51E0(a2, v7, v20);
  sub_4E51E0(a2, v9, __p);
  v10 = SHIBYTE(v21);
  v11 = v20[1];
  if (v21 >= 0)
  {
    v12 = HIBYTE(v21);
  }

  else
  {
    v12 = v20[1];
  }

  v13 = v19;
  v14 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v13 = __p[1];
  }

  if (v12 == v13 && ((v15 = v20[0], v21 >= 0) ? (v16 = v20) : (v16 = v20[0]), (v19 & 0x80u) == 0 ? (v17 = __p) : (v17 = __p[0]), !memcmp(v16, v17, v12)))
  {
    if (v10 < 0)
    {
      sub_325C(a3, v15, v11);
      v14 = v19;
    }

    else
    {
      *a3 = *v20;
      *(a3 + 16) = v21;
    }
  }

  else
  {
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  if ((v14 & 0x80) == 0)
  {
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v20[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_19;
  }
}

void sub_4E5714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_4E5760(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  if (v4 == a1[1])
  {
    a3[23] = 0;
    *a3 = 0;
  }

  else
  {
    sub_4E5044(v4, a2, a3);
  }
}

void sub_4E5784(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  if (v4 == a1[1])
  {
    a3[23] = 0;
    *a3 = 0;
  }

  else
  {
    sub_4E5428(v4, a2, a3);
  }
}

void sub_4E57A8(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_4D1DC0(a2);
  v7 = a3[1];
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a3) >> 3);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v9 = *a3 + 40 * v6;
      if (v7 != v9)
      {
        v10 = a3[1];
        do
        {
          v12 = *(v10 - 40);
          v10 -= 40;
          v11 = v12;
          if (v12)
          {
            *(v7 - 32) = v11;
            operator delete(v11);
          }

          v7 = v10;
        }

        while (v10 != v9);
      }

      a3[1] = v9;
    }
  }

  else
  {
    sub_4E6904(a3, v6 - v8);
  }

  v13 = sub_4D1DC0(a2);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      v17 = sub_4D1F50(a2, i);
      sub_2B7A20(a1, (((*(v17 + 36) & 0x20000000) << 19) | (*(v17 + 36) << 32) | *(v17 + 32)) ^ 0x1000000000000, v20);
      v18 = *a3;
      sub_31BF20(v20, __p);
      sub_F54E4C((v18 + v15), __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      v15 += 40;
    }
  }
}

void sub_4E5904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_4E5950(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_4D1DC0(a2);
  v7 = a3[1];
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a3) >> 3);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v9 = *a3 + 40 * v6;
      if (v7 != v9)
      {
        v10 = a3[1];
        do
        {
          v12 = *(v10 - 40);
          v10 -= 40;
          v11 = v12;
          if (v12)
          {
            *(v7 - 32) = v11;
            operator delete(v11);
          }

          v7 = v10;
        }

        while (v10 != v9);
      }

      a3[1] = v9;
    }
  }

  else
  {
    sub_4E6904(a3, v6 - v8);
  }

  v13 = sub_4D1DC0(a2);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      v17 = sub_4D1F50(a2, i);
      sub_2B7A20(a1, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL, v20);
      v18 = *a3;
      sub_31BF20(v20, __p);
      sub_F54E4C((v18 + v15), __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      v15 += 40;
    }
  }
}

void sub_4E5A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_4E5AE4(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_4D1DC0(a2);
  v7 = a3[1];
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a3) >> 3);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v9 = *a3 + 40 * v6;
      if (v7 != v9)
      {
        v10 = a3[1];
        do
        {
          v12 = *(v10 - 40);
          v10 -= 40;
          v11 = v12;
          if (v12)
          {
            *(v7 - 32) = v11;
            operator delete(v11);
          }

          v7 = v10;
        }

        while (v10 != v9);
      }

      a3[1] = v9;
    }
  }

  else
  {
    sub_4E6904(a3, v6 - v8);
  }

  v13 = sub_4D1DC0(a2);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      v17 = sub_4D1F50(a2, i);
      sub_2B7A20(a1, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL, v20);
      v18 = *a3;
      sub_31BF20(v20, __p);
      sub_F54E4C((v18 + v15), __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      v15 += 40;
    }
  }
}

void sub_4E5C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

BOOL sub_4E5C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_4C35B0(a1);
  if (v4 != sub_4C35B0(a2))
  {
    return 0;
  }

  v5 = sub_5FC64(a1);
  v6 = sub_5FC64(a2);
  v7 = sub_445EF4(a1);
  sub_445EF4(a2);
  if (v5 == v7)
  {
    return 1;
  }

  v9 = v5 + 1096;
  do
  {
    v12[0] = v5;
    v12[1] = v6;
    result = sub_4E6BFC(&v11, v12);
    if (!result)
    {
      break;
    }

    v6 += 1096;
    v5 += 1096;
    v10 = v9 == v7;
    v9 += 1096;
  }

  while (!v10);
  return result;
}

uint64_t sub_4E5D80(void *a1)
{
  sub_4D0560();
  v3 = v2;
  v5 = v4;
  sub_4D0568();
  v7 = v6;
  v9 = v8;
  sub_4D0560();
  v11 = v10;
  v13 = v12;
  sub_4D0568();
  v16 = v15;
  if (v3)
  {
    v60 = v14;
    v17 = sub_4D1DC0(v3);
    v18 = v17;
    if (!v7)
    {
      if (v5 >= v17)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v21 = 1;
      if (v11)
      {
        goto LABEL_17;
      }

LABEL_12:
      if (!v16)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v59 = v21;
      if (v60 >= sub_4D1DC0(v16))
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v22 = 0;
      goto LABEL_26;
    }

    v19 = sub_4D1DC0(v7);
    if (v5 >= v18 || v9 >= v19)
    {
      if (v5 < v18 == v9 < v19)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v20 = sub_4D1F50(v3, v5);
      if (v20 == sub_4D1F50(v7, v9))
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else
  {
    if (!v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v60 = v14;
    if (v9 >= sub_4D1DC0(v7))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v21 = 0;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_17:
  v59 = v21;
  v23 = sub_4D1DC0(v11);
  v24 = v23;
  if (v16)
  {
    v25 = sub_4D1DC0(v16);
    if (v13 >= v24 || v60 >= v25)
    {
      if (v13 < v24 == v60 < v25)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v26 = sub_4D1F50(v11, v13);
      if (v26 == sub_4D1F50(v16, v60))
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    v22 = 0;
  }

  else
  {
    if (v13 >= v23)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v22 = 1;
  }

LABEL_26:
  v27 = sub_4D1F50(v3, v5);
  v28 = *(sub_4D1F50(v11, v13) + 32);
  if (*(v27 + 32) != v28)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (*(v27 + 36) == WORD2(v28) && *(v27 + 38) == BYTE6(v28))
  {
    v56 = v22;
    sub_4D0560();
    v57 = v31;
    v58 = v30;
    sub_4D0568();
    v33 = v32;
    v35 = v34;
    sub_4D0560();
    v37 = v36;
    v39 = v38;
    sub_4D0568();
    sub_4E6E5C(v58, v57, v33, v35, v37, v39, v40, v41, v61);
    v43 = v61[0];
    v42 = v61[1];
    v45 = v61[2];
    v44 = v61[3];
    if (v61[0])
    {
      v46 = sub_4D1DC0(v61[0]);
      v48 = v46;
      if (v59)
      {
        if (v42 < v46)
        {
          return sub_4D25C0(a1, v42 - v5, v47);
        }
      }

      else
      {
        v49 = sub_4D1DC0(v7);
        if (v42 >= v48 || v9 >= v49)
        {
          if (v42 < v48 != v9 < v49)
          {
            return sub_4D25C0(a1, v42 - v5, v47);
          }
        }

        else
        {
          v50 = sub_4D1F50(v43, v42);
          if (v50 != sub_4D1F50(v7, v9))
          {
            return sub_4D25C0(a1, v42 - v5, v47);
          }
        }
      }
    }

    else if ((v59 & 1) == 0 && v9 < sub_4D1DC0(v7))
    {
      return sub_4D25C0(a1, v42 - v5, v47);
    }

    if (v45)
    {
      v51 = sub_4D1DC0(v45);
      v52 = v51;
      if (v56)
      {
        if (v44 < v51)
        {
          return sub_4D25C0(a1, v42 - v5, v47);
        }

        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v53 = sub_4D1DC0(v16);
      if (v44 >= v52 || v60 >= v53)
      {
        v55 = v44 < v52 == v60 < v53;
      }

      else
      {
        v54 = sub_4D1F50(v45, v44);
        v55 = v54 == sub_4D1F50(v16, v60);
      }

      if (v55)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else if ((v56 & 1) != 0 || v60 >= sub_4D1DC0(v16))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return sub_4D25C0(a1, v42 - v5, v47);
  }

  return result;
}

uint64_t sub_4E6174(uint64_t a1, uint64_t a2, int a3)
{
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  sub_4D0568();
  v9 = v8;
  v11 = v10;
  sub_4D0560();
  v13 = v12;
  v15 = v14;
  sub_4D0568();
  v18 = v17;
  if (v5)
  {
    v74 = v16;
    v19 = sub_4D1DC0(v5);
    v20 = v19;
    if (!v9)
    {
      if (v7 >= v19)
      {
        return 0x7FFFFFFFLL;
      }

      v23 = 1;
      if (v13)
      {
        goto LABEL_17;
      }

LABEL_12:
      if (!v18)
      {
        return 0x7FFFFFFFLL;
      }

      v72 = v23;
      if (v74 >= sub_4D1DC0(v18))
      {
        return 0x7FFFFFFFLL;
      }

      v24 = 0;
      goto LABEL_26;
    }

    v21 = sub_4D1DC0(v9);
    if (v7 >= v20 || v11 >= v21)
    {
      if (v7 < v20 == v11 < v21)
      {
        return 0x7FFFFFFFLL;
      }
    }

    else
    {
      v22 = sub_4D1F50(v5, v7);
      if (v22 == sub_4D1F50(v9, v11))
      {
        return 0x7FFFFFFFLL;
      }
    }
  }

  else
  {
    if (!v9)
    {
      return 0x7FFFFFFFLL;
    }

    v74 = v16;
    if (v11 >= sub_4D1DC0(v9))
    {
      return 0x7FFFFFFFLL;
    }
  }

  v23 = 0;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_17:
  v72 = v23;
  v25 = sub_4D1DC0(v13);
  v26 = v25;
  if (v18)
  {
    v27 = sub_4D1DC0(v18);
    if (v15 >= v26 || v74 >= v27)
    {
      if (v15 < v26 == v74 < v27)
      {
        return 0x7FFFFFFFLL;
      }
    }

    else
    {
      v28 = sub_4D1F50(v13, v15);
      if (v28 == sub_4D1F50(v18, v74))
      {
        return 0x7FFFFFFFLL;
      }
    }

    v24 = 0;
  }

  else
  {
    if (v15 >= v25)
    {
      return 0x7FFFFFFFLL;
    }

    v24 = 1;
  }

LABEL_26:
  v29 = sub_4D1F50(v5, v7);
  v30 = *(sub_4D1F50(v13, v15) + 32);
  if (*(v29 + 32) != v30)
  {
    return 0x7FFFFFFFLL;
  }

  result = 0x7FFFFFFFLL;
  if (*(v29 + 36) != WORD2(v30) || *(v29 + 38) != BYTE6(v30))
  {
    return result;
  }

  v69 = v24;
  sub_4D0560();
  v70 = v33;
  v71 = v32;
  sub_4D0568();
  v35 = v34;
  v37 = v36;
  sub_4D0560();
  v39 = v38;
  v41 = v40;
  sub_4D0568();
  sub_4E6E5C(v71, v70, v35, v37, v39, v41, v42, v43, v75);
  v45 = v75[0];
  v44 = v75[1];
  v47 = v75[2];
  v46 = v75[3];
  if (v75[0])
  {
    v48 = sub_4D1DC0(v75[0]);
    v49 = v48;
    if (v72)
    {
      if (v44 < v48)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v50 = sub_4D1DC0(v9);
      if (v44 >= v49 || v11 >= v50)
      {
        if (v44 < v49 != v11 < v50)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v51 = sub_4D1F50(v45, v44);
        if (v51 != sub_4D1F50(v9, v11))
        {
          goto LABEL_52;
        }
      }
    }
  }

  else if ((v72 & 1) == 0 && v11 < sub_4D1DC0(v9))
  {
    goto LABEL_52;
  }

  if (!v47)
  {
    if ((v69 & 1) != 0 || v74 >= sub_4D1DC0(v18))
    {
      return 0x7FFFFFFFLL;
    }

    goto LABEL_52;
  }

  v52 = sub_4D1DC0(v47);
  v53 = v52;
  if (v69)
  {
    if (v46 < v52)
    {
      goto LABEL_52;
    }

    return 0x7FFFFFFFLL;
  }

  v54 = sub_4D1DC0(v18);
  if (v46 >= v53 || v74 >= v54)
  {
    if (v46 < v53 != v74 < v54)
    {
      goto LABEL_52;
    }

    return 0x7FFFFFFFLL;
  }

  v55 = sub_4D1F50(v47, v46);
  if (v55 == sub_4D1F50(v18, v74))
  {
    return 0x7FFFFFFFLL;
  }

LABEL_52:
  v56 = sub_3CF22C(a1);
  v57 = 16;
  if (a3 == 1)
  {
    v57 = 40;
  }

  if (a3 == 2)
  {
    v58 = 64;
  }

  else
  {
    v58 = v57;
  }

  v59 = *(v56 + v58);
  v60 = *(sub_3CF22C(a1) + v58) + 4 * (v44 - v7);
  if (v60 == v59)
  {
    return 0;
  }

  v61 = v60 - v59 - 4;
  if (v61 < 0x1C)
  {
    LODWORD(result) = 0;
    v62 = v59;
    do
    {
LABEL_64:
      v68 = v62->i32[0];
      v62 = (v62 + 4);
      result = (v68 + result);
    }

    while (v62 != v60);
    return result;
  }

  v63 = (v61 >> 2) + 1;
  v62 = (v59 + 4 * (v63 & 0x7FFFFFFFFFFFFFF8));
  v64 = v59 + 1;
  v65 = 0uLL;
  v66 = v63 & 0x7FFFFFFFFFFFFFF8;
  v67 = 0uLL;
  do
  {
    v65 = vaddq_s32(v64[-1], v65);
    v67 = vaddq_s32(*v64, v67);
    v64 += 2;
    v66 -= 8;
  }

  while (v66);
  result = vaddvq_s32(vaddq_s32(v67, v65));
  if (v63 != (v63 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_64;
  }

  return result;
}

uint64_t sub_4E662C(_DWORD *a1, _DWORD *a2, _DWORD *a3, double a4, double a5, double a6, double a7)
{
  LODWORD(a4) = *a1;
  LODWORD(a6) = *a2;
  LODWORD(a7) = *a3;
  v7 = (*&a4 / 1000000000.0 - *&a6 / 1000000000.0) / (*&a7 / 1000000000.0 - *&a6 / 1000000000.0) * 1000000000.0;
  if (v7 >= 0.0)
  {
    if (v7 < 4.50359963e15)
    {
      v8 = (v7 + v7) + 1;
      return (v8 >> 1);
    }
  }

  else if (v7 > -4.50359963e15)
  {
    v8 = (v7 + v7) - 1 + (((v7 + v7) - 1) >> 63);
    return (v8 >> 1);
  }

  return v7;
}

uint64_t sub_4E66C4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = sub_4D26B4(a3, **(a1 + 8));
  v7 = sub_4D26A4(a3);
  v8 = *sub_4D2130(a3);
  v9 = sub_4D2130(a3);
  v10 = **(a1 + 16);
  if (v10 <= 2)
  {
    if (!**(a1 + 16))
    {
      return a2;
    }

    if (v10 == 1)
    {
      if (v7 == 0x7FFFFFFF)
      {
        v22 = 0;
      }

      else
      {
        v22 = v7;
      }

      return (v22 + a2);
    }

    if (v10 != 2)
    {
      return 0;
    }

    if (v6 == 0x7FFFFFFF)
    {
      v13 = 0;
    }

    else
    {
      v13 = v6;
    }

    if (v13 < 0)
    {
      v14 = -5;
    }

    else
    {
      v14 = 5;
    }

    v15 = 103 * (v14 + v13 % 10);
    v16 = 10 * (v13 / 10 + ((v15 >> 15) & 1) + (v15 >> 10));
    if (v16 % 600 <= 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = 600;
    }

    return (v16 + a2 - v13 - v16 % 600 + v17);
  }

  else
  {
    v11 = *(v9 + 36);
    if (**(a1 + 16) <= 4u)
    {
      if (v10 != 3)
      {
        if (v10 == 4)
        {
          if (v8 == 0x7FFFFFFF)
          {
            v12 = 0;
          }

          else
          {
            v12 = v8;
          }

          return (v12 + a2);
        }

        return 0;
      }

      if (v11 == 0x7FFFFFFF)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v9 + 36);
      }

      return (v22 + a2);
    }

    if (v10 != 5)
    {
      if (v10 == 6)
      {
        if (v7 == 0x7FFFFFFF)
        {
          v19 = 0;
        }

        else
        {
          v19 = v7;
        }

        v20 = v19 + a2;
        if (v8 == 0x7FFFFFFF)
        {
          v21 = 0;
        }

        else
        {
          v21 = v8;
        }

        return (v20 + v21);
      }

      return 0;
    }

    if (v7 == 0x7FFFFFFF)
    {
      v23 = 0;
    }

    else
    {
      v23 = v7;
    }

    v24 = v23 + a2;
    if (v11 == 0x7FFFFFFF)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v9 + 36);
    }

    return (v24 + v25);
  }
}

void sub_4E6904(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 40 * a2;
      do
      {
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        v3 += 40;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x666666666666666)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 40 * v5;
    v11 = 40 * v5 + 40 * a2;
    v12 = 40 * v5;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0x7FFFFFFFFFFFFFFFLL;
      v12 += 40;
    }

    while (v12 != v11);
    v19 = v10 + 40 * a2;
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    v20 = v15;
    if (*a1 != v14)
    {
      v16 = v10 + v13 - v14;
      v17 = v13;
      do
      {
        sub_F548B4(v16, v17);
        v17 += 40;
        v16 = v20 + 40;
        v20 += 40;
      }

      while (v17 != v14);
      do
      {
        v18 = *v13;
        if (*v13)
        {
          *(v13 + 1) = v18;
          operator delete(v18);
        }

        v13 += 40;
      }

      while (v13 != v14);
      v13 = *a1;
      v11 = v19;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }
}

void sub_4E6B00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_4E6B1C(va1);
  sub_4E6B8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4E6B1C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 40);
        v4 -= 40;
        v5 = v6;
        if (v6)
        {
          *(v2 - 32) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t sub_4E6B8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 40;
        v4 = *(v2 - 40);
        *(a1 + 16) = v2 - 40;
        if (!v4)
        {
          break;
        }

        *(v2 - 32) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 40;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_4E6BFC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = sub_3EB950(*a2);
  v5 = sub_3EB950(v2);
  v26 = *v5;
  v6 = *(v5 + 24);
  v27 = *(v5 + 8);
  v28 = v6;
  sub_3EDBB0(&v29, (v5 + 32));
  v36 = *(v5 + 168);
  v7 = v4[36];
  if (v7 != -1 && v35 == v7)
  {
    v15 = &v38;
    if (((off_266AFF0[v7])(&v15, v4 + 34, &v34) & 1) == 0)
    {
LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }
  }

  else if (v35 != v7)
  {
    goto LABEL_14;
  }

  if (*v4 != v26 || BYTE2(*v4) != BYTE2(v26))
  {
    goto LABEL_14;
  }

  v9 = sub_4D1DB0(v3);
  v10 = sub_4D1DB0(v2);
  LODWORD(v15) = *v10;
  v11 = *(v10 + 24);
  v16 = *(v10 + 8);
  v17 = v11;
  sub_3EDBB0(&v18, (v10 + 32));
  v25 = *(v10 + 168);
  v12 = v9[36];
  if (v12 == -1 || v24 != v12)
  {
    if (v24 != v12)
    {
LABEL_23:
      v13 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v38 = &v37;
    if (((off_266AFF0[v12])(&v38, v9 + 34, &v23) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (*v9 != v15)
  {
    goto LABEL_23;
  }

  v13 = BYTE2(*v9) == BYTE2(v15);
LABEL_24:
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

LABEL_15:
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v13;
}

void sub_4E6DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_3EDA0C(&a9);
  sub_3EDA0C(&a31);
  _Unwind_Resume(a1);
}

void *sub_4E6E5C@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = result;
  if (result)
  {
    if (a5)
    {
      if (a3)
      {
        while (1)
        {
          v18 = sub_4D1DC0(v16);
          result = sub_4D1DC0(a3);
          if (a2 >= v18 || a4 >= result)
          {
            if (a2 < v18 == a4 < result)
            {
              break;
            }
          }

          else
          {
            v19 = sub_4D1F50(v16, a2);
            result = sub_4D1F50(a3, a4);
            if (v19 == result)
            {
              break;
            }
          }

          result = sub_4D1DC0(a5);
          v20 = result;
          if (a7)
          {
            result = sub_4D1DC0(a7);
            if (a6 >= v20 || a8 >= result)
            {
              if (a6 < v20 == a8 < result)
              {
                break;
              }
            }

            else
            {
              v21 = sub_4D1F50(a5, a6);
              result = sub_4D1F50(a7, a8);
              if (v21 == result)
              {
                break;
              }
            }
          }

          else if (a6 >= result)
          {
            break;
          }

          v22 = sub_4D1F50(v16, a2);
          result = sub_4D1F50(a5, a6);
          v23 = result[4];
          if (__PAIR64__(*(v22 + 36), *(v22 + 32)) != __PAIR64__(WORD2(v23), v23) || *(v22 + 38) != BYTE6(v23))
          {
            break;
          }

          ++a2;
          ++a6;
        }
      }

      else
      {
        while (1)
        {
          result = sub_4D1DC0(v16);
          if (a2 >= result)
          {
            break;
          }

          result = sub_4D1DC0(a5);
          v24 = result;
          if (a7)
          {
            result = sub_4D1DC0(a7);
            if (a6 >= v24 || a8 >= result)
            {
              if (a6 < v24 == a8 < result)
              {
                break;
              }
            }

            else
            {
              v25 = sub_4D1F50(a5, a6);
              result = sub_4D1F50(a7, a8);
              if (v25 == result)
              {
                break;
              }
            }
          }

          else if (a6 >= result)
          {
            break;
          }

          v26 = sub_4D1F50(v16, a2);
          result = sub_4D1F50(a5, a6);
          v27 = result[4];
          if (__PAIR64__(*(v26 + 36), *(v26 + 32)) != __PAIR64__(WORD2(v27), v27) || *(v26 + 38) != BYTE6(v27))
          {
            break;
          }

          ++a2;
          ++a6;
        }
      }
    }

    else if (a7)
    {
      result = sub_4D1DC0(result);
      v32 = result;
      if (!a3)
      {
        goto LABEL_57;
      }

LABEL_53:
      result = sub_4D1DC0(a3);
      if (a2 >= v32 || a4 >= result)
      {
        if (a2 < v32 != a4 < result)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v33 = sub_4D1F50(v16, a2);
        result = sub_4D1F50(a3, a4);
        if (v33 != result)
        {
LABEL_60:
          do
          {
            result = sub_4D1DC0(a7);
            if (a8 >= result)
            {
              break;
            }

            v34 = sub_4D1F50(v16, a2);
            result = sub_4D1F50(0, a6);
            v35 = result[4];
            if (__PAIR64__(*(v34 + 36), *(v34 + 32)) != __PAIR64__(WORD2(v35), v35) || *(v34 + 38) != BYTE6(v35))
            {
              break;
            }

            ++a2;
            ++a6;
            result = sub_4D1DC0(v16);
            v32 = result;
            if (a3)
            {
              goto LABEL_53;
            }

LABEL_57:
            ;
          }

          while (a2 < v32);
        }
      }
    }

    else
    {
      result = sub_4D1DC0(result);
      if (a3)
      {
        v36 = result;
        result = sub_4D1DC0(a3);
        if (a2 < v36 && a4 < result)
        {
          sub_4D1F50(v16, a2);
          result = sub_4D1F50(a3, a4);
        }
      }
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
      while (1)
      {
        if (a5)
        {
          result = sub_4D1DC0(a5);
          v28 = result;
          if (a7)
          {
            result = sub_4D1DC0(a7);
            if (a6 >= v28 || a8 >= result)
            {
              if (a6 < v28 == a8 < result)
              {
                break;
              }
            }

            else
            {
              v29 = sub_4D1F50(a5, a6);
              result = sub_4D1F50(a7, a8);
              if (v29 == result)
              {
                break;
              }
            }
          }

          else if (a6 >= result)
          {
            break;
          }
        }

        else
        {
          if (!a7)
          {
            break;
          }

          result = sub_4D1DC0(a7);
          if (a8 >= result)
          {
            break;
          }
        }

        v30 = sub_4D1F50(0, a2);
        result = sub_4D1F50(a5, a6);
        v31 = result[4];
        if (__PAIR64__(*(v30 + 36), *(v30 + 32)) == __PAIR64__(WORD2(v31), v31) && *(v30 + 38) == BYTE6(v31))
        {
          ++a2;
          ++a6;
          result = sub_4D1DC0(a3);
          if (a4 < result)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  *a9 = v16;
  a9[1] = a2;
  a9[2] = a5;
  a9[3] = a6;
  return result;
}

void sub_4E7318(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = *a1;
  v6 = *(a1 + 24);
  v47 = *(a1 + 16);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v7 = *(a1 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = *a2;
  v10 = *(a2 + 24);
  v39 = *(a2 + 16);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v11 = *(a2 + 32);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v30 = *a3;
  v14 = *(a3 + 24);
  v31 = *(a3 + 16);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v15 = *(a3 + 32);
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v17 = *(a3 + 48);
  v16 = *(a3 + 56);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = *a4;
  v18 = *(a4 + 24);
  v23 = *(a4 + 16);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v19 = *(a4 + 32);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v28 = 0;
  v29 = 0;
  v21 = *(a4 + 48);
  v20 = *(a4 + 56);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_4E77DC(&v46, &v38, &v30, &v22, a5);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_4E76F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB674(&a29);
  sub_3DB674((v29 - 160));
  _Unwind_Resume(a1);
}

void sub_4E7774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
    sub_3DB674((v36 - 160));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x4E7764);
}

void sub_4E77B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(v1 - 136);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_4E77DC(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v77 = *a1;
  v7 = *(a1 + 3);
  v78 = *(a1 + 2);
  v79 = 0;
  v81 = 0;
  v80 = 0;
  v8 = *(a1 + 4);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v83 = 0;
  v82 = 0;
  v84 = 0;
  v10 = *(a1 + 6);
  v9 = *(a1 + 7);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v31 = a5;
  v85 = v77;
  v86 = v78;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v61 = *a2;
  v11 = *(a2 + 3);
  v62 = *(a2 + 2);
  v63 = 0;
  v65 = 0;
  v64 = 0;
  v12 = *(a2 + 4);
  if (v12 != v11)
  {
    if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v67 = 0;
  v66 = 0;
  v68 = 0;
  v14 = *(a2 + 6);
  v13 = *(a2 + 7);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v69 = v61;
  v70 = v62;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v45 = *a3;
  v15 = *(a3 + 3);
  v46 = *(a3 + 2);
  v47 = 0;
  v49 = 0;
  v48 = 0;
  v16 = *(a3 + 4);
  if (v16 != v15)
  {
    if (((v16 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v51 = 0;
  v50 = 0;
  v52 = 0;
  v18 = *(a3 + 6);
  v17 = *(a3 + 7);
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v53 = v45;
  v54 = v46;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v19 = *(a4 + 3);
  v36 = *(a4 + 2);
  v20 = *(a4 + 4);
  if (v20 != v19)
  {
    if (((v20 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = *(a4 + 6);
  v21 = *(a4 + 7);
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v37 = *a4;
  v38 = v36;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  __p = 0;
  v43 = 0;
  v44 = 0;
  sub_4E870C(&v85, &v69, &v53, &v37, &v93);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  v23 = *(a1 + 3);
  v24 = *(a1 + 4);
  if (v24 != v23)
  {
    if (((v24 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v26 = *(a1 + 6);
  v25 = *(a1 + 7);
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v35 = v94;
  if (v96 != v95)
  {
    if (((v96 - v95) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v98 != v97)
  {
    if (((v98 - v97) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v27 = *(a3 + 3);
  v28 = *(a3 + 4);
  if (v28 != v27)
  {
    if (((v28 - v27) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v30 = *(a3 + 6);
  v29 = *(a3 + 7);
  if (v29 != v30)
  {
    if (((v29 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v33 = v99;
  v34 = v100;
  if (v102 != v101)
  {
    if (((v102 - v101) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v104 != v103)
  {
    if (((v104 - v103) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *v31 = v93;
  *(v31 + 16) = v35;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  *(v31 + 48) = 0;
  *(v31 + 56) = 0;
  *(v31 + 64) = 0;
  *(v31 + 72) = v33;
  *(v31 + 88) = v34;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 112) = 0;
  *(v31 + 120) = 0;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }
}

void sub_4E850C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_3DB674(&a69);
  sub_3DB674(&a59);
  sub_3DB674(&STACK[0x280]);
  sub_3DB674(&STACK[0x230]);
  sub_3DB674(&STACK[0x320]);
  sub_3DB674(&STACK[0x2D0]);
  sub_3DB674(&STACK[0x3C0]);
  sub_3DB674(&STACK[0x370]);
  _Unwind_Resume(a1);
}

void sub_4E8684(_Unwind_Exception *a1)
{
  if (v1)
  {
    STACK[0x2F0] = v1;
    operator delete(v1);
    sub_3DB674(&STACK[0x3C0]);
    sub_3DB674(&STACK[0x370]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x4E8664);
}

void sub_4E86B0(_Unwind_Exception *a1)
{
  sub_3DB674(&STACK[0x3C0]);
  sub_3DB674(&STACK[0x370]);
  _Unwind_Resume(a1);
}

void sub_4E86CC(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

void sub_4E86F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_4E870C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  while (!sub_3E6794(a1, a2))
  {
    if (sub_3E6794(a3, a4))
    {
      break;
    }

    v12 = sub_4D1F50(*a1, *(a1 + 8));
    v13 = *(sub_4D1F50(*a3, *(a3 + 8)) + 32);
    if (__PAIR64__(*(v12 + 36), *(v12 + 32)) != __PAIR64__(WORD2(v13), v13))
    {
      break;
    }

    if (*(v12 + 38) != BYTE6(v13))
    {
      break;
    }

    sub_3E3AF4(a1);
    sub_3E3AF4(a3);
  }

  *a5 = *a1;
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 24) = *(a1 + 24);
  *(a5 + 40) = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a5 + 48) = *(a1 + 48);
  *(a5 + 64) = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v10 = *a3;
  *(a5 + 88) = *(a3 + 16);
  *(a5 + 72) = v10;
  *(a5 + 96) = *(a3 + 24);
  *(a5 + 112) = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  result = *(a3 + 48);
  *(a5 + 120) = result;
  *(a5 + 136) = *(a3 + 64);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

void sub_4E8844()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_2790380 = 0u;
  *algn_2790390 = 0u;
  dword_27903A0 = 1065353216;
  sub_3A9A34(&xmmword_2790380, v0);
  sub_3A9A34(&xmmword_2790380, v3);
  sub_3A9A34(&xmmword_2790380, __p);
  sub_3A9A34(&xmmword_2790380, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_2790358 = 0;
    qword_2790360 = 0;
    qword_2790350 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_4E8A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2790368)
  {
    qword_2790370 = qword_2790368;
    operator delete(qword_2790368);
  }

  _Unwind_Resume(exception_object);
}

void sub_4E8B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  strcpy(v19, "FilteredRerouteHistory");
  HIBYTE(v19[2]) = 22;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v10 = sub_3AEC94(a2, v19, &__p);
  sub_4EAA24(&v20, v10);
  v11 = __p;
  if (__p)
  {
    v12 = v17;
    v13 = __p;
    if (v17 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v17 = v11;
    operator delete(v13);
  }

  if (SHIBYTE(v19[2]) < 0)
  {
    operator delete(v19[0]);
  }

  v21 = 256;
  sub_4EAA28(a5, a4, *(a4 + 36), 1u, 0, &v20, a1);
  *(a1 + 24) = a3;
  HIBYTE(v19[2]) = 18;
  strcpy(v19, "AutoAdvanceHandler");
  __p = 0;
  v17 = 0;
  v18 = 0;
  v15 = sub_3AEC94(a2, v19, &__p);
  sub_4E9BCC((a1 + 32), v15);
}

void sub_4E8CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4E8D4C(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v79 = *(a1 + 48);
  sub_4EB038(a1);
  if (a3 != v7)
  {
    v8 = v7;
    if (a3 - 4 != v7)
    {
      v78 = *(a1 + 36);
      v10 = *a4;
      v9 = a4[1];
      v11 = exp(v9 * -6.28318531 / 4294967300.0 + 3.14159265);
      v77 = atan((v11 + -1.0 / v11) * 0.5) * 57.2957795 * 0.0174532925;
      v76 = cos(v77);
      v12 = 0;
      v13 = 0;
      v74 = (v10 & v9) != -1;
      v75 = (v10 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925;
      v14 = (v10 & v9) == -1;
      v15 = a3 - 3;
      v71 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
      v72 = vdupq_n_s64(0x4076800000000000uLL);
      v69 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
      v70 = vdupq_n_s64(0xC066800000000000);
      while (1)
      {
        v22 = *v15;
        v23 = v15[1];
        v24 = *(v15 - 4);
        v25 = *(v15 - 3);
        if (*v15 == -1 && v23 == -1)
        {
          v43 = 0x7FFFFFFFFFFFFFFFLL;
          v44 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v24 & v25) == -1 || v14)
          {
            goto LABEL_4;
          }

          goto LABEL_59;
        }

        if (v24 == -1 && v25 == -1)
        {
          v43 = 0x7FFFFFFFFFFFFFFFLL;
          if (!v74)
          {
            goto LABEL_53;
          }

          goto LABEL_28;
        }

        v28 = exp(3.14159265 - v23 * 6.28318531 / 4294967300.0);
        v29 = atan((v28 - 1.0 / v28) * 0.5) * 57.2957795 * 0.0174532925;
        v30.i64[0] = v22;
        v30.i64[1] = v24;
        v31 = exp(3.14159265 - v25 * 6.28318531 / 4294967300.0);
        v32 = atan((v31 - 1.0 / v31) * 0.5) * 57.2957795 * 0.0174532925;
        v33 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v30), v72), v71), v70), v69);
        v73 = vsubq_f64(v33, vdupq_laneq_s64(v33, 1)).f64[0];
        v34 = sin((v29 - v32) * 0.5);
        v35 = v34 * v34;
        v36 = cos(v29);
        v37 = v36 * cos(v32);
        v38 = sin(0.5 * v73);
        v39 = atan2(sqrt(v38 * v38 * v37 + v35), sqrt(1.0 - (v38 * v38 * v37 + v35)));
        v40 = (v39 + v39) * 6372797.56 * 100.0;
        if (v40 >= 0.0)
        {
          v41 = v40;
          if (v40 >= 4.50359963e15)
          {
            goto LABEL_34;
          }

          v42 = (v40 + v40) + 1;
        }

        else
        {
          v41 = v40;
          if (v40 <= -4.50359963e15)
          {
            goto LABEL_34;
          }

          v42 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
        }

        v41 = (v42 >> 1);
LABEL_34:
        if (v41 >= 9.22337204e18)
        {
          v43 = 0x7FFFFFFFFFFFFFFELL;
          if (!v74)
          {
            goto LABEL_53;
          }

          goto LABEL_28;
        }

        if (v40 >= 0.0)
        {
          if (v40 >= 4.50359963e15)
          {
            goto LABEL_52;
          }

          v55 = (v40 + v40) + 1;
        }

        else
        {
          if (v40 <= -4.50359963e15)
          {
            goto LABEL_52;
          }

          v55 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
        }

        v40 = (v55 >> 1);
LABEL_52:
        v43 = v40;
        if (!v74)
        {
LABEL_53:
          v44 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v24 & v25) == -1 || v14)
          {
            goto LABEL_4;
          }

          goto LABEL_59;
        }

LABEL_28:
        v45 = exp(v23 * -6.28318531 / 4294967300.0 + 3.14159265);
        v46 = atan((v45 - 1.0 / v45) * 0.5) * 57.2957795 * 0.0174532925;
        v47 = sin((v46 - v77) * 0.5);
        v48 = v47 * v47;
        v49 = cos(v46) * v76;
        v50 = sin(((v22 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925 - v75) * 0.5);
        v51 = atan2(sqrt(v50 * v50 * v49 + v48), sqrt(1.0 - (v50 * v50 * v49 + v48)));
        v52 = (v51 + v51) * 6372797.56 * 100.0;
        if (v52 >= 0.0)
        {
          v53 = v52;
          if (v52 >= 4.50359963e15)
          {
            goto LABEL_41;
          }

          v54 = (v52 + v52) + 1;
        }

        else
        {
          v53 = v52;
          if (v52 <= -4.50359963e15)
          {
            goto LABEL_41;
          }

          v54 = (v52 + v52) - 1 + (((v52 + v52) - 1) >> 63);
        }

        v53 = (v54 >> 1);
LABEL_41:
        if (v53 >= 9.22337204e18)
        {
          v44 = 0x7FFFFFFFFFFFFFFELL;
          if ((v24 & v25) == -1 || v14)
          {
            goto LABEL_4;
          }

          goto LABEL_59;
        }

        if (v52 >= 0.0)
        {
          if (v52 >= 4.50359963e15)
          {
            goto LABEL_58;
          }

          v56 = (v52 + v52) + 1;
        }

        else
        {
          if (v52 <= -4.50359963e15)
          {
            goto LABEL_58;
          }

          v56 = (v52 + v52) - 1 + (((v52 + v52) - 1) >> 63);
        }

        v52 = (v56 >> 1);
LABEL_58:
        v44 = v52;
        if ((v24 & v25) == -1 || v14)
        {
LABEL_4:
          v16 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_5;
        }

LABEL_59:
        v57 = exp(v25 * -6.28318531 / 4294967300.0 + 3.14159265);
        v58 = atan((v57 - 1.0 / v57) * 0.5) * 57.2957795 * 0.0174532925;
        v59 = sin((v58 - v77) * 0.5);
        v60 = v59 * v59;
        v61 = cos(v58) * v76;
        v62 = sin(((v24 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925 - v75) * 0.5);
        v63 = atan2(sqrt(v62 * v62 * v61 + v60), sqrt(1.0 - (v62 * v62 * v61 + v60)));
        v64 = (v63 + v63) * 6372797.56 * 100.0;
        if (v64 >= 0.0)
        {
          v65 = v64;
          if (v64 < 4.50359963e15)
          {
            v66 = (v64 + v64) + 1;
            goto LABEL_64;
          }
        }

        else
        {
          v65 = v64;
          if (v64 > -4.50359963e15)
          {
            v66 = (v64 + v64) - 1 + (((v64 + v64) - 1) >> 63);
LABEL_64:
            v65 = (v66 >> 1);
          }
        }

        if (v65 < 9.22337204e18)
        {
          if (v64 >= 0.0)
          {
            if (v64 < 4.50359963e15)
            {
              v67 = (v64 + v64) + 1;
LABEL_72:
              v64 = (v67 >> 1);
            }
          }

          else if (v64 > -4.50359963e15)
          {
            v67 = (v64 + v64) - 1 + (((v64 + v64) - 1) >> 63);
            goto LABEL_72;
          }

          v16 = v64;
          goto LABEL_5;
        }

        v16 = 0x7FFFFFFFFFFFFFFELL;
LABEL_5:
        v17 = v16 < v44;
        v18 = v16 > v44;
        v19 = v17;
        if (v43 <= v79)
        {
          v18 = 0;
        }

        v20 = v12 + v18;
        v13 |= v20 >= v78;
        if ((v19 & (v43 > v79)) != 0)
        {
          v12 = 0;
        }

        else
        {
          v12 = v20;
        }

        v21 = v15 - 5;
        v15 -= 4;
        if (v21 == v8)
        {
          return v13 & 1;
        }
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_4E94CC(uint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  if ((0x6FB586FB586FB587 * ((*(*(a1 + 24) + 8) - **(a1 + 24)) >> 3)) < 3)
  {
    return 0;
  }

  if (sub_4D1F6C(a1))
  {
    return 0;
  }

  v3 = *(a1 + 36);
  if (sub_4EB044(a1) <= v3)
  {
    return 0;
  }

  v4 = **(a1 + 24);
  v22 = *(v4 + 744);
  v21 = *(v4 + 728);
  result = sub_585D8(&v21);
  if (result)
  {
    v5 = (v4 + 440);
    if (*(v4 + 440) != -1 || *(v4 + 444) != -1)
    {
      v6 = *(a1 + 24);
      v7 = v6[1];
      v8 = *v6 + 880;
      if (v8 == v7)
      {
LABEL_13:
        v19 = *(a1 + 40);
        v9 = sub_4EB02C(a1);
        v11 = v10;
        v12 = sub_4EB038(a1);
        sub_4E971C(v9, v11, v12, v13, v5, &v19);
        v15 = v14;
        sub_4EB038(a1);
        if (v3 < ((v15 - v16) >> 4))
        {
          return sub_4E8D4C(a1, v9, v15, v5);
        }
      }

      else
      {
        while (!sub_588E8((v8 + 288), &v21))
        {
          v8 += 440;
          if (v8 == v7)
          {
            goto LABEL_13;
          }
        }
      }

      return 0;
    }

    result = sub_7E7E4(3u);
    if (result)
    {
      sub_19594F8(&v19);
      sub_4A5C(&v19, "AutoAdvanceHandler::upcoming waypoint location is invalid", 57);
      sub_66B8(v20, __p);
      sub_7E854(__p, 3u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(&v19);
      return 0;
    }
  }

  return result;
}

void sub_4E96D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_4E971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6)
{
  v6 = a2;
  if (a2 != a4)
  {
    v34 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v35 = vdupq_n_s64(0x4076800000000000uLL);
    v32 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v33 = vdupq_n_s64(0xC066800000000000);
    do
    {
      v11 = *(v6 - 12);
      v10 = *(v6 - 8);
      if (v11 == -1 && v10 == -1)
      {
        goto LABEL_27;
      }

      v13 = *a5;
      v14 = a5[1];
      if (*a5 == -1 && v14 == -1)
      {
        goto LABEL_27;
      }

      v16 = exp(3.14159265 - v10 * 6.28318531 / 4294967300.0);
      v17 = atan((v16 - 1.0 / v16) * 0.5) * 57.2957795 * 0.0174532925;
      v18.i64[0] = v11;
      v18.i64[1] = v13;
      v19 = exp(3.14159265 - v14 * 6.28318531 / 4294967300.0);
      v20 = atan((v19 - 1.0 / v19) * 0.5) * 57.2957795 * 0.0174532925;
      v21 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v18), v35), v34), v33), v32);
      v36 = vsubq_f64(v21, vdupq_laneq_s64(v21, 1)).f64[0];
      v22 = sin((v17 - v20) * 0.5);
      v23 = v22 * v22;
      v24 = cos(v17);
      v25 = v24 * cos(v20);
      v26 = sin(0.5 * v36);
      v27 = atan2(sqrt(v26 * v26 * v25 + v23), sqrt(1.0 - (v26 * v26 * v25 + v23)));
      v28 = (v27 + v27) * 6372797.56 * 100.0;
      if (v28 >= 0.0)
      {
        v29 = v28;
        if (v28 < 4.50359963e15)
        {
          v30 = (v28 + v28) + 1;
          goto LABEL_18;
        }
      }

      else
      {
        v29 = v28;
        if (v28 > -4.50359963e15)
        {
          v30 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_18:
          v29 = (v30 >> 1);
        }
      }

      if (v29 < 9.22337204e18)
      {
        if (v28 >= 0.0)
        {
          if (v28 < 4.50359963e15)
          {
            v31 = (v28 + v28) + 1;
LABEL_25:
            v28 = (v31 >> 1);
          }
        }

        else if (v28 > -4.50359963e15)
        {
          v31 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
          goto LABEL_25;
        }

        if (v28 < *a6)
        {
          return;
        }

        goto LABEL_27;
      }

      if (*a6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }

LABEL_27:
      v6 -= 16;
    }

    while (v6 != a4);
  }
}

void sub_4E9A34(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_4E9DA4(v3, **(a1 + 24));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  operator new();
}

void sub_4E9B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  *(v11 + 8) = v12;
  sub_4EA79C(&a9);
  sub_44FDEC(&a11);
  _Unwind_Resume(a1);
}

void sub_4E9B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_4EA79C(&a9);
  sub_44FDEC(&a11);
  _Unwind_Resume(a1);
}

void sub_4E9BB4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_44FD90(v1);
  _Unwind_Resume(a1);
}

void sub_4E9BCC(BOOL *a1, void *a2)
{
  v6 = 6;
  strcpy(__p, "enable");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_4E9D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4E9DA4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 72) = 0;
  *(a1 + 16) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v9;
  v10 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v10;
  sub_81988((a1 + 152), a2 + 152);
  v11 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v11;
  if (*(a2 + 215) < 0)
  {
    sub_325C((a1 + 192), *(a2 + 192), *(a2 + 200));
  }

  else
  {
    v12 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v12;
  }

  if (*(a2 + 239) < 0)
  {
    sub_325C((a1 + 216), *(a2 + 216), *(a2 + 224));
  }

  else
  {
    v13 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v13;
  }

  if (*(a2 + 263) < 0)
  {
    sub_325C((a1 + 240), *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v14 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v14;
  }

  if (*(a2 + 287) < 0)
  {
    sub_325C((a1 + 264), *(a2 + 264), *(a2 + 272));
  }

  else
  {
    v15 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v15;
  }

  v16 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v16;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  sub_4EA240(a1 + 312, *(a2 + 312), *(a2 + 320), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 320) - *(a2 + 312)) >> 4));
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  v18 = *(a2 + 336);
  v17 = *(a2 + 344);
  if (v17 != v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v20 = *(a2 + 360);
  v19 = *(a2 + 368);
  if (v19 != v20)
  {
    if (0x8E38E38E38E38E39 * ((v19 - v20) >> 3) < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 384) = *(a2 + 384);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  v21 = *(a2 + 400);
  v22 = *(a2 + 408);
  if (v22 != v21)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  return a1;
}

void sub_4EA10C(_Unwind_Exception *a1)
{
  if (*(v1 + 263) < 0)
  {
    operator delete(*(v1 + 240));
    if ((*(v1 + 239) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 215) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 239) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 216));
  if ((*(v1 + 215) & 0x80000000) == 0)
  {
LABEL_4:
    sub_44D36C(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v1 + 192));
  sub_44D36C(v1);
  _Unwind_Resume(a1);
}

void sub_4EA240(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_4EA404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  v16 = *v14;
  if (*v14)
  {
    *(v13 + 80) = v16;
    operator delete(v16);
  }

  sub_4A0D48(&a11);
  *(v11 + 8) = v12;
  sub_4A0DB8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4EA43C(void **a1, uint64_t a2)
{
  v2 = 0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x94F2094F2094F2)
  {
    sub_1794();
  }

  if (0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6FB586FB586FB587 * ((a1[2] - *a1) >> 3)) >= 0x4A7904A7904A79)
  {
    v5 = 0x94F2094F2094F2;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x94F2094F2094F2)
    {
      operator new();
    }

    sub_1808();
  }

  v24 = 8 * ((a1[1] - *a1) >> 3);
  sub_4E9DA4(v24, a2);
  v6 = 440 * v2 + 440;
  v7 = *a1;
  v8 = a1[1];
  v9 = v24 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v24 + *a1 - v8;
    do
    {
      *v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      *(v11 + 63) = *(v10 + 63);
      *(v11 + 32) = v13;
      *(v11 + 48) = v14;
      *(v11 + 16) = v12;
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      *(v11 + 72) = 0;
      *(v11 + 72) = *(v10 + 72);
      *(v11 + 88) = *(v10 + 11);
      *(v10 + 9) = 0;
      *(v10 + 10) = 0;
      *(v10 + 11) = 0;
      v15 = *(v10 + 6);
      *(v11 + 112) = v10[112];
      *(v11 + 96) = v15;
      v16 = *(v10 + 120);
      *(v11 + 136) = *(v10 + 136);
      *(v11 + 120) = v16;
      *(v11 + 152) = *(v10 + 19);
      *(v11 + 160) = *(v10 + 10);
      *(v10 + 19) = 0;
      *(v10 + 20) = 0;
      *(v10 + 21) = 0;
      v17 = *(v10 + 22);
      *(v11 + 184) = *(v10 + 46);
      *(v11 + 176) = v17;
      v18 = *(v10 + 12);
      *(v11 + 208) = *(v10 + 26);
      *(v11 + 192) = v18;
      *(v10 + 25) = 0;
      *(v10 + 26) = 0;
      *(v10 + 24) = 0;
      v19 = *(v10 + 216);
      *(v11 + 232) = *(v10 + 29);
      *(v11 + 216) = v19;
      *(v10 + 28) = 0;
      *(v10 + 29) = 0;
      *(v10 + 27) = 0;
      v20 = *(v10 + 15);
      *(v11 + 256) = *(v10 + 32);
      *(v11 + 240) = v20;
      *(v10 + 30) = 0;
      *(v10 + 31) = 0;
      *(v10 + 32) = 0;
      v21 = *(v10 + 264);
      *(v11 + 280) = *(v10 + 35);
      *(v11 + 264) = v21;
      *(v10 + 33) = 0;
      *(v10 + 34) = 0;
      *(v10 + 35) = 0;
      v22 = *(v10 + 38);
      *(v11 + 288) = *(v10 + 18);
      *(v11 + 304) = v22;
      *(v11 + 312) = 0;
      *(v11 + 320) = 0;
      *(v11 + 328) = 0;
      *(v11 + 312) = *(v10 + 39);
      *(v11 + 320) = *(v10 + 20);
      *(v10 + 39) = 0;
      *(v10 + 40) = 0;
      *(v10 + 41) = 0;
      *(v11 + 336) = 0;
      *(v11 + 344) = 0;
      *(v11 + 352) = 0;
      *(v11 + 336) = *(v10 + 21);
      *(v11 + 352) = *(v10 + 44);
      *(v10 + 42) = 0;
      *(v10 + 43) = 0;
      *(v10 + 44) = 0;
      *(v11 + 360) = 0;
      *(v11 + 368) = 0;
      *(v11 + 376) = 0;
      *(v11 + 360) = *(v10 + 45);
      *(v11 + 368) = *(v10 + 23);
      *(v10 + 46) = 0;
      *(v10 + 47) = 0;
      *(v10 + 45) = 0;
      *(v11 + 384) = *(v10 + 24);
      *(v11 + 408) = 0;
      *(v11 + 416) = 0;
      *(v11 + 400) = 0;
      *(v11 + 400) = *(v10 + 25);
      *(v11 + 416) = *(v10 + 52);
      *(v10 + 50) = 0;
      *(v10 + 51) = 0;
      *(v10 + 52) = 0;
      *(v11 + 424) = *(v10 + 106);
      *(v11 + 432) = *(v10 + 54);
      v10 += 440;
      v11 += 440;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_44FDEC(v7) + 440);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_4EA734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4EA748(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4EA748(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 440;
    sub_44FDEC(i - 440);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_4EA79C(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_44FDEC(v4 - 440);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_4EA9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4EAA28(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X3>, unsigned int a4@<W4>, int a5@<W5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v7 = a6;
  v10 = a7;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  if (*(a6 + 2) == 1)
  {
    v12 = a1;
    if (sub_EA7118(a4) && (a5 != 2 || (*(v7 + 1) & 1) == 0))
    {
      operator new();
    }

    v13 = 0x7FFFFFFF;
    a1 = v12;
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  v53 = v10;
  v14 = sub_4EE304(a1);
  sub_4FB514(v14, &v67);
  v15 = v68;
  v16 = v69;
  if (v68 != v69)
  {
    v50 = a3;
    v52 = v69;
    do
    {
      v20 = v15;
      v15 -= 56;
      if (*v7 == 1 && sub_58918(v15, a2))
      {
        return;
      }

      if (*(v7 + 1) == 1 && *(v20 - 16) == 2)
      {
        return;
      }

      v22 = *(v20 - 5);
      v23 = __OFSUB__(a3, v22);
      v24 = a3 - v22;
      if (v24 < 0 != v23)
      {
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&v57);
          v25 = sub_4A5C(&v57, "Skipping entry from the reroute history because its reroute timestamp ", 70);
          sub_35CC(&__dst, *(v20 - 5));
          v26 = sub_433C(v25, &__dst);
          v27 = sub_4A5C(v26, " is greater than the current time ", 34);
          sub_35CC(v54, v50);
          v28 = sub_433C(v27, v54);
          sub_4A5C(v28, ".", 1);
          sub_3874(v54);
          sub_3874(&__dst);
          if ((v66 & 0x10) != 0)
          {
            v29 = v15;
            v42 = v65;
            v43 = &v61;
            if (v65 < v62)
            {
              v65 = v62;
              v42 = v62;
              v43 = &v61;
            }
          }

          else
          {
            v29 = v15;
            if ((v66 & 8) == 0)
            {
              v30 = 0;
              v56 = 0;
LABEL_50:
              *(&__dst + v30) = 0;
              sub_7E854(&__dst, 1u);
              v16 = v52;
              v10 = v53;
              v15 = v29;
              if (v56 < 0)
              {
                operator delete(__dst);
              }

              v57 = v49;
              *(&v57 + *(v49 - 3)) = v48;
              if (v64 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v59);
              std::ostream::~ostream();
              std::ios::~ios();
              continue;
            }

            v42 = v60[2];
            v43 = v60;
          }

          v47 = *v43;
          v30 = v42 - *v43;
          if (v30 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v30 >= 0x17)
          {
            operator new();
          }

          v56 = v42 - *v43;
          if (v30)
          {
            memmove(&__dst, v47, v30);
          }

          goto LABEL_50;
        }
      }

      else
      {
        v31 = (10 * v24) & ~((10 * v24) >> 31);
        if (v13 == 0x7FFFFFFF || v31 - v13 >= *(v7 + 4))
        {
          v32 = v10[1];
          v33 = v10[2];
          if (v32 < v33)
          {
            v17 = *(v20 - 4);
            v18 = *(v20 - 6);
            *v32 = v31;
            *(v32 + 4) = v17;
            *(v32 + 12) = v18;
            v19 = v32 + 16;
          }

          else
          {
            v51 = v15;
            v34 = *v10;
            v35 = v32 - *v10;
            v36 = (v35 >> 4) + 1;
            if (v36 >> 60)
            {
              sub_1794();
            }

            v37 = v7;
            v38 = a2;
            v39 = a3;
            v40 = v33 - v34;
            if (v40 >> 3 > v36)
            {
              v36 = v40 >> 3;
            }

            if (v40 >= 0x7FFFFFFFFFFFFFF0)
            {
              v41 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v36;
            }

            if (v41)
            {
              if (!(v41 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v44 = 16 * (v35 >> 4);
            v45 = *(v20 - 4);
            v46 = *(v20 - 6);
            *v44 = v31;
            *(v44 + 4) = v45;
            *(v44 + 12) = v46;
            v19 = v44 + 16;
            memcpy(0, v34, v35);
            v10 = v53;
            *v53 = 0;
            v53[2] = 0;
            if (v34)
            {
              operator delete(v34);
            }

            a3 = v39;
            a2 = v38;
            v7 = v37;
            v15 = v51;
            v16 = v52;
          }

          v10[1] = v19;
          v13 = v31;
        }
      }
    }

    while (v15 != v16);
  }
}

void sub_4EAF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::ios::~ios();
  v35 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4EB054(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 24);
  *result = *(a2 + 32);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &off_277E738;
  }

  v5 = v4[6];
  v6 = &off_277E5E8;
  if (v5)
  {
    v6 = v5;
  }

  v7 = *(v6 + 7);
  v8 = -1;
  if (v7 <= 180.0)
  {
    v9 = *(v6 + 6);
    if (fabs(v9) <= 85.0511288 && v7 >= -180.0)
    {
      v10 = result;
      v11 = sin(fmin(fmax(v9, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      v12 = log((v11 + 1.0) / (1.0 - v11));
      result = v10;
      LODWORD(v13) = ((v12 / -12.5663706 + 0.5) * 4294967300.0);
      if (v13 >= 0xFFFFFFFE)
      {
        v13 = 4294967294;
      }

      else
      {
        v13 = v13;
      }

      v8 = ((v7 + 180.0) / 360.0 * 4294967300.0) | (v13 << 32);
    }
  }

  *(result + 8) = v8;
  *(result + 16) = 0x7FFFFFFF;
  v14 = *(a2 + 24);
  if (!v14)
  {
    v14 = &off_277E738;
  }

  v15 = llround(*(v14 + 13) * 100.0) % 36000;
  if (v15 > 0xFFFF735F)
  {
    LOWORD(v15) = v15 - 29536;
  }

  *(result + 20) = v15;
  v16 = *(a2 + 40);
  *(result + 22) = *(a2 + 40);
  *(result + 22) = v16 & 0xFFFF00FF | (*(a2 + 44) << 8);
  return result;
}

uint64_t sub_4EB214(uint64_t a1, void *a2, double *a3)
{
  if (*(a1 + 40) > *a3)
  {
    return 3;
  }

  if (sub_4D1F6C(a2))
  {
    return 0;
  }

  v5 = sub_45AC50(a2);
  v6 = sub_45AC50(v5);
  v7 = *v6;
  v8 = (*v6 - **v6);
  v9 = *v8;
  if (!*(v6 + 38))
  {
    if (v9 < 0x9B || !v8[77] || (*&v7[v8[77]] & 1) == 0)
    {
      return 2;
    }

LABEL_14:
    v10 = v8[23];
    if (!v10)
    {
      return 1;
    }

    v11 = v7[v10];
    v12 = v11 > 0x2F;
    v13 = (1 << v11) & 0xE2E040048000;
    if (v12 || v13 == 0)
    {
      return 1;
    }

    return 2;
  }

  if (v9 < 0x9B)
  {
    return 2;
  }

  result = 2;
  if (v8[77])
  {
    if ((*&v7[v8[77]] & 2) == 0)
    {
      return 2;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_4EB31C(int a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t sub_4EB334(unsigned int a1)
{
  if (a1 < 3)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

double *sub_4EB344(double *a1, void *a2)
{
  strcpy(__p, "gps_accuracy_threshold");
  v7 = 22;
  v3 = sub_63D34(a2, __p);
  if (v7 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  return a1;
}

void sub_4EB3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4EB3E0(uint64_t a1, double *a2)
{
  if (*(a1 + 40) <= *a2)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

void sub_4EB3F8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27903D8 = 0u;
  unk_27903E8 = 0u;
  dword_27903F8 = 1065353216;
  sub_3A9A34(&xmmword_27903D8, v0);
  sub_3A9A34(&xmmword_27903D8, v3);
  sub_3A9A34(&xmmword_27903D8, __p);
  sub_3A9A34(&xmmword_27903D8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27903B0 = 0;
    qword_27903B8 = 0;
    qword_27903A8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_4EB640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27903C0)
  {
    qword_27903C8 = qword_27903C0;
    operator delete(qword_27903C0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4EB6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 396) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 480) = 5;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0x7FFFFFFF;
  v75 = a1 + 568;
  v5 = a1 + 592;
  *(a1 + 624) = 0u;
  *(a1 + 601) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 640) = -1;
  *(a1 + 648) = 0x7FFFFFFF;
  *(a1 + 660) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = -1;
  *(a1 + 672) = -1;
  *(a1 + 680) = 0;
  *(a1 + 296) = *(a2 + 244);
  *(a1 + 300) = *(a2 + 248);
  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_22;
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 32);
  v9 = &v7[v8];
  if (!v8)
  {
    v11 = v7;
    if (v9 == v7)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v10 = 8 * v8;
  v11 = v7;
  while (*(*v11 + 144) != a3)
  {
    ++v11;
    v10 -= 8;
    if (!v10)
    {
      v11 = v9;
      break;
    }
  }

  if (v9 != v11)
  {
LABEL_13:
    *(a1 + 680) = v11 == v7;
    sub_4F9278(&v76, *v11);
    sub_4EC0C0(a1, &v76);
    if (__p)
    {
      v85 = __p;
      operator delete(__p);
    }

    v12 = v82;
    if (v82)
    {
      v13 = v83;
      v14 = v82;
      if (v83 != v82)
      {
        do
        {
          v13 = sub_4F0FB4(v13 - 144);
        }

        while (v13 != v12);
        v14 = v82;
      }

      v83 = v12;
      operator delete(v14);
    }

    if (v78)
    {
      v79 = v78;
      operator delete(v78);
    }
  }

LABEL_22:
  if ((*(a2 + 17) & 8) != 0)
  {
    v15 = *(a2 + 40);
    if (v15)
    {
      v16 = (v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 32);
    if (v17)
    {
      v18 = 8 * v17;
      v19 = v16;
      while (*(*v19 + 144) != *(a2 + 256))
      {
        ++v19;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = v16;
    }

    if (v19 != &v16[v17])
    {
      sub_4F9278(&v76, *v19);
      sub_4EC244(a1, &v76);
      if (__p)
      {
        v85 = __p;
        operator delete(__p);
      }

      v20 = v82;
      if (v82)
      {
        v21 = v83;
        v22 = v82;
        if (v83 != v82)
        {
          do
          {
            v21 = sub_4F0FB4(v21 - 144);
          }

          while (v21 != v20);
          v22 = v82;
        }

        v83 = v20;
        operator delete(v22);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }
    }
  }

LABEL_42:
  v23 = *(a2 + 64);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(a2 + 56);
  if (v25)
  {
    v26 = 8 * v25;
    do
    {
      sub_4EC344(a1, *v24++);
      v26 -= 8;
    }

    while (v26);
  }

  v27 = *(a2 + 88);
  if (v27)
  {
    v28 = v27 + 8;
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a2 + 80);
  if (v29)
  {
    v30 = 8 * v29;
    v31 = -85.0511288;
    do
    {
      v32 = *(*v28 + 56);
      v33 = -1;
      if (v32 <= 180.0)
      {
        v31 = *(*v28 + 48);
        if (fabs(v31) <= 85.0511288 && v32 >= -180.0)
        {
          v34 = sin(fmin(fmax(v31, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
          LODWORD(v35) = ((log((v34 + 1.0) / (1.0 - v34)) / -12.5663706 + 0.5) * 4294967300.0);
          if (v35 >= 0xFFFFFFFE)
          {
            v35 = 4294967294;
          }

          else
          {
            v35 = v35;
          }

          v31 = (v32 + 180.0) / 360.0 * 4294967300.0;
          v33 = v31 | (v35 << 32);
        }
      }

      v76 = v33;
      LODWORD(v77[0]) = 0x7FFFFFFF;
      sub_4EC4B4(a1, &v76, v31);
      v28 += 8;
      v30 -= 8;
    }

    while (v30);
  }

  v36 = *(a2 + 128);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(a2 + 120);
  if (v38)
  {
    v39 = 8 * v38;
    do
    {
      sub_4EC5F0(a1, *v37++);
      v39 -= 8;
    }

    while (v39);
  }

  *(a1 + 376) = sub_97230(*(a2 + 252));
  if ((*(a2 + 16) & 8) != 0)
  {
    sub_4FB504(&v76, *(a2 + 208));
    sub_4EE140(a1 + 384, &v76);
    if (v89)
    {
      v90 = v89;
      operator delete(v89);
    }

    v40 = v85;
    v41 = v86;
    v88 = 0;
    v42 = v86 - v85;
    if (v42 >= 3)
    {
      do
      {
        operator delete(*v40);
        v41 = v86;
        v40 = v85 + 1;
        v85 = v40;
        v42 = v86 - v40;
      }

      while (v42 > 2);
    }

    if (v42 == 1)
    {
      v43 = 85;
    }

    else
    {
      if (v42 != 2)
      {
LABEL_77:
        if (v40 != v41)
        {
          do
          {
            v44 = *v40++;
            operator delete(v44);
          }

          while (v40 != v41);
          if (v86 != v85)
          {
            v86 = (v86 + ((v85 - v86 + 7) & 0xFFFFFFFFFFFFFFF8));
          }
        }

        if (__p)
        {
          operator delete(__p);
        }

        v45 = v82;
        if (v82)
        {
          v46 = v83;
          v47 = v82;
          if (v83 != v82)
          {
            do
            {
              v48 = *(v46 - 6);
              if (v48)
              {
                *(v46 - 5) = v48;
                operator delete(v48);
              }

              v49 = v46 - 10;
              if (*(v46 - 57) < 0)
              {
                operator delete(*v49);
              }

              v46 -= 10;
            }

            while (v49 != v45);
            v47 = v82;
          }

          v83 = v45;
          operator delete(v47);
        }

        v50 = v78;
        v51 = v79;
        v81 = 0;
        v52 = (v79 - v78) >> 3;
        if (v52 >= 3)
        {
          do
          {
            operator delete(*v50);
            v51 = v79;
            v50 = (v78 + 8);
            v78 = v50;
            v52 = v79 - v50;
          }

          while (v52 > 2);
        }

        if (v52 == 1)
        {
          v53 = 64;
        }

        else
        {
          if (v52 != 2)
          {
            goto LABEL_100;
          }

          v53 = 128;
        }

        v80 = v53;
LABEL_100:
        if (v50 != v51)
        {
          do
          {
            v54 = *v50++;
            operator delete(v54);
          }

          while (v50 != v51);
          if (v79 != v78)
          {
            v79 = (v79 + ((v78 - v79 + 7) & 0xFFFFFFFFFFFFFFF8));
          }
        }

        if (v77[1])
        {
          operator delete(v77[1]);
        }

        goto LABEL_106;
      }

      v43 = 170;
    }

    v87 = v43;
    goto LABEL_77;
  }

LABEL_106:
  v55 = *(a2 + 184) & 0xFFFFFFFFFFFFFFFELL;
  if (v75 != v55)
  {
    v56 = *(v55 + 23);
    if (*(a1 + 591) < 0)
    {
      if (v56 >= 0)
      {
        v58 = (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        v58 = *v55;
      }

      if (v56 >= 0)
      {
        v59 = *(v55 + 23);
      }

      else
      {
        v59 = *(v55 + 8);
      }

      sub_13B38(v75, v58, v59);
    }

    else if ((*(v55 + 23) & 0x80) != 0)
    {
      sub_13A68(v75, *v55, *(v55 + 8));
    }

    else
    {
      v57 = *v55;
      *(v75 + 16) = *(v55 + 16);
      *v75 = v57;
    }
  }

  v60 = &off_2776F70;
  if (*(a2 + 232))
  {
    v60 = *(a2 + 232);
  }

  if ((~*(v60 + 4) & 3) != 0)
  {
    *(a1 + 616) = 0;
    *(a1 + 624) = 0u;
    if ((*(a2 + 16) & 0x10) == 0)
    {
LABEL_122:
      *(a1 + 652) = *(a2 + 260);
      v62 = *(a2 + 200) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 == v62)
      {
        goto LABEL_144;
      }

      goto LABEL_133;
    }
  }

  else
  {
    sub_58558(&v76, v60[3], v60[4]);
    v61 = *v77;
    *(a1 + 616) = v76;
    *(a1 + 624) = v61;
    if ((*(a2 + 16) & 0x10) == 0)
    {
      goto LABEL_122;
    }
  }

  v63 = *(a2 + 216);
  v64 = *(v63 + 56);
  v65 = -1;
  if (v64 <= 180.0)
  {
    v66 = *(v63 + 48);
    if (fabs(v66) <= 85.0511288 && v64 >= -180.0)
    {
      v67 = sin(fmin(fmax(v66, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v68) = ((log((v67 + 1.0) / (1.0 - v67)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v68 >= 0xFFFFFFFE)
      {
        v68 = 4294967294;
      }

      else
      {
        v68 = v68;
      }

      v65 = ((v64 + 180.0) / 360.0 * 4294967300.0) | (v68 << 32);
    }
  }

  *(a1 + 640) = v65;
  *(a1 + 648) = 0x7FFFFFFF;
  *(a1 + 652) = *(a2 + 260);
  v62 = *(a2 + 200) & 0xFFFFFFFFFFFFFFFELL;
  if (v5 != v62)
  {
LABEL_133:
    v69 = *(v62 + 23);
    if (*(a1 + 615) < 0)
    {
      if (v69 >= 0)
      {
        v71 = v62;
      }

      else
      {
        v71 = *v62;
      }

      if (v69 >= 0)
      {
        v72 = *(v62 + 23);
      }

      else
      {
        v72 = *(v62 + 8);
      }

      sub_13B38(v5, v71, v72);
    }

    else if ((*(v62 + 23) & 0x80) != 0)
    {
      sub_13A68(v5, *v62, *(v62 + 8));
    }

    else
    {
      v70 = *v62;
      *(v5 + 16) = *(v62 + 16);
      *v5 = v70;
    }
  }

LABEL_144:
  v73 = *(a2 + 16);
  if ((v73 & 0x2000) != 0)
  {
    *(a1 + 656) = *(a2 + 264) | 0x100;
    v73 = *(a2 + 16);
  }

  if ((v73 & 0x20) != 0)
  {
    sub_4F84F4(&v76, *(a2 + 224));
    *(a1 + 664) = v76;
    *(a1 + 672) = v77[0];
    v73 = *(a2 + 16);
  }

  if ((v73 & 0x4000) != 0 && *(a2 + 265) == 1)
  {
    *(a1 + 658) = 257;
    v73 = *(a2 + 16);
  }

  if ((v73 & 0x8000) != 0 && *(a2 + 266) == 1)
  {
    *(a1 + 660) = 257;
  }

  return a1;
}

void sub_4EBFEC(_Unwind_Exception *a1, uint64_t *a2, uint64_t a3, void **a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_4EC1C8(va);
  if (*(v5 + 615) < 0)
  {
    operator delete(*v6);
    if ((*(v5 + 591) & 0x80000000) == 0)
    {
LABEL_3:
      sub_4EC768((v5 + 384));
      sub_1A104((v5 + 352));
      v8 = *(v5 + 328);
      if (!v8)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v5 + 591) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*a4);
  sub_4EC768((v5 + 384));
  sub_1A104((v5 + 352));
  v8 = *(v5 + 328);
  if (!v8)
  {
LABEL_5:
    sub_1A104((v5 + 304));
    sub_4EC90C(a2);
    sub_4EC948(a3);
    sub_4EC948(v5);
    _Unwind_Resume(a1);
  }

LABEL_4:
  *(v5 + 336) = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_4EC0C0(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  *v7 = *(a2 + 24);
  v8 = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v9 = a2[3];
  v10 = *(a2 + 8);
  *v11 = *(a2 + 72);
  v12 = *(a2 + 11);
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 9) = 0;
  v13 = *(a2 + 24);
  *__p = *(a2 + 104);
  v15 = *(a2 + 15);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  v16 = 1;
  sub_4F3734(a1, &v5);
  if (v16 == 1)
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v2 = v11[0];
    if (v11[0])
    {
      v3 = v11[1];
      v4 = v11[0];
      if (v11[1] != v11[0])
      {
        do
        {
          v3 = sub_4F0FB4(v3 - 144);
        }

        while (v3 != v2);
        v4 = v11[0];
      }

      v11[1] = v2;
      operator delete(v4);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }
}

void *sub_4EC1C8(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    v4 = a1[10];
    v5 = a1[9];
    if (v4 != v3)
    {
      do
      {
        v4 = sub_4F0FB4(v4 - 144);
      }

      while (v4 != v3);
      v5 = a1[9];
    }

    a1[10] = v3;
    operator delete(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    a1[4] = v6;
    operator delete(v6);
  }

  return a1;
}

__n128 sub_4EC244(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 136;
  if (*(a1 + 264) == 1)
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    if (v3 == a2)
    {
      result = *(a2 + 48);
      *(a1 + 200) = *(a2 + 64);
      *(a1 + 184) = result;
      *(a1 + 232) = *(a2 + 96);
    }

    else
    {
      sub_4F3B08((a1 + 160), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 4);
      v6 = *(a2 + 48);
      *(a1 + 200) = *(a2 + 64);
      *(a1 + 184) = v6;
      sub_4F4EE0((a1 + 208), *(a2 + 72), *(a2 + 80), 0x8E38E38E38E38E39 * ((*(a2 + 80) - *(a2 + 72)) >> 4));
      *(a1 + 232) = *(a2 + 96);
      v7 = *(a2 + 104);
      v8 = *(a2 + 112);

      sub_4F3C68((a1 + 240), v7, v8, (v8 - v7) >> 4);
    }
  }

  else
  {
    sub_4F1328(v3, a2);
    *(a1 + 264) = 1;
  }

  return result;
}

unint64_t sub_4EC344(void *a1, char *__s1)
{
  v5 = a1[38];
  v4 = a1[39];
  if (v5 == v4)
  {
LABEL_25:
    if (v4 >= a1[40])
    {
      result = sub_1CEE8((a1 + 38), __s1);
      a1[39] = result;
    }

    else
    {
      if (__s1[23] < 0)
      {
        sub_325C(v4, *__s1, *(__s1 + 1));
      }

      else
      {
        v15 = *__s1;
        *(v4 + 16) = *(__s1 + 2);
        *v4 = v15;
      }

      result = v4 + 24;
      a1[39] = v4 + 24;
      a1[39] = v4 + 24;
    }
  }

  else
  {
    if (__s1[23] >= 0)
    {
      v6 = __s1[23];
    }

    else
    {
      v6 = *(__s1 + 1);
    }

    if (__s1[23] < 0)
    {
      v7 = *__s1;
      while (1)
      {
        v12 = *(v5 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v5 + 8);
        }

        if (v6 == v12)
        {
          v14 = v13 >= 0 ? v5 : *v5;
          result = memcmp(v7, v14, v6);
          if (!result)
          {
            break;
          }
        }

        v5 += 24;
        if (v5 == v4)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      while (1)
      {
        v8 = *(v5 + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(v5 + 8);
        }

        if (v6 == v8)
        {
          v10 = v9 >= 0 ? v5 : *v5;
          result = memcmp(__s1, v10, v6);
          if (!result)
          {
            break;
          }
        }

        v5 += 24;
        if (v5 == v4)
        {
          goto LABEL_25;
        }
      }
    }
  }

  return result;
}

void sub_4EC4B4(void *a1, _DWORD *a2, double a3)
{
  if (!sub_4EDC44(a1, a2, a3))
  {
    v5 = a1[42];
    v6 = a1[43];
    if (v5 >= v6)
    {
      v9 = a1[41];
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 2) + 1;
      if (v10 > 0x1555555555555555)
      {
        sub_1794();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 2);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0xAAAAAAAAAAAAAAALL)
      {
        v12 = 0x1555555555555555;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (v12 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v13 = 4 * ((v5 - v9) >> 2);
      *v13 = *a2;
      *(v13 + 8) = a2[2];
      v8 = v13 + 12;
      v14 = (v13 - (v5 - v9));
      memcpy(v14, v9, v5 - v9);
      a1[41] = v14;
      a1[42] = v8;
      a1[43] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      v7 = *a2;
      *(v5 + 8) = a2[2];
      *v5 = v7;
      v8 = v5 + 12;
    }

    a1[42] = v8;
  }
}

unint64_t sub_4EC5F0(void *a1, char *__s1)
{
  v5 = a1[44];
  v4 = a1[45];
  if (v5 == v4)
  {
LABEL_25:
    if (v4 >= a1[46])
    {
      result = sub_1CEE8((a1 + 44), __s1);
      a1[45] = result;
    }

    else
    {
      if (__s1[23] < 0)
      {
        sub_325C(v4, *__s1, *(__s1 + 1));
      }

      else
      {
        v15 = *__s1;
        *(v4 + 16) = *(__s1 + 2);
        *v4 = v15;
      }

      result = v4 + 24;
      a1[45] = v4 + 24;
      a1[45] = v4 + 24;
    }
  }

  else
  {
    if (__s1[23] >= 0)
    {
      v6 = __s1[23];
    }

    else
    {
      v6 = *(__s1 + 1);
    }

    if (__s1[23] < 0)
    {
      v7 = *__s1;
      while (1)
      {
        v12 = *(v5 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v5 + 8);
        }

        if (v6 == v12)
        {
          v14 = v13 >= 0 ? v5 : *v5;
          result = memcmp(v7, v14, v6);
          if (!result)
          {
            break;
          }
        }

        v5 += 24;
        if (v5 == v4)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      while (1)
      {
        v8 = *(v5 + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(v5 + 8);
        }

        if (v6 == v8)
        {
          v10 = v9 >= 0 ? v5 : *v5;
          result = memcmp(__s1, v10, v6);
          if (!result)
          {
            break;
          }
        }

        v5 += 24;
        if (v5 == v4)
        {
          goto LABEL_25;
        }
      }
    }
  }

  return result;
}

void *sub_4EC768(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  sub_4F0D1C((a1 + 13));
  v3 = a1[9];
  if (v3)
  {
    v4 = a1[10];
    v5 = a1[9];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 6);
        if (v6)
        {
          *(v4 - 5) = v6;
          operator delete(v6);
        }

        v7 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v7);
        }

        v4 -= 10;
      }

      while (v7 != v3);
      v5 = a1[9];
    }

    a1[10] = v3;
    operator delete(v5);
  }

  sub_4F0E40((a1 + 2));
  return a1;
}

unsigned __int8 *sub_4EC810(uint64_t a1, unsigned __int8 *a2)
{
  result = (a1 + 568);
  if (result != a2)
  {
    if (*(a1 + 591) < 0)
    {
      v5 = *(a2 + 1);
      if ((a2[23] & 0x80u) == 0)
      {
        v6 = a2[23];
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return sub_13B38(result, a2, v6);
    }

    else if ((a2[23] & 0x80) != 0)
    {
      return sub_13A68(result, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v4;
    }
  }

  return result;
}

__n128 sub_4EC868(__n128 *a1, uint64_t a2)
{
  a1[38].n128_u8[8] = *a2;
  result = *(a2 + 8);
  a1[39] = result;
  return result;
}

uint64_t sub_4EC87C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 648) = *(a2 + 2);
  *(result + 640) = v2;
  return result;
}

unsigned __int8 *sub_4EC890(uint64_t a1, unsigned __int8 *a2)
{
  result = (a1 + 592);
  if (result != a2)
  {
    if (*(a1 + 615) < 0)
    {
      v5 = *(a2 + 1);
      if ((a2[23] & 0x80u) == 0)
      {
        v6 = a2[23];
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return sub_13B38(result, a2, v6);
    }

    else if ((a2[23] & 0x80) != 0)
    {
      return sub_13A68(result, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v4;
    }
  }

  return result;
}

uint64_t *sub_4EC90C(uint64_t *a1)
{
  if (*a1)
  {
    sub_4ECA7C(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_4EC948(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      *(a1 + 112) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = *(a1 + 80);
      v5 = *(a1 + 72);
      if (v4 != v3)
      {
        do
        {
          v4 = sub_4F0FB4(v4 - 144);
        }

        while (v4 != v3);
        v5 = *(a1 + 72);
      }

      *(a1 + 80) = v3;
      operator delete(v5);
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      *(a1 + 32) = v6;
      operator delete(v6);
    }
  }

  return a1;
}

void sub_4EC9D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4F107C(a2, a1);
  if (*(a2 + 128) == 1)
  {
    v3 = *(a2 + 104);
    if (v3)
    {
      *(a2 + 112) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 72);
    if (v4)
    {
      v5 = *(a2 + 80);
      v6 = *(a2 + 72);
      if (v5 != v4)
      {
        do
        {
          v5 = sub_4F0FB4(v5 - 144);
        }

        while (v5 != v4);
        v6 = *(a2 + 72);
      }

      *(a2 + 80) = v4;
      operator delete(v6);
    }

    v7 = *(a2 + 24);
    if (v7)
    {
      *(a2 + 32) = v7;
      operator delete(v7);
    }

    *(a2 + 128) = 0;
  }

  sub_4ECA7C((a2 + 272));
}

void sub_4ECA7C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 128)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 56);
    if (v5)
    {
      v6 = *(i - 48);
      v7 = *(i - 56);
      if (v6 == v5)
      {
LABEL_30:
        *(i - 48) = v5;
        operator delete(v7);
        goto LABEL_31;
      }

      while (2)
      {
        v8 = *(v6 - 24);
        if (v8)
        {
          *(v6 - 16) = v8;
          operator delete(v8);
        }

        v9 = *(v6 - 64);
        if (v9)
        {
          v10 = *(v6 - 56);
          v11 = *(v6 - 64);
          if (v10 != v9)
          {
            do
            {
              v12 = *(v10 - 6);
              if (v12)
              {
                *(v10 - 5) = v12;
                operator delete(v12);
              }

              v13 = v10 - 10;
              if (*(v10 - 57) < 0)
              {
                operator delete(*v13);
              }

              v10 -= 10;
            }

            while (v13 != v9);
            v11 = *(v6 - 64);
          }

          *(v6 - 56) = v9;
          operator delete(v11);
        }

        if (*(v6 - 65) < 0)
        {
          operator delete(*(v6 - 88));
          v14 = *(v6 - 112);
          if (v14)
          {
LABEL_24:
            *(v6 - 104) = v14;
            operator delete(v14);
          }
        }

        else
        {
          v14 = *(v6 - 112);
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v15 = *(v6 - 136);
        if (v15)
        {
          *(v6 - 128) = v15;
          operator delete(v15);
        }

        v6 -= 144;
        if (v6 == v5)
        {
          v7 = *(i - 56);
          goto LABEL_30;
        }

        continue;
      }
    }

LABEL_31:
    v16 = *(i - 104);
    if (v16)
    {
      *(i - 96) = v16;
      operator delete(v16);
    }
  }

  a1[1] = v2;
}

uint32x2_t sub_4ECBD0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 280);
  if (v5 >= *(a1 + 288))
  {
    v8 = sub_4F35AC((a1 + 272), a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *v5 = *a2;
    *(v5 + 16) = v6;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 24) = *(a2 + 24);
    *(v5 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v7 = *(a2 + 64);
    *(v5 + 48) = *(a2 + 48);
    *(v5 + 64) = v7;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    *(v5 + 72) = *(a2 + 72);
    *(v5 + 88) = *(a2 + 88);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(v5 + 96) = *(a2 + 96);
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    *(v5 + 104) = 0;
    *(v5 + 104) = *(a2 + 104);
    *(v5 + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    v8 = v5 + 128;
  }

  *(a1 + 280) = v8;
  result = vmax_u32(*(a1 + 296), vadd_s32(__PAIR64__(a3, sub_3F80((v8 - 128))), 0x100000001));
  *(a1 + 296) = result;
  return result;
}

uint64_t sub_4ECCB8(uint64_t result, uint64_t *a2, int a3)
{
  if (*(result + 128))
  {
    if ((result + 72) != a2)
    {
      v3 = result;
      v4 = a3;
      sub_4F4EE0((result + 72), *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4));
      result = v3;
      a3 = v4;
    }

    *(result + 96) = a3;
    return result;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v10);
  sub_4A5C(&v10, "Updating user route data failed due to missing user route.", 58);
  if ((v20 & 0x10) != 0)
  {
    v6 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v6 = v16;
    }

    v7 = v15;
    v5 = v6 - v15;
    if (v6 - v15 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_24:
      sub_3244();
    }

LABEL_13:
    if (v5 >= 0x17)
    {
      operator new();
    }

    v9 = v5;
    if (v5)
    {
      memmove(&__p, v7, v5);
    }

    goto LABEL_18;
  }

  if ((v20 & 8) != 0)
  {
    v7 = v13;
    v5 = v14 - v13;
    if ((v14 - v13) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v5 = 0;
  v9 = 0;
LABEL_18:
  *(&__p + v5) = 0;
  sub_7E854(&__p, 1u);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::locale::~locale(&v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_4ECF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_4ECFBC(uint64_t result, int a2)
{
  if (*(result + 128))
  {
    v2 = 8;
    if (!a2)
    {
      v2 = 0;
    }

    *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFF7 | v2;
    return result;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v8);
  sub_4A5C(&v8, "Updating user route data failed due to missing user route.", 58);
  if ((v18 & 0x10) != 0)
  {
    v4 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v4 = v14;
    }

    v5 = v13;
    v3 = v4 - v13;
    if (v4 - v13 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_24:
      sub_3244();
    }

LABEL_13:
    if (v3 >= 0x17)
    {
      operator new();
    }

    v7 = v3;
    if (v3)
    {
      memmove(&__p, v5, v3);
    }

    goto LABEL_18;
  }

  if ((v18 & 8) != 0)
  {
    v5 = v11;
    v3 = v12 - v11;
    if ((v12 - v11) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v3 = 0;
  v7 = 0;
LABEL_18:
  *(&__p + v3) = 0;
  sub_7E854(&__p, 1u);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  std::locale::~locale(&v10);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_4ED240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_4ED28C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128))
  {
    v4 = sub_4C5154(a1);
    v5 = *(a2 + 16) - *(a2 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 0x8E38E38E38E38E39 * (v5 >> 3);
      v8 = 144 * v4 + 80;
      do
      {
        v9 = *(a2 + 8) + v6;
        v10 = (*(a1 + 72) + v8);
        if (v10 != v9)
        {
          sub_4F5544(v10, *v9, *(v9 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v9 + 8) - *v9) >> 4));
        }

        v6 += 72;
        v8 += 144;
        --v7;
      }

      while (v7);
    }

    return;
  }

  if (!sub_7E7E4(1u))
  {
    return;
  }

  sub_19594F8(&v16);
  sub_4A5C(&v16, "Updating user route trip data failed due to missing user route", 62);
  if ((v26 & 0x10) != 0)
  {
    v12 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v12 = v22;
    }

    v13 = v21;
    v11 = v12 - v21;
    if (v12 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }

LABEL_14:
    if (v11 >= 0x17)
    {
      operator new();
    }

    v15 = v11;
    if (v11)
    {
      memmove(&__p, v13, v11);
    }

    goto LABEL_19;
  }

  if ((v26 & 8) != 0)
  {
    v13 = v19;
    v11 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v15 = 0;
LABEL_19:
  *(&__p + v11) = 0;
  sub_7E854(&__p, 1u);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_4ED570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_4ED5BC(uint64_t result, __int128 *a2)
{
  if (*(result + 128))
  {
    v2 = *a2;
    *(result + 64) = *(a2 + 2);
    *(result + 48) = v2;
    return result;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v8);
    sub_4A5C(&v8, "Updating user display eta failed due to missing user route.", 59);
    if ((v18 & 0x10) != 0)
    {
      v4 = v17;
      if (v17 < v14)
      {
        v17 = v14;
        v4 = v14;
      }

      v5 = v13;
      v3 = v4 - v13;
      if (v4 - v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v18 & 8) == 0)
      {
        v3 = 0;
        v7 = 0;
LABEL_16:
        *(&__p + v3) = 0;
        sub_7E854(&__p, 1u);
        if (v7 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }

        std::locale::~locale(&v10);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v5 = v11;
      v3 = v12 - v11;
      if ((v12 - v11) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v7 = v3;
    if (v3)
    {
      memmove(&__p, v5, v3);
    }

    goto LABEL_16;
  }

  return result;
}

void sub_4ED834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

double sub_4ED880@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  *a2 = -1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  if (v3 == 1)
  {
    *a2 = sub_3F80(a1);
    sub_4F96F4(a1, &v17);
    v19 = 0uLL;
    v20 = 0;
    sub_4F5AA8(&v19, 0x8E38E38E38E38E39 * ((v18 - v17) >> 4));
    v5 = v17;
    v6 = v18;
    if (v17 != v18)
    {
      while (1)
      {
        v24 = 0;
        *v23 = 0u;
        *__p = 0u;
        memset(v22, 0, sizeof(v22));
        if ((v5 + 80) != __p)
        {
          sub_4F5544(__p, *(v5 + 80), *(v5 + 88), 0xCCCCCCCCCCCCCCCDLL * ((*(v5 + 88) - *(v5 + 80)) >> 4));
        }

        v8 = *(&v19 + 1);
        if (*(&v19 + 1) < v20)
        {
          break;
        }

        *(&v19 + 1) = sub_4F5C0C(&v19, __p);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23[0]);
          v10 = v22[1];
          if (!v22[1])
          {
            goto LABEL_15;
          }

LABEL_14:
          v22[2] = v10;
          operator delete(v10);
          goto LABEL_15;
        }

        v10 = v22[1];
        if (v22[1])
        {
          goto LABEL_14;
        }

LABEL_15:
        v11 = __p[0];
        if (__p[0])
        {
          v12 = __p[1];
          v7 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v13 = *(v12 - 6);
              if (v13)
              {
                *(v12 - 5) = v13;
                operator delete(v13);
              }

              v14 = (v12 - 80);
              if (*(v12 - 57) < 0)
              {
                operator delete(*v14);
              }

              v12 -= 80;
            }

            while (v14 != v11);
            v7 = __p[0];
          }

          __p[1] = v11;
          operator delete(v7);
        }

        v5 += 144;
        if (v5 == v6)
        {
          goto LABEL_25;
        }
      }

      *(*(&v19 + 1) + 16) = 0;
      *(v8 + 24) = 0;
      *v8 = 0;
      *(v8 + 8) = 0;
      *v8 = *__p;
      *(v8 + 16) = v22[0];
      __p[0] = 0;
      __p[1] = 0;
      v22[0] = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *&v22[1];
      *(v8 + 40) = v22[3];
      v22[1] = 0;
      v22[2] = 0;
      v9 = *v23;
      *(v8 + 64) = v24;
      *(v8 + 48) = v9;
      v22[3] = 0;
      v23[0] = 0;
      v23[1] = 0;
      v24 = 0;
      *(&v19 + 1) = v8 + 72;
      v10 = v22[1];
      if (!v22[1])
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_25:
    v15 = v20;
    result = *&v19;
    *(a2 + 8) = v19;
    *(a2 + 24) = v15;
  }

  return result;
}

void sub_4EDA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4F3998(va);
  sub_4F3AA4(v3);
  _Unwind_Resume(a1);
}

void sub_4EDACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_4F39FC(va1);
  sub_4F3998(va);
  sub_4F3AA4(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_4EDB10(uint64_t a1)
{
  if ((*(a1 + 264) & 1) == 0)
  {
    sub_4F0F0C();
  }

  return a1 + 136;
}

uint64_t sub_4EDB38(uint64_t a1, const void **__s1)
{
  v2 = *(a1 + 304);
  v3 = *(a1 + 312);
  if (v2 == v3)
  {
    return 0;
  }

  if (*(__s1 + 23) >= 0)
  {
    v5 = *(__s1 + 23);
  }

  else
  {
    v5 = __s1[1];
  }

  if ((*(__s1 + 23) & 0x80) != 0)
  {
    v6 = *__s1;
    while (1)
    {
      v11 = *(v2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v2 + 8);
      }

      if (v5 == v11)
      {
        v13 = v12 >= 0 ? v2 : *v2;
        if (!memcmp(v6, v13, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v5 == v7)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(__s1, v9, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        return 0;
      }
    }

    return 1;
  }
}

BOOL sub_4EDC44(uint64_t a1, _DWORD *a2, double a3)
{
  v3 = *(a1 + 328);
  v4 = *(a1 + 336);
  if (v3 == v4)
  {
    return 0;
  }

  LODWORD(a3) = a2[1];
  v6 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
  v7 = atan((v6 + -1.0 / v6) * 0.5);
  HIDWORD(v8) = 1078765020;
  LODWORD(v8) = *a2;
  v24 = v7 * 57.2957795 * 0.0174532925;
  v23 = (v8 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925;
  v9 = cos(v24);
  v22 = v9;
  do
  {
    LODWORD(v9) = v3[1];
    v10 = exp(*&v9 * -6.28318531 / 4294967300.0 + 3.14159265);
    *&v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795;
    v12 = *&v11 * 0.0174532925;
    v13 = *v3;
    v3 += 3;
    LODWORD(v11) = v13;
    v14 = v23 - (v11 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925;
    v15 = sin((v24 - v12) * 0.5);
    v16 = v15 * v15;
    v17 = v22 * cos(v12);
    v18 = sin(v14 * 0.5);
    v19 = atan2(sqrt(v18 * v18 * v17 + v16), sqrt(1.0 - (v18 * v18 * v17 + v16)));
    v9 = (v19 + v19) * 6372797.56;
    result = v9 < 1.0;
  }

  while (v9 >= 1.0 && v3 != v4);
  return result;
}

uint64_t sub_4EDE20(uint64_t a1, const void **__s1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 360);
  if (v2 == v3)
  {
    return 0;
  }

  if (*(__s1 + 23) >= 0)
  {
    v5 = *(__s1 + 23);
  }

  else
  {
    v5 = __s1[1];
  }

  if ((*(__s1 + 23) & 0x80) != 0)
  {
    v6 = *__s1;
    while (1)
    {
      v11 = *(v2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v2 + 8);
      }

      if (v5 == v11)
      {
        v13 = v12 >= 0 ? v2 : *v2;
        if (!memcmp(v6, v13, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v5 == v7)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(__s1, v9, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        return 0;
      }
    }

    return 1;
  }
}