void sub_100040204(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100040230(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000402FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10004033C(uint64_t a1)
{
  v3 = (a1 + 40);
  sub_100011770(&v3);
  sub_10000A2F0(*(a1 + 24));
  return a1;
}

uint64_t sub_100040380(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_1000404A0(float64x2_t *a1, double a2, double a3)
{
  v4 = a2;
  v6 = fabs(a2);
  v7 = 180.0;
  if (v6 == 180.0)
  {
    goto LABEL_2;
  }

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = fabs(v6 + -180.0);
    v7 = 180.0;
    if (v6 < 180.0)
    {
      v6 = 180.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    if (v9 <= v6 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v7 = 180.0;
  if (v4 <= 180.0)
  {
    if (v4 >= -180.0)
    {
      goto LABEL_3;
    }

    v7 = fmod(v4 + -180.0, 360.0) + 180.0;
    goto LABEL_2;
  }

  v10 = fmod(v4 + 180.0, 360.0);
  v4 = v10 + -180.0;
  if (v10 + -180.0 == -180.0)
  {
    goto LABEL_2;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v10 + -180.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = fabs(v4);
    v7 = 180.0;
    v12 = fabs(v4 + 180.0);
    if (v11 < 180.0)
    {
      v11 = 180.0;
    }

    if (v11 < 1.0)
    {
      v11 = 1.0;
    }

    if (v12 <= v11 * 2.22044605e-16)
    {
LABEL_2:
      v4 = v7;
    }
  }

LABEL_3:
  v8 = fabs(a3);
  if (v8 == 90.0)
  {
    goto LABEL_4;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v13 = fabs(v8 + -90.0);
    if (v8 >= 90.0)
    {
      v14 = v8;
    }

    else
    {
      v14 = 90.0;
    }

    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    if (v13 <= v14 * 2.22044605e-16)
    {
LABEL_4:
      v4 = 0.0;
    }
  }

  v15 = *a1;
  v16 = a1[1];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)), vceqq_f64(v16, vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL)))))))
  {
    v17 = *a1;
    v64 = a1->f64[1];
    v65 = v17.f64[0];
    v62 = v16.f64[1];
    v63 = v16.f64[0];
    v18 = vabdd_f64(v15.f64[0], v16.f64[0]);
    if (v18 < 360.0)
    {
      v25 = vabdd_f64(360.0, v18);
      v26 = fmax(v18, 360.0);
      if (v26 < 1.0)
      {
        v26 = 1.0;
      }

      v19 = v25 <= v26 * 2.22044605e-16;
    }

    else
    {
      v19 = 1;
    }

    v27 = v15.f64[1];
    v28 = v16.f64[1];
    sub_1000076E4(&v65, &v64, &v63, &v62, v19);
    v29 = v65;
    a1->f64[0] = v65;
    v30 = v63;
    a1[1].f64[0] = v63;
    if (v8 == 90.0)
    {
      goto LABEL_43;
    }

    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_58;
    }

    v32 = fabs(v8 + -90.0);
    if (v8 >= 90.0)
    {
      v33 = v8;
    }

    else
    {
      v33 = 90.0;
    }

    if (v33 < 1.0)
    {
      v33 = 1.0;
    }

    if (v32 <= v33 * 2.22044605e-16)
    {
LABEL_43:
      if (v27 >= a3)
      {
        v31 = a3;
      }

      else
      {
        v31 = v27;
      }

      a1->f64[1] = v31;
    }

    else
    {
LABEL_58:
      v34 = fabs(v27);
      if (v27 != v28)
      {
        if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_80;
        }

        v36 = fabs(v28);
        v37 = vabdd_f64(v27, v28);
        if (v34 >= v36)
        {
          v36 = v34;
        }

        if (v36 < 1.0)
        {
          v36 = 1.0;
        }

        if (v37 > v36 * 2.22044605e-16)
        {
          goto LABEL_80;
        }
      }

      if (v34 != 90.0)
      {
        if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_80;
        }

        v38 = fabs(v34 + -90.0);
        if (v34 < 90.0)
        {
          v34 = 90.0;
        }

        if (v34 < 1.0)
        {
          v34 = 1.0;
        }

        if (v38 > v34 * 2.22044605e-16)
        {
LABEL_80:
          if (v27 <= a3)
          {
            v39 = v27;
          }

          else
          {
            v39 = a3;
          }

          if (v28 >= a3)
          {
            v24 = v28;
          }

          else
          {
            v24 = a3;
          }

          if (v4 >= v29)
          {
            goto LABEL_94;
          }

          if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_105;
          }

          v45 = fabs(v29);
          v46 = fabs(v4);
          v47 = vabdd_f64(v29, v4);
          if (v45 < v46)
          {
            v45 = v46;
          }

          if (v45 < 1.0)
          {
            v45 = 1.0;
          }

          if (v47 <= v45 * 2.22044605e-16)
          {
LABEL_94:
            if (v30 < v4)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_133;
              }

              v40 = fabs(v4);
              v41 = fabs(v30);
              v42 = vabdd_f64(v4, v30);
              if (v40 < v41)
              {
                v40 = v41;
              }

              if (v40 < 1.0)
              {
                v40 = 1.0;
              }

              if (v42 > v40 * 2.22044605e-16)
              {
LABEL_133:
                if (v29 < 0.0)
                {
                  v43 = v4 - v30;
                  v44 = 360.0 - v4 + v29;
                  if (v44 < v4 - v30)
                  {
                    if (COERCE_UNSIGNED_INT64(fabs(v4 - v30)) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(360.0 - v4 + v29)) > 0x7FEFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_134;
                    }

                    v58 = fabs(v43);
                    v59 = fabs(v44);
                    v60 = vabdd_f64(v43, v44);
                    if (v58 >= v59)
                    {
                      v61 = v58;
                    }

                    else
                    {
                      v61 = v59;
                    }

                    if (v61 < 1.0)
                    {
                      v61 = 1.0;
                    }

                    if (v60 > v61 * 2.22044605e-16)
                    {
LABEL_134:
                      v30 = v30 + 360.0;
                      goto LABEL_116;
                    }
                  }
                }

                v30 = v4;
              }
            }
          }

          else
          {
LABEL_105:
            v48 = v4 + 360.0;
            if (v30 < v4 + 360.0)
            {
              if (COERCE_UNSIGNED_INT64(fabs(v4 + 360.0)) > 0x7FEFFFFFFFFFFFFFLL || (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_113;
              }

              v49 = fabs(v48);
              v50 = fabs(v30);
              v51 = vabdd_f64(v48, v30);
              if (v49 < v50)
              {
                v49 = v50;
              }

              if (v49 < 1.0)
              {
                v49 = 1.0;
              }

              if (v51 > v49 * 2.22044605e-16)
              {
LABEL_113:
                v52 = v29 - v4;
                v53 = v48 - v30;
                if (v29 - v4 < v48 - v30)
                {
                  if (COERCE_UNSIGNED_INT64(fabs(v48 - v30)) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v29 - v4)) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_116;
                  }

                  v54 = fabs(v53);
                  v55 = fabs(v52);
                  v56 = vabdd_f64(v53, v52);
                  if (v54 >= v55)
                  {
                    v57 = v54;
                  }

                  else
                  {
                    v57 = v55;
                  }

                  if (v57 < 1.0)
                  {
                    v57 = 1.0;
                  }

                  if (v56 > v57 * 2.22044605e-16)
                  {
                    goto LABEL_116;
                  }
                }

                v30 = v4 + 360.0;
              }
            }
          }

          v4 = v29;
LABEL_116:
          a1->f64[0] = v4;
          a1->f64[1] = v39;
          a1[1].f64[0] = v30;
          goto LABEL_50;
        }
      }

      if (v27 >= a3)
      {
        v35 = a3;
      }

      else
      {
        v35 = v27;
      }

      a1->f64[0] = v4;
      a1->f64[1] = v35;
      a1[1].f64[0] = v4;
    }

    if (v28 <= a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = v28;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BA0))
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
    }

    v20 = v4 * *&qword_1000B2B98;
    if ((atomic_load_explicit(&qword_1000B2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BF0))
    {
      qword_1000B2BE8 = 0x404CA5DC1A63C1F8;
      __cxa_guard_release(&qword_1000B2BF0);
    }

    a1->f64[0] = v20 * *&qword_1000B2BE8;
    if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BA0))
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
    }

    v21 = *&qword_1000B2B98 * a3;
    if ((atomic_load_explicit(&qword_1000B2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BF0))
    {
      qword_1000B2BE8 = 0x404CA5DC1A63C1F8;
      __cxa_guard_release(&qword_1000B2BF0);
    }

    a1->f64[1] = v21 * *&qword_1000B2BE8;
    if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BA0))
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
    }

    v22 = v4 * *&qword_1000B2B98;
    if ((atomic_load_explicit(&qword_1000B2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BF0))
    {
      qword_1000B2BE8 = 0x404CA5DC1A63C1F8;
      __cxa_guard_release(&qword_1000B2BF0);
    }

    a1[1].f64[0] = v22 * *&qword_1000B2BE8;
    if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BA0))
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
    }

    v23 = *&qword_1000B2B98 * a3;
    if ((atomic_load_explicit(&qword_1000B2BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BF0))
    {
      qword_1000B2BE8 = 0x404CA5DC1A63C1F8;
      __cxa_guard_release(&qword_1000B2BF0);
    }

    v24 = v23 * *&qword_1000B2BE8;
  }

LABEL_50:
  a1[1].f64[1] = v24;
}

BOOL sub_100040D88(double *a1, double *a2, double *a3)
{
  v6 = sub_10000DCA4(a1, a2, a3);
  if (v6 != 1 && !sub_10000B2C4(*a2, a2[1], *a3, a3[1]))
  {
    *a1 = *a2;
    *a2 = *a3;
  }

  return v6 != 1;
}

void sub_100040DF0(double *a1, uint64_t a2, unint64_t a3, uint64_t **a4)
{
  v6 = (*a1 + a1[2]) * 0.5;
  v7 = *(a1 + 1);
  v45 = *a1;
  v47 = *(&v7 + 1);
  v43[1] = *(&v45 + 1);
  v44 = v7;
  v46 = v6;
  v43[0] = v6;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  sub_100019804(&v45, v43, a2, &v40, &v37, &v34);
  v8 = v34;
  v9 = v35;
  if (v34 == v35)
  {
    goto LABEL_30;
  }

  v48 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v49 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v10 = v34;
  do
  {
    sub_10001911C(&v48, *v10++ + 2);
  }

  while (v10 != v9);
  v33[0] = v48;
  v33[1] = v49;
  v11 = v9 - v8;
  v12 = v8;
  if (a3 > 0x63 || (v12 = v8, v11 < 0x79))
  {
    do
    {
      v14 = v12 + 1;
      if (v12 + 1 == v9)
      {
        break;
      }

      v13 = v12 + 1;
      do
      {
        sub_100008988(a4, *v12, *v13++);
      }

      while (v13 != v9);
      ++v12;
    }

    while (v14 != v9);
  }

  else
  {
    sub_1000411C8(v33, &v34, a3 + 1, a4);
  }

  if (v11 >= 0x80 && a3 <= 0x63 && (v41 - v40) >= 0x79)
  {
    sub_100041BC4(v33, &v34, &v40, a3 + 1, a4);
    goto LABEL_22;
  }

  v15 = v40;
  v16 = v41;
  if (v40 != v41)
  {
    v17 = v8;
    do
    {
      v18 = v15;
      do
      {
        sub_100008988(a4, *v17, *v18++);
      }

      while (v18 != v16);
      ++v17;
    }

    while (v17 != v9);
  }

  if (v11 >= 0x80)
  {
LABEL_22:
    if (a3 <= 0x63 && (v38 - v37) >= 0x79)
    {
      sub_100041BC4(v33, &v34, &v37, a3 + 1, a4);
      goto LABEL_30;
    }
  }

  v19 = v37;
  v20 = v38;
  if (v37 != v38)
  {
    v21 = v8;
    do
    {
      v22 = v19;
      do
      {
        sub_100008988(a4, *v21, *v22++);
      }

      while (v22 != v20);
      ++v21;
    }

    while (v21 != v9);
  }

LABEL_30:
  v23 = v40;
  v24 = v41;
  if (a3 > 0x63 || (v41 - v40) < 0x79)
  {
    if (v40 != v41)
    {
      v25 = v40;
      do
      {
        v26 = v25 + 1;
        if (v25 + 1 == v24)
        {
          break;
        }

        v27 = v25 + 1;
        do
        {
          sub_100008988(a4, *v25, *v27++);
        }

        while (v27 != v24);
        ++v25;
      }

      while (v26 != v24);
    }
  }

  else
  {
    sub_1000411C8(&v45, &v40, a3 + 1, a4);
  }

  v28 = v37;
  v29 = v38;
  if (a3 > 0x63 || (v38 - v37) < 0x79)
  {
    if (v37 != v38)
    {
      v30 = v37;
      do
      {
        v31 = v30 + 1;
        if (v30 + 1 == v29)
        {
          break;
        }

        v32 = v30 + 1;
        do
        {
          sub_100008988(a4, *v30, *v32++);
        }

        while (v32 != v29);
        ++v30;
      }

      while (v31 != v29);
    }
  }

  else
  {
    sub_1000411C8(v43, &v37, a3 + 1, a4);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (v23)
  {

    operator delete(v23);
  }
}

void sub_100041174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000411C8(double *a1, uint64_t a2, unint64_t a3, uint64_t **a4)
{
  v6 = (a1[1] + a1[3]) * 0.5;
  v47 = *(a1 + 2);
  v7 = *a1;
  v8 = *(a1 + 1);
  v44[0] = *a1;
  v45 = v8;
  v46 = v7;
  v48 = v6;
  v44[1] = v6;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  sub_100019804(&v46, v44, a2, &v41, &v38, &v35);
  v9 = v35;
  v10 = v36;
  if (v35 == v36)
  {
    goto LABEL_30;
  }

  v49 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v50 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v11 = v35;
  do
  {
    sub_10001911C(&v49, *v11++ + 2);
  }

  while (v11 != v10);
  v34[0] = v49;
  v34[1] = v50;
  v12 = v10 - v9;
  v13 = v9;
  if (a3 > 0x63 || (v13 = v9, v12 < 0x79))
  {
    do
    {
      v15 = v13 + 1;
      if (v13 + 1 == v10)
      {
        break;
      }

      v14 = v13 + 1;
      do
      {
        sub_100008988(a4, *v13, *v14++);
      }

      while (v14 != v10);
      ++v13;
    }

    while (v15 != v10);
  }

  else
  {
    sub_100040DF0(v34, &v35, a3 + 1, a4);
  }

  if (v12 >= 0x80 && a3 <= 0x63 && (v42 - v41) >= 0x79)
  {
    sub_1000415A8(v34, &v35, &v41, a3 + 1, a4);
    goto LABEL_22;
  }

  v16 = v41;
  v17 = v42;
  if (v41 != v42)
  {
    v18 = v9;
    do
    {
      v19 = v16;
      do
      {
        sub_100008988(a4, *v18, *v19++);
      }

      while (v19 != v17);
      ++v18;
    }

    while (v18 != v10);
  }

  if (v12 >= 0x80)
  {
LABEL_22:
    if (a3 <= 0x63 && (v39 - v38) >= 0x79)
    {
      sub_1000415A8(v34, &v35, &v38, a3 + 1, a4);
      goto LABEL_30;
    }
  }

  v20 = v38;
  v21 = v39;
  if (v38 != v39)
  {
    v22 = v9;
    do
    {
      v23 = v20;
      do
      {
        sub_100008988(a4, *v22, *v23++);
      }

      while (v23 != v21);
      ++v22;
    }

    while (v22 != v10);
  }

LABEL_30:
  v24 = v41;
  v25 = v42;
  if (a3 > 0x63 || (v42 - v41) < 0x79)
  {
    if (v41 != v42)
    {
      v26 = v41;
      do
      {
        v27 = v26 + 1;
        if (v26 + 1 == v25)
        {
          break;
        }

        v28 = v26 + 1;
        do
        {
          sub_100008988(a4, *v26, *v28++);
        }

        while (v28 != v25);
        ++v26;
      }

      while (v27 != v25);
    }
  }

  else
  {
    sub_100040DF0(&v46, &v41, a3 + 1, a4);
  }

  v29 = v38;
  v30 = v39;
  if (a3 > 0x63 || (v39 - v38) < 0x79)
  {
    if (v38 != v39)
    {
      v31 = v38;
      do
      {
        v32 = v31 + 1;
        if (v31 + 1 == v30)
        {
          break;
        }

        v33 = v31 + 1;
        do
        {
          sub_100008988(a4, *v31, *v33++);
        }

        while (v33 != v30);
        ++v31;
      }

      while (v32 != v30);
    }
  }

  else
  {
    sub_100040DF0(v44, &v38, a3 + 1, a4);
  }

  if (v9)
  {
    operator delete(v9);
  }

  if (v29)
  {
    operator delete(v29);
  }

  if (v24)
  {

    operator delete(v24);
  }
}

void sub_100041554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000415A8(double *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t **a5)
{
  v8 = (*a1 + a1[2]) * 0.5;
  v9 = *(a1 + 1);
  v71 = *a1;
  v73 = *(&v9 + 1);
  v69[1] = *(&v71 + 1);
  v70 = v9;
  v72 = v8;
  v69[0] = v8;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  __p = 0;
  v52 = 0;
  v53 = 0;
  sub_100019804(&v71, v69, a2, &v66, &v63, &v60);
  sub_100019804(&v71, v69, a3, &v57, &v54, &__p);
  v10 = v60;
  v11 = v61;
  v12 = __p;
  v48 = v60;
  if (v60 == v61)
  {
    v14 = v52;
  }

  else
  {
    v13 = v61 - v60;
    v14 = v52;
    if ((v61 - v60) < 0x80 || a4 > 0x63 || (v52 - __p) < 0x79)
    {
      if (__p != v52)
      {
        v15 = v60;
        do
        {
          v16 = v12;
          do
          {
            sub_100008988(a5, *v15, *v16++);
          }

          while (v16 != v14);
          ++v15;
        }

        while (v15 != v11);
      }
    }

    else
    {
      v74 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v75 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v17 = v60;
      do
      {
        sub_10001911C(&v74, *v10++ + 2);
      }

      while (v10 != v11);
      v18 = v74;
      v19 = v75;
      if (v12 != v14)
      {
        v20 = v12;
        do
        {
          sub_10001911C(&v74, *v20++ + 2);
        }

        while (v20 != v14);
        v18 = v74;
        v19 = v75;
      }

      v49 = v18;
      v50 = v19;
      sub_100041BC4(v49.f64, &v60, &__p, a4 + 1, a5);
      v10 = v17;
    }

    v22 = v57;
    v21 = v58;
    if ((v58 - v57) < 0x80 || (v55 - v54) < 0x80 || a4 > 0x63 || v13 < 0x79)
    {
      if (v57 != v58)
      {
        v23 = v10;
        do
        {
          v24 = v22;
          do
          {
            sub_100008988(a5, *v23, *v24++);
          }

          while (v24 != v21);
          ++v23;
        }

        while (v23 != v11);
      }

      v25 = v54;
      v26 = v55;
      if (v54 != v55)
      {
        v27 = v10;
        do
        {
          v28 = v25;
          do
          {
            sub_100008988(a5, *v27, *v28++);
          }

          while (v28 != v26);
          ++v27;
        }

        while (v27 != v11);
      }
    }

    else
    {
      v74 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v75 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      do
      {
        sub_10001911C(&v74, *v10++ + 2);
      }

      while (v10 != v11);
      v49 = v74;
      v50 = v75;
      sub_100041BC4(v49.f64, &v60, &v57, a4 + 1, a5);
      sub_100041BC4(v49.f64, &v60, &v54, a4 + 1, a5);
    }
  }

  v29 = v66;
  v30 = v67;
  v31 = v67 - v66;
  if (v12 != v14)
  {
    if (v31 < 0x80 || (v64 - v63) < 0x80 || a4 > 0x63 || (v14 - v12) < 0x79)
    {
      if (v66 != v67)
      {
        v32 = v66;
        do
        {
          v33 = v12;
          do
          {
            sub_100008988(a5, *v32, *v33++);
          }

          while (v33 != v14);
          ++v32;
        }

        while (v32 != v30);
      }

      v34 = v63;
      v35 = v64;
      while (v34 != v35)
      {
        v36 = v12;
        do
        {
          sub_100008988(a5, *v34, *v36++);
        }

        while (v36 != v14);
        ++v34;
      }
    }

    else
    {
      v74 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v75 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v37 = v12;
      do
      {
        sub_10001911C(&v74, *v37++ + 2);
      }

      while (v37 != v14);
      v49 = v74;
      v50 = v75;
      sub_100041BC4(v49.f64, &v66, &__p, a4 + 1, a5);
      sub_100041BC4(v49.f64, &v63, &__p, a4 + 1, a5);
    }
  }

  if (v31 < 0x80 || a4 > 0x63 || (v58 - v57) < 0x79)
  {
    if (v29 != v30)
    {
      v38 = v57;
      v39 = v58;
      if (v57 != v58)
      {
        v40 = v29;
        do
        {
          v41 = v38;
          do
          {
            sub_100008988(a5, *v40, *v41++);
          }

          while (v41 != v39);
          ++v40;
        }

        while (v40 != v30);
      }
    }
  }

  else
  {
    sub_100041BC4(&v71, &v66, &v57, a4 + 1, a5);
  }

  v42 = v63;
  v43 = v64;
  if ((v64 - v63) < 0x80 || a4 > 0x63 || (v55 - v54) < 0x79)
  {
    if (v63 != v64)
    {
      v44 = v54;
      v45 = v55;
      if (v54 != v55)
      {
        v46 = v63;
        do
        {
          v47 = v44;
          do
          {
            sub_100008988(a5, *v46, *v47++);
          }

          while (v47 != v45);
          ++v46;
        }

        while (v46 != v43);
      }
    }
  }

  else
  {
    sub_100041BC4(v69, &v63, &v54, a4 + 1, a5);
  }

  if (v12)
  {
    operator delete(v12);
  }

  if (v54)
  {
    operator delete(v54);
  }

  if (v57)
  {
    operator delete(v57);
  }

  if (v48)
  {
    operator delete(v48);
  }

  if (v42)
  {
    operator delete(v42);
  }

  if (v29)
  {

    operator delete(v29);
  }
}

void sub_100041B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void sub_100041BC4(double *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t **a5)
{
  v8 = a1[1] + a1[3];
  v71 = *a1;
  v72 = *(a1 + 2);
  v9 = *(a1 + 1);
  *&v69[0] = v71;
  v70 = v9;
  v73 = v8 * 0.5;
  v69[1] = v8 * 0.5;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  __p = 0;
  v52 = 0;
  v53 = 0;
  sub_100019804(&v71, v69, a2, &v66, &v63, &v60);
  sub_100019804(&v71, v69, a3, &v57, &v54, &__p);
  v10 = v60;
  v11 = v61;
  v12 = __p;
  v48 = v60;
  if (v60 == v61)
  {
    v14 = v52;
  }

  else
  {
    v13 = v61 - v60;
    v14 = v52;
    if ((v61 - v60) < 0x80 || a4 > 0x63 || (v52 - __p) < 0x79)
    {
      if (__p != v52)
      {
        v15 = v60;
        do
        {
          v16 = v12;
          do
          {
            sub_100008988(a5, *v15, *v16++);
          }

          while (v16 != v14);
          ++v15;
        }

        while (v15 != v11);
      }
    }

    else
    {
      v74 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v75 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v17 = v60;
      do
      {
        sub_10001911C(&v74, *v10++ + 2);
      }

      while (v10 != v11);
      v18 = v74;
      v19 = v75;
      if (v12 != v14)
      {
        v20 = v12;
        do
        {
          sub_10001911C(&v74, *v20++ + 2);
        }

        while (v20 != v14);
        v18 = v74;
        v19 = v75;
      }

      v49 = v18;
      v50 = v19;
      sub_1000415A8(&v49, &v60, &__p, a4 + 1, a5);
      v10 = v17;
    }

    v22 = v57;
    v21 = v58;
    if ((v58 - v57) < 0x80 || (v55 - v54) < 0x80 || a4 > 0x63 || v13 < 0x79)
    {
      if (v57 != v58)
      {
        v23 = v10;
        do
        {
          v24 = v22;
          do
          {
            sub_100008988(a5, *v23, *v24++);
          }

          while (v24 != v21);
          ++v23;
        }

        while (v23 != v11);
      }

      v25 = v54;
      v26 = v55;
      if (v54 != v55)
      {
        v27 = v10;
        do
        {
          v28 = v25;
          do
          {
            sub_100008988(a5, *v27, *v28++);
          }

          while (v28 != v26);
          ++v27;
        }

        while (v27 != v11);
      }
    }

    else
    {
      v74 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v75 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      do
      {
        sub_10001911C(&v74, *v10++ + 2);
      }

      while (v10 != v11);
      v49 = v74;
      v50 = v75;
      sub_1000415A8(&v49, &v60, &v57, a4 + 1, a5);
      sub_1000415A8(&v49, &v60, &v54, a4 + 1, a5);
    }
  }

  v29 = v66;
  v30 = v67;
  v31 = v67 - v66;
  if (v12 != v14)
  {
    if (v31 < 0x80 || (v64 - v63) < 0x80 || a4 > 0x63 || (v14 - v12) < 0x79)
    {
      if (v66 != v67)
      {
        v32 = v66;
        do
        {
          v33 = v12;
          do
          {
            sub_100008988(a5, *v32, *v33++);
          }

          while (v33 != v14);
          ++v32;
        }

        while (v32 != v30);
      }

      v34 = v63;
      v35 = v64;
      while (v34 != v35)
      {
        v36 = v12;
        do
        {
          sub_100008988(a5, *v34, *v36++);
        }

        while (v36 != v14);
        ++v34;
      }
    }

    else
    {
      v74 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v75 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v37 = v12;
      do
      {
        sub_10001911C(&v74, *v37++ + 2);
      }

      while (v37 != v14);
      v49 = v74;
      v50 = v75;
      sub_1000415A8(&v49, &v66, &__p, a4 + 1, a5);
      sub_1000415A8(&v49, &v63, &__p, a4 + 1, a5);
    }
  }

  if (v31 < 0x80 || a4 > 0x63 || (v58 - v57) < 0x79)
  {
    if (v29 != v30)
    {
      v38 = v57;
      v39 = v58;
      if (v57 != v58)
      {
        v40 = v29;
        do
        {
          v41 = v38;
          do
          {
            sub_100008988(a5, *v40, *v41++);
          }

          while (v41 != v39);
          ++v40;
        }

        while (v40 != v30);
      }
    }
  }

  else
  {
    sub_1000415A8(&v71, &v66, &v57, a4 + 1, a5);
  }

  v42 = v63;
  v43 = v64;
  if ((v64 - v63) < 0x80 || a4 > 0x63 || (v55 - v54) < 0x79)
  {
    if (v63 != v64)
    {
      v44 = v54;
      v45 = v55;
      if (v54 != v55)
      {
        v46 = v63;
        do
        {
          v47 = v44;
          do
          {
            sub_100008988(a5, *v46, *v47++);
          }

          while (v47 != v45);
          ++v46;
        }

        while (v46 != v43);
      }
    }
  }

  else
  {
    sub_1000415A8(v69, &v63, &v54, a4 + 1, a5);
  }

  if (v12)
  {
    operator delete(v12);
  }

  if (v54)
  {
    operator delete(v54);
  }

  if (v57)
  {
    operator delete(v57);
  }

  if (v48)
  {
    operator delete(v48);
  }

  if (v42)
  {
    operator delete(v42);
  }

  if (v29)
  {

    operator delete(v29);
  }
}

void sub_100042158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000421EC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v610[0] = a1;
  v610[1] = a2;
  v612 = a1;
  v613 = a2;
  v614 = a2;
  v615 = a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v608 = 0;
  v607[0] = v10;
  v607[1] = v11;
  v606[0] = v12;
  v606[1] = v13;
  v14 = *v10;
  v15 = v10[1];
  v16 = sub_10000B2C4(*v10, v15, *v11, v11[1]);
  v17 = *v13;
  v18 = v13[1];
  v19 = sub_10000B2C4(*v12, v12[1], *v13, v18);
  v20 = v19;
  if (v16 && v19)
  {
    sub_10000B2C4(v14, v15, v17, v18);
    return a6;
  }

  v22 = sub_100011510(v10);
  v24 = *&v23;
  v26 = *&v25;
  *v605 = v22;
  v605[1] = v23;
  v605[2] = v25;
  v27 = sub_100011510(v11);
  v578 = v28;
  v579 = v27;
  v604[0] = v27;
  v604[1] = v28;
  v577 = v29;
  v604[2] = v29;
  v30 = sub_100011510(v12);
  v32 = v31;
  v34 = v33;
  v603[0] = v30;
  v603[1] = v31;
  v603[2] = v33;
  v35 = sub_100011510(v13);
  v37 = v30;
  v38 = v35;
  v40 = v39;
  v41 = v36;
  v602[0] = v35;
  v602[1] = v39;
  v602[2] = v36;
  v600 = 0;
  v601 = 0;
  v42 = v32 * v36 - v34 * v39;
  v43 = v34 * v35 - v37 * v36;
  v44 = v37 * v39 - v32 * v35;
  v597 = v42;
  v598 = v43;
  v599 = v44;
  v596 = 0.0;
  v45 = 0.0;
  if (v20)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 1;
    v50 = 0.0;
    v52 = v578;
    v51 = v579;
    v53 = v577;
    goto LABEL_9;
  }

  v54 = 1.0;
  v50 = 1.0 - (v34 * v36 + v32 * v40 + v37 * v35);
  v596 = v50;
  v52 = v578;
  v51 = v579;
  v53 = v577;
  if (v50 == 0.0)
  {
    goto LABEL_8;
  }

  if (COERCE_UNSIGNED_INT64(fabs(1.0 - (v34 * v36 + v32 * v40 + v37 * v35))) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v70 = fabs(v50);
    if (v70 >= 1.0)
    {
      v54 = v70;
    }

    if (v70 <= v54 * 2.22044605e-16)
    {
LABEL_8:
      v46 = 0;
      v47 = 0;
      v596 = 0.0;
      v48 = 1;
      v50 = 0.0;
      v49 = 1;
      goto LABEL_9;
    }
  }

  v71 = v26 * v44 + v43 * v24 + v42 * v22;
  if (v71 == 0.0)
  {
    goto LABEL_29;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v26 * v44 + v43 * v24 + v42 * v22)) < 0x7FF0000000000000)
  {
    v181 = fabs(v71);
    v182 = 1.0;
    if (v181 >= 1.0)
    {
      v182 = v181;
    }

    v183 = v182 * 2.22044605e-16;
    if (v71 > 0.0)
    {
      v47 = 1;
    }

    else
    {
      v47 = -1;
    }

    if (v181 <= v183)
    {
LABEL_29:
      v47 = 0;
    }
  }

  else if (v71 > 0.0)
  {
    v47 = 1;
  }

  else
  {
    v47 = -1;
  }

  v184 = v577 * v44 + v43 * v578 + v42 * v579;
  if (v184 != 0.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v577 * v44 + v43 * v578 + v42 * v579)) >= 0x7FF0000000000000)
    {
      if (v184 > 0.0)
      {
        v46 = 1;
      }

      else
      {
        v46 = -1;
      }

      goto LABEL_242;
    }

    v185 = fabs(v184);
    v186 = 1.0;
    if (v185 >= 1.0)
    {
      v186 = v185;
    }

    v187 = v186 * 2.22044605e-16;
    if (v184 > 0.0)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (v185 > v187)
    {
      goto LABEL_242;
    }
  }

  v46 = 0;
LABEL_242:
  v600 = __PAIR64__(v46, v47);
  if (v46 * v47 == 1)
  {
    return a6;
  }

  v48 = 0;
  v49 = 0;
LABEL_9:
  v55 = v24 * v53 - v26 * v52;
  v56 = v26 * v51 - v22 * v53;
  v593 = v55;
  v594 = v56;
  v57 = v22 * v52 - v24 * v51;
  v595 = v57;
  v592 = 0.0;
  if (v16)
  {
    v58 = 0;
    v59 = 0;
    goto LABEL_13;
  }

  v60 = 1.0 - (v26 * v53 + v24 * v52 + v22 * v51);
  v592 = v60;
  if (v60 == 0.0)
  {
    goto LABEL_12;
  }

  if (COERCE_UNSIGNED_INT64(fabs(1.0 - (v26 * v53 + v24 * v52 + v22 * v51))) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v73 = fabs(v60);
    v74 = 1.0;
    if (v73 >= 1.0)
    {
      v74 = v73;
    }

    if (v73 <= v74 * 2.22044605e-16)
    {
LABEL_12:
      v58 = 0;
      v59 = 0;
      v592 = 0.0;
      v48 = 1;
LABEL_13:
      v61 = 1;
      if (v49)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  v75 = v57 * v34 + v56 * v32 + v55 * v37;
  if (v75 == 0.0)
  {
    goto LABEL_38;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v57 * v34 + v56 * v32 + v55 * v37)) < 0x7FF0000000000000)
  {
    v188 = fabs(v75);
    v189 = 1.0;
    if (v188 >= 1.0)
    {
      v189 = v188;
    }

    v190 = v189 * 2.22044605e-16;
    if (v75 > 0.0)
    {
      v59 = 1;
    }

    else
    {
      v59 = -1;
    }

    if (v188 <= v190)
    {
LABEL_38:
      v59 = 0;
    }
  }

  else if (v75 > 0.0)
  {
    v59 = 1;
  }

  else
  {
    v59 = -1;
  }

  v191 = v57 * v41 + v56 * v40 + v55 * v38;
  if (v191 == 0.0)
  {
LABEL_251:
    v58 = 0;
    goto LABEL_262;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v57 * v41 + v56 * v40 + v55 * v38)) < 0x7FF0000000000000)
  {
    v192 = fabs(v191);
    v193 = 1.0;
    if (v192 >= 1.0)
    {
      v193 = v192;
    }

    v194 = v193 * 2.22044605e-16;
    if (v191 > 0.0)
    {
      v58 = 1;
    }

    else
    {
      v58 = -1;
    }

    if (v192 <= v194)
    {
      goto LABEL_251;
    }
  }

  else if (v191 > 0.0)
  {
    v58 = 1;
  }

  else
  {
    v58 = -1;
  }

LABEL_262:
  v601 = __PAIR64__(v58, v59);
  if (v58 * v59 == 1)
  {
    v195 = 0;
    *&v627[0] = 0;
    do
    {
      v196 = v627 + v195;
      *(v196 + 40) = xmmword_100092590;
      *(v196 + 7) = 0;
      *(v196 + 8) = 0;
      *(v196 + 72) = xmmword_1000925A0;
      v195 += 56;
      v196[88] = 0;
    }

    while (v195 != 112);
    goto LABEL_265;
  }

  v197 = sqrt(v57 * v57 + v56 * v56 + v55 * v55);
  if (v197 == 0.0)
  {
    goto LABEL_268;
  }

  if ((*&v197 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_275;
  }

  v198 = fabs(v197);
  v199 = 1.0;
  if (v198 >= 1.0)
  {
    v199 = v198;
  }

  if (v198 <= v199 * 2.22044605e-16)
  {
LABEL_268:
    if (!v46 || !v47)
    {
      v46 = 0;
      v47 = 0;
      v600 = 0;
    }

    v61 = 1;
  }

  else
  {
LABEL_275:
    v61 = 0;
    v55 = v55 / v197;
    v56 = v56 / v197;
    v593 = v55;
    v594 = v56;
    v57 = v57 / v197;
    v595 = v57;
  }

  v45 = 1.0 - (v26 * v53 + v24 * v52 + v22 * v51);
  if (v49)
  {
    goto LABEL_18;
  }

LABEL_14:
  v62 = sqrt(v44 * v44 + v43 * v43 + v42 * v42);
  if (v62 != 0.0)
  {
    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_43;
    }

    v76 = fabs(v62);
    v77 = 1.0;
    if (v76 >= 1.0)
    {
      v77 = v76;
    }

    if (v76 > v77 * 2.22044605e-16)
    {
LABEL_43:
      v69 = 0;
      v42 = v42 / v62;
      v43 = v43 / v62;
      v597 = v42;
      v598 = v43;
      v44 = v44 / v62;
      v599 = v44;
      goto LABEL_44;
    }
  }

  if (!v58 || !v59)
  {
    v58 = 0;
    v59 = 0;
    v601 = 0;
  }

LABEL_18:
  if (v61)
  {
    v63 = *v10;
    v64 = v10[1];
    v65 = sub_10000B2C4(*v10, v64, *v13, v13[1]);
    v66 = 0;
    if (v65)
    {
      v21 = a6;
      do
      {
        v67 = v627 + v66;
        *(v67 + 40) = xmmword_100092590;
        *(v67 + 7) = 0;
        *(v67 + 8) = 0;
        *(v67 + 72) = xmmword_1000925A0;
        v66 += 56;
        v67[88] = 0;
      }

      while (v66 != 112);
      *&v627[0] = 1;
      *(v627 + 1) = v63;
      *&v627[1] = v64;
      *(&__dst[2] + 2) = 0;
      *(&__dst[1] + 2) = 0u;
      *(__dst + 2) = 0u;
      v619 = v627[6];
      *v620 = v627[7];
      *&v620[16] = v627[8];
      v621 = *&v627[9];
      *&v616[32] = v627[2];
      *&v616[48] = v627[3];
      v617 = v627[4];
      v618 = v627[5];
      *v616 = v627[0];
      *&v616[16] = v627[1];
      v622 = 48;
      v68 = __dst[1];
      v623 = __dst[0];
      goto LABEL_404;
    }

    *&v627[0] = 0;
    v21 = a6;
    do
    {
      v72 = v627 + v66;
      *(v72 + 40) = xmmword_100092590;
      *(v72 + 7) = 0;
      *(v72 + 8) = 0;
      *(v72 + 72) = xmmword_1000925A0;
      v66 += 56;
      v72[88] = 0;
    }

    while (v66 != 112);
    goto LABEL_403;
  }

  v69 = 1;
