double sparse_ddot(unsigned int *a1, unsigned int *a2, double *a3, double *a4)
{
  result = 0.0;
  while (a1 < a2)
  {
    v5 = *a3++;
    v6 = v5;
    LODWORD(v5) = *a1++;
    result = result + v6 * a4[LODWORD(v5)];
  }

  return result;
}

void LSMSVDSDImpl::stpone(LSMSVDSDImpl *this)
{
  LSMSVDSDImpl::startv(this);
  *(this + 52) = v2;
  if (v2 != 0.0 && !*(this + 110))
  {
    v3 = 1.0 / v2;
    v4 = *(this + 3);
    if (v3 != 0.0 && v4 != 0)
    {
      v6 = *(this + 87);
      v7 = *(this + 63);
      v8 = *(this + 3);
      do
      {
        v9 = *v7++;
        *v6++ = v3 * v9;
        --v8;
      }

      while (v8);
    }

    cblas_dscal(v4, v3, *(this + 95), 1);
    LSMSVDSDImpl::opb(this, *(this + 95), *(this + 63));
    v10 = cblas_ddot(*(this + 3), *(this + 63), 1, *(this + 95), 1);
    **(this + 107) = v10;
    cblas_daxpy(*(this + 3), -v10, *(this + 87), 1, *(this + 63), 1);
    v11 = cblas_ddot(*(this + 3), *(this + 63), 1, *(this + 95), 1);
    cblas_daxpy(*(this + 3), -v11, *(this + 87), 1, *(this + 63), 1);
    **(this + 107) = v11 + **(this + 107);
    cblas_dcopy(*(this + 3), *(this + 63), 1, *(this + 99), 1);
    v12 = sqrt(cblas_ddot(*(this + 3), *(this + 63), 1, *(this + 99), 1));
    *(this + 52) = v12;
    *(this + 53) = *(this + 47) * (v12 + fabs(**(this + 107)));
  }
}

void LSMSVDSDImpl::lanczos_step(LSMSVDSDImpl *this, int a2, int a3, int *a4, BOOL *a5)
{
  *(this + 109) = a2;
  if (a2 < a3)
  {
    do
    {
      LSMVectorBase::Swap(this + 87, (this + 728));
      LSMVectorBase::Swap(this + 95, (this + 792));
      cblas_dcopy(*(this + 3), *(this + 91), 1, (*(this + 83) + 8 * (((*(this + 3) + 3) & 0x1FFFFFFFCLL) + ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * *(this + 109))), 1);
      v9 = *(this + 109);
      if (v9 <= 2)
      {
        LSMSVDSDImpl::store(this, 2, v9 - 1, *(this + 99));
        v9 = *(this + 109);
      }

      v10 = *(this + 52);
      *(*(this + 119) + 8 * v9) = v10;
      if (v10 == 0.0)
      {
        LSMSVDSDImpl::startv(this);
        *(this + 52) = v10;
        if (*(this + 110))
        {
          return;
        }

        if (v10 == 0.0)
        {
          *a5 = 1;
        }
      }

      if (*a5)
      {
        break;
      }

      v11 = *(this + 3);
      v12 = 1.0 / v10;
      if (v11 && v12 != 0.0)
      {
        v13 = *(this + 87);
        v14 = *(this + 63);
        v15 = *(this + 3);
        do
        {
          v16 = *v14++;
          *v13++ = v12 * v16;
          --v15;
        }

        while (v15);
      }

      cblas_dscal(v11, v12, *(this + 95), 1);
      LSMSVDSDImpl::opb(this, *(this + 95), *(this + 63));
      cblas_daxpy(*(this + 3), -*(this + 52), *(this + 91), 1, *(this + 63), 1);
      v17 = cblas_ddot(*(this + 3), *(this + 63), 1, *(this + 95), 1);
      *(*(this + 107) + 8 * *(this + 109)) = v17;
      cblas_daxpy(*(this + 3), -v17, *(this + 87), 1, *(this + 63), 1);
      v18 = *(this + 109);
      if (v18 <= 2)
      {
        v19 = (*(this + 107) + 8 * v18);
        if (fabs(*(v19 - 1)) > fabs(*v19) * 4.0)
        {
          *a4 = v18;
          v18 = *(this + 109);
        }
      }

      v20 = v18 - 1;
      if (v20 >= *a4)
      {
        v20 = *a4;
      }

      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          LSMSVDSDImpl::store(this, 3, v21, *(this + 103));
          v22 = cblas_ddot(*(this + 3), *(this + 103), 1, *(this + 63), 1);
          cblas_dcopy(*(this + 3), (*(this + 83) + 8 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (v21 + 2)), 1, *(this + 103), 1);
          cblas_daxpy(*(this + 3), -v22, *(this + 103), 1, *(this + 63), 1);
          v23 = *(this + 46);
          *(*(this + 111) + 8 * v21) = v23;
          *(*(this + 115) + 8 * v21++) = v23;
          v24 = *(this + 109) - 1;
          if (v24 >= *a4)
          {
            v24 = *a4;
          }
        }

        while (v21 < v24);
      }

      v25 = cblas_ddot(*(this + 3), *(this + 63), 1, *(this + 99), 1);
      cblas_daxpy(*(this + 3), -v25, *(this + 91), 1, *(this + 63), 1);
      v26 = *(this + 119);
      v27 = *(this + 109);
      v28 = *(v26 + 8 * v27);
      if (v28 > 0.0)
      {
        *(v26 + 8 * v27) = v25 + v28;
      }

      v29 = cblas_ddot(*(this + 3), *(this + 63), 1, *(this + 95), 1);
      cblas_daxpy(*(this + 3), -v29, *(this + 87), 1, *(this + 63), 1);
      *(*(this + 107) + 8 * *(this + 109)) = v29 + *(*(this + 107) + 8 * *(this + 109));
      cblas_dcopy(*(this + 3), *(this + 63), 1, *(this + 99), 1);
      v30 = sqrt(cblas_ddot(*(this + 3), *(this + 63), 1, *(this + 99), 1));
      *(this + 52) = v30;
      v31 = *(this + 47) * (v30 + *(*(this + 119) + 8 * *(this + 109)) + fabs(*(*(this + 107) + 8 * *(this + 109))));
      *(this + 53) = v31;
      LSMSVDSDImpl::ortbnd(this, v31);
      LSMSVDSDImpl::purge(this, *a4, *(this + 63), *(this + 87), *(this + 99), *(this + 95));
      if (*(this + 52) <= *(this + 53))
      {
        *(this + 52) = 0;
      }

      v32 = *(this + 109) + 1;
      *(this + 109) = v32;
    }

    while (v32 < a3);
  }
}

void LSMSVDSDImpl::imtqlb(LSMSVDSDImpl *this, uint64_t a2, double *a3, double *a4, double *a5)
{
  v5 = a2 - 1;
  if (a2 != 1)
  {
    *(this + 110) = 0;
    *a5 = 1.0;
    if (a2 < 2)
    {
      a4[v5] = 0.0;
    }

    else
    {
      v8 = a4 + 1;
      for (i = 1; i != a2; ++i)
      {
        a5[i] = 0.0;
        *(v8 - 1) = *v8;
        ++v8;
      }

      v10 = 0;
      a4[v5] = 0.0;
      v11.f64[0] = NAN;
      v11.f64[1] = NAN;
      v12 = vnegq_f64(v11);
      v51 = v12;
      v54 = a4;
      v55 = a5;
      v13 = a3;
      v50 = a3;
      while (2)
      {
        v14 = 0;
        v15 = &a3[v10];
        v52 = v15;
        v53 = v13;
        while (1)
        {
          v16 = 0;
          v18 = v54;
          v17 = v55;
          v19 = v13;
          v20 = v10;
          do
          {
            v21 = v20;
            v22 = v16;
            v23 = v19;
            v24 = v18;
            v25 = v17;
            if (v20 >= a2)
            {
              break;
            }

            if (v5 == v20)
            {
              break;
            }

            v26 = fabs(*v19);
            ++v20;
            ++v19;
            v27 = v26 + fabs(v23[1]);
            --v16;
            ++v18;
            ++v17;
          }

          while (v27 + fabs(a4[v21]) != v27);
          v28 = *v15;
          if (!v22)
          {
            break;
          }

          if (v14 == 30)
          {
            *(this + 110) = v10;
            return;
          }

          v29 = a4[v10];
          v12.f64[0] = (v15[1] - v28) / (v29 + v29);
          v56 = v12;
          *v30.i64 = hypot(v12.f64[0], 1.0);
          v12 = vbslq_s8(v51, v30, v56);
          v31 = *v23 - v28 + v29 / (*v56.i64 + v12.f64[0]);
          v32 = 0.0;
          if (v21 <= v10)
          {
LABEL_17:
            v15 = v52;
            *v52 = *v52 - v32;
            a4[v10] = v31;
          }

          else
          {
            v33 = 1.0;
            v34 = 1.0;
            v35 = v21;
            while (1)
            {
              v36 = *(v24 - 1);
              v37 = v34 * v36;
              v12.f64[0] = hypot(v34 * v36, v31);
              *v24 = v12.f64[0];
              if (v12.f64[0] == 0.0)
              {
                break;
              }

              --v35;
              v38 = v33 * v36;
              v34 = v37 / v12.f64[0];
              v33 = v31 / v12.f64[0];
              v39 = *v23 - v32;
              v40 = v38 * (v33 + v33) + (*(v23 - 1) - v39) * v34;
              v32 = v34 * v40;
              *v23 = v39 + v34 * v40;
              v31 = -(v38 - v33 * v40);
              v41 = *v25;
              v42 = *(v25 - 1);
              *v25 = v33 * *v25 + v34 * v42;
              *(v25 - 1) = v33 * v42 - v34 * v41;
              --v24;
              --v25;
              --v23;
              if (v35 <= v10)
              {
                goto LABEL_17;
              }
            }

            *v23 = *v23 - v32;
            v15 = v52;
          }

          a4[v21] = 0.0;
          v43 = v14++ >= 0x1E;
          v13 = v53;
          if (v43)
          {
            goto LABEL_28;
          }
        }

        v44 = a5[v10];
        if (v10)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
          v46 = v10;
          while (1)
          {
            v47 = v13[v45];
            if (v28 >= v47)
            {
              break;
            }

            --v46;
            v13[v45 + 1] = v47;
            v55[v45 + 1] = v55[v45];
            --v45;
            if (v46 + 1 <= 1)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          v46 = 0;
        }

        v50[v46] = v28;
        a5[v46] = v44;
LABEL_28:
        ++v10;
        ++v13;
        ++v54;
        ++v55;
        a3 = v50;
        if (v10 != a2)
        {
          continue;
        }

        break;
      }
    }
  }
}

uint64_t LSMSVDSDImpl::error_bound(LSMSVDSDImpl *this, BOOL *a2)
{
  result = cblas_idamax(*(this + 109) + 1, *(this + 71), 1);
  v5 = *(this + 109);
  LODWORD(v6) = (2 * v5) >> 1;
  if (v6 > result)
  {
    v6 = v6;
    v7 = *(this + 67);
    do
    {
      if (vabdd_f64(*(v7 + 8 * v6 - 8), *(v7 + 8 * v6)) < *(this + 48) * fabs(*(v7 + 8 * v6)))
      {
        v8 = *(this + 71);
        v9 = *(v8 + 8 * v6);
        v10 = *(this + 53);
        if (v9 > v10)
        {
          v11 = v8 + 8 * v6;
          v12 = *(v11 - 8);
          if (v12 > v10)
          {
            *(v11 - 8) = sqrt(v12 * v12 + v9 * v9);
            *(v8 + 8 * v6) = 0;
          }
        }
      }

      --v6;
    }

    while (v6 > result);
  }

  v13 = *(this + 67);
  if (result >= 2)
  {
    v14 = 0;
    do
    {
      if (vabdd_f64(v13[v14 + 2], v13[v14 + 1]) < *(this + 48) * fabs(v13[v14 + 1]))
      {
        v15 = *(this + 71) + 8 * v14;
        v16 = *(v15 + 8);
        v17 = *(this + 53);
        if (v16 > v17)
        {
          v18 = *(v15 + 16);
          if (v18 > v17)
          {
            *(v15 + 16) = sqrt(v18 * v18 + v16 * v16);
            *(v15 + 8) = 0;
          }
        }
      }

      ++v14;
    }

    while (result - 1 != v14);
  }

  *(this + 111) = 0;
  if ((v5 & 0x80000000) == 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = v13[v5] - *v13;
    v22 = *(this + 71);
    v23 = v5 + 1;
    do
    {
      v24 = v21;
      if (v20 < v5)
      {
        v21 = v13[1] - *v13;
      }

      if (v21 >= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v21;
      }

      v26 = *(v22 + 8 * v20);
      if (v25 > v26)
      {
        v26 = v26 * (v26 / v25);
        *(v22 + 8 * v20) = v26;
      }

      v27 = *v13;
      if (v26 <= *(this + 45) * 16.0 * fabs(*v13))
      {
        *(this + 111) = ++v19;
        if (!*a2)
        {
          v28 = *(this + 49) < v27 && v27 < *(this + 50);
          *a2 = v28;
        }
      }

      ++v20;
      ++v13;
      --v23;
    }

    while (v23);
  }

  return result;
}

void LSMSVDSDImpl::startv(LSMSVDSDImpl *this)
{
  v2 = cblas_ddot(*(this + 3), *(this + 63), 1, *(this + 63), 1);
  v3 = 0;
  v11 = *(this + 109) + 918273;
  do
  {
    if (v3 || *(this + 109) > 0 || v2 == 0.0)
    {
      if (*(this + 3))
      {
        v4 = 0;
        do
        {
          *(*(this + 63) + 8 * v4++) = LSMSVDSDImpl::random(this, &v11);
          v5 = *(this + 3);
        }

        while (v4 < v5);
      }

      else
      {
        LODWORD(v5) = 0;
      }
    }

    else
    {
      LODWORD(v5) = *(this + 3);
    }

    cblas_dcopy(v5, *(this + 63), 1, *(this + 95), 1);
    LSMSVDSDImpl::opb(this, *(this + 95), *(this + 63));
    cblas_dcopy(*(this + 3), *(this + 63), 1, *(this + 95), 1);
    v6 = cblas_ddot(*(this + 3), *(this + 63), 1, *(this + 95), 1);
    v2 = v6;
    ++v3;
  }

  while (v6 <= 0.0 && v3 != 3);
  if (v6 <= 0.0)
  {
    *(this + 110) = 0x2000;
  }

  else if (*(this + 109) >= 1)
  {
    v8 = 0;
    do
    {
      cblas_dcopy(*(this + 3), (*(this + 83) + 8 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (v8 + 2)), 1, *(this + 103), 1);
      v9 = cblas_ddot(*(this + 3), *(this + 95), 1, *(this + 103), 1);
      cblas_daxpy(*(this + 3), -v9, *(this + 103), 1, *(this + 63), 1);
      ++v8;
    }

    while (v8 < *(this + 109));
    v10 = cblas_ddot(*(this + 3), *(this + 99), 1, *(this + 63), 1);
    cblas_daxpy(*(this + 3), -v10, *(this + 91), 1, *(this + 63), 1);
    cblas_dcopy(*(this + 3), *(this + 63), 1, *(this + 95), 1);
    cblas_ddot(*(this + 3), *(this + 95), 1, *(this + 63), 1);
    *(this + 45);
  }
}

double LSMSVDSDImpl::ortbnd(LSMSVDSDImpl *this, double result)
{
  v3 = *(this + 109);
  if (v3 >= 1)
  {
    v4 = *(this + 52);
    if (v4 != 0.0 && v3 != 1)
    {
      **(this + 115) = *(this + 46) + ((**(this + 107) - *(*(this + 107) + 8 * v3)) * **(this + 111) + *(*(this + 119) + 8) * *(*(this + 111) + 8) - *(*(this + 119) + 8 * v3) * **(this + 115)) / v4;
      if (v3 >= 3)
      {
        v6 = *(this + 119);
        v7 = *(this + 107);
        v8 = v3 - 2;
        v9 = (*(this + 115) + 8);
        v10 = (v6 + 16);
        v11 = (v7 + 8);
        v12 = (*(this + 111) + 8);
        v13 = v12;
        do
        {
          v14 = v13[1];
          ++v13;
          v15 = v14;
          v16 = *v11++;
          *v9 = ((v16 - *(v7 + 8 * v3)) * *v12 + *v10 * v15 + *(v10 - 1) * *(v12 - 1) - *(v6 + 8 * v3) * *v9) / *(this + 52) + *(this + 46);
          ++v9;
          ++v10;
          v12 = v13;
          --v8;
        }

        while (v8);
      }
    }

    v17 = *(this + 115);
    v17[v3 - 1] = *(this + 46);
    cblas_dswap(v3, v17, 1, *(this + 111), 1);
    result = *(this + 46);
    *(*(this + 111) + 8 * *(this + 109)) = result;
  }

  return result;
}

void LSMSVDSDImpl::purge(LSMSVDSDImpl *this, uint64_t a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = *(this + 109);
  if (a2 + 2 <= v6)
  {
    v13 = cblas_idamax(v6 + ~a2, (*(this + 111) + 8 * a2), 1);
    v14 = *(this + 47);
    if (fabs(*(*(this + 111) + 8 * v13 + 8 * a2)) > v14)
    {
      v15 = *(this + 52);
      v16 = 1;
      v17 = *(this + 46) / v14;
      do
      {
        v18 = v16;
        if (v15 > *(this + 53))
        {
          v19 = 0.0;
          v20 = 0.0;
          if (*(this + 109) > a2)
          {
            v21 = a2;
            do
            {
              cblas_dcopy(*(this + 3), (*(this + 83) + 8 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (v21 + 2)), 1, *(this + 103), 1);
              v22 = cblas_ddot(*(this + 3), a6, 1, *(this + 103), 1);
              v19 = v19 + fabs(v22);
              cblas_daxpy(*(this + 3), -v22, *(this + 103), 1, a4, 1);
              v23 = cblas_ddot(*(this + 3), a5, 1, *(this + 103), 1);
              v20 = v20 + fabs(v23);
              cblas_daxpy(*(this + 3), -v23, *(this + 103), 1, a3, 1);
              ++v21;
            }

            while (v21 < *(this + 109));
          }

          cblas_dcopy(*(this + 3), a4, 1, a6, 1);
          v24 = cblas_ddot(*(this + 3), a3, 1, a6, 1);
          cblas_daxpy(*(this + 3), -v24, a4, 1, a3, 1);
          cblas_dcopy(*(this + 3), a3, 1, a5, 1);
          v15 = sqrt(cblas_ddot(*(this + 3), a5, 1, a3, 1));
          *(this + 52) = v15;
          if (v19 <= v17 && v20 + fabs(v24) <= v17 * v15)
          {
            break;
          }
        }

        v16 = 0;
      }

      while ((v18 & 1) != 0);
      v25 = *(this + 109);
      v26 = v25 < a2;
      v27 = v25 - a2;
      if (!v26)
      {
        v28 = *(this + 46);
        v29 = v27 + 1;
        v30 = (*(this + 115) + 8 * a2);
        v31 = (*(this + 111) + 8 * a2);
        do
        {
          *v31++ = v28;
          v28 = *(this + 46);
          *v30++ = v28;
          --v29;
        }

        while (v29);
      }
    }
  }
}

double LSMSVDSDImpl::random(LSMSVDSDImpl *this, uint64_t *a2)
{
  if (*(this + 57))
  {
    v4 = *(this + 58);
  }

  else
  {
    *(this + 57) = 0x40000000;
    *(this + 61) = 0x41D0000000000000;
    v4 = (8 * (atan(1.0) * 1073741820.0 * 0.125)) | 5;
    *(this + 58) = v4;
    *(this + 59) = 453816693;
    *(this + 60) = 1693666955;
    *(this + 62) = 0x3E00000000000000;
  }

  v5 = v4 * *a2;
  *a2 = v5;
  if (v5 > *(this + 60))
  {
    v5 -= 2 * *(this + 57);
    *a2 = v5;
  }

  v6 = *(this + 59) + v5;
  *a2 = v6;
  v7 = *(this + 57);
  if (v7 < v6 / 2)
  {
    v6 -= 2 * v7;
    *a2 = v6;
  }

  if (v6 < 0)
  {
    v6 += 2 * *(this + 57);
    *a2 = v6;
  }

  return *(this + 62) * v6;
}

void LSMSVDSDTImpl::~LSMSVDSDTImpl(void **this)
{
  LSMSVDSDImpl::~LSMSVDSDImpl(this);

  JUMPOUT(0x259C48400);
}

void LSMSVDSDImpl::~LSMSVDSDImpl(void **this)
{
  LSMSVDSDImpl::~LSMSVDSDImpl(this);

  JUMPOUT(0x259C48400);
}

{
  *this = &unk_2867C1DB0;
  LSMVectorBase::~LSMVectorBase(this + 119);
  LSMVectorBase::~LSMVectorBase(this + 115);
  LSMVectorBase::~LSMVectorBase(this + 111);
  LSMVectorBase::~LSMVectorBase(this + 107);
  LSMVectorBase::~LSMVectorBase(this + 103);
  LSMVectorBase::~LSMVectorBase(this + 99);
  LSMVectorBase::~LSMVectorBase(this + 95);
  LSMVectorBase::~LSMVectorBase(this + 91);
  LSMVectorBase::~LSMVectorBase(this + 87);
  LSMVectorBase::~LSMVectorBase(this + 83);
  LSMVectorBase::~LSMVectorBase(this + 79);
  LSMVectorBase::~LSMVectorBase(this + 75);
  LSMVectorBase::~LSMVectorBase(this + 71);
  LSMVectorBase::~LSMVectorBase(this + 67);
  LSMVectorBase::~LSMVectorBase(this + 63);
  LSMVectorBase::~LSMVectorBase(this + 41);
  LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<double>>>::~LSMVector((this + 37));

  LSMSVD::~LSMSVD(this);
}

void LSMSVDSDImpl::LSMSVDSDImpl(LSMSVDSDImpl *this)
{
  LSMSVD::LSMSVD(this);
  *v2 = &unk_2867C1DB0;
  LSMVectorBase::LSMVectorBase((v2 + 37), 64);
  LSMVectorBase::LSMVectorBase((this + 328), 8);
  LSMVectorBase::LSMVectorBase((this + 504), 8);
  LSMVectorBase::LSMVectorBase((this + 536), 8);
  LSMVectorBase::LSMVectorBase((this + 568), 8);
  LSMVectorBase::LSMVectorBase((this + 600), 8);
  LSMVectorBase::LSMVectorBase((this + 632), 8);
  LSMVectorBase::LSMVectorBase((this + 664), 8);
  LSMVectorBase::LSMVectorBase((this + 696), 8);
  LSMVectorBase::LSMVectorBase((this + 728), 8);
  LSMVectorBase::LSMVectorBase((this + 760), 8);
  LSMVectorBase::LSMVectorBase((this + 792), 8);
  LSMVectorBase::LSMVectorBase((this + 824), 8);
  LSMVectorBase::LSMVectorBase((this + 856), 8);
  LSMVectorBase::LSMVectorBase((this + 888), 8);
  LSMVectorBase::LSMVectorBase((this + 920), 8);
  LSMVectorBase::LSMVectorBase((this + 952), 8);
}

void sub_255A67214(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase(v1 + 115);
  LSMVectorBase::~LSMVectorBase(v1 + 111);
  LSMVectorBase::~LSMVectorBase(v1 + 107);
  LSMVectorBase::~LSMVectorBase(v1 + 103);
  LSMVectorBase::~LSMVectorBase(v1 + 99);
  LSMVectorBase::~LSMVectorBase(v1 + 95);
  LSMVectorBase::~LSMVectorBase(v1 + 91);
  LSMVectorBase::~LSMVectorBase(v1 + 87);
  LSMVectorBase::~LSMVectorBase(v1 + 83);
  LSMVectorBase::~LSMVectorBase(v1 + 79);
  LSMVectorBase::~LSMVectorBase(v1 + 75);
  LSMVectorBase::~LSMVectorBase(v1 + 71);
  LSMVectorBase::~LSMVectorBase(v1 + 67);
  LSMVectorBase::~LSMVectorBase(v1 + 63);
  LSMVectorBase::~LSMVectorBase(v1 + 41);
  LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<double>>>::~LSMVector((v1 + 37));
  LSMSVD::~LSMSVD(v1);
  _Unwind_Resume(a1);
}

void LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<double>>>::~LSMVector(LSMVectorBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *this;
    v4 = v2 << 6;
    do
    {
      LSMVectorBase::~LSMVectorBase(v3 + 4);
      LSMVectorBase::~LSMVectorBase(v3);
      v3 += 8;
      v4 -= 64;
    }

    while (v4);
  }

  LSMVectorBase::~LSMVectorBase(this);
}

void sub_255A67394(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase(v2);
  LSMVectorBase::~LSMVectorBase(v1);
  _Unwind_Resume(a1);
}

LSMVectorBase *std::pair<LSMVector<unsigned int>,LSMVector<double>>::pair[abi:ne200100](LSMVectorBase *a1)
{
  LSMVectorBase::LSMVectorBase(a1, 4);
  LSMVectorBase::LSMVectorBase((v2 + 32), 8);
  return a1;
}

unsigned int *LSMSVDSFImpl::StartColumns(unsigned int *this)
{
  v1 = this;
  v2 = this[3];
  v3 = *(this + 40);
  if (v3 >= v2)
  {
    v4 = this[3];
  }

  else
  {
    this = LSMVectorBase::Allocate(this + 37, v2, 1);
    v3 = *(v1 + 320);
    v4 = *(v1 + 12);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(v1 + 312) = v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      this = std::pair<LSMVector<unsigned int>,LSMVector<float>>::pair[abi:ne200100]((*(v1 + 296) + v5));
      ++v6;
      v5 += 64;
    }

    while (v6 < *(v1 + 12));
  }

  return this;
}

unsigned int *LSMSVDSFTImpl::StartColumns(unsigned int *this)
{
  v1 = this;
  v2 = this[2];
  v3 = *(this + 40);
  if (v3 >= v2)
  {
    v4 = this[2];
  }

  else
  {
    this = LSMVectorBase::Allocate(this + 37, v2, 1);
    v3 = *(v1 + 320);
    v4 = *(v1 + 8);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(v1 + 312) = v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      this = std::pair<LSMVector<unsigned int>,LSMVector<float>>::pair[abi:ne200100]((*(v1 + 296) + v5));
      ++v6;
      v5 += 64;
    }

    while (v6 < *(v1 + 8));
  }

  return this;
}

const void **LSMSVDSFImpl::ColumnDimension(LSMSVDSFImpl *this, uint64_t a2, unint64_t a3)
{
  v6 = *(this + 37);
  result = (v6 + (a2 << 6));
  if (result[3] < a3)
  {
    result = LSMVectorBase::Allocate(result, a3, 1);
    v6 = *(this + 37);
  }

  v8 = v6 + (a2 << 6);
  if (*(v8 + 56) < a3)
  {

    return LSMVectorBase::Allocate((v8 + 32), a3, 1);
  }

  return result;
}

float LSMSVDSFImpl::ProcessElement(LSMSVDSFImpl *this, int a2, uint64_t a3, double a4)
{
  v8 = (*(this + 37) + (a3 << 6));
  LSMVectorBase::Append(v8);
  *(*v8 + 4 * v8[2] - 4) = a2;
  v9 = *(this + 37) + (a3 << 6);
  LSMVectorBase::Append((v9 + 32));
  *&a4 = a4;
  *(*(v9 + 32) + 4 * *(v9 + 48) - 4) = LODWORD(a4);
  return result;
}

float LSMSVDSFTImpl::ProcessElement(LSMSVDSFTImpl *this, uint64_t a2, int a3, double a4)
{
  v8 = (*(this + 37) + (a2 << 6));
  LSMVectorBase::Append(v8);
  *(*v8 + 4 * v8[2] - 4) = a3;
  v9 = *(this + 37) + (a2 << 6);
  LSMVectorBase::Append((v9 + 32));
  *&a4 = a4;
  *(*(v9 + 32) + 4 * *(v9 + 48) - 4) = LODWORD(a4);
  return result;
}

uint64_t LSMSVDSFImpl::Dump(LSMSVDSFImpl *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = 0;
  time(&v22);
  v2 = localtime(&v22);
  strftime(__filename, 0x50uLL, "matrix_%d%b%C_%H%M%S", v2);
  v3 = fopen(__filename, "w");
  v4 = v3;
  v5 = *(this + 3);
  if (v5)
  {
    v6 = 0;
    v7 = (*(this + 37) + 16);
    v8 = *(this + 3);
    do
    {
      v9 = *v7;
      v7 += 8;
      v6 += v9;
      --v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  fprintf(v3, "%-72s%-8s\n#\nRRA%14lu%14lu%14lu%14lu\n%-16s%-16s%-20s%-20s\n", __filename, "LSM", *(this + 2), v5, v6, 0, "(16I5)", "(16I5)", "(1P,5D16.9f)", "(1P,5D16.9)");
  v23 = v4;
  v24[10] = v24;
  if (*(this + 3))
  {
    v10 = 0;
    v11 = 1;
    v12 = 16;
    do
    {
      LSMCardPunch::Punch(&v23, " %lu", v11);
      v11 += *(*(this + 37) + v12);
      ++v10;
      v12 += 64;
    }

    while (v10 < *(this + 3));
  }

  else
  {
    v11 = 1;
  }

  LSMCardPunch::Punch(&v23, " %lu", v11);
  LSMCardPunch::Flush(&v23);
  if (*(this + 3))
  {
    v13 = 0;
    do
    {
      v14 = *(*(this + 37) + (v13 << 6) + 16);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          LSMCardPunch::Punch(&v23, " %lu", (*(*(*(this + 37) + (v13 << 6)) + 4 * i) + 1));
        }
      }

      LSMCardPunch::Flush(&v23);
      ++v13;
      v16 = *(this + 3);
    }

    while (v13 < v16);
    if (v16)
    {
      v17 = 0;
      do
      {
        v18 = *(*(this + 37) + (v17 << 6) + 48);
        if (v18)
        {
          for (j = 0; j != v18; ++j)
          {
            LSMCardPunch::Punch(&v23, " %14g", *(*(*(this + 37) + (v17 << 6) + 32) + 4 * j));
          }
        }

        LSMCardPunch::Flush(&v23);
        ++v17;
      }

      while (v17 < *(this + 3));
    }
  }

  result = fclose(v4);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

int32x2_t LSMSVDSFTImpl::Dump(int32x2_t *this)
{
  this[1] = vrev64_s32(this[1]);
  LSMSVDSFImpl::Dump(this);
  result = vrev64_s32(this[1]);
  this[1] = result;
  return result;
}

void LSMSVDSFImpl::Compute(LSMSVDSFImpl *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v2 = (3 * *(this + 4));
  }

  v3 = *(this + 3);
  if (v2 >= v3)
  {
    LODWORD(v2) = *(this + 3);
  }

  *(this + 99) = v2;
  *(this + 52) = 0;
  *(this + 376) = xmmword_255A70370;
  v4 = *(this + 60);
  v5 = v3;
  if (v4 < v3)
  {
    LSMVectorBase::Allocate(this + 57, v3, 1);
    v4 = *(this + 60);
    v5 = *(this + 3);
  }

  if (v4 >= v3)
  {
    v4 = v3;
  }

  *(this + 59) = v4;
  v6 = *(this + 64);
  v7 = v5;
  if (v6 < v5)
  {
    LSMVectorBase::Allocate(this + 61, v5, 1);
    v6 = *(this + 64);
    v7 = *(this + 3);
  }

  if (v6 >= v5)
  {
    v6 = v5;
  }

  *(this + 63) = v6;
  v8 = *(this + 68);
  v9 = v7;
  if (v8 < v7)
  {
    LSMVectorBase::Allocate(this + 65, v7, 1);
    v8 = *(this + 68);
    v9 = *(this + 3);
  }

  if (v8 >= v7)
  {
    v8 = v7;
  }

  *(this + 67) = v8;
  v10 = *(this + 72);
  if (v10 < v9)
  {
    LSMVectorBase::Allocate(this + 69, v9, 1);
    v10 = *(this + 72);
  }

  if (v10 >= v9)
  {
    v10 = v9;
  }

  *(this + 71) = v10;
  v11 = *(this + 2);
  v12 = *(this + 76);
  if (v12 < v11)
  {
    LSMVectorBase::Allocate(this + 73, *(this + 2), 1);
    v12 = *(this + 76);
  }

  if (v12 >= v11)
  {
    v12 = v11;
  }

  *(this + 75) = v12;
  v13 = ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (*(this + 99) + 2);
  v14 = *(this + 80);
  if (v14 < v13)
  {
    LSMVectorBase::Allocate(this + 77, ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (*(this + 99) + 2), 1);
    v14 = *(this + 80);
  }

  if (v14 >= v13)
  {
    v14 = v13;
  }

  *(this + 79) = v14;
  v15 = *(this + 59);
  if (v15 >= 1)
  {
    bzero(*(this + 57), 4 * v15);
  }

  LSMSVDSFImpl::landr(this);
  LSMVectorBase::LSMVectorBase(__Y, 4, *(this + 2));
  v16 = *(this + 102);
  if (v16 >= 1)
  {
    for (i = 0; i < v16; ++i)
    {
      LSMSVDSFImpl::opb(this, (*(this + 41) + 4 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * i), __Y[0]);
      v18 = cblas_sdot(*(this + 3), (*(this + 41) + 4 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * i), 1, __Y[0], 1);
      cblas_saxpy(*(this + 3), -v18, (*(this + 41) + 4 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * i), 1, __Y[0], 1);
      v19 = cblas_sdot(*(this + 3), __Y[0], 1, __Y[0], 1);
      v20 = sqrtf(v18);
      LSMSVDSFImpl::opa(this, (*(this + 41) + 4 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * i), __Y[0]);
      cblas_sscal(*(this + 2), 1.0 / v20, __Y[0], 1);
      *(*(this + 65) + 4 * i) = (1.0 / v20) * sqrtf(v19);
      *(*(this + 11) + 4 * i) = v20;
      if (v42)
      {
        memmove((*(this + 3) + 4 * ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * i), __Y[0], 4 * v42);
      }

      v16 = *(this + 102);
    }
  }

  if (v16 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v22 = (*(this + 11) + 4 * v16 - 4);
    while (*v22 < 0.00000001)
    {
      ++v21;
      --v22;
      if (v16 == v21)
      {
        v21 = v16;
        break;
      }
    }
  }

  v23 = v16 - v21;
  if (v16 - v21 >= *(this + 4))
  {
    v23 = *(this + 4);
  }

  *(this + 4) = v23;
  if (v23 < v16)
  {
    v24 = v21 + v23;
    v25 = (v23 + 3) & 0x1FFFFFFFCLL;
    if (*(this + 3))
    {
      v26 = 0;
      v27 = 0;
      v28 = 4 * v16 - 4 * v24;
      v29 = (4 * (v23 + 3)) & 0xFFFFFFFFFFFFFFF0;
      do
      {
        memmove((*(this + 7) + v26), (*(this + 7) + v28), 4 * *(this + 4));
        ++v27;
        v30 = *(this + 3);
        v28 += (4 * (v16 + 3)) & 0xFFFFFFFFFFFFFFF0;
        v26 += v29;
      }

      while (v27 < v30);
    }

    else
    {
      v30 = 0;
    }

    v31 = v30 * v25;
    v32 = *(this + 10);
    if (v32 < v31)
    {
      LSMVectorBase::Allocate(this + 7, v31, 1);
      v32 = *(this + 10);
    }

    if (v32 >= v31)
    {
      v32 = v31;
    }

    *(this + 9) = v32;
    LSMVectorBase::LSMVectorBase(v40, (this + 56));
    LSMVectorBase::Swap(v40, (this + 56));
    LSMVectorBase::clear(v40);
    v33 = v16 - v24;
    memmove(*(this + 11), (*(this + 11) + 4 * v33), 4 * *(this + 4));
    v34 = *(this + 4);
    v35 = *(this + 14);
    if (v35 < v34)
    {
      LSMVectorBase::Allocate(this + 11, *(this + 4), 1);
      v35 = *(this + 14);
    }

    if (v35 >= v34)
    {
      v35 = v34;
    }

    *(this + 13) = v35;
    LSMVectorBase::LSMVectorBase(v39, (this + 88));
    LSMVectorBase::Swap(v39, (this + 88));
    LSMVectorBase::clear(v39);
    memmove(*(this + 3), (*(this + 3) + 4 * ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * v33), (4 * (*(this + 4) * *(this + 2)) + 12) & 0x7FFFFFFF0);
    v36 = ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * *(this + 4);
    v37 = *(this + 6);
    if (v37 < v36)
    {
      LSMVectorBase::Allocate(this + 3, ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * *(this + 4), 1);
      v37 = *(this + 6);
    }

    if (v37 >= v36)
    {
      v37 = v36;
    }

    *(this + 5) = v37;
    LSMVectorBase::LSMVectorBase(v38, (this + 24));
    LSMVectorBase::Swap(v38, (this + 24));
    LSMVectorBase::clear(v38);
    LSMVectorBase::~LSMVectorBase(v38);
    LSMVectorBase::~LSMVectorBase(v39);
    LSMVectorBase::~LSMVectorBase(v40);
  }

  LSMVectorBase::clear(this + 57);
  LSMVectorBase::clear(this + 61);
  LSMVectorBase::clear(this + 65);
  LSMVectorBase::clear(this + 69);
  LSMVectorBase::clear(this + 73);
  LSMVectorBase::clear(this + 77);
  LSMVectorBase::clear(this + 41);
  LSMVectorBase::~LSMVectorBase(__Y);
}

void sub_255A681D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  LSMVectorBase::~LSMVectorBase(va);
  _Unwind_Resume(a1);
}