LABEL_44:
  v78 = v59 | v58;
  v576 = v50;
  if (!(v47 | v46))
  {
    if (!v78)
    {
      goto LABEL_63;
    }

    v87 = &v601 + 4;
    LODWORD(v601) = 0;
LABEL_62:
    *v87 = 0;
LABEL_63:
    v79 = v57 * v44 + v56 * v43 + v55 * v42;
    if (!v61)
    {
LABEL_48:
      if (v69)
      {
        v81 = v45;
        *&v590 = 0;
        if (sub_100031EF4(v10, v11, v12, v605, &v593, v603, v602, &v592, &v590, v48))
        {
          _ZF = v81 == 0.0;
          if (v81 >= 0.0)
          {
            v83 = *&v590;
          }

          else
          {
            v81 = -v81;
            v83 = -*&v590;
          }

          v84 = 0.0;
          v21 = a6;
          if (!_ZF)
          {
            v84 = v83 * 1000000.0 / v81;
          }

          v85 = &v618 + 8;
          v86 = 112;
          do
          {
            *(v85 - 3) = xmmword_100092590;
            *(v85 - 4) = 0;
            *(v85 - 3) = 0;
            *(v85 - 1) = xmmword_1000925A0;
            *v85 = 0;
            v85 += 56;
            v86 -= 56;
          }

          while (v86);
          *v616 = 1;
          *&v616[8] = *v12;
          if ((atomic_load_explicit(&qword_1000B2C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2C00))
          {
            qword_1000B2BF8 = 0x3FF0000000000000;
            __cxa_guard_release(&qword_1000B2C00);
          }

          BYTE8(v618) = 1;
          *&v616[40] = v83;
          *&v616[48] = v81;
          *&v616[56] = v84;
          *&v617 = 0;
          *(&v617 + 1) = qword_1000B2BF8;
          *&v618 = 0;
LABEL_77:
          *(v627 + 2) = 0u;
          *(&v627[1] + 2) = 0u;
          *(&v627[2] + 2) = 0;
          v622 = 48;
          *&v624[10] = 0uLL;
          *v624 = v627[1];
          v623 = v627[0];
          goto LABEL_405;
        }

        v108 = 0;
        *&v627[0] = 0;
        v21 = a6;
        do
        {
          v109 = v627 + v108;
          *(v109 + 40) = xmmword_100092590;
          *(v109 + 7) = 0;
          *(v109 + 8) = 0;
          *(v109 + 72) = xmmword_1000925A0;
          v108 += 56;
          v109[88] = 0;
        }

        while (v108 != 112);
        goto LABEL_403;
      }

      v93 = -v24;
      v94 = v26 * v34 + v24 * v32 + v22 * v37;
      v95 = 1.0 - v94;
      v96 = -(1.0 - v94);
      if ((v37 * -v24 + v22 * v32) * v57 + v56 * (v34 * -v22 + v26 * v37) + v55 * (v32 * -v26 + v24 * v34) < 0.0)
      {
        v97 = -(1.0 - v94);
      }

      else
      {
        v97 = 1.0 - v94;
      }

      if (v97 <= -2.0)
      {
        v98 = v97 + 4.0;
      }

      else
      {
        v98 = v97;
      }

      v99 = fabs(v98);
      v100 = v576;
      if (v99 > 0.00000001)
      {
        goto LABEL_85;
      }

      v102 = 0.0;
      if (v98 != 0.0)
      {
        v110 = 1.0;
        if (v99 >= 1.0)
        {
          v110 = v99;
        }

        if (v99 > v110 * 2.22044605e-16)
        {
          v557 = v43;
          v529 = v55;
          v534 = v45;
          v524 = v56;
          v526 = v79;
          v563 = v37;
          v548 = v42;
          v552 = v44;
          v522 = v57;
          v540 = v96;
          v544 = v95;
          v519 = v98;
          v111 = sub_10000B2C4(*v10, v10[1], *v12, v12[1]);
          v98 = v519;
          v93 = -v24;
          v96 = v540;
          v95 = v544;
          v44 = v552;
          v57 = v522;
          v56 = v524;
          v79 = v526;
          v55 = v529;
          v102 = 0.0;
          v43 = v557;
          v37 = v563;
          v42 = v548;
          v53 = v577;
          v52 = v578;
          v51 = v579;
          v45 = v534;
          v100 = v576;
          if (!v111)
          {
LABEL_85:
            v101 = vabdd_f64(v45, v98);
            if (v101 <= 0.00000001)
            {
              v102 = v45;
              if (v45 - v98 != 0.0)
              {
                v112 = 1.0;
                if (v101 >= 1.0)
                {
                  v112 = v101;
                }

                v102 = v45;
                if (v101 > v112 * 2.22044605e-16)
                {
                  v558 = v43;
                  v530 = v55;
                  v535 = v45;
                  v525 = v56;
                  v527 = v79;
                  v564 = v37;
                  v549 = v42;
                  v553 = v44;
                  v521 = v93;
                  v523 = v57;
                  v541 = v96;
                  v545 = v95;
                  v520 = v98;
                  v113 = sub_10000B2C4(*v11, v11[1], *v12, v12[1]);
                  v93 = v521;
                  v57 = v523;
                  v96 = v541;
                  v95 = v545;
                  v44 = v553;
                  v56 = v525;
                  v79 = v527;
                  v55 = v530;
                  v45 = v535;
                  v43 = v558;
                  v37 = v564;
                  v42 = v549;
                  v53 = v577;
                  v52 = v578;
                  v51 = v579;
                  v100 = v576;
                  if (v113)
                  {
                    v102 = v535;
                  }

                  else
                  {
                    v102 = v520;
                  }
                }
              }
            }

            else
            {
              v102 = v98;
            }
          }
        }
      }

      v114 = -v34;
      v115 = -v37;
      v116 = -v32;
      if ((v38 * v93 + v22 * v40) * v57 + v56 * (v41 * -v22 + v26 * v38) + v55 * (v40 * -v26 + v24 * v41) < 0.0)
      {
        v117 = -(1.0 - (v26 * v41 + v24 * v40 + v22 * v38));
      }

      else
      {
        v117 = 1.0 - (v26 * v41 + v24 * v40 + v22 * v38);
      }

      if (v117 <= -2.0)
      {
        v118 = v117 + 4.0;
      }

      else
      {
        v118 = v117;
      }

      v119 = fabs(v118);
      if (v119 > 0.00000001)
      {
        goto LABEL_129;
      }

      v121 = 0.0;
      if (v118 != 0.0)
      {
        v122 = 1.0;
        if (v119 >= 1.0)
        {
          v122 = v119;
        }

        if (v119 > v122 * 2.22044605e-16)
        {
          v559 = v43;
          v123 = v45;
          v528 = v79;
          v565 = v37;
          v550 = v42;
          v554 = v44;
          v572 = v102;
          v542 = v96;
          v546 = v95;
          v536 = -v37;
          v124 = sub_10000B2C4(*v10, v10[1], *v13, v13[1]);
          v114 = -v34;
          v115 = v536;
          v116 = -v32;
          v102 = v572;
          v96 = v542;
          v95 = v546;
          v44 = v554;
          v43 = v559;
          v37 = v565;
          v42 = v550;
          v53 = v577;
          v52 = v578;
          v51 = v579;
          v79 = v528;
          v45 = v123;
          v100 = v576;
          if (!v124)
          {
LABEL_129:
            v120 = vabdd_f64(v45, v118);
            if (v120 <= 0.00000001)
            {
              v121 = v45;
              if (v45 - v118 != 0.0)
              {
                v125 = 1.0;
                if (v120 >= 1.0)
                {
                  v125 = v120;
                }

                v121 = v45;
                if (v120 > v125 * 2.22044605e-16)
                {
                  v560 = v43;
                  v121 = v45;
                  v126 = v79;
                  v566 = v37;
                  v569 = v116;
                  v551 = v42;
                  v555 = v44;
                  v573 = v102;
                  v543 = v96;
                  v547 = v95;
                  v531 = v114;
                  v537 = v115;
                  v127 = sub_10000B2C4(*v11, v11[1], *v13, v13[1]);
                  v114 = v531;
                  v115 = v537;
                  v116 = v569;
                  v102 = v573;
                  v96 = v543;
                  v95 = v547;
                  v44 = v555;
                  v43 = v560;
                  v37 = v566;
                  v42 = v551;
                  v53 = v577;
                  v52 = v578;
                  v51 = v579;
                  v79 = v126;
                  v45 = v121;
                  v100 = v576;
                  if (!v127)
                  {
                    v121 = v118;
                  }
                }
              }
            }

            else
            {
              v121 = v118;
            }
          }
        }
      }

      if ((v22 * v116 + v37 * v24) * v44 + v43 * (v26 * v115 + v34 * v22) + v42 * (v24 * v114 + v32 * v26) < 0.0)
      {
        v128 = v96;
      }

      else
      {
        v128 = v95;
      }

      if (v128 <= -2.0)
      {
        v129 = v128 + 4.0;
      }

      else
      {
        v129 = v128;
      }

      v130 = fabs(v129);
      if (v130 > 0.00000001)
      {
        goto LABEL_150;
      }

      v132 = 0.0;
      if (v129 != 0.0)
      {
        v133 = 1.0;
        if (v130 >= 1.0)
        {
          v133 = v130;
        }

        if (v130 > v133 * 2.22044605e-16)
        {
          v561 = v43;
          v134 = v45;
          v135 = v79;
          v567 = v37;
          v570 = v116;
          v136 = v42;
          v556 = v44;
          v574 = v102;
          v532 = v114;
          v538 = v115;
          v137 = sub_10000B2C4(*v12, v12[1], *v10, v10[1]);
          v114 = v532;
          v115 = v538;
          v116 = v570;
          v102 = v574;
          v44 = v556;
          v43 = v561;
          v37 = v567;
          v42 = v136;
          v53 = v577;
          v52 = v578;
          v51 = v579;
          v79 = v135;
          v45 = v134;
          v100 = v576;
          if (!v137)
          {
LABEL_150:
            v131 = vabdd_f64(v100, v129);
            if (v131 <= 0.00000001)
            {
              v132 = v100;
              if (v100 - v129 != 0.0)
              {
                v138 = 1.0;
                if (v131 >= 1.0)
                {
                  v138 = v131;
                }

                v132 = v100;
                if (v131 > v138 * 2.22044605e-16)
                {
                  v562 = v43;
                  v139 = v45;
                  v140 = v79;
                  v568 = v37;
                  v571 = v116;
                  v141 = v42;
                  v142 = v44;
                  v575 = v102;
                  v533 = v114;
                  v539 = v115;
                  v143 = sub_10000B2C4(*v13, v13[1], *v10, v10[1]);
                  v114 = v533;
                  v115 = v539;
                  v116 = v571;
                  v102 = v575;
                  v43 = v562;
                  v44 = v142;
                  v42 = v141;
                  v37 = v568;
                  v53 = v577;
                  v52 = v578;
                  v51 = v579;
                  v79 = v140;
                  v45 = v139;
                  v100 = v576;
                  if (v143)
                  {
                    v132 = v576;
                  }

                  else
                  {
                    v132 = v129;
                  }
                }
              }
            }

            else
            {
              v132 = v129;
            }
          }
        }
      }

      if ((v51 * v116 + v37 * v52) * v44 + v43 * (v53 * v115 + v34 * v51) + v42 * (v52 * v114 + v32 * v53) < 0.0)
      {
        v144 = -(1.0 - (v53 * v34 + v32 * v52 + v37 * v51));
      }

      else
      {
        v144 = 1.0 - (v53 * v34 + v32 * v52 + v37 * v51);
      }

      if (v144 <= -2.0)
      {
        v145 = v144 + 4.0;
      }

      else
      {
        v145 = v144;
      }

      v146 = fabs(v145);
      if (v146 > 0.00000001)
      {
        goto LABEL_172;
      }

      v148 = 0.0;
      if (v145 != 0.0)
      {
        v149 = 1.0;
        if (v146 >= 1.0)
        {
          v149 = v146;
        }

        if (v146 > v149 * 2.22044605e-16)
        {
          v150 = v45;
          v151 = v79;
          v152 = v102;
          v153 = sub_10000B2C4(*v12, v12[1], *v11, v11[1]);
          v102 = v152;
          v79 = v151;
          v45 = v150;
          v100 = v576;
          if (!v153)
          {
LABEL_172:
            v147 = vabdd_f64(v100, v145);
            if (v147 > 0.00000001)
            {
              goto LABEL_173;
            }

            v148 = v100;
            if (v100 - v145 != 0.0)
            {
              v154 = 1.0;
              if (v147 >= 1.0)
              {
                v154 = v147;
              }

              v148 = v100;
              if (v147 > v154 * 2.22044605e-16)
              {
                v155 = v45;
                v156 = v79;
                v157 = v102;
                v158 = sub_10000B2C4(*v13, v13[1], *v11, v11[1]);
                v102 = v157;
                v79 = v156;
                v45 = v155;
                v100 = v576;
                v148 = v576;
                if (!v158)
                {
LABEL_173:
                  v148 = v145;
                }
              }
            }
          }
        }
      }

      *&v590 = v132;
      *(&v590 + 1) = v100;
      v159 = v132;
      v160 = v100;
      if (v100 < 0.0)
      {
        v159 = -v132;
        v160 = -v100;
        *&v590 = -v132;
        *(&v590 + 1) = -v100;
      }

      v161 = 0.0;
      v21 = a6;
      if (v160 != 0.0)
      {
        v161 = v159 * 1000000.0 / v160;
      }

      v591 = v161;
      v162 = v148;
      v163 = v100;
      v587 = v148;
      v588 = v100;
      if (v100 < 0.0)
      {
        v162 = -v148;
        v163 = -v100;
        v587 = -v148;
        v588 = -v100;
      }

      v164 = 0.0;
      if (v163 != 0.0)
      {
        v164 = v162 * 1000000.0 / v163;
      }

      v589 = v164;
      v165 = v102;
      v166 = v45;
      *&v585 = v102;
      *(&v585 + 1) = v45;
      if (v45 < 0.0)
      {
        v165 = -v102;
        v166 = -v45;
        *&v585 = -v102;
        *(&v585 + 1) = -v45;
      }

      v167 = 0.0;
      if (v166 != 0.0)
      {
        v167 = v165 * 1000000.0 / v166;
      }

      v586 = v167;
      v168 = v121;
      v169 = v45;
      *&v583 = v121;
      *(&v583 + 1) = v45;
      if (v45 < 0.0)
      {
        v168 = -v121;
        v169 = -v45;
        *&v583 = -v121;
        *(&v583 + 1) = -v45;
      }

      v170 = 0.0;
      if (v169 != 0.0)
      {
        v170 = v168 * 1000000.0 / v169;
      }

      v584 = v170;
      if (v102 == 0.0)
      {
        goto LABEL_202;
      }

      if ((*&v102 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v172 = fabs(v102);
        v173 = vabdd_f64(0.0, v102);
        if (v172 < 1.0)
        {
          v172 = 1.0;
        }

        if (v173 <= v172 * 2.22044605e-16)
        {
LABEL_202:
          v171 = 1;
          goto LABEL_209;
        }
      }

      if (v121 == 0.0)
      {
        goto LABEL_208;
      }

      if ((*&v121 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v205 = fabs(v121);
        v206 = vabdd_f64(0.0, v121);
        if (v205 < 1.0)
        {
          v205 = 1.0;
        }

        if (v206 <= v205 * 2.22044605e-16)
        {
LABEL_208:
          v171 = 3;
          goto LABEL_209;
        }
      }

      if (v102 >= v121)
      {
        if (v102 >= 0.0)
        {
          if (v121 <= 0.0)
          {
            v171 = 2;
          }

          else
          {
            v171 = 4;
          }

LABEL_209:
          if (v45 == v102)
          {
LABEL_210:
            v174 = 1;
            goto LABEL_316;
          }

          if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v200 = fabs(v45);
            if ((*&v102 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v201 = fabs(v102);
              v202 = vabdd_f64(v45, v102);
              if (v200 >= v201)
              {
                v201 = v200;
              }

              if (v201 < 1.0)
              {
                v201 = 1.0;
              }

              if (v202 <= v201 * 2.22044605e-16)
              {
                goto LABEL_210;
              }
            }

            if (v45 != v121)
            {
              if ((*&v121 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_304;
              }

              v207 = fabs(v121);
              v208 = vabdd_f64(v45, v121);
              if (v200 < v207)
              {
                v200 = v207;
              }

              if (v200 < 1.0)
              {
                v200 = 1.0;
              }

              if (v208 > v200 * 2.22044605e-16)
              {
LABEL_304:
                if (v102 >= v121)
                {
                  if (v45 <= v102)
                  {
                    if (v45 >= v121)
                    {
                      v174 = 2;
                    }

                    else
                    {
                      v174 = 4;
                    }

                    goto LABEL_316;
                  }
                }

                else if (v45 >= v102)
                {
                  if (v45 <= v121)
                  {
                    v174 = 2;
                  }

                  else
                  {
                    v174 = 4;
                  }

                  goto LABEL_316;
                }

                v174 = 0;
LABEL_316:
                if (v132 == 0.0)
                {
                  goto LABEL_317;
                }

                if ((*&v132 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v210 = fabs(v132);
                  v211 = vabdd_f64(0.0, v132);
                  if (v210 < 1.0)
                  {
                    v210 = 1.0;
                  }

                  if (v211 <= v210 * 2.22044605e-16)
                  {
LABEL_317:
                    v209 = 1;
                    goto LABEL_324;
                  }
                }

                if (v148 == 0.0)
                {
                  goto LABEL_323;
                }

                if ((*&v148 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v216 = fabs(v148);
                  v217 = vabdd_f64(0.0, v148);
                  if (v216 < 1.0)
                  {
                    v216 = 1.0;
                  }

                  if (v217 <= v216 * 2.22044605e-16)
                  {
LABEL_323:
                    v209 = 3;
                    goto LABEL_324;
                  }
                }

                if (v132 >= v148)
                {
                  if (v132 >= 0.0)
                  {
                    if (v148 <= 0.0)
                    {
                      v209 = 2;
                    }

                    else
                    {
                      v209 = 4;
                    }

LABEL_324:
                    if (v100 == v132)
                    {
LABEL_325:
                      v212 = 1;
                      goto LABEL_364;
                    }

                    if ((*&v100 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      v213 = fabs(v100);
                      if ((*&v132 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        v214 = fabs(v132);
                        v215 = vabdd_f64(v100, v132);
                        if (v213 >= v214)
                        {
                          v214 = v213;
                        }

                        if (v214 < 1.0)
                        {
                          v214 = 1.0;
                        }

                        if (v215 <= v214 * 2.22044605e-16)
                        {
                          goto LABEL_325;
                        }
                      }

                      if (v100 != v148)
                      {
                        if ((*&v148 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                        {
                          goto LABEL_352;
                        }

                        v218 = fabs(v148);
                        v219 = vabdd_f64(v100, v148);
                        if (v213 < v218)
                        {
                          v213 = v218;
                        }

                        if (v213 < 1.0)
                        {
                          v213 = 1.0;
                        }

                        if (v219 > v213 * 2.22044605e-16)
                        {
LABEL_352:
                          if (v132 >= v148)
                          {
                            if (v100 <= v132)
                            {
                              if (v100 >= v148)
                              {
                                v212 = 2;
                              }

                              else
                              {
                                v212 = 4;
                              }

LABEL_364:
                              if (v171 == 3)
                              {
                                *&v590 = v100;
                                *(&v590 + 1) = v100;
                                v227 = v100;
                                if (v100 < 0.0)
                                {
                                  v227 = -v100;
                                  *&v590 = -v100;
                                  *(&v590 + 1) = -v100;
                                }

                                v228 = 0.0;
                                v229 = 0.0;
                                if (v227 != 0.0)
                                {
                                  v229 = v227 * 1000000.0 / v227;
                                }

                                v591 = v229;
                                *&v583 = 0;
                                v230 = v45;
                                *(&v583 + 1) = v45;
                                if (v45 < 0.0)
                                {
                                  *&v583 = 0x8000000000000000;
                                  v230 = -v45;
                                  *(&v583 + 1) = -v45;
                                  v228 = -0.0;
                                }

                                v231 = v228 / v230;
                                if (v230 == 0.0)
                                {
                                  v231 = 0.0;
                                }

                                v584 = v231;
                              }

                              else if (v171 == 1)
                              {
                                *&v590 = 0;
                                *(&v590 + 1) = v100;
                                v220 = 0.0;
                                v221 = 0.0;
                                v222 = v100;
                                if (v100 < 0.0)
                                {
                                  *&v590 = 0x8000000000000000;
                                  v222 = -v100;
                                  *(&v590 + 1) = -v100;
                                  v221 = -0.0;
                                }

                                v223 = v221 / v222;
                                if (v222 == 0.0)
                                {
                                  v224 = 0.0;
                                }

                                else
                                {
                                  v224 = v223;
                                }

                                v591 = v224;
                                *&v585 = 0;
                                *(&v585 + 1) = v45;
                                v225 = v45;
                                if (v45 < 0.0)
                                {
                                  *&v585 = 0x8000000000000000;
                                  v225 = -v45;
                                  *(&v585 + 1) = -v45;
                                  v220 = -0.0;
                                }

                                v226 = v220 / v225;
                                if (v225 == 0.0)
                                {
                                  v226 = 0.0;
                                }

                                v586 = v226;
                              }

                              if (v174 == 3)
                              {
                                v587 = v100;
                                v588 = v100;
                                if (v100 < 0.0)
                                {
                                  v100 = -v100;
                                  v587 = v100;
                                  v588 = v100;
                                }

                                v234 = 0.0;
                                if (v100 != 0.0)
                                {
                                  v234 = v100 * 1000000.0 / v100;
                                }

                                v589 = v234;
                                *&v583 = v45;
                                *(&v583 + 1) = v45;
                                if (v45 < 0.0)
                                {
                                  v45 = -v45;
                                  *&v583 = v45;
                                  *(&v583 + 1) = v45;
                                }

                                v235 = 0.0;
                                if (v45 != 0.0)
                                {
                                  v235 = v45 * 1000000.0 / v45;
                                }

                                v584 = v235;
                              }

                              else if (v174 == 1)
                              {
                                v587 = 0.0;
                                v588 = v100;
                                v232 = 0.0;
                                if (v100 >= 0.0)
                                {
                                  v233 = 0.0;
                                }

                                else
                                {
                                  v587 = -0.0;
                                  v100 = -v100;
                                  v588 = v100;
                                  v233 = -0.0;
                                }

                                v378 = v233 / v100;
                                if (v100 != 0.0)
                                {
                                  v232 = v378;
                                }

                                v589 = v232;
                                *&v585 = v45;
                                *(&v585 + 1) = v45;
                                if (v45 < 0.0)
                                {
                                  v45 = -v45;
                                  *&v585 = v45;
                                  *(&v585 + 1) = v45;
                                }

                                v379 = 0.0;
                                if (v45 != 0.0)
                                {
                                  v379 = v45 * 1000000.0 / v45;
                                }

                                v586 = v379;
                              }

                              else if (!(v171 | v174) || v171 >= 4 && v174 >= 4)
                              {
                                v236 = 0;
                                *&v627[0] = 0;
                                do
                                {
                                  v237 = v627 + v236;
                                  *(v237 + 40) = xmmword_100092590;
                                  *(v237 + 7) = 0;
                                  *(v237 + 8) = 0;
                                  *(v237 + 72) = xmmword_1000925A0;
                                  v236 += 56;
                                  v237[88] = 0;
                                }

                                while (v236 != 112);
                                goto LABEL_403;
                              }

                              sub_100032158(v616, v607, v606, v79 < 0.0, v171, v174, v209, v212, &v590, &v587, &v585, &v583);
                              goto LABEL_405;
                            }
                          }

                          else if (v100 >= v132)
                          {
                            if (v100 <= v148)
                            {
                              v212 = 2;
                            }

                            else
                            {
                              v212 = 4;
                            }

                            goto LABEL_364;
                          }

                          v212 = 0;
                          goto LABEL_364;
                        }
                      }
                    }

                    else if (v100 != v148)
                    {
                      goto LABEL_352;
                    }

                    v212 = 3;
                    goto LABEL_364;
                  }
                }

                else if (v132 <= 0.0)
                {
                  if (v148 >= 0.0)
                  {
                    v209 = 2;
                  }

                  else
                  {
                    v209 = 4;
                  }

                  goto LABEL_324;
                }

                v209 = 0;
                goto LABEL_324;
              }
            }
          }

          else if (v45 != v121)
          {
            goto LABEL_304;
          }

          v174 = 3;
          goto LABEL_316;
        }
      }

      else if (v102 <= 0.0)
      {
        if (v121 >= 0.0)
        {
          v171 = 2;
        }

        else
        {
          v171 = 4;
        }

        goto LABEL_209;
      }

      v171 = 0;
      goto LABEL_209;
    }

LABEL_64:
    *&v590 = 0;
    if (sub_100031EF4(v12, v13, v10, v603, &v597, v605, v604, &v596, &v590, v48))
    {
      if (v576 >= 0.0)
      {
        v88 = *&v590;
      }

      else
      {
        v88 = -*&v590;
      }

      if (v576 >= 0.0)
      {
        v89 = v576;
      }

      else
      {
        v89 = -v576;
      }

      v90 = 0.0;
      v21 = a6;
      if (v576 != 0.0)
      {
        v90 = v88 * 1000000.0 / v89;
      }

      v91 = &v618 + 8;
      v92 = 112;
      do
      {
        *(v91 - 3) = xmmword_100092590;
        *(v91 - 4) = 0;
        *(v91 - 3) = 0;
        *(v91 - 1) = xmmword_1000925A0;
        *v91 = 0;
        v91 += 56;
        v92 -= 56;
      }

      while (v92);
      *v616 = 1;
      *&v616[8] = *v10;
      if ((atomic_load_explicit(&qword_1000B2C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2C00))
      {
        qword_1000B2BF8 = 0x3FF0000000000000;
        __cxa_guard_release(&qword_1000B2C00);
      }

      BYTE8(v618) = 1;
      *&v616[40] = 0;
      *&v616[48] = qword_1000B2BF8;
      *&v616[56] = 0;
      *&v617 = v88;
      *(&v617 + 1) = v89;
      *&v618 = v90;
      goto LABEL_77;
    }

    v103 = 0;
    *&v627[0] = 0;
    v21 = a6;
    do
    {
      v104 = v627 + v103;
      *(v104 + 40) = xmmword_100092590;
      *(v104 + 7) = 0;
      *(v104 + 8) = 0;
      *(v104 + 72) = xmmword_1000925A0;
      v103 += 56;
      v104[88] = 0;
    }

    while (v103 != 112);
LABEL_403:
    *(&__dst[1] + 2) = 0u;
    *(__dst + 2) = 0u;
    v619 = v627[6];
    *v620 = v627[7];
    *&v620[16] = v627[8];
    *&v616[32] = v627[2];
    *&v616[48] = v627[3];
    v617 = v627[4];
    v618 = v627[5];
    *v616 = v627[0];
    *&v616[16] = v627[1];
    v68 = __dst[1];
    v623 = __dst[0];
    *(&__dst[2] + 2) = 0;
    v621 = *&v627[9];
    v622 = 100;
LABEL_404:
    *v624 = v68;
    *&v624[10] = *(&__dst[1] + 10);
    goto LABEL_405;
  }

  if (!v78)
  {
    v87 = &v600 + 4;
    LODWORD(v600) = 0;
    goto LABEL_62;
  }

  v79 = v57 * v44 + v56 * v43 + v55 * v42;
  v80 = fabs(v79);
  if (v80 == 1.0)
  {
    goto LABEL_47;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v57 * v44 + v56 * v43 + v55 * v42)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v105 = fabs(v80 + -1.0);
    if (v80 < 1.0)
    {
      v80 = 1.0;
    }

    if (v105 <= v80 * 2.22044605e-16)
    {
LABEL_47:
      v600 = 0;
      v601 = 0;
      if (!v61)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }
  }

  if ((v61 | v69) == 1)
  {
    v106 = 0;
    *&v627[0] = 0;
    do
    {
      v107 = v627 + v106;
      *(v107 + 40) = xmmword_100092590;
      *(v107 + 7) = 0;
      *(v107 + 8) = 0;
      *(v107 + 72) = xmmword_1000925A0;
      v106 += 56;
      v107[88] = 0;
    }

    while (v106 != 112);
LABEL_265:
    *(&__dst[1] + 2) = 0u;
    *(__dst + 2) = 0u;
    v619 = v627[6];
    *v620 = v627[7];
    *&v620[16] = v627[8];
    *&v616[32] = v627[2];
    *&v616[48] = v627[3];
    v617 = v627[4];
    v618 = v627[5];
    *v616 = v627[0];
    *&v616[16] = v627[1];
    v623 = __dst[0];
    *(&__dst[2] + 2) = 0;
    v621 = *&v627[9];
    v622 = 100;
    *v624 = __dst[1];
    *&v624[10] = 0uLL;
    v21 = a6;
    goto LABEL_405;
  }

  v175 = v45;
  LODWORD(v583) = 0;
  v587 = 0.0;
  *&v585 = 0;
  if (!sub_100019BD0(v10, v11, v12, v13, v605, v604, v603, v602, &v593, &v597, &v600, &v592, &v596, &v590, &v587, &v585, &v583))
  {
    v203 = 0;
    *&v627[0] = 0;
    v21 = a6;
    do
    {
      v204 = v627 + v203;
      *(v204 + 40) = xmmword_100092590;
      *(v204 + 7) = 0;
      *(v204 + 8) = 0;
      *(v204 + 72) = xmmword_1000925A0;
      v203 += 56;
      v204[88] = 0;
    }

    while (v203 != 112);
    goto LABEL_403;
  }

  *&v627[5] = &v608;
  v176 = v587;
  *(&v627[1] + 1) = v587;
  *&v627[2] = v175;
  if (v175 < 0.0)
  {
    v176 = -v587;
    v175 = -v175;
    *(&v627[1] + 1) = -v587;
    *&v627[2] = v175;
  }

  v177 = v576;
  v178 = 0.0;
  if (v175 != 0.0)
  {
    v178 = v176 * 1000000.0 / v175;
  }

  v179 = *&v585;
  *(&v627[2] + 1) = v178;
  *&v627[3] = v585;
  *(&v627[3] + 1) = v576;
  if (v576 < 0.0)
  {
    v179 = -*&v585;
    v177 = -v576;
    *&v627[3] = -*&v585;
    *(&v627[3] + 1) = -v576;
  }

  v180 = 0.0;
  if (v177 != 0.0)
  {
    v180 = v179 * 1000000.0 / v177;
  }

  *&v627[4] = v180;
  v627[0] = v590;
  *&v627[1] = v591;
  DWORD2(v627[4]) = v583;
  sub_10001A118(v616, &v600, v627, v10, v11, v12, v13);
  v21 = a6;
LABEL_405:
  v625 = a4;
  v626 = a5;
  if (v622 == 100)
  {
    return v21;
  }

  memcpy(__dst, a3, sizeof(__dst));
  if (v622 > 0x68u)
  {
    if (v622 == 105)
    {
      LODWORD(__dst[1]) = 2;
      __dst[0] = *&v616[8];
      *(&__dst[5] + 8) = *&v616[40];
      __dst[17] = v617;
      *(&__dst[6] + 1) = *&v616[56];
      *&__dst[18] = v618;
      v257 = *&v624[10] == 1;
      *(&__dst[2] + 46 * (*&v624[10] != 1) + 2) = 1;
      *(&__dst[2] + 46 * v257 + 2) = 2;
      *&v627[0] = v21;
      sub_100045580(v627, __dst);
      return v21;
    }

    if (v622 != 116)
    {
      if (v622 != 109)
      {
        return v21;
      }

      LODWORD(__dst[1]) = 4;
      __dst[0] = *&v616[8];
      __asm { FMOV            V0.2D, #1.0 }

      if (*&v624[22] == 1)
      {
        v243 = 0;
        v244 = 1;
        v245 = 40;
        do
        {
          v246 = v244;
          v247 = *&v624[4 * v243 + 18];
          if (v247 == -1)
          {
            v249 = &__dst[2] + 184 * v243 + 8;
            *(v249 + 3) = xmmword_100092590;
            *(v249 + 8) = 0;
          }

          else if (v247 == 1)
          {
            v248 = &__dst[2] + 184 * v243 + 8;
            *(v248 + 3) = _Q0;
            *(v248 + 8) = 0x412E848000000000;
          }

          else
          {
            v250 = &v616[v245];
            v251 = &__dst[2] + 184 * v243 + 8;
            *(v251 + 3) = *v250;
            *(v251 + 8) = *(v250 + 2);
          }

          v244 = 0;
          v245 = 64;
          v243 = 1;
        }

        while ((v246 & 1) != 0);
        v252 = *&v624[10];
        v253 = v613;
        v254 = *(v612 + 8);
        v255 = *(v612 + 16);
        if (*(v613 + 32) == 1)
        {
          v256 = *(v613 + 24);
        }

        else
        {
          v356 = *(v613 + 16);
          v256 = v356 + 2;
          v357 = *v613;
          v358 = *(*v613 + 8);
          if (v356 + 2 == v358)
          {
            v256 = (*v357 + 16);
          }

          v359 = *v356;
          v360 = v356[1];
          if (sub_10000B2C4(*v356, v360, *v256, v256[1]))
          {
            do
            {
              v256 += 2;
              if (v256 == v358)
              {
                v256 = (*v357 + 16);
              }
            }

            while (sub_10000B2C4(v359, v360, *v256, v256[1]));
          }

          *(v253 + 24) = v256;
          *(v253 + 32) = 1;
        }

        v361 = sub_10000DCA4(v254, v255, v256);
        v362 = v361;
        if (v252 + v361)
        {
          v370 = v613;
          v371 = *(v613 + 8);
          v372 = *(v613 + 16);
          if (*(v613 + 32) == 1)
          {
            v373 = *(v613 + 24);
          }

          else
          {
            v373 = v372 + 2;
            v399 = *v613;
            v400 = *(*v613 + 8);
            if (v372 + 2 == v400)
            {
              v373 = (*v399 + 16);
            }

            v401 = *v372;
            v402 = v372[1];
            if (sub_10000B2C4(*v372, v402, *v373, v373[1]))
            {
              do
              {
                v373 += 2;
                if (v373 == v400)
                {
                  v373 = (*v399 + 16);
                }
              }

              while (sub_10000B2C4(v401, v402, *v373, v373[1]));
            }

            *(v370 + 24) = v373;
            *(v370 + 32) = 1;
          }

          v403 = sub_10000DCA4(v371, v372, v373);
          v404 = v613;
          v405 = *(v613 + 16);
          if (*(v613 + 32) == 1)
          {
            v406 = *(v613 + 24);
          }

          else
          {
            v406 = v405 + 2;
            v415 = *v613;
            v416 = *(*v613 + 8);
            if (v405 + 2 == v416)
            {
              v406 = (*v415 + 16);
            }

            v417 = *v405;
            v418 = v405[1];
            if (sub_10000B2C4(*v405, v418, *v406, v406[1]))
            {
              do
              {
                v406 += 2;
                if (v406 == v416)
                {
                  v406 = (*v415 + 16);
                }
              }

              while (sub_10000B2C4(v417, v418, *v406, v406[1]));
            }

            *(v404 + 24) = v406;
            *(v404 + 32) = 1;
          }

          v419 = sub_10000DCA4(v405, v406, *(v612 + 16));
          v420 = v419;
          if ((v362 & v252) == 0xFFFFFFFF && v403 == 1)
          {
            DWORD2(__dst[2]) = 2;
            LODWORD(__dst[14]) = 2;
            BYTE4(__dst[1]) = 1;
          }

          else if (v252 == 1 && v362 == 1 && v403 == -1)
          {
            if (v419 == -1)
            {
              v421 = 1;
            }

            else
            {
              v421 = 3;
            }

            DWORD2(__dst[2]) = 1;
            LODWORD(__dst[14]) = v421;
            BYTE4(__dst[1]) = 1;
          }

          else if (v252 == v362 && v252 == v403)
          {
            v444 = (v403 == 1) ^ (v419 == 0);
            if (v419 * v252 == -1)
            {
              v445 = sub_10000DCA4(*(v612 + 8), *(v612 + 16), *(v613 + 16));
              v446 = v612;
              v447 = *(v612 + 16);
              if (*(v612 + 32) == 1)
              {
                v448 = *(v612 + 24);
              }

              else
              {
                v448 = v447 + 2;
                v511 = *v612;
                v512 = *(*v612 + 8);
                if (v447 + 2 == v512)
                {
                  v448 = (*v511 + 16);
                }

                v513 = *v447;
                v514 = v447[1];
                if (sub_10000B2C4(*v447, v514, *v448, v448[1]))
                {
                  do
                  {
                    v448 += 2;
                    if (v448 == v512)
                    {
                      v448 = (*v511 + 16);
                    }
                  }

                  while (sub_10000B2C4(v513, v514, *v448, v448[1]));
                }

                *(v446 + 24) = v448;
                *(v446 + 32) = 1;
              }

              if (sub_10000DCA4(v447, v448, *(v613 + 16)) * v445 == 1 && sub_10000DCA4(*(v613 + 8), *(v613 + 16), *(v612 + 16)) * v420 == -1)
              {
                v444 ^= 1u;
              }
            }

            *(&__dst[2] + 46 * v444 + 2) = 1;
            *(&__dst[2] + 46 * (v444 ^ 1) + 2) = 2;
            BYTE4(__dst[1]) = 1;
          }

          else if (v362)
          {
            LODWORD(__dst[1]) = 8;
          }

          else if (v252 == v403)
          {
            DWORD2(__dst[2]) = 4;
            LODWORD(__dst[14]) = 4;
          }

          else
          {
            if (v403 == 1)
            {
              v509 = 2;
            }

            else
            {
              v509 = 1;
            }

            DWORD2(__dst[2]) = v509;
            LODWORD(__dst[14]) = 3;
          }
        }

        else
        {
          *(&__dst[2] + 46 * (v361 != -1) + 2) = 1;
          *(&__dst[2] + 46 * (v361 == -1) + 2) = 2;
        }
      }

      else
      {
        v301 = 0;
        v302 = 1;
        v303 = 40;
        do
        {
          v304 = v302;
          v305 = *&v624[4 * v301 + 18];
          if (v305 == -1)
          {
            v307 = &__dst[2] + 184 * v301 + 8;
            *(v307 + 3) = xmmword_100092590;
            *(v307 + 8) = 0;
          }

          else if (v305 == 1)
          {
            v306 = &__dst[2] + 184 * v301 + 8;
            *(v306 + 3) = _Q0;
            *(v306 + 8) = 0x412E848000000000;
          }

          else
          {
            v308 = &v616[v303];
            v309 = &__dst[2] + 184 * v301 + 8;
            *(v309 + 3) = *v308;
            *(v309 + 8) = *(v308 + 2);
          }

          v302 = 0;
          v303 = 64;
          v301 = 1;
        }

        while ((v304 & 1) != 0);
        v310 = *&v624[2];
        v311 = v615;
        v312 = *(v614 + 8);
        v313 = *(v614 + 16);
        if (*(v615 + 32) == 1)
        {
          v314 = *(v615 + 24);
        }

        else
        {
          v363 = *(v615 + 16);
          v314 = v363 + 2;
          v364 = *v615;
          v365 = *(*v615 + 8);
          if (v363 + 2 == v365)
          {
            v314 = (*v364 + 16);
          }

          v366 = *v363;
          v367 = v363[1];
          if (sub_10000B2C4(*v363, v367, *v314, v314[1]))
          {
            do
            {
              v314 += 2;
              if (v314 == v365)
              {
                v314 = (*v364 + 16);
              }
            }

            while (sub_10000B2C4(v366, v367, *v314, v314[1]));
          }

          *(v311 + 24) = v314;
          *(v311 + 32) = 1;
        }

        v368 = sub_10000DCA4(v312, v313, v314);
        v369 = v368;
        if (v310 + v368)
        {
          v374 = v615;
          v375 = *(v615 + 8);
          v376 = *(v615 + 16);
          if (*(v615 + 32) == 1)
          {
            v377 = *(v615 + 24);
          }

          else
          {
            v377 = v376 + 2;
            v407 = *v615;
            v408 = *(*v615 + 8);
            if (v376 + 2 == v408)
            {
              v377 = (*v407 + 16);
            }

            v409 = *v376;
            v410 = v376[1];
            if (sub_10000B2C4(*v376, v410, *v377, v377[1]))
            {
              do
              {
                v377 += 2;
                if (v377 == v408)
                {
                  v377 = (*v407 + 16);
                }
              }

              while (sub_10000B2C4(v409, v410, *v377, v377[1]));
            }

            *(v374 + 24) = v377;
            *(v374 + 32) = 1;
          }

          v411 = sub_10000DCA4(v375, v376, v377);
          v412 = v615;
          v413 = *(v615 + 16);
          if (*(v615 + 32) == 1)
          {
            v414 = *(v615 + 24);
          }

          else
          {
            v414 = v413 + 2;
            v422 = *v615;
            v423 = *(*v615 + 8);
            if (v413 + 2 == v423)
            {
              v414 = (*v422 + 16);
            }

            v424 = *v413;
            v425 = v413[1];
            if (sub_10000B2C4(*v413, v425, *v414, v414[1]))
            {
              do
              {
                v414 += 2;
                if (v414 == v423)
                {
                  v414 = (*v422 + 16);
                }
              }

              while (sub_10000B2C4(v424, v425, *v414, v414[1]));
            }

            *(v412 + 24) = v414;
            *(v412 + 32) = 1;
          }

          v426 = sub_10000DCA4(v413, v414, *(v614 + 16));
          v427 = v426;
          if ((v369 & v310) == 0xFFFFFFFF && v411 == 1)
          {
            DWORD2(__dst[2]) = 2;
            LODWORD(__dst[14]) = 2;
            BYTE4(__dst[1]) = 1;
          }

          else if (v310 == 1 && v369 == 1 && v411 == -1)
          {
            if (v426 == -1)
            {
              v428 = 1;
            }

            else
            {
              v428 = 3;
            }

            DWORD2(__dst[2]) = v428;
            LODWORD(__dst[14]) = 1;
            BYTE4(__dst[1]) = 1;
          }

          else if (v310 == v369 && v310 == v411)
          {
            v449 = (v411 == 1) ^ (v426 != 0);
            if (v426 * v310 == -1)
            {
              v450 = sub_10000DCA4(*(v614 + 8), *(v614 + 16), *(v615 + 16));
              v451 = v614;
              v452 = *(v614 + 16);
              if (*(v614 + 32) == 1)
              {
                v453 = *(v614 + 24);
              }

              else
              {
                v453 = v452 + 2;
                v515 = *v614;
                v516 = *(*v614 + 8);
                if (v452 + 2 == v516)
                {
                  v453 = (*v515 + 16);
                }

                v517 = *v452;
                v518 = v452[1];
                if (sub_10000B2C4(*v452, v518, *v453, v453[1]))
                {
                  do
                  {
                    v453 += 2;
                    if (v453 == v516)
                    {
                      v453 = (*v515 + 16);
                    }
                  }

                  while (sub_10000B2C4(v517, v518, *v453, v453[1]));
                }

                *(v451 + 24) = v453;
                *(v451 + 32) = 1;
              }

              if (sub_10000DCA4(v452, v453, *(v615 + 16)) * v450 == 1 && sub_10000DCA4(*(v615 + 8), *(v615 + 16), *(v614 + 16)) * v427 == -1)
              {
                v449 ^= 1u;
              }
            }

            *(&__dst[2] + 46 * v449 + 2) = 1;
            *(&__dst[2] + 46 * (v449 ^ 1) + 2) = 2;
            BYTE4(__dst[1]) = 1;
          }

          else if (v369)
          {
            LODWORD(__dst[1]) = 8;
          }

          else if (v310 == v411)
          {
            DWORD2(__dst[2]) = 4;
            LODWORD(__dst[14]) = 4;
          }

          else
          {
            if (v411 == 1)
            {
              v510 = 2;
            }

            else
            {
              v510 = 1;
            }

            LODWORD(__dst[14]) = v510;
            DWORD2(__dst[2]) = 3;
          }
        }

        else
        {
          *(&__dst[2] + 46 * (v368 == -1) + 2) = 1;
          *(&__dst[2] + 46 * (v368 != -1) + 2) = 2;
        }
      }

LABEL_849:
      *&v627[0] = v21;
      sub_100045580(v627, __dst);
      return v21;
    }

    v258 = 0;
    LODWORD(__dst[1]) = 3;
    __dst[0] = *&v616[8];
    v259 = 1;
    v260 = 40;
    __asm { FMOV            V1.2D, #1.0 }

    do
    {
      v262 = v259;
      v263 = *&v624[4 * v258 + 18];
      if (v263 == -1)
      {
        v265 = &__dst[2] + 184 * v258 + 8;
        *(v265 + 3) = xmmword_100092590;
        *(v265 + 8) = 0;
      }

      else if (v263 == 1)
      {
        v264 = &__dst[2] + 184 * v258 + 8;
        *(v264 + 3) = _Q1;
        *(v264 + 8) = 0x412E848000000000;
      }

      else
      {
        v266 = &v616[v260];
        v267 = &__dst[2] + 184 * v258 + 8;
        *(v267 + 3) = *v266;
        *(v267 + 8) = *(v266 + 2);
      }

      v259 = 0;
      v260 = 64;
      v258 = 1;
    }

    while ((v262 & 1) != 0);
    v268 = v612;
    v269 = *(v613 + 8);
    v270 = *(v613 + 16);
    if (*(v612 + 32) == 1)
    {
      v271 = *(v612 + 24);
    }

    else
    {
      v277 = *(v612 + 16);
      v271 = v277 + 2;
      v278 = *v612;
      v279 = *(*v612 + 8);
      if (v277 + 2 == v279)
      {
        v271 = (*v278 + 16);
      }

      v280 = *v277;
      v281 = v277[1];
      if (sub_10000B2C4(*v277, v281, *v271, v271[1]))
      {
        do
        {
          v271 += 2;
          if (v271 == v279)
          {
            v271 = (*v278 + 16);
          }
        }

        while (sub_10000B2C4(v280, v281, *v271, v271[1]));
      }

      *(v268 + 24) = v271;
      *(v268 + 32) = 1;
    }

    v282 = sub_10000DCA4(v269, v270, v271);
    v283 = *&v624[10];
    v284 = v613;
    v285 = *(v612 + 8);
    v286 = *(v612 + 16);
    if (*(v613 + 32) == 1)
    {
      v287 = *(v613 + 24);
    }

    else
    {
      v288 = *(v613 + 16);
      v287 = v288 + 2;
      v289 = *v613;
      v290 = *(*v613 + 8);
      if (v288 + 2 == v290)
      {
        v287 = (*v289 + 16);
      }

      v291 = *v288;
      v292 = v288[1];
      if (sub_10000B2C4(*v288, v292, *v287, v287[1]))
      {
        do
        {
          v287 += 2;
          if (v287 == v290)
          {
            v287 = (*v289 + 16);
          }
        }

        while (sub_10000B2C4(v291, v292, *v287, v287[1]));
      }

      *(v284 + 24) = v287;
      *(v284 + 32) = 1;
    }

    v293 = sub_10000DCA4(v285, v286, v287);
    if (v293 * v283 != -1)
    {
      v294 = v613;
      v295 = *(v613 + 16);
      if (*(v613 + 32) == 1)
      {
        v296 = *(v613 + 24);
      }

      else
      {
        v296 = v295 + 2;
        v319 = *v613;
        v320 = *(*v613 + 8);
        if (v295 + 2 == v320)
        {
          v296 = (*v319 + 16);
        }

        v321 = *v295;
        v322 = v295[1];
        if (sub_10000B2C4(*v295, v322, *v296, v296[1]))
        {
          do
          {
            v296 += 2;
            if (v296 == v320)
            {
              v296 = (*v319 + 16);
            }
          }

          while (sub_10000B2C4(v321, v322, *v296, v296[1]));
        }

        *(v294 + 24) = v296;
        *(v294 + 32) = 1;
      }

      v323 = v612;
      if (*(v612 + 32) == 1)
      {
        v324 = *(v612 + 24);
      }

      else
      {
        v325 = *(v612 + 16);
        v324 = v325 + 2;
        v326 = *v612;
        v327 = *(*v612 + 8);
        if (v325 + 2 == v327)
        {
          v324 = (*v326 + 16);
        }

        v328 = *v325;
        v329 = v325[1];
        if (sub_10000B2C4(*v325, v329, *v324, v324[1]))
        {
          do
          {
            v324 += 2;
            if (v324 == v327)
            {
              v324 = (*v326 + 16);
            }
          }

          while (sub_10000B2C4(v328, v329, *v324, v324[1]));
        }

        *(v323 + 24) = v324;
        *(v323 + 32) = 1;
      }

      v330 = sub_10000DCA4(v295, v296, v324);
      v331 = v612;
      v332 = *(v612 + 8);
      v333 = *(v612 + 16);
      if (*(v612 + 32) == 1)
      {
        v334 = *(v612 + 24);
      }

      else
      {
        v334 = v333 + 2;
        v335 = *v612;
        v336 = *(*v612 + 8);
        if (v333 + 2 == v336)
        {
          v334 = (*v335 + 16);
        }

        v337 = *v333;
        v338 = v333[1];
        if (sub_10000B2C4(*v333, v338, *v334, v334[1]))
        {
          do
          {
            v334 += 2;
            if (v334 == v336)
            {
              v334 = (*v335 + 16);
            }
          }

          while (sub_10000B2C4(v337, v338, *v334, v334[1]));
        }

        *(v331 + 24) = v334;
        *(v331 + 32) = 1;
        v21 = a6;
      }

      v339 = sub_10000DCA4(v332, v333, v334);
      v340 = v613;
      v341 = *(v613 + 8);
      v342 = *(v613 + 16);
      if (*(v613 + 32) == 1)
      {
        v343 = *(v613 + 24);
      }

      else
      {
        v581 = v293;
        v344 = v330;
        v345 = v282;
        v343 = v342 + 2;
        v346 = *v613;
        v347 = *(*v613 + 8);
        if (v342 + 2 == v347)
        {
          v343 = (*v346 + 16);
        }

        v348 = *v342;
        v349 = v342[1];
        if (sub_10000B2C4(*v342, v349, *v343, v343[1]))
        {
          do
          {
            v343 += 2;
            if (v343 == v347)
            {
              v343 = (*v346 + 16);
            }
          }

          while (sub_10000B2C4(v348, v349, *v343, v343[1]));
        }

        *(v340 + 24) = v343;
        *(v340 + 32) = 1;
        v21 = a6;
        v282 = v345;
        v330 = v344;
        v293 = v581;
      }

      v350 = sub_10000DCA4(v341, v342, v343);
      if (v293)
      {
        v351 = 1;
      }

      else
      {
        v351 = v350 * v283 == 1;
      }

      v352 = !v351;
      if (v339 != v283 && v339 != v293 && (v293 | v283 || v339 == -1))
      {
        if (v350 == 1)
        {
          v390 = 2;
        }

        else
        {
          v390 = 1;
        }

        if (v293 == 1 || v283 == 1)
        {
          v392 = 1;
        }

        else
        {
          v392 = 2;
        }

        if (v352)
        {
          v392 = 3;
        }

        DWORD2(__dst[2]) = v390;
        LODWORD(__dst[14]) = v392;
        if (v352)
        {
          goto LABEL_849;
        }

        goto LABEL_592;
      }

      if ((v330 != 0) | v352 & 1)
      {
        if (v282)
        {
          if (v282 == v330 && v350 * v282 != -1)
          {
            if (v350 == 1)
            {
              v353 = 1;
            }

            else
            {
              v353 = 2;
            }

            if (v350 == 1)
            {
              v354 = 2;
            }

            else
            {
              v354 = 1;
            }

            if (v352)
            {
              v355 = 3;
            }

            else
            {
              v355 = v354;
            }

            DWORD2(__dst[2]) = v353;
            goto LABEL_734;
          }

          if (!(v330 + v350))
          {
            if (v350 == 1)
            {
              v441 = 2;
            }

            else
            {
              v441 = 1;
            }

            if (v350 == 1)
            {
              v442 = 1;
            }

            else
            {
              v442 = 2;
            }

LABEL_724:
            DWORD2(__dst[2]) = v441;
            LODWORD(__dst[14]) = v442;
LABEL_725:
            BYTE4(__dst[1]) = 1;
            goto LABEL_849;
          }

          if (v282 != -v350)
          {
            goto LABEL_849;
          }

          if (v350 == 1)
          {
            v466 = 2;
          }

          else
          {
            v466 = 1;
          }

          DWORD2(__dst[2]) = v466;
          LODWORD(__dst[14]) = v466;
          if (v352)
          {
            v355 = 3;
            goto LABEL_734;
          }

LABEL_592:
          BYTE4(__dst[1]) = 1;
          goto LABEL_849;
        }

        v429 = 3;
        if (v350 == 1)
        {
          v430 = 2;
        }

        else
        {
          v430 = 1;
        }

        if (v352)
        {
          v355 = 3;
        }

        else
        {
          v355 = v430;
        }

        goto LABEL_733;
      }

LABEL_726:
      v355 = 4;
      DWORD2(__dst[2]) = 4;
LABEL_734:
      LODWORD(__dst[14]) = v355;
      goto LABEL_849;
    }

    v315 = v612;
    v316 = *(v612 + 8);
    v317 = *(v612 + 16);
    if (*(v612 + 32) == 1)
    {
      v318 = *(v612 + 24);
    }

    else
    {
      v380 = v282;
      v318 = v317 + 2;
      v381 = *v612;
      v382 = *(*v612 + 8);
      if (v317 + 2 == v382)
      {
        v318 = (*v381 + 16);
      }

      v383 = *v317;
      v384 = v317[1];
      if (sub_10000B2C4(*v317, v384, *v318, v318[1]))
      {
        do
        {
          v318 += 2;
          if (v318 == v382)
          {
            v318 = (*v381 + 16);
          }
        }

        while (sub_10000B2C4(v383, v384, *v318, v318[1]));
      }

      *(v315 + 24) = v318;
      *(v315 + 32) = 1;
      v282 = v380;
    }

    v385 = sub_10000DCA4(v316, v317, v318);
    if (v385 == v283)
    {
      if (!v282)
      {
        if (v293 == 1)
        {
          v443 = 1;
        }

        else
        {
          v443 = 2;
        }

        DWORD2(__dst[2]) = 3;
        LODWORD(__dst[14]) = v443;
        goto LABEL_849;
      }

      if (v282 == v293)
      {
        if (v293 == 1)
        {
          v386 = 1;
        }

        else
        {
          v386 = 2;
        }

        DWORD2(__dst[2]) = v386;
        LODWORD(__dst[14]) = v386;
        goto LABEL_725;
      }
    }

    if (v385 == v293)
    {
      v387 = v613;
      v388 = *(v613 + 16);
      if (*(v613 + 32) == 1)
      {
        v389 = *(v613 + 24);
      }

      else
      {
        v389 = v388 + 2;
        v454 = *v613;
        v455 = *(*v613 + 8);
        if (v388 + 2 == v455)
        {
          v389 = (*v454 + 16);
        }

        v456 = *v388;
        v457 = v388[1];
        if (sub_10000B2C4(*v388, v457, *v389, v389[1]))
        {
          do
          {
            v389 += 2;
            if (v389 == v455)
            {
              v389 = (*v454 + 16);
            }
          }

          while (sub_10000B2C4(v456, v457, *v389, v389[1]));
        }

        *(v387 + 24) = v389;
        *(v387 + 32) = 1;
      }

      v458 = v612;
      if (*(v612 + 32) == 1)
      {
        v459 = *(v612 + 24);
      }

      else
      {
        v460 = *(v612 + 16);
        v459 = v460 + 2;
        v461 = *v612;
        v462 = *(*v612 + 8);
        if (v460 + 2 == v462)
        {
          v459 = (*v461 + 16);
        }

        v463 = *v460;
        v464 = v460[1];
        if (sub_10000B2C4(*v460, v464, *v459, v459[1]))
        {
          do
          {
            v459 += 2;
            if (v459 == v462)
            {
              v459 = (*v461 + 16);
            }
          }

          while (sub_10000B2C4(v463, v464, *v459, v459[1]));
        }

        *(v458 + 24) = v459;
        *(v458 + 32) = 1;
      }

      v465 = sub_10000DCA4(v388, v389, v459);
      if (!v465)
      {
        goto LABEL_726;
      }

      if (v465 == v293)
      {
        if (v293 == 1)
        {
          v441 = 1;
        }

        else
        {
          v441 = 2;
        }

        if (v293 == 1)
        {
          v442 = 2;
        }

        else
        {
          v442 = 1;
        }

        goto LABEL_724;
      }
    }

    if (v293 == 1)
    {
      v429 = 2;
    }

    else
    {
      v429 = 1;
    }

    if (v293 == 1)
    {
      v355 = 1;
    }

    else
    {
      v355 = 2;
    }

LABEL_733:
    DWORD2(__dst[2]) = v429;
    goto LABEL_734;
  }

  if (v622 == 99)
  {
    if ((v622 & 0x100) == 0)
    {
      v297 = *&v624[18];
      if (!*&v624[18])
      {
        sub_1000456E0(__dst, v616, &v611);
        LODWORD(__dst[1]) = 5;
        goto LABEL_849;
      }

      if (vabdd_f64(*&v618, *&v620[24]) >= 50.0)
      {
        v300 = *&v618 < *&v620[24];
      }

      else
      {
        v298 = *&v617 / *(&v617 + 1);
        v299 = *&v620[8] / *&v620[16];
        if (*&v617 / *(&v617 + 1) == *&v620[8] / *&v620[16])
        {
          v300 = 0;
        }

        else if (COERCE_UNSIGNED_INT64(fabs(*&v617 / *(&v617 + 1))) <= 0x7FEFFFFFFFFFFFFFLL && COERCE_UNSIGNED_INT64(fabs(*&v620[8] / *&v620[16])) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v467 = fabs(v298);
          v468 = fabs(v299);
          v469 = vabdd_f64(v298, v299);
          if (v467 < v468)
          {
            v467 = v468;
          }

          if (v467 < 1.0)
          {
            v467 = 1.0;
          }

          v300 = v469 > v467 * 2.22044605e-16;
        }

        else
        {
          v300 = 1;
        }

        if (v298 >= v299)
        {
          v300 = 0;
        }
      }

      LODWORD(__dst[1]) = 5;
      __dst[0] = *&v616[16 * v300 + 8];
      v470 = &v610[7 * v300];
      v471 = v470[15];
      *(&__dst[5] + 8) = *(v470 + 13);
      __dst[17] = *(v470 + 8);
      v472 = v470[18];
      *(&__dst[6] + 1) = v471;
      *&__dst[18] = v472;
      v473 = v612;
      v474 = *(v612 + 8);
      v475 = *(v612 + 16);
      if (*(v612 + 32) == 1)
      {
        v476 = *(v612 + 24);
      }

      else
      {
        v476 = v475 + 2;
        v477 = *v612;
        v478 = *(*v612 + 8);
        if (v475 + 2 == v478)
        {
          v476 = (*v477 + 16);
        }

        v479 = *v475;
        v480 = v475[1];
        if (sub_10000B2C4(*v475, v480, *v476, v476[1]))
        {
          do
          {
            v476 += 2;
            if (v476 == v478)
            {
              v476 = (*v477 + 16);
            }
          }

          while (sub_10000B2C4(v479, v480, *v476, v476[1]));
        }

        *(v473 + 24) = v476;
        *(v473 + 32) = 1;
      }

      v481 = sub_10000DCA4(v474, v475, v476);
      v482 = v613;
      v483 = *(v613 + 8);
      v484 = *(v613 + 16);
      if (*(v613 + 32) == 1)
      {
        v485 = *(v613 + 24);
      }

      else
      {
        v485 = v484 + 2;
        v486 = *v613;
        v487 = *(*v613 + 8);
        if (v484 + 2 == v487)
        {
          v485 = (*v486 + 16);
        }

        v488 = *v484;
        v489 = v484[1];
        if (sub_10000B2C4(*v484, v489, *v485, v485[1]))
        {
          do
          {
            v485 += 2;
            if (v485 == v487)
            {
              v485 = (*v486 + 16);
            }
          }

          while (sub_10000B2C4(v488, v489, *v485, v485[1]));
        }

        *(v482 + 24) = v485;
        *(v482 + 32) = 1;
        v21 = a6;
      }

      v490 = sub_10000DCA4(v483, v484, v485);
      v491 = v490;
      if (v297 == 1)
      {
        v492 = v481;
      }

      else
      {
        v492 = v490;
      }

      if (v492 * v297 == 1)
      {
        v493 = 1;
      }

      else
      {
        v493 = 2;
      }

      if (v492 * v297 == 1)
      {
        v494 = 2;
      }

      else
      {
        v494 = 1;
      }

      if (v492)
      {
        v495 = v494;
      }

      else
      {
        v493 = 4;
        v495 = 4;
      }

      DWORD2(__dst[2]) = v493;
      LODWORD(__dst[14]) = v495;
      if (v481)
      {
        v496 = *(a1 + 16);
      }

      else if (*(a1 + 32) == 1)
      {
        v496 = *(a1 + 24);
      }

      else
      {
        v497 = *(a1 + 16);
        v496 = v497 + 2;
        v498 = *a1;
        v499 = *(*a1 + 8);
        if (v497 + 2 == v499)
        {
          v496 = (*v498 + 16);
        }

        v500 = *v497;
        v501 = v497[1];
        if (sub_10000B2C4(*v497, v501, *v496, v496[1]))
        {
          do
          {
            v496 += 2;
            if (v496 == v499)
            {
              v496 = (*v498 + 16);
            }
          }

          while (sub_10000B2C4(v500, v501, *v496, v496[1]));
        }

        *(a1 + 24) = v496;
        *(a1 + 32) = 1;
      }

      v502 = __dst[0];
      *&__dst[7] = (*(__dst + 1) - v496[1]) * (*(__dst + 1) - v496[1]) + (*__dst - *v496) * (*__dst - *v496);
      if (v491)
      {
        v503 = *(a2 + 16);
      }

      else if (*(a2 + 32) == 1)
      {
        v503 = *(a2 + 24);
      }

      else
      {
        v504 = *(a2 + 16);
        v503 = v504 + 2;
        v505 = *a2;
        v506 = *(*a2 + 8);
        if (v504 + 2 == v506)
        {
          v503 = (*v505 + 16);
        }

        v507 = *v504;
        v508 = v504[1];
        if (sub_10000B2C4(*v504, v508, *v503, v503[1]))
        {
          do
          {
            v503 += 2;
            if (v503 == v506)
            {
              v503 = (*v505 + 16);
            }
          }

          while (sub_10000B2C4(v507, v508, *v503, v503[1]));
        }

        *(a2 + 24) = v503;
        *(a2 + 32) = 1;
      }

      *(&__dst[18] + 1) = (*(&v502 + 1) - v503[1]) * (*(&v502 + 1) - v503[1]) + (*&v502 - *v503) * (*&v502 - *v503);
      *&v627[0] = v21;
      sub_100045580(v627, __dst);
      return v21;
    }

    memcpy(v627, a3, sizeof(v627));
    v272 = *&v624[22];
    if (*&v624[18] == 1)
    {
      v273 = v612;
      v274 = *(v612 + 8);
      v275 = *(v612 + 16);
      if (*(v612 + 32) == 1)
      {
        v276 = *(v612 + 24);
      }

      else
      {
        v276 = v275 + 2;
        v393 = *v612;
        v394 = *(*v612 + 8);
        if (v275 + 2 == v394)
        {
          v276 = (*v393 + 16);
        }

        v395 = *v275;
        v396 = v275[1];
        if (sub_10000B2C4(*v275, v396, *v276, v276[1]))
        {
          do
          {
            v276 += 2;
            if (v276 == v394)
            {
              v276 = (*v393 + 16);
            }
          }

          while (sub_10000B2C4(v395, v396, *v276, v276[1]));
        }

        *(v273 + 24) = v276;
        *(v273 + 32) = 1;
      }

      v397 = sub_10000DCA4(v274, v275, v276);
      if (v397 == 1)
      {
        v398 = 2;
      }

      else
      {
        if (!v397)
        {
          goto LABEL_664;
        }

        v398 = 1;
      }

      LODWORD(v627[14]) = 3;
      DWORD2(v627[2]) = v398;
      LODWORD(v627[1]) = 5;
      *(&v627[6] + 1) = *v620;
      v627[0] = *&v616[24];
      *(&v627[5] + 8) = v619;
      v627[17] = *&v620[8];
      *&v627[18] = *&v620[24];
      v605[0] = v21;
      sub_100045580(v605, v627);
    }

LABEL_664:
    if (v272 == 1)
    {
      v431 = v613;
      v432 = *(v613 + 8);
      v433 = *(v613 + 16);
      if (*(v613 + 32) == 1)
      {
        v434 = *(v613 + 24);
      }

      else
      {
        v434 = v433 + 2;
        v435 = *v613;
        v436 = *(*v613 + 8);
        if (v433 + 2 == v436)
        {
          v434 = (*v435 + 16);
        }

        v437 = *v433;
        v438 = v433[1];
        if (sub_10000B2C4(*v433, v438, *v434, v434[1]))
        {
          do
          {
            v434 += 2;
            if (v434 == v436)
            {
              v434 = (*v435 + 16);
            }
          }

          while (sub_10000B2C4(v437, v438, *v434, v434[1]));
        }

        *(v431 + 24) = v434;
        *(v431 + 32) = 1;
      }

      v439 = sub_10000DCA4(v432, v433, v434);
      if (v439 == 1)
      {
        v440 = 2;
      }

      else
      {
        if (!v439)
        {
          return v21;
        }

        v440 = 1;
      }

      LODWORD(v627[14]) = v440;
      DWORD2(v627[2]) = 3;
      LODWORD(v627[1]) = 5;
      v627[0] = *&v616[8];
      *(&v627[5] + 8) = *&v616[40];
      *(&v627[6] + 1) = *&v616[56];
      v627[17] = v617;
      *&v627[18] = v618;
      v605[0] = v21;
      sub_100045580(v605, v627);
      return v21;
    }

    return v21;
  }

  if (v622 == 101 && (v622 & 0x100) == 0)
  {
    sub_1000456E0(__dst, v616, &v611);
    goto LABEL_849;
  }

  return v21;
}

uint64_t *sub_100045580(uint64_t *a1, void *__src)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = 0x84BDA12F684BDA13 * (v8 >> 4) + 1;
    if (v9 > 0x97B425ED097B42)
    {
      sub_10002E420();
    }

    v10 = 0x84BDA12F684BDA13 * ((v4 - v7) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x4BDA12F684BDA1)
    {
      v11 = 0x97B425ED097B42;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x97B425ED097B42)
      {
        operator new();
      }

      sub_10001A5DC();
    }

    v12 = (16 * (v8 >> 4));
    memcpy(v12, __src, 0x1B0uLL);
    v6 = v12 + 432;
    memcpy(&v12[-v8], v7, v8);
    *v3 = &v12[-v8];
    *(v3 + 8) = v12 + 432;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    memcpy(*(*a1 + 8), __src, 0x1B0uLL);
    v6 = (v5 + 432);
  }

  *(v3 + 8) = v6;
  return a1;
}

uint64_t sub_1000456E0(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = a2[10];
  v6 = a2[17];
  if (vabdd_f64(v5, v6) >= 50.0)
  {
    v10 = v5 < v6;
  }

  else
  {
    v7 = a2[8] / a2[9];
    v8 = a2[16];
    v9 = a2[15] / v8;
    if (v7 == v9)
    {
      v10 = 0;
    }

    else if (COERCE_UNSIGNED_INT64(fabs(a2[8] / a2[9])) <= 0x7FEFFFFFFFFFFFFFLL && COERCE_UNSIGNED_INT64(fabs(a2[15] / v8)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v11 = fabs(v7);
      v12 = fabs(v9);
      v13 = vabdd_f64(v7, v9);
      if (v11 < v12)
      {
        v11 = v12;
      }

      if (v11 < 1.0)
      {
        v11 = 1.0;
      }

      v10 = v13 > v11 * 2.22044605e-16;
    }

    else
    {
      v10 = 1;
    }

    if (v7 >= v9)
    {
      v10 = 0;
    }
  }

  *(a1 + 16) = 6;
  *a1 = *&a2[2 * v10 + 1];
  v14 = &a2[7 * v10];
  v15 = *(v14 + 5);
  *(a1 + 104) = v14[7];
  *(a1 + 88) = v15;
  v16 = *(v14 + 4);
  *(a1 + 288) = v14[10];
  *(a1 + 272) = v16;
  v17 = *(a3 + 16);
  v18 = *(v17 + 16);
  if (*(v17 + 32) == 1)
  {
    v19 = *(v17 + 24);
  }

  else
  {
    v19 = v18 + 2;
    v20 = *v17;
    v21 = *(*v17 + 8);
    if (v18 + 2 == v21)
    {
      v19 = (*v20 + 16);
    }

    v22 = *v18;
    v23 = v18[1];
    if (sub_10000B2C4(*v18, v23, *v19, v19[1]))
    {
      do
      {
        v19 += 2;
        if (v19 == v21)
        {
          v19 = (*v20 + 16);
        }
      }

      while (sub_10000B2C4(v22, v23, *v19, v19[1]));
    }

    *(v17 + 24) = v19;
    *(v17 + 32) = 1;
  }

  v24 = *(a3 + 8);
  if (*(v24 + 32) == 1)
  {
    v25 = *(v24 + 24);
  }

  else
  {
    v26 = *(v24 + 16);
    v25 = v26 + 2;
    v27 = *v24;
    v28 = *(*v24 + 8);
    if (v26 + 2 == v28)
    {
      v25 = (*v27 + 16);
    }

    v29 = *v26;
    v30 = v26[1];
    if (sub_10000B2C4(*v26, v30, *v25, v25[1]))
    {
      do
      {
        v25 += 2;
        if (v25 == v28)
        {
          v25 = (*v27 + 16);
        }
      }

      while (sub_10000B2C4(v29, v30, *v25, v25[1]));
    }

    *(v24 + 24) = v25;
    *(v24 + 32) = 1;
  }

  v31 = sub_10000DCA4(v18, v19, v25);
  v32 = *(a3 + 8);
  v33 = *(v32 + 8);
  v34 = *(v32 + 16);
  if (*(v32 + 32) == 1)
  {
    v35 = *(v32 + 24);
  }

  else
  {
    v35 = v34 + 2;
    v36 = *v32;
    v37 = *(*v32 + 8);
    if (v34 + 2 == v37)
    {
      v35 = (*v36 + 16);
    }

    v38 = *v34;
    v39 = v34[1];
    if (sub_10000B2C4(*v34, v39, *v35, v35[1]))
    {
      do
      {
        v35 += 2;
        if (v35 == v37)
        {
          v35 = (*v36 + 16);
        }
      }

      while (sub_10000B2C4(v38, v39, *v35, v35[1]));
    }

    *(v32 + 24) = v35;
    *(v32 + 32) = 1;
  }

  v40 = sub_10000DCA4(v33, v34, v35);
  v41 = *(a3 + 8);
  v42 = *(a3 + 16);
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  if (*(v42 + 32) == 1)
  {
    v45 = *(v42 + 24);
  }

  else
  {
    v46 = *(v42 + 16);
    v45 = v46 + 2;
    v47 = *v42;
    v48 = *(*v42 + 8);
    if (v46 + 2 == v48)
    {
      v45 = (*v47 + 16);
    }

    v49 = *v46;
    v50 = v46[1];
    if (sub_10000B2C4(*v46, v50, *v45, v45[1]))
    {
      do
      {
        v45 += 2;
        if (v45 == v48)
        {
          v45 = (*v47 + 16);
        }
      }

      while (sub_10000B2C4(v49, v50, *v45, v45[1]));
    }

    *(v42 + 24) = v45;
    *(v42 + 32) = 1;
  }

  result = sub_10000DCA4(v43, v44, v45);
  if (v31 || v40 != result)
  {
    if (result * v40 == -1)
    {
      v53 = v40 == -1;
    }

    else
    {
      v53 = v31 == -1;
    }

    if (v53)
    {
      v54 = 2;
    }

    else
    {
      v54 = 1;
    }

    *(a1 + 40) = v54;
    if (v53)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }
  }

  else
  {
    v52 = 4;
    *(a1 + 40) = 4;
  }

  *(a1 + 224) = v52;
  return result;
}

void sub_100045AA8(double *a1, double ***a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v8 = (*a1 + a1[2]) * 0.5;
  v9 = *(a1 + 1);
  v162 = *a1;
  v164 = *(&v9 + 1);
  v160[1] = *(&v162 + 1);
  v161 = v9;
  v163 = v8;
  v160[0] = v8;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  sub_100046524(&v162, v160, a2, &v157, &v154, &v151);
  v10 = *a3;
  v11 = a3[1];
  if (*a3 == v11)
  {
    v17 = 0;
  }

  else
  {
    do
    {
      v12 = *v10;
      v13 = sub_100046888(&v162, *v10);
      v14 = sub_100046888(v160, v12);
      if (v13 || v14)
      {
        if (v13 && v14)
        {
          v15 = &v142;
        }

        else
        {
          v15 = &v148;
        }

        if (v13)
        {
          v16 = v15;
        }

        else
        {
          v16 = &v145;
        }

        sub_100019324(v16, v10);
        v11 = a3[1];
      }

      ++v10;
    }

    while (v10 != v11);
    v17 = v142;
  }

  v18 = v151;
  v19 = v152;
  __p = v17;
  if (v151 == v152)
  {
    v21 = v143;
  }

  else
  {
    v20 = v152 - v151;
    v21 = v143;
    if ((v152 - v151) < 0x80 || a4 > 0x63 || (v143 - v17) < 0x79)
    {
      if (v17 != v143)
      {
        v22 = v151;
        do
        {
          v23 = v17;
          do
          {
            v24 = *v22;
            if (*(*v22 + 416) == 1)
            {
              v25 = *v23;
              v26 = **v23;
              if (v26 != 3 && v26 != 5)
              {
                v28 = *(v24 + 208);
                v29 = *(v25 + 1);
                if (v28 != v29)
                {
                  v30 = **(a5 + 8);
                  v31 = v30 + (v28 << 8);
                  v32 = *(v31 + 16) == v29 || *(v31 + 24) == v29;
                  if (!v32 || ((*v31 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v33 = *(v24 + 392);
                    if (v33 != v29)
                    {
                      v34 = v30 + (v33 << 8);
                      v35 = *(v34 + 16) == v29 || *(v34 + 24) == v29;
                      if (!v35 || ((*v34 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v24, v25, (v25 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v23;
          }

          while (v23 != v21);
          ++v22;
        }

        while (v22 != v19);
      }
    }

    else
    {
      v165 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v166 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v36 = v151;
      do
      {
        v37 = *v36++;
        sub_1000404A0(&v165, *v37, v37[1]);
      }

      while (v36 != v19);
      v38 = v165;
      v39 = v166;
      v17 = __p;
      if (__p != v21)
      {
        do
        {
          if (*(*v17 + 200) == 1)
          {
            sub_10001911C(&v165, (*v17 + 168));
          }

          ++v17;
        }

        while (v17 != v21);
        v38 = v165;
        v39 = v166;
        v17 = __p;
      }

      v140 = v38;
      v141 = v39;
      sub_100046A9C(v140.f64, &v151, &v142, a4 + 1, a5);
    }

    v41 = v148;
    v40 = v149;
    if ((v149 - v148) < 0x80 || (v146 - v145) < 0x80 || a4 > 0x63 || v20 < 0x79)
    {
      if (v148 != v149)
      {
        v42 = v18;
        do
        {
          v43 = v41;
          do
          {
            v44 = *v42;
            if (*(*v42 + 416) == 1)
            {
              v45 = *v43;
              v46 = **v43;
              if (v46 != 3 && v46 != 5)
              {
                v48 = *(v44 + 208);
                v49 = *(v45 + 1);
                if (v48 != v49)
                {
                  v50 = **(a5 + 8);
                  v51 = v50 + (v48 << 8);
                  v52 = *(v51 + 16) == v49 || *(v51 + 24) == v49;
                  if (!v52 || ((*v51 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v53 = *(v44 + 392);
                    if (v53 != v49)
                    {
                      v54 = v50 + (v53 << 8);
                      v55 = *(v54 + 16) == v49 || *(v54 + 24) == v49;
                      if (!v55 || ((*v54 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v44, v45, (v45 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v43;
          }

          while (v43 != v40);
          ++v42;
        }

        while (v42 != v19);
      }

      v56 = v145;
      v57 = v146;
      if (v145 != v146)
      {
        v58 = v18;
        do
        {
          v59 = v56;
          do
          {
            v60 = *v58;
            if (*(*v58 + 416) == 1)
            {
              v61 = *v59;
              v62 = **v59;
              if (v62 != 3 && v62 != 5)
              {
                v64 = *(v60 + 208);
                v65 = *(v61 + 1);
                if (v64 != v65)
                {
                  v66 = **(a5 + 8);
                  v67 = v66 + (v64 << 8);
                  v68 = *(v67 + 16) == v65 || *(v67 + 24) == v65;
                  if (!v68 || ((*v67 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v69 = *(v60 + 392);
                    if (v69 != v65)
                    {
                      v70 = v66 + (v69 << 8);
                      v71 = *(v70 + 16) == v65 || *(v70 + 24) == v65;
                      if (!v71 || ((*v70 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v60, v61, (v61 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v59;
          }

          while (v59 != v57);
          ++v58;
        }

        while (v58 != v19);
      }
    }

    else
    {
      v165 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v166 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v137 = v18;
      do
      {
        v138 = *v137++;
        sub_1000404A0(&v165, *v138, v138[1]);
      }

      while (v137 != v19);
      v140 = v165;
      v141 = v166;
      v17 = __p;
      sub_100046A9C(v140.f64, &v151, &v148, a4 + 1, a5);
      sub_100046A9C(v140.f64, &v151, &v145, a4 + 1, a5);
    }
  }

  v72 = v157;
  v73 = v158;
  v74 = v158 - v157;
  if (v17 != v21)
  {
    if (v74 < 0x80 || (v155 - v154) < 0x80 || a4 > 0x63 || (v21 - v17) < 0x79)
    {
      if (v157 != v158)
      {
        v75 = v157;
        do
        {
          v76 = v17;
          do
          {
            v77 = *v75;
            if (*(*v75 + 416) == 1)
            {
              v78 = *v76;
              v79 = **v76;
              if (v79 != 3 && v79 != 5)
              {
                v81 = *(v77 + 208);
                v82 = *(v78 + 1);
                if (v81 != v82)
                {
                  v83 = **(a5 + 8);
                  v84 = v83 + (v81 << 8);
                  v85 = *(v84 + 16) == v82 || *(v84 + 24) == v82;
                  if (!v85 || ((*v84 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v86 = *(v77 + 392);
                    if (v86 != v82)
                    {
                      v87 = v83 + (v86 << 8);
                      v88 = *(v87 + 16) == v82 || *(v87 + 24) == v82;
                      if (!v88 || ((*v87 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v77, v78, (v78 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v76;
          }

          while (v76 != v21);
          ++v75;
        }

        while (v75 != v73);
      }

      v89 = v154;
      v90 = v155;
      if (v154 != v155)
      {
        while (1)
        {
          v91 = *v89;
          if (*(*v89 + 416) == 1)
          {
            v92 = *v17;
            v93 = **v17;
            if (v93 != 3 && v93 != 5)
            {
              v95 = *(v91 + 208);
              v96 = *(v92 + 8);
              if (v95 != v96)
              {
                v97 = **(a5 + 8);
                v98 = v97 + (v95 << 8);
                v99 = *(v98 + 16) == v96 || *(v98 + 24) == v96;
                if (!v99 || ((*v98 - 3) & 0xFFFFFFFD) != 0)
                {
                  v100 = *(v91 + 392);
                  if (v100 != v96)
                  {
                    v101 = v97 + (v100 << 8);
                    v102 = *(v101 + 16) == v96 || *(v101 + 24) == v96;
                    if (!v102 || ((*v101 - 3) & 0xFFFFFFFD) != 0)
                    {
                      sub_100047524(a5, v91, v92, v92 + 96);
                    }
                  }
                }
              }
            }
          }

          if (++v17 == v21)
          {
            ++v89;
            v17 = __p;
            if (v89 == v90)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v165 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v166 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      do
      {
        if (*(*v17 + 200) == 1)
        {
          sub_10001911C(&v165, (*v17 + 168));
        }

        ++v17;
      }

      while (v17 != v21);
      v140 = v165;
      v141 = v166;
      sub_100046A9C(v140.f64, &v157, &v142, a4 + 1, a5);
      sub_100046A9C(v140.f64, &v154, &v142, a4 + 1, a5);
    }
  }

  if (v74 < 0x80 || a4 > 0x63 || (v149 - v148) < 0x79)
  {
    if (v72 != v73)
    {
      v103 = v148;
      v104 = v149;
      if (v148 != v149)
      {
        v105 = v72;
        do
        {
          v106 = v103;
          do
          {
            v107 = *v105;
            if (*(*v105 + 416) == 1)
            {
              v108 = *v106;
              v109 = **v106;
              if (v109 != 3 && v109 != 5)
              {
                v111 = *(v107 + 208);
                v112 = *(v108 + 1);
                if (v111 != v112)
                {
                  v113 = **(a5 + 8);
                  v114 = v113 + (v111 << 8);
                  v115 = *(v114 + 16) == v112 || *(v114 + 24) == v112;
                  if (!v115 || ((*v114 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v116 = *(v107 + 392);
                    if (v116 != v112)
                    {
                      v117 = v113 + (v116 << 8);
                      v118 = *(v117 + 16) == v112 || *(v117 + 24) == v112;
                      if (!v118 || ((*v117 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v107, v108, (v108 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v106;
          }

          while (v106 != v104);
          ++v105;
        }

        while (v105 != v73);
      }
    }
  }

  else
  {
    sub_100046A9C(&v162, &v157, &v148, a4 + 1, a5);
  }

  v119 = v154;
  v120 = v155;
  if ((v155 - v154) < 0x80 || a4 > 0x63 || (v146 - v145) < 0x79)
  {
    if (v154 != v155)
    {
      v121 = v145;
      v122 = v146;
      if (v145 != v146)
      {
        v123 = v154;
        do
        {
          v124 = v121;
          do
          {
            v125 = *v123;
            if (*(*v123 + 416) == 1)
            {
              v126 = *v124;
              v127 = **v124;
              if (v127 != 3 && v127 != 5)
              {
                v129 = *(v125 + 208);
                v130 = *(v126 + 1);
                if (v129 != v130)
                {
                  v131 = **(a5 + 8);
                  v132 = v131 + (v129 << 8);
                  v133 = *(v132 + 16) == v130 || *(v132 + 24) == v130;
                  if (!v133 || ((*v132 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v134 = *(v125 + 392);
                    if (v134 != v130)
                    {
                      v135 = v131 + (v134 << 8);
                      v136 = *(v135 + 16) == v130 || *(v135 + 24) == v130;
                      if (!v136 || ((*v135 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v125, v126, (v126 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v124;
          }

          while (v124 != v122);
          ++v123;
        }

        while (v123 != v120);
      }
    }
  }

  else
  {
    sub_100046A9C(v160, &v154, &v145, a4 + 1, a5);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v145)
  {
    operator delete(v145);
  }

  if (v148)
  {
    operator delete(v148);
  }

  if (v18)
  {
    operator delete(v18);
  }

  if (v119)
  {
    operator delete(v119);
  }

  if (v72)
  {

    operator delete(v72);
  }
}

void sub_1000464A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void sub_100046524(double *a1, double *a2, double ***a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      v14 = *v6;
      v15 = **v6;
      v16 = *a1;
      v17 = a1[2];
      v18 = v15 > v17 || v15 < v16;
      if (!v18 || v17 - v16 >= 360.0)
      {
LABEL_14:
        v23 = v14[1];
        v22 = v23 <= a1[3] && v23 >= a1[1];
        goto LABEL_17;
      }

      v19 = vabdd_f64(v15, v16);
      v20 = 180.0;
      if (v19 == 180.0)
      {
        goto LABEL_9;
      }

      v21 = v15 - v16;
      if (COERCE__INT64(fabs(v15 - v16)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v35 = fabs(v19 + -180.0);
        if (v19 < 180.0)
        {
          v19 = 180.0;
        }

        if (v19 < 1.0)
        {
          v19 = 1.0;
        }

        v36 = v35 > v19 * 2.22044605e-16;
        v20 = 180.0;
        if (!v36)
        {
          goto LABEL_9;
        }
      }

      if (v21 <= 180.0)
      {
        if (v21 < -180.0)
        {
          v20 = fmod(v21 + -180.0, 360.0) + 180.0;
LABEL_9:
          v21 = v20;
        }
      }

      else
      {
        v21 = fmod(v21 + 180.0, 360.0) + -180.0;
        v20 = 180.0;
        if (v21 == -180.0)
        {
          goto LABEL_9;
        }

        if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v37 = fabs(v21);
          v38 = fabs(v21 + 180.0);
          if (v37 < 180.0)
          {
            v37 = 180.0;
          }

          if (v37 < 1.0)
          {
            v37 = 1.0;
          }

          v36 = v38 > v37 * 2.22044605e-16;
          v20 = 180.0;
          if (!v36)
          {
            goto LABEL_9;
          }
        }
      }

      if (v21 < 0.0)
      {
        v21 = v21 + 360.0;
      }

      if (v16 + v21 <= v17)
      {
        goto LABEL_14;
      }

      v22 = 0;
LABEL_17:
      v24 = *a2;
      v25 = a2[2];
      v26 = v15 > v25 || v15 < v24;
      if (!v26 || v25 - v24 >= 360.0)
      {
        goto LABEL_30;
      }

      v27 = vabdd_f64(v15, v24);
      v28 = 180.0;
      if (v27 == 180.0)
      {
        goto LABEL_24;
      }

      v29 = v15 - v24;
      if (COERCE__INT64(fabs(v15 - v24)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v39 = fabs(v27 + -180.0);
        if (v27 < 180.0)
        {
          v27 = 180.0;
        }

        if (v27 < 1.0)
        {
          v27 = 1.0;
        }

        v36 = v39 > v27 * 2.22044605e-16;
        v28 = 180.0;
        if (!v36)
        {
          goto LABEL_24;
        }
      }

      if (v29 <= 180.0)
      {
        if (v29 < -180.0)
        {
          v28 = fmod(v29 + -180.0, 360.0) + 180.0;
LABEL_24:
          v29 = v28;
        }
      }

      else
      {
        v29 = fmod(v29 + 180.0, 360.0) + -180.0;
        v28 = 180.0;
        if (v29 == -180.0)
        {
          goto LABEL_24;
        }

        if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v40 = fabs(v29);
          v41 = fabs(v29 + 180.0);
          if (v40 < 180.0)
          {
            v40 = 180.0;
          }

          if (v40 < 1.0)
          {
            v40 = 1.0;
          }

          v36 = v41 > v40 * 2.22044605e-16;
          v28 = 180.0;
          if (!v36)
          {
            goto LABEL_24;
          }
        }
      }

      if (v29 < 0.0)
      {
        v29 = v29 + 360.0;
      }

      if (v24 + v29 > v25)
      {
        v30 = a4;
        if (!v22)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

LABEL_30:
      v31 = v14[1];
      v32 = v31 >= a2[1];
      if (v31 > a2[3])
      {
        v32 = 0;
      }

      if (v22 && v32)
      {
        v33 = a6;
      }

      else
      {
        v33 = a4;
      }

      v34 = v22 || v32;
      if (v22)
      {
        v30 = v33;
      }

      else
      {
        v30 = a5;
      }

      if (!v34)
      {
        goto LABEL_40;
      }

LABEL_39:
      sub_100019324(v30, v6);
      v7 = a3[1];
LABEL_40:
      ++v6;
    }

    while (v6 != v7);
  }
}

BOOL sub_100046888(double *a1, uint64_t a2)
{
  if (*a2 == 3 || *a2 == 5)
  {
    return 0;
  }

  if (*(a2 + 200) != 1)
  {
    return 0;
  }

  v6 = *a1;
  v7 = a1[2];
  if (v7 - *a1 >= 360.0)
  {
    return a1[3] >= *(a2 + 176) && a1[1] <= *(a2 + 192);
  }

  v8 = *(a2 + 168);
  v9 = *(a2 + 184);
  v10 = v9 - v8;
  if (v9 - v8 >= 360.0)
  {
    return a1[3] >= *(a2 + 176) && a1[1] <= *(a2 + 192);
  }

  v11 = vabdd_f64(v8, v6);
  v12 = 180.0;
  if (v11 == 180.0)
  {
    goto LABEL_11;
  }

  v13 = v8 - v6;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v16 = fabs(v11 + -180.0);
    v12 = 180.0;
    if (v11 < 180.0)
    {
      v11 = 180.0;
    }

    if (v11 < 1.0)
    {
      v11 = 1.0;
    }

    if (v16 <= v11 * 2.22044605e-16)
    {
      goto LABEL_11;
    }
  }

  v12 = 180.0;
  if (v13 <= 180.0)
  {
    if (v13 >= -180.0)
    {
      goto LABEL_12;
    }

    v12 = fmod(v13 + -180.0, 360.0) + 180.0;
LABEL_11:
    v13 = v12;
    goto LABEL_12;
  }

  v13 = fmod(v13 + 180.0, 360.0) + -180.0;
  if (v13 == -180.0)
  {
    goto LABEL_11;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v17 = fabs(v13);
    v12 = 180.0;
    v18 = fabs(v13 + 180.0);
    if (v17 < 180.0)
    {
      v17 = 180.0;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v18 <= v17 * 2.22044605e-16)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (v13 < 0.0)
  {
    v13 = v13 + 360.0;
  }

  v14 = v6 + v13;
  v15 = v10 + v6 + v13 + -360.0;
  if (vabdd_f64(v15, v9) < 180.0)
  {
    v15 = v9;
  }

  if (v14 > v7 && v15 < v6)
  {
    return 0;
  }

  return a1[3] >= *(a2 + 176) && a1[1] <= *(a2 + 192);
}

void sub_100046A9C(double *a1, double ***a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v8 = a1[1] + a1[3];
  v162 = *a1;
  v163 = *(a1 + 2);
  v9 = *(a1 + 1);
  *&v160[0] = v162;
  v161 = v9;
  v164 = v8 * 0.5;
  v160[1] = v8 * 0.5;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  sub_100046524(&v162, v160, a2, &v157, &v154, &v151);
  v10 = *a3;
  v11 = a3[1];
  if (*a3 == v11)
  {
    v17 = 0;
  }

  else
  {
    do
    {
      v12 = *v10;
      v13 = sub_100046888(&v162, *v10);
      v14 = sub_100046888(v160, v12);
      if (v13 || v14)
      {
        if (v13 && v14)
        {
          v15 = &v142;
        }

        else
        {
          v15 = &v148;
        }

        if (v13)
        {
          v16 = v15;
        }

        else
        {
          v16 = &v145;
        }

        sub_100019324(v16, v10);
        v11 = a3[1];
      }

      ++v10;
    }

    while (v10 != v11);
    v17 = v142;
  }

  v18 = v151;
  v19 = v152;
  __p = v17;
  if (v151 == v152)
  {
    v21 = v143;
  }

  else
  {
    v20 = v152 - v151;
    v21 = v143;
    if ((v152 - v151) < 0x80 || a4 > 0x63 || (v143 - v17) < 0x79)
    {
      if (v17 != v143)
      {
        v22 = v151;
        do
        {
          v23 = v17;
          do
          {
            v24 = *v22;
            if (*(*v22 + 416) == 1)
            {
              v25 = *v23;
              v26 = **v23;
              if (v26 != 3 && v26 != 5)
              {
                v28 = *(v24 + 208);
                v29 = *(v25 + 1);
                if (v28 != v29)
                {
                  v30 = **(a5 + 8);
                  v31 = v30 + (v28 << 8);
                  v32 = *(v31 + 16) == v29 || *(v31 + 24) == v29;
                  if (!v32 || ((*v31 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v33 = *(v24 + 392);
                    if (v33 != v29)
                    {
                      v34 = v30 + (v33 << 8);
                      v35 = *(v34 + 16) == v29 || *(v34 + 24) == v29;
                      if (!v35 || ((*v34 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v24, v25, (v25 + 24));
                      }
                    }
                  }
                }
              }
            }

            v23 += 8;
          }

          while (v23 != v21);
          ++v22;
        }

        while (v22 != v19);
      }
    }

    else
    {
      v165 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v166 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v36 = v151;
      do
      {
        v37 = *v36++;
        sub_1000404A0(&v165, *v37, v37[1]);
      }

      while (v36 != v19);
      v38 = v165;
      v39 = v166;
      v17 = __p;
      if (__p != v21)
      {
        do
        {
          if (*(*v17 + 200) == 1)
          {
            sub_10001911C(&v165, (*v17 + 168));
          }

          v17 += 8;
        }

        while (v17 != v21);
        v38 = v165;
        v39 = v166;
        v17 = __p;
      }

      v140 = v38;
      v141 = v39;
      sub_100045AA8(&v140, &v151, &v142, a4 + 1, a5);
    }

    v41 = v148;
    v40 = v149;
    if ((v149 - v148) < 0x80 || (v146 - v145) < 0x80 || a4 > 0x63 || v20 < 0x79)
    {
      if (v148 != v149)
      {
        v42 = v18;
        do
        {
          v43 = v41;
          do
          {
            v44 = *v42;
            if (*(*v42 + 416) == 1)
            {
              v45 = *v43;
              v46 = **v43;
              if (v46 != 3 && v46 != 5)
              {
                v48 = *(v44 + 208);
                v49 = *(v45 + 1);
                if (v48 != v49)
                {
                  v50 = **(a5 + 8);
                  v51 = v50 + (v48 << 8);
                  v52 = *(v51 + 16) == v49 || *(v51 + 24) == v49;
                  if (!v52 || ((*v51 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v53 = *(v44 + 392);
                    if (v53 != v49)
                    {
                      v54 = v50 + (v53 << 8);
                      v55 = *(v54 + 16) == v49 || *(v54 + 24) == v49;
                      if (!v55 || ((*v54 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v44, v45, (v45 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v43;
          }

          while (v43 != v40);
          ++v42;
        }

        while (v42 != v19);
      }

      v56 = v145;
      v57 = v146;
      if (v145 != v146)
      {
        v58 = v18;
        do
        {
          v59 = v56;
          do
          {
            v60 = *v58;
            if (*(*v58 + 416) == 1)
            {
              v61 = *v59;
              v62 = **v59;
              if (v62 != 3 && v62 != 5)
              {
                v64 = *(v60 + 208);
                v65 = *(v61 + 1);
                if (v64 != v65)
                {
                  v66 = **(a5 + 8);
                  v67 = v66 + (v64 << 8);
                  v68 = *(v67 + 16) == v65 || *(v67 + 24) == v65;
                  if (!v68 || ((*v67 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v69 = *(v60 + 392);
                    if (v69 != v65)
                    {
                      v70 = v66 + (v69 << 8);
                      v71 = *(v70 + 16) == v65 || *(v70 + 24) == v65;
                      if (!v71 || ((*v70 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v60, v61, (v61 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v59;
          }

          while (v59 != v57);
          ++v58;
        }

        while (v58 != v19);
      }
    }

    else
    {
      v165 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v166 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v137 = v18;
      do
      {
        v138 = *v137++;
        sub_1000404A0(&v165, *v138, v138[1]);
      }

      while (v137 != v19);
      v140 = v165;
      v141 = v166;
      v17 = __p;
      sub_100045AA8(&v140, &v151, &v148, a4 + 1, a5);
      sub_100045AA8(&v140, &v151, &v145, a4 + 1, a5);
    }
  }

  v72 = v157;
  v73 = v158;
  v74 = v158 - v157;
  if (v17 != v21)
  {
    if (v74 < 0x80 || (v155 - v154) < 0x80 || a4 > 0x63 || (v21 - v17) < 0x79)
    {
      if (v157 != v158)
      {
        v75 = v157;
        do
        {
          v76 = v17;
          do
          {
            v77 = *v75;
            if (*(*v75 + 416) == 1)
            {
              v78 = *v76;
              v79 = **v76;
              if (v79 != 3 && v79 != 5)
              {
                v81 = *(v77 + 208);
                v82 = *(v78 + 1);
                if (v81 != v82)
                {
                  v83 = **(a5 + 8);
                  v84 = v83 + (v81 << 8);
                  v85 = *(v84 + 16) == v82 || *(v84 + 24) == v82;
                  if (!v85 || ((*v84 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v86 = *(v77 + 392);
                    if (v86 != v82)
                    {
                      v87 = v83 + (v86 << 8);
                      v88 = *(v87 + 16) == v82 || *(v87 + 24) == v82;
                      if (!v88 || ((*v87 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v77, v78, (v78 + 24));
                      }
                    }
                  }
                }
              }
            }

            v76 += 8;
          }

          while (v76 != v21);
          ++v75;
        }

        while (v75 != v73);
      }

      v89 = v154;
      v90 = v155;
      if (v154 != v155)
      {
        while (1)
        {
          v91 = *v89;
          if (*(*v89 + 416) == 1)
          {
            v92 = *v17;
            v93 = **v17;
            if (v93 != 3 && v93 != 5)
            {
              v95 = *(v91 + 208);
              v96 = *(v92 + 8);
              if (v95 != v96)
              {
                v97 = **(a5 + 8);
                v98 = v97 + (v95 << 8);
                v99 = *(v98 + 16) == v96 || *(v98 + 24) == v96;
                if (!v99 || ((*v98 - 3) & 0xFFFFFFFD) != 0)
                {
                  v100 = *(v91 + 392);
                  if (v100 != v96)
                  {
                    v101 = v97 + (v100 << 8);
                    v102 = *(v101 + 16) == v96 || *(v101 + 24) == v96;
                    if (!v102 || ((*v101 - 3) & 0xFFFFFFFD) != 0)
                    {
                      sub_100047524(a5, v91, v92, v92 + 96);
                    }
                  }
                }
              }
            }
          }

          v17 += 8;
          if (v17 == v21)
          {
            ++v89;
            v17 = __p;
            if (v89 == v90)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v165 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v166 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      do
      {
        if (*(*v17 + 200) == 1)
        {
          sub_10001911C(&v165, (*v17 + 168));
        }

        v17 += 8;
      }

      while (v17 != v21);
      v140 = v165;
      v141 = v166;
      sub_100045AA8(&v140, &v157, &v142, a4 + 1, a5);
      sub_100045AA8(&v140, &v154, &v142, a4 + 1, a5);
    }
  }

  if (v74 < 0x80 || a4 > 0x63 || (v149 - v148) < 0x79)
  {
    if (v72 != v73)
    {
      v103 = v148;
      v104 = v149;
      if (v148 != v149)
      {
        v105 = v72;
        do
        {
          v106 = v103;
          do
          {
            v107 = *v105;
            if (*(*v105 + 416) == 1)
            {
              v108 = *v106;
              v109 = **v106;
              if (v109 != 3 && v109 != 5)
              {
                v111 = *(v107 + 208);
                v112 = *(v108 + 1);
                if (v111 != v112)
                {
                  v113 = **(a5 + 8);
                  v114 = v113 + (v111 << 8);
                  v115 = *(v114 + 16) == v112 || *(v114 + 24) == v112;
                  if (!v115 || ((*v114 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v116 = *(v107 + 392);
                    if (v116 != v112)
                    {
                      v117 = v113 + (v116 << 8);
                      v118 = *(v117 + 16) == v112 || *(v117 + 24) == v112;
                      if (!v118 || ((*v117 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v107, v108, (v108 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v106;
          }

          while (v106 != v104);
          ++v105;
        }

        while (v105 != v73);
      }
    }
  }

  else
  {
    sub_100045AA8(&v162, &v157, &v148, a4 + 1, a5);
  }

  v119 = v154;
  v120 = v155;
  if ((v155 - v154) < 0x80 || a4 > 0x63 || (v146 - v145) < 0x79)
  {
    if (v154 != v155)
    {
      v121 = v145;
      v122 = v146;
      if (v145 != v146)
      {
        v123 = v154;
        do
        {
          v124 = v121;
          do
          {
            v125 = *v123;
            if (*(*v123 + 416) == 1)
            {
              v126 = *v124;
              v127 = **v124;
              if (v127 != 3 && v127 != 5)
              {
                v129 = *(v125 + 208);
                v130 = *(v126 + 1);
                if (v129 != v130)
                {
                  v131 = **(a5 + 8);
                  v132 = v131 + (v129 << 8);
                  v133 = *(v132 + 16) == v130 || *(v132 + 24) == v130;
                  if (!v133 || ((*v132 - 3) & 0xFFFFFFFD) != 0)
                  {
                    v134 = *(v125 + 392);
                    if (v134 != v130)
                    {
                      v135 = v131 + (v134 << 8);
                      v136 = *(v135 + 16) == v130 || *(v135 + 24) == v130;
                      if (!v136 || ((*v135 - 3) & 0xFFFFFFFD) != 0)
                      {
                        sub_100047524(a5, v125, v126, (v126 + 24));
                      }
                    }
                  }
                }
              }
            }

            ++v124;
          }

          while (v124 != v122);
          ++v123;
        }

        while (v123 != v120);
      }
    }
  }

  else
  {
    sub_100045AA8(v160, &v154, &v145, a4 + 1, a5);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v145)
  {
    operator delete(v145);
  }

  if (v148)
  {
    operator delete(v148);
  }

  if (v18)
  {
    operator delete(v18);
  }

  if (v119)
  {
    operator delete(v119);
  }

  if (v72)
  {

    operator delete(v72);
  }
}

void sub_1000474A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void sub_100047524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a4 + 72);
  v10 = *(a4 + 88);
  v11 = *a2 > v10 || v8 < v9;
  if (v11 && v10 - v9 < 360.0)
  {
    v12 = vabdd_f64(v8, v9);
    v13 = 180.0;
    if (v12 != 180.0)
    {
      v14 = v8 - v9;
      if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_27;
      }

      v18 = fabs(v12 + -180.0);
      v13 = 180.0;
      if (v12 < 180.0)
      {
        v12 = 180.0;
      }

      if (v12 < 1.0)
      {
        v12 = 1.0;
      }

      if (v18 > v12 * 2.22044605e-16)
      {
LABEL_27:
        v13 = 180.0;
        if (v14 <= 180.0)
        {
          if (v14 >= -180.0)
          {
            goto LABEL_9;
          }

          v13 = fmod(v14 + -180.0, 360.0) + 180.0;
        }

        else
        {
          v14 = fmod(v14 + 180.0, 360.0) + -180.0;
          if (v14 != -180.0)
          {
            if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_9;
            }

            v19 = fabs(v14);
            v13 = 180.0;
            v20 = fabs(v14 + 180.0);
            if (v19 < 180.0)
            {
              v19 = 180.0;
            }

            if (v19 < 1.0)
            {
              v19 = 1.0;
            }

            if (v20 > v19 * 2.22044605e-16)
            {
LABEL_9:
              if (v14 < 0.0)
              {
                v14 = v14 + 360.0;
              }

              if (v9 + v14 > v10)
              {
                return;
              }

              goto LABEL_12;
            }
          }
        }
      }
    }

    v14 = v13;
    goto LABEL_9;
  }

LABEL_12:
  v15 = *(a2 + 8);
  if (v15 >= *(a4 + 80) && v15 <= *(a4 + 96))
  {
    if (*a3 != 4)
    {
      goto LABEL_37;
    }

    v17 = sub_10002E1D0((a3 + 240), a2);
    if (v17 < *(a4 + 112))
    {
      *(**a1 + 432 * *(a2 + 408) + 416) = 0;
      return;
    }

    if (v17 <= *(a4 + 120))
    {
LABEL_37:
      v21 = **(a1 + 16);
      v22 = fabs(v21);
      if (v21 < 0.0)
      {
        v21 = v22;
      }

      if (v21 == 0.0)
      {
        goto LABEL_40;
      }

      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_45;
      }

      v24 = fabs(v21);
      v25 = 1.0;
      if (v24 >= 1.0)
      {
        v25 = v24;
      }

      if (v24 <= v25 * 2.22044605e-16)
      {
LABEL_40:
        v23 = 1;
      }

      else
      {
LABEL_45:
        v23 = 0;
      }

      v68 = 0;
      v69 = 0.0;
      v70 = 0;
      v26 = *(a4 + 8);
      if (v26)
      {
        v28 = *(a4 + 16);
        v27 = *(a4 + 24);
        if (v28 < v27)
        {
          v29 = *(a4 + 64);
          if (v29)
          {
            v30 = *(a2 + 418);
            v31 = *v26;
            v32 = (v31 + 16 * v28);
            v33 = *v32;
            v34 = (v31 + 16 * v27);
            v71 = *(v34 - 1);
            v72 = v33;
            v35 = v23 | v30;
            if (v23 | v30)
            {
              v36 = 0;
            }

            else
            {
              v36 = 3;
            }

            if (v35)
            {
              v37 = 0;
            }

            else
            {
              v37 = 2;
            }

            if (v29 == 1)
            {
              v38 = *a2;
              v39 = *(a2 + 8);
              if (!sub_100047B10(&v71, (a4 + 32), v36, &v68, *a2, v39, 0.0) || (sub_100047B10((a4 + 32), &v72, v37, &v68, v38, v39, 0.0) & 1) == 0)
              {
LABEL_88:
                if (v68)
                {
                  v52 = v70;
                  if (v69 > 0.0001 || (v70 & 1) == 0)
                  {
                    v53 = **a1 + 432 * *(a2 + 408);
                    *(v53 + 416) = 0;
                    *(v53 + 417) = v52;
                  }
                }

                return;
              }
            }

            else if (v29 == 2)
            {
              v38 = *a2;
              v39 = *(a2 + 8);
              if (!sub_100047B10(&v71, (a4 + 32), v36, &v68, *a2, v39, 0.0) || !sub_100047B10((a4 + 32), (a4 + 48), v35 ^ 1u, &v68, v38, v39, 0.0) || !sub_100047B10((a4 + 48), &v72, v37, &v68, v38, v39, 0.0))
              {
                goto LABEL_88;
              }
            }

            else
            {
              v38 = *a2;
              v39 = *(a2 + 8);
            }

            v40 = 16 * v28;
            v41 = 16 * v27;
            v42 = v34 - 2;
            if (*(a4 + 106) == 1)
            {
              v43 = v41 - v40;
              if (v41 == v40 || (sub_100047C84(v38, v39, *v32, v32[1]) & 1) != 0 || (sub_100047C84(*v42, *(v34 - 1), v38, v39) & 1) != 0)
              {
                goto LABEL_88;
              }

              v44 = v43 >> 4;
              v45 = v32;
              v46 = v44;
              do
              {
                v47 = &v45[2 * (v46 >> 1)];
                v48 = sub_100047C84(*v47, v47[1], v38, v39);
                if (v48)
                {
                  v46 += ~(v46 >> 1);
                }

                else
                {
                  v46 >>= 1;
                }

                if (v48)
                {
                  v45 = v47 + 2;
                }
              }

              while (v46);
              v49 = v32;
              do
              {
                v50 = &v49[2 * (v44 >> 1)];
                if (sub_100047C84(v38, v39, *v50, v50[1]))
                {
                  v44 >>= 1;
                }

                else
                {
                  v49 = v50 + 2;
                  v44 += ~(v44 >> 1);
                }
              }

              while (v44);
            }

            else
            {
              if (*(a4 + 107) != 1)
              {
                goto LABEL_107;
              }

              v51 = v41 - v40;
              if (v41 == v40 || (sub_100047E90(v38, v39, *v32, v32[1]) & 1) != 0 || (sub_100047E90(*v42, *(v34 - 1), v38, v39) & 1) != 0)
              {
                goto LABEL_88;
              }

              v54 = v51 >> 4;
              v45 = v32;
              v55 = v54;
              do
              {
                v56 = &v45[2 * (v55 >> 1)];
                v57 = sub_100047E90(*v56, v56[1], v38, v39);
                if (v57)
                {
                  v55 += ~(v55 >> 1);
                }

                else
                {
                  v55 >>= 1;
                }

                if (v57)
                {
                  v45 = v56 + 2;
                }
              }

              while (v55);
              v49 = v32;
              do
              {
                v58 = &v49[2 * (v54 >> 1)];
                if (sub_100047E90(v38, v39, *v58, v58[1]))
                {
                  v54 >>= 1;
                }

                else
                {
                  v49 = v58 + 2;
                  v54 += ~(v54 >> 1);
                }
              }

              while (v54);
            }

            v59 = 0x1FFFFFFFFFFFFFFELL;
            if (v45 == v32)
            {
              v59 = 0;
            }

            v32 = &v45[v59];
            v34 = &v49[2 * (v34 != v49)];
LABEL_107:
            for (i = v32 + 2; i != v34; i += 2)
            {
              v61 = *(i - 2);
              v62 = *i;
              if (v61 >= v38 && v62 <= v38)
              {
                return;
              }

              if (v61 > v38 || v62 < v38)
              {
                if (v61 != v62)
                {
                  continue;
                }

                v65 = *(i - 1);
                v66 = i[1];
                v67 = v65 < v39 || v66 > v39;
                if (v67 && (v65 > v39 || v66 < v39))
                {
                  continue;
                }
              }

              return;
            }

            goto LABEL_88;
          }
        }
      }
    }
  }
}

uint64_t sub_100047B10(double *a1, double *a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v7 = *a1;
  v8 = *a2;
  if (*a1 < a5 || v8 > a5)
  {
    v10 = v8 >= a5 && v7 <= a5;
    if (a7 != 0.0)
    {
      goto LABEL_21;
    }

    if (!v10)
    {
      if (v7 != v8)
      {
        v10 = 0;
        goto LABEL_21;
      }

      v11 = a1[1];
      v12 = a2[1];
      if (v11 < a6 || v12 > a6)
      {
        v10 = 0;
        if (v11 > a6 || v12 < a6)
        {
LABEL_21:
          if (a7 < 0.0 && !a3)
          {
            v14 = -a7;
            if (*(a4 + 16) != 1 || *(a4 + 8) > v14)
            {
              *(a4 + 8) = v14;
              *(a4 + 16) = 1;
            }
          }

          v15 = 1;
          if (v10)
          {
            if (v8 == a5 || v7 == a5)
            {
              v17 = 1;
            }

            else
            {
              v17 = 2;
            }

            if (a7 < 0.0)
            {
              v17 = -v17;
            }

            v18 = *a4 + v17;
            goto LABEL_46;
          }

          return v15;
        }
      }
    }
  }

  else
  {
    v10 = 1;
    if (a7 != 0.0)
    {
      goto LABEL_21;
    }
  }

  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) != 2)
    {
      v15 = 0;
      v18 = 1;
LABEL_46:
      *a4 = v18;
      return v15;
    }

    v15 = 0;
    if (a3 == 2)
    {
      v19 = a2;
    }

    else
    {
      v19 = a1;
    }

    v20 = (v8 - v7) * a5 - (a1[1] - a2[1]) * a6 + (a1[1] - a2[1]) * v19[1] - (v8 - v7) * *v19;
    v21 = v20 < 0.0;
    if (v20 > 0.0)
    {
      v21 = 1;
    }

    *a4 = v21;
    *(a4 + 16) = 1;
    *(a4 + 8) = fabs(v20);
  }

  else
  {
    v15 = 0;
    *a4 = 0;
    *(a4 + 16) = 1;
    *(a4 + 8) = 0;
  }

  return v15;
}

uint64_t sub_100047C84(double a1, double a2, double a3, double a4)
{
  if (a1 == a3)
  {
    return 0;
  }

  v5 = fabs(a1);
  v6 = fabs(a3);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v8 = vabdd_f64(a1, a3);
      if (v5 >= v6)
      {
        v9 = v5;
      }

      else
      {
        v9 = v6;
      }

      if (v9 < 1.0)
      {
        v9 = 1.0;
      }

      if (v8 <= v9 * 2.22044605e-16)
      {
        return 0;
      }
    }

    if (v5 == 180.0)
    {
      v7 = 1;
    }

    else
    {
      v10 = fabs(v5 + -180.0);
      if (v5 < 180.0)
      {
        v5 = 180.0;
      }

      if (v5 < 1.0)
      {
        v5 = 1.0;
      }

      v7 = v10 <= v5 * 2.22044605e-16;
    }
  }

  else
  {
    v7 = v5 == 180.0;
  }

  if (v6 == 180.0)
  {
    v11 = 1;
  }

  else
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v11 = 0;
      goto LABEL_29;
    }

    v12 = fabs(v6 + -180.0);
    if (v6 < 180.0)
    {
      v6 = 180.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    v11 = v12 <= v6 * 2.22044605e-16;
  }

  if (v7 && v11)
  {
    return 0;
  }

LABEL_29:
  v13 = fabs(a2);
  if (a2 == a4)
  {
    goto LABEL_30;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v16 = fabs(a4);
    v17 = vabdd_f64(a2, a4);
    if (v13 >= v16)
    {
      v16 = v13;
    }

    if (v16 < 1.0)
    {
      v16 = 1.0;
    }

    if (v17 <= v16 * 2.22044605e-16)
    {
LABEL_30:
      v14 = 90.0;
      if (v13 != 90.0)
      {
        if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v15 = fabs(v13 + -90.0);
          if (v13 >= 90.0)
          {
            v14 = v13;
          }

          if (v14 < 1.0)
          {
            v14 = 1.0;
          }

          if (v15 <= v14 * 2.22044605e-16)
          {
            LOBYTE(v7) = 1;
          }
        }

        goto LABEL_45;
      }

      return 0;
    }
  }

LABEL_45:
  if (v7)
  {
    return 0;
  }

  return a1 < a3 || v11;
}

uint64_t sub_100047E90(double a1, double a2, double a3, double a4)
{
  if (a1 == a3)
  {
    return 0;
  }

  v5 = fabs(a1);
  v6 = fabs(a3);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v8 = vabdd_f64(a1, a3);
      if (v5 >= v6)
      {
        v9 = v5;
      }

      else
      {
        v9 = v6;
      }

      if (v9 < 1.0)
      {
        v9 = 1.0;
      }

      if (v8 <= v9 * 2.22044605e-16)
      {
        return 0;
      }
    }

    if (v5 == 180.0)
    {
      v7 = 1;
    }

    else
    {
      v10 = fabs(v5 + -180.0);
      if (v5 < 180.0)
      {
        v5 = 180.0;
      }

      if (v5 < 1.0)
      {
        v5 = 1.0;
      }

      v7 = v10 <= v5 * 2.22044605e-16;
    }
  }

  else
  {
    v7 = v5 == 180.0;
  }

  if (v6 == 180.0)
  {
    v11 = 1;
  }

  else
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v11 = 0;
      goto LABEL_29;
    }

    v12 = fabs(v6 + -180.0);
    if (v6 < 180.0)
    {
      v6 = 180.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    v11 = v12 <= v6 * 2.22044605e-16;
  }

  if (v7 && v11)
  {
    return 0;
  }

LABEL_29:
  v13 = fabs(a2);
  if (a2 != a4)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_47;
    }

    v17 = fabs(a4);
    v18 = vabdd_f64(a2, a4);
    if (v13 >= v17)
    {
      v17 = v13;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v18 > v17 * 2.22044605e-16)
    {
LABEL_47:
      if (v7)
      {
        return 1;
      }

      return a1 > a3 && !v11;
    }
  }

  v14 = 90.0;
  if (v13 == 90.0)
  {
    return 0;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  v15 = fabs(v13 + -90.0);
  if (v13 >= 90.0)
  {
    v14 = v13;
  }

  if (v14 < 1.0)
  {
    v14 = 1.0;
  }

  v16 = v14 * 2.22044605e-16;
  result = v15 > v16;
  if (v15 <= v16)
  {
    LOBYTE(v7) = 1;
  }

  if (!v7)
  {
    return a1 > a3 && !v11;
  }

  return result;
}

void sub_1000480B0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = *a1;
    v9 = v3 - *a1;
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3) + 1;
    if (v10 > 0x666666666666666)
    {
      sub_10002E420();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x666666666666666)
      {
        operator new();
      }

      sub_10001A5DC();
    }

    v13 = 8 * (v9 >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v7 = v13 + 40;
    v15 = v13 - v9;
    memcpy((v13 - v9), v8, v9);
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

void *sub_1000481E4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_16:
    operator new();
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = v2[4];
      if (v3 != v7)
      {
        if (v3 >= v7)
        {
          if (v7 >= v3)
          {
            return v6;
          }

          goto LABEL_15;
        }

        goto LABEL_12;
      }

      v8 = v6[5];
      if (v4 != v8)
      {
        break;
      }

      v9 = v6[6];
      if (v5 >= v9)
      {
        if (v9 >= v5)
        {
          return v6;
        }

        goto LABEL_15;
      }

LABEL_12:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    if (v4 < v8)
    {
      goto LABEL_12;
    }

    if (v8 >= v4)
    {
      return v6;
    }

LABEL_15:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_16;
    }
  }
}

void sub_100048314(unint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v8 = (a2 - 40);
  v1202 = (a2 - 80);
  v9 = (a2 - 120);
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v10) >> 3);
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v746 = *(a2 - 40);
        v745 = a2 - 40;
        v744 = v746;
        v747 = *(v745 + 32);
        v748 = *(v10 + 32);
        v749 = *(v747 + 8);
        v750 = *(v748 + 8);
        v751 = v749 < v750;
        if (v749 == v750)
        {
          v752 = *(v747 + 32);
          v753 = *(v748 + 32);
          if (v752 == v753 && *(v747 + 24) == *(v748 + 24) && *(v747 + 40) == *(v748 + 40) && *(v747 + 16) == *(v748 + 16))
          {
            v754 = *(v747 + 64);
            v755 = *(v748 + 64);
            if (vabdd_f64(v754, v755) >= 50.0)
            {
              goto LABEL_1409;
            }

            v754 = *(v747 + 48) / *(v747 + 56);
            v755 = *(v748 + 48) / *(v748 + 56);
            if (v754 == v755)
            {
              goto LABEL_940;
            }

            v1145 = fabs(*(v748 + 48) / *(v748 + 56));
            if (COERCE_UNSIGNED_INT64(fabs(*(v747 + 48) / *(v747 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v1145 > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_1409;
            }

            v1180 = fabs(v754);
            v1181 = fabs(v755);
            v1182 = vabdd_f64(v754, v755);
            if (v1180 < v1181)
            {
              v1180 = v1181;
            }

            if (v1180 < 1.0)
            {
              v1180 = 1.0;
            }

            if (v1182 <= v1180 * 2.22044605e-16)
            {
LABEL_940:
              if (v744 >= *v10)
              {
                return;
              }
            }

            else
            {
LABEL_1409:
              if (v754 >= v755)
              {
                return;
              }
            }

LABEL_1329:
            v1294 = *(v10 + 32);
            v1234 = *v10;
            v1268 = *(v10 + 16);
            v1066 = *v745;
            v1067 = *(v745 + 16);
            *(v10 + 32) = *(v745 + 32);
            *v10 = v1066;
            *(v10 + 16) = v1067;
            *(v745 + 32) = v1294;
            *v745 = v1234;
            *(v745 + 16) = v1268;
            return;
          }

          v1060 = *(v747 + 16);
          v1061 = *(v748 + 16);
          v751 = v1060 < v1061;
          if (v1060 == v1061)
          {
            v1062 = *(v747 + 24);
            v1063 = *(v748 + 24);
            v751 = v1062 < v1063;
            if (v1062 == v1063)
            {
              v1064 = *(v747 + 40);
              v1065 = *(v748 + 40);
              v751 = v1064 < v1065;
              if (v1064 == v1065)
              {
                v751 = v752 < v753;
              }
            }
          }
        }

        if (!v751)
        {
          return;
        }

        goto LABEL_1329;
      }

      goto LABEL_9;
    }

    switch(v12)
    {
      case 3:
        v756 = (v10 + 40);
        v757 = *(v10 + 40);
        v758 = *(v10 + 72);
        v759 = *(v10 + 32);
        v760 = *(v758 + 8);
        v761 = *(v759 + 8);
        v762 = v760 < v761;
        if (v760 != v761)
        {
          goto LABEL_1335;
        }

        v763 = *(v758 + 32);
        v764 = *(v759 + 32);
        if (v763 == v764 && *(v758 + 24) == *(v759 + 24) && *(v758 + 40) == *(v759 + 40) && *(v758 + 16) == *(v759 + 16))
        {
          v765 = *(v758 + 64);
          v766 = *(v759 + 64);
          if (vabdd_f64(v765, v766) >= 50.0)
          {
            goto LABEL_1415;
          }

          v765 = *(v758 + 48) / *(v758 + 56);
          v766 = *(v759 + 48) / *(v759 + 56);
          if (v765 == v766)
          {
            goto LABEL_949;
          }

          v1147 = fabs(*(v759 + 48) / *(v759 + 56));
          if (COERCE_UNSIGNED_INT64(fabs(*(v758 + 48) / *(v758 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v1147 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_1415;
          }

          v1185 = fabs(v765);
          v1186 = fabs(v766);
          v1187 = vabdd_f64(v765, v766);
          if (v1185 < v1186)
          {
            v1185 = v1186;
          }

          if (v1185 < 1.0)
          {
            v1185 = 1.0;
          }

          if (v1187 <= v1185 * 2.22044605e-16)
          {
LABEL_949:
            v767 = v757 < *v10;
          }

          else
          {
LABEL_1415:
            v767 = v765 < v766;
          }

          goto LABEL_1338;
        }

        v1068 = *(v758 + 16);
        v1069 = *(v759 + 16);
        v762 = v1068 < v1069;
        if (v1068 != v1069 || (v1070 = *(v758 + 24), v1071 = *(v759 + 24), v762 = v1070 < v1071, v1070 != v1071))
        {
LABEL_1335:
          v767 = v762;
          goto LABEL_1338;
        }

        v1072 = *(v758 + 40);
        v1073 = *(v759 + 40);
        v1074 = v763 < v764;
        v769 = v1072 == v1073;
        v767 = v1072 < v1073;
        if (v769)
        {
          v767 = v1074;
        }

LABEL_1338:
        v1075 = *(a2 - 8);
        v1076 = *(v1075 + 8);
        v1077 = v1076 < v760;
        if (v1076 == v760)
        {
          v1078 = *(v1075 + 32);
          v1079 = *(v758 + 32);
          if (v1078 == v1079 && *(v1075 + 24) == *(v758 + 24) && *(v1075 + 40) == *(v758 + 40) && *(v1075 + 16) == *(v758 + 16))
          {
            v1080 = *(v1075 + 64);
            v1081 = *(v758 + 64);
            if (vabdd_f64(v1080, v1081) >= 50.0)
            {
              goto LABEL_1420;
            }

            v1080 = *(v1075 + 48) / *(v1075 + 56);
            v1081 = *(v758 + 48) / *(v758 + 56);
            if (v1080 != v1081)
            {
              v1149 = fabs(*(v758 + 48) / *(v758 + 56));
              if (COERCE_UNSIGNED_INT64(fabs(*(v1075 + 48) / *(v1075 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v1149 > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_1420;
              }

              v1188 = fabs(v1080);
              v1189 = fabs(v1081);
              v1190 = vabdd_f64(v1080, v1081);
              if (v1188 < v1189)
              {
                v1188 = v1189;
              }

              if (v1188 < 1.0)
              {
                v1188 = 1.0;
              }

              if (v1190 > v1188 * 2.22044605e-16)
              {
LABEL_1420:
                v1082 = v1080 < v1081;
                if (!v767)
                {
                  goto LABEL_1421;
                }

LABEL_1357:
                if (v1082)
                {
                  v1295 = *(v10 + 32);
                  v1235 = *v10;
                  v1269 = *(v10 + 16);
                  v1090 = *v8;
                  v1091 = *(a2 - 24);
                  *(v10 + 32) = *(a2 - 8);
                  *v10 = v1090;
                  *(v10 + 16) = v1091;
                  v1092 = v1235;
                  v1093 = v1269;
                  *(a2 - 8) = v1295;
LABEL_1398:
                  *v8 = v1092;
                  *(a2 - 24) = v1093;
                  return;
                }

                v1296 = *(v10 + 32);
                v1236 = *v10;
                v1270 = *(v10 + 16);
                v1094 = *(v10 + 56);
                *v10 = *v756;
                *(v10 + 16) = v1094;
                *(v10 + 32) = *(v10 + 72);
                *v756 = v1236;
                *(v10 + 56) = v1270;
                *(v10 + 72) = v1296;
                v1095 = *(a2 - 8);
                v1096 = *(v10 + 72);
                v1097 = *(v1095 + 8);
                v1098 = *(v1096 + 8);
                v1099 = v1097 < v1098;
                if (v1097 == v1098)
                {
                  v1100 = *(v1095 + 32);
                  v1101 = *(v1096 + 32);
                  if (v1100 == v1101 && *(v1095 + 24) == *(v1096 + 24) && *(v1095 + 40) == *(v1096 + 40) && *(v1095 + 16) == *(v1096 + 16))
                  {
                    v1102 = *(v1095 + 64);
                    v1103 = *(v1096 + 64);
                    if (vabdd_f64(v1102, v1103) >= 50.0)
                    {
                      goto LABEL_1470;
                    }

                    v1102 = *(v1095 + 48) / *(v1095 + 56);
                    v1103 = *(v1096 + 48) / *(v1096 + 56);
                    if (v1102 == v1103)
                    {
                      goto LABEL_1366;
                    }

                    v1183 = fabs(*(v1096 + 48) / *(v1096 + 56));
                    if (COERCE_UNSIGNED_INT64(fabs(*(v1095 + 48) / *(v1095 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v1183 > 0x7FEFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_1470;
                    }

                    v1196 = fabs(v1102);
                    v1197 = fabs(v1103);
                    v1198 = vabdd_f64(v1102, v1103);
                    if (v1196 < v1197)
                    {
                      v1196 = v1197;
                    }

                    if (v1196 < 1.0)
                    {
                      v1196 = 1.0;
                    }

                    if (v1198 <= v1196 * 2.22044605e-16)
                    {
LABEL_1366:
                      if (*(a2 - 40) >= *(v10 + 40))
                      {
                        return;
                      }
                    }

                    else
                    {
LABEL_1470:
                      if (v1102 >= v1103)
                      {
                        return;
                      }
                    }

                    goto LABEL_1397;
                  }

                  v1134 = *(v1095 + 16);
                  v1135 = *(v1096 + 16);
                  v1099 = v1134 < v1135;
                  if (v1134 == v1135)
                  {
                    v1136 = *(v1095 + 24);
                    v1137 = *(v1096 + 24);
                    v1099 = v1136 < v1137;
                    if (v1136 == v1137)
                    {
                      v1138 = *(v1095 + 40);
                      v1139 = *(v1096 + 40);
                      v1099 = v1138 < v1139;
                      if (v1138 == v1139)
                      {
                        v1099 = v1100 < v1101;
                      }
                    }
                  }
                }

                if (!v1099)
                {
                  return;
                }

LABEL_1397:
                v1092 = *v756;
                v1093 = *(v10 + 56);
                v1140 = *(v10 + 72);
                v1142 = *v8;
                v1141 = *(a2 - 24);
                *(v10 + 72) = *(a2 - 8);
                *v756 = v1142;
                *(v10 + 56) = v1141;
                *(a2 - 8) = v1140;
                goto LABEL_1398;
              }
            }

            v1082 = *(a2 - 40) < v757;
            if (v767)
            {
              goto LABEL_1357;
            }

LABEL_1421:
            if (!v1082)
            {
              return;
            }

            v1151 = *v756;
            v1272 = *(v10 + 56);
            v1152 = *(v10 + 72);
            v1154 = *v8;
            v1153 = *(a2 - 24);
            *(v10 + 72) = *(a2 - 8);
            *v756 = v1154;
            *(v10 + 56) = v1153;
            *(a2 - 8) = v1152;
            *v8 = v1151;
            *(a2 - 24) = v1272;
            v1155 = *(v10 + 72);
            v1156 = *(v10 + 32);
            v1157 = *(v1155 + 8);
            v1158 = *(v1156 + 8);
            v1159 = v1157 < v1158;
            if (v1157 == v1158)
            {
              v1160 = *(v1155 + 32);
              v1161 = *(v1156 + 32);
              if (v1160 == v1161 && *(v1155 + 24) == *(v1156 + 24) && *(v1155 + 40) == *(v1156 + 40) && *(v1155 + 16) == *(v1156 + 16))
              {
                v1162 = *(v1155 + 64);
                v1163 = *(v1156 + 64);
                if (vabdd_f64(v1162, v1163) >= 50.0)
                {
                  goto LABEL_1488;
                }

                v1162 = *(v1155 + 48) / *(v1155 + 56);
                v1163 = *(v1156 + 48) / *(v1156 + 56);
                if (v1162 == v1163)
                {
                  goto LABEL_1429;
                }

                v1191 = fabs(*(v1156 + 48) / *(v1156 + 56));
                if (COERCE_UNSIGNED_INT64(fabs(*(v1155 + 48) / *(v1155 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v1191 > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_1488;
                }

                v1199 = fabs(v1162);
                v1200 = fabs(v1163);
                v1201 = vabdd_f64(v1162, v1163);
                if (v1199 < v1200)
                {
                  v1199 = v1200;
                }

                if (v1199 < 1.0)
                {
                  v1199 = 1.0;
                }

                if (v1201 <= v1199 * 2.22044605e-16)
                {
LABEL_1429:
                  if (*(v10 + 40) >= *v10)
                  {
                    return;
                  }
                }

                else
                {
LABEL_1488:
                  if (v1162 >= v1163)
                  {
                    return;
                  }
                }

LABEL_1437:
                v1298 = *(v10 + 32);
                v1238 = *v10;
                v1273 = *(v10 + 16);
                v1170 = *(v10 + 56);
                *v10 = *v756;
                *(v10 + 16) = v1170;
                *(v10 + 32) = *(v10 + 72);
                *v756 = v1238;
                *(v10 + 56) = v1273;
                *(v10 + 72) = v1298;
                return;
              }

              v1164 = *(v1155 + 16);
              v1165 = *(v1156 + 16);
              v1159 = v1164 < v1165;
              if (v1164 == v1165)
              {
                v1166 = *(v1155 + 24);
                v1167 = *(v1156 + 24);
                v1159 = v1166 < v1167;
                if (v1166 == v1167)
                {
                  v1168 = *(v1155 + 40);
                  v1169 = *(v1156 + 40);
                  v1159 = v1168 < v1169;
                  if (v1168 == v1169)
                  {
                    v1159 = v1160 < v1161;
                  }
                }
              }
            }

            if (!v1159)
            {
              return;
            }

            goto LABEL_1437;
          }

          v1083 = *(v1075 + 16);
          v1084 = *(v758 + 16);
          v1077 = v1083 < v1084;
          if (v1083 == v1084)
          {
            v1085 = *(v1075 + 24);
            v1086 = *(v758 + 24);
            v1077 = v1085 < v1086;
            if (v1085 == v1086)
            {
              v1087 = *(v1075 + 40);
              v1088 = *(v758 + 40);
              v1089 = v1078 < v1079;
              v769 = v1087 == v1088;
              v1082 = v1087 < v1088;
              if (v769)
              {
                v1082 = v1089;
              }

              if (v767)
              {
                goto LABEL_1357;
              }

              goto LABEL_1421;
            }
          }
        }

        v1082 = v1077;
        if (v767)
        {
          goto LABEL_1357;
        }

        goto LABEL_1421;
      case 4:

        sub_10004CED8(v10, (v10 + 40), v10 + 80, a2 - 40, a5);
        return;
      case 5:
        sub_10004CED8(v10, (v10 + 40), v10 + 80, v10 + 120, a5);
        v734 = *(a2 - 40);
        v733 = a2 - 40;
        v732 = v734;
        v735 = *(v733 + 32);
        v736 = *(v10 + 152);
        v737 = *(v735 + 8);
        v738 = *(v736 + 8);
        v739 = v737 < v738;
        if (v737 == v738)
        {
          v740 = *(v735 + 32);
          v741 = *(v736 + 32);
          if (v740 == v741 && *(v735 + 24) == *(v736 + 24) && *(v735 + 40) == *(v736 + 40) && *(v735 + 16) == *(v736 + 16))
          {
            v742 = *(v735 + 64);
            v743 = *(v736 + 64);
            if (vabdd_f64(v742, v743) >= 50.0)
            {
              goto LABEL_1403;
            }

            v742 = *(v735 + 48) / *(v735 + 56);
            v743 = *(v736 + 48) / *(v736 + 56);
            if (v742 == v743)
            {
              goto LABEL_931;
            }

            v1143 = fabs(*(v736 + 48) / *(v736 + 56));
            if (COERCE_UNSIGNED_INT64(fabs(*(v735 + 48) / *(v735 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v1143 > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_1403;
            }

            v1177 = fabs(v742);
            v1178 = fabs(v743);
            v1179 = vabdd_f64(v742, v743);
            if (v1177 < v1178)
            {
              v1177 = v1178;
            }

            if (v1177 < 1.0)
            {
              v1177 = 1.0;
            }

            if (v1179 <= v1177 * 2.22044605e-16)
            {
LABEL_931:
              if (v732 >= *(v10 + 120))
              {
                return;
              }
            }

            else
            {
LABEL_1403:
              if (v742 >= v743)
              {
                return;
              }
            }

LABEL_1314:
            v1233 = *(v10 + 120);
            v1267 = *(v10 + 136);
            v1048 = *(v10 + 152);
            v1050 = *v733;
            v1049 = *(v733 + 16);
            *(v10 + 152) = *(v733 + 32);
            *(v10 + 120) = v1050;
            *(v10 + 136) = v1049;
            *(v733 + 32) = v1048;
            *v733 = v1233;
            *(v733 + 16) = v1267;
            v1051 = *(v10 + 152);
            v1052 = *(v10 + 112);
            v1053 = *(v1051 + 8);
            v1054 = *(v1052 + 8);
            v1055 = v1053 < v1054;
            if (v1053 == v1054)
            {
              v1056 = *(v1051 + 32);
              v1057 = *(v1052 + 32);
              if (v1056 == v1057 && *(v1051 + 24) == *(v1052 + 24) && *(v1051 + 40) == *(v1052 + 40) && *(v1051 + 16) == *(v1052 + 16))
              {
                v1058 = *(v1051 + 64);
                v1059 = *(v1052 + 64);
                if (vabdd_f64(v1058, v1059) >= 50.0)
                {
                  goto LABEL_1443;
                }

                v1058 = *(v1051 + 48) / *(v1051 + 56);
                v1059 = *(v1052 + 48) / *(v1052 + 56);
                if (v1058 == v1059)
                {
                  goto LABEL_1321;
                }

                v1171 = fabs(*(v1052 + 48) / *(v1052 + 56));
                if (COERCE_UNSIGNED_INT64(fabs(*(v1051 + 48) / *(v1051 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v1171 > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_1443;
                }

                v1193 = fabs(v1058);
                v1194 = fabs(v1059);
                v1195 = vabdd_f64(v1058, v1059);
                if (v1193 < v1194)
                {
                  v1193 = v1194;
                }

                if (v1193 < 1.0)
                {
                  v1193 = 1.0;
                }

                if (v1195 <= v1193 * 2.22044605e-16)
                {
LABEL_1321:
                  if (*(v10 + 120) >= *(v10 + 80))
                  {
                    return;
                  }
                }

                else
                {
LABEL_1443:
                  if (v1058 >= v1059)
                  {
                    return;
                  }
                }

LABEL_1374:
                v1110 = *(v10 + 112);
                v1112 = *(v10 + 80);
                v1111 = *(v10 + 96);
                v1113 = *(v10 + 136);
                *(v10 + 80) = *(v10 + 120);
                *(v10 + 96) = v1113;
                *(v10 + 112) = *(v10 + 152);
                *(v10 + 120) = v1112;
                *(v10 + 136) = v1111;
                *(v10 + 152) = v1110;
                v1114 = *(v10 + 112);
                v1115 = *(v10 + 72);
                v1116 = *(v1114 + 8);
                v1117 = *(v1115 + 8);
                v1118 = v1116 < v1117;
                if (v1116 == v1117)
                {
                  v1119 = *(v1114 + 32);
                  v1120 = *(v1115 + 32);
                  if (v1119 == v1120 && *(v1114 + 24) == *(v1115 + 24) && *(v1114 + 40) == *(v1115 + 40) && *(v1114 + 16) == *(v1115 + 16))
                  {
                    v1121 = *(v1114 + 64);
                    v1122 = *(v1115 + 64);
                    if (vabdd_f64(v1121, v1122) >= 50.0)
                    {
                      goto LABEL_1452;
                    }

                    v1121 = *(v1114 + 48) / *(v1114 + 56);
                    v1122 = *(v1115 + 48) / *(v1115 + 56);
                    if (v1121 == v1122)
                    {
                      goto LABEL_1381;
                    }

                    v1173 = fabs(*(v1114 + 48) / *(v1114 + 56));
                    if ((*&v1121 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(*(v1115 + 48) / *(v1115 + 56))) > 0x7FEFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_1452;
                    }

                    v1174 = fabs(v1121);
                    v1175 = fabs(v1122);
                    v1176 = vabdd_f64(v1121, v1122);
                    if (v1174 < v1175)
                    {
                      v1174 = v1175;
                    }

                    if (v1174 < 1.0)
                    {
                      v1174 = 1.0;
                    }

                    if (v1176 <= v1174 * 2.22044605e-16)
                    {
LABEL_1381:
                      if (*(v10 + 80) >= *(v10 + 40))
                      {
                        return;
                      }
                    }

                    else
                    {
LABEL_1452:
                      if (v1121 >= v1122)
                      {
                        return;
                      }
                    }

                    goto LABEL_1389;
                  }

                  v1123 = *(v1114 + 16);
                  v1124 = *(v1115 + 16);
                  v1118 = v1123 < v1124;
                  if (v1123 == v1124)
                  {
                    v1125 = *(v1114 + 24);
                    v1126 = *(v1115 + 24);
                    v1118 = v1125 < v1126;
                    if (v1125 == v1126)
                    {
                      v1127 = *(v1114 + 40);
                      v1128 = *(v1115 + 40);
                      v1118 = v1127 < v1128;
                      if (v1127 == v1128)
                      {
                        v1118 = v1119 < v1120;
                      }
                    }
                  }
                }

                if (!v1118)
                {
                  return;
                }

LABEL_1389:
                v1129 = *(v10 + 72);
                v1130 = *(v10 + 40);
                v1131 = *(v10 + 96);
                *(v10 + 40) = *(v10 + 80);
                v1132 = *(v10 + 56);
                *(v10 + 56) = v1131;
                *(v10 + 72) = *(v10 + 112);
                *(v10 + 80) = v1130;
                *(v10 + 96) = v1132;
                *(v10 + 112) = v1129;
                if (sub_10004CD9C(*(v10 + 40), *(v10 + 72), *v10, *(v10 + 32)))
                {
                  v1297 = *(v10 + 32);
                  v1237 = *v10;
                  v1271 = *(v10 + 16);
                  v1133 = *(v10 + 56);
                  *v10 = *(v10 + 40);
                  *(v10 + 16) = v1133;
                  *(v10 + 32) = *(v10 + 72);
                  *(v10 + 40) = v1237;
                  *(v10 + 56) = v1271;
                  *(v10 + 72) = v1297;
                }

                return;
              }

              v1104 = *(v1051 + 16);
              v1105 = *(v1052 + 16);
              v1055 = v1104 < v1105;
              if (v1104 == v1105)
              {
                v1106 = *(v1051 + 24);
                v1107 = *(v1052 + 24);
                v1055 = v1106 < v1107;
                if (v1106 == v1107)
                {
                  v1108 = *(v1051 + 40);
                  v1109 = *(v1052 + 40);
                  v1055 = v1108 < v1109;
                  if (v1108 == v1109)
                  {
                    v1055 = v1056 < v1057;
                  }
                }
              }
            }

            if (!v1055)
            {
              return;
            }

            goto LABEL_1374;
          }

          v1042 = *(v735 + 16);
          v1043 = *(v736 + 16);
          v739 = v1042 < v1043;
          if (v1042 == v1043)
          {
            v1044 = *(v735 + 24);
            v1045 = *(v736 + 24);
            v739 = v1044 < v1045;
            if (v1044 == v1045)
            {
              v1046 = *(v735 + 40);
              v1047 = *(v736 + 40);
              v739 = v1046 < v1047;
              if (v1046 == v1047)
              {
                v739 = v740 < v741;
              }
            }
          }
        }

        if (!v739)
        {
          return;
        }

        goto LABEL_1314;
    }

LABEL_9:
    if (v11 <= 959)
    {
      break;
    }

    if (!a3)
    {
      if (v10 == a2)
      {
        return;
      }

      v821 = (v12 - 2) >> 1;
      v822 = v821;
LABEL_1028:
      v823 = v822;
      if (v821 < v822)
      {
        goto LABEL_1124;
      }

      v824 = (2 * v822) | 1;
      v825 = v10 + 40 * v824;
      if (2 * v823 + 2 < v12)
      {
        v826 = *(v825 + 32);
        v827 = *(v825 + 72);
        v828 = *(v826 + 8);
        v829 = *(v827 + 8);
        v830 = v828 < v829;
        if (v828 != v829)
        {
          goto LABEL_1043;
        }

        v831 = *(v826 + 32);
        v832 = *(v827 + 32);
        if (v831 == v832 && *(v826 + 24) == *(v827 + 24) && *(v826 + 40) == *(v827 + 40) && *(v826 + 16) == *(v827 + 16))
        {
          v833 = *(v826 + 64);
          v834 = *(v827 + 64);
          if (vabdd_f64(v833, v834) >= 50.0)
          {
            goto LABEL_1136;
          }

          v833 = *(v826 + 48) / *(v826 + 56);
          v834 = *(v827 + 48) / *(v827 + 56);
          if (v833 == v834)
          {
            goto LABEL_1037;
          }

          v905 = fabs(*(v827 + 48) / *(v827 + 56));
          if (COERCE_UNSIGNED_INT64(fabs(*(v826 + 48) / *(v826 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v905 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_1136;
          }

          v910 = fabs(v833);
          v911 = fabs(v834);
          v912 = vabdd_f64(v833, v834);
          if (v910 < v911)
          {
            v910 = v911;
          }

          if (v910 < 1.0)
          {
            v910 = 1.0;
          }

          if (v912 <= v910 * 2.22044605e-16)
          {
LABEL_1037:
            v835 = *v825 < *(v825 + 40);
          }

          else
          {
LABEL_1136:
            v835 = v833 < v834;
          }

          goto LABEL_1046;
        }

        v836 = *(v826 + 16);
        v837 = *(v827 + 16);
        v830 = v836 < v837;
        if (v836 != v837 || (v838 = *(v826 + 24), v839 = *(v827 + 24), v830 = v838 < v839, v838 != v839))
        {
LABEL_1043:
          v835 = v830;
          goto LABEL_1046;
        }

        v840 = *(v826 + 40);
        v841 = *(v827 + 40);
        v769 = v840 == v841;
        v835 = v840 < v841;
        if (v769)
        {
          v835 = v831 < v832;
        }

LABEL_1046:
        if (v835)
        {
          v825 += 40;
          v824 = 2 * v823 + 2;
        }
      }

      v842 = v10 + 40 * v823;
      v843 = *(v825 + 32);
      v844 = *v842;
      v845 = *(v842 + 32);
      v846 = *(v843 + 8);
      v847 = *(v845 + 8);
      v848 = v846 < v847;
      if (v846 == v847)
      {
        v849 = *(v843 + 32);
        v850 = *(v845 + 32);
        if (v849 == v850 && *(v843 + 24) == *(v845 + 24) && *(v843 + 40) == *(v845 + 40) && *(v843 + 16) == *(v845 + 16))
        {
          v851 = *(v843 + 64);
          v852 = *(v845 + 64);
          if (vabdd_f64(v851, v852) >= 50.0)
          {
            goto LABEL_1130;
          }

          v851 = *(v843 + 48) / *(v843 + 56);
          v852 = *(v845 + 48) / *(v845 + 56);
          if (v851 == v852)
          {
            goto LABEL_1055;
          }

          v454 = __OFSUB__(fabs(*(v843 + 48) / *(v843 + 56)), 0x7FEFFFFFFFFFFFFFLL);
          v903 = fabs(*(v845 + 48) / *(v845 + 56));
          if ((*&v851 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *&v903 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_1130;
          }

          v907 = fabs(v851);
          v908 = fabs(v852);
          v909 = vabdd_f64(v851, v852);
          if (v907 < v908)
          {
            v907 = v908;
          }

          if (v907 < 1.0)
          {
            v907 = 1.0;
          }

          if (v909 <= v907 * 2.22044605e-16)
          {
LABEL_1055:
            if (*v825 < v844)
            {
              goto LABEL_1124;
            }
          }

          else
          {
LABEL_1130:
            if (v851 < v852)
            {
              goto LABEL_1124;
            }
          }

LABEL_1062:
          v1264 = *(v842 + 24);
          v1230 = *(v842 + 8);
          while (1)
          {
            v859 = *v825;
            v860 = *(v825 + 16);
            *(v842 + 32) = *(v825 + 32);
            *v842 = v859;
            *(v842 + 16) = v860;
            if (v821 < v824)
            {
              goto LABEL_1123;
            }

            v842 = v825;
            v861 = 2 * v824;
            v824 = (2 * v824) | 1;
            v825 = v10 + 40 * v824;
            v862 = v861 + 2;
            if (v862 < v12)
            {
              break;
            }

LABEL_1083:
            v879 = *(v825 + 32);
            v880 = *(v879 + 8);
            v881 = *(v845 + 8);
            v882 = v880 < v881;
            if (v880 != v881)
            {
              goto LABEL_1096;
            }

            v883 = *(v879 + 32);
            v884 = *(v845 + 32);
            if (v883 != v884 || *(v879 + 24) != *(v845 + 24) || *(v879 + 40) != *(v845 + 40) || *(v879 + 16) != *(v845 + 16))
            {
              v887 = *(v879 + 16);
              v888 = *(v845 + 16);
              v882 = v887 < v888;
              if (v887 == v888)
              {
                v889 = *(v879 + 24);
                v890 = *(v845 + 24);
                v882 = v889 < v890;
                if (v889 == v890)
                {
                  v891 = *(v879 + 40);
                  v892 = *(v845 + 40);
                  v882 = v891 < v892;
                  if (v891 == v892)
                  {
                    v882 = v883 < v884;
                  }
                }
              }

LABEL_1096:
              if (v882)
              {
                goto LABEL_1122;
              }

              continue;
            }

            v885 = *(v879 + 64);
            v886 = *(v845 + 64);
            if (vabdd_f64(v885, v886) >= 50.0)
            {
              goto LABEL_1103;
            }

            v885 = *(v879 + 48) / *(v879 + 56);
            v886 = *(v845 + 48) / *(v845 + 56);
            if (v885 != v886)
            {
              v454 = __OFSUB__(fabs(*(v879 + 48) / *(v879 + 56)), 0x7FEFFFFFFFFFFFFFLL);
              v893 = fabs(*(v845 + 48) / *(v845 + 56));
              if ((*&v885 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *&v893 > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_1103;
              }

              v897 = fabs(v885);
              v898 = fabs(v886);
              v899 = vabdd_f64(v885, v886);
              if (v897 < v898)
              {
                v897 = v898;
              }

              if (v897 < 1.0)
              {
                v897 = 1.0;
              }

              if (v899 > v897 * 2.22044605e-16)
              {
LABEL_1103:
                if (v885 >= v886)
                {
                  continue;
                }

LABEL_1122:
                v825 = v842;
LABEL_1123:
                *v825 = v844;
                *(v825 + 8) = v1230;
                *(v825 + 24) = v1264;
                *(v825 + 32) = v845;
LABEL_1124:
                v822 = v823 - 1;
                if (v823)
                {
                  goto LABEL_1028;
                }

                v913 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3);
                while (2)
                {
                  v914 = 0;
                  v1293 = *(v10 + 32);
                  v1231 = *v10;
                  v1265 = *(v10 + 16);
                  v915 = v10;
LABEL_1150:
                  v916 = v915 + 40 * v914;
                  v917 = v916 + 40;
                  v918 = (2 * v914) | 1;
                  v914 = 2 * v914 + 2;
                  if (v914 >= v913)
                  {
                    v914 = v918;
                  }

                  else
                  {
                    v921 = *(v916 + 80);
                    v919 = v916 + 80;
                    v920 = v921;
                    v922 = *(v919 - 8);
                    v923 = *(v919 + 32);
                    v924 = *(v922 + 8);
                    v925 = *(v923 + 8);
                    v926 = v924 < v925;
                    if (v924 != v925)
                    {
                      goto LABEL_1165;
                    }

                    v927 = *(v922 + 32);
                    v928 = *(v923 + 32);
                    if (v927 == v928 && *(v922 + 24) == *(v923 + 24) && *(v922 + 40) == *(v923 + 40) && *(v922 + 16) == *(v923 + 16))
                    {
                      v929 = *(v922 + 64);
                      v930 = *(v923 + 64);
                      if (vabdd_f64(v929, v930) >= 50.0)
                      {
                        goto LABEL_1177;
                      }

                      v929 = *(v922 + 48) / *(v922 + 56);
                      v930 = *(v923 + 48) / *(v923 + 56);
                      if (v929 == v930)
                      {
                        goto LABEL_1158;
                      }

                      v940 = fabs(*(v923 + 48) / *(v923 + 56));
                      if (COERCE_UNSIGNED_INT64(fabs(*(v922 + 48) / *(v922 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v940 > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        goto LABEL_1177;
                      }

                      v942 = fabs(v929);
                      v943 = fabs(v930);
                      v944 = vabdd_f64(v929, v930);
                      if (v942 < v943)
                      {
                        v942 = v943;
                      }

                      if (v942 < 1.0)
                      {
                        v942 = 1.0;
                      }

                      if (v944 <= v942 * 2.22044605e-16)
                      {
LABEL_1158:
                        v931 = *(v919 - 40) < v920;
                      }

                      else
                      {
LABEL_1177:
                        v931 = v929 < v930;
                      }

                      goto LABEL_1168;
                    }

                    v932 = *(v922 + 16);
                    v933 = *(v923 + 16);
                    v926 = v932 < v933;
                    if (v932 != v933 || (v934 = *(v922 + 24), v935 = *(v923 + 24), v926 = v934 < v935, v934 != v935))
                    {
LABEL_1165:
                      v931 = v926;
                      goto LABEL_1168;
                    }

                    v936 = *(v922 + 40);
                    v937 = *(v923 + 40);
                    v769 = v936 == v937;
                    v931 = v936 < v937;
                    if (v769)
                    {
                      v931 = v927 < v928;
                    }

LABEL_1168:
                    if (v931)
                    {
                      v917 = v919;
                    }

                    else
                    {
                      v914 = v918;
                    }
                  }

                  v938 = *v917;
                  v939 = *(v917 + 16);
                  *(v915 + 32) = *(v917 + 32);
                  *v915 = v938;
                  *(v915 + 16) = v939;
                  v915 = v917;
                  if (v914 > (v913 - 2) / 2)
                  {
                    a2 -= 40;
                    if (v917 == a2)
                    {
                      *(v917 + 32) = v1293;
                      *v917 = v1231;
                      *(v917 + 16) = v1265;
                      goto LABEL_1205;
                    }

                    v945 = *a2;
                    v946 = *(a2 + 16);
                    *(v917 + 32) = *(a2 + 32);
                    *v917 = v945;
                    *(v917 + 16) = v946;
                    *(a2 + 32) = v1293;
                    *a2 = v1231;
                    *(a2 + 16) = v1265;
                    v947 = v917 - v10 + 40;
                    if (v947 < 41)
                    {
                      goto LABEL_1205;
                    }

                    v948 = 0xCCCCCCCCCCCCCCCDLL * (v947 >> 3) - 2;
                    v949 = v948 >> 1;
                    v950 = v10 + 40 * (v948 >> 1);
                    v951 = *(v950 + 32);
                    v952 = *v917;
                    v953 = *(v917 + 32);
                    v954 = *(v951 + 8);
                    v955 = *(v953 + 8);
                    v956 = v954 < v955;
                    if (v954 != v955)
                    {
                      goto LABEL_1200;
                    }

                    v957 = *(v951 + 32);
                    v958 = *(v953 + 32);
                    if (v957 != v958 || *(v951 + 24) != *(v953 + 24) || *(v951 + 40) != *(v953 + 40) || *(v951 + 16) != *(v953 + 16))
                    {
                      v961 = *(v951 + 16);
                      v962 = *(v953 + 16);
                      v956 = v961 < v962;
                      if (v961 == v962)
                      {
                        v963 = *(v951 + 24);
                        v964 = *(v953 + 24);
                        v956 = v963 < v964;
                        if (v963 == v964)
                        {
                          v965 = *(v951 + 40);
                          v966 = *(v953 + 40);
                          v956 = v965 < v966;
                          if (v965 == v966)
                          {
                            v956 = v957 < v958;
                          }
                        }
                      }

LABEL_1200:
                      if (!v956)
                      {
                        goto LABEL_1205;
                      }

                      goto LABEL_1202;
                    }

                    v959 = *(v951 + 64);
                    v960 = *(v953 + 64);
                    if (vabdd_f64(v959, v960) >= 50.0)
                    {
                      goto LABEL_1241;
                    }

                    v959 = *(v951 + 48) / *(v951 + 56);
                    v960 = *(v953 + 48) / *(v953 + 56);
                    if (v959 == v960)
                    {
                      goto LABEL_1193;
                    }

                    v454 = __OFSUB__(fabs(*(v951 + 48) / *(v951 + 56)), 0x7FEFFFFFFFFFFFFFLL);
                    v992 = fabs(*(v953 + 48) / *(v953 + 56));
                    if ((*&v959 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *&v992 > 0x7FEFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_1241;
                    }

                    v994 = fabs(v959);
                    v995 = fabs(v960);
                    v996 = vabdd_f64(v959, v960);
                    if (v994 < v995)
                    {
                      v994 = v995;
                    }

                    if (v994 < 1.0)
                    {
                      v994 = 1.0;
                    }

                    if (v996 <= v994 * 2.22044605e-16)
                    {
LABEL_1193:
                      if (*v950 >= v952)
                      {
                        goto LABEL_1205;
                      }
                    }

                    else
                    {
LABEL_1241:
                      if (v959 >= v960)
                      {
                        goto LABEL_1205;
                      }
                    }

LABEL_1202:
                    v1209 = *(v917 + 24);
                    v1206 = *(v917 + 8);
                    v967 = *v950;
                    v968 = *(v950 + 16);
                    *(v917 + 32) = *(v950 + 32);
                    *v917 = v967;
                    *(v917 + 16) = v968;
                    if (v948 < 2)
                    {
LABEL_1203:
                      v969 = v950;
LABEL_1204:
                      *v969 = v952;
                      *(v969 + 8) = v1206;
                      *(v969 + 24) = v1209;
                      *(v969 + 32) = v953;
LABEL_1205:
                      v20 = v913-- <= 2;
                      if (v20)
                      {
                        return;
                      }

                      continue;
                    }

                    while (2)
                    {
                      v970 = v949 - 1;
                      v949 = (v949 - 1) >> 1;
                      v969 = v10 + 40 * v949;
                      v971 = *(v969 + 32);
                      v972 = *(v971 + 8);
                      v973 = *(v953 + 8);
                      v974 = v972 < v973;
                      if (v972 == v973)
                      {
                        v975 = *(v971 + 32);
                        v976 = *(v953 + 32);
                        if (v975 == v976 && *(v971 + 24) == *(v953 + 24) && *(v971 + 40) == *(v953 + 40) && *(v971 + 16) == *(v953 + 16))
                        {
                          v977 = *(v971 + 64);
                          v978 = *(v953 + 64);
                          if (vabdd_f64(v977, v978) >= 50.0)
                          {
                            goto LABEL_1229;
                          }

                          v977 = *(v971 + 48) / *(v971 + 56);
                          v978 = *(v953 + 48) / *(v953 + 56);
                          if (v977 == v978)
                          {
                            goto LABEL_1215;
                          }

                          v454 = __OFSUB__(fabs(*(v971 + 48) / *(v971 + 56)), 0x7FEFFFFFFFFFFFFFLL);
                          v987 = fabs(*(v953 + 48) / *(v953 + 56));
                          if ((*&v977 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *&v987 > 0x7FEFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_1229;
                          }

                          v989 = fabs(v977);
                          v990 = fabs(v978);
                          v991 = vabdd_f64(v977, v978);
                          if (v989 < v990)
                          {
                            v989 = v990;
                          }

                          if (v989 < 1.0)
                          {
                            v989 = 1.0;
                          }

                          if (v991 <= v989 * 2.22044605e-16)
                          {
LABEL_1215:
                            if (*v969 >= v952)
                            {
                              goto LABEL_1203;
                            }
                          }

                          else
                          {
LABEL_1229:
                            if (v977 >= v978)
                            {
                              goto LABEL_1203;
                            }
                          }

                          goto LABEL_1223;
                        }

                        v979 = *(v971 + 16);
                        v980 = *(v953 + 16);
                        v974 = v979 < v980;
                        if (v979 == v980)
                        {
                          v981 = *(v971 + 24);
                          v982 = *(v953 + 24);
                          v974 = v981 < v982;
                          if (v981 == v982)
                          {
                            v983 = *(v971 + 40);
                            v984 = *(v953 + 40);
                            v974 = v983 < v984;
                            if (v983 == v984)
                            {
                              v974 = v975 < v976;
                            }
                          }
                        }
                      }

                      if (!v974)
                      {
                        goto LABEL_1203;
                      }

LABEL_1223:
                      v985 = *v969;
                      v986 = *(v969 + 16);
                      *(v950 + 32) = *(v969 + 32);
                      *v950 = v985;
                      *(v950 + 16) = v986;
                      v950 = v10 + 40 * v949;
                      if (v970 <= 1)
                      {
                        goto LABEL_1204;
                      }

                      continue;
                    }
                  }

                  goto LABEL_1150;
                }
              }
            }

            if (*v825 < v844)
            {
              goto LABEL_1122;
            }
          }

          v863 = *(v825 + 32);
          v864 = *(v825 + 72);
          v865 = *(v863 + 8);
          v866 = *(v864 + 8);
          v867 = v865 < v866;
          if (v865 == v866)
          {
            v868 = *(v863 + 32);
            v869 = *(v864 + 32);
            if (v868 == v869 && *(v863 + 24) == *(v864 + 24) && *(v863 + 40) == *(v864 + 40) && *(v863 + 16) == *(v864 + 16))
            {
              v870 = *(v863 + 64);
              v871 = *(v864 + 64);
              if (vabdd_f64(v870, v871) >= 50.0)
              {
                goto LABEL_1109;
              }

              v870 = *(v863 + 48) / *(v863 + 56);
              v871 = *(v864 + 48) / *(v864 + 56);
              if (v870 == v871)
              {
                goto LABEL_1072;
              }

              v895 = fabs(*(v864 + 48) / *(v864 + 56));
              if (COERCE_UNSIGNED_INT64(fabs(*(v863 + 48) / *(v863 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v895 > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_1109;
              }

              v900 = fabs(v870);
              v901 = fabs(v871);
              v902 = vabdd_f64(v870, v871);
              if (v900 < v901)
              {
                v900 = v901;
              }

              if (v900 < 1.0)
              {
                v900 = 1.0;
              }

              if (v902 <= v900 * 2.22044605e-16)
              {
LABEL_1072:
                v872 = *v825 < *(v825 + 40);
              }

              else
              {
LABEL_1109:
                v872 = v870 < v871;
              }

              goto LABEL_1081;
            }

            v873 = *(v863 + 16);
            v874 = *(v864 + 16);
            v867 = v873 < v874;
            if (v873 == v874)
            {
              v875 = *(v863 + 24);
              v876 = *(v864 + 24);
              v867 = v875 < v876;
              if (v875 == v876)
              {
                v877 = *(v863 + 40);
                v878 = *(v864 + 40);
                v769 = v877 == v878;
                v872 = v877 < v878;
                if (v769)
                {
                  v872 = v868 < v869;
                }

                goto LABEL_1081;
              }
            }
          }

          v872 = v867;
LABEL_1081:
          if (v872)
          {
            v825 += 40;
            v824 = v862;
          }

          goto LABEL_1083;
        }

        v853 = *(v843 + 16);
        v854 = *(v845 + 16);
        v848 = v853 < v854;
        if (v853 == v854)
        {
          v855 = *(v843 + 24);
          v856 = *(v845 + 24);
          v848 = v855 < v856;
          if (v855 == v856)
          {
            v857 = *(v843 + 40);
            v858 = *(v845 + 40);
            v848 = v857 < v858;
            if (v857 == v858)
            {
              v848 = v849 < v850;
            }
          }
        }
      }

      if (v848)
      {
        goto LABEL_1124;
      }

      goto LABEL_1062;
    }

    v13 = v12 >> 1;
    v14 = v10 + 40 * (v12 >> 1);
    if (v11 >= 0x1401)
    {
      v15 = *v14;
      v16 = *(v14 + 32);
      v17 = *(v10 + 32);
      v18 = *(v16 + 8);
      v19 = *(v17 + 8);
      v20 = v18 < v19;
      if (v18 == v19)
      {
        v21 = *(v16 + 32);
        v22 = *(v17 + 32);
        if (v21 == v22 && *(v16 + 24) == *(v17 + 24) && *(v16 + 40) == *(v17 + 40) && *(v16 + 16) == *(v17 + 16))
        {
          v23 = *(v16 + 64);
          v24 = *(v17 + 64);
          if (vabdd_f64(v23, v24) >= 50.0)
          {
            goto LABEL_119;
          }

          v23 = *(v16 + 48) / *(v16 + 56);
          v25 = *(v17 + 56);
          v24 = *(v17 + 48) / v25;
          if (v23 == v24)
          {
            goto LABEL_19;
          }

          v121 = fabs(*(v17 + 48) / v25);
          if (COERCE_UNSIGNED_INT64(fabs(*(v16 + 48) / *(v16 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v121 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_119;
          }

          v588 = fabs(v23);
          v589 = fabs(v24);
          v590 = vabdd_f64(v23, v24);
          if (v588 < v589)
          {
            v588 = v589;
          }

          if (v588 < 1.0)
          {
            v588 = 1.0;
          }

          if (v590 <= v588 * 2.22044605e-16)
          {
LABEL_19:
            v26 = v15 < *v10;
          }

          else
          {
LABEL_119:
            v26 = v23 < v24;
          }

LABEL_35:
          v44 = *(a2 - 8);
          v45 = *(v44 + 8);
          v46 = v45 < v18;
          if (v45 == v18)
          {
            v47 = *(v44 + 32);
            v48 = *(v16 + 32);
            if (v47 == v48 && *(v44 + 24) == *(v16 + 24) && *(v44 + 40) == *(v16 + 40) && *(v44 + 16) == *(v16 + 16))
            {
              v49 = *(v44 + 64);
              v50 = *(v16 + 64);
              if (vabdd_f64(v49, v50) >= 50.0)
              {
                goto LABEL_135;
              }

              v49 = *(v44 + 48) / *(v44 + 56);
              v50 = *(v16 + 48) / *(v16 + 56);
              if (v49 != v50)
              {
                if (COERCE_UNSIGNED_INT64(fabs(*(v44 + 48) / *(v44 + 56))) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(*(v16 + 48) / *(v16 + 56))) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_135;
                }

                v126 = fabs(v49);
                v127 = fabs(v50);
                v128 = vabdd_f64(v49, v50);
                if (v126 < v127)
                {
                  v126 = v127;
                }

                if (v126 < 1.0)
                {
                  v126 = 1.0;
                }

                if (v128 > v126 * 2.22044605e-16)
                {
LABEL_135:
                  v51 = v49 < v50;
                  if (!v26)
                  {
                    goto LABEL_136;
                  }

LABEL_69:
                  if (v51)
                  {
                    v1274 = *(v10 + 32);
                    v1210 = *v10;
                    v1239 = *(v10 + 16);
                    v74 = *v8;
                    v75 = *(a2 - 24);
                    *(v10 + 32) = *(a2 - 8);
                    *v10 = v74;
                    *(v10 + 16) = v75;
                    goto LABEL_106;
                  }

                  v1276 = *(v10 + 32);
                  v1212 = *v10;
                  v1241 = *(v10 + 16);
                  v84 = *v14;
                  v85 = *(v14 + 16);
                  *(v10 + 32) = *(v14 + 32);
                  *v10 = v84;
                  *(v10 + 16) = v85;
                  *(v14 + 32) = v1276;
                  *v14 = v1212;
                  *(v14 + 16) = v1241;
                  v86 = *(a2 - 8);
                  v87 = *(v86 + 8);
                  v88 = *(v1276 + 8);
                  v89 = v87 < v88;
                  if (v87 == v88)
                  {
                    v90 = *(v86 + 32);
                    v91 = *(v1276 + 32);
                    if (v90 == v91 && *(v86 + 24) == *(v1276 + 24) && *(v86 + 40) == *(v1276 + 40) && *(v86 + 16) == *(v1276 + 16))
                    {
                      v92 = *(v86 + 64);
                      v93 = *(v1276 + 64);
                      if (vabdd_f64(v92, v93) >= 50.0)
                      {
                        goto LABEL_650;
                      }

                      v92 = *(v86 + 48) / *(v86 + 56);
                      v93 = *(v1276 + 48) / *(v1276 + 56);
                      if (v92 == v93)
                      {
                        goto LABEL_88;
                      }

                      if (COERCE_UNSIGNED_INT64(fabs(*(v86 + 48) / *(v86 + 56))) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(*(v1276 + 48) / *(v1276 + 56))) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        goto LABEL_650;
                      }

                      v583 = fabs(v92);
                      v584 = fabs(v93);
                      v585 = vabdd_f64(v92, v93);
                      if (v583 < v584)
                      {
                        v583 = v584;
                      }

                      if (v583 < 1.0)
                      {
                        v583 = 1.0;
                      }

                      if (v585 <= v583 * 2.22044605e-16)
                      {
LABEL_88:
                        if (*(a2 - 40) >= *v14)
                        {
                          goto LABEL_153;
                        }
                      }

                      else
                      {
LABEL_650:
                        if (v92 >= v93)
                        {
                          goto LABEL_153;
                        }
                      }

LABEL_105:
                      v1274 = *(v14 + 32);
                      v1210 = *v14;
                      v1239 = *(v14 + 16);
                      v111 = *v8;
                      v112 = *(a2 - 24);
                      *(v14 + 32) = *(a2 - 8);
                      *v14 = v111;
                      *(v14 + 16) = v112;
LABEL_106:
                      *(a2 - 8) = v1274;
                      *v8 = v1210;
                      *(a2 - 24) = v1239;
LABEL_153:
                      v149 = (v10 + 40);
                      v150 = v10 + 40 * v13;
                      v153 = *(v150 - 40);
                      v151 = v150 - 40;
                      v152 = v153;
                      v154 = *(v151 + 32);
                      v155 = *(v10 + 72);
                      v156 = *(v154 + 8);
                      v157 = *(v155 + 8);
                      v158 = v156 < v157;
                      if (v156 == v157)
                      {
                        v159 = *(v154 + 32);
                        v160 = *(v155 + 32);
                        if (v159 == v160 && *(v154 + 24) == *(v155 + 24) && *(v154 + 40) == *(v155 + 40) && *(v154 + 16) == *(v155 + 16))
                        {
                          v161 = *(v154 + 64);
                          v162 = *(v155 + 64);
                          if (vabdd_f64(v161, v162) >= 50.0)
                          {
                            goto LABEL_229;
                          }

                          v161 = *(v154 + 48) / *(v154 + 56);
                          v163 = *(v155 + 56);
                          v162 = *(v155 + 48) / v163;
                          if (v161 == v162)
                          {
                            goto LABEL_160;
                          }

                          v231 = fabs(*(v155 + 48) / v163);
                          if (COERCE_UNSIGNED_INT64(fabs(*(v154 + 48) / *(v154 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v231 > 0x7FEFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_229;
                          }

                          v602 = fabs(v161);
                          v603 = fabs(v162);
                          v604 = vabdd_f64(v161, v162);
                          if (v602 < v603)
                          {
                            v602 = v603;
                          }

                          if (v602 < 1.0)
                          {
                            v602 = 1.0;
                          }

                          if (v604 <= v602 * 2.22044605e-16)
                          {
LABEL_160:
                            v164 = v152 < *(v10 + 40);
                          }

                          else
                          {
LABEL_229:
                            v164 = v161 < v162;
                          }

LABEL_168:
                          v171 = *(a2 - 48);
                          v172 = *(v171 + 8);
                          v173 = v172 < v156;
                          if (v172 == v156)
                          {
                            v174 = *(v171 + 32);
                            v175 = *(v154 + 32);
                            if (v174 == v175 && *(v171 + 24) == *(v154 + 24) && *(v171 + 40) == *(v154 + 40) && *(v171 + 16) == *(v154 + 16))
                            {
                              v176 = *(v171 + 64);
                              v177 = *(v154 + 64);
                              if (vabdd_f64(v176, v177) >= 50.0)
                              {
                                goto LABEL_237;
                              }

                              v176 = *(v171 + 48) / *(v171 + 56);
                              v177 = *(v154 + 48) / *(v154 + 56);
                              if (v176 != v177)
                              {
                                if (COERCE_UNSIGNED_INT64(fabs(*(v171 + 48) / *(v171 + 56))) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(*(v154 + 48) / *(v154 + 56))) > 0x7FEFFFFFFFFFFFFFLL)
                                {
                                  goto LABEL_237;
                                }

                                v233 = fabs(v176);
                                v234 = fabs(v177);
                                v235 = vabdd_f64(v176, v177);
                                if (v233 < v234)
                                {
                                  v233 = v234;
                                }

                                if (v233 < 1.0)
                                {
                                  v233 = 1.0;
                                }

                                if (v235 > v233 * 2.22044605e-16)
                                {
LABEL_237:
                                  v178 = v176 < v177;
                                  if (!v164)
                                  {
                                    goto LABEL_238;
                                  }

LABEL_185:
                                  if (v178)
                                  {
                                    v185 = *v149;
                                    v1245 = *(v10 + 56);
                                    v186 = *(v10 + 72);
                                    v188 = *v1202;
                                    v187 = *(a2 - 64);
                                    *(v10 + 72) = *(a2 - 48);
                                    *v149 = v188;
                                    *(v10 + 56) = v187;
                                    *(a2 - 48) = v186;
                                    *v1202 = v185;
                                    *(a2 - 64) = v1245;
                                    goto LABEL_255;
                                  }

                                  v189 = *v149;
                                  v1246 = *(v10 + 56);
                                  v190 = *(v10 + 72);
                                  v192 = *v151;
                                  v191 = *(v151 + 16);
                                  *(v10 + 72) = *(v151 + 32);
                                  *v149 = v192;
                                  *(v10 + 56) = v191;
                                  *(v151 + 32) = v190;
                                  *v151 = v189;
                                  *(v151 + 16) = v1246;
                                  v193 = *(a2 - 48);
                                  v194 = *(v151 + 32);
                                  v195 = *(v193 + 8);
                                  v196 = *(v194 + 8);
                                  v197 = v195 < v196;
                                  if (v195 == v196)
                                  {
                                    v198 = *(v193 + 32);
                                    v199 = *(v194 + 32);
                                    if (v198 == v199 && *(v193 + 24) == *(v194 + 24) && *(v193 + 40) == *(v194 + 40) && *(v193 + 16) == *(v194 + 16))
                                    {
                                      v200 = *(v193 + 64);
                                      v201 = *(v194 + 64);
                                      if (vabdd_f64(v200, v201) >= 50.0)
                                      {
                                        goto LABEL_677;
                                      }

                                      v200 = *(v193 + 48) / *(v193 + 56);
                                      v201 = *(v194 + 48) / *(v194 + 56);
                                      if (v200 == v201)
                                      {
                                        goto LABEL_194;
                                      }

                                      if (COERCE_UNSIGNED_INT64(fabs(*(v193 + 48) / *(v193 + 56))) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(*(v194 + 48) / *(v194 + 56))) > 0x7FEFFFFFFFFFFFFFLL)
                                      {
                                        goto LABEL_677;
                                      }

                                      v593 = fabs(v200);
                                      v594 = fabs(v201);
                                      v595 = vabdd_f64(v200, v201);
                                      if (v593 < v594)
                                      {
                                        v593 = v594;
                                      }

                                      if (v593 < 1.0)
                                      {
                                        v593 = 1.0;
                                      }

                                      if (v595 <= v593 * 2.22044605e-16)
                                      {
LABEL_194:
                                        if (*(a2 - 80) >= *v151)
                                        {
                                          goto LABEL_255;
                                        }
                                      }

                                      else
                                      {
LABEL_677:
                                        if (v200 >= v201)
                                        {
                                          goto LABEL_255;
                                        }
                                      }

LABEL_202:
                                      v1280 = *(v151 + 32);
                                      v1216 = *v151;
                                      v1247 = *(v151 + 16);
                                      v208 = *v1202;
                                      v209 = *(a2 - 64);
                                      *(v151 + 32) = *(a2 - 48);
                                      *v151 = v208;
                                      *(v151 + 16) = v209;
                                      *(a2 - 48) = v1280;
                                      *v1202 = v1216;
                                      *(a2 - 64) = v1247;
                                      goto LABEL_255;
                                    }

                                    v202 = *(v193 + 16);
                                    v203 = *(v194 + 16);
                                    v197 = v202 < v203;
                                    if (v202 == v203)
                                    {
                                      v204 = *(v193 + 24);
                                      v205 = *(v194 + 24);
                                      v197 = v204 < v205;
                                      if (v204 == v205)
                                      {
                                        v206 = *(v193 + 40);
                                        v207 = *(v194 + 40);
                                        v197 = v206 < v207;
                                        if (v206 == v207)
                                        {
                                          v197 = v198 < v199;
                                        }
                                      }
                                    }
                                  }

                                  if (!v197)
                                  {
                                    goto LABEL_255;
                                  }

                                  goto LABEL_202;
                                }
                              }

                              v178 = *(a2 - 80) < v152;
                              if (v164)
                              {
                                goto LABEL_185;
                              }

LABEL_238:
                              if (!v178)
                              {
                                goto LABEL_255;
                              }

                              v1283 = *(v151 + 32);
                              v1219 = *v151;
                              v1250 = *(v151 + 16);
                              v236 = *v1202;
                              v237 = *(a2 - 64);
                              *(v151 + 32) = *(a2 - 48);
                              *v151 = v236;
                              *(v151 + 16) = v237;
                              *(a2 - 48) = v1283;
                              *v1202 = v1219;
                              *(a2 - 64) = v1250;
                              v238 = *(v151 + 32);
                              v239 = *(v10 + 72);
                              v240 = *(v238 + 8);
                              v241 = *(v239 + 8);
                              v242 = v240 < v241;
                              if (v240 == v241)
                              {
                                v243 = *(v238 + 32);
                                v244 = *(v239 + 32);
                                if (v243 == v244 && *(v238 + 24) == *(v239 + 24) && *(v238 + 40) == *(v239 + 40) && *(v238 + 16) == *(v239 + 16))
                                {
                                  v245 = *(v238 + 64);
                                  v246 = *(v239 + 64);
                                  if (vabdd_f64(v245, v246) >= 50.0)
                                  {
                                    goto LABEL_704;
                                  }

                                  v245 = *(v238 + 48) / *(v238 + 56);
                                  v247 = *(v239 + 56);
                                  v246 = *(v239 + 48) / v247;
                                  if (v245 == v246)
                                  {
                                    goto LABEL_246;
                                  }

                                  v605 = fabs(*(v239 + 48) / v247);
                                  if (COERCE_UNSIGNED_INT64(fabs(*(v238 + 48) / *(v238 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v605 > 0x7FEFFFFFFFFFFFFFLL)
                                  {
                                    goto LABEL_704;
                                  }

                                  v634 = fabs(v245);
                                  v635 = fabs(v246);
                                  v636 = vabdd_f64(v245, v246);
                                  if (v634 < v635)
                                  {
                                    v634 = v635;
                                  }

                                  if (v634 < 1.0)
                                  {
                                    v634 = 1.0;
                                  }

                                  if (v636 <= v634 * 2.22044605e-16)
                                  {
LABEL_246:
                                    if (*v151 >= *(v10 + 40))
                                    {
                                      goto LABEL_255;
                                    }
                                  }

                                  else
                                  {
LABEL_704:
                                    if (v245 >= v246)
                                    {
LABEL_255:
                                      v258 = (v10 + 80);
                                      v259 = v10 + 40 * v13;
                                      v262 = *(v259 + 40);
                                      v260 = v259 + 40;
                                      v261 = v262;
                                      v263 = *(v260 + 32);
                                      v264 = *(v10 + 112);
                                      v265 = *(v263 + 8);
                                      v266 = *(v264 + 8);
                                      v267 = v265 < v266;
                                      if (v265 == v266)
                                      {
                                        v268 = *(v263 + 32);
                                        v269 = *(v264 + 32);
                                        if (v268 == v269 && *(v263 + 24) == *(v264 + 24) && *(v263 + 40) == *(v264 + 40) && *(v263 + 16) == *(v264 + 16))
                                        {
                                          v270 = *(v263 + 64);
                                          v271 = *(v264 + 64);
                                          if (vabdd_f64(v270, v271) >= 50.0)
                                          {
                                            goto LABEL_310;
                                          }

                                          v270 = *(v263 + 48) / *(v263 + 56);
                                          v272 = *(v264 + 56);
                                          v271 = *(v264 + 48) / v272;
                                          if (v270 == v271)
                                          {
                                            goto LABEL_262;
                                          }

                                          v320 = fabs(*(v264 + 48) / v272);
                                          if (COERCE_UNSIGNED_INT64(fabs(*(v263 + 48) / *(v263 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v320 > 0x7FEFFFFFFFFFFFFFLL)
                                          {
                                            goto LABEL_310;
                                          }

                                          v610 = fabs(v270);
                                          v611 = fabs(v271);
                                          v612 = vabdd_f64(v270, v271);
                                          if (v610 < v611)
                                          {
                                            v610 = v611;
                                          }

                                          if (v610 < 1.0)
                                          {
                                            v610 = 1.0;
                                          }

                                          if (v612 <= v610 * 2.22044605e-16)
                                          {
LABEL_262:
                                            v273 = v261 < *(v10 + 80);
                                          }

                                          else
                                          {
LABEL_310:
                                            v273 = v270 < v271;
                                          }

LABEL_270:
                                          v280 = *(a2 - 88);
                                          v281 = *(v280 + 8);
                                          v282 = v281 < v265;
                                          if (v281 == v265)
                                          {
                                            v283 = *(v280 + 32);
                                            v284 = *(v263 + 32);
                                            if (v283 == v284 && *(v280 + 24) == *(v263 + 24) && *(v280 + 40) == *(v263 + 40) && *(v280 + 16) == *(v263 + 16))
                                            {
                                              v285 = *(v280 + 64);
                                              v286 = *(v263 + 64);
                                              if (vabdd_f64(v285, v286) >= 50.0)
                                              {
                                                goto LABEL_318;
                                              }

                                              v285 = *(v280 + 48) / *(v280 + 56);
                                              v286 = *(v263 + 48) / *(v263 + 56);
                                              if (v285 != v286)
                                              {
                                                if (COERCE_UNSIGNED_INT64(fabs(*(v280 + 48) / *(v280 + 56))) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(*(v263 + 48) / *(v263 + 56))) > 0x7FEFFFFFFFFFFFFFLL)
                                                {
                                                  goto LABEL_318;
                                                }

                                                v322 = fabs(v285);
                                                v323 = fabs(v286);
                                                v324 = vabdd_f64(v285, v286);
                                                if (v322 < v323)
                                                {
                                                  v322 = v323;
                                                }

                                                if (v322 < 1.0)
                                                {
                                                  v322 = 1.0;
                                                }

                                                if (v324 > v322 * 2.22044605e-16)
                                                {
LABEL_318:
                                                  v287 = v285 < v286;
                                                  if (!v273)
                                                  {
                                                    goto LABEL_319;
                                                  }

LABEL_287:
                                                  if (v287)
                                                  {
                                                    v294 = *v258;
                                                    v295 = *(v10 + 96);
                                                    v296 = *(v10 + 112);
                                                    v298 = *v9;
                                                    v297 = *(a2 - 104);
                                                    *(v10 + 112) = *(a2 - 88);
                                                    *v258 = v298;
                                                    *(v10 + 96) = v297;
                                                    *(a2 - 88) = v296;
                                                    goto LABEL_305;
                                                  }

                                                  v299 = *v258;
                                                  v1252 = *(v10 + 96);
                                                  v300 = *(v10 + 112);
                                                  v302 = *v260;
                                                  v301 = *(v260 + 16);
                                                  *(v10 + 112) = *(v260 + 32);
                                                  *v258 = v302;
                                                  *(v10 + 96) = v301;
                                                  *(v260 + 32) = v300;
                                                  *v260 = v299;
                                                  *(v260 + 16) = v1252;
                                                  v303 = *(a2 - 88);
                                                  v304 = *(v260 + 32);
                                                  v305 = *(v303 + 8);
                                                  v306 = *(v304 + 8);
                                                  v307 = v305 < v306;
                                                  if (v305 == v306)
                                                  {
                                                    v308 = *(v303 + 32);
                                                    v309 = *(v304 + 32);
                                                    if (v308 == v309 && *(v303 + 24) == *(v304 + 24) && *(v303 + 40) == *(v304 + 40) && *(v303 + 16) == *(v304 + 16))
                                                    {
                                                      v310 = *(v303 + 64);
                                                      v311 = *(v304 + 64);
                                                      if (vabdd_f64(v310, v311) >= 50.0)
                                                      {
                                                        goto LABEL_713;
                                                      }

                                                      v310 = *(v303 + 48) / *(v303 + 56);
                                                      v311 = *(v304 + 48) / *(v304 + 56);
                                                      if (v310 == v311)
                                                      {
                                                        goto LABEL_296;
                                                      }

                                                      if (COERCE_UNSIGNED_INT64(fabs(*(v303 + 48) / *(v303 + 56))) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(*(v304 + 48) / *(v304 + 56))) > 0x7FEFFFFFFFFFFFFFLL)
                                                      {
                                                        goto LABEL_713;
                                                      }

                                                      v607 = fabs(v310);
                                                      v608 = fabs(v311);
                                                      v609 = vabdd_f64(v310, v311);
                                                      if (v607 < v608)
                                                      {
                                                        v607 = v608;
                                                      }

                                                      if (v607 < 1.0)
                                                      {
                                                        v607 = 1.0;
                                                      }

                                                      if (v609 <= v607 * 2.22044605e-16)
                                                      {
LABEL_296:
                                                        if (*(a2 - 120) >= *v260)
                                                        {
                                                          goto LABEL_336;
                                                        }
                                                      }

                                                      else
                                                      {
LABEL_713:
                                                        if (v310 >= v311)
                                                        {
                                                          goto LABEL_336;
                                                        }
                                                      }

LABEL_304:
                                                      v1284 = *(v260 + 32);
                                                      v1220 = *v260;
                                                      v1253 = *(v260 + 16);
                                                      v318 = *v9;
                                                      v319 = *(a2 - 104);
                                                      *(v260 + 32) = *(a2 - 88);
                                                      *v260 = v318;
                                                      *(v260 + 16) = v319;
                                                      v294 = v1220;
                                                      v295 = v1253;
                                                      *(a2 - 88) = v1284;
LABEL_305:
                                                      *v9 = v294;
                                                      *(a2 - 104) = v295;
LABEL_336:
                                                      v347 = *v14;
                                                      v348 = *(v14 + 32);
                                                      v349 = *(v151 + 32);
                                                      v350 = *(v348 + 8);
                                                      v351 = *(v349 + 8);
                                                      v352 = v350 < v351;
                                                      if (v350 == v351)
                                                      {
                                                        v353 = *(v348 + 32);
                                                        v354 = *(v349 + 32);
                                                        if (v353 == v354 && *(v348 + 24) == *(v349 + 24) && *(v348 + 40) == *(v349 + 40) && *(v348 + 16) == *(v349 + 16))
                                                        {
                                                          v355 = *(v348 + 64);
                                                          v356 = *(v349 + 64);
                                                          if (vabdd_f64(v355, v356) >= 50.0)
                                                          {
                                                            goto LABEL_391;
                                                          }

                                                          v355 = *(v348 + 48) / *(v348 + 56);
                                                          v357 = *(v349 + 56);
                                                          v356 = *(v349 + 48) / v357;
                                                          if (v355 == v356)
                                                          {
                                                            goto LABEL_343;
                                                          }

                                                          v398 = fabs(*(v349 + 48) / v357);
                                                          if (COERCE_UNSIGNED_INT64(fabs(*(v348 + 48) / *(v348 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v398 > 0x7FEFFFFFFFFFFFFFLL)
                                                          {
                                                            goto LABEL_391;
                                                          }

                                                          v617 = fabs(v355);
                                                          v618 = fabs(v356);
                                                          v619 = vabdd_f64(v355, v356);
                                                          if (v617 < v618)
                                                          {
                                                            v617 = v618;
                                                          }

                                                          if (v617 < 1.0)
                                                          {
                                                            v617 = 1.0;
                                                          }

                                                          if (v619 <= v617 * 2.22044605e-16)
                                                          {
LABEL_343:
                                                            v358 = v347 < *v151;
                                                          }

                                                          else
                                                          {
LABEL_391:
                                                            v358 = v355 < v356;
                                                          }

LABEL_351:
                                                          v365 = *(v260 + 32);
                                                          v366 = *(v365 + 8);
                                                          v367 = v366 < v350;
                                                          if (v366 == v350)
                                                          {
                                                            v368 = *(v365 + 32);
                                                            v369 = *(v348 + 32);
                                                            if (v368 == v369 && *(v365 + 24) == *(v348 + 24) && *(v365 + 40) == *(v348 + 40) && *(v365 + 16) == *(v348 + 16))
                                                            {
                                                              v370 = *(v365 + 64);
                                                              v371 = *(v348 + 64);
                                                              if (vabdd_f64(v370, v371) >= 50.0)
                                                              {
                                                                goto LABEL_396;
                                                              }

                                                              v370 = *(v365 + 48) / *(v365 + 56);
                                                              v372 = *(v348 + 56);
                                                              v371 = *(v348 + 48) / v372;
                                                              if (v370 != v371)
                                                              {
                                                                v400 = fabs(*(v348 + 48) / v372);
                                                                if (COERCE_UNSIGNED_INT64(fabs(*(v365 + 48) / *(v365 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v400 > 0x7FEFFFFFFFFFFFFFLL)
                                                                {
                                                                  goto LABEL_396;
                                                                }

                                                                v620 = fabs(v370);
                                                                v621 = fabs(v371);
                                                                v622 = vabdd_f64(v370, v371);
                                                                if (v620 < v621)
                                                                {
                                                                  v620 = v621;
                                                                }

                                                                if (v620 < 1.0)
                                                                {
                                                                  v620 = 1.0;
                                                                }

                                                                if (v622 > v620 * 2.22044605e-16)
                                                                {
LABEL_396:
                                                                  v373 = v370 < v371;
                                                                  if (!v358)
                                                                  {
                                                                    goto LABEL_397;
                                                                  }

LABEL_368:
                                                                  if (v373)
                                                                  {
                                                                    v1286 = *(v151 + 32);
                                                                    v1222 = *v151;
                                                                    v1256 = *(v151 + 16);
                                                                    v380 = *(v260 + 16);
                                                                    *v151 = *v260;
                                                                    *(v151 + 16) = v380;
                                                                    *(v151 + 32) = *(v260 + 32);
                                                                    goto LABEL_386;
                                                                  }

                                                                  v1287 = *(v151 + 32);
                                                                  v1223 = *v151;
                                                                  v1257 = *(v151 + 16);
                                                                  v381 = *(v14 + 16);
                                                                  *v151 = *v14;
                                                                  *(v151 + 16) = v381;
                                                                  *(v151 + 32) = *(v14 + 32);
                                                                  *(v14 + 32) = v1287;
                                                                  *v14 = v1223;
                                                                  *(v14 + 16) = v1257;
                                                                  v382 = *(v260 + 32);
                                                                  v383 = *(v382 + 8);
                                                                  v384 = *(v1287 + 8);
                                                                  v385 = v383 < v384;
                                                                  if (v383 == v384)
                                                                  {
                                                                    v386 = *(v382 + 32);
                                                                    v387 = *(v1287 + 32);
                                                                    if (v386 == v387 && *(v382 + 24) == *(v1287 + 24) && *(v382 + 40) == *(v1287 + 40) && *(v382 + 16) == *(v1287 + 16))
                                                                    {
                                                                      v388 = *(v382 + 64);
                                                                      v389 = *(v1287 + 64);
                                                                      if (vabdd_f64(v388, v389) >= 50.0)
                                                                      {
                                                                        goto LABEL_731;
                                                                      }

                                                                      v388 = *(v382 + 48) / *(v382 + 56);
                                                                      v390 = *(v1287 + 56);
                                                                      v389 = *(v1287 + 48) / v390;
                                                                      if (v388 == v389)
                                                                      {
                                                                        goto LABEL_377;
                                                                      }

                                                                      v615 = fabs(*(v1287 + 48) / v390);
                                                                      if (COERCE_UNSIGNED_INT64(fabs(*(v382 + 48) / *(v382 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v615 > 0x7FEFFFFFFFFFFFFFLL)
                                                                      {
                                                                        goto LABEL_731;
                                                                      }

                                                                      v640 = fabs(v388);
                                                                      v641 = fabs(v389);
                                                                      v642 = vabdd_f64(v388, v389);
                                                                      if (v640 < v641)
                                                                      {
                                                                        v640 = v641;
                                                                      }

                                                                      if (v640 < 1.0)
                                                                      {
                                                                        v640 = 1.0;
                                                                      }

                                                                      if (v642 <= v640 * 2.22044605e-16)
                                                                      {
LABEL_377:
                                                                        if (*v260 < *v14)
                                                                        {
                                                                          goto LABEL_385;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
LABEL_731:
                                                                        if (v388 >= v389)
                                                                        {
                                                                          goto LABEL_414;
                                                                        }

LABEL_385:
                                                                        v1286 = *(v14 + 32);
                                                                        v1222 = *v14;
                                                                        v1256 = *(v14 + 16);
                                                                        v397 = *(v260 + 16);
                                                                        *v14 = *v260;
                                                                        *(v14 + 16) = v397;
                                                                        *(v14 + 32) = *(v260 + 32);
LABEL_386:
                                                                        *(v260 + 32) = v1286;
                                                                        *v260 = v1222;
                                                                        *(v260 + 16) = v1256;
                                                                      }

LABEL_414:
                                                                      v1290 = *(v10 + 32);
                                                                      v1226 = *v10;
                                                                      v1260 = *(v10 + 16);
                                                                      v420 = *v14;
                                                                      v421 = *(v14 + 16);
                                                                      *(v10 + 32) = *(v14 + 32);
                                                                      *v10 = v420;
                                                                      *(v10 + 16) = v421;
                                                                      *(v14 + 32) = v1290;
                                                                      *v14 = v1226;
                                                                      *(v14 + 16) = v1260;
                                                                      goto LABEL_415;
                                                                    }

                                                                    v391 = *(v382 + 16);
                                                                    v392 = *(v1287 + 16);
                                                                    v385 = v391 < v392;
                                                                    if (v391 == v392)
                                                                    {
                                                                      v393 = *(v382 + 24);
                                                                      v394 = *(v1287 + 24);
                                                                      v385 = v393 < v394;
                                                                      if (v393 == v394)
                                                                      {
                                                                        v395 = *(v382 + 40);
                                                                        v396 = *(v1287 + 40);
                                                                        v385 = v395 < v396;
                                                                        if (v395 == v396)
                                                                        {
                                                                          v385 = v386 < v387;
                                                                        }
                                                                      }
                                                                    }
                                                                  }

                                                                  if (v385)
                                                                  {
                                                                    goto LABEL_385;
                                                                  }

                                                                  goto LABEL_414;
                                                                }
                                                              }

                                                              v373 = *v260 < v347;
                                                              if (v358)
                                                              {
                                                                goto LABEL_368;
                                                              }

LABEL_397:
                                                              if (!v373)
                                                              {
                                                                goto LABEL_414;
                                                              }

                                                              v1288 = *(v14 + 32);
                                                              v1224 = *v14;
                                                              v1258 = *(v14 + 16);
                                                              v402 = *(v260 + 16);
                                                              *v14 = *v260;
                                                              *(v14 + 16) = v402;
                                                              *(v14 + 32) = *(v260 + 32);
                                                              *(v260 + 32) = v1288;
                                                              *v260 = v1224;
                                                              *(v260 + 16) = v1258;
                                                              v403 = *(v14 + 32);
                                                              v404 = *(v151 + 32);
                                                              v405 = *(v403 + 8);
                                                              v406 = *(v404 + 8);
                                                              v407 = v405 < v406;
                                                              if (v405 == v406)
                                                              {
                                                                v408 = *(v403 + 32);
                                                                v409 = *(v404 + 32);
                                                                if (v408 == v409 && *(v403 + 24) == *(v404 + 24) && *(v403 + 40) == *(v404 + 40) && *(v403 + 16) == *(v404 + 16))
                                                                {
                                                                  v410 = *(v403 + 64);
                                                                  v411 = *(v404 + 64);
                                                                  if (vabdd_f64(v410, v411) >= 50.0)
                                                                  {
                                                                    goto LABEL_749;
                                                                  }

                                                                  v410 = *(v403 + 48) / *(v403 + 56);
                                                                  v412 = *(v404 + 56);
                                                                  v411 = *(v404 + 48) / v412;
                                                                  if (v410 == v411)
                                                                  {
                                                                    goto LABEL_405;
                                                                  }

                                                                  v623 = fabs(*(v404 + 48) / v412);
                                                                  if (COERCE_UNSIGNED_INT64(fabs(*(v403 + 48) / *(v403 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v623 > 0x7FEFFFFFFFFFFFFFLL)
                                                                  {
                                                                    goto LABEL_749;
                                                                  }

                                                                  v643 = fabs(v410);
                                                                  v644 = fabs(v411);
                                                                  v645 = vabdd_f64(v410, v411);
                                                                  if (v643 < v644)
                                                                  {
                                                                    v643 = v644;
                                                                  }

                                                                  if (v643 < 1.0)
                                                                  {
                                                                    v643 = 1.0;
                                                                  }

                                                                  if (v645 <= v643 * 2.22044605e-16)
                                                                  {
LABEL_405:
                                                                    if (*v14 >= *v151)
                                                                    {
                                                                      goto LABEL_414;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
LABEL_749:
                                                                    if (v410 >= v411)
                                                                    {
                                                                      goto LABEL_414;
                                                                    }
                                                                  }

                                                                  goto LABEL_413;
                                                                }

                                                                v413 = *(v403 + 16);
                                                                v414 = *(v404 + 16);
                                                                v407 = v413 < v414;
                                                                if (v413 == v414)
                                                                {
                                                                  v415 = *(v403 + 24);
                                                                  v416 = *(v404 + 24);
                                                                  v407 = v415 < v416;
                                                                  if (v415 == v416)
                                                                  {
                                                                    v417 = *(v403 + 40);
                                                                    v418 = *(v404 + 40);
                                                                    v407 = v417 < v418;
                                                                    if (v417 == v418)
                                                                    {
                                                                      v407 = v408 < v409;
                                                                    }
                                                                  }
                                                                }
                                                              }

                                                              if (!v407)
                                                              {
                                                                goto LABEL_414;
                                                              }

LABEL_413:
                                                              v1289 = *(v151 + 32);
                                                              v1225 = *v151;
                                                              v1259 = *(v151 + 16);
                                                              v419 = *(v14 + 16);
                                                              *v151 = *v14;
                                                              *(v151 + 16) = v419;
                                                              *(v151 + 32) = *(v14 + 32);
                                                              *(v14 + 32) = v1289;
                                                              *v14 = v1225;
                                                              *(v14 + 16) = v1259;
                                                              goto LABEL_414;
                                                            }

                                                            v374 = *(v365 + 16);
                                                            v375 = *(v348 + 16);
                                                            v367 = v374 < v375;
                                                            if (v374 == v375)
                                                            {
                                                              v376 = *(v365 + 24);
                                                              v377 = *(v348 + 24);
                                                              v367 = v376 < v377;
                                                              if (v376 == v377)
                                                              {
                                                                v378 = *(v365 + 40);
                                                                v379 = *(v348 + 40);
                                                                v367 = v378 < v379;
                                                                if (v378 == v379)
                                                                {
                                                                  v367 = v368 < v369;
                                                                }
                                                              }
                                                            }
                                                          }

                                                          v373 = v367;
                                                          if (v358)
                                                          {
                                                            goto LABEL_368;
                                                          }

                                                          goto LABEL_397;
                                                        }

                                                        v359 = *(v348 + 16);
                                                        v360 = *(v349 + 16);
                                                        v352 = v359 < v360;
                                                        if (v359 == v360)
                                                        {
                                                          v361 = *(v348 + 24);
                                                          v362 = *(v349 + 24);
                                                          v352 = v361 < v362;
                                                          if (v361 == v362)
                                                          {
                                                            v363 = *(v348 + 40);
                                                            v364 = *(v349 + 40);
                                                            v352 = v363 < v364;
                                                            if (v363 == v364)
                                                            {
                                                              v352 = v353 < v354;
                                                            }
                                                          }
                                                        }
                                                      }

                                                      v358 = v352;
                                                      goto LABEL_351;
                                                    }

                                                    v312 = *(v303 + 16);
                                                    v313 = *(v304 + 16);
                                                    v307 = v312 < v313;
                                                    if (v312 == v313)
                                                    {
                                                      v314 = *(v303 + 24);
                                                      v315 = *(v304 + 24);
                                                      v307 = v314 < v315;
                                                      if (v314 == v315)
                                                      {
                                                        v316 = *(v303 + 40);
                                                        v317 = *(v304 + 40);
                                                        v307 = v316 < v317;
                                                        if (v316 == v317)
                                                        {
                                                          v307 = v308 < v309;
                                                        }
                                                      }
                                                    }
                                                  }

                                                  if (!v307)
                                                  {
                                                    goto LABEL_336;
                                                  }

                                                  goto LABEL_304;
                                                }
                                              }

                                              v287 = *(a2 - 120) < v261;
                                              if (v273)
                                              {
                                                goto LABEL_287;
                                              }

LABEL_319:
                                              if (!v287)
                                              {
                                                goto LABEL_336;
                                              }

                                              v1285 = *(v260 + 32);
                                              v1221 = *v260;
                                              v1254 = *(v260 + 16);
                                              v325 = *v9;
                                              v326 = *(a2 - 104);
                                              *(v260 + 32) = *(a2 - 88);
                                              *v260 = v325;
                                              *(v260 + 16) = v326;
                                              *(a2 - 88) = v1285;
                                              *v9 = v1221;
                                              *(a2 - 104) = v1254;
                                              v327 = *(v260 + 32);
                                              v328 = *(v10 + 112);
                                              v329 = *(v327 + 8);
                                              v330 = *(v328 + 8);
                                              v331 = v329 < v330;
                                              if (v329 == v330)
                                              {
                                                v332 = *(v327 + 32);
                                                v333 = *(v328 + 32);
                                                if (v332 == v333 && *(v327 + 24) == *(v328 + 24) && *(v327 + 40) == *(v328 + 40) && *(v327 + 16) == *(v328 + 16))
                                                {
                                                  v334 = *(v327 + 64);
                                                  v335 = *(v328 + 64);
                                                  if (vabdd_f64(v334, v335) >= 50.0)
                                                  {
                                                    goto LABEL_725;
                                                  }

                                                  v334 = *(v327 + 48) / *(v327 + 56);
                                                  v336 = *(v328 + 56);
                                                  v335 = *(v328 + 48) / v336;
                                                  if (v334 == v335)
                                                  {
                                                    goto LABEL_327;
                                                  }

                                                  v613 = fabs(*(v328 + 48) / v336);
                                                  if (COERCE_UNSIGNED_INT64(fabs(*(v327 + 48) / *(v327 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v613 > 0x7FEFFFFFFFFFFFFFLL)
                                                  {
                                                    goto LABEL_725;
                                                  }

                                                  v637 = fabs(v334);
                                                  v638 = fabs(v335);
                                                  v639 = vabdd_f64(v334, v335);
                                                  if (v637 < v638)
                                                  {
                                                    v637 = v638;
                                                  }

                                                  if (v637 < 1.0)
                                                  {
                                                    v637 = 1.0;
                                                  }

                                                  if (v639 <= v637 * 2.22044605e-16)
                                                  {
LABEL_327:
                                                    if (*v260 >= *(v10 + 80))
                                                    {
                                                      goto LABEL_336;
                                                    }
                                                  }

                                                  else
                                                  {
LABEL_725:
                                                    if (v334 >= v335)
                                                    {
                                                      goto LABEL_336;
                                                    }
                                                  }

LABEL_335:
                                                  v343 = *v258;
                                                  v1255 = *(v10 + 96);
                                                  v344 = *(v10 + 112);
                                                  v346 = *v260;
                                                  v345 = *(v260 + 16);
                                                  *(v10 + 112) = *(v260 + 32);
                                                  *v258 = v346;
                                                  *(v10 + 96) = v345;
                                                  *(v260 + 32) = v344;
                                                  *v260 = v343;
                                                  *(v260 + 16) = v1255;
                                                  goto LABEL_336;
                                                }

                                                v337 = *(v327 + 16);
                                                v338 = *(v328 + 16);
                                                v331 = v337 < v338;
                                                if (v337 == v338)
                                                {
                                                  v339 = *(v327 + 24);
                                                  v340 = *(v328 + 24);
                                                  v331 = v339 < v340;
                                                  if (v339 == v340)
                                                  {
                                                    v341 = *(v327 + 40);
                                                    v342 = *(v328 + 40);
                                                    v331 = v341 < v342;
                                                    if (v341 == v342)
                                                    {
                                                      v331 = v332 < v333;
                                                    }
                                                  }
                                                }
                                              }

                                              if (!v331)
                                              {
                                                goto LABEL_336;
                                              }

                                              goto LABEL_335;
                                            }

                                            v288 = *(v280 + 16);
                                            v289 = *(v263 + 16);
                                            v282 = v288 < v289;
                                            if (v288 == v289)
                                            {
                                              v290 = *(v280 + 24);
                                              v291 = *(v263 + 24);
                                              v282 = v290 < v291;
                                              if (v290 == v291)
                                              {
                                                v292 = *(v280 + 40);
                                                v293 = *(v263 + 40);
                                                v282 = v292 < v293;
                                                if (v292 == v293)
                                                {
                                                  v282 = v283 < v284;
                                                }
                                              }
                                            }
                                          }

                                          v287 = v282;
                                          if (v273)
                                          {
                                            goto LABEL_287;
                                          }

                                          goto LABEL_319;
                                        }

                                        v274 = *(v263 + 16);
                                        v275 = *(v264 + 16);
                                        v267 = v274 < v275;
                                        if (v274 == v275)
                                        {
                                          v276 = *(v263 + 24);
                                          v277 = *(v264 + 24);
                                          v267 = v276 < v277;
                                          if (v276 == v277)
                                          {
                                            v278 = *(v263 + 40);
                                            v279 = *(v264 + 40);
                                            v267 = v278 < v279;
                                            if (v278 == v279)
                                            {
                                              v267 = v268 < v269;
                                            }
                                          }
                                        }
                                      }

                                      v273 = v267;
                                      goto LABEL_270;
                                    }
                                  }

LABEL_254:
                                  v254 = *v149;
                                  v1251 = *(v10 + 56);
                                  v255 = *(v10 + 72);
                                  v257 = *v151;
                                  v256 = *(v151 + 16);
                                  *(v10 + 72) = *(v151 + 32);
                                  *v149 = v257;
                                  *(v10 + 56) = v256;
                                  *(v151 + 32) = v255;
                                  *v151 = v254;
                                  *(v151 + 16) = v1251;
                                  goto LABEL_255;
                                }

                                v248 = *(v238 + 16);
                                v249 = *(v239 + 16);
                                v242 = v248 < v249;
                                if (v248 == v249)
                                {
                                  v250 = *(v238 + 24);
                                  v251 = *(v239 + 24);
                                  v242 = v250 < v251;
                                  if (v250 == v251)
                                  {
                                    v252 = *(v238 + 40);
                                    v253 = *(v239 + 40);
                                    v242 = v252 < v253;
                                    if (v252 == v253)
                                    {
                                      v242 = v243 < v244;
                                    }
                                  }
                                }
                              }

                              if (!v242)
                              {
                                goto LABEL_255;
                              }

                              goto LABEL_254;
                            }

                            v179 = *(v171 + 16);
                            v180 = *(v154 + 16);
                            v173 = v179 < v180;
                            if (v179 == v180)
                            {
                              v181 = *(v171 + 24);
                              v182 = *(v154 + 24);
                              v173 = v181 < v182;
                              if (v181 == v182)
                              {
                                v183 = *(v171 + 40);
                                v184 = *(v154 + 40);
                                v173 = v183 < v184;
                                if (v183 == v184)
                                {
                                  v173 = v174 < v175;
                                }
                              }
                            }
                          }

                          v178 = v173;
                          if (v164)
                          {
                            goto LABEL_185;
                          }

                          goto LABEL_238;
                        }

                        v165 = *(v154 + 16);
                        v166 = *(v155 + 16);
                        v158 = v165 < v166;
                        if (v165 == v166)
                        {
                          v167 = *(v154 + 24);
                          v168 = *(v155 + 24);
                          v158 = v167 < v168;
                          if (v167 == v168)
                          {
                            v169 = *(v154 + 40);
                            v170 = *(v155 + 40);
                            v158 = v169 < v170;
                            if (v169 == v170)
                            {
                              v158 = v159 < v160;
                            }
                          }
                        }
                      }

                      v164 = v158;
                      goto LABEL_168;
                    }

                    v105 = *(v86 + 16);
                    v106 = *(v1276 + 16);
                    v89 = v105 < v106;
                    if (v105 == v106)
                    {
                      v107 = *(v86 + 24);
                      v108 = *(v1276 + 24);
                      v89 = v107 < v108;
                      if (v107 == v108)
                      {
                        v109 = *(v86 + 40);
                        v110 = *(v1276 + 40);
                        v89 = v109 < v110;
                        if (v109 == v110)
                        {
                          v89 = v90 < v91;
                        }
                      }
                    }
                  }

                  if (!v89)
                  {
                    goto LABEL_153;
                  }

                  goto LABEL_105;
                }
              }

              v51 = *(a2 - 40) < v15;
              if (v26)
              {
                goto LABEL_69;
              }

LABEL_136:
              if (!v51)
              {
                goto LABEL_153;
              }

              v1278 = *(v14 + 32);
              v1214 = *v14;
              v1243 = *(v14 + 16);
              v129 = *v8;
              v130 = *(a2 - 24);
              *(v14 + 32) = *(a2 - 8);
              *v14 = v129;
              *(v14 + 16) = v130;
              *(a2 - 8) = v1278;
              *v8 = v1214;
              *(a2 - 24) = v1243;
              v131 = *(v14 + 32);
              v132 = *(v10 + 32);
              v133 = *(v131 + 8);
              v134 = *(v132 + 8);
              v135 = v133 < v134;
              if (v133 == v134)
              {
                v136 = *(v131 + 32);
                v137 = *(v132 + 32);
                if (v136 == v137 && *(v131 + 24) == *(v132 + 24) && *(v131 + 40) == *(v132 + 40) && *(v131 + 16) == *(v132 + 16))
                {
                  v138 = *(v131 + 64);
                  v139 = *(v132 + 64);
                  if (vabdd_f64(v138, v139) >= 50.0)
                  {
                    goto LABEL_668;
                  }

                  v138 = *(v131 + 48) / *(v131 + 56);
                  v140 = *(v132 + 56);
                  v139 = *(v132 + 48) / v140;
                  if (v138 == v139)
                  {
                    goto LABEL_144;
                  }

                  v591 = fabs(*(v132 + 48) / v140);
                  if (COERCE_UNSIGNED_INT64(fabs(*(v131 + 48) / *(v131 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v591 > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_668;
                  }

                  v631 = fabs(v138);
                  v632 = fabs(v139);
                  v633 = vabdd_f64(v138, v139);
                  if (v631 < v632)
                  {
                    v631 = v632;
                  }

                  if (v631 < 1.0)
                  {
                    v631 = 1.0;
                  }

                  if (v633 <= v631 * 2.22044605e-16)
                  {
LABEL_144:
                    if (*v14 >= *v10)
                    {
                      goto LABEL_153;
                    }
                  }

                  else
                  {
LABEL_668:
                    if (v138 >= v139)
                    {
                      goto LABEL_153;
                    }
                  }

LABEL_152:
                  v1279 = *(v10 + 32);
                  v1215 = *v10;
                  v1244 = *(v10 + 16);
                  v147 = *v14;
                  v148 = *(v14 + 16);
                  *(v10 + 32) = *(v14 + 32);
                  *v10 = v147;
                  *(v10 + 16) = v148;
                  *(v14 + 32) = v1279;
                  *v14 = v1215;
                  *(v14 + 16) = v1244;
                  goto LABEL_153;
                }

                v141 = *(v131 + 16);
                v142 = *(v132 + 16);
                v135 = v141 < v142;
                if (v141 == v142)
                {
                  v143 = *(v131 + 24);
                  v144 = *(v132 + 24);
                  v135 = v143 < v144;
                  if (v143 == v144)
                  {
                    v145 = *(v131 + 40);
                    v146 = *(v132 + 40);
                    v135 = v145 < v146;
                    if (v145 == v146)
                    {
                      v135 = v136 < v137;
                    }
                  }
                }
              }

              if (!v135)
              {
                goto LABEL_153;
              }

              goto LABEL_152;
            }

            v68 = *(v44 + 16);
            v69 = *(v16 + 16);
            v46 = v68 < v69;
            if (v68 == v69)
            {
              v70 = *(v44 + 24);
              v71 = *(v16 + 24);
              v46 = v70 < v71;
              if (v70 == v71)
              {
                v72 = *(v44 + 40);
                v73 = *(v16 + 40);
                v46 = v72 < v73;
                if (v72 == v73)
                {
                  v46 = v47 < v48;
                }
              }
            }
          }

          v51 = v46;
          if (v26)
          {
            goto LABEL_69;
          }

          goto LABEL_136;
        }

        v38 = *(v16 + 16);
        v39 = *(v17 + 16);
        v20 = v38 < v39;
        if (v38 == v39)
        {
          v40 = *(v16 + 24);
          v41 = *(v17 + 24);
          v20 = v40 < v41;
          if (v40 == v41)
          {
            v42 = *(v16 + 40);
            v43 = *(v17 + 40);
            v20 = v42 < v43;
            if (v42 == v43)
            {
              v20 = v21 < v22;
            }
          }
        }
      }

      v26 = v20;
      goto LABEL_35;
    }

    v27 = *v10;
    v28 = *(v10 + 32);
    v29 = *(v14 + 32);
    v30 = *(v28 + 8);
    v31 = *(v29 + 8);
    v32 = v30 < v31;
    if (v30 != v31)
    {
LABEL_49:
      v37 = v32;
      goto LABEL_52;
    }

    v33 = *(v28 + 32);
    v34 = *(v29 + 32);
    if (v33 == v34 && *(v28 + 24) == *(v29 + 24) && *(v28 + 40) == *(v29 + 40) && *(v28 + 16) == *(v29 + 16))
    {
      v35 = *(v28 + 64);
      v36 = *(v29 + 64);
      if (vabdd_f64(v35, v36) >= 50.0)
      {
        goto LABEL_127;
      }

      v35 = *(v28 + 48) / *(v28 + 56);
      v36 = *(v29 + 48) / *(v29 + 56);
      if (v35 == v36)
      {
        goto LABEL_27;
      }

      if (COERCE_UNSIGNED_INT64(fabs(*(v28 + 48) / *(v28 + 56))) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(*(v29 + 48) / *(v29 + 56))) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_127;
      }

      v123 = fabs(v35);
      v124 = fabs(v36);
      v125 = vabdd_f64(v35, v36);
      if (v123 < v124)
      {
        v123 = v124;
      }

      if (v123 < 1.0)
      {
        v123 = 1.0;
      }

      if (v125 <= v123 * 2.22044605e-16)
      {
LABEL_27:
        v37 = v27 < *v14;
      }

      else
      {
LABEL_127:
        v37 = v35 < v36;
      }
    }

    else
    {
      v52 = *(v28 + 16);
      v53 = *(v29 + 16);
      v32 = v52 < v53;
      if (v52 != v53)
      {
        goto LABEL_49;
      }

      v54 = *(v28 + 24);
      v55 = *(v29 + 24);
      v32 = v54 < v55;
      if (v54 != v55)
      {
        goto LABEL_49;
      }

      v56 = *(v28 + 40);
      v57 = *(v29 + 40);
      v58 = v33 < v34;
      v769 = v56 == v57;
      v37 = v56 < v57;
      if (v769)
      {
        v37 = v58;
      }
    }

LABEL_52:
    v59 = *(a2 - 8);
    v60 = *(v59 + 8);
    v61 = v60 < v30;
    if (v60 == v30)
    {
      v62 = *(v59 + 32);
      v63 = *(v28 + 32);
      if (v62 == v63 && *(v59 + 24) == *(v28 + 24) && *(v59 + 40) == *(v28 + 40) && *(v59 + 16) == *(v28 + 16))
      {
        v64 = *(v59 + 64);
        v65 = *(v28 + 64);
        if (vabdd_f64(v64, v65) >= 50.0)
        {
          goto LABEL_207;
        }

        v64 = *(v59 + 48) / *(v59 + 56);
        v66 = *(v28 + 56);
        v65 = *(v28 + 48) / v66;
        if (v64 == v65)
        {
          goto LABEL_59;
        }

        v210 = fabs(*(v28 + 48) / v66);
        if (COERCE_UNSIGNED_INT64(fabs(*(v59 + 48) / *(v59 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v210 > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_207;
        }

        v596 = fabs(v64);
        v597 = fabs(v65);
        v598 = vabdd_f64(v64, v65);
        if (v596 < v597)
        {
          v596 = v597;
        }

        if (v596 < 1.0)
        {
          v596 = 1.0;
        }

        if (v598 <= v596 * 2.22044605e-16)
        {
LABEL_59:
          v67 = *(a2 - 40) < v27;
          if (v37)
          {
            goto LABEL_79;
          }
        }

        else
        {
LABEL_207:
          v67 = v64 < v65;
          if (v37)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_208;
      }

      v76 = *(v59 + 16);
      v77 = *(v28 + 16);
      v61 = v76 < v77;
      if (v76 == v77)
      {
        v78 = *(v59 + 24);
        v79 = *(v28 + 24);
        v61 = v78 < v79;
        if (v78 == v79)
        {
          v80 = *(v59 + 40);
          v81 = *(v28 + 40);
          v61 = v80 < v81;
          if (v80 == v81)
          {
            v61 = v62 < v63;
          }
        }
      }
    }

    v67 = v61;
    if (v37)
    {
LABEL_79:
      if (v67)
      {
        v1275 = *(v14 + 32);
        v1211 = *v14;
        v1240 = *(v14 + 16);
        v82 = *v8;
        v83 = *(a2 - 24);
        *(v14 + 32) = *(a2 - 8);
        *v14 = v82;
        *(v14 + 16) = v83;
LABEL_114:
        *(a2 - 8) = v1275;
        *v8 = v1211;
        *(a2 - 24) = v1240;
        goto LABEL_415;
      }

      v1277 = *(v14 + 32);
      v1213 = *v14;
      v1242 = *(v14 + 16);
      v94 = *v10;
      v95 = *(v10 + 16);
      *(v14 + 32) = *(v10 + 32);
      *v14 = v94;
      *(v14 + 16) = v95;
      *(v10 + 32) = v1277;
      *v10 = v1213;
      *(v10 + 16) = v1242;
      v96 = *(a2 - 8);
      v97 = *(v96 + 8);
      v98 = *(v1277 + 8);
      v99 = v97 < v98;
      if (v97 != v98)
      {
        goto LABEL_111;
      }

      v100 = *(v96 + 32);
      v101 = *(v1277 + 32);
      if (v100 != v101 || *(v96 + 24) != *(v1277 + 24) || *(v96 + 40) != *(v1277 + 40) || *(v96 + 16) != *(v1277 + 16))
      {
        v113 = *(v96 + 16);
        v114 = *(v1277 + 16);
        v99 = v113 < v114;
        if (v113 == v114)
        {
          v115 = *(v96 + 24);
          v116 = *(v1277 + 24);
          v99 = v115 < v116;
          if (v115 == v116)
          {
            v117 = *(v96 + 40);
            v118 = *(v1277 + 40);
            v99 = v117 < v118;
            if (v117 == v118)
            {
              v99 = v100 < v101;
            }
          }
        }

LABEL_111:
        if (v99)
        {
          goto LABEL_113;
        }

        goto LABEL_415;
      }

      v102 = *(v96 + 64);
      v103 = *(v1277 + 64);
      if (vabdd_f64(v102, v103) >= 50.0)
      {
        goto LABEL_656;
      }

      v102 = *(v96 + 48) / *(v96 + 56);
      v104 = *(v1277 + 56);
      v103 = *(v1277 + 48) / v104;
      if (v102 == v103)
      {
        goto LABEL_97;
      }

      v586 = fabs(*(v1277 + 48) / v104);
      if (COERCE_UNSIGNED_INT64(fabs(*(v96 + 48) / *(v96 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v586 > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_656;
      }

      v628 = fabs(v102);
      v629 = fabs(v103);
      v630 = vabdd_f64(v102, v103);
      if (v628 < v629)
      {
        v628 = v629;
      }

      if (v628 < 1.0)
      {
        v628 = 1.0;
      }

      if (v630 <= v628 * 2.22044605e-16)
      {
LABEL_97:
        if (*(a2 - 40) < *v10)
        {
          goto LABEL_113;
        }
      }

      else
      {
LABEL_656:
        if (v102 < v103)
        {
LABEL_113:
          v1275 = *(v10 + 32);
          v1211 = *v10;
          v1240 = *(v10 + 16);
          v119 = *v8;
          v120 = *(a2 - 24);
          *(v10 + 32) = *(a2 - 8);
          *v10 = v119;
          *(v10 + 16) = v120;
          goto LABEL_114;
        }
      }

      goto LABEL_415;
    }

LABEL_208:
    if (!v67)
    {
      goto LABEL_415;
    }

    v1281 = *(v10 + 32);
    v1217 = *v10;
    v1248 = *(v10 + 16);
    v212 = *v8;
    v213 = *(a2 - 24);
    *(v10 + 32) = *(a2 - 8);
    *v10 = v212;
    *(v10 + 16) = v213;
    *(a2 - 8) = v1281;
    *v8 = v1217;
    *(a2 - 24) = v1248;
    v214 = *(v10 + 32);
    v215 = *(v14 + 32);
    v216 = *(v214 + 8);
    v217 = *(v215 + 8);
    v218 = v216 < v217;
    if (v216 != v217)
    {
      goto LABEL_222;
    }

    v219 = *(v214 + 32);
    v220 = *(v215 + 32);
    if (v219 != v220 || *(v214 + 24) != *(v215 + 24) || *(v214 + 40) != *(v215 + 40) || *(v214 + 16) != *(v215 + 16))
    {
      v223 = *(v214 + 16);
      v224 = *(v215 + 16);
      v218 = v223 < v224;
      if (v223 == v224)
      {
        v225 = *(v214 + 24);
        v226 = *(v215 + 24);
        v218 = v225 < v226;
        if (v225 == v226)
        {
          v227 = *(v214 + 40);
          v228 = *(v215 + 40);
          v218 = v227 < v228;
          if (v227 == v228)
          {
            v218 = v219 < v220;
          }
        }
      }

LABEL_222:
      if (v218)
      {
        goto LABEL_224;
      }

      goto LABEL_415;
    }

    v221 = *(v214 + 64);
    v222 = *(v215 + 64);
    if (vabdd_f64(v221, v222) >= 50.0)
    {
      goto LABEL_692;
    }

    v221 = *(v214 + 48) / *(v214 + 56);
    v222 = *(v215 + 48) / *(v215 + 56);
    if (v221 == v222)
    {
      goto LABEL_216;
    }

    if (COERCE_UNSIGNED_INT64(fabs(*(v214 + 48) / *(v214 + 56))) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(*(v215 + 48) / *(v215 + 56))) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_692;
    }

    v599 = fabs(v221);
    v600 = fabs(v222);
    v601 = vabdd_f64(v221, v222);
    if (v599 < v600)
    {
      v599 = v600;
    }

    if (v599 < 1.0)
    {
      v599 = 1.0;
    }

    if (v601 <= v599 * 2.22044605e-16)
    {
LABEL_216:
      if (*v10 < *v14)
      {
        goto LABEL_224;
      }
    }

    else
    {
LABEL_692:
      if (v221 < v222)
      {
LABEL_224:
        v1282 = *(v14 + 32);
        v1218 = *v14;
        v1249 = *(v14 + 16);
        v229 = *v10;
        v230 = *(v10 + 16);
        *(v14 + 32) = *(v10 + 32);
        *v14 = v229;
        *(v14 + 16) = v230;
        *(v10 + 32) = v1282;
        *v10 = v1218;
        *(v10 + 16) = v1249;
      }
    }

LABEL_415:
    --a3;
    v422 = *v10;
    if (a4)
    {
      v423 = *(v10 + 32);
      v424 = *(v423 + 8);
LABEL_433:
      v439 = 0;
      v1207 = *(v10 + 24);
      v1204 = *(v10 + 8);
      while (1)
      {
        v440 = *(v10 + v439 + 72);
        v441 = *(v440 + 8);
        v442 = v441 < v424;
        if (v441 != v424)
        {
          goto LABEL_447;
        }

        v443 = *(v440 + 32);
        v444 = *(v423 + 32);
        if (v443 == v444 && *(v440 + 24) == *(v423 + 24) && *(v440 + 40) == *(v423 + 40) && *(v440 + 16) == *(v423 + 16))
        {
          break;
        }

        v448 = *(v440 + 16);
        v449 = *(v423 + 16);
        v442 = v448 < v449;
        if (v448 == v449)
        {
          v450 = *(v440 + 24);
          v451 = *(v423 + 24);
          v442 = v450 < v451;
          if (v450 == v451)
          {
            v452 = *(v440 + 40);
            v453 = *(v423 + 40);
            v442 = v452 < v453;
            if (v452 == v453)
            {
              v442 = v443 < v444;
            }
          }
        }

LABEL_447:
        if (!v442)
        {
          goto LABEL_462;
        }

LABEL_449:
        v439 += 40;
      }

      v445 = *(v440 + 64);
      v446 = *(v423 + 64);
      if (vabdd_f64(v445, v446) < 50.0)
      {
        v445 = *(v440 + 48) / *(v440 + 56);
        v447 = *(v423 + 56);
        v446 = *(v423 + 48) / v447;
        if (v445 == v446)
        {
          goto LABEL_441;
        }

        v454 = __OFSUB__(fabs(*(v440 + 48) / *(v440 + 56)), 0x7FEFFFFFFFFFFFFFLL);
        v455 = fabs(*(v423 + 48) / v447);
        if ((*&v445 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *&v455 <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v457 = fabs(v445);
          v458 = fabs(v446);
          v459 = vabdd_f64(v445, v446);
          if (v457 < v458)
          {
            v457 = v458;
          }

          if (v457 < 1.0)
          {
            v457 = 1.0;
          }

          if (v459 <= v457 * 2.22044605e-16)
          {
LABEL_441:
            if (*(v10 + v439 + 40) >= v422)
            {
              goto LABEL_462;
            }

            goto LABEL_449;
          }
        }
      }

      if (v445 < v446)
      {
        goto LABEL_449;
      }

LABEL_462:
      v460 = v10 + v439;
      v461 = v10 + v439 + 40;
      i = (a2 - 40);
      if (v439)
      {
        while (1)
        {
          v463 = i[4];
          v464 = *(v463 + 8);
          v465 = v464 < v424;
          if (v464 != v424)
          {
            goto LABEL_476;
          }

          v466 = *(v463 + 32);
          v467 = *(v423 + 32);
          if (v466 != v467 || *(v463 + 24) != *(v423 + 24) || *(v463 + 40) != *(v423 + 40) || *(v463 + 16) != *(v423 + 16))
          {
            break;
          }

          v468 = *(v463 + 64);
          v469 = *(v423 + 64);
          if (vabdd_f64(v468, v469) >= 50.0)
          {
            goto LABEL_482;
          }

          v468 = *(v463 + 48) / *(v463 + 56);
          v470 = *(v423 + 56);
          v469 = *(v423 + 48) / v470;
          if (v468 == v469)
          {
            goto LABEL_470;
          }

          v454 = __OFSUB__(fabs(*(v463 + 48) / *(v463 + 56)), 0x7FEFFFFFFFFFFFFFLL);
          v477 = fabs(*(v423 + 48) / v470);
          if ((*&v468 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *&v477 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_482;
          }

          v479 = fabs(v468);
          v480 = fabs(v469);
          v481 = vabdd_f64(v468, v469);
          if (v479 < v480)
          {
            v479 = v480;
          }

          if (v479 < 1.0)
          {
            v479 = 1.0;
          }

          if (v481 <= v479 * 2.22044605e-16)
          {
LABEL_470:
            if (*i < v422)
            {
              goto LABEL_530;
            }
          }

          else
          {
LABEL_482:
            if (v468 < v469)
            {
              goto LABEL_530;
            }
          }

LABEL_477:
          i -= 5;
        }

        v471 = *(v463 + 16);
        v472 = *(v423 + 16);
        v465 = v471 < v472;
        if (v471 == v472)
        {
          v473 = *(v463 + 24);
          v474 = *(v423 + 24);
          v465 = v473 < v474;
          if (v473 == v474)
          {
            v475 = *(v463 + 40);
            v476 = *(v423 + 40);
            v465 = v475 < v476;
            if (v475 == v476)
            {
              v465 = v466 < v467;
            }
          }
        }

LABEL_476:
        if (v465)
        {
          goto LABEL_530;
        }

        goto LABEL_477;
      }

      i = a2;
      if (v461 < a2)
      {
        for (i = (a2 - 40); ; i -= 5)
        {
          v482 = i[4];
          v483 = *(v482 + 8);
          if (v483 == v424)
          {
            v484 = *(v482 + 32);
            v485 = *(v423 + 32);
            if (v484 == v485 && *(v482 + 24) == *(v423 + 24) && *(v482 + 40) == *(v423 + 40) && *(v482 + 16) == *(v423 + 16))
            {
              v486 = *(v482 + 64);
              v487 = *(v423 + 64);
              if (vabdd_f64(v486, v487) >= 50.0)
              {
                goto LABEL_522;
              }

              v486 = *(v482 + 48) / *(v482 + 56);
              v488 = *(v423 + 56);
              v487 = *(v423 + 48) / v488;
              if (v486 == v487)
              {
                goto LABEL_500;
              }

              v454 = __OFSUB__(fabs(*(v482 + 48) / *(v482 + 56)), 0x7FEFFFFFFFFFFFFFLL);
              v493 = fabs(*(v423 + 48) / v488);
              if ((*&v486 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *&v493 > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_522;
              }

              v495 = fabs(v486);
              v496 = fabs(v487);
              v497 = vabdd_f64(v486, v487);
              if (v495 < v496)
              {
                v495 = v496;
              }

              if (v495 < 1.0)
              {
                v495 = 1.0;
              }

              if (v497 <= v495 * 2.22044605e-16)
              {
LABEL_500:
                if (*i < v422 || v461 >= i)
                {
                  break;
                }
              }

              else
              {
LABEL_522:
                if (v461 >= i || v486 < v487)
                {
                  break;
                }
              }
            }

            else
            {
              v489 = *(v482 + 16);
              v490 = *(v423 + 16);
              if (v489 == v490 && (v489 = *(v482 + 24), v490 = *(v423 + 24), v489 == v490))
              {
                v491 = *(v482 + 40);
                v492 = *(v423 + 40);
                if (v491 == v492)
                {
                  if (v461 >= i || v484 < v485)
                  {
                    break;
                  }
                }

                else if (v461 >= i || v491 < v492)
                {
                  break;
                }
              }

              else if (v461 >= i || v489 < v490)
              {
                break;
              }
            }
          }

          else if (v461 >= i || v483 < v424)
          {
            break;
          }
        }
      }

LABEL_530:
      if (v461 >= i)
      {
        goto LABEL_589;
      }

      v498 = v461;
      v499 = i;
      while (2)
      {
        v1291 = *(v498 + 32);
        v1227 = *v498;
        v1261 = *(v498 + 16);
        v500 = *v499;
        v501 = *(v499 + 1);
        *(v498 + 32) = v499[4];
        *v498 = v500;
        *(v498 + 16) = v501;
        v499[4] = v1291;
        *v499 = v1227;
        *(v499 + 1) = v1261;
        v502 = *(v423 + 8);
        while (2)
        {
          while (2)
          {
            while (2)
            {
              v498 += 40;
              v503 = *(v498 + 32);
              v504 = *(v503 + 8);
              v505 = v504 < v502;
              if (v504 != v502)
              {
                goto LABEL_546;
              }

              v506 = *(v503 + 32);
              v507 = *(v423 + 32);
              if (v506 != v507 || *(v503 + 24) != *(v423 + 24) || *(v503 + 40) != *(v423 + 40) || *(v503 + 16) != *(v423 + 16))
              {
                v511 = *(v503 + 16);
                v512 = *(v423 + 16);
                v505 = v511 < v512;
                if (v511 == v512)
                {
                  v513 = *(v503 + 24);
                  v514 = *(v423 + 24);
                  v505 = v513 < v514;
                  if (v513 == v514)
                  {
                    v515 = *(v503 + 40);
                    v516 = *(v423 + 40);
                    v505 = v515 < v516;
                    if (v515 == v516)
                    {
                      v505 = v506 < v507;
                    }
                  }
                }

LABEL_546:
                if (!v505)
                {
                  goto LABEL_579;
                }

                continue;
              }

              break;
            }

            v508 = *(v503 + 64);
            v509 = *(v423 + 64);
            if (vabdd_f64(v508, v509) < 50.0)
            {
              v508 = *(v503 + 48) / *(v503 + 56);
              v510 = *(v423 + 56);
              v509 = *(v423 + 48) / v510;
              if (v508 == v509)
              {
                goto LABEL_540;
              }

              v454 = __OFSUB__(fabs(*(v503 + 48) / *(v503 + 56)), 0x7FEFFFFFFFFFFFFFLL);
              v517 = fabs(*(v423 + 48) / v510);
              if ((*&v508 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *&v517 <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v519 = fabs(v508);
                v520 = fabs(v509);
                v521 = vabdd_f64(v508, v509);
                if (v519 < v520)
                {
                  v519 = v520;
                }

                if (v519 < 1.0)
                {
                  v519 = 1.0;
                }

                if (v521 <= v519 * 2.22044605e-16)
                {
LABEL_540:
                  if (*v498 >= v422)
                  {
                    goto LABEL_579;
                  }

                  continue;
                }
              }
            }

            break;
          }

          if (v508 < v509)
          {
            continue;
          }

          break;
        }

        do
        {
          while (1)
          {
            while (1)
            {
LABEL_579:
              v499 -= 5;
              v534 = v499[4];
              v535 = *(v534 + 8);
              v524 = v535 < v502;
              if (v535 != v502)
              {
                goto LABEL_564;
              }

              v536 = *(v534 + 32);
              v537 = *(v423 + 32);
              if (v536 == v537 && *(v534 + 24) == *(v423 + 24) && *(v534 + 40) == *(v423 + 40) && *(v534 + 16) == *(v423 + 16))
              {
                break;
              }

              v522 = *(v534 + 16);
              v523 = *(v423 + 16);
              v524 = v522 < v523;
              if (v522 == v523)
              {
                v525 = *(v534 + 24);
                v526 = *(v423 + 24);
                v524 = v525 < v526;
                if (v525 == v526)
                {
                  v527 = *(v534 + 40);
                  v528 = *(v423 + 40);
                  v524 = v527 < v528;
                  if (v527 == v528)
                  {
                    v524 = v536 < v537;
                  }
                }
              }

LABEL_564:
              if (v524)
              {
                goto LABEL_587;
              }
            }

            v538 = *(v534 + 64);
            v539 = *(v423 + 64);
            if (vabdd_f64(v538, v539) < 50.0)
            {
              v538 = *(v534 + 48) / *(v534 + 56);
              v540 = *(v423 + 56);
              v539 = *(v423 + 48) / v540;
              if (v538 == v539)
              {
                break;
              }

              v454 = __OFSUB__(fabs(*(v534 + 48) / *(v534 + 56)), 0x7FEFFFFFFFFFFFFFLL);
              v529 = fabs(*(v423 + 48) / v540);
              if ((*&v538 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *&v529 <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v531 = fabs(v538);
                v532 = fabs(v539);
                v533 = vabdd_f64(v538, v539);
                if (v531 < v532)
                {
                  v531 = v532;
                }

                if (v531 < 1.0)
                {
                  v531 = 1.0;
                }

                if (v533 <= v531 * 2.22044605e-16)
                {
                  break;
                }
              }
            }

            if (v538 < v539)
            {
              goto LABEL_587;
            }
          }
        }

        while (*v499 >= v422);
LABEL_587:
        if (v498 < v499)
        {
          continue;
        }

        break;
      }

      v460 = v498 - 40;
LABEL_589:
      if (v460 != v10)
      {
        v541 = *v460;
        v542 = *(v460 + 16);
        *(v10 + 32) = *(v460 + 32);
        *v10 = v541;
        *(v10 + 16) = v542;
      }

      *v460 = v422;
      *(v460 + 8) = v1204;
      *(v460 + 24) = v1207;
      *(v460 + 32) = v423;
      if (v461 < i)
      {
LABEL_594:
        sub_100048314(a1, v460, a3, a4 & 1);
        a4 = 0;
        v10 = v460 + 40;
      }

      else
      {
        v543 = sub_10004D8AC(v10, v460, v1204);
        v10 = v460 + 40;
        if (sub_10004D8AC(v460 + 40, a2, v544))
        {
          a2 = v460;
          if (v543)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v543)
        {
          goto LABEL_594;
        }
      }
    }

    else
    {
      v425 = *(v10 - 8);
      v423 = *(v10 + 32);
      v424 = *(v425 + 8);
      v426 = *(v423 + 8);
      v427 = v424 < v426;
      if (v424 != v426)
      {
        v424 = *(v423 + 8);
        goto LABEL_431;
      }

      v428 = *(v425 + 32);
      v429 = *(v423 + 32);
      if (v428 != v429 || *(v425 + 24) != *(v423 + 24) || *(v425 + 40) != *(v423 + 40) || *(v425 + 16) != *(v423 + 16))
      {
        v433 = *(v425 + 16);
        v434 = *(v423 + 16);
        v427 = v433 < v434;
        if (v433 == v434)
        {
          v435 = *(v425 + 24);
          v436 = *(v423 + 24);
          v427 = v435 < v436;
          if (v435 == v436)
          {
            v437 = *(v425 + 40);
            v438 = *(v423 + 40);
            v427 = v437 < v438;
            if (v437 == v438)
            {
              v427 = v428 < v429;
            }
          }
        }

LABEL_431:
        if (v427)
        {
          goto LABEL_433;
        }

        goto LABEL_600;
      }

      v430 = *(v425 + 64);
      v431 = *(v423 + 64);
      if (vabdd_f64(v430, v431) >= 50.0)
      {
        goto LABEL_599;
      }

      v430 = *(v425 + 48) / *(v425 + 56);
      v432 = *(v423 + 56);
      v431 = *(v423 + 48) / v432;
      if (v430 == v431)
      {
        goto LABEL_424;
      }

      v454 = __OFSUB__(fabs(*(v425 + 48) / *(v425 + 56)), 0x7FEFFFFFFFFFFFFFLL);
      v545 = fabs(*(v423 + 48) / v432);
      if ((*&v430 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *&v545 > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_599;
      }

      v625 = fabs(v430);
      v626 = fabs(v431);
      v627 = vabdd_f64(v430, v431);
      if (v625 < v626)
      {
        v625 = v626;
      }

      if (v625 < 1.0)
      {
        v625 = 1.0;
      }

      if (v627 <= v625 * 2.22044605e-16)
      {
LABEL_424:
        if (*(v10 - 40) < v422)
        {
          goto LABEL_433;
        }
      }

      else
      {
LABEL_599:
        if (v430 < v431)
        {
          goto LABEL_433;
        }
      }

LABEL_600:
      v1208 = *(v10 + 24);
      v1205 = *(v10 + 8);
      v547 = *(v10 + 32);
      v548 = *(a2 - 40);
      v549 = *(a2 - 8);
      v550 = *(v547 + 8);
      v551 = *(v549 + 8);
      v552 = v550 < v551;
      if (v550 == v551)
      {
        v553 = *(v547 + 32);
        v554 = *(v549 + 32);
        if (v553 == v554 && *(v547 + 24) == *(v549 + 24) && *(v547 + 40) == *(v549 + 40) && *(v547 + 16) == *(v549 + 16))
        {
          v555 = *(v547 + 64);
          v556 = *(v549 + 64);
          if (vabdd_f64(v555, v556) >= 50.0)
          {
            goto LABEL_797;
          }

          v555 = *(v547 + 48) / *(v547 + 56);
          v557 = *(v549 + 56);
          v556 = *(v549 + 48) / v557;
          if (v555 == v556)
          {
            goto LABEL_607;
          }

          v646 = fabs(*(v549 + 48) / v557);
          if (COERCE_UNSIGNED_INT64(fabs(*(v547 + 48) / *(v547 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v646 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_797;
          }

          v729 = fabs(v555);
          v730 = fabs(v556);
          v731 = vabdd_f64(v555, v556);
          if (v729 < v730)
          {
            v729 = v730;
          }

          if (v729 < 1.0)
          {
            v729 = 1.0;
          }

          if (v731 <= v729 * 2.22044605e-16)
          {
LABEL_607:
            if (v422 >= v548)
            {
              goto LABEL_798;
            }
          }

          else
          {
LABEL_797:
            if (v555 >= v556)
            {
LABEL_798:
              for (v10 += 40; ; v10 += 40)
              {
                if (v10 >= a2)
                {
                  goto LABEL_827;
                }

                v648 = *(v10 + 32);
                v649 = *(v648 + 8);
                v650 = v550 < v649;
                if (v550 != v649)
                {
                  goto LABEL_813;
                }

                v651 = *(v547 + 32);
                v652 = *(v648 + 32);
                if (v651 != v652 || *(v547 + 24) != *(v648 + 24) || *(v547 + 40) != *(v648 + 40) || *(v547 + 16) != *(v648 + 16))
                {
                  break;
                }

                v653 = *(v547 + 64);
                v654 = *(v648 + 64);
                if (vabdd_f64(v653, v654) >= 50.0)
                {
                  goto LABEL_819;
                }

                v653 = *(v547 + 48) / *(v547 + 56);
                v655 = *(v648 + 56);
                v654 = *(v648 + 48) / v655;
                if (v653 == v654)
                {
                  goto LABEL_807;
                }

                v662 = fabs(*(v648 + 48) / v655);
                if (COERCE_UNSIGNED_INT64(fabs(*(v547 + 48) / *(v547 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v662 > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_819;
                }

                v664 = fabs(v653);
                v665 = fabs(v654);
                v666 = vabdd_f64(v653, v654);
                if (v664 < v665)
                {
                  v664 = v665;
                }

                if (v664 < 1.0)
                {
                  v664 = 1.0;
                }

                if (v666 <= v664 * 2.22044605e-16)
                {
LABEL_807:
                  if (v422 < *v10)
                  {
                    goto LABEL_827;
                  }
                }

                else
                {
LABEL_819:
                  if (v653 < v654)
                  {
                    goto LABEL_827;
                  }
                }

LABEL_814:
                ;
              }

              v656 = *(v547 + 16);
              v657 = *(v648 + 16);
              v650 = v656 < v657;
              if (v656 == v657)
              {
                v658 = *(v547 + 24);
                v659 = *(v648 + 24);
                v650 = v658 < v659;
                if (v658 == v659)
                {
                  v660 = *(v547 + 40);
                  v661 = *(v648 + 40);
                  v650 = v660 < v661;
                  if (v660 == v661)
                  {
                    v650 = v651 < v652;
                  }
                }
              }

LABEL_813:
              if (v650)
              {
                goto LABEL_827;
              }

              goto LABEL_814;
            }
          }

          goto LABEL_615;
        }

        v558 = *(v547 + 16);
        v559 = *(v549 + 16);
        v552 = v558 < v559;
        if (v558 == v559)
        {
          v560 = *(v547 + 24);
          v561 = *(v549 + 24);
          v552 = v560 < v561;
          if (v560 == v561)
          {
            v562 = *(v547 + 40);
            v563 = *(v549 + 40);
            v552 = v562 < v563;
            if (v562 == v563)
            {
              v552 = v553 < v554;
            }
          }
        }
      }

      if (!v552)
      {
        goto LABEL_798;
      }

LABEL_615:
      for (v10 += 40; ; v10 += 40)
      {
        v564 = *(v10 + 32);
        v565 = *(v564 + 8);
        v566 = v550 < v565;
        if (v550 != v565)
        {
          goto LABEL_629;
        }

        v567 = *(v547 + 32);
        v568 = *(v564 + 32);
        if (v567 == v568 && *(v547 + 24) == *(v564 + 24) && *(v547 + 40) == *(v564 + 40) && *(v547 + 16) == *(v564 + 16))
        {
          break;
        }

        v572 = *(v547 + 16);
        v573 = *(v564 + 16);
        v566 = v572 < v573;
        if (v572 == v573)
        {
          v574 = *(v547 + 24);
          v575 = *(v564 + 24);
          v566 = v574 < v575;
          if (v574 == v575)
          {
            v576 = *(v547 + 40);
            v577 = *(v564 + 40);
            v566 = v576 < v577;
            if (v576 == v577)
            {
              v566 = v567 < v568;
            }
          }
        }

LABEL_629:
        if (v566)
        {
          goto LABEL_827;
        }

LABEL_630:
        ;
      }

      v569 = *(v547 + 64);
      v570 = *(v564 + 64);
      if (vabdd_f64(v569, v570) < 50.0)
      {
        v569 = *(v547 + 48) / *(v547 + 56);
        v571 = *(v564 + 56);
        v570 = *(v564 + 48) / v571;
        if (v569 == v570)
        {
          goto LABEL_623;
        }

        v578 = fabs(*(v564 + 48) / v571);
        if (COERCE_UNSIGNED_INT64(fabs(*(v547 + 48) / *(v547 + 56))) <= 0x7FEFFFFFFFFFFFFFLL && *&v578 <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v580 = fabs(v569);
          v581 = fabs(v570);
          v582 = vabdd_f64(v569, v570);
          if (v580 < v581)
          {
            v580 = v581;
          }

          if (v580 < 1.0)
          {
            v580 = 1.0;
          }

          if (v582 <= v580 * 2.22044605e-16)
          {
LABEL_623:
            if (v422 < *v10)
            {
              goto LABEL_827;
            }

            goto LABEL_630;
          }
        }
      }

      if (v569 >= v570)
      {
        goto LABEL_630;
      }

LABEL_827:
      v667 = a2;
      if (v10 < a2)
      {
        v667 = a2 - 40;
        while (1)
        {
          v668 = v550 < v551;
          if (v550 != v551)
          {
            goto LABEL_842;
          }

          v669 = *(v547 + 32);
          v670 = *(v549 + 32);
          if (v669 != v670 || *(v547 + 24) != *(v549 + 24) || *(v547 + 40) != *(v549 + 40) || *(v547 + 16) != *(v549 + 16))
          {
            break;
          }

          v671 = *(v547 + 64);
          v672 = *(v549 + 64);
          if (vabdd_f64(v671, v672) >= 50.0)
          {
            goto LABEL_849;
          }

          v671 = *(v547 + 48) / *(v547 + 56);
          v673 = *(v549 + 56);
          v672 = *(v549 + 48) / v673;
          if (v671 == v672)
          {
            goto LABEL_836;
          }

          v681 = fabs(*(v549 + 48) / v673);
          if (COERCE_UNSIGNED_INT64(fabs(*(v547 + 48) / *(v547 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v681 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_849;
          }

          v683 = fabs(v671);
          v684 = fabs(v672);
          v685 = vabdd_f64(v671, v672);
          if (v683 < v684)
          {
            v683 = v684;
          }

          if (v683 < 1.0)
          {
            v683 = 1.0;
          }

          if (v685 <= v683 * 2.22044605e-16)
          {
LABEL_836:
            if (v422 >= v548)
            {
              goto LABEL_912;
            }
          }

          else
          {
LABEL_849:
            if (v671 >= v672)
            {
              goto LABEL_912;
            }
          }

LABEL_844:
          v680 = *(v667 - 40);
          v667 -= 40;
          v548 = v680;
          v549 = *(v667 + 32);
          v551 = *(v549 + 8);
        }

        v674 = *(v547 + 16);
        v675 = *(v549 + 16);
        v668 = v674 < v675;
        if (v674 == v675)
        {
          v676 = *(v547 + 24);
          v677 = *(v549 + 24);
          v668 = v676 < v677;
          if (v676 == v677)
          {
            v678 = *(v547 + 40);
            v679 = *(v549 + 40);
            v668 = v678 < v679;
            if (v678 == v679)
            {
              v668 = v669 < v670;
            }
          }
        }

LABEL_842:
        if (!v668)
        {
          goto LABEL_912;
        }

        goto LABEL_844;
      }

LABEL_912:
      if (v10 < v667)
      {
        v1292 = *(v10 + 32);
        v1228 = *v10;
        v1262 = *(v10 + 16);
        v686 = *v667;
        v687 = *(v667 + 16);
        *(v10 + 32) = *(v667 + 32);
        *v10 = v686;
        *(v10 + 16) = v687;
        *(v667 + 32) = v1292;
        *v667 = v1228;
        *(v667 + 16) = v1262;
        v688 = *(v547 + 8);
        while (1)
        {
          while (1)
          {
            v10 += 40;
            v689 = *(v10 + 32);
            v690 = *(v689 + 8);
            v691 = v688 < v690;
            if (v688 == v690)
            {
              break;
            }

LABEL_871:
            if (v691)
            {
              goto LABEL_904;
            }
          }

          v692 = *(v547 + 32);
          v693 = *(v689 + 32);
          if (v692 != v693 || *(v547 + 24) != *(v689 + 24) || *(v547 + 40) != *(v689 + 40) || *(v547 + 16) != *(v689 + 16))
          {
            v697 = *(v547 + 16);
            v698 = *(v689 + 16);
            v691 = v697 < v698;
            if (v697 == v698)
            {
              v699 = *(v547 + 24);
              v700 = *(v689 + 24);
              v691 = v699 < v700;
              if (v699 == v700)
              {
                v701 = *(v547 + 40);
                v702 = *(v689 + 40);
                v691 = v701 < v702;
                if (v701 == v702)
                {
                  v691 = v692 < v693;
                }
              }
            }

            goto LABEL_871;
          }

          v694 = *(v547 + 64);
          v695 = *(v689 + 64);
          if (vabdd_f64(v694, v695) >= 50.0)
          {
            goto LABEL_878;
          }

          v694 = *(v547 + 48) / *(v547 + 56);
          v696 = *(v689 + 56);
          v695 = *(v689 + 48) / v696;
          if (v694 == v695)
          {
            goto LABEL_865;
          }

          v703 = fabs(*(v689 + 48) / v696);
          if (COERCE_UNSIGNED_INT64(fabs(*(v547 + 48) / *(v547 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v703 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_878;
          }

          v705 = fabs(v694);
          v706 = fabs(v695);
          v707 = vabdd_f64(v694, v695);
          if (v705 < v706)
          {
            v705 = v706;
          }

          if (v705 < 1.0)
          {
            v705 = 1.0;
          }

          if (v707 <= v705 * 2.22044605e-16)
          {
LABEL_865:
            if (v422 < *v10)
            {
              goto LABEL_904;
            }
          }

          else
          {
LABEL_878:
            if (v694 < v695)
            {
              while (1)
              {
LABEL_904:
                while (1)
                {
                  v667 -= 40;
                  v720 = *(v667 + 32);
                  v721 = *(v720 + 8);
                  v710 = v688 < v721;
                  if (v688 == v721)
                  {
                    break;
                  }

LABEL_890:
                  if (!v710)
                  {
                    goto LABEL_912;
                  }
                }

                v722 = *(v547 + 32);
                v723 = *(v720 + 32);
                if (v722 != v723 || *(v547 + 24) != *(v720 + 24) || *(v547 + 40) != *(v720 + 40) || *(v547 + 16) != *(v720 + 16))
                {
                  v708 = *(v547 + 16);
                  v709 = *(v720 + 16);
                  v710 = v708 < v709;
                  if (v708 == v709)
                  {
                    v711 = *(v547 + 24);
                    v712 = *(v720 + 24);
                    v710 = v711 < v712;
                    if (v711 == v712)
                    {
                      v713 = *(v547 + 40);
                      v714 = *(v720 + 40);
                      v710 = v713 < v714;
                      if (v713 == v714)
                      {
                        v710 = v722 < v723;
                      }
                    }
                  }

                  goto LABEL_890;
                }

                v724 = *(v547 + 64);
                v725 = *(v720 + 64);
                if (vabdd_f64(v724, v725) >= 50.0)
                {
                  goto LABEL_896;
                }

                v724 = *(v547 + 48) / *(v547 + 56);
                v726 = *(v720 + 56);
                v725 = *(v720 + 48) / v726;
                if (v724 == v725)
                {
                  goto LABEL_911;
                }

                v715 = fabs(*(v720 + 48) / v726);
                if (COERCE_UNSIGNED_INT64(fabs(*(v547 + 48) / *(v547 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v715 > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_896;
                }

                v717 = fabs(v724);
                v718 = fabs(v725);
                v719 = vabdd_f64(v724, v725);
                if (v717 < v718)
                {
                  v717 = v718;
                }

                if (v717 < 1.0)
                {
                  v717 = 1.0;
                }

                if (v719 <= v717 * 2.22044605e-16)
                {
LABEL_911:
                  if (v422 >= *v667)
                  {
                    goto LABEL_912;
                  }
                }

                else
                {
LABEL_896:
                  if (v724 >= v725)
                  {
                    goto LABEL_912;
                  }
                }
              }
            }
          }
        }
      }

      if (v10 - 40 != a1)
      {
        v727 = *(v10 - 40);
        v728 = *(v10 - 24);
        *(a1 + 32) = *(v10 - 8);
        *a1 = v727;
        *(a1 + 16) = v728;
      }

      a4 = 0;
      *(v10 - 40) = v422;
      a5 = v1205;
      *(v10 - 32) = v1205;
      *(v10 - 16) = v1208;
      *(v10 - 8) = v547;
    }
  }

  v768 = v10 + 40;
  v769 = v10 == a2 || v768 == a2;
  v770 = v769;
  if ((a4 & 1) == 0)
  {
    if (v770)
    {
      return;
    }

    while (1)
    {
      v997 = a1;
      a1 = v768;
      v998 = *(v768 + 32);
      v1000 = *(v997 + 32);
      v999 = *(v997 + 40);
      v1001 = *(v998 + 8);
      v1002 = *(v1000 + 8);
      v1003 = v1001 < v1002;
      if (v1001 == v1002)
      {
        v1004 = *(v998 + 32);
        v1005 = *(v1000 + 32);
        if (v1004 == v1005 && *(v998 + 24) == *(v1000 + 24) && *(v998 + 40) == *(v1000 + 40) && *(v998 + 16) == *(v1000 + 16))
        {
          v1006 = *(v998 + 64);
          v1007 = *(v1000 + 64);
          if (vabdd_f64(v1006, v1007) >= 50.0)
          {
            goto LABEL_1300;
          }

          v1006 = *(v998 + 48) / *(v998 + 56);
          v1007 = *(v1000 + 48) / *(v1000 + 56);
          if (v1006 == v1007)
          {
            goto LABEL_1257;
          }

          v1037 = fabs(*(v1000 + 48) / *(v1000 + 56));
          if (COERCE_UNSIGNED_INT64(fabs(*(v998 + 48) / *(v998 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v1037 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_1300;
          }

          v1039 = fabs(v1006);
          v1040 = fabs(v1007);
          v1041 = vabdd_f64(v1006, v1007);
          if (v1039 < v1040)
          {
            v1039 = v1040;
          }

          if (v1039 < 1.0)
          {
            v1039 = 1.0;
          }

          if (v1041 <= v1039 * 2.22044605e-16)
          {
LABEL_1257:
            if (v999 >= *v997)
            {
              goto LABEL_1294;
            }
          }

          else
          {
LABEL_1300:
            if (v1006 >= v1007)
            {
              goto LABEL_1294;
            }
          }

          goto LABEL_1265;
        }

        v1008 = *(v998 + 16);
        v1009 = *(v1000 + 16);
        v1003 = v1008 < v1009;
        if (v1008 == v1009)
        {
          v1010 = *(v998 + 24);
          v1011 = *(v1000 + 24);
          v1003 = v1010 < v1011;
          if (v1010 == v1011)
          {
            v1012 = *(v998 + 40);
            v1013 = *(v1000 + 40);
            v1003 = v1012 < v1013;
            if (v1012 == v1013)
            {
              v1003 = v1004 < v1005;
            }
          }
        }
      }

      if (!v1003)
      {
        goto LABEL_1294;
      }

LABEL_1265:
      v1266 = *(a1 + 24);
      v1232 = *(a1 + 8);
      do
      {
        while (1)
        {
          while (1)
          {
            v1014 = v997;
            v1015 = *(v997 + 16);
            *(v997 + 40) = *v997;
            *(v997 + 56) = v1015;
            *(v997 + 72) = *(v997 + 32);
            v1017 = *(v997 - 40);
            v997 -= 40;
            v1016 = v1017;
            v1018 = *(v1014 - 8);
            v1019 = *(v998 + 8);
            v1020 = *(v1018 + 8);
            v1021 = v1019 < v1020;
            if (v1019 == v1020)
            {
              break;
            }

LABEL_1279:
            if (!v1021)
            {
              goto LABEL_1293;
            }
          }

          v1022 = *(v998 + 32);
          v1023 = *(v1018 + 32);
          if (v1022 != v1023 || *(v998 + 24) != *(v1018 + 24) || *(v998 + 40) != *(v1018 + 40) || *(v998 + 16) != *(v1018 + 16))
          {
            v1026 = *(v998 + 16);
            v1027 = *(v1018 + 16);
            v1021 = v1026 < v1027;
            if (v1026 == v1027)
            {
              v1028 = *(v998 + 24);
              v1029 = *(v1018 + 24);
              v1021 = v1028 < v1029;
              if (v1028 == v1029)
              {
                v1030 = *(v998 + 40);
                v1031 = *(v1018 + 40);
                v1021 = v1030 < v1031;
                if (v1030 == v1031)
                {
                  v1021 = v1022 < v1023;
                }
              }
            }

            goto LABEL_1279;
          }

          v1024 = *(v998 + 64);
          v1025 = *(v1018 + 64);
          if (vabdd_f64(v1024, v1025) >= 50.0)
          {
            break;
          }

          v1024 = *(v998 + 48) / *(v998 + 56);
          v1025 = *(v1018 + 48) / *(v1018 + 56);
          if (v1024 != v1025)
          {
            v1032 = fabs(*(v1018 + 48) / *(v1018 + 56));
            if (COERCE_UNSIGNED_INT64(fabs(*(v998 + 48) / *(v998 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v1032 > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            v1034 = fabs(v1024);
            v1035 = fabs(v1025);
            v1036 = vabdd_f64(v1024, v1025);
            if (v1034 < v1035)
            {
              v1034 = v1035;
            }

            if (v1034 < 1.0)
            {
              v1034 = 1.0;
            }

            if (v1036 > v1034 * 2.22044605e-16)
            {
              break;
            }
          }

          if (v999 >= v1016)
          {
            goto LABEL_1293;
          }
        }
      }

      while (v1024 < v1025);
LABEL_1293:
      *v1014 = v999;
      *(v1014 + 8) = v1232;
      *(v1014 + 24) = v1266;
      *(v1014 + 32) = v998;
LABEL_1294:
      v768 = a1 + 40;
      if (a1 + 40 == a2)
      {
        return;
      }
    }
  }

  if (v770)
  {
    return;
  }

  v771 = 0;
  v772 = v10;
  while (2)
  {
    v773 = v772;
    v772 = v768;
    v774 = *(v768 + 32);
    v776 = *(v773 + 32);
    v775 = *(v773 + 40);
    v777 = *(v774 + 8);
    v778 = *(v776 + 8);
    v779 = v777 < v778;
    if (v777 != v778)
    {
      goto LABEL_975;
    }

    v780 = *(v774 + 32);
    v781 = *(v776 + 32);
    if (v780 != v781 || *(v774 + 24) != *(v776 + 24) || *(v774 + 40) != *(v776 + 40) || *(v774 + 16) != *(v776 + 16))
    {
      v784 = *(v774 + 16);
      v785 = *(v776 + 16);
      v779 = v784 < v785;
      if (v784 == v785)
      {
        v786 = *(v774 + 24);
        v787 = *(v776 + 24);
        v779 = v786 < v787;
        if (v786 == v787)
        {
          v788 = *(v774 + 40);
          v789 = *(v776 + 40);
          v779 = v788 < v789;
          if (v788 == v789)
          {
            v779 = v780 < v781;
          }
        }
      }

LABEL_975:
      if (!v779)
      {
        goto LABEL_1012;
      }

      goto LABEL_977;
    }

    v782 = *(v774 + 64);
    v783 = *(v776 + 64);
    if (vabdd_f64(v782, v783) >= 50.0)
    {
      goto LABEL_1018;
    }

    v782 = *(v774 + 48) / *(v774 + 56);
    v783 = *(v776 + 48) / *(v776 + 56);
    if (v782 == v783)
    {
      goto LABEL_969;
    }

    v816 = fabs(*(v776 + 48) / *(v776 + 56));
    if (COERCE_UNSIGNED_INT64(fabs(*(v774 + 48) / *(v774 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v816 > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_1018;
    }

    v818 = fabs(v782);
    v819 = fabs(v783);
    v820 = vabdd_f64(v782, v783);
    if (v818 < v819)
    {
      v818 = v819;
    }

    if (v818 < 1.0)
    {
      v818 = 1.0;
    }

    if (v820 <= v818 * 2.22044605e-16)
    {
LABEL_969:
      if (v775 >= *v773)
      {
        goto LABEL_1012;
      }
    }

    else
    {
LABEL_1018:
      if (v782 >= v783)
      {
        goto LABEL_1012;
      }
    }

LABEL_977:
    v1263 = *(v772 + 24);
    v1229 = *(v772 + 8);
    *(v772 + 32) = *(v773 + 32);
    v790 = *(v773 + 16);
    *v772 = *v773;
    *(v772 + 16) = v790;
    v791 = v10;
    if (v773 == v10)
    {
      goto LABEL_1011;
    }

    v792 = v771;
    while (2)
    {
      v793 = v10 + v792;
      v794 = *(v10 + v792 - 8);
      v795 = *(v774 + 8);
      v796 = *(v794 + 8);
      v797 = v795 < v796;
      if (v795 != v796)
      {
        goto LABEL_992;
      }

      v798 = *(v774 + 32);
      v799 = *(v794 + 32);
      if (v798 != v799 || *(v774 + 24) != *(v794 + 24) || *(v774 + 40) != *(v794 + 40) || *(v774 + 16) != *(v794 + 16))
      {
        v804 = *(v774 + 16);
        v805 = *(v794 + 16);
        v797 = v804 < v805;
        if (v804 == v805)
        {
          v806 = *(v774 + 24);
          v807 = *(v794 + 24);
          v797 = v806 < v807;
          if (v806 == v807)
          {
            v808 = *(v774 + 40);
            v809 = *(v794 + 40);
            v797 = v808 < v809;
            if (v808 == v809)
            {
              v797 = v798 < v799;
            }
          }
        }

LABEL_992:
        if (!v797)
        {
          break;
        }

        goto LABEL_994;
      }

      v800 = *(v774 + 64);
      v801 = *(v794 + 64);
      if (vabdd_f64(v800, v801) < 50.0)
      {
        v802 = *(v774 + 48) / *(v774 + 56);
        v803 = *(v794 + 48) / *(v794 + 56);
        if (v802 == v803)
        {
          goto LABEL_986;
        }

        v811 = fabs(*(v794 + 48) / *(v794 + 56));
        if (COERCE_UNSIGNED_INT64(fabs(*(v774 + 48) / *(v774 + 56))) > 0x7FEFFFFFFFFFFFFFLL || *&v811 > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_1002;
        }

        v813 = fabs(v802);
        v814 = fabs(v803);
        v815 = vabdd_f64(v802, v803);
        if (v813 < v814)
        {
          v813 = v814;
        }

        if (v813 < 1.0)
        {
          v813 = 1.0;
        }

        if (v815 <= v813 * 2.22044605e-16)
        {
LABEL_986:
          if (v775 >= *(v10 + v792 - 40))
          {
            break;
          }
        }

        else
        {
LABEL_1002:
          if (v802 >= v803)
          {
            v791 = v10 + v792;
            goto LABEL_1011;
          }
        }

        goto LABEL_994;
      }

      if (v800 < v801)
      {
LABEL_994:
        v773 -= 40;
        v810 = *(v10 + v792 - 24);
        *v793 = *(v10 + v792 - 40);
        *(v793 + 16) = v810;
        *(v793 + 32) = *(v10 + v792 - 8);
        v792 -= 40;
        if (!v792)
        {
          v791 = v10;
          goto LABEL_1011;
        }

        continue;
      }

      break;
    }

    v791 = v773;
LABEL_1011:
    *v791 = v775;
    *(v791 + 8) = v1229;
    *(v791 + 24) = v1263;
    *(v791 + 32) = v774;
LABEL_1012:
    v768 = v772 + 40;
    v771 += 40;
    if (v772 + 40 != a2)
    {
      continue;
    }

    break;
  }
}