void LSMSVDSFImpl::landr(LSMSVDSFImpl *this)
{
  *(this + 90) = 872415232;
  v2 = *(this + 3);
  *(this + 91) = sqrtf(v2) * 0.00000011921;
  *(this + 46) = 0x36D744FC39B504F3;
  v3 = *(this + 60);
  v4 = v2;
  if (v3 < v2)
  {
    LSMVectorBase::Allocate(this + 57, v2, 1);
    v3 = *(this + 60);
    v4 = *(this + 3);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(this + 59) = v3;
  v5 = *(this + 84);
  v6 = v4;
  if (v5 < v4)
  {
    LSMVectorBase::Allocate(this + 81, v4, 1);
    v5 = *(this + 84);
    v6 = *(this + 3);
  }

  if (v5 >= v4)
  {
    v5 = v4;
  }

  *(this + 83) = v5;
  v7 = *(this + 88);
  v8 = v6;
  if (v7 < v6)
  {
    LSMVectorBase::Allocate(this + 85, v6, 1);
    v7 = *(this + 88);
    v8 = *(this + 3);
  }

  if (v7 >= v6)
  {
    v7 = v6;
  }

  *(this + 87) = v7;
  v9 = *(this + 92);
  v10 = v8;
  if (v9 < v8)
  {
    LSMVectorBase::Allocate(this + 89, v8, 1);
    v9 = *(this + 92);
    v10 = *(this + 3);
  }

  if (v9 >= v8)
  {
    v9 = v8;
  }

  *(this + 91) = v9;
  v11 = *(this + 96);
  v12 = v10;
  if (v11 < v10)
  {
    LSMVectorBase::Allocate(this + 93, v10, 1);
    v11 = *(this + 96);
    v12 = *(this + 3);
  }

  if (v11 >= v10)
  {
    v11 = v10;
  }

  *(this + 95) = v11;
  v13 = *(this + 100);
  if (v13 < v12)
  {
    LSMVectorBase::Allocate(this + 97, v12, 1);
    v13 = *(this + 100);
  }

  if (v13 >= v12)
  {
    v13 = v12;
  }

  *(this + 99) = v13;
  v14 = *(this + 99);
  v15 = v14;
  v16 = *(this + 104);
  if (v16 < v14)
  {
    LSMVectorBase::Allocate(this + 101, v14, 1);
    v16 = *(this + 104);
    v14 = *(this + 99);
  }

  v17 = v14;
  if (v16 >= v15)
  {
    v16 = v15;
  }

  *(this + 103) = v16;
  v18 = *(this + 108);
  v19 = v14;
  if (v18 < v14)
  {
    LSMVectorBase::Allocate(this + 105, v14, 1);
    v18 = *(this + 108);
    v14 = *(this + 99);
    v19 = v14;
  }

  if (v18 >= v17)
  {
    v18 = v17;
  }

  *(this + 107) = v18;
  v20 = *(this + 112);
  if (v20 < v19)
  {
    LSMVectorBase::Allocate(this + 109, v19, 1);
    v20 = *(this + 112);
    v14 = *(this + 99);
  }

  if (v20 >= v19)
  {
    v20 = v19;
  }

  *(this + 111) = v20;
  v21 = v14 + 1;
  v22 = *(this + 116);
  if (v22 < v21)
  {
    LSMVectorBase::Allocate(this + 113, v21, 1);
    v22 = *(this + 116);
  }

  if (v22 >= v21)
  {
    v22 = v21;
  }

  *(this + 115) = v22;
  LSMSVDSFImpl::lanso(this);
  v23 = ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * *(this + 102);
  v24 = *(this + 44);
  if (v24 < v23)
  {
    LSMVectorBase::Allocate(this + 41, ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * *(this + 102), 1);
    v24 = *(this + 44);
  }

  if (v24 >= v23)
  {
    v24 = v23;
  }

  *(this + 43) = v24;
  bzero(*(this + 41), 4 * v24);
  v25 = *(this + 102);
  v26 = ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * v25;
  v27 = *(this + 6);
  if (v27 < v26)
  {
    LSMVectorBase::Allocate(this + 3, ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * v25, 1);
    v27 = *(this + 6);
    v25 = *(this + 102);
  }

  if (v27 >= v26)
  {
    v27 = v26;
  }

  *(this + 5) = v27;
  v28 = ((v25 + 3) & 0xFFFFFFFFFFFFFFFCLL) * *(this + 3);
  v29 = *(this + 10);
  if (v29 < v28)
  {
    LSMVectorBase::Allocate(this + 7, ((v25 + 3) & 0xFFFFFFFFFFFFFFFCLL) * *(this + 3), 1);
    v29 = *(this + 10);
    v25 = *(this + 102);
  }

  if (v29 >= v28)
  {
    v29 = v28;
  }

  *(this + 9) = v29;
  v30 = *(this + 14);
  if (v30 < v25)
  {
    LSMVectorBase::Allocate(this + 11, v25, 1);
    v30 = *(this + 14);
  }

  if (v30 >= v25)
  {
    v30 = v25;
  }

  *(this + 13) = v30;
  v31 = fabsf(*(this + 96));
  if (v31 < *(this + 93))
  {
    v31 = *(this + 93);
  }

  *(this + 96) = v31;
  LSMSVDSFImpl::ritvec(this);
  LSMVectorBase::clear(this + 57);
  LSMVectorBase::clear(this + 81);
  LSMVectorBase::clear(this + 85);
  LSMVectorBase::clear(this + 89);
  LSMVectorBase::clear(this + 93);
  LSMVectorBase::clear(this + 97);
  LSMVectorBase::clear(this + 101);
  LSMVectorBase::clear(this + 105);
  LSMVectorBase::clear(this + 109);

  LSMVectorBase::clear(this + 113);
}

void LSMSVDSFImpl::opb(void **this, float *a2, float *a3)
{
  v6 = *(this + 2);
  if (v6)
  {
    bzero(this[73], 4 * v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    v8 = 0;
    v9 = this[37];
    v10 = this[73];
    do
    {
      v11 = &v9[64 * v8];
      v12 = *(v11 + 2);
      v13 = *a2++;
      v14 = v13;
      if (v12 >= 1)
      {
        v15 = *v11;
        v16 = *v11 + 4 * v12;
        v17 = *(v11 + 4);
        do
        {
          v18 = *v17++;
          v19 = v18;
          v20 = *v15++;
          v10[v20] = v10[v20] + (v19 * v14);
        }

        while (v15 < v16);
      }

      ++v8;
    }

    while (v8 != v7);
    v21 = 0;
    v22 = this[37];
    v23 = this[73];
    do
    {
      v24 = &v22[64 * v21];
      v25 = *(v24 + 2);
      if (v25 < 1)
      {
        v29 = 0.0;
      }

      else
      {
        v26 = *v24;
        v27 = *v24 + 4 * v25;
        v28 = *(v24 + 4);
        v29 = 0.0;
        do
        {
          v30 = *v28++;
          v31 = v30;
          v32 = *v26++;
          v29 = v29 + (v31 * v23[v32]);
        }

        while (v26 < v27);
      }

      *a3++ = v29;
      ++v21;
    }

    while (v21 != v7);
  }
}

void LSMSVDSFImpl::opa(LSMSVDSFImpl *this, float *a2, float *a3)
{
  v6 = *(this + 2);
  if (v6)
  {
    bzero(a3, 4 * v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    v8 = 0;
    v9 = *(this + 37);
    do
    {
      v10 = (v9 + (v8 << 6));
      v11 = v10[2];
      v12 = *a2++;
      v13 = v12;
      if (v11 >= 1)
      {
        v14 = *v10;
        v15 = &(*v10)[v11];
        v16 = v10[4];
        do
        {
          v17 = *v16++;
          v18 = v17;
          v19 = *v14++;
          a3[v19] = a3[v19] + (v18 * v13);
        }

        while (v14 < v15);
      }

      ++v8;
    }

    while (v8 != v7);
  }
}

void LSMSVDSFTImpl::Compute(int32x2_t *this)
{
  this[1] = vrev64_s32(this[1]);
  LSMSVDSFImpl::Compute(this);

  LSMSVD::TransposeUV(this);
}

uint64_t datx(uint64_t result, float a2, float *a3, float *a4)
{
  if (result >= 1 && a2 != 0.0)
  {
    do
    {
      v4 = *a3++;
      *a4++ = v4 * a2;
      --result;
    }

    while (result);
  }

  return result;
}

uint64_t dsort2(uint64_t result, uint64_t a2, float *a3, float *a4)
{
  if (result)
  {
    do
    {
      if (result < a2)
      {
        v4 = &a3[result];
        v5 = result;
        v6 = &a4[result];
        do
        {
          for (i = v5 - result; i >= 0; i -= result)
          {
            v8 = a3[i];
            v9 = v4[i];
            if (v8 <= v9)
            {
              break;
            }

            a3[i] = v9;
            v4[i] = v8;
            v10 = a4[i];
            a4[i] = v6[i];
            v6[i] = v10;
          }

          ++v5;
        }

        while (v5 != a2);
      }

      v11 = result + 1;
      result /= 2;
    }

    while (v11 > 2);
  }

  return result;
}

void LSMSVDSFImpl::lanso(LSMSVDSFImpl *this)
{
  *(this + 50) = 0;
  LSMSVDSFImpl::stpone(this);
  if (*(this + 97) != 0.0 && !*(this + 101))
  {
    v2 = *(this + 91);
    **(this + 105) = v2;
    **(this + 109) = v2;
    v35 = 0;
    v3 = *(this + 4);
    v4 = *(this + 99);
    v34 = 0;
    if (v3)
    {
      v5 = 0;
      v6 = 8;
      if (v3 > 8)
      {
        v6 = v3;
      }

      v7 = v6 + v3;
      if (v7 >= v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = v7;
      }

      v9 = 1;
      do
      {
        if (*(this + 97) <= *(this + 98))
        {
          *(this + 97) = 0;
        }

        LSMSVDSFImpl::lanczos_step(this, v9, v8, &v35, &v34);
        if (v34)
        {
          v8 = *(this + 100);
        }

        v10 = v8 - 1;
        *(this + 100) = v8 - 1;
        *(*(this + 113) + 4 * (v8 - 1) + 4) = *(this + 97);
        v11 = v8;
        if (v8 >= 2)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            if (v10 + 1 > v12)
            {
              v14 = v10 + 1;
            }

            else
            {
              v14 = v12;
            }

            v15 = v12 + 1;
            while (v15 - v14 != 1)
            {
              v16 = *(*(this + 113) + 4 * v15++);
              if (v16 == 0.0)
              {
                LODWORD(v14) = v15 - 2;
                break;
              }
            }

            if (v14 >= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v14;
            }

            v18 = 4 * v12;
            cblas_scopy(v17 - v12 + 1, (*(this + 101) + v18), 1, (*(this + 61) + v18), -1);
            cblas_scopy(v17 - v12, (*(this + 113) + v18 + 4), 1, (*(this + 97) + v18 + 4), -1);
            LSMSVDSFImpl::imtqlb(this, v17 - v12 + 1, (*(this + 61) + v18), (*(this + 97) + v18), (*(this + 65) + v18), v19);
            if (*(this + 101))
            {
              printf("IMTQLB FAILED TO CONVERGE (IERR = %d)\n", *(this + 101));
              printf("L = %d    I = %d\n", v12, v17);
              if (v17 >= v12)
              {
                v20 = v12;
                do
                {
                  printf("%d  %lg  %lg  %lg\n", v20++, *(*(this + 61) + v18), *(*(this + 97) + v18), *(*(this + 65) + v18));
                  v18 += 4;
                }

                while (v17 + 1 != v20);
              }
            }

            if (v17 >= v12)
            {
              v21 = v17 + 1;
              v22 = (*(this + 65) + 4 * v12);
              v23 = v17 + 1 - v12;
              do
              {
                *v22 = *(this + 97) * fabsf(*v22);
                ++v22;
                --v23;
              }

              while (v23);
            }

            else
            {
              v21 = v17 + 1;
            }

            ++v13;
            v10 = *(this + 100);
            v24 = v13 < v10 && v17 < v10;
            v12 = v21;
          }

          while (v24);
          v11 = v10 + 1;
        }

        dsort2((v11 + (v11 >> 31)) >> 1, v11, *(this + 61), *(this + 65));
        LSMSVDSFImpl::error_bound(this, &v34);
        v25 = *(this + 102);
        v26 = *(this + 4);
        if (v25 >= v26)
        {
          break;
        }

        if (v25)
        {
          v27 = (*(this + 100) - 5) * (v26 - v25) / v25;
          v28 = v27 + 1 > 3 ? v27 + 1 : 3;
          v29 = v28 + v8;
        }

        else
        {
          v29 = v8 + 9;
        }

        if (v34)
        {
          break;
        }

        v30 = *(this + 99);
        if (v30 < v29)
        {
          v29 = *(this + 99);
        }

        v34 = v8 >= v30;
        if (++v5 >= v26)
        {
          break;
        }

        v9 = v8;
        v24 = v8 < v30;
        v8 = v29;
      }

      while (v24);
    }

    v31 = *(this + 81);
    v32 = *(this + 3);
    v33 = (*(this + 77) + 4 * ((v32 + 3) & 0x1FFFFFFFCLL) * (*(this + 100) + 2));

    cblas_scopy(v32, v31, 1, v33, 1);
  }
}

void LSMSVDSFImpl::ritvec(LSMSVDSFImpl *this)
{
  v2 = *(this + 89);
  v3 = *(this + 97);
  v4 = *(this + 100);
  v5 = v4 + 1;
  v6 = v5 * v5;
  LSMVectorBase::LSMVectorBase(v33, 4, v5 * v5);
  if (v4 == -1 || (v6 <= 1 ? (v7 = 1) : (v7 = v5 * v5), bzero(v33[0], 4 * v7), (v4 & 0x80000000) != 0))
  {
    v15 = 0;
  }

  else
  {
    v8 = v33[0];
    v9 = vdupq_n_s64(v4);
    v10 = (v4 + 4) & 0xFFFFFFFC;
    v11 = xmmword_255A70380;
    v12 = xmmword_255A70320;
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v12));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *v8 = 1.0;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        v8[v4 + 2] = 1.0;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v11))).i32[1])
      {
        v8[2 * v4 + 4] = 1.0;
        v8[3 * v4 + 6] = 1.0;
      }

      v11 = vaddq_s64(v11, v13);
      v12 = vaddq_s64(v12, v13);
      v8 += 4 * v4 + 8;
      v10 -= 4;
    }

    while (v10);
    v15 = 1;
  }

  cblas_scopy(v4 + 1, *(this + 101), 1, v2, -1);
  cblas_scopy(*(this + 100), (*(this + 113) + 4), 1, v3 + 1, -1);
  LSMSVDSFImpl::imtql2(this, v4 + 1, v4 + 1, v2, v3, v33[0]);
  if (!*(this + 101))
  {
    *(this + 103) = 0;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 4 * (v6 - v5);
      v19 = 4 * ~v4;
      do
      {
        if (*(*(this + 65) + 4 * v16) <= (*(this + 96) * fabsf(*(*(this + 61) + 4 * v16))) && v16 > (v5 + ~*(this + 102)))
        {
          v32 = v17;
          v20 = *(this + 3);
          if (v20)
          {
            bzero(v2, 4 * v20);
          }

          v21 = v18;
          v22 = 2;
          v23 = v5;
          do
          {
            cblas_scopy(*(this + 3), (*(this + 77) + 4 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * v22), 1, v3, 1);
            cblas_saxpy(*(this + 3), *(v33[0] + v21), v3, 1, v2, 1);
            ++v22;
            v21 += v19;
            --v23;
          }

          while (v23);
          v24 = *(this + 103);
          v25 = *(this + 102);
          v26 = *(this + 3);
          if (v24 < v25 && v26)
          {
            v27 = (*(this + 7) + 4 * v24);
            v28 = (4 * v25 + 12) & 0xFFFFFFFFFFFFFFF0;
            v29 = v2;
            v30 = *(this + 3);
            do
            {
              v31 = *v29++;
              *v27 = v31;
              v27 = (v27 + v28);
              --v30;
            }

            while (v30);
          }

          cblas_scopy(v26, v2, 1, (*(this + 41) + 4 * v32), 1);
          v17 = ((*(this + 3) + 3) & 0x1FFFFFFFCLL) + v32;
          ++*(this + 103);
        }

        ++v16;
        v18 += 4;
      }

      while (v16 != v5);
    }
  }

  LSMVectorBase::~LSMVectorBase(v33);
}

void sub_255A68F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LSMVectorBase::~LSMVectorBase(va);
  _Unwind_Resume(a1);
}

void LSMSVDSFImpl::imtql2(LSMSVDSFImpl *this, uint64_t a2, uint64_t a3, float *a4, float *__dst, float *a6)
{
  v6 = a3 - 1;
  if (a3 != 1)
  {
    *(this + 101) = 0;
    if (a3 <= 1)
    {
      __dst[v6] = 0.0;
    }

    else
    {
      memmove(__dst, __dst + 1, 4 * a3 - 4);
      v13 = 0;
      __dst[v6] = 0.0;
      v14 = a3 * a2;
      v54 = a6;
      v56 = a4;
      v57 = a6;
      while (2)
      {
        v15 = 0;
        v58 = &a4[v13];
        while (1)
        {
          v16 = 0;
          v17 = v56;
          v18 = v57;
          v19 = v13;
          do
          {
            v20 = v19;
            v21 = v16;
            v22 = v17;
            v23 = v18;
            if (v19 >= a3)
            {
              break;
            }

            if (v6 == v19)
            {
              break;
            }

            v24 = fabsf(*v17);
            ++v19;
            ++v17;
            v25 = v24 + fabsf(v22[1]);
            --v16;
            ++v18;
          }

          while ((v25 + fabsf(__dst[v20])) != v25);
          if (!v21)
          {
            break;
          }

          if (v15 == 30)
          {
            *(this + 101) = v13;
            return;
          }

          v60 = v15;
          v26 = *v58;
          v27 = __dst[v13];
          *v12.i32 = (v58[1] - *v58) / (v27 + v27);
          v59 = v12;
          *v28.i32 = hypotf(*v12.i32, 1.0);
          v29.i64[0] = 0x8000000080000000;
          v29.i64[1] = 0x8000000080000000;
          v12 = vbslq_s8(v29, v28, v59);
          v30 = (*v22 - v26) + (v27 / (*v59.i32 + *v12.i32));
          v31 = 0.0;
          if (v20 <= v13)
          {
LABEL_18:
            *v58 = *v58 - v31;
            __dst[v13] = v30;
          }

          else
          {
            v32 = 1.0;
            v33 = 1.0;
            v34 = v20;
            while (1)
            {
              v35 = v34 - 1;
              v36 = __dst[v34 - 1];
              v37 = v33 * v36;
              *v12.i32 = hypotf(v33 * v36, v30);
              __dst[v34] = *v12.i32;
              if (*v12.i32 == 0.0)
              {
                break;
              }

              v38 = v32 * v36;
              v33 = v37 / *v12.i32;
              v32 = v30 / *v12.i32;
              v39 = a4[v34] - v31;
              v40 = (v38 * (v32 + v32)) + ((a4[v35] - v39) * (v37 / *v12.i32));
              v31 = v33 * v40;
              a4[v34] = v39 + (v33 * v40);
              if (v14 >= 1)
              {
                for (i = 0; i < v14; i += a3)
                {
                  v42 = &v23[i];
                  v43 = *(v42 - 1);
                  v44 = (v32 * *v42) + (v33 * v43);
                  *(v42 - 1) = (*v42 * -v33) + (v32 * v43);
                  *v42 = v44;
                }
              }

              v30 = -(v38 - (v32 * v40));
              --v23;
              --v34;
              if (v35 <= v13)
              {
                goto LABEL_18;
              }
            }

            a4[v34] = a4[v34] - v31;
          }

          v15 = v60 + 1;
          __dst[v20] = 0.0;
        }

        ++v13;
        ++v56;
        ++v57;
        if (v13 != a3)
        {
          continue;
        }

        break;
      }

      v45 = 1;
      v46 = v54;
      do
      {
        v47 = v45 - 1;
        v48 = a4[v45 - 1];
        v49 = v45 - 1;
        v50 = v45;
        do
        {
          if (a4[v50] < v48)
          {
            v49 = v50;
            v48 = a4[v50];
          }

          ++v50;
        }

        while (a3 != v50);
        if (v49 != v47)
        {
          a4[v49] = a4[v45 - 1];
          a4[v47] = v48;
          if (v14 >= 1)
          {
            v51 = 0;
            v52 = &v54[v49];
            do
            {
              v53 = v46[v51];
              v46[v51] = v52[v51];
              v52[v51] = v53;
              v51 += a3;
            }

            while (v51 < v14);
          }
        }

        ++v45;
        ++v46;
      }

      while (v45 != a3);
    }
  }
}

void LSMSVDSFImpl::store(LSMSVDSFImpl *this, int a2, uint64_t a3, float *__X)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a3 < 2)
      {
        v9 = *(this + 3);
        v10 = *(this + 77);
        v11 = ((v9 + 3) & 0x1FFFFFFFCLL) * a3;
        goto LABEL_17;
      }

      v7 = *MEMORY[0x277D85DF8];
      v8 = "store: (STORP) j >= MAXLL \n";
    }

    else
    {
      if (a2 != 3)
      {
        return;
      }

      if (a3 < 2)
      {
        v4 = *(this + 3);
        v5 = *(this + 77);
        v6 = ((v4 + 3) & 0x1FFFFFFFCLL) * a3;
        goto LABEL_15;
      }

      v7 = *MEMORY[0x277D85DF8];
      v8 = "store: (RETRP) j >= MAXLL \n";
    }

    fwrite(v8, 0x1BuLL, 1uLL, v7);
    return;
  }

  if (!a2)
  {
    v9 = *(this + 3);
    v10 = *(this + 77);
    v11 = ((v9 + 3) & 0x1FFFFFFFCLL) * (a3 + 2);
LABEL_17:
    v13 = v9;
    v12 = __X;
    __X = (v10 + 4 * v11);
    goto LABEL_18;
  }

  if (a2 == 1)
  {
    v4 = *(this + 3);
    v5 = *(this + 77);
    v6 = ((v4 + 3) & 0x1FFFFFFFCLL) * (a3 + 2);
LABEL_15:
    v12 = (v5 + 4 * v6);
    v13 = v4;
LABEL_18:
    cblas_scopy(v13, v12, 1, __X, 1);
  }
}

float sparse_sdot(unsigned int *a1, unsigned int *a2, float *a3, float *a4)
{
  result = 0.0;
  while (a1 < a2)
  {
    v5 = *a3++;
    v6 = v5;
    v7 = *a1++;
    result = result + (v6 * a4[v7]);
  }

  return result;
}

void LSMSVDSFImpl::stpone(LSMSVDSFImpl *this)
{
  LSMSVDSFImpl::startv(this);
  *(this + 97) = v2;
  if (v2 != 0.0 && !*(this + 101))
  {
    v3 = 1.0 / v2;
    v4 = *(this + 3);
    if (v3 != 0.0 && v4 != 0)
    {
      v6 = *(this + 81);
      v7 = *(this + 57);
      v8 = *(this + 3);
      do
      {
        v9 = *v7++;
        *v6++ = v3 * v9;
        --v8;
      }

      while (v8);
    }

    cblas_sscal(v4, v3, *(this + 89), 1);
    LSMSVDSFImpl::opb(this, *(this + 89), *(this + 57));
    v10 = cblas_sdot(*(this + 3), *(this + 57), 1, *(this + 89), 1);
    **(this + 101) = v10;
    cblas_saxpy(*(this + 3), -v10, *(this + 81), 1, *(this + 57), 1);
    v11 = cblas_sdot(*(this + 3), *(this + 57), 1, *(this + 89), 1);
    cblas_saxpy(*(this + 3), -v11, *(this + 81), 1, *(this + 57), 1);
    **(this + 101) = v11 + **(this + 101);
    cblas_scopy(*(this + 3), *(this + 57), 1, *(this + 93), 1);
    v12 = sqrtf(cblas_sdot(*(this + 3), *(this + 57), 1, *(this + 93), 1));
    *(this + 97) = v12;
    *(this + 98) = *(this + 92) * (v12 + fabsf(**(this + 101)));
  }
}

void LSMSVDSFImpl::lanczos_step(LSMSVDSFImpl *this, int a2, int a3, int *a4, BOOL *a5)
{
  *(this + 100) = a2;
  if (a2 < a3)
  {
    do
    {
      LSMVectorBase::Swap(this + 81, (this + 680));
      LSMVectorBase::Swap(this + 89, (this + 744));
      cblas_scopy(*(this + 3), *(this + 85), 1, (*(this + 77) + 4 * (((*(this + 3) + 3) & 0x1FFFFFFFCLL) + ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * *(this + 100))), 1);
      v9 = *(this + 100);
      if (v9 <= 2)
      {
        LSMSVDSFImpl::store(this, 2, v9 - 1, *(this + 93));
        v9 = *(this + 100);
      }

      v10 = *(this + 97);
      *(*(this + 113) + 4 * v9) = v10;
      if (v10 == 0.0)
      {
        LSMSVDSFImpl::startv(this);
        *(this + 97) = v10;
        if (*(this + 101))
        {
          return;
        }

        if (v10 == 0.0)
        {
          *a5 = 1;
        }
      }

      if (*a5)
      {
        break;
      }

      v11 = *(this + 3);
      v12 = 1.0 / v10;
      if (v11 && v12 != 0.0)
      {
        v13 = *(this + 81);
        v14 = *(this + 57);
        v15 = *(this + 3);
        do
        {
          v16 = *v14++;
          *v13++ = v12 * v16;
          --v15;
        }

        while (v15);
      }

      cblas_sscal(v11, v12, *(this + 89), 1);
      LSMSVDSFImpl::opb(this, *(this + 89), *(this + 57));
      cblas_saxpy(*(this + 3), -*(this + 97), *(this + 85), 1, *(this + 57), 1);
      v17 = cblas_sdot(*(this + 3), *(this + 57), 1, *(this + 89), 1);
      *(*(this + 101) + 4 * *(this + 100)) = v17;
      cblas_saxpy(*(this + 3), -v17, *(this + 81), 1, *(this + 57), 1);
      v18 = *(this + 100);
      if (v18 <= 2)
      {
        v19 = (*(this + 101) + 4 * v18);
        if (fabsf(*(v19 - 1)) > (fabsf(*v19) * 4.0))
        {
          *a4 = v18;
          v18 = *(this + 100);
        }
      }

      v20 = v18 - 1;
      if (v20 >= *a4)
      {
        v20 = *a4;
      }

      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          LSMSVDSFImpl::store(this, 3, v21, *(this + 97));
          v22 = cblas_sdot(*(this + 3), *(this + 97), 1, *(this + 57), 1);
          cblas_scopy(*(this + 3), (*(this + 77) + 4 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (v21 + 2)), 1, *(this + 97), 1);
          cblas_saxpy(*(this + 3), -v22, *(this + 97), 1, *(this + 57), 1);
          v23 = *(this + 91);
          *(*(this + 105) + 4 * v21) = v23;
          *(*(this + 109) + 4 * v21++) = v23;
          v24 = *(this + 100) - 1;
          if (v24 >= *a4)
          {
            v24 = *a4;
          }
        }

        while (v21 < v24);
      }

      v25 = cblas_sdot(*(this + 3), *(this + 57), 1, *(this + 93), 1);
      cblas_saxpy(*(this + 3), -v25, *(this + 85), 1, *(this + 57), 1);
      v26 = *(this + 113);
      v27 = *(this + 100);
      v28 = *(v26 + 4 * v27);
      if (v28 > 0.0)
      {
        *(v26 + 4 * v27) = v25 + v28;
      }

      v29 = cblas_sdot(*(this + 3), *(this + 57), 1, *(this + 89), 1);
      cblas_saxpy(*(this + 3), -v29, *(this + 81), 1, *(this + 57), 1);
      *(*(this + 101) + 4 * *(this + 100)) = v29 + *(*(this + 101) + 4 * *(this + 100));
      cblas_scopy(*(this + 3), *(this + 57), 1, *(this + 93), 1);
      v30 = sqrtf(cblas_sdot(*(this + 3), *(this + 57), 1, *(this + 93), 1));
      *(this + 97) = v30;
      v31 = *(this + 92) * (v30 + (*(*(this + 113) + 4 * *(this + 100)) + fabsf(*(*(this + 101) + 4 * *(this + 100)))));
      *(this + 98) = v31;
      LSMSVDSFImpl::ortbnd(this, v31);
      LSMSVDSFImpl::purge(this, *a4, *(this + 57), *(this + 81), *(this + 93), *(this + 89));
      if (*(this + 97) <= *(this + 98))
      {
        *(this + 97) = 0;
      }

      v32 = *(this + 100) + 1;
      *(this + 100) = v32;
    }

    while (v32 < a3);
  }
}

void LSMSVDSFImpl::imtqlb(LSMSVDSFImpl *this, uint64_t a2, float *a3, float *a4, float *a5, int8x16_t a6)
{
  v6 = a2 - 1;
  if (a2 != 1)
  {
    *(this + 101) = 0;
    *a5 = 1.0;
    if (a2 < 2)
    {
      a4[v6] = 0.0;
    }

    else
    {
      v9 = a4 + 1;
      for (i = 1; i != a2; ++i)
      {
        a5[i] = 0.0;
        *(v9 - 1) = *v9;
        ++v9;
      }

      v11 = 0;
      a4[v6] = 0.0;
      v53 = a4;
      v54 = a5;
      v12 = a3;
      v50 = a3;
      while (2)
      {
        v13 = 0;
        v14 = &a3[v11];
        v51 = v14;
        v52 = v12;
        while (1)
        {
          v15 = 0;
          v17 = v53;
          v16 = v54;
          v18 = v12;
          v19 = v11;
          do
          {
            v20 = v19;
            v21 = v15;
            v22 = v18;
            v23 = v17;
            v24 = v16;
            if (v19 >= a2)
            {
              break;
            }

            if (v6 == v19)
            {
              break;
            }

            v25 = fabsf(*v18);
            ++v19;
            ++v18;
            v26 = v25 + fabsf(v22[1]);
            --v15;
            ++v17;
            ++v16;
          }

          while ((v26 + fabsf(a4[v20])) != v26);
          v27 = *v14;
          if (!v21)
          {
            break;
          }

          if (v13 == 30)
          {
            *(this + 101) = v11;
            return;
          }

          v28 = a4[v11];
          *a6.i32 = (v14[1] - v27) / (v28 + v28);
          v55 = a6;
          *v29.i32 = hypotf(*a6.i32, 1.0);
          v30.i64[0] = 0x8000000080000000;
          v30.i64[1] = 0x8000000080000000;
          a6 = vbslq_s8(v30, v29, v55);
          v31 = (*v22 - v27) + (v28 / (*v55.i32 + *a6.i32));
          v32 = 0.0;
          if (v20 <= v11)
          {
LABEL_17:
            v14 = v51;
            *v51 = *v51 - v32;
            a4[v11] = v31;
          }

          else
          {
            v33 = 1.0;
            v34 = 1.0;
            v35 = v20;
            while (1)
            {
              v36 = *(v23 - 1);
              v37 = v34 * v36;
              *a6.i32 = hypotf(v34 * v36, v31);
              *v23 = *a6.i32;
              if (*a6.i32 == 0.0)
              {
                break;
              }

              --v35;
              v38 = v33 * v36;
              v34 = v37 / *a6.i32;
              v33 = v31 / *a6.i32;
              v39 = *v22 - v32;
              v40 = (v38 * (v33 + v33)) + ((*(v22 - 1) - v39) * v34);
              v32 = v34 * v40;
              *v22 = v39 + (v34 * v40);
              v31 = -(v38 - (v33 * v40));
              v41 = *v24;
              v42 = *(v24 - 1);
              *v24 = (v33 * *v24) + (v34 * v42);
              *(v24 - 1) = (v33 * v42) - (v34 * v41);
              --v23;
              --v24;
              --v22;
              if (v35 <= v11)
              {
                goto LABEL_17;
              }
            }

            *v22 = *v22 - v32;
            v14 = v51;
          }

          a4[v20] = 0.0;
          v43 = v13++ >= 0x1E;
          v12 = v52;
          if (v43)
          {
            goto LABEL_28;
          }
        }

        v44 = a5[v11];
        if (v11)
        {
          v45 = 0x3FFFFFFFFFFFFFFFLL;
          v46 = v11;
          while (1)
          {
            v47 = v12[v45];
            if (v27 >= v47)
            {
              break;
            }

            --v46;
            v12[v45 + 1] = v47;
            v54[v45 + 1] = v54[v45];
            --v45;
            if (v46 + 1 <= 1)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          v46 = 0;
        }

        v50[v46] = v27;
        a5[v46] = v44;
LABEL_28:
        ++v11;
        ++v12;
        ++v53;
        ++v54;
        a3 = v50;
        if (v11 != a2)
        {
          continue;
        }

        break;
      }
    }
  }
}

uint64_t LSMSVDSFImpl::error_bound(LSMSVDSFImpl *this, BOOL *a2)
{
  result = cblas_isamax(*(this + 100) + 1, *(this + 65), 1);
  v5 = *(this + 100);
  LODWORD(v6) = (2 * v5) >> 1;
  if (v6 > result)
  {
    v6 = v6;
    v7 = *(this + 61);
    do
    {
      if (vabds_f32(*(v7 + 4 * v6 - 4), *(v7 + 4 * v6)) < (*(this + 93) * fabsf(*(v7 + 4 * v6))))
      {
        v8 = *(this + 65);
        v9 = *(v8 + 4 * v6);
        v10 = *(this + 98);
        if (v9 > v10)
        {
          v11 = v8 + 4 * v6;
          v12 = *(v11 - 4);
          if (v12 > v10)
          {
            *(v11 - 4) = sqrtf((v12 * v12) + (v9 * v9));
            *(v8 + 4 * v6) = 0;
          }
        }
      }

      --v6;
    }

    while (v6 > result);
  }

  v13 = *(this + 61);
  if (result >= 2)
  {
    v14 = 0;
    do
    {
      if (vabds_f32(v13[v14 + 2], v13[v14 + 1]) < (*(this + 93) * fabsf(v13[v14 + 1])))
      {
        v15 = *(this + 65) + 4 * v14;
        v16 = *(v15 + 4);
        v17 = *(this + 98);
        if (v16 > v17)
        {
          v18 = *(v15 + 8);
          if (v18 > v17)
          {
            *(v15 + 8) = sqrtf((v18 * v18) + (v16 * v16));
            *(v15 + 4) = 0;
          }
        }
      }

      ++v14;
    }

    while (result - 1 != v14);
  }

  *(this + 102) = 0;
  if ((v5 & 0x80000000) == 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = v13[v5] - *v13;
    v22 = *(this + 65);
    v23 = v5 + 1;
    do
    {
      v24 = v21;
      if (v20 < v5)
      {
        v21 = v13[1] - *v13;
      }

      if (v21 >= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v21;
      }

      v26 = *(v22 + 4 * v20);
      if (v25 > v26)
      {
        v26 = v26 * (v26 / v25);
        *(v22 + 4 * v20) = v26;
      }

      v27 = *v13;
      if (v26 <= ((*(this + 90) * 16.0) * fabsf(*v13)))
      {
        *(this + 102) = ++v19;
        if (!*a2)
        {
          v28 = *(this + 94) < v27 && v27 < *(this + 95);
          *a2 = v28;
        }
      }

      ++v20;
      ++v13;
      --v23;
    }

    while (v23);
  }

  return result;
}

void LSMSVDSFImpl::startv(LSMSVDSFImpl *this)
{
  v2 = cblas_sdot(*(this + 3), *(this + 57), 1, *(this + 57), 1);
  v3 = 0;
  v11 = *(this + 100) + 918273;
  do
  {
    if (v3 || *(this + 100) > 0 || v2 == 0.0)
    {
      if (*(this + 3))
      {
        v4 = 0;
        do
        {
          *(*(this + 57) + 4 * v4++) = LSMSVDSFImpl::random(this, &v11);
          v5 = *(this + 3);
        }

        while (v4 < v5);
      }

      else
      {
        LODWORD(v5) = 0;
      }
    }

    else
    {
      LODWORD(v5) = *(this + 3);
    }

    cblas_scopy(v5, *(this + 57), 1, *(this + 89), 1);
    LSMSVDSFImpl::opb(this, *(this + 89), *(this + 57));
    cblas_scopy(*(this + 3), *(this + 57), 1, *(this + 89), 1);
    v6 = cblas_sdot(*(this + 3), *(this + 57), 1, *(this + 89), 1);
    v2 = v6;
    ++v3;
  }

  while (v6 <= 0.0 && v3 != 3);
  if (v6 <= 0.0)
  {
    *(this + 101) = 0x2000;
  }

  else if (*(this + 100) >= 1)
  {
    v8 = 0;
    do
    {
      cblas_scopy(*(this + 3), (*(this + 77) + 4 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (v8 + 2)), 1, *(this + 97), 1);
      v9 = cblas_sdot(*(this + 3), *(this + 89), 1, *(this + 97), 1);
      cblas_saxpy(*(this + 3), -v9, *(this + 97), 1, *(this + 57), 1);
      ++v8;
    }

    while (v8 < *(this + 100));
    v10 = cblas_sdot(*(this + 3), *(this + 93), 1, *(this + 57), 1);
    cblas_saxpy(*(this + 3), -v10, *(this + 85), 1, *(this + 57), 1);
    cblas_scopy(*(this + 3), *(this + 57), 1, *(this + 89), 1);
    cblas_sdot(*(this + 3), *(this + 89), 1, *(this + 57), 1);
    *(this + 90);
  }
}

float LSMSVDSFImpl::ortbnd(LSMSVDSFImpl *this, float result)
{
  v3 = *(this + 100);
  if (v3 >= 1)
  {
    v4 = *(this + 97);
    if (v4 != 0.0 && v3 != 1)
    {
      **(this + 109) = *(this + 91) + (((((**(this + 101) - *(*(this + 101) + 4 * v3)) * **(this + 105)) + (*(*(this + 113) + 4) * *(*(this + 105) + 4))) - (*(*(this + 113) + 4 * v3) * **(this + 109))) / v4);
      if (v3 >= 3)
      {
        v6 = *(this + 113);
        v7 = *(this + 101);
        v8 = v3 - 2;
        v9 = (*(this + 109) + 4);
        v10 = (v6 + 8);
        v11 = (v7 + 4);
        v12 = (*(this + 105) + 4);
        v13 = v12;
        do
        {
          v14 = v13[1];
          ++v13;
          v15 = v14;
          v16 = *v11++;
          *v9 = ((((((v16 - *(v7 + 4 * v3)) * *v12) + (*v10 * v15)) + (*(v10 - 1) * *(v12 - 1))) - (*(v6 + 4 * v3) * *v9)) / *(this + 97)) + *(this + 91);
          ++v9;
          ++v10;
          v12 = v13;
          --v8;
        }

        while (v8);
      }
    }

    v17 = *(this + 109);
    v17[v3 - 1] = *(this + 91);
    cblas_sswap(v3, v17, 1, *(this + 105), 1);
    result = *(this + 91);
    *(*(this + 105) + 4 * *(this + 100)) = result;
  }

  return result;
}

void LSMSVDSFImpl::purge(LSMSVDSFImpl *this, uint64_t a2, float *a3, float *a4, float *a5, float *a6)
{
  v6 = *(this + 100);
  if (a2 + 2 <= v6)
  {
    v13 = cblas_isamax(v6 + ~a2, (*(this + 105) + 4 * a2), 1);
    v14 = *(this + 92);
    if (fabsf(*(*(this + 105) + 4 * v13 + 4 * a2)) > v14)
    {
      v15 = *(this + 97);
      v16 = 1;
      v17 = *(this + 91) / v14;
      do
      {
        v18 = v16;
        if (v15 > *(this + 98))
        {
          v19 = 0.0;
          v20 = 0.0;
          if (*(this + 100) > a2)
          {
            v21 = a2;
            do
            {
              cblas_scopy(*(this + 3), (*(this + 77) + 4 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (v21 + 2)), 1, *(this + 97), 1);
              v22 = cblas_sdot(*(this + 3), a6, 1, *(this + 97), 1);
              v19 = v19 + fabsf(v22);
              cblas_saxpy(*(this + 3), -v22, *(this + 97), 1, a4, 1);
              v23 = cblas_sdot(*(this + 3), a5, 1, *(this + 97), 1);
              v20 = v20 + fabsf(v23);
              cblas_saxpy(*(this + 3), -v23, *(this + 97), 1, a3, 1);
              ++v21;
            }

            while (v21 < *(this + 100));
          }

          cblas_scopy(*(this + 3), a4, 1, a6, 1);
          v24 = cblas_sdot(*(this + 3), a3, 1, a6, 1);
          cblas_saxpy(*(this + 3), -v24, a4, 1, a3, 1);
          cblas_scopy(*(this + 3), a3, 1, a5, 1);
          v15 = sqrtf(cblas_sdot(*(this + 3), a5, 1, a3, 1));
          *(this + 97) = v15;
          if (v19 <= v17 && (v20 + fabsf(v24)) <= (v17 * v15))
          {
            break;
          }
        }

        v16 = 0;
      }

      while ((v18 & 1) != 0);
      v25 = *(this + 100);
      v26 = v25 < a2;
      v27 = v25 - a2;
      if (!v26)
      {
        v28 = *(this + 91);
        v29 = v27 + 1;
        v30 = (*(this + 109) + 4 * a2);
        v31 = (*(this + 105) + 4 * a2);
        do
        {
          *v31++ = v28;
          v28 = *(this + 91);
          *v30++ = v28;
          --v29;
        }

        while (v29);
      }
    }
  }
}

float LSMSVDSFImpl::random(LSMSVDSFImpl *this, uint64_t *a2)
{
  if (*(this + 52))
  {
    v4 = *(this + 53);
  }

  else
  {
    *(this + 52) = 0x40000000;
    v4 = (8 * ((atanf(1.0) * 1073700000.0) * 0.125)) | 5;
    *(this + 53) = v4;
    *(this + 27) = xmmword_255A70390;
    *(this + 56) = 0x300000004E800000;
  }

  v5 = v4 * *a2;
  *a2 = v5;
  if (v5 > *(this + 55))
  {
    v5 -= 2 * *(this + 52);
    *a2 = v5;
  }

  v6 = *(this + 54) + v5;
  *a2 = v6;
  v7 = *(this + 52);
  if (v7 < v6 / 2)
  {
    v6 -= 2 * v7;
    *a2 = v6;
  }

  if (v6 < 0)
  {
    v6 += 2 * *(this + 52);
    *a2 = v6;
  }

  return *(this + 113) * v6;
}

void LSMSVDSFTImpl::~LSMSVDSFTImpl(void **this)
{
  LSMSVDSFImpl::~LSMSVDSFImpl(this);

  JUMPOUT(0x259C48400);
}

void LSMSVDSFImpl::~LSMSVDSFImpl(void **this)
{
  LSMSVDSFImpl::~LSMSVDSFImpl(this);

  JUMPOUT(0x259C48400);
}

{
  *this = &unk_2867C1E98;
  LSMVectorBase::~LSMVectorBase(this + 113);
  LSMVectorBase::~LSMVectorBase(this + 109);
  LSMVectorBase::~LSMVectorBase(this + 105);
  LSMVectorBase::~LSMVectorBase(this + 101);
  LSMVectorBase::~LSMVectorBase(this + 97);
  LSMVectorBase::~LSMVectorBase(this + 93);
  LSMVectorBase::~LSMVectorBase(this + 89);
  LSMVectorBase::~LSMVectorBase(this + 85);
  LSMVectorBase::~LSMVectorBase(this + 81);
  LSMVectorBase::~LSMVectorBase(this + 77);
  LSMVectorBase::~LSMVectorBase(this + 73);
  LSMVectorBase::~LSMVectorBase(this + 69);
  LSMVectorBase::~LSMVectorBase(this + 65);
  LSMVectorBase::~LSMVectorBase(this + 61);
  LSMVectorBase::~LSMVectorBase(this + 57);
  LSMVectorBase::~LSMVectorBase(this + 41);
  LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<float>>>::~LSMVector((this + 37));

  LSMSVD::~LSMSVD(this);
}

void LSMSVDSFImpl::LSMSVDSFImpl(LSMSVDSFImpl *this)
{
  LSMSVD::LSMSVD(this);
  *v2 = &unk_2867C1E98;
  LSMVectorBase::LSMVectorBase((v2 + 37), 64);
  LSMVectorBase::LSMVectorBase((this + 328), 4);
  LSMVectorBase::LSMVectorBase((this + 456), 4);
  LSMVectorBase::LSMVectorBase((this + 488), 4);
  LSMVectorBase::LSMVectorBase((this + 520), 4);
  LSMVectorBase::LSMVectorBase((this + 552), 4);
  LSMVectorBase::LSMVectorBase((this + 584), 4);
  LSMVectorBase::LSMVectorBase((this + 616), 4);
  LSMVectorBase::LSMVectorBase((this + 648), 4);
  LSMVectorBase::LSMVectorBase((this + 680), 4);
  LSMVectorBase::LSMVectorBase((this + 712), 4);
  LSMVectorBase::LSMVectorBase((this + 744), 4);
  LSMVectorBase::LSMVectorBase((this + 776), 4);
  LSMVectorBase::LSMVectorBase((this + 808), 4);
  LSMVectorBase::LSMVectorBase((this + 840), 4);
  LSMVectorBase::LSMVectorBase((this + 872), 4);
  LSMVectorBase::LSMVectorBase((this + 904), 4);
}

void sub_255A6A6F8(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase(v1 + 109);
  LSMVectorBase::~LSMVectorBase(v1 + 105);
  LSMVectorBase::~LSMVectorBase(v1 + 101);
  LSMVectorBase::~LSMVectorBase(v1 + 97);
  LSMVectorBase::~LSMVectorBase(v1 + 93);
  LSMVectorBase::~LSMVectorBase(v1 + 89);
  LSMVectorBase::~LSMVectorBase(v1 + 85);
  LSMVectorBase::~LSMVectorBase(v1 + 81);
  LSMVectorBase::~LSMVectorBase(v1 + 77);
  LSMVectorBase::~LSMVectorBase(v1 + 73);
  LSMVectorBase::~LSMVectorBase(v1 + 69);
  LSMVectorBase::~LSMVectorBase(v1 + 65);
  LSMVectorBase::~LSMVectorBase(v1 + 61);
  LSMVectorBase::~LSMVectorBase(v1 + 57);
  LSMVectorBase::~LSMVectorBase(v1 + 41);
  LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<float>>>::~LSMVector((v1 + 37));
  LSMSVD::~LSMSVD(v1);
  _Unwind_Resume(a1);
}

void LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<float>>>::~LSMVector(LSMVectorBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *this;
    v4 = v2 << 6;
    do
    {
      LSMVectorBase::~LSMVectorBase(v3 + 4);
      LSMVectorBase::~LSMVectorBase(v3);
      v3 += 8;
      v4 -= 64;
    }

    while (v4);
  }

  LSMVectorBase::~LSMVectorBase(this);
}

void sub_255A6A878(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase(v2);
  LSMVectorBase::~LSMVectorBase(v1);
  _Unwind_Resume(a1);
}

LSMVectorBase *std::pair<LSMVector<unsigned int>,LSMVector<float>>::pair[abi:ne200100](LSMVectorBase *a1)
{
  LSMVectorBase::LSMVectorBase(a1, 4);
  LSMVectorBase::LSMVectorBase((v2 + 32), 4);
  return a1;
}

void LSMFileDesc::~LSMFileDesc(LSMFileDesc *this)
{
  *this = &unk_2867C1EE8;
  LSMFileDesc::Close(this);
}

{
  *this = &unk_2867C1EE8;
  LSMFileDesc::Close(this);
}

{
  *this = &unk_2867C1EE8;
  LSMFileDesc::Close(this);

  JUMPOUT(0x259C48400);
}

uint64_t LSMFileDesc::Close(LSMFileDesc *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    fclose(v2);
  }

  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x259C483E0](result, 0x1000C8077774924);
  }

  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t LSMFileDesc::Seek(FILE **this, uint64_t a2, int a3)
{
  fflush(this[1]);
  v6 = this[1];

  return fseek(v6, a2, a3);
}

uint64_t LSMFileDesc::Align(LSMFileDesc *this, unint64_t a2)
{
  v4 = (*(*this + 32))(this) % a2;
  if (v4)
  {
    (*(*this + 24))(this, a2 - v4, 1);
  }

  v5 = *(*this + 32);

  return v5(this);
}

void LSMFileDesc::LSMFileDesc(LSMFileDesc *this, const __CFURL *a2, const char *a3)
{
  v3 = MEMORY[0x28223BE20](this);
  v7 = *MEMORY[0x277D85DE8];
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_2867C1EE8;
  if (CFURLGetFileSystemRepresentation(v4, 1u, buffer, 4096))
  {
    strlen(buffer);
    operator new[]();
  }

  v5 = *MEMORY[0x277D85DE8];
}

void LSMReadFileDesc::LSMReadFileDesc(LSMReadFileDesc *this, const __CFURL *a2, char a3)
{
  LSMFileDesc::LSMFileDesc(this, a2, "r");
  *v4 = &unk_2867C1F20;
  *(v4 + 48) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 49) = a3;
}

void LSMReadFileDesc::~LSMReadFileDesc(LSMReadFileDesc *this)
{
  *this = &unk_2867C1F20;
  v2 = *(this + 3);
  if (v2)
  {
    munmap(v2, *(this + 4));
  }

  *this = &unk_2867C1EE8;
  LSMFileDesc::Close(this);
}

{
  LSMReadFileDesc::~LSMReadFileDesc(this);

  JUMPOUT(0x259C48400);
}

void sub_255A6AF08(_Unwind_Exception *a1)
{
  *v1 = &unk_2867C1EE8;
  LSMFileDesc::Close(v1);
  _Unwind_Resume(a1);
}

uint64_t LSMReadFileDesc::Seek(uint64_t this, uint64_t a2, int a3)
{
  v5 = this;
  if (*(this + 24))
  {
    if (a3)
    {
      if (a3 == 2)
      {
        v6 = *(this + 32);
      }

      else
      {
        if (a3 != 1)
        {
          return this;
        }

        v6 = *(this + 40);
      }

      *(this + 40) = v6 + a2;
    }

    else
    {
      *(this + 40) = a2;
    }
  }

  else
  {
    fflush(*(this + 8));
    v7 = *(v5 + 8);

    return fseek(v7, a2, a3);
  }

  return this;
}

uint64_t LSMReadFileDesc::Tell(LSMReadFileDesc *this)
{
  if (!*(this + 3))
  {
    v2 = *(this + 1);
    JUMPOUT(0x259C486A0);
  }

  return *(this + 5);
}

BOOL LSMReadFileDesc::Read(LSMReadFileDesc *this, unsigned int *__dst, size_t __nitems, size_t __size)
{
  v6 = __dst;
  v8 = *(this + 3);
  if (v8)
  {
    v9 = __size * __nitems;
    v11 = *(this + 4);
    v10 = *(this + 5);
    v12 = v10 + __size * __nitems <= v11;
    if (v10 + __size * __nitems <= v11)
    {
      memcpy(__dst, (v8 + v10), v9);
      v11 = *(this + 5) + v9;
    }

    *(this + 5) = v11;
  }

  else if (fread(__dst, __size, __nitems, *(this + 1)) == __nitems)
  {
    v12 = 1;
    if (__size >= 4 && (*(this + 48) & 1) != 0)
    {
      v13 = (__size >> 2) * __nitems;
      if (v13)
      {
        do
        {
          *v6 = bswap32(*v6);
          ++v6;
          --v13;
        }

        while (v13);
        return 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return v12;
}

BOOL LSMReadFileDesc::ReadVec(LSMReadFileDesc *this, void **a2, size_t __nitems)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *(this + 3);
  if (v6)
  {
LABEL_2:
    v7 = *(a2 + 4) * __nitems;
    v8 = *(this + 4);
    v9 = *(this + 5);
    v10 = v7 + v9 <= v8;
    if (v7 + v9 <= v8)
    {
      LSMVectorBase::Map(a2, (v6 + v9), __nitems);
      v8 = *(this + 5) + v7;
    }

    *(this + 5) = v8;
    goto LABEL_5;
  }

  if (*(this + 49) == 1)
  {
    if (*(this + 48) == 1)
    {
      *(this + 49) = 0;
    }

    else
    {
      v13 = fileno(*(this + 1));
      if ((fstatfs(v13, &v22) & 0x80000000) == 0 && !strstr(v22.f_fstypename, "afp") && !strstr(v22.f_fstypename, "nfs"))
      {
        v14 = fileno(*(this + 1));
        fstat(v14, &v21);
        stat("/", &v20);
        if (v21.st_dev == v20.st_dev)
        {
          *(this + 4) = v21.st_size;
          *(this + 5) = MEMORY[0x259C486A0](*(this + 1));
          fseek(*(this + 1), 0, 0);
          v15 = *(this + 4);
          v16 = fileno(*(this + 1));
          v17 = mmap(0, v15, 1, 1, v16, 0);
          *(this + 3) = v17;
          if (v17)
          {
            (*(*this + 16))(this);
          }
        }
      }

      v6 = *(this + 3);
      *(this + 49) = 0;
      if (v6)
      {
        goto LABEL_2;
      }
    }
  }

  v18 = a2[3];
  if (v18 < __nitems)
  {
    LSMVectorBase::Allocate(a2, __nitems, 1);
    v18 = a2[3];
  }

  v19 = v18 >= __nitems;
  if (v18 >= __nitems)
  {
    v18 = __nitems;
  }

  a2[2] = v18;
  v10 = v19 && LSMReadFileDesc::Read(this, *a2, __nitems, *(a2 + 4));
LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t LSMReadFileDesc::Decode(LSMReadFileDesc *this, unsigned int *a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 5);
    v7 = *(this + 4) - v6;
    v8 = (v4 + v6);
    v9 = v6 + 1;
    while (v7)
    {
      *(this + 5) = v9;
      v10 = *v8++;
      v11 = v10 & 0x7F | (v5 << 7);
      --v7;
      ++v9;
      v5 = v11;
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = getc(*(this + 1));
      if (v13 == -1)
      {
        break;
      }

      v11 = v13 & 0x7F | (v12 << 7);
      v12 = v11;
      if ((v13 & 0x80) == 0)
      {
LABEL_9:
        *a2 = v11;
        return 1;
      }
    }
  }

  return 0;
}

BOOL LSMWriteFileDesc::Encode(FILE **this, unsigned int a2)
{
  if (a2 >> 28)
  {
    putc((a2 >> 28) | 0x80, this[1]);
LABEL_4:
    putc((a2 >> 21) & 0x7F | 0x80, this[1]);
    goto LABEL_5;
  }

  if (a2 >= 0x200000)
  {
    goto LABEL_4;
  }

  if (a2 < 0x4000)
  {
    if (a2 < 0x80)
    {
      return putc(a2 & 0x7F, this[1]) != -1;
    }

    goto LABEL_6;
  }

LABEL_5:
  putc((a2 >> 14) & 0x7F | 0x80, this[1]);
LABEL_6:
  putc((a2 >> 7) & 0x7F | 0x80, this[1]);
  return putc(a2 & 0x7F, this[1]) != -1;
}

void LSMWriteFileDesc::~LSMWriteFileDesc(LSMWriteFileDesc *this)
{
  *this = &unk_2867C1EE8;
  LSMFileDesc::Close(this);
}

{
  *this = &unk_2867C1EE8;
  LSMFileDesc::Close(this);

  JUMPOUT(0x259C48400);
}

const char *LSMDebugFlags::Update(LSMDebugFlags *this)
{
  result = getenv("LSM_DEBUG");
  if (result)
  {
    result = atoi(result);
  }

  LSMDebugFlags::sLSMDebug = result;
  return result;
}

uint64_t LSMCardPunch::Punch(char **this, const char *a2, ...)
{
  va_start(va, a2);
  result = vsprintf(this[11], a2, va);
  v4 = &this[11][result];
  this[11] = v4;
  if (v4 - this - 8 >= 72)
  {
    return LSMCardPunch::Flush(this);
  }

  return result;
}

uint64_t LSMCardPunch::Flush(uint64_t this)
{
  v1 = this + 8;
  if (*(this + 88) > (this + 8))
  {
    v2 = this;
    fputs((this + 8), *this);
    this = fputc(10, *v2);
    *(v2 + 88) = v1;
  }

  return this;
}

void LSMParser::CreateParser(LSMParser *this, uint64_t a2, LSMParsedText *a3, const __CFLocale *a4)
{
  if (a3)
  {
    v4 = MEMORY[0x259C48080](a3, a2, a3, a4);
    if (CFEqual(v4, @"zh-Hans") || CFEqual(v4, @"zh-Hant"))
    {
      operator new();
    }
  }

  operator new();
}

void *LSMChineseParser::LSMChineseParser(void *a1, uint64_t a2, CFLocaleRef locale)
{
  *a1 = &unk_2867C2030;
  a1[1] = a2;
  v6.location = -1;
  v6.length = 0;
  a1[2] = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], 0, v6, 4uLL, locale);
  return a1;
}

void *LSMICUParser::LSMICUParser(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  *result = &unk_2867C2000;
  result[261] = 0;
  return result;
}

void *LSMCommonParser::LSMCommonParser(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_2867C1FD0;
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

uint64_t LSMCommonParser::AddWords(LSMCommonParser *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  *(this + 16) = 32;
  v4 = this + 32;
  if (Length >= 1)
  {
    v5 = Length;
    v6 = 0;
    v7 = (this + 34);
    do
    {
      if (v5 >= 0x3FC)
      {
        v8 = 1020;
      }

      else
      {
        v8 = v5;
      }

      v35.location = v6;
      v35.length = v8;
      CFStringGetCharacters(theString, v35, v7);
      v9 = 1020;
      if (v5 <= 0x3FB)
      {
        v9 = v8 + 1;
        *&v4[2 * v8 + 2] = 32;
      }

      v10 = &v4[2 * v9];
      *(v10 + 1) = 32;
      *(v10 + 1) = 61407352;
      v11 = 768;
      if (v9 < 0x300)
      {
        v11 = v9;
      }

      v12 = &v4[2 * v11];
      v13 = &v7[v9];
      v14 = v7;
      while (1)
      {
        do
        {
          v15 = v14;
          v17 = *v14++;
          v16 = v17;
        }

        while (v17 < 0x21);
        if (v15 > v12)
        {
          break;
        }

        v18 = v15 - 1;
        v19 = *(v15 - 1) > 0x17Fu;
        v20 = v15 + 2;
        v21 = 4;
        v22 = v14;
        do
        {
          v23 = v20;
          v24 = v21;
          v19 |= v16 > 0x17F;
          v25 = *v22++;
          v16 = v25;
          ++v20;
          v21 += 2;
        }

        while (v25 > 0x20);
        if (v19)
        {
          while (1)
          {
            v30 = *v23;
            if (v30 <= 0x17F && v30 >= 0x21 && *(v23 - 1) < 0x21u)
            {
              break;
            }

            ++v23;
            v24 += 2;
          }

          v29 = (*(*this + 24))(this, v18, (v24 >> 1) + 1);
          if (!v29)
          {
            return 4294960651;
          }
        }

        else
        {
          v26 = v22 - 1;
          v27 = *v22;
          if (v27 <= 0x17F)
          {
            do
            {
              if (v27 <= 0x20 && *(v22 - 1) > 0x20u)
              {
                v26 = v22;
              }

              v28 = v22[1];
              ++v22;
              v27 = v28;
            }

            while (v28 < 0x180);
          }

          v23 = v26 + 1;
          v29 = LSMCommonParser::ParseEuroSegment(this, v18, v26 + 1 - v15 + 1, (v26 + 1) > v13);
          if (!v29)
          {
            return 4294960651;
          }
        }

        if (v29 > v14 || (v29 = v23, v15 < this + 528))
        {
          v14 = v29;
          v15 = v29;
          if (v29 <= v12)
          {
            continue;
          }
        }

        break;
      }

      v7 = (this + 34);
      v31 = v15 - (this + 32);
      v4 = this + 32;
      v32 = (v31 >> 1) - 1;
      if (v32 >= v9)
      {
        v32 = v9;
      }

      v6 += v32;
      v5 -= v32;
    }

    while (v5 > 0);
  }

  return 0;
}

unsigned __int16 *LSMCommonParser::ParseEuroSegment(LSMCommonParser *this, unsigned __int16 *a2, uint64_t a3, int a4)
{
  v4 = a2;
  if ((LSMDebugFlags::sLSMDebug & 8) != 0)
  {
    v9 = *(*this + 24);

    return v9();
  }

  if (a4)
  {
    v6 = 2;
    if ((a3 - 1) < 2)
    {
      v6 = a3 - 1;
    }

    while (1)
    {
      v7 = a3 - 1;
      if ((a3 - 1) < 3)
      {
        break;
      }

      v8 = sEuroCharType[a2[a3-- - 2]];
      if ((v8 & 0xFFFFFFF7) == 0)
      {
        goto LABEL_13;
      }
    }

    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

LABEL_13:
  v11 = &a2[v7];
  if ((*(this + 8) & 4) != 0)
  {
    if (v7 < 1)
    {
      return v11;
    }

    v22 = 0;
    v23 = a2;
    v24 = a2;
    do
    {
      v25 = v22;
      v26 = *v24++;
      v22 += 2;
      *(a2 + v25) = v26;
      v27 = v23 + 4;
      if ((sEuroCharType[v26] & 7) != 0 && v27 < v11)
      {
        v29 = v23[2];
        if ((sEuroCharType[v29] & 7) != 0 && (sEuroCharType[*v27] & 7) != 0)
        {
          v30 = *v24;
          if ((sEuroCharType[*v24] & 8) != 0 && v23[3] == v30)
          {
            v31 = (a2 + v22);
            if (v25 < 2 || (sEuroCharType[*(v31 - 2)] & 7) == 0)
            {
              v32 = v25 + 4;
              *v31 = v29;
              v33 = (a2 + v25 + 4);
              if (v23 + 6 >= v11)
              {
                goto LABEL_65;
              }

              v34 = 0;
              v35 = v23 + 4;
              while (1)
              {
                if ((sEuroCharType[v23[v34 + 6]] & 7) == 0)
                {
                  v33 = (v33 + v34);
                  v32 += v34;
                  goto LABEL_65;
                }

                if (v27[1] != v30)
                {
                  break;
                }

                v33[v34 / 2] = *v27;
                v36 = v35 + 2;
                v37 = (v35 + 4);
                v34 += 2;
                v35 += 2;
                v27 = v35;
                if (v37 >= v11)
                {
                  v33 = (v33 + v34);
                  v32 += v34;
                  v27 = v36;
                  goto LABEL_65;
                }
              }

              v33 = (v33 + v34);
              v32 += v34;
              if (v30 == 32)
              {
                v38 = 32;
                goto LABEL_66;
              }

LABEL_65:
              v39 = *v27++;
              v38 = v39;
LABEL_66:
              v22 = v32 + 2;
              *v33 = v38;
              v24 = v27;
            }
          }
        }
      }

      v23 = v24;
    }

    while (v24 < v11);
    if (v22 < 1)
    {
      return v11;
    }

    v40 = (a2 + v22);
LABEL_69:
    while (2)
    {
      if ((sEuroCharType[*v4] & 0x87) != 0)
      {
        v41 = v4;
      }

      else
      {
        v41 = ++v4;
        if (v4 < v40)
        {
          continue;
        }
      }

      break;
    }

    if (v41 >= v40)
    {
      v46 = 0;
      v45 = 0;
      v44 = 0;
      v43 = 0;
      v42 = 0;
      v49 = v41;
      v48 = v41;
      goto LABEL_96;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = v41;
    v49 = v41;
    while (1)
    {
      v50 = *v49;
      v51 = sEuroCharType[v50];
      if (v51 == 1)
      {
        break;
      }

      if (v51 == 4)
      {
        goto LABEL_92;
      }

      if (v51 == 2)
      {
        v46 = 1;
        v44 = 1;
LABEL_92:
        v47 += 2;
        *v48 = v50;
        goto LABEL_93;
      }

      if ((v51 & 0x10) == 0)
      {
        if ((v51 & 0x20) == 0)
        {
          v48 = &v41[v47 / 2];
LABEL_96:
          if (v43 != 0 && v48 - v43 > 8)
          {
            v4 = v43;
          }

          else
          {
            v42 = v48;
            v4 = v49;
          }

          if (v42 == v41)
          {
            return v11;
          }

          v55 = v42 - v41 + 2;
          v56 = v42 - 1;
          do
          {
            v57 = *v56--;
            v55 -= 2;
          }

          while ((sEuroCharType[v57] & 0x87) == 0);
          if (v45)
          {
            v58 = ((*(this + 1) & 2) == 0) | v44;
            if (*(this + 1))
            {
              v58 = 0;
            }

            if ((v46 & 1) == 0)
            {
              goto LABEL_109;
            }

LABEL_108:
            if (LSMCommonParser::DefiniteWord(this, v41, v55 >> 1, v58 & 1))
            {
              return 0;
            }

            goto LABEL_109;
          }

          v58 = 0;
          if (v46)
          {
            goto LABEL_108;
          }

LABEL_109:
          if (v4 >= v40)
          {
            return v11;
          }

          goto LABEL_69;
        }

        v52 = v47 >= 7 && v43 == 0;
        if (v52)
        {
          v53 = v49;
        }

        else
        {
          v53 = v43;
        }

        if (v52)
        {
          v54 = v48;
        }

        else
        {
          v54 = v42;
        }

        if (v50 == 64)
        {
          v43 = v53;
          v42 = v54;
        }

        goto LABEL_92;
      }

LABEL_93:
      ++v49;
      v48 = &v41[v47 / 2];
      if (v49 >= v40)
      {
        goto LABEL_96;
      }
    }

    v46 = 1;
    v45 = 1;
    goto LABEL_92;
  }

  if (v7 < 1)
  {
    return v11;
  }

  while (2)
  {
    while ((sEuroCharType[*v4] & 0x87) == 0)
    {
      v12 = ++v4;
      if (v4 >= v11)
      {
        goto LABEL_18;
      }
    }

    v12 = v4;
LABEL_18:
    if (v12 >= v11)
    {
      return v11;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = sEuroCharType[v12[v13]];
      if (v17 == 1)
      {
        v15 = 1;
        goto LABEL_25;
      }

      if (v17 != 4)
      {
        break;
      }

LABEL_27:
      v4 = &v12[++v13];
      if (&v12[v13] >= v11)
      {
        goto LABEL_28;
      }
    }

    if (v17 == 2)
    {
      v14 = 1;
LABEL_25:
      v16 = 1;
      goto LABEL_27;
    }

    if ((v17 & 0x40) != 0)
    {
      goto LABEL_27;
    }

    if (!(v13 * 2))
    {
      return v11;
    }

    v4 = &v12[v13];
LABEL_28:
    v18 = v4 - v12 + 2;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v20 = sEuroCharType[v4[v19]];
      v18 -= 2;
      --v19;
    }

    while ((v20 & 0xFFFFFF87) == 0);
    if (v15)
    {
      v21 = ((*(this + 1) & 2) == 0) | v14;
      if (*(this + 1))
      {
        v21 = 0;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_36:
      if (LSMCommonParser::DefiniteWord(this, v12, v18 >> 1, v21 & 1))
      {
        return 0;
      }

      goto LABEL_37;
    }

    v21 = 0;
    if (v16)
    {
      goto LABEL_36;
    }

LABEL_37:
    if (v4 < v11)
    {
      continue;
    }

    return v11;
  }
}

uint64_t LSMCommonParser::DefiniteWord(CFLocaleRef *this, unsigned __int16 *a2, CFIndex a3, int a4)
{
  v6 = CFStringCreateWithCharactersNoCopy(0, a2, a3, *MEMORY[0x277CBED00]);
  if (a4)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, v6);
    CFStringLowercase(MutableCopy, this[3]);
    v8 = (**this[2])();
    CFRelease(MutableCopy);
  }

  else
  {
    v8 = (**this[2])(this[2], v6);
  }

  CFRelease(v6);
  return v8;
}

void LSMICUParser::~LSMICUParser(LSMICUParser *this)
{
  *this = &unk_2867C2000;
  if (*(this + 261))
  {
    ubrk_close();
  }
}

{
  *this = &unk_2867C2000;
  if (*(this + 261))
  {
    ubrk_close();
  }
}

{
  *this = &unk_2867C2000;
  if (*(this + 261))
  {
    ubrk_close();
  }

  JUMPOUT(0x259C48400);
}

LSMICUParser *LSMICUParser::ParseUnicodeSegment(LSMICUParser *this, LSMICUParser *a2, int a3)
{
  if (*(this + 261))
  {
    ubrk_setText();
    v6 = *(this + 261);
  }

  else
  {
    *(this + 261) = ubrk_open();
  }

  v7 = ubrk_first();
  v8 = *(this + 261);
  v9 = ubrk_next();
  if (((this - a2 + 1568) >> 1) < a3)
  {
    a3 = (this - a2 + 1568) >> 1;
  }

  if (v7 != -1)
  {
    if (v9 != -1 && v9 < a3)
    {
      while (1)
      {
        v11 = v9;
        if (v7)
        {
          if (LSMICUParser::PossibleWord(this, a2 + v7, v9 - v7))
          {
            return 0;
          }
        }

        v12 = *(this + 261);
        v9 = ubrk_next();
        v13 = v9 != -1 && v9 < a3;
        v7 = v11;
        if (!v13)
        {
          return (a2 + 2 * v11);
        }
      }
    }

    else
    {
      v11 = v7;
      return (a2 + 2 * v11);
    }
  }

  return a2;
}

uint64_t LSMICUParser::PossibleWord(LSMICUParser *this, unsigned __int16 *a2, CFIndex a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2;
  v10 = &a2[a3];
  while (v9 < v10)
  {
    v11 = v9 + 1;
    v12 = u_charType(*v9);
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        goto LABEL_13;
      }

      if (v12 != 5)
      {
        if (v12 == 18)
        {
          if (v11 < v10)
          {
            u_charType(v9[1] & 0x3FF | ((*v9 & 0x3FF) << 10) | 0x10000);
          }

          v11 = v9 + 2;
        }

        goto LABEL_14;
      }

LABEL_12:
      v5 = 1;
      v7 = 1;
      v8 = v6;
      goto LABEL_14;
    }

    if (v12 == 1)
    {
LABEL_13:
      v8 = ((*(this + 8) & 2) == 0) | v7;
      v5 = 1;
      v6 = 1;
      goto LABEL_14;
    }

    if (v12 == 2)
    {
      goto LABEL_12;
    }

LABEL_14:
    if (*(this + 8))
    {
      v13 = v5;
    }

    else
    {
      v13 = v8;
    }

    v9 = v11;
    if (v13)
    {
      break;
    }
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v14 = (v8 & 1) != 0 && (*(this + 8) & 1) == 0;

  return LSMCommonParser::DefiniteWord(this, a2, a3, v14);
}

void LSMChineseParser::~LSMChineseParser(LSMChineseParser *this)
{
  *this = &unk_2867C2030;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_2867C2030;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_2867C2030;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x259C48400);
}

CFStringTokenizerTokenType LSMChineseParser::AddWords(LSMChineseParser *this, CFStringRef theString)
{
  if (!*(this + 1))
  {
    return 1;
  }

  v3 = *(this + 2);
  if (!v3)
  {
    return 1;
  }

  v9.length = CFStringGetLength(theString);
  v9.location = 0;
  CFStringTokenizerSetString(v3, theString, v9);
  result = CFStringTokenizerAdvanceToNextToken(*(this + 2));
  if (result)
  {
    v6 = *MEMORY[0x277CBECE8];
    do
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(this + 2));
      v7 = CFStringCreateWithSubstring(v6, theString, CurrentTokenRange);
      if (v7)
      {
        v8 = v7;
        (***(this + 1))(*(this + 1), v7);
        CFRelease(v8);
      }

      result = CFStringTokenizerAdvanceToNextToken(*(this + 2));
    }

    while (result);
  }

  return result;
}

void LSMSVDDenseFloat::StartColumns(LSMSVDDenseFloat *this)
{
  v2 = ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * *(this + 3);
  v3 = *(this + 6);
  if (v3 < v2)
  {
    LSMVectorBase::Allocate(this + 3, v2, 1);
    v3 = *(this + 6);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(this + 5) = v3;
  if (v3 >= 1)
  {
    bzero(*(this + 3), 4 * v3);
  }

  v4 = *(this + 3);
  v5 = *(this + 14);
  v6 = v4;
  if (v5 < v4)
  {
    LSMVectorBase::Allocate(this + 11, *(this + 3), 1);
    v5 = *(this + 14);
    v6 = *(this + 3);
  }

  if (v5 >= v4)
  {
    v5 = v4;
  }

  *(this + 13) = v5;
  v7 = ((v6 + 3) & 0x1FFFFFFFCLL) * v6;
  v8 = *(this + 10);
  if (v8 < v7)
  {
    LSMVectorBase::Allocate(this + 7, ((v6 + 3) & 0x1FFFFFFFCLL) * v6, 1);
    v8 = *(this + 10);
  }

  if (v8 >= v7)
  {
    v8 = v7;
  }

  *(this + 9) = v8;
}

float LSMSVDDenseFloat::ProcessElement(LSMSVDDenseFloat *this, uint64_t a2, uint64_t a3, double a4)
{
  result = a4;
  *(*(this + 3) + 4 * ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * a3 + 4 * a2) = result;
  return result;
}

void LSMSVDDenseFloat::Compute(LSMSVDDenseFloat *this, char a2)
{
  v4 = *(this + 2);
  v5 = *(this + 3);
  __n = v5;
  __m = v4;
  v32 = (v5 + 3) & 0xFFFFFFFC;
  __ldu = (v4 + 3) & 0xFFFFFFFC;
  v31 = -1;
  LSMVectorBase::LSMVectorBase(__work, 4, 1uLL);
  LSMVectorBase::LSMVectorBase(__iwork, 4, 8 * v5);
  v27 = 0;
  if ((a2 & 0x10) != 0)
  {
    v6 = *(this + 5);
    v7 = *(this + 36);
    if (v7 < v6)
    {
      LSMVectorBase::Allocate(this + 33, *(this + 5), 1);
      v7 = *(this + 36);
    }

    v8 = *(this + 5);
    if (v7 >= v6)
    {
      v7 = v6;
    }

    *(this + 35) = v7;
    if (v8)
    {
      memmove(*(this + 33), *(this + 3), 4 * v8);
    }
  }

  if (__n == 1)
  {
    **(this + 11) = 1065353216;
    **(this + 7) = 1065353216;
  }

  else
  {
    sgesdd_("O", &__m, &__n, *(this + 3), &__ldu, *(this + 11), 0, &__ldu, *(this + 7), &v32, __work[0], &v31, __iwork[0], &v27);
    v9 = __work[0];
    v10 = v30;
    v11 = (*__work[0] + 0.0001);
    v31 = v11;
    v12 = v11;
    if (v30 < v11)
    {
      LSMVectorBase::Allocate(__work, v11, 1);
      v10 = v30;
      v9 = __work[0];
    }

    if (v10 >= v12)
    {
      v10 = v12;
    }

    __work[2] = v10;
    sgesdd_("O", &__m, &__n, *(this + 3), &__ldu, *(this + 11), 0, &__ldu, *(this + 7), &v32, v9, &v31, __iwork[0], &v27);
    LSMVectorBase::clear(__work);
    LSMVectorBase::clear(__iwork);
    v13 = *(this + 4);
    if (v13 < *(this + 3))
    {
      v14 = (v13 + 3) & 0xFFFFFFFC;
      if (v32 > v14)
      {
        v15 = __n;
        if (__n >= 2)
        {
          v16 = 1;
          v17 = 4 * v14;
          do
          {
            memmove((*(this + 7) + v17), (*(this + 7) + 4 * v16 * v32), 4 * *(this + 4));
            ++v16;
            v15 = __n;
            v17 += 4 * v14;
          }

          while (v16 < __n);
        }

        v18 = v15 * v14;
        v19 = *(this + 10);
        if (v19 < v18)
        {
          LSMVectorBase::Allocate(this + 7, v18, 1);
          v19 = *(this + 10);
        }

        if (v19 >= v18)
        {
          v19 = v18;
        }

        *(this + 9) = v19;
        LSMVectorBase::LSMVectorBase(v26, (this + 56));
        LSMVectorBase::Swap(v26, (this + 56));
        LSMVectorBase::clear(v26);
        LSMVectorBase::~LSMVectorBase(v26);
        v13 = *(this + 4);
      }

      v20 = v13;
      v21 = *(this + 14);
      if (v21 < v13)
      {
        LSMVectorBase::Allocate(this + 11, v13, 1);
        v21 = *(this + 14);
      }

      if (v21 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      *(this + 13) = v22;
      LSMVectorBase::LSMVectorBase(v26, (this + 88));
      LSMVectorBase::Swap(v26, (this + 88));
      LSMVectorBase::clear(v26);
      v23 = (*(this + 4) * __ldu);
      v24 = *(this + 6);
      if (v24 < v23)
      {
        LSMVectorBase::Allocate(this + 3, (*(this + 4) * __ldu), 1);
        v24 = *(this + 6);
      }

      if (v24 >= v23)
      {
        v24 = v23;
      }

      *(this + 5) = v24;
      LSMVectorBase::LSMVectorBase(v25, (this + 24));
      LSMVectorBase::Swap(v25, (this + 24));
      LSMVectorBase::clear(v25);
      LSMVectorBase::~LSMVectorBase(v25);
      LSMVectorBase::~LSMVectorBase(v26);
    }
  }

  LSMVectorBase::~LSMVectorBase(__iwork);
  LSMVectorBase::~LSMVectorBase(__work);
}

void sub_255A6CB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  LSMVectorBase::~LSMVectorBase(va);
  LSMVectorBase::~LSMVectorBase((v16 - 136));
  _Unwind_Resume(a1);
}

void LSMSVDDenseFloatTrans::StartColumns(LSMSVDDenseFloatTrans *this)
{
  v2 = ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * *(this + 2);
  v3 = *(this + 6);
  if (v3 < v2)
  {
    LSMVectorBase::Allocate(this + 3, v2, 1);
    v3 = *(this + 6);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(this + 5) = v3;
  if (v3 >= 1)
  {
    bzero(*(this + 3), 4 * v3);
  }

  v4 = *(this + 2);
  v5 = *(this + 14);
  v6 = v4;
  if (v5 < v4)
  {
    LSMVectorBase::Allocate(this + 11, *(this + 2), 1);
    v5 = *(this + 14);
    v6 = *(this + 2);
  }

  if (v5 >= v4)
  {
    v5 = v4;
  }

  *(this + 13) = v5;
  v7 = ((v6 + 3) & 0x1FFFFFFFCLL) * v6;
  v8 = *(this + 10);
  if (v8 < v7)
  {
    LSMVectorBase::Allocate(this + 7, ((v6 + 3) & 0x1FFFFFFFCLL) * v6, 1);
    v8 = *(this + 10);
  }

  if (v8 >= v7)
  {
    v8 = v7;
  }

  *(this + 9) = v8;
}

float LSMSVDDenseFloatTrans::ProcessElement(LSMSVDDenseFloatTrans *this, uint64_t a2, uint64_t a3, double a4)
{
  result = a4;
  *(*(this + 3) + 4 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * a2 + 4 * a3) = result;
  return result;
}

void LSMSVDDenseFloatTrans::Compute(int32x2_t *this, char a2)
{
  this[1] = vrev64_s32(this[1]);
  LSMSVDDenseFloat::Compute(this, a2);

  LSMSVD::TransposeUV(this);
}

void LSMSVDDenseDouble::StartColumns(LSMSVDDenseDouble *this)
{
  v2 = ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * *(this + 3);
  v3 = *(this + 40);
  if (v3 < v2)
  {
    LSMVectorBase::Allocate(this + 37, v2, 1);
    v3 = *(this + 40);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(this + 39) = v3;
  if (v3 >= 1)
  {
    v4 = *(this + 37);

    bzero(v4, 8 * v3);
  }
}

void LSMSVDDenseDouble::Compute(LSMSVDDenseDouble *this, char a2)
{
  v4 = *(this + 2);
  v5 = *(this + 3);
  __n = v5;
  __m = v4;
  v58 = (v5 + 3) & 0xFFFFFFFC;
  __ldu = (v4 + 3) & 0xFFFFFFFC;
  v57 = -1;
  LSMVectorBase::LSMVectorBase(v56, 8, v5);
  LSMVectorBase::LSMVectorBase(__vt, 8, (v5 * ((v5 + 3) & 0xFFFFFFFC)));
  LSMVectorBase::LSMVectorBase(__work, 8, 1uLL);
  LSMVectorBase::LSMVectorBase(__iwork, 4, 8 * __n);
  v51 = 0;
  if ((a2 & 0x10) != 0)
  {
    v7 = *(this + 39);
    v8 = *(this + 36);
    if (v8 < v7)
    {
      LSMVectorBase::Allocate(this + 33, *(this + 39), 1);
      v8 = *(this + 36);
    }

    v9 = *(this + 39);
    if (v8 >= v7)
    {
      v8 = v7;
    }

    *(this + 35) = v8;
    v6 = *(this + 37);
    if (v9)
    {
      v10 = 0;
      v11 = *(this + 33);
      v12 = 8 * v9;
      do
      {
        v13 = v6[v10 / 8];
        *v11++ = v13;
        v10 += 8;
      }

      while (v12 != v10);
    }
  }

  else
  {
    v6 = *(this + 37);
  }

  dgesdd_("O", &__m, &__n, v6, &__ldu, v56[0], 0, &__ldu, __vt[0], &v58, __work[0], &v57, __iwork[0], &v51);
  v14 = __work[0];
  v15 = v54;
  v16 = (*__work[0] + 0.0001);
  v57 = v16;
  v17 = v16;
  if (v54 < v16)
  {
    LSMVectorBase::Allocate(__work, v16, 1);
    v15 = v54;
    v14 = __work[0];
  }

  if (v15 >= v17)
  {
    v15 = v17;
  }

  __work[2] = v15;
  dgesdd_("O", &__m, &__n, *(this + 37), &__ldu, v56[0], 0, &__ldu, __vt[0], &v58, v14, &v57, __iwork[0], &v51);
  LSMVectorBase::clear(__work);
  LSMVectorBase::clear(__iwork);
  v18 = (*(this + 4) + 3) & 0x1FFFFFFFCLL;
  v19 = __n;
  v20 = __n;
  v21 = v18 * __n;
  v22 = *(this + 10);
  if (v22 < v21)
  {
    LSMVectorBase::Allocate(this + 7, v18 * __n, 1);
    v22 = *(this + 10);
    v19 = __n;
    v20 = __n;
  }

  if (v22 >= v21)
  {
    v22 = v21;
  }

  *(this + 9) = v22;
  if (v19 >= 1)
  {
    v23 = 0;
    v24 = __vt[0];
    v25 = v58;
    v26 = *(this + 4);
    v27 = *(this + 7);
    do
    {
      if (v26)
      {
        v28 = &v24[v23 * v25];
        v29 = (v27 + 4 * v23 * v18);
        v30 = 8 * v26;
        do
        {
          v31 = *v28++;
          v32 = v31;
          *v29++ = v32;
          v30 -= 8;
        }

        while (v30);
      }

      ++v23;
    }

    while (v23 != v20);
  }

  LSMVectorBase::clear(__vt);
  v33 = *(this + 4);
  v34 = *(this + 14);
  if (v34 < v33)
  {
    LSMVectorBase::Allocate(this + 11, *(this + 4), 1);
    v34 = *(this + 14);
  }

  v35 = *(this + 4);
  v36 = *(this + 4);
  if (v34 >= v33)
  {
    v34 = v33;
  }

  *(this + 13) = v34;
  if (v36)
  {
    v37 = v56[0];
    v38 = *(this + 11);
    v39 = 8 * v35;
    do
    {
      v40 = *v37++;
      v41 = v40;
      *v38++ = v41;
      v39 -= 8;
    }

    while (v39);
  }

  LSMVectorBase::clear(v56);
  v42 = (*(this + 4) * __ldu);
  v43 = *(this + 6);
  if (v43 < v42)
  {
    LSMVectorBase::Allocate(this + 3, (*(this + 4) * __ldu), 1);
    v43 = *(this + 6);
  }

  v44 = (*(this + 4) * __ldu);
  v45 = *(this + 4) * __ldu;
  if (v43 >= v42)
  {
    v43 = v42;
  }

  *(this + 5) = v43;
  if (v45)
  {
    v46 = *(this + 37);
    v47 = *(this + 3);
    v48 = 8 * v44;
    do
    {
      v49 = *v46++;
      v50 = v49;
      *v47++ = v50;
      v48 -= 8;
    }

    while (v48);
  }

  LSMVectorBase::clear(this + 37);
  LSMVectorBase::~LSMVectorBase(__iwork);
  LSMVectorBase::~LSMVectorBase(__work);
  LSMVectorBase::~LSMVectorBase(__vt);
  LSMVectorBase::~LSMVectorBase(v56);
}

void LSMSVDDenseDoubleTrans::StartColumns(LSMSVDDenseDoubleTrans *this)
{
  v2 = ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * *(this + 2);
  v3 = *(this + 40);
  if (v3 < v2)
  {
    LSMVectorBase::Allocate(this + 37, v2, 1);
    v3 = *(this + 40);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(this + 39) = v3;
  if (v3 >= 1)
  {
    v4 = *(this + 37);

    bzero(v4, 8 * v3);
  }
}

void LSMSVDDenseDoubleTrans::Compute(int32x2_t *this, char a2)
{
  this[1] = vrev64_s32(this[1]);
  LSMSVDDenseDouble::Compute(this, a2);

  LSMSVD::TransposeUV(this);
}

void LSMSVDDenseFloat::~LSMSVDDenseFloat(void **this)
{
  LSMSVD::~LSMSVD(this);

  JUMPOUT(0x259C48400);
}

void LSMSVDDenseFloatTrans::~LSMSVDDenseFloatTrans(void **this)
{
  LSMSVD::~LSMSVD(this);

  JUMPOUT(0x259C48400);
}

void LSMSVDDenseDouble::~LSMSVDDenseDouble(void **this)
{
  *this = &unk_2867C21E0;
  LSMVectorBase::~LSMVectorBase(this + 37);

  LSMSVD::~LSMSVD(this);
}

{
  *this = &unk_2867C21E0;
  LSMVectorBase::~LSMVectorBase(this + 37);
  LSMSVD::~LSMSVD(this);

  JUMPOUT(0x259C48400);
}

void LSMSVDDenseDoubleTrans::~LSMSVDDenseDoubleTrans(void **this)
{
  *this = &unk_2867C21E0;
  LSMVectorBase::~LSMVectorBase(this + 37);

  LSMSVD::~LSMSVD(this);
}

{
  *this = &unk_2867C21E0;
  LSMVectorBase::~LSMVectorBase(this + 37);
  LSMSVD::~LSMSVD(this);

  JUMPOUT(0x259C48400);
}

void LSMClusterer::LSMClusterer(LSMClusterer *this, const LSMClassifier *a2, uint64_t a3, uint64_t a4)
{
  *this = a2;
  v8 = (this + 40);
  LSMVectorBase::LSMVectorBase((this + 8), 4);
  LSMVectorBase::LSMVectorBase(v8, 4);
  *(this + 9) = 0;
  *(this + 10) = 0;
  LSMVectorBase::LSMVectorBase((this + 88), 4);
  *(this + 15) = a3;
  *(this + 16) = a4;
  v9 = *(a2 + 248);
  *(this + 136) = v9;
  if (v9)
  {
    v10 = 8;
    if ((a4 & 3) == 0)
    {
      v10 = 12;
    }

    LSMClusterer::InitCategories(this, *(*this + v10));
  }
}

void sub_255A6D760(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase((v1 + 88));
  LSMVectorBase::~LSMVectorBase(v2);
  LSMVectorBase::~LSMVectorBase((v1 + 8));
  _Unwind_Resume(a1);
}

const void **LSMClusterer::InitCategories(const void **this, unint64_t a2)
{
  v3 = this;
  v4 = this[4];
  if (v4 < a2)
  {
    this = LSMVectorBase::Allocate(this + 1, a2, 1);
    v4 = v3[4];
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v3[3] = v4;
  if (v3[8] >= a2)
  {
    v3[7] = a2;
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    this = LSMVectorBase::Allocate(v3 + 5, a2, 1);
    v5 = v3[8];
    if (v5 >= a2)
    {
      v5 = a2;
    }

    v3[7] = v5;
  }

  v6 = 0;
  v7 = v3[1];
  do
  {
    v7[v6] = v6;
    ++v6;
  }

  while (a2 > v6);
  return this;
}

void LSMClusterer::~LSMClusterer(LSMClusterer *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 0;
      v6 = v2 + 32 * v4;
      do
      {
        LSMVectorBase::~LSMVectorBase((v6 + v5 - 32));
        v5 -= 32;
      }

      while (-32 * v4 != v5);
    }

    MEMORY[0x259C483E0](v3, 0x1080C806679C861);
  }

  LSMVectorBase::~LSMVectorBase(this + 11);
  LSMVectorBase::~LSMVectorBase(this + 5);
  LSMVectorBase::~LSMVectorBase(this + 1);
}

uint64_t LSMClusterer::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  result = v2 + 4 * *(v3 + 4 * a2);
  v5 = v2 + 4 * *(v3 + 4 * (a2 + 1));
  return result;
}

void LSMClusterer::Subset(uint64_t a1, const LSMVectorBase *a2)
{
  LSMVectorBase::LSMVectorBase(v3, a2);
  LSMVectorBase::Swap((a1 + 8), v3);
  LSMVectorBase::~LSMVectorBase(v3);
}

uint64_t LSMClusterer::Subcluster(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 72) = a2;
  *(result + 80) = a3;
  return result;
}

void LSMClusterer::Compute(LSMClusterer *this)
{
  v2 = *(*this + 16);
  v3 = (v2 + 3) & 0x1FFFFFFFCLL;
  LSMVectorBase::LSMVectorBase(v12, 4, v3 * *(this + 3));
  v4 = *(this + 16);
  v5 = *this;
  if ((v4 & 3) != 0)
  {
    v6 = (v5 + 24);
    v7 = (*(v5 + 8) + 3) & 0xFFFFFFFC;
    v3 = 1;
  }

  else
  {
    v6 = (v5 + 56);
    v7 = 1;
  }

  if (*(this + 3))
  {
    v8 = 0;
    v9 = 0;
    v10 = *v6;
    do
    {
      v11 = *(*(this + 1) + 4 * v9);
      *(*(this + 5) + 4 * v11) = v9;
      cblas_scopy(v2, (v10 + 4 * v3 * v11), v7, (v12[0] + v8), 1);
      ++v9;
      v8 += (4 * (v2 + 3)) & 0x7FFFFFFF0;
    }

    while (v9 < *(this + 3));
    v4 = *(this + 16);
  }

  if ((v4 & 4) != 0)
  {
    LSMClusterer::ComputeAgglomerative(this, v12);
  }

  else
  {
    LSMClusterer::ComputeKMeans(this, v12);
  }

  LSMVectorBase::~LSMVectorBase(v12);
}

void LSMClusterer::ComputeAgglomerative(void *a1, LSMVectorBase *a2)
{
  v4 = a1[3];
  v5 = *(*a1 + 16);
  if (a1[9])
  {
    v6 = a1[9];
  }

  else
  {
    v6 = a1[3];
  }

  LSMVectorBase::LSMVectorBase(v117, 4);
  LSMVectorBase::LSMVectorBase(v116, 4, v6);
  LSMVectorBase::LSMVectorBase(v115, 4, v6);
  LSMVectorBase::LSMVectorBase(v114, 4, v6);
  LSMVectorBase::LSMVectorBase(v113, 4, v6);
  LSMVectorBase::LSMVectorBase(v112, 4, v4);
  v103 = v4;
  v7 = (v5 + 3) & 0x1FFFFFFFCLL;
  if (a1[9])
  {
    v8 = v118;
    if (v118 < v7 * v6)
    {
      LSMVectorBase::Allocate(v117, v7 * v6, 1);
      v8 = v118;
    }

    if (v8 >= v7 * v6)
    {
      v8 = v7 * v6;
    }

    v117[2] = v8;
  }

  else
  {
    LSMVectorBase::Swap(v117, a2);
  }

  v101 = (v5 + 3) & 0x1FFFFFFFCLL;
  *__N = v5;
  bzero(v116[0], 4 * v6);
  v99 = 4 * (v5 + 3);
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    for (i = 0; i != v6; ++i)
    {
      *(v115[0] + i) = 1;
      if (a1[9])
      {
        v12 = *(a1[5] + 4 * **(a1[10] + v9));
        cblas_scopy(v5, (*a2 + 4 * v101 * v12), 1, (v117[0] + v10), 1);
      }

      else
      {
        LODWORD(v12) = i;
      }

      *(v114[0] + i) = v12;
      *(v113[0] + i) = v12;
      v10 += v99 & 0x7FFFFFFF0;
      v9 += 32;
    }
  }

  bzero(v112[0], 4 * v103);
  if (a1[9])
  {
    v13 = 0;
    do
    {
      LSMVectorBase::LSMVectorBase(__A, (a1[10] + 32 * v13));
      v14 = v110;
      if (v110 < 2)
      {
        v17 = 0.0;
      }

      else
      {
        v15 = (v117[0] + 4 * v13 * v101);
        v16 = v113[0];
        v17 = 0.0;
        v18 = 1.0;
        for (j = 1; j < v110; ++j)
        {
          v20 = *(a1[5] + 4 * LODWORD(__A[0][j]));
          v21 = (*a2 + 4 * v101 * v20);
          v22 = EuclidianVecDistance(v5, v15, v21);
          cblas_sscal(v5, v18 / (v18 + 1.0), v15, 1);
          cblas_saxpy(v5, 1.0 / (v18 + 1.0), v21, 1, v15, 1);
          v17 = ((v17 * (v17 * v18)) / (v18 + 1.0)) + ((v22 * (v18 * v22)) / ((v18 + 1.0) * (v18 + 1.0)));
          *(v112[0] + v16[v13]) = v20 + 1;
          v16[v13] = v20;
          v14 = v110;
          v18 = v18 + 1.0;
        }
      }

      *(v115[0] + v13) = v14;
      *(v116[0] + v13) = v17;
      LSMVectorBase::~LSMVectorBase(__A);
      ++v13;
    }

    while (v13 < a1[9]);
    v103 = a1[9];
    LSMVectorBase::clear(a2);
  }

  LSMVectorBase::LSMVectorBase(__A, 4);
  v23 = ((v103 - 1) * v103) >> 1;
  v24 = v111;
  if (v111 < v23)
  {
    LSMVectorBase::Allocate(__A, ((v103 - 1) * v103) >> 1, 1);
    v24 = v111;
  }

  if (v24 >= v23)
  {
    v24 = ((v103 - 1) * v103) >> 1;
  }

  v110 = v24;
  if (v103 >= 2)
  {
    v25 = 0;
    for (k = 1; k != v103; ++k)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = EuclidianVecDistance(v5, v117[0] + k * v101, (v117[0] + v27));
        if (a1[9])
        {
          v30 = *(v115[0] + k);
          v31 = *(v115[0] + v28);
          v32 = ((v29 * (v29 * (v31 * v30))) / ((v31 + v30) * (v31 + v30))) + (((*(v116[0] + v28) * v31) + (v30 * *(v116[0] + k))) / (v31 + v30));
        }

        else
        {
          v32 = (v29 * v29) * 0.25;
        }

        __A[0][v25 + v28++] = v32;
        v27 += v99 & 0x7FFFFFFF0;
      }

      while (k != v28);
      v25 += v28;
    }
  }

  v98 = a1;
  v34 = v103;
  v33 = v103 - 1;
  if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
  {
    v35 = MEMORY[0x277D85DF8];
    fwrite("Initial:\n", 9uLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (v103)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      do
      {
        fprintf(*v35, "  %lu: n=%lu, sigma = %f, mu =", v39, *(v115[0] + v39), *(v116[0] + v39));
        v41 = v38;
        for (m = *__N; m; --m)
        {
          fprintf(*v35, " %8f", *(v117[0] + v41));
          v41 += 4;
        }

        fputc(10, *v35);
        if (v39)
        {
          v40 += v39;
          v43 = v36;
          v44 = v39;
          v34 = v103;
          do
          {
            fprintf(*v35, " %8f", *(__A[0] + v43));
            v43 += 4;
            --v44;
          }

          while (v44);
          v33 = v103 - 1;
        }

        else
        {
          v34 = v103;
        }

        fputc(10, *v35);
        ++v39;
        v38 += v99 & 0x7FFFFFFF0;
        v36 += v37;
        v37 += 4;
      }

      while (v39 != v34);
    }
  }

  v45 = v98;
  if (v34 > v98[15])
  {
    v46 = v99 & 0x7FFFFFFF0;
    v102 = v33 * (v103 - 2);
    v47 = 4 - 2 * v34;
    v48 = MEMORY[0x277D85DF8];
    do
    {
      v105 = v33;
      v49 = v34;
      __C = 0.0;
      __I[0] = 0;
      v50 = v34 - 1;
      vDSP_minvi(__A[0], 1, &__C, __I, (v50 * v49) >> 1);
      v100 = v47;
      v51 = *__N;
      v52 = ((sqrtf((__I[0] * 8.0) + 1.0) + 1.0) * 0.5);
      v53 = (v52 - 1) * v52;
      v54 = __I[0] - (v53 >> 1);
      v55 = v101;
      if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
      {
        fprintf(*v48, "sigma(%lu, %lu) = %f", v52, __I[0] - (v53 >> 1), __C);
      }

      v56 = *(v115[0] + v54);
      v57 = (v56 + *(v115[0] + v52));
      cblas_sscal(__N[0], v56 / v57, v117[0] + v54 * v101, 1);
      cblas_saxpy(__N[0], *(v115[0] + v52) / v57, v117[0] + v101 * v52, 1, v117[0] + v54 * v101, 1);
      v58 = v115[0];
      *(v115[0] + v54) += *(v115[0] + v52);
      *(v116[0] + v54) = __C;
      v59 = v113[0];
      *(v112[0] + *(v113[0] + v54)) = *(v114[0] + v52) + 1;
      v59[v54] = v59[v52];
      v104 = v50;
      if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
      {
        fprintf(*v48, ", n = %lu, mu =", v58[v54]);
        if (__N[0])
        {
          v60 = v46 * v54;
          v61 = *__N;
          do
          {
            fprintf(*v48, " %f", *(v117[0] + v60));
            v60 += 4;
            --v61;
          }

          while (v61);
        }

        fputc(10, *v48);
        v51 = *__N;
        v55 = v101;
        v50 = v104;
      }

      if (v50 > v52)
      {
        *(v115[0] + v52) = *(v115[0] + v50);
        *(v116[0] + v52) = *(v116[0] + v50);
        *(v114[0] + v52) = *(v114[0] + v50);
        *(v113[0] + v52) = *(v113[0] + v50);
        cblas_scopy(v51, v117[0] + v50 * v55, 1, v117[0] + v101 * v52, 1);
        v62 = 0;
        v63 = __A[0];
        v64 = __A[0] + ((2 * v102) & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          if (v52 != v62 && v50 != v62)
          {
            if (v62 <= v52)
            {
              v65 = v52;
            }

            else
            {
              v65 = v62;
            }

            if (v62 >= v52)
            {
              v66 = v52;
            }

            else
            {
              v66 = v62;
            }

            v63[(((v65 - 1) * v65) >> 1) + v66] = *&v64[4 * v62];
          }

          ++v62;
        }

        while (v49 != v62);
      }

      v67 = v105;
      if (v50)
      {
        v68 = 0;
        v69 = 0;
        do
        {
          if (v54 != v69)
          {
            v70 = EuclidianVecDistance(v51, (v117[0] + v68), v117[0] + v54 * v101);
            v71 = *(v115[0] + v69);
            v72 = *(v115[0] + v54);
            v73 = ((v70 * (v70 * (v72 * v71))) / ((v72 + v71) * (v72 + v71))) + (((*(v116[0] + v54) * v72) + (v71 * *(v116[0] + v69))) / (v72 + v71));
            v74 = v69 <= v54 ? v54 : v69;
            v75 = v69 >= v54 ? v54 : v69;
            __A[0][(((v74 - 1) * v74) >> 1) + v75] = v73;
            if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
            {
              fprintf(*v48, "sigma(%lu[%lu], %lu[%lu]) = %f, dist = %f\n", v69, v71, v54, v72, v73, v70);
            }
          }

          ++v69;
          v68 += v46;
        }

        while (v105 != v69);
      }

      if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
      {
        fwrite("Revised:\n", 9uLL, 1uLL, *v48);
        if (v104)
        {
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          do
          {
            fprintf(*v48, "  %lu: n=%lu, sigma = %f, mu =", v79, *(v115[0] + v79), *(v116[0] + v79));
            v81 = v78;
            for (n = *__N; n; --n)
            {
              fprintf(*v48, " %8f", *(v117[0] + v81));
              v81 += 4;
            }

            fputc(10, *v48);
            if (v79)
            {
              v80 += v79;
              v83 = v76;
              v84 = v79;
              do
              {
                fprintf(*v48, " %8f", *(__A[0] + v83));
                v83 += 4;
                --v84;
              }

              while (v84);
            }

            fputc(10, *v48);
            ++v79;
            v78 += v46;
            v76 += v77;
            v77 += 4;
            v67 = v105;
          }

          while (v79 != v105);
        }
      }

      v45 = v98;
      v33 = v67 - 1;
      v34 = v104;
      v102 += v100;
      v47 = v100 + 2;
    }

    while (v104 > v98[15]);
  }

  v45[15] = v34;
  v85 = v45[3];
  v86 = v45[14];
  if (v86 < v34 + 1)
  {
    LSMVectorBase::Allocate(v45 + 11, v34 + 1, 1);
    v86 = v45[14];
  }

  if (v86 >= v34 + 1)
  {
    v86 = v34 + 1;
  }

  v45[13] = v86;
  LSMVectorBase::LSMVectorBase(__I, 4, v85);
  v87 = v45[15];
  v88 = v45[11];
  if (v87)
  {
    v89 = 0;
    v90 = 0;
    v91 = v114[0];
    v92 = __I[0];
    v93 = v112[0];
    do
    {
      *(v88 + 4 * v89) = v90;
      v94 = v91[v89];
      v95 = v94 + 1;
      if (v94 != -1)
      {
        v96 = v45[1];
        do
        {
          v97 = 4 * v95 - 4;
          *(v92 + 4 * v90++) = *(v96 + v97);
          v95 = *&v93[v97];
        }

        while (v95);
      }

      ++v89;
    }

    while (v89 != v87);
  }

  else
  {
    LODWORD(v90) = 0;
  }

  *(v88 + 4 * v87) = v90;
  LSMVectorBase::Swap(v45 + 1, __I);
  LSMVectorBase::~LSMVectorBase(__I);
  LSMVectorBase::~LSMVectorBase(__A);
  LSMVectorBase::~LSMVectorBase(v112);
  LSMVectorBase::~LSMVectorBase(v113);
  LSMVectorBase::~LSMVectorBase(v114);
  LSMVectorBase::~LSMVectorBase(v115);
  LSMVectorBase::~LSMVectorBase(v116);
  LSMVectorBase::~LSMVectorBase(v117);
}

void sub_255A6E68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  LSMVectorBase::~LSMVectorBase(&a28);
  LSMVectorBase::~LSMVectorBase(&a32);
  LSMVectorBase::~LSMVectorBase(&a36);
  LSMVectorBase::~LSMVectorBase(&a40);
  LSMVectorBase::~LSMVectorBase((v40 - 232));
  LSMVectorBase::~LSMVectorBase((v40 - 200));
  LSMVectorBase::~LSMVectorBase((v40 - 168));
  _Unwind_Resume(a1);
}

void LSMClusterer::ComputeKMeans(void *a1, uint64_t *a2)
{
  v4 = a1[3];
  v5 = *(*a1 + 16);
  LSMVectorBase::LSMVectorBase(v63, 4, a1[15]);
  LSMVectorBase::LSMVectorBase(__b, 4, v4);
  v6 = (v5 + 3) & 0x1FFFFFFFCLL;
  memset(__b[0], 255, 4 * v4);
  LSMVectorBase::LSMVectorBase(v61, 4, a1[15] * v6);
  LSMVectorBase::LSMVectorBase(v60, 4, a1[15] * v6);
  v57 = v6;
  v58 = a1;
  v7 = 4 * (v5 + 3);
  v55 = a2;
  if (a1[15])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = random();
      cblas_scopy(v5, (*a2 + 4 * v10 % v4 * v57), 1, (v61[0] + v8), 1);
      ++v9;
      v11 = a1[15];
      v8 += v7 & 0x7FFFFFFF0;
    }

    while (v9 < v11);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x277D85DF8];
  v56 = v4;
  if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
  {
    fwrite("Items:\n", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (v4)
    {
      v13 = 0;
      for (i = 0; i != v4; ++i)
      {
        fprintf(*v12, "%ld:", i);
        v15 = v13;
        v16 = v5;
        if (v5)
        {
          do
          {
            fprintf(*v12, " %8f", *(*v55 + v15));
            v15 += 4;
            --v16;
          }

          while (v16);
        }

        fputc(10, *v12);
        v13 += v7 & 0x7FFFFFFF0;
      }
    }
  }

  v17 = v58;
  v18 = v7 & 0x7FFFFFFF0;
  v19 = 1;
  do
  {
    v54 = v19;
    if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
    {
      fwrite("Centroids:\n", 0xBuLL, 1uLL, *v12);
      if (v11)
      {
        v20 = 0;
        for (j = 0; j != v11; ++j)
        {
          fprintf(*v12, "%lu:", j);
          v22 = v20;
          v23 = v5;
          if (v5)
          {
            do
            {
              fprintf(*v12, " %8f", *(v61[0] + v22));
              v22 += 4;
              --v23;
            }

            while (v23);
          }

          fputc(10, *v12);
          v20 += v18;
        }
      }
    }

    bzero(v63[0], 4 * *(v17 + 120));
    bzero(v60[0], 4 * v57 * *(v17 + 120));
    if (!v56)
    {
      break;
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    do
    {
      LODWORD(v59[0]) = 0;
      v27 = *v55;
      if (v11)
      {
        v28 = LSMClusterer::ClosestCentroid(v58, (v27 + v24), v61, v11, v59);
        v29 = *v59 != 0.0;
      }

      else
      {
        v28 = 0;
        v29 = 1;
      }

      if (v11 >= *(v58 + 120) || !v29)
      {
        v31 = v11;
        v11 = v28;
      }

      else
      {
        cblas_scopy(v5, (v27 + v24), 1, v61[0] + v11 * v57, 1);
        v31 = v11 + 1;
      }

      if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
      {
        fprintf(*v12, "%lu -> %lu\n", v25, v11);
      }

      cblas_saxpy(v5, 1.0, (v27 + v24), 1, v60[0] + v11 * v57, 1);
      ++*(v63[0] + v11);
      if (v11 != *(__b[0] + v25))
      {
        ++v26;
        *(__b[0] + v25) = v11;
      }

      ++v25;
      v24 += v18;
      v11 = v31;
    }

    while (v56 != v25);
    if (!v26)
    {
      v11 = v31;
      v17 = v58;
      break;
    }

    if (v31)
    {
      v32 = 0;
      v33 = 0;
      v11 = v31;
      v17 = v58;
      do
      {
        v34 = *(v63[0] + v33);
        if (v34)
        {
          cblas_sscal(v5, 1.0 / v34, (v60[0] + v32), 1);
        }

        else if (v33 < --v11)
        {
          cblas_scopy(v5, v60[0] + v11 * v57, 1, (v60[0] + v32), 1);
          *(v63[0] + v33) = *(v63[0] + v11);
        }

        ++v33;
        v32 += v18;
      }

      while (v33 < v11);
    }

    else
    {
      v11 = 0;
      v17 = v58;
    }

    LSMVectorBase::Swap(v61, v60);
    v19 = v54 + 1;
  }

  while (v54 != 100);
  *(v17 + 120) = v11;
  v35 = v11 + 1;
  v36 = *(v17 + 112);
  if (v36 < v11 + 1)
  {
    LSMVectorBase::Allocate((v17 + 88), v11 + 1, 1);
    v36 = *(v17 + 112);
    v11 = *(v17 + 120);
  }

  if (v36 >= v35)
  {
    v36 = v35;
  }

  *(v17 + 104) = v36;
  v37 = *(v17 + 88);
  v38 = v56;
  if (v11)
  {
    v39 = 0;
    v40 = v63[0];
    v41 = *(v17 + 88);
    v42 = v11;
    do
    {
      *v41++ = v39;
      v43 = *v40++;
      v39 += v43;
      --v42;
    }

    while (v42);
  }

  else
  {
    v39 = 0;
  }

  *(v37 + 4 * v11) = v39;
  LSMVectorBase::LSMVectorBase(v59, 4, v56);
  bzero(v63[0], 4 * *(v17 + 120));
  if (v56)
  {
    v44 = __b[0];
    v45 = *(v17 + 8);
    v46 = v59[0];
    v47 = *(v17 + 88);
    v48 = v63[0];
    do
    {
      v50 = *v44++;
      v49 = v50;
      v51 = *v45++;
      v52 = *(v47 + 4 * v49);
      v53 = v48[v49];
      v48[v49] = v53 + 1;
      v46[v53 + v52] = v51;
      --v38;
    }

    while (v38);
  }

  LSMVectorBase::Swap((v17 + 8), v59);
  LSMVectorBase::~LSMVectorBase(v59);
  LSMVectorBase::~LSMVectorBase(v60);
  LSMVectorBase::~LSMVectorBase(v61);
  LSMVectorBase::~LSMVectorBase(__b);
  LSMVectorBase::~LSMVectorBase(v63);
}

void sub_255A6ED00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  LSMVectorBase::~LSMVectorBase(&a22);
  LSMVectorBase::~LSMVectorBase(&a26);
  LSMVectorBase::~LSMVectorBase(&a30);
  LSMVectorBase::~LSMVectorBase((v30 - 136));
  _Unwind_Resume(a1);
}

float EuclidianVecDistance(unint64_t a1, const float *a2, const float *a3)
{
  if ((LSMDebugFlags::sLSMDebug & 0x8000) != 0)
  {
    LSMVectorBase::LSMVectorBase(__Y, 4, a1);
    LSMVectorBase::LSMVectorBase(__X, 4, a1);
    cblas_scopy(a1, a2, 1, __Y[0], 1);
    cblas_scopy(a1, a3, 1, __X[0], 1);
    v7 = cblas_snrm2(a1, __Y[0], 1);
    v8 = cblas_snrm2(a1, __X[0], 1);
    v6 = 100000000.0;
    if (v7 != 0.0 && v8 != 0.0)
    {
      v6 = cblas_sdot(a1, __Y[0], 1, __X[0], 1) / (v7 * v8);
    }

    LSMVectorBase::~LSMVectorBase(__X);
  }

  else
  {
    LSMVectorBase::LSMVectorBase(__Y, 4, a1);
    cblas_scopy(a1, a2, 1, __Y[0], 1);
    cblas_saxpy(a1, -1.0, a3, 1, __Y[0], 1);
    v6 = cblas_snrm2(a1, __Y[0], 1);
  }

  LSMVectorBase::~LSMVectorBase(__Y);
  return v6;
}

void sub_255A6EEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  LSMVectorBase::~LSMVectorBase(&a9);
  LSMVectorBase::~LSMVectorBase(&a13);
  _Unwind_Resume(a1);
}

uint64_t LSMClusterer::ClosestCentroid(uint64_t a1, const float *a2, void *a3, uint64_t a4, float *a5)
{
  *a5 = INFINITY;
  v9 = *(*a1 + 16);
  if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
  {
    fwrite("Dist", 4uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  if (a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    do
    {
      v13 = EuclidianVecDistance(v9, a2, (*a3 + v10));
      if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
      {
        fprintf(*MEMORY[0x277D85DF8], " %8f", v13);
      }

      if (v13 < *a5)
      {
        *a5 = v13;
        v12 = v11;
      }

      ++v11;
      v10 += (4 * (v9 + 3)) & 0x7FFFFFFF0;
    }

    while (a4 != v11);
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  if ((LSMDebugFlags::sLSMDebug & 0x20) != 0)
  {
    fputc(10, *MEMORY[0x277D85DF8]);
  }

  return v12;
}

uint64_t LSMClusterParser::LSMClusterParser(uint64_t a1, uint64_t a2, LSMVectorBase *a3, unint64_t a4, uint64_t a5, char a6)
{
  *a1 = a2;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  LSMVectorBase::LSMVectorBase((a1 + 24), a3);
  LSMVectorBase::LSMVectorBase((a1 + 56), 4);
  LSMVectorBase::LSMVectorBase((a1 + 88), 1, a4);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  bzero(*(a1 + 88), a4);
  return a1;
}

void sub_255A6F0D0(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase((v1 + 56));
  LSMVectorBase::~LSMVectorBase((v1 + 24));
  _Unwind_Resume(a1);
}

void LSMClusterParser::~LSMClusterParser(LSMClusterParser *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 0;
      v6 = v2 + 32 * v4;
      do
      {
        LSMVectorBase::~LSMVectorBase((v6 + v5 - 32));
        v5 -= 32;
      }

      while (-32 * v4 != v5);
    }

    MEMORY[0x259C483E0](v3, 0x1080C806679C861);
  }

  LSMVectorBase::~LSMVectorBase(this + 11);
  LSMVectorBase::~LSMVectorBase(this + 7);
  LSMVectorBase::~LSMVectorBase(this + 3);
}

uint64_t LSMClusterParser::AddCFValues(uint64_t a1, const __CFArray *a2, void *a3)
{
  TypeID = CFArrayGetTypeID();
  v30 = CFStringGetTypeID();
  v29 = CFDataGetTypeID();
  v28 = CFNumberGetTypeID();
  result = CFArrayGetCount(a2);
  if (result >= 1)
  {
    v8 = result;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      result = CFGetTypeID(ValueAtIndex);
      if (result != TypeID)
      {
        v15 = result;
        if (!a3)
        {
          v16 = *(a1 + 120);
          if (v16)
          {
            LSMVectorBase::~LSMVectorBase(*(a1 + 120));
            result = MEMORY[0x259C48400](v16, 0x1080C406679C861);
            *(a1 + 120) = 0;
          }
        }

        if (v15 == v30 && (*a1 & 1) != 0)
        {
          result = LSMText::LookupWord(ValueAtIndex, *(a1 + 8), *(a1 + 16));
          if (!result)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v15 != v29 || (*a1 & 2) == 0)
          {
            if (v15 == v28 && (*a1 & 3) == 0)
            {
              valuePtr = 0;
              result = CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
              if (result)
              {
                LODWORD(v17) = valuePtr - 1;
              }

              else
              {
                LODWORD(v17) = -1;
              }

LABEL_40:
              if (*(a1 + 104) > v17)
              {
                v27 = *(a1 + 88);
                if (!*(v27 + v17))
                {
                  *(v27 + v17) = 1;
                  result = LSMVectorBase::Append((a1 + 56));
                  *(*(a1 + 56) + 4 * *(a1 + 72) - 4) = v17;
                  if (a3)
                  {
                    result = LSMVectorBase::Append(a3);
                    *(*a3 + 4 * a3[2] - 4) = v17;
                  }
                }
              }

              continue;
            }

            goto LABEL_39;
          }

          result = LSMText::LookupToken(ValueAtIndex, *(a1 + 8), v11);
          if (!result)
          {
            goto LABEL_39;
          }
        }

        v19 = *(a1 + 24);
        v20 = *(a1 + 40);
        if (v20)
        {
          v21 = *(a1 + 24);
          v22 = *(a1 + 40);
          do
          {
            v23 = v22 >> 1;
            v24 = &v21[v22 >> 1];
            v26 = *v24;
            v25 = v24 + 1;
            v22 += ~(v22 >> 1);
            if (v26 < result)
            {
              v21 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        else
        {
          v21 = *(a1 + 24);
        }

        if (v21 != (v19 + 4 * v20) && *v21 == result)
        {
          v17 = (v21 - v19) >> 2;
          goto LABEL_40;
        }

LABEL_39:
        LODWORD(v17) = -1;
        goto LABEL_40;
      }

      if (!a3)
      {
        if (i)
        {
          if (*(a1 + 120) && (*a1 & 4) != 0)
          {
            v18 = *(a1 + 128);
            *(a1 + 128) = v18 + 4;
            v12 = a1;
            v13 = ValueAtIndex;
            v14 = v18;
            goto LABEL_6;
          }
        }

        else if ((*a1 & 4) != 0)
        {
          operator new[]();
        }
      }

      v12 = a1;
      v13 = ValueAtIndex;
      v14 = a3;
LABEL_6:
      result = LSMClusterParser::AddCFValues(v12, v13, v14);
    }
  }

  return result;
}

void LSMClusterParser::ApplySubset(LSMClusterParser *this, LSMClusterer *a2)
{
  LSMClusterer::Subset(a2, (this + 56));
  v4 = *(this + 15);
  if (v4)
  {
    *(a2 + 9) = (*(this + 16) - v4) >> 5;
    *(a2 + 10) = v4;
    *(this + 15) = 0;
  }
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}