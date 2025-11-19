double sub_1D0E2D13C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = v3;
  *(a1 + 12) = 1;
  *(a1 + 16) = v3;
  *(a1 + 20) = v3;
  v5 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v3)
  {
    v6 = *(a2 + 20) * a3;
    v7 = *(a2 + 32);
    do
    {
      result = *(v7 + 8 * v6);
      *v5++ = result;
      ++v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_1D0E2D1A4(void *result)
{
  result[15] = &unk_1F4CDEAF8;
  result[9] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E2D204(void *a1)
{
  a1[15] = &unk_1F4CDEAF8;
  a1[9] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E2D2D0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0E2D42C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void *sub_1D0E2D52C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x79435E50D79435E5 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 25 - v3;
      v6 = &v2[-(v5 / 0x1A)];
      *result = v6;
      v4 = *v6 + 152 * (26 * (v5 / 0x1A) - v5) + 3800;
    }

    else
    {
      *result = &v2[v3 / 0x1A];
      v4 = v2[v3 / 0x1A] + 152 * (v3 % 0x1A);
    }

    result[1] = v4;
  }

  return result;
}

uint64_t raven::RavenActivityStateEstimatorActiveObject::Configure(cnframework::ActiveObjectBase *this, uint64_t *a2)
{
  if (*(this + 224) == 1)
  {
    v27 = 12;
    v26 = 3;
    (*(*this + 16))(__p, this);
    if (v25 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v27, &v26, "Warning: %s configured more than once", v4, v5, v6, v7, v8, v9);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 224) = 0;
  v10 = *a2;
  if (*a2 && (*(v10 + 33) & 1) != 0)
  {
    *(this + 29) = v10;
    cnframework::ActiveObjectBase::SetEventQueueDelay(this, 0.0);
    *(this + 224) = 1;
    (*(*this + 40))(this);
    v27 = 12;
    v26 = 3;
    (*(*this + 16))(__p, this);
    if (v25 >= 0)
    {
      v16 = __p;
    }

    else
    {
      LOBYTE(v16) = __p[0];
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s configured successfully", v11, v12, v13, v14, v15, v16);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  else
  {
    v27 = 12;
    v26 = 4;
    (*(*this + 16))(__p, this);
    if (v25 >= 0)
    {
      v23 = __p;
    }

    else
    {
      LOBYTE(v23) = __p[0];
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s could not be configured", v18, v19, v20, v21, v22, v23);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_1D0E2D7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenActivityStateEstimatorActiveObject::HandleEvent(raven::RavenActivityStateEstimatorActiveObject *this, const raven::ActivityInputEvent *a2)
{
  if (*(this + 352) == 1)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 40);
    *(this + 264) = *(a2 + 24);
    *(this + 280) = v3;
    *(this + 248) = v2;
    result = *(a2 + 56);
    v5 = *(a2 + 72);
    v6 = *(a2 + 88);
    *(this + 172) = *(a2 + 52);
    *(this + 312) = v5;
    *(this + 328) = v6;
    *(this + 296) = result;
  }

  else
  {
    *(this + 30) = &unk_1F4CEEEF8;
    v7 = *(a2 + 8);
    v8 = *(a2 + 40);
    *(this + 264) = *(a2 + 24);
    *(this + 280) = v8;
    *(this + 248) = v7;
    result = *(a2 + 56);
    v9 = *(a2 + 72);
    v10 = *(a2 + 88);
    *(this + 172) = *(a2 + 52);
    *(this + 312) = v9;
    *(this + 328) = v10;
    *(this + 296) = result;
    *(this + 352) = 1;
  }

  return result;
}

void *raven::RavenActivityStateEstimatorActiveObject::HandleEvent(raven::RavenActivityStateEstimatorActiveObject *this, const raven::FitnessSessionEvent *a2)
{
  if (*(this + 792) == 1)
  {
    v3 = this + 368;
    v4 = a2 + 8;

    return memcpy(v3, v4, 0x1A1uLL);
  }

  else
  {
    *(this + 45) = &unk_1F4CEF508;
    result = memcpy(this + 368, a2 + 8, 0x1A1uLL);
    *(this + 792) = 1;
  }

  return result;
}

uint64_t raven::RavenActivityStateEstimatorActiveObject::HandleEvent(uint64_t this, const raven::RavenSystemEvent *a2)
{
  if (!*(a2 + 26))
  {
    return (*(*this + 40))();
  }

  return this;
}

__n128 raven::RavenActivityStateEstimatorActiveObject::HandleEvent(raven::RavenActivityStateEstimatorActiveObject *this, const raven::StepCountEvent *a2)
{
  v2 = *(this + 1200);
  if (v2 == 1 && *(a2 + 38) == *(this + 298) + 1)
  {
    if (*(this + 1368) == 1)
    {
      v3 = *(this + 1160);
      *(this + 82) = *(this + 1144);
      *(this + 83) = v3;
      *(this + 84) = *(this + 1176);
      v4 = *(this + 1096);
      *(this + 78) = *(this + 1080);
      *(this + 79) = v4;
      v5 = *(this + 1128);
      *(this + 80) = *(this + 1112);
      *(this + 81) = v5;
      v6 = *(this + 1064);
      *(this + 76) = *(this + 1048);
      *(this + 170) = *(this + 149);
      *(this + 77) = v6;
    }

    else if (*(this + 1368))
    {
      *(this + 1368) = 0;
    }

    else
    {
      v20 = *(this + 1160);
      *(this + 82) = *(this + 1144);
      *(this + 83) = v20;
      *(this + 84) = *(this + 1176);
      v21 = *(this + 1096);
      *(this + 78) = *(this + 1080);
      *(this + 79) = v21;
      v22 = *(this + 1128);
      *(this + 80) = *(this + 1112);
      *(this + 81) = v22;
      v23 = *(this + 1064);
      *(this + 76) = *(this + 1048);
      *(this + 151) = &unk_1F4CEEBE8;
      *(this + 170) = *(this + 149);
      *(this + 77) = v23;
      *(this + 1368) = 1;
    }

LABEL_8:
    v7 = *(a2 + 24);
    *(this + 1048) = *(a2 + 8);
    *(this + 1064) = v7;
    v8 = *(a2 + 40);
    v9 = *(a2 + 56);
    v10 = *(a2 + 88);
    *(this + 1112) = *(a2 + 72);
    *(this + 1128) = v10;
    *(this + 1080) = v8;
    *(this + 1096) = v9;
    result = *(a2 + 104);
    v12 = *(a2 + 120);
    v13 = *(a2 + 136);
    *(this + 149) = *(a2 + 19);
    *(this + 1160) = v12;
    *(this + 1176) = v13;
    *(this + 1144) = result;
    return result;
  }

  if (*(this + 1368) == 1)
  {
    *(this + 1368) = 0;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  *(this + 130) = &unk_1F4CEEBE8;
  v14 = *(a2 + 24);
  *(this + 1048) = *(a2 + 8);
  *(this + 1064) = v14;
  v15 = *(a2 + 40);
  v16 = *(a2 + 56);
  v17 = *(a2 + 88);
  *(this + 1112) = *(a2 + 72);
  *(this + 1128) = v17;
  *(this + 1080) = v15;
  *(this + 1096) = v16;
  result = *(a2 + 104);
  v18 = *(a2 + 120);
  v19 = *(a2 + 136);
  *(this + 149) = *(a2 + 19);
  *(this + 1160) = v18;
  *(this + 1176) = v19;
  *(this + 1144) = result;
  *(this + 1200) = 1;
  return result;
}

void raven::RavenActivityStateEstimatorActiveObject::Reset(raven::RavenActivityStateEstimatorActiveObject *this)
{
  if (*(this + 224) == 1)
  {
    if (*(this + 352) == 1)
    {
      *(this + 352) = 0;
    }

    if (*(this + 792) == 1)
    {
      *(this + 792) = 0;
    }

    if (*(this + 1032) == 1)
    {
      *(this + 100) = &unk_1F4CEE060;
      v2 = *(this + 126);
      if (v2)
      {
        *(this + 127) = v2;
        operator delete(v2);
      }

      *(this + 1032) = 0;
    }

    if (*(this + 1200) == 1)
    {
      *(this + 1200) = 0;
    }

    if (*(this + 1368) == 1)
    {
      *(this + 1368) = 0;
    }

    *(this + 1376) = 0;
    *(this + 207) = 0;
    *(this + 208) = 0x7FF8000000000000;
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E2DC4C(raven::RavenCoarseOdometerActiveObject *a1)
{
  sub_1D0DC7B20(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E2DC84(uint64_t a1)
{
  if (*(a1 + 768) == 1)
  {
    *(a1 + 536) = &unk_1F4CEE060;
    v2 = *(a1 + 744);
    if (v2)
    {
      *(a1 + 752) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void *raven::RavenSequentialGNSSMeasurementSelector::LogClockOffsetCorrection(void *this, double a2)
{
  if (*(this + 1) && *(this + 1506))
  {
    v3 = sub_1D0BCD7C4(this + 189, "NOTE: Clock offset corrected by ", 32);
    v4 = MEMORY[0x1D387E990](v3, a2 * 299.792458);

    return sub_1D0BCD7C4(v4, " meters\n\n", 9);
  }

  return this;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(uint64_t a1, double *a2, double a3)
{
  if (*a2 >= 0.0)
  {
    v17 = 12;
    v16 = 4;
    v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR negative rejection threshold invalid,%.3f");
  }

  else
  {
    v4 = a2[1];
    if (v4 >= 0.0)
    {
      v17 = 12;
      v16 = 4;
      v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR negative re-weight threshold invalid,%.3f");
    }

    else
    {
      v5 = a2[2];
      if (v5 <= 0.0)
      {
        v17 = 12;
        v16 = 4;
        v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR positive re-weight threshold invalid,%.3f");
      }

      else
      {
        v6 = a2[3];
        if (v6 <= 0.0)
        {
          v17 = 12;
          v16 = 4;
          v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR positive rejection threshold invalid,%.3f");
        }

        else
        {
          v7 = fabs(v4);
          if (fabs(*a2) >= v7)
          {
            if (v7 >= a3)
            {
              if (v6 >= v5)
              {
                if (v5 >= a3)
                {
                  return 1;
                }

                v17 = 12;
                v16 = 4;
                v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR positive re-weight threshold should be outside target sigma count,reweight,%.3f,target,%.3lf");
              }

              else
              {
                v17 = 12;
                v16 = 4;
                v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR positive rejection threshold should be outside negative re-weight threshold,reject,%.3lf,reweight,%.3lf");
              }
            }

            else
            {
              v17 = 12;
              v16 = 4;
              v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR negative re-weight threshold should be outside target sigma count,reweight_abs,%.3f,target,%.3lf");
            }
          }

          else
          {
            v17 = 12;
            v16 = 4;
            v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR negative rejection threshold should be outside negative re-weight threshold,reject,%.3lf,reweight,%.3lf");
          }
        }
      }
    }
  }

  if (*(a1 + 231) >= 0)
  {
    LOBYTE(v14) = v8;
  }

  else
  {
    v14 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&v17, &v16, "%s", v9, v10, v11, v12, v13, v14);
  return 0;
}

uint64_t sub_1D0E2DF2C()
{
  qword_1EE054D80 = 0x100000001;
  qword_1EE054D68 = &unk_1F4CDF418;
  qword_1EE054D88 = &unk_1EE054D90;
  *&v0 = 0x100000001;
  *(&v0 + 1) = 0x100000001;
  *&dword_1EE054D70 = v0;
  return sub_1D0BBBC00(&qword_1EE054D68, 0.0);
}

double raven::RavenSequentialGNSSMeasurementSelector::ComputeReweightedMeasurementVariance(uint64_t a1, uint64_t a2)
{
  TargetSigmaCount = raven::RavenSequentialGNSSMeasurementSelector::GetTargetSigmaCount(a1, a2);
  v5 = COERCE_DOUBLE(raven::RavenSequentialGNSSMeasurementSelector::ComputeReweightedMeasurementVariance(a1, a2, TargetSigmaCount));
  if (*(a2 + 184) == 1)
  {
    v8 = *(a2 + 8);
    v9 = *(v8 + 96) - 1;
    v10 = 0.0;
    if (v9 <= 2)
    {
      v10 = *(*(a1 + 192) + qword_1D0EA3E28[v9]);
    }

    v11 = fabs(*(a2 + 152));
    if (v10 <= v11)
    {
      v10 = v11;
    }

    if (v10 <= *(v8 + 168))
    {
      v10 = *(v8 + 168);
    }

    result = v10 * v10;
    if ((v6 & 1) != 0 && result <= v5)
    {
      return v5;
    }
  }

  return result;
}

double raven::RavenSequentialGNSSMeasurementSelector::GetTargetSigmaCount(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  v3 = *(a2 + 8);
  if ((*(v3 + 188) & 1) != 0 || (*(a2 + 184) & 1) == 0)
  {
    return v2[205];
  }

  v6 = *a2;
  result = *(*a2 + 264);
  if (result < v2[309] * 0.0174532925)
  {
    v8 = v2[205];
    v9 = 0.2;
    return v8 * v9;
  }

  v10 = *(v3 + 96);
  if (v10 <= 5)
  {
    v11 = 1 << v10;
    if ((v11 & 0x31) == 0)
    {
      if ((v11 & 0xC) != 0)
      {
        v8 = v2[294];
LABEL_11:
        v9 = v2[205];
        return v8 * v9;
      }

      v12 = v2 + 300;
      v13 = 4;
      do
      {
        if (*(v6 + 304) && *(v6 + 296) > *(v12 - 5))
        {
          v8 = *v12;
          goto LABEL_11;
        }

        ++v12;
        --v13;
      }

      while (v13);
      v22 = 12;
      v21 = 4;
      v14 = sub_1D0BCFAB8(v6);
      if ((*(*a2 + 304) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR no PSR target sigma scale factor found for %s with P(LOS),%.3lf", v14, *(*a2 + 296));
      if (*(a1 + 231) >= 0)
      {
        LOBYTE(v20) = a1 - 48;
      }

      else
      {
        v20 = *(a1 + 208);
      }

      cnprint::CNPrinter::Print(&v22, &v21, "%s", v15, v16, v17, v18, v19, v20);
    }

    return v2[205];
  }

  return result;
}

unint64_t raven::RavenSequentialGNSSMeasurementSelector::ComputeReweightedMeasurementVariance(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a3 * a3;
  v6 = *(a2 + 160);
  v7 = *(a2 + 152) * *(a2 + 152);
  v8 = v7 / v5 - v6;
  if (v8 <= 0.0)
  {
    if (*(a2 + 184))
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v22 = v3;
      v23 = v4;
      v21 = 12;
      v20 = 4;
      v12 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR computed variance,%.3lf,is not positive,dz2,%.3lf,var_pred,%.3lf,TargetSigmaCountSqr,%.3lf", v7 / v5 - v6, v7, v6, v5);
      if (*(a1 + 231) >= 0)
      {
        LOBYTE(v18) = v12;
      }

      else
      {
        v18 = *(a1 + 208);
      }

      cnprint::CNPrinter::Print(&v21, &v20, "%s", v13, v14, v15, v16, v17, v18);
      v10 = 0;
      v9 = 0;
    }
  }

  else
  {
    v9 = *&v8 & 0xFFFFFFFFFFFFFF00;
    v10 = COERCE_UNSIGNED_INT64(v7 / v5 - v6);
  }

  return v9 | v10;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::Configure(uint64_t a1, uint64_t a2, const std::string *a3)
{
  if (*a1 == 1)
  {
    v50 = 12;
    v49 = 2;
    v6 = cnprint::CNLogFormatter::FormatWarning((a1 + 208), "#MSR configured called more than once");
    if (*(a1 + 231) >= 0)
    {
      LOBYTE(v12) = v6;
    }

    else
    {
      v12 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v50, &v49, "%s", v7, v8, v9, v10, v11, v12);
    *a1 = 0;
  }

  if (!a2)
  {
    v50 = 12;
    v49 = 4;
    v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not configured; called with null pointer", v48);
    goto LABEL_32;
  }

  if ((*(a2 + 33) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not configured; called with uninitialized parameters", v48);
    goto LABEL_32;
  }

  v13 = *(a2 + 1640);
  if (v13 <= 0.0)
  {
    v50 = 12;
    v49 = 4;
    v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not configured; invalid target sigma count for re-weighted measurements", v48);
    goto LABEL_32;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1656), *(a2 + 1640)) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v25 = (a1 + 208);
LABEL_29:
    v19 = cnprint::CNLogFormatter::FormatGeneral(v25, "#MSR not configured; invalid pseudorange thresholds,line,%d");
    goto LABEL_32;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1688), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v26 = (a1 + 208);
LABEL_31:
    v19 = cnprint::CNLogFormatter::FormatGeneral(v26, "#MSR not configured; invalid Doppler thresholds,line,%d");
    goto LABEL_32;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1720), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v25 = (a1 + 208);
    goto LABEL_29;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1752), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v26 = (a1 + 208);
    goto LABEL_31;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1784), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v25 = (a1 + 208);
    goto LABEL_29;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1816), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v26 = (a1 + 208);
    goto LABEL_31;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1848), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v25 = (a1 + 208);
    goto LABEL_29;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1880), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v26 = (a1 + 208);
    goto LABEL_31;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1912), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v25 = (a1 + 208);
    goto LABEL_29;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1944), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v26 = (a1 + 208);
    goto LABEL_31;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 1976), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v25 = (a1 + 208);
    goto LABEL_29;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 2008), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v26 = (a1 + 208);
    goto LABEL_31;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 2040), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v25 = (a1 + 208);
    goto LABEL_29;
  }

  if ((raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(a1, (a2 + 2072), v13) & 1) == 0)
  {
    v50 = 12;
    v49 = 4;
    v26 = (a1 + 208);
    goto LABEL_31;
  }

  if (*(a2 + 2112) < 0.0)
  {
    v50 = 12;
    v49 = 4;
    v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not configured; invalid pseudorange L1 vs L5 difference outlier threshold, %0.3f");
LABEL_32:
    if (*(a1 + 231) >= 0)
    {
      LOBYTE(v27) = v19;
    }

    else
    {
      v27 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v50, &v49, "%s", v20, v21, v22, v23, v24, v27);
    return 0;
  }

  if (*(a2 + 2120) < 0.0)
  {
    v50 = 12;
    v49 = 4;
    v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not configured; invalid doppler L1 vs L5 innovation difference outlier threshold, %0.3f");
    goto LABEL_32;
  }

  v29 = *(a2 + 2128);
  if (v29 < 0.0 || v29 > 1.0)
  {
    v50 = 12;
    v49 = 4;
    v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not configured; invalid L1 vs L5 innovation difference inlier threshold fraction, %0.3f");
    goto LABEL_32;
  }

  if (*(a2 + 2176) < 1.0)
  {
    v50 = 12;
    v49 = 4;
    v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not configured; invalid L1 vs L5 choice 'if uncertainty worse by' default factor, %0.3f");
    goto LABEL_32;
  }

  if (*(a2 + 2184) < 1.0)
  {
    v50 = 12;
    v49 = 4;
    v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not configured; invalid L1 vs L5 choice 'if uncertainty worse by' periodic motion factor, %0.3f");
    goto LABEL_32;
  }

  v30 = *(a2 + 2240);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v30 < 0.0 || v30 > 1.0)
  {
    v50 = 12;
    v49 = 4;
    cnprint::CNPrinter::Print(&v50, &v49, "#MSR not configured; invalid minimum P(LOS) value for classifying satellite as having high-P(LOS),%.3lf", v14, v15, v16, v17, v18, *(*(a1 + 192) + 2240));
    return 0;
  }

  v31 = *(a2 + 2272);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v31 <= v30)
  {
    v50 = 12;
    v49 = 4;
    cnprint::CNPrinter::Print(&v50, &v49, "#MSR not configured; invalid minimum best probability los for reliability,%.3lf", v14, v15, v16, v17, v18, SLOBYTE(v31));
    return 0;
  }

  v32 = *(a2 + 2352);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v32 <= 0.0 || v32 > 1.0)
  {
    v50 = 12;
    v49 = 4;
    cnprint::CNPrinter::Print(&v50, &v49, "#MSR not configured; invalid Doppler target sigma count scale factor for low-P(LOS) measurements,%.3lf", v14, v15, v16, v17, v18, SLOBYTE(v32));
    return 0;
  }

  for (i = 0; i != 32; i += 8)
  {
    v34 = *(a2 + 2400 + i);
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v34 > 0.0 && v34 <= 1.0)
    {
      continue;
    }

    v50 = 12;
    v49 = 4;
    cnprint::CNPrinter::Print(&v50, &v49, "#MSR not configured; invalid PSR target sigma count scale fact,%.3lf", v14, v15, v16, v17, v18, SLOBYTE(v34));
    return 0;
  }

  v36 = *(a2 + 2472);
  if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v36 < 0.0 || v36 > 90.0)
  {
    v50 = 12;
    v49 = 4;
    cnprint::CNPrinter::Print(&v50, &v49, "#MSR not configured; invalid minimum satellite elevation threshold for using low-P(LOS) measurement,%.3lf deg", v14, v15, v16, v17, v18, SLOBYTE(v36));
    return 0;
  }

  v37 = 0;
  v38 = a2 + 2360;
  do
  {
    v39 = *(v38 + 8 * v37);
    if (v39 < 0.0 || v39 >= v30)
    {
      v50 = 12;
      v49 = 4;
      cnprint::CNPrinter::Print(&v50, &v49, "#MSR not configured; invalid lower bound of %dth low-P(LOS) bin,%.1lf", v14, v15, v16, v17, v18, v37);
      return 0;
    }

    if (v37 && *(v38 + 8 * (v37 - 1)) <= v39)
    {
      v50 = 12;
      v49 = 4;
      cnprint::CNPrinter::Print(&v50, &v49, "#MSR not configured; non-descending order of lower bounds of low-P(LOS) bins between %dth and %dth bin,(%.1lf < %.1lf)", v14, v15, v16, v17, v18, v37 - 1);
      return 0;
    }

    ++v37;
  }

  while (v37 != 4);
  raven::GNSSMeasurementSelectionParameters::GetExpectedConstellations((a2 + 592), (a1 + 48));
  v42 = *(a2 + 928);
  if ((*&v42 <= -1 || ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v42 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v42 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v42 > 1.0)
  {
    v50 = 12;
    v49 = 4;
    v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not configured; invalid nonstationary false positive probability,%.3lf");
    goto LABEL_32;
  }

  v47 = cnstatistics::InverseNormal(v41, 1.0 - v42, 0.0, 1.0);
  *(a1 + 200) = v47 * v47;
  *(a1 + 192) = a2;
  std::string::operator=((a1 + 232), a3);
  result = 1;
  *a1 = 1;
  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::EnableLoggingToFile(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1640))
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v26 = 12;
      v25 = 1;
      v3 = cnprint::CNLogFormatter::FormatWarning((a1 + 208), "#MSR logging file already open; no action taken");
      if (*(a1 + 231) >= 0)
      {
        LOBYTE(v9) = v3;
      }

      else
      {
        v9 = *(a1 + 208);
      }

      cnprint::CNPrinter::Print(&v26, &v25, "%s", v4, v5, v6, v7, v8, v9);
    }
  }

  else
  {
    v11 = (a1 + 1512);
    v12 = std::ofstream::open();
    v13 = *v11;
    v14 = v11 + *(*v11 - 24);
    if ((v14[32] & 5) != 0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
      {
        v24 = 12;
        v23 = 1;
        if (*(a2 + 23) >= 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = *a2;
        }

        v16 = cnprint::CNLogFormatter::FormatWarning((a1 + 208), "#MSR could not open logging file '%s'", v15);
        if (*(a1 + 231) >= 0)
        {
          LOBYTE(v22) = v16;
        }

        else
        {
          v22 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(&v24, &v23, "%s", v17, v18, v19, v20, v21, v22);
      }

      *(a1 + 1506) = 0;
    }

    else
    {
      *(v14 + 2) = *(v14 + 2) & 0xFFFFFEFB | 4;
      *(v11 + *(v13 - 24) + 8) |= 0x400u;
      *(a1 + 1506) = 1;
    }
  }
}

void *raven::RavenSequentialGNSSMeasurementSelector::LogChangePseudorangeReordering(void *result, uint64_t a2, uint64_t a3)
{
  if (*(result + 1) && *(result + 1506))
  {
    v5 = sub_1D0BCD7C4(result + 189, "NOTE: Pseudorange from SV ", 26);
    v6 = sub_1D0BCFAB8(a2);
    v7 = strlen(v6);
    v8 = sub_1D0BCD7C4(v5, v6, v7);
    v9 = sub_1D0BCD7C4(v8, " moved before that of SV ", 25);
    v10 = sub_1D0BCFAB8(a3);
    v11 = strlen(v10);
    v12 = sub_1D0BCD7C4(v9, v10, v11);

    return sub_1D0BCD7C4(v12, "\n\n", 2);
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::GetUnprocessedMSRData(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D0BCC0B4(a3);
  for (i = *(a2 + 96); i != *(a2 + 104); i += 2)
  {
    if (*i)
    {
      if (*(*i + 328) != *(*i + 336))
      {
        v5 = *i;
        sub_1D0E30FFC();
      }
    }
  }

  return 1;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::GetUsableLowPLOSMeasurements@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a3;
  a3[1] = a3;
  a3[2] = 0;
  v3 = a2[1];
  if (v3 != a2)
  {
    v4 = 0;
    v5 = *(result + 192);
    v6 = *(v5 + 2472) * 0.0174532925;
    v7 = a2[2];
    do
    {
      v8 = v3;
      v3 = v3[1];
      v9 = v8[2];
      if (*(v9 + 304) != 1 || *(v9 + 296) < *(v5 + 2240))
      {
        if (*(result + 88) != 1)
        {
          goto LABEL_12;
        }

        if (*(v9 + 264) >= v6)
        {
          if (((*(v5 + 2394) & 1) != 0 || *(v8[3] + 96) != 1) && ((*(v5 + 2393) & 1) != 0 || (*(v8[3] + 96) - 2) > 2))
          {
LABEL_12:
            *(v8 + 200) = 1;
            v8[24] = 0;
            if (v8 != a3 && v3 != a3)
            {
              v10 = *v8;
              *(v10 + 8) = v3;
              *v3 = v10;
              v11 = *a3;
              *(v11 + 8) = v8;
              *v8 = v11;
              *a3 = v8;
              v8[1] = a3;
              a2[2] = --v7;
              a3[2] = ++v4;
            }

            continue;
          }

          *(v8 + 200) = 0;
          v8[24] = 0x100000002;
        }
      }
    }

    while (v3 != a2);
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::LogPVT(uint64_t a1, int a2, uint64_t a3)
{
  sub_1D0B751F4(&__p, "\n");
  if (*(a1 + 1))
  {
    if (*(a1 + 1506))
    {
      sub_1D0BD2CA4(v176, **(a1 + 288), *(*(a1 + 288) + 8), *(*(a1 + 288) + 16));
      if (v176[8])
      {
        v174 = vdupq_n_s64(0x7FF8000000000000uLL);
        v175 = NAN;
        v172 = v174;
        v173 = NAN;
        v170 = v174;
        v171 = NAN;
        if (*(a1 + 2304) == 1)
        {
          memset(v180, 0, sizeof(v180));
          v6 = *(a1 + 288);
          v7 = *(a1 + 2232);
          *v180 = vsubq_f64(*v6, *v7);
          *&v180[16] = v6[1].f64[0] - v7[1].f64[0];
          sub_1D0BED7A0(v176, v180, v174.i64);
        }

        if (*(a1 + 2416) == 1)
        {
          memset(v180, 0, sizeof(v180));
          v8 = *(a1 + 288);
          v9 = *(a1 + 2344);
          *v180 = vsubq_f64(*v8, *v9);
          *&v180[16] = v8[1].f64[0] - v9[1].f64[0];
          sub_1D0BED7A0(v176, v180, v172.i64);
        }

        if ((atomic_load_explicit(&qword_1EE054D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054D58))
        {
          v181 = 0x300000001;
          *v180 = &unk_1F4CDF0C8;
          v182 = &v183;
          *&v180[8] = xmmword_1D0E7F310;
          v183 = 0x100000000;
          v184 = 2;
          sub_1D0D2CF48(v180, &unk_1EE054D98);
          __cxa_atexit(sub_1D0D26840, &unk_1EE054D98, &dword_1D0B71000);
          __cxa_guard_release(&qword_1EE054D58);
        }

        sub_1D0D2D730(a1 + 360, &unk_1EE054D98, &unk_1EE054D98, v180);
        v167 = 0x300000003;
        *v166 = &unk_1F4CD5DD0;
        *&v166[8] = xmmword_1D0E76C10;
        v168 = v169;
        if (sub_1D0BFE654(v176, v180, v166))
        {
          v10 = sqrt(*v168);
          v11 = sqrt(v168[*&v166[20] + 1]);
          v12 = sqrt(v168[2 * *&v166[20] + 2]);
        }

        else
        {
          v12 = NAN;
          v11 = NAN;
          v10 = NAN;
        }

        v185 = 0uLL;
        v186 = 0.0;
        v13 = *(a1 + 944);
        v185 = *v13;
        v186 = v13[1].f64[0];
        sub_1D0BED7A0(v176, v185.f64, v170.i64);
        v164 = vdupq_n_s64(0x7FF8000000000000uLL);
        v165 = NAN;
        v162 = v164;
        v163 = NAN;
        v14 = *(a1 + 288);
        v185 = *(v14 + 24);
        v186 = *(v14 + 40);
        sub_1D0BED7A0(v176, v185.f64, v164.i64);
        v15 = *v164.i64 * *v164.i64 + *&v164.i64[1] * *&v164.i64[1];
        if (fabs(*v164.i64) > 0.0005 || fabs(*&v164.i64[1]) > 0.0005)
        {
          v17 = atan2(*v164.i64, *&v164.i64[1]);
          if (v17 >= 0.0)
          {
            v16 = v17;
          }

          else
          {
            v16 = v17 + 6.28318531;
          }

          v154 = v16 * 57.2957795;
        }

        else
        {
          v16 = NAN;
          v154 = NAN;
        }

        v159 = sqrt(v15);
        v149 = v12;
        v150 = v11;
        v152 = v10;
        if (*(a1 + 2416) == 1)
        {
          v18 = *(a1 + 2344);
          *v180 = *(v18 + 24);
          *&v180[16] = *(v18 + 40);
          sub_1D0BED7A0(v176, v180, v166);
          v19 = v164;
          v20 = *v166;
          v21 = v165;
          v22 = *&v166[16];
          v23 = sqrt(*&v20 * *&v20 + *&v166[8] * *&v166[8]);
          if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (fabs(*v164.i64) > 0.0005 || fabs(*&v164.i64[1]) > 0.0005))
          {
            v148 = v165;
            v24 = (v16 - atan2(*v166, *&v166[8])) * 57.2957795;
            if (fabs(v24) > 180.0)
            {
              v28 = dbl_1D0E83970[v24 >= 0.0];
              v24 = fmod(v24 + v28, 360.0) - v28;
            }

            v21 = v148;
          }

          else
          {
            v24 = NAN;
          }

          v147 = *v19.i64 - *&v20;
          v26 = *&v19.i64[1] - *(&v20 + 1);
          v25 = v21 - v22;
          v27 = v159 - v23;
        }

        else
        {
          v25 = NAN;
          v26 = NAN;
          v147 = NAN;
          v24 = NAN;
          v27 = NAN;
        }

        if ((atomic_load_explicit(&qword_1EE054D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054D60))
        {
          v181 = 0x300000001;
          *v180 = &unk_1F4CDF0C8;
          v182 = &v183;
          *&v180[8] = xmmword_1D0E7F310;
          v183 = 0x400000003;
          v184 = 5;
          sub_1D0D2CF48(v180, &unk_1EE054DD0);
          __cxa_atexit(sub_1D0D26840, &unk_1EE054DD0, &dword_1D0B71000);
          __cxa_guard_release(&qword_1EE054D60);
        }

        sub_1D0D2D730(a1 + 360, &unk_1EE054DD0, &unk_1EE054DD0, v180);
        v167 = 0x300000003;
        *v166 = &unk_1F4CD5DD0;
        *&v166[8] = xmmword_1D0E76C10;
        v168 = v169;
        v146 = v26;
        v29 = v24;
        if (sub_1D0BFE654(v176, v180, v166))
        {
          v30 = sqrt(*v168);
          v31 = sqrt(v168[*&v166[20] + 1]);
          v32 = sqrt(v168[2 * *&v166[20] + 2]);
        }

        else
        {
          v32 = NAN;
          v31 = NAN;
          v30 = NAN;
        }

        v33 = *(a1 + 944);
        v160 = *(v33 + 24);
        v161 = *(v33 + 40);
        sub_1D0BED7A0(v176, &v160, v162.i64);
        v34 = (a1 + 1512);
        if (*(a1 + 2416) == 1)
        {
          v35 = vmulq_f64(vsubq_f64(*(*(a1 + 288) + 48), *(*(a1 + 2344) + 48)), vdupq_n_s64(0x4072BCADE8709742uLL));
        }

        else
        {
          v35 = vdupq_n_s64(0x7FF8000000000000uLL);
        }

        v156 = v35;
        v36 = *(a1 + 380);
        v37 = *(a1 + 392);
        v38 = *(v37 + 48 * v36 + 48);
        v39 = *(v37 + 56 * v36 + 56);
        v40 = *(a1 + 944);
        v144 = *(v40 + 56);
        v145 = *(v40 + 48);
        v41 = *(a1 + 1512);
        *(v34 + *(v41 - 24) + 16) = 3;
        *(v34 + *(v41 - 24) + 24) = 11;
        v42 = sub_1D0BCD7C4((a1 + 1512), "PVT ENU", 7);
        *(v42 + *(*v42 - 24) + 24) = 2;
        if (a2)
        {
          v43 = "+";
        }

        else
        {
          v43 = "-";
        }

        v44 = sub_1D0BCD7C4(v42, v43, 1);
        *(v44 + *(*v44 - 24) + 24) = 14;
        v45 = sub_1D0BCD7C4(v44, "[m or m/s] : ", 13);
        *(v45 + *(*v45 - 24) + 24) = 13;
        v46 = MEMORY[0x1D387E990](*v174.i64);
        *(v46 + *(*v46 - 24) + 24) = 13;
        v47 = MEMORY[0x1D387E990](*&v174.i64[1]);
        *(v47 + *(*v47 - 24) + 24) = 13;
        v48 = MEMORY[0x1D387E990](v175);
        *(v48 + *(*v48 - 24) + 24) = 13;
        v49 = MEMORY[0x1D387E990](*v164.i64);
        *(v49 + *(*v49 - 24) + 24) = 13;
        v50 = MEMORY[0x1D387E990](*&v164.i64[1]);
        *(v50 + *(*v50 - 24) + 24) = 13;
        v51 = MEMORY[0x1D387E990](v165);
        *(v51 + *(*v51 - 24) + 24) = 13;
        v52 = MEMORY[0x1D387E990](*(*(a1 + 288) + 48) * 299.792458);
        *(v52 + *(*v52 - 24) + 24) = 13;
        v53 = MEMORY[0x1D387E990](*(*(a1 + 288) + 56) * 299.792458);
        *(v53 + *(*v53 - 24) + 24) = 13;
        v54 = MEMORY[0x1D387E990](v159);
        v55 = *v54;
        *(v54 + *(*v54 - 24) + 16) = 2;
        *(v54 + *(v55 - 24) + 24) = 13;
        v56 = MEMORY[0x1D387E990](v154);
        if ((v179 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v179 & 0x80u) == 0)
        {
          v58 = v179;
        }

        else
        {
          v58 = v178;
        }

        sub_1D0BCD7C4(v56, p_p, v58);
        v59 = *v34;
        *(v34 + *(*v34 - 24) + 16) = 3;
        *(v34 + *(v59 - 24) + 24) = 11;
        v60 = sub_1D0BCD7C4((a1 + 1512), "PVT ENU Unc", 11);
        *(v60 + *(*v60 - 24) + 24) = 2;
        v61 = sub_1D0BCD7C4(v60, v43, 1);
        *(v61 + *(*v61 - 24) + 24) = 14;
        v62 = sub_1D0BCD7C4(v61, "[m or m/s] : ", 13);
        *(v62 + *(*v62 - 24) + 24) = 13;
        v63 = MEMORY[0x1D387E990](v152);
        *(v63 + *(*v63 - 24) + 24) = 13;
        v64 = MEMORY[0x1D387E990](v150);
        *(v64 + *(*v64 - 24) + 24) = 13;
        v65 = MEMORY[0x1D387E990](v149);
        *(v65 + *(*v65 - 24) + 24) = 13;
        v66 = MEMORY[0x1D387E990](v30);
        *(v66 + *(*v66 - 24) + 24) = 13;
        v67 = MEMORY[0x1D387E990](v31);
        *(v67 + *(*v67 - 24) + 24) = 13;
        v68 = MEMORY[0x1D387E990](v32);
        *(v68 + *(*v68 - 24) + 24) = 13;
        v69 = MEMORY[0x1D387E990](sqrt(v38) * 299.792458);
        *(v69 + *(*v69 - 24) + 24) = 13;
        v70 = MEMORY[0x1D387E990](sqrt(v39) * 299.792458);
        if ((v179 & 0x80u) == 0)
        {
          v71 = &__p;
        }

        else
        {
          v71 = __p;
        }

        if ((v179 & 0x80u) == 0)
        {
          v72 = v179;
        }

        else
        {
          v72 = v178;
        }

        sub_1D0BCD7C4(v70, v71, v72);
        if (a2)
        {
          v73 = *v34;
          *(v34 + *(*v34 - 24) + 16) = 3;
          *(v34 + *(v73 - 24) + 24) = 11;
          v74 = sub_1D0BCD7C4((a1 + 1512), "Cum dx ENU", 10);
          *(v74 + *(*v74 - 24) + 24) = 2;
          v75 = sub_1D0BCD7C4(v74, "+", 1);
          *(v75 + *(*v75 - 24) + 24) = 14;
          v76 = sub_1D0BCD7C4(v75, "[m or m/s] : ", 13);
          *(v76 + *(*v76 - 24) + 24) = 13;
          v77 = MEMORY[0x1D387E990](*v170.i64);
          *(v77 + *(*v77 - 24) + 24) = 13;
          v78 = MEMORY[0x1D387E990](*&v170.i64[1]);
          *(v78 + *(*v78 - 24) + 24) = 13;
          v79 = MEMORY[0x1D387E990](v171);
          *(v79 + *(*v79 - 24) + 24) = 13;
          v80 = MEMORY[0x1D387E990](*v162.i64);
          *(v80 + *(*v80 - 24) + 24) = 13;
          v81 = MEMORY[0x1D387E990](*&v162.i64[1]);
          *(v81 + *(*v81 - 24) + 24) = 13;
          v82 = MEMORY[0x1D387E990](v163);
          *(v82 + *(*v82 - 24) + 24) = 13;
          v83 = MEMORY[0x1D387E990](v145 * 299.792458);
          *(v83 + *(*v83 - 24) + 24) = 13;
          v84 = MEMORY[0x1D387E990](v144 * 299.792458);
          if ((v179 & 0x80u) == 0)
          {
            v85 = &__p;
          }

          else
          {
            v85 = __p;
          }

          if ((v179 & 0x80u) == 0)
          {
            v86 = v179;
          }

          else
          {
            v86 = v178;
          }

          sub_1D0BCD7C4(v84, v85, v86);
        }

        v87 = *v34;
        *(v34 + *(*v34 - 24) + 16) = 3;
        *(v34 + *(v87 - 24) + 24) = 11;
        v88 = sub_1D0BCD7C4((a1 + 1512), "dPVT ENU", 8);
        *(v88 + *(*v88 - 24) + 24) = 2;
        v89 = sub_1D0BCD7C4(v88, v43, 1);
        *(v89 + *(*v89 - 24) + 24) = 14;
        v90 = sub_1D0BCD7C4(v89, "[m or m/s] : ", 13);
        *(v90 + *(*v90 - 24) + 24) = 13;
        v91 = MEMORY[0x1D387E990](*v172.i64);
        *(v91 + *(*v91 - 24) + 24) = 13;
        v92 = MEMORY[0x1D387E990](*&v172.i64[1]);
        *(v92 + *(*v92 - 24) + 24) = 13;
        v93 = MEMORY[0x1D387E990](v173);
        *(v93 + *(*v93 - 24) + 24) = 13;
        v94 = MEMORY[0x1D387E990](v147);
        *(v94 + *(*v94 - 24) + 24) = 13;
        v95 = MEMORY[0x1D387E990](v146);
        *(v95 + *(*v95 - 24) + 24) = 13;
        v96 = MEMORY[0x1D387E990](v25);
        *(v96 + *(*v96 - 24) + 24) = 13;
        v97 = MEMORY[0x1D387E990](v156);
        *(v97 + *(*v97 - 24) + 24) = 13;
        v98 = MEMORY[0x1D387E990](v156.n128_f64[1]);
        *(v98 + *(*v98 - 24) + 24) = 13;
        v99 = MEMORY[0x1D387E990](v27);
        v100 = *v99;
        *(v99 + *(*v99 - 24) + 16) = 2;
        *(v99 + *(v100 - 24) + 24) = 13;
        v101 = MEMORY[0x1D387E990](v29);
        if ((v179 & 0x80u) == 0)
        {
          v102 = &__p;
        }

        else
        {
          v102 = __p;
        }

        if ((v179 & 0x80u) == 0)
        {
          v103 = v179;
        }

        else
        {
          v103 = v178;
        }

        sub_1D0BCD7C4(v101, v102, v103);
        if (a3)
        {
          v105 = *(a1 + 288);
          v106 = v105[1].f64[0];
          v157 = *v105;
          v107 = CNTimeSpan::operator-((a1 + 96), a3, *v105, v104);
          v109 = v108 + v107;
          v110 = *(a3 + 56);
          v185 = vsubq_f64(v157, vmlaq_n_f64(v110, *(a3 + 120), v109));
          v111 = *(a3 + 72);
          v186 = v106 - (v111 + *(a3 + 136) * v109);
          *v166 = vdupq_n_s64(0x7FF8000000000000uLL);
          *&v166[16] = 0x7FF8000000000000;
          sub_1D0BD2CA4(v180, v110.f64[0], v110.f64[1], v111);
          if (v180[8] == 1)
          {
            sub_1D0BED7A0(v180, v185.f64, v166);
            v112 = *&v166[8];
            v113 = *v166;
            v114 = *&v166[16];
          }

          else
          {
            v114 = NAN;
            v112 = NAN;
            v113 = NAN;
          }

          v115 = *(a1 + 288);
          v116 = *(v115 + 40);
          v185 = vsubq_f64(*(v115 + 24), *(a3 + 120));
          v186 = v116 - *(a3 + 136);
          *v166 = vdupq_n_s64(0x7FF8000000000000uLL);
          *&v166[16] = 0x7FF8000000000000;
          sub_1D0BD2CA4(v180, *(a3 + 56), *(a3 + 64), *(a3 + 72));
          if (v180[8] == 1)
          {
            sub_1D0BED7A0(v180, v185.f64, v166);
            v117 = *&v166[8];
            v118 = *v166;
            v119 = *&v166[16];
          }

          else
          {
            v119 = NAN;
            v117 = NAN;
            v118 = NAN;
          }

          v120 = *(a3 + 40);
          v121 = v154 - v120;
          v151 = *(a3 + 48);
          if (vabdd_f64(v154, v120) > 180.0)
          {
            v122 = dbl_1D0E83970[v121 >= 0.0];
            v121 = fmod(v121 + v122, 360.0) - v122;
          }

          v123 = *(a1 + 288);
          v155 = *(v123 + 56);
          v158 = *(v123 + 48);
          v124 = *(a3 + 104);
          v153 = *(a3 + 112);
          v125 = *(a1 + 1512);
          *(v34 + *(v125 - 24) + 16) = 3;
          *(v34 + *(v125 - 24) + 24) = 11;
          v126 = sub_1D0BCD7C4((a1 + 1512), "PVT ENU Err", 11);
          *(v126 + *(*v126 - 24) + 24) = 2;
          v127 = sub_1D0BCD7C4(v126, v43, 1);
          *(v127 + *(*v127 - 24) + 24) = 14;
          v128 = sub_1D0BCD7C4(v127, "[m or m/s] : ", 13);
          *(v128 + *(*v128 - 24) + 24) = 13;
          v129 = MEMORY[0x1D387E990](v113);
          *(v129 + *(*v129 - 24) + 24) = 13;
          v130 = MEMORY[0x1D387E990](v112);
          *(v130 + *(*v130 - 24) + 24) = 13;
          v131 = MEMORY[0x1D387E990](v114);
          *(v131 + *(*v131 - 24) + 24) = 13;
          v132 = MEMORY[0x1D387E990](v118);
          *(v132 + *(*v132 - 24) + 24) = 13;
          v133 = MEMORY[0x1D387E990](v117);
          *(v133 + *(*v133 - 24) + 24) = 13;
          v134 = MEMORY[0x1D387E990](v119);
          *(v134 + *(*v134 - 24) + 24) = 13;
          v135 = MEMORY[0x1D387E990](-(v124 - v158 * 299.792458));
          *(v135 + *(*v135 - 24) + 24) = 13;
          v136 = MEMORY[0x1D387E990](-(v153 - v155 * 299.792458));
          *(v136 + *(*v136 - 24) + 24) = 13;
          v137 = MEMORY[0x1D387E990](v159 - v151);
          v138 = *v137;
          *(v137 + *(*v137 - 24) + 16) = 2;
          *(v137 + *(v138 - 24) + 24) = 13;
          v139 = MEMORY[0x1D387E990](v121);
          if ((v179 & 0x80u) == 0)
          {
            v140 = &__p;
          }

          else
          {
            v140 = __p;
          }

          if ((v179 & 0x80u) == 0)
          {
            v141 = v179;
          }

          else
          {
            v141 = v178;
          }

          sub_1D0BCD7C4(v139, v140, v141);
        }

        if ((v179 & 0x80u) == 0)
        {
          v142 = &__p;
        }

        else
        {
          v142 = __p;
        }

        if ((v179 & 0x80u) == 0)
        {
          v143 = v179;
        }

        else
        {
          v143 = v178;
        }

        sub_1D0BCD7C4((a1 + 1512), v142, v143);
      }
    }
  }

  if (v179 < 0)
  {
    operator delete(__p);
  }
}

void sub_1D0E303E0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE054D60);
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  _Unwind_Resume(a1);
}

void *raven::RavenSequentialGNSSMeasurementSelector::LogPLOSBasedUsableMeasurementCount(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a2)
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(v3 + 24);
      v21 = (*(v20 + 100) > 9uLL) | (0x144u >> *(v20 + 100));
      v22 = *(v3 + 192);
      if ((v22 - 4) >= 2)
      {
        if (v22 == 3)
        {
          v24 = *(v20 + 96);
          if (*(v3 + 200))
          {
            if (v24 == 1)
            {
              if (v21)
              {
                ++v14;
              }

              else
              {
                ++v13;
              }
            }

            else if (v21)
            {
              ++v12;
            }

            else
            {
              ++v11;
            }
          }

          else if (v24 == 1)
          {
            if (v21)
            {
              v10 = (v10 + 1);
            }

            else
            {
              v10 = v10;
            }

            if ((v21 & 1) == 0)
            {
              ++v9;
            }
          }

          else if (v21)
          {
            ++v8;
          }

          else
          {
            ++v7;
          }
        }
      }

      else
      {
        v23 = *(v20 + 96);
        if (*(v3 + 200))
        {
          if (v23 == 1)
          {
            if (v21)
            {
              v5 = v5;
            }

            else
            {
              v5 = (v5 + 1);
            }

            if (v21)
            {
              v4 = (v4 + 1);
            }

            else
            {
              v4 = v4;
            }
          }

          else
          {
            if (v21)
            {
              v19 = v19;
            }

            else
            {
              v19 = (v19 + 1);
            }

            if (v21)
            {
              v6 = (v6 + 1);
            }

            else
            {
              v6 = v6;
            }
          }
        }

        else if (v23 == 1)
        {
          if (v21)
          {
            v18 = (v18 + 1);
          }

          else
          {
            v18 = v18;
          }

          if (v21)
          {
            v17 = v17;
          }

          else
          {
            v17 = (v17 + 1);
          }
        }

        else
        {
          if (v21)
          {
            v16 = (v16 + 1);
          }

          else
          {
            v16 = v16;
          }

          if (v21)
          {
            v15 = v15;
          }

          else
          {
            v15 = (v15 + 1);
          }
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != a2);
  }

  v68 = v14;
  v69 = v9;
  v70 = v13;
  v71 = v8;
  v72 = v12;
  v73 = v7;
  v74 = v11;
  v25 = sub_1D0BCD7C4((a1 + 1512), "Num H/L-P(LOS) Meas accepts: ", 29);
  v26 = sub_1D0BCD7C4(v25, "  L5PSR (", 9);
  v27 = MEMORY[0x1D387E9D0](v26, v18);
  v28 = sub_1D0BCD7C4(v27, ", ", 2);
  v29 = MEMORY[0x1D387E9D0](v28, v4);
  v30 = sub_1D0BCD7C4(v29, ")", 1);
  v31 = sub_1D0BCD7C4(v30, "  L1PSR (", 9);
  v32 = MEMORY[0x1D387E9D0](v31, v17);
  v33 = sub_1D0BCD7C4(v32, ", ", 2);
  v34 = MEMORY[0x1D387E9D0](v33, v5);
  v35 = sub_1D0BCD7C4(v34, ")", 1);
  v36 = sub_1D0BCD7C4(v35, "  L5Dop (", 9);
  v37 = MEMORY[0x1D387E9D0](v36, v16);
  v38 = sub_1D0BCD7C4(v37, ", ", 2);
  v39 = MEMORY[0x1D387E9D0](v38, v6);
  v40 = sub_1D0BCD7C4(v39, ")", 1);
  v41 = sub_1D0BCD7C4(v40, "  L1Dop (", 9);
  v42 = MEMORY[0x1D387E9D0](v41, v15);
  v43 = sub_1D0BCD7C4(v42, ", ", 2);
  v44 = MEMORY[0x1D387E9D0](v43, v19);
  v45 = sub_1D0BCD7C4(v44, ")", 1);
  sub_1D0BCD7C4(v45, "\n", 1);
  v46 = sub_1D0BCD7C4((a1 + 1512), "Num H/L-P(LOS) Meas rejects: ", 29);
  v47 = sub_1D0BCD7C4(v46, "  L5PSR (", 9);
  v48 = MEMORY[0x1D387E9D0](v47, v10);
  v49 = sub_1D0BCD7C4(v48, ", ", 2);
  v50 = MEMORY[0x1D387E9D0](v49, v68);
  v51 = sub_1D0BCD7C4(v50, ")", 1);
  v52 = sub_1D0BCD7C4(v51, "  L1PSR (", 9);
  v53 = MEMORY[0x1D387E9D0](v52, v69);
  v54 = sub_1D0BCD7C4(v53, ", ", 2);
  v55 = MEMORY[0x1D387E9D0](v54, v70);
  v56 = sub_1D0BCD7C4(v55, ")", 1);
  v57 = sub_1D0BCD7C4(v56, "  L5Dop (", 9);
  v58 = MEMORY[0x1D387E9D0](v57, v71);
  v59 = sub_1D0BCD7C4(v58, ", ", 2);
  v60 = MEMORY[0x1D387E9D0](v59, v72);
  v61 = sub_1D0BCD7C4(v60, ")", 1);
  v62 = sub_1D0BCD7C4(v61, "  L1Dop (", 9);
  v63 = MEMORY[0x1D387E9D0](v62, v73);
  v64 = sub_1D0BCD7C4(v63, ", ", 2);
  v65 = MEMORY[0x1D387E9D0](v64, v74);
  v66 = sub_1D0BCD7C4(v65, ")", 1);

  return sub_1D0BCD7C4(v66, "\n", 1);
}

void *sub_1D0E30940(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v4 + 36) = v6;
  }

  *(v4 + 36) = a2;
  return a1;
}

void *raven::RavenSequentialGNSSMeasurementSelector::ReTestInnovationsAndUpdateEstimator(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = raven::RavenSequentialGNSSMeasurementSelector::TestInnovationsAndUpdateEstimator(a1, a2, 0, v12);
  if (v13 == 1)
  {
    result = sub_1D0BCC0B4(v12);
  }

  v6 = a2[2];
  if (v6)
  {
    v8 = *a2;
    v7 = a2[1];
    v9 = *(*a2 + 8);
    v10 = *v7;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = *a3;
    *(v11 + 8) = v7;
    *v7 = v11;
    *a3 = v8;
    *(v8 + 8) = a3;
    a3[2] += v6;
    a2[2] = 0;
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::Reset(raven::RavenSequentialGNSSMeasurementSelector *this)
{
  raven::RavenSequentialGNSSMeasurementSelector::ResetEpochSpecificMembers(this);
  if (*(this + 2192) == 1)
  {
    *(this + 2192) = 0;
  }

  if (*(this + 2416) == 1)
  {
    *(this + 289) = &unk_1F4CD5E28;
    *(this + 2416) = 0;
  }
}

BOOL raven::RavenSequentialGNSSMeasurementSelector::ShouldLowPLOSMeasurementsBeConsideredInEstimator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  if (!*(v2 + 2392) || !*(a1 + 1272))
  {
    return 0;
  }

  if (!*(a1 + 88))
  {
    return 1;
  }

  if (*(a1 + 2088))
  {
    return 0;
  }

  v4 = *(a1 + 2080);
  if (v4 > 0x14)
  {
    return 0;
  }

  v5 = *(a1 + 2084);
  if (v5 > 0x14)
  {
    return 0;
  }

  result = 1;
  if (v4 >= 4 && v5 >= 4)
  {
    v7 = COERCE_DOUBLE(sub_1D0E30B9C(a2, *(v2 + 2240)));
    return (v8 & 1) != 0 && *(*(a1 + 192) + 2448) <= v7;
  }

  return result;
}

unint64_t sub_1D0E30B9C(uint64_t a1, double a2)
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37[0] = 0;
  v38 = 0;
  v39 = 1;
  sub_1D0BC3E34(&v40);
  v43 = 1;
  __p = 0;
  v34 = 0;
  v35 = 0;
  v30[0] = 0;
  v31 = 0;
  v32 = 1;
  sub_1D0BC3E34(&__p);
  v36 = 1;
  v8 = *(a1 + 8);
  if (v8 == a1)
  {
LABEL_13:
    v26 = 0;
    v25 = 0;
    goto LABEL_15;
  }

  v9 = 0;
  do
  {
    v10 = *(v8 + 24);
    if (*(v10 + 96) == 1)
    {
      v11 = *(v8 + 16);
      if (*(v11 + 304) == 1 && *(v11 + 296) >= a2 && (*(v8 + 192) & 0xFFFFFFFE) != 2)
      {
        v29 = *(v10 + 120) - *(v8 + 48);
        sub_1D0BC3F08(v37, &v29, 1.0);
        v28 = fabs(v29);
        sub_1D0BC3F08(v30, &v28, 1.0);
        if (++v9 > 9)
        {
          break;
        }
      }
    }

    v8 = *(v8 + 8);
  }

  while (v8 != a1);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_12;
    }

    v4.i64[0] = 0x4052C00000000000;
    sub_1D0BC4124(v37, v4, v5, v6, v7);
    v13 = v12;
    v14.i64[0] = 25.0;
    sub_1D0BC4124(v37, v14, v15, v16, v17);
    v19 = v18;
    v20.i64[0] = 0x4049000000000000;
    sub_1D0BC4124(v37, v20, v21, v22, v23);
    v5 = v13 - v19;
    v6 = 0.3;
    if (v13 - v19 > *v4.i64 * 0.3)
    {
LABEL_12:
      v4.i64[0] = 0x4049000000000000;
      sub_1D0BC4124(v30, v4, v5, v6, v7);
      v25 = v24 & 0xFFFFFFFFFFFFFF00;
      v26 = v24;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v26 = 0;
  v25 = 0;
LABEL_15:
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  return v25 | v26;
}

void sub_1D0E30D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E30DCC(uint64_t a1)
{
  *a1 = &unk_1F4CEC228;
  v2 = *(a1 + 520);
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  *(a1 + 296) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

uint64_t sub_1D0E30EA0(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  *(a1 + 296) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

_BYTE *sub_1D0E30F4C(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

uint64_t sub_1D0E310A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1D0BCC0B4(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1D0E31100(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1D0B99218(v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_1D0E31160(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1D0E3158C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0E315A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0E315A0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1D0BCC0B4(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1D0E315EC(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1D0E319F0(_Unwind_Exception *a1)
{
  sub_1D0B99218(v1[4]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0E31A0C(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

char *raven::RavenLineOfSightEstimator::GetSatelliteID@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  if (this[175] < 0)
  {
    this = sub_1D0BC39B4(a2, *(this + 19), *(this + 20));
  }

  else
  {
    *a2 = *(this + 152);
    *(a2 + 16) = *(this + 21);
  }

  *(a2 + 24) = *(v2 + 22);
  return this;
}

uint64_t raven::RavenLineOfSightEstimator::Initialize(uint64_t a1, uint64_t *a2)
{
  if (*a1 == 1)
  {
    v63 = 12;
    v62 = 2;
    v4 = sub_1D0BCFAB8((a2 + 3));
    cnprint::CNPrinter::Print(&v63, &v62, "WARNING: LOSEstimator being re-initialized,svid,%s", v5, v6, v7, v8, v9, v4);
    *a1 = 0;
  }

  v10 = *a2;
  if (!*a2)
  {
    v63 = 12;
    v62 = 4;
    v58 = sub_1D0BCFAB8((a2 + 3));
    cnprint::CNPrinter::Print(&v63, &v62, "LOSEstimator,invalid pointer to RavenParameters,%s", v19, v20, v21, v22, v23, v58);
    return 0xFFFFFFFFLL;
  }

  v11 = *(v10 + 2256);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v11 >= 0.0 ? (v12 = v11 <= 1.0) : (v12 = 0), !v12))
  {
    v63 = 12;
    v62 = 4;
    v13 = sub_1D0BCFAB8((a2 + 3));
    v59 = *(*a2 + 2256);
    cnprint::CNPrinter::Print(&v63, &v62, "LOSEstimator,invalid P(LOS|LOS),%s,%.3lf", v14, v15, v16, v17, v18, v13);
    return 0xFFFFFFFFLL;
  }

  v24 = *(v10 + 2264);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v24 >= 0.0 ? (v25 = v24 <= 1.0) : (v25 = 0), !v25))
  {
    v63 = 12;
    v62 = 4;
    v26 = sub_1D0BCFAB8((a2 + 3));
    v60 = *(*a2 + 2264);
    cnprint::CNPrinter::Print(&v63, &v62, "LOSEstimator,invalid P(NLOS|NLOS),%s,%.3lf", v27, v28, v29, v30, v31, v26);
    return 0xFFFFFFFFLL;
  }

  v33 = *(v10 + 2248);
  if ((v33 <= -1 || ((v33 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v33 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v63 = 12;
    v62 = 4;
    v45 = sub_1D0BCFAB8((a2 + 3));
    v61 = *(*a2 + 2248);
    cnprint::CNPrinter::Print(&v63, &v62, "LOSEstimator,invalid transition probability time interval,%s,%.3lf", v46, v47, v48, v49, v50, v45);
    return 0xFFFFFFFFLL;
  }

  v36 = *(a2 + 2) + a2[1];
  v37 = fabs(v36);
  v38 = (v37 - 1) < 0xFFFFFFFFFFFFFLL;
  v39 = (v37 - 0x10000000000000) >> 53 < 0x3FF;
  if (v36 >= 0.0)
  {
    v39 = 0;
    v38 = 0;
  }

  if (v37 == 0x7FF0000000000000)
  {
    v38 = 1;
  }

  if (v37 > 0x7FF0000000000000)
  {
    v38 = 1;
  }

  if (v38 || v39)
  {
    v63 = 12;
    v62 = 4;
    sub_1D0BCFAB8((a2 + 3));
    cnprint::CNPrinter::Print(&v63, &v62, "LOSEstimator,invalid input time,%.3lf,%s", v40, v41, v42, v43, v44, SLOBYTE(v36));
    return 0xFFFFFFFFLL;
  }

  *(a1 + 144) = 0x3DDB7CDFD9D7BDBBLL;
  sub_1D0E31E50(a1 + 16);
  *(a1 + 8) = *a2;
  v51 = std::string::operator=((a1 + 152), a2 + 1);
  *(a1 + 176) = a2[6];
  *(a1 + 184) = *(a2 + 1);
  *a1 = 1;
  if (cnprint::CNPrinter::GetLogLevel(v51) <= 1)
  {
    v63 = 12;
    v62 = 1;
    v52 = *(a2 + 2) + a2[1];
    sub_1D0BCFAB8((a2 + 3));
    cnprint::CNPrinter::Print(&v63, &v62, "LOSEstimator initialized,time,%.3lf,svid,%s", v53, v54, v55, v56, v57, SLOBYTE(v52));
  }

  return 0;
}

void sub_1D0E31E50(uint64_t a1)
{
  v35 = 0x100000002;
  v33 = &unk_1F4CE0220;
  v36 = v37;
  v22 = xmmword_1D0E83F60;
  v34 = xmmword_1D0E83F60;
  memset_pattern16(v37, &unk_1D0E7F4B0, 0x10uLL);
  v25 = 0x100000002;
  v23 = &unk_1F4CE0220;
  *&v3.f64[1] = 0x200000002;
  v24 = xmmword_1D0E83F60;
  v26 = &v27;
  v3.f64[0] = 0.5;
  sub_1D0B8930C(&v33, &v23, v3);
  v5 = *(a1 + 128);
  v6 = DWORD1(v24);
  if (DWORD1(v24))
  {
    v7 = 0;
    v8 = v24;
    v9 = v26;
    v10 = v24 - 1;
    v11 = 1;
    do
    {
      v12 = *&v9[v8 * v7];
      v13 = v11;
      v14 = v10;
      if (v8 >= 2)
      {
        do
        {
          v12 = v12 + *&v9[v13++];
          --v14;
        }

        while (v14);
      }

      v37[v7++] = v12;
      v11 += v8;
    }

    while (v7 != v6);
    v1 = v37[0];
  }

  v15 = DWORD2(v24);
  if (fabs(v1 + -1.0) > v5 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
  {
    LOWORD(v33) = 2;
    v28[0] = 1;
    cnprint::CNPrinter::Print(&v33, v28, "WARNING: HMM initialized with non-normalized probability vector.", v16, v17, v18, v19, v20, 2);
  }

  sub_1D0BBEF48(v28, &v23);
  v29 = v15;
  v30 = 1;
  v31 = v15;
  v32 = v15;
  v35 = 0x100000002;
  v33 = &unk_1F4CE0220;
  *&v21.f64[1] = 0x200000002;
  v34 = v22;
  v36 = v37;
  v21.f64[0] = 1.0 / v1;
  sub_1D0B8930C(v28, &v33, v21);
  sub_1D0B894B0(a1 + 8, &v33);
  sub_1D0B894B0(a1 + 64, a1 + 8);
  *(a1 + 120) = 1;
}

uint64_t raven::RavenLineOfSightEstimator::Reset(uint64_t this)
{
  *this = 0;
  *(this + 184) = 0;
  *(this + 192) = 0x7FF8000000000000;
  return this;
}

uint64_t raven::RavenLineOfSightEstimator::Update(uint64_t a1, double *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v20[0]) = 12;
      LOBYTE(v19) = 1;
      v17 = a2[3] + *(a2 + 2);
      cnprint::CNPrinter::Print(v20, &v19, "WARNING:LOSEstimator,time,%.3lf,trying to update uninitialized estimator", v12, v13, v14, v15, v16, SLOBYTE(v17));
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  v20[0] = *(a2 + 1);
  v20[1] = v4;
  result = sub_1D0E32298(a1 + 16, sub_1D0E32164, v20);
  if (result)
  {
    v19 = 12;
    v18 = 4;
    v6 = *(a1 + 192) + *(a1 + 184);
    sub_1D0BCFAB8(a1 + 152);
    cnprint::CNPrinter::Print(&v19, &v18, "LOSEstimator,time,%.3lf,failed updating with the given signal characteristic evidences,%s,code,%d", v7, v8, v9, v10, v11, SLOBYTE(v6));
    return 0xFFFFFFFFLL;
  }

  *(a1 + 184) = *(a2 + 1);
  return result;
}

uint64_t sub_1D0E32164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v8 >= 0.0 ? (v9 = v8 <= 1.0) : (v9 = 0), v9))
  {
    v12 = *(a1 + 24);
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v12 >= 0.0 && v12 <= 1.0)
    {
      v10 = 0;
      *(a2 + 8) = xmmword_1D0E83F60;
      v14 = *(a2 + 32);
      *v14 = v8;
      *(v14 + 8) = *(a1 + 24);
      return v10;
    }

    v20 = 12;
    v19 = 4;
    v16 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v20, &v19, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v16));
  }

  else
  {
    v18 = 12;
    v17 = 4;
    v15 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v18, &v17, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v15));
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0E32298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 120) == 1)
  {
    sub_1D0B894B0(a1 + 8, a1 + 64);
  }

  v77 = 0x100000001;
  v75[2] = &unk_1F4CE0380;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  v76 = v6;
  v78 = &v79;
  v79 = a2;
  v73 = 0x100000002;
  v71 = &unk_1F4CE0338;
  v72 = v6;
  v74 = v75;
  v75[0] = a3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  sub_1D0B95DC8(v69, &v71);
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    _ZF = v7 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a1 + 128);
  if (!*(a1 + 16) || !*(a1 + 20))
  {
    if ((v11 & 0x80000000) != 0)
    {
      __assert_rtn("Ones", "cnmatrix.h", 2317, "nr >= 0");
    }

    v88 = 0x100000002;
    v86 = &unk_1F4CE0220;
    v89 = v90;
    *&v87 = v11 | 0x100000000;
    v20 = 1.0 / v11;
    DWORD2(v87) = v11;
    HIDWORD(v87) = v11;
    if (v11 > 3)
    {
      memset_pattern16(v90, &unk_1D0E7F4B0, 16 * ((v11 - 1) >> 1));
      __asm { FMOV            V0.2D, #1.0 }

      *(&v88 + v11) = _Q0;
    }

    else if (v11)
    {
      memset_pattern16(v90, &unk_1D0E7F4B0, (8 * v11));
    }

    v93 = 0x100000002;
    *&v22.f64[1] = 0x200000002;
    v92 = xmmword_1D0E83F60;
    v91 = &unk_1F4CE0220;
    v94 = v95;
    v21 = &v86;
    goto LABEL_27;
  }

  v93 = 0x100000002;
  v67 = xmmword_1D0E83F60;
  v92 = xmmword_1D0E83F60;
  v91 = &unk_1F4CE0220;
  v94 = v95;
  v13 = sub_1D0B94BA0(a1 + 8, 1, &v91);
  v14 = *v94;
  if (fabs(*v94 + -1.0) <= v12)
  {
    if ((v11 & 0x80000000) == 0)
    {
      sub_1D0BBEF48(&v91, a1 + 8);
      *&v92 = v11 | 0x100000000;
      DWORD2(v92) = v11;
      HIDWORD(v92) = v11;
      goto LABEL_28;
    }

LABEL_64:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
  {
    LOWORD(v91) = 2;
    LOBYTE(v86) = 1;
    cnprint::CNPrinter::Print(&v91, &v86, "WARNING: HMM update passed a non-normalized probability vector.", v15, v16, v17, v18, v19, 2);
  }

  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  v20 = 1.0 / v14;
  sub_1D0BBEF48(&v86, a1 + 8);
  *&v87 = v11 | 0x100000000;
  DWORD2(v87) = v11;
  HIDWORD(v87) = v11;
  v93 = 0x100000002;
  *&v22.f64[1] = 0x200000002;
  v92 = v67;
  v91 = &unk_1F4CE0220;
  v94 = v95;
LABEL_27:
  v22.f64[0] = v20;
  sub_1D0B8930C(v21, &v91, v22);
LABEL_28:
  sub_1D0B894B0(a1 + 8, &v91);
  sub_1D0BBEF48(&v91, a1 + 8);
  v27 = *v78;
  v88 = 0x100000002;
  v86 = &unk_1F4CE0220;
  v68 = xmmword_1D0E83F60;
  v87 = xmmword_1D0E83F60;
  v89 = v90;
  v28 = v27(*v70, &v86);
  if (v28)
  {
    LOWORD(v80) = 2;
    v85 = 4;
    cnprint::CNPrinter::Print(&v80, &v85, "ERROR: HMM emission function failed.", v29, v30, v31, v32, v33, 2);
    return 29;
  }

  if (v11)
  {
    v36 = 0.0;
    v37 = v89;
    v38 = v89;
    v39 = v11;
    do
    {
      v40 = *v38;
      if (*v38 < 0.0 || v40 > 1.0)
      {
        LOWORD(v80) = 2;
        v85 = 4;
        v53 = "ERROR: HMM emission probability matrix is invalid.";
        goto LABEL_50;
      }

      v36 = v36 + v40;
      ++v38;
      --v39;
    }

    while (v39);
    if (fabs(v36) > v12)
    {
      v42 = v94;
      do
      {
        v43 = *v37++;
        v34.n128_f64[0] = v43 * *v42;
        *v42++ = v34.n128_f64[0];
        --v11;
      }

      while (v11);
      goto LABEL_43;
    }
  }

  else if (v12 < 0.0)
  {
LABEL_43:
    v44 = DWORD1(v92);
    if (DWORD1(v92))
    {
      v45 = 0;
      v46 = v92;
      v47 = v94;
      v48 = 1;
      v49 = xmmword_1D0E83F60;
      do
      {
        v50 = v47[(v46 * v45)];
        v51 = v48;
        v52 = v46 - 1;
        if (v46 >= 2)
        {
          do
          {
            v50 = v50 + v47[v51++];
            --v52;
          }

          while (v52);
        }

        v84[v45++] = v50;
        v48 += v46;
      }

      while (v45 != v44);
      v34.n128_f64[0] = v84[0];
    }

    else
    {
      v49 = xmmword_1D0E83F60;
    }

    if (fabs(v34.n128_f64[0]) < 2.22044605e-16)
    {
      if (cnprint::CNPrinter::GetLogLevel(v28) <= 1)
      {
        LOWORD(v80) = 2;
        v85 = 1;
        cnprint::CNPrinter::Print(&v80, &v85, "HMM state is null vector after update; revert to input state", v54, v55, v56, v57, v58, 2);
      }

      v34 = sub_1D0B894B0(&v91, a1 + 8);
      v59 = DWORD1(v92);
      if (DWORD1(v92))
      {
        v60 = 0;
        v61 = v92;
        v62 = v94;
        v63 = 1;
        v49 = v68;
        do
        {
          v64 = v62[(v61 * v60)];
          v65 = v63;
          v66 = v61 - 1;
          if (v61 >= 2)
          {
            do
            {
              v64 = v64 + v62[v65++];
              --v66;
            }

            while (v66);
          }

          v84[v60++] = v64;
          v63 += v61;
        }

        while (v60 != v59);
        v34.n128_f64[0] = v84[0];
      }

      else
      {
        v49 = v68;
      }
    }

    v82 = 0x100000002;
    v81 = v49;
    v80 = &unk_1F4CE0220;
    v83 = v84;
    v34.n128_f64[0] = 1.0 / v34.n128_f64[0];
    sub_1D0B8930C(&v91, &v80, v34);
    sub_1D0B894B0(&v91, &v80);
    sub_1D0B894B0(a1 + 64, &v91);
    result = 0;
    *(a1 + 120) = 1;
    return result;
  }

  LOWORD(v80) = 2;
  v85 = 4;
  v53 = "ERROR: HMM emission probability matrix is null matrix";
LABEL_50:
  cnprint::CNPrinter::Print(&v80, &v85, v53, v29, v30, v31, v32, v33, 2);
  return 30;
}

uint64_t raven::RavenLineOfSightEstimator::Update(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    result = sub_1D0E32298(a1 + 16, sub_1D0E32994, a2);
    if (!result)
    {
      return result;
    }

    v18 = 12;
    v17 = 4;
    v5 = *(a1 + 192) + *(a1 + 184);
    sub_1D0BCFAB8(a1 + 152);
    cnprint::CNPrinter::Print(&v18, &v17, "LOSEstimator,time,%.3lf,failed WiFi cross-check,%s,code,%d", v6, v7, v8, v9, v10, SLOBYTE(v5));
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v20 = 12;
    v19 = 1;
    v16 = *(a2 + 8) + *a2;
    cnprint::CNPrinter::Print(&v20, &v19, "WARNING:LOSEstimator,time,%.3lf,trying to update uninitialized estimator", v11, v12, v13, v14, v15, SLOBYTE(v16));
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0E32994(uint64_t a1, uint64_t a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(a1 + 112) != 1)
  {
    v45 = 12;
    v52[0] = 4;
    v10 = *(a1 + 8) + *a1;
    goto LABEL_18;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v45 = 12;
    v52[0] = 4;
    v10 = *(a1 + 8) + *a1;
    goto LABEL_18;
  }

  if ((*(a1 + 136) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v45 = 12;
    v52[0] = 4;
    v10 = *(a1 + 8) + *a1;
LABEL_18:
    cnprint::CNPrinter::Print(&v45, v52, "time,%.3lf,e-function failure on line %d: %s() %s", a6, a7, a8, a9, a10, SLOBYTE(v10));
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 184);
  if ((v11 <= -1 || ((v11 & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F) && (v11 - 1) >= 0x7FFFFF)
  {
    v45 = 12;
    v52[0] = 4;
    v10 = *(a1 + 8) + *a1;
    goto LABEL_18;
  }

  v14 = *(a1 + 640);
  if (v14 <= 0xF && ((1 << v14) & 0xF7EF) != 0)
  {
    v45 = 12;
    v52[0] = 4;
    v10 = *(a1 + 8) + *a1;
    goto LABEL_18;
  }

  if ((*(a1 + 720) & 1) == 0)
  {
    v16 = "invalid wifi position";
    v17 = 310;
    goto LABEL_42;
  }

  a4.i64[0] = *(a1 + 800);
  if ((a4.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v16 = "invalid clock offset";
    v17 = 317;
LABEL_42:
    sub_1D0C52038(a1, v16, "e_LineOfSight_CrosscheckPseudorangeAndWiFiPosition", v17, a7, a8, a9, a10);
    return 0xFFFFFFFFLL;
  }

  v18 = *(a1 + 808);
  if ((v18 <= -1 || ((v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v18 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v16 = "invalid clock offset uncertainty";
    v17 = 324;
    goto LABEL_42;
  }

  v21 = *(a1 + 816);
  v22 = (v21 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v23 = ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v21 >= 0)
  {
    v23 = 0;
    v22 = 0;
  }

  if ((v21 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v22 = 1;
  }

  if ((v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v22 = 1;
  }

  if (v22 || v23)
  {
    v16 = "invalid minimum NLOS path delay";
    v17 = 331;
    goto LABEL_42;
  }

  v24 = *(a1 + 824);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v24 < 0.0 || v24 > 1.0)
  {
    v16 = "invalid minimum emission probability";
    v17 = 338;
    goto LABEL_42;
  }

  v64 = *(a1 + 728);
  v65 = *(a1 + 744);
  v63 = &unk_1F4CD5F20;
  v61 = 0.0;
  v62 = &unk_1F4CD5BC8;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  *v52 = *(a1 + 64);
  v25.i64[1] = *&v52[8];
  v25.i64[0] = *(a1 + 120);
  *a4.i64 = *a4.i64 * 0.000001;
  v45 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v40 = a1;
  if (cnnavigation::GNSSPseudorange(v52, &v45, &v64, a1 + 224, &v63, &v62, &v61, 1, v25, a4, &v58))
  {
    v16 = "could not predict pseudorange";
    a1 = v40;
    v17 = 369;
    goto LABEL_42;
  }

  v53 = 0x400000001;
  *&v52[8] = xmmword_1D0E84480;
  v55 = v59;
  *v52 = &unk_1F4CE4368;
  v54 = &v55;
  v56 = v60;
  v57 = *(&v60 + 1) * 0.000001;
  sub_1D0DAA260(4, 4, &v45);
  v26 = *(&v47 + 1);
  **(&v47 + 1) = *(v40 + 752);
  v27 = SHIDWORD(v46);
  v28 = (v26 + 8 * SHIDWORD(v46));
  *v28 = *(v40 + 760);
  v29 = (v26 + 16 * v27);
  *v29 = *(v40 + 768);
  *(v26 + 8) = *v28;
  v28[1] = *(v40 + 776);
  v30 = *(v40 + 784);
  *(v26 + 8 * ((2 * v27) | 1)) = v30;
  *(v26 + 16) = *v29;
  v28[2] = v30;
  v29[2] = *(v40 + 792);
  *(v26 + 24 * v27 + 24) = *(v40 + 808) * *(v40 + 808);
  sub_1D0E330E0(v42, v52, &v45);
  sub_1D0E3316C(v41, v52);
  v31 = sub_1D0E3305C(v43, v42, v41);
  v32 = *(v40 + 136);
  v33 = v61;
  v34 = v32 - v61;
  v35 = sqrt(*v44 + (*(v40 + 184) * *(v40 + 184)));
  *(a2 + 8) = xmmword_1D0E83F60;
  v37 = cnstatistics::NormalCDF(v31, -vabdd_f64(v32, v33), 0.0, v35);
  if (v37 <= *(v40 + 824))
  {
    v37 = *(v40 + 824);
  }

  **(a2 + 32) = v37 + v37;
  v38 = cnstatistics::NormalCDF(v36, v34, *(v40 + 816), v35);
  result = 0;
  if (v38 <= *(v40 + 824))
  {
    v38 = *(v40 + 824);
  }

  *(*(a2 + 32) + 8) = v38;
  return result;
}

double sub_1D0E32F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 12;
  v10 = 4;
  v8 = *(a1 + 8) + *a1;
  cnprint::CNPrinter::Print(&v11, &v10, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v8));
  return result;
}

uint64_t sub_1D0E32FE4(uint64_t a1)
{
  *(a1 + 24) = 0x200000002;
  *a1 = &unk_1F4CE0268;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E83F70;
  result = sub_1D0BBBC00(a1, 0.0);
  v3 = *(a1 + 20) + 1;
  v4 = *(a1 + 32);
  *v4 = 0x3FF0000000000000;
  v4[v3] = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0E3305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000001;
  *a1 = &unk_1F4CDF418;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  *(a1 + 8) = v3;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0E330E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x400000001;
  *a1 = &unk_1F4CE4368;
  *(a1 + 8) = xmmword_1D0E84480;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0E3316C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000004;
  *a1 = &unk_1F4CDEBB8;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

uint64_t raven::GNSSUncertaintyScaling::Indus25GNSSUncertaintyWrapper::Instance(raven::GNSSUncertaintyScaling::Indus25GNSSUncertaintyWrapper *this)
{
  result = qword_1EC5FBD78;
  if (!qword_1EC5FBD78)
  {
    operator new();
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::Indus25GNSSUncertaintyWrapper::GetUncertaintyScaleFactorCore(uint64_t a1, int *a2, _BYTE *a3, unsigned __int8 *a4, char *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    v48 = v8;
    v49 = v9;
    v12 = *a4;
    if (v12 > 6)
    {
      v19 = 0;
      v18 = 0;
      v17 = 0;
      v16 = 0;
    }

    else
    {
      v13 = 1 << v12;
      if ((v13 & 0x27) != 0)
      {
        v14 = *a5;
        if (v14 > 6 || ((1 << v14) & 0x4C) == 0)
        {
          v16 = qword_1EE054E28;
          if (!qword_1EE054E28)
          {
            operator new();
          }

          v17 = qword_1EE054E30;
          if (!qword_1EE054E30)
          {
            operator new();
          }

          v18 = qword_1EE054E38;
          if (!qword_1EE054E38)
          {
            operator new();
          }

          v19 = qword_1EE054E40;
          if (!qword_1EE054E40)
          {
            operator new();
          }
        }

        else
        {
          v16 = qword_1EE054E08;
          if (!qword_1EE054E08)
          {
            operator new();
          }

          v17 = qword_1EE054E10;
          if (!qword_1EE054E10)
          {
            operator new();
          }

          v18 = qword_1EE054E18;
          if (!qword_1EE054E18)
          {
            operator new();
          }

          v19 = qword_1EE054E20;
          if (!qword_1EE054E20)
          {
            operator new();
          }
        }
      }

      else if ((v13 & 0x18) != 0)
      {
        v20 = *a5;
        if (v20 <= 6 && ((1 << v20) & 0x4C) != 0)
        {
          v16 = qword_1EE054E48;
          if (!qword_1EE054E48)
          {
            operator new();
          }

          v17 = qword_1EE054E50;
          if (!qword_1EE054E50)
          {
            operator new();
          }

          v18 = qword_1EE054E58;
          if (!qword_1EE054E58)
          {
            operator new();
          }

          v19 = qword_1EE054E60;
          if (!qword_1EE054E60)
          {
            operator new();
          }
        }

        else
        {
          v16 = qword_1EE054E68;
          if (!qword_1EE054E68)
          {
            operator new();
          }

          v17 = qword_1EE054E70;
          if (!qword_1EE054E70)
          {
            operator new();
          }

          v18 = qword_1EE054E78;
          if (!qword_1EE054E78)
          {
            operator new();
          }

          v19 = qword_1EE054E80;
          if (!qword_1EE054E80)
          {
            operator new();
          }
        }
      }

      else
      {
        v21 = *a5;
        if (v21 <= 6 && ((1 << v21) & 0x4C) != 0)
        {
          v16 = qword_1EE054E88;
          if (!qword_1EE054E88)
          {
            operator new();
          }

          v17 = qword_1EE054E90;
          if (!qword_1EE054E90)
          {
            operator new();
          }

          v18 = qword_1EE054E98;
          if (!qword_1EE054E98)
          {
            operator new();
          }

          v19 = qword_1EE054EA0;
          if (!qword_1EE054EA0)
          {
            operator new();
          }
        }

        else
        {
          v16 = qword_1EE054EA8;
          if (!qword_1EE054EA8)
          {
            operator new();
          }

          v17 = qword_1EE054EB0;
          if (!qword_1EE054EB0)
          {
            operator new();
          }

          v18 = qword_1EE054EB8;
          if (!qword_1EE054EB8)
          {
            operator new();
          }

          v19 = qword_1EE054EC0;
          if (!qword_1EE054EC0)
          {
            operator new();
          }
        }
      }
    }

    v22 = *a3;
    if (v22 > 5)
    {
      if (*a3 <= 7u)
      {
        if (v22 == 7)
        {
          v24 = 2;
        }

        else
        {
          v24 = 0;
        }

        if (v22 == 6)
        {
          v23 = 1;
        }

        else
        {
          v23 = v24;
        }

        goto LABEL_86;
      }

      if (v22 == 8)
      {
        v23 = 3;
        goto LABEL_86;
      }

      if (v22 == 9)
      {
LABEL_76:
        v47 = 12;
        v46 = 4;
        v44 = *a4;
        v45 = *a5;
        cnprint::CNPrinter::Print(&v47, &v46, "Invalid GNSS Band type: GNSS uncertainty parameters not found for obs_type,%d,band,%d,se,%d,activity,%d", a4, a5, a6, a7, a8, *a2);
        goto LABEL_108;
      }

      v23 = 0;
      if (v22 != 10)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (*a3 > 1u)
      {
        if (v22 == 2)
        {
          v23 = 6;
          goto LABEL_86;
        }

        if (v22 == 3)
        {
          v23 = 4;
          goto LABEL_86;
        }

        v23 = 0;
        if (v22 != 4)
        {
LABEL_86:
          v25 = v23;
          v26 = *a2;
          if (*a2 <= 2)
          {
            if (v26 != 1)
            {
              if (v26 == 2)
              {
                if (v17)
                {
                  v27 = v17 + 356 * v25;
                  v28 = *(v27 + 352);
                  v29 = *a6;
                  v30 = a6[1];
                  goto LABEL_111;
                }

                v47 = 12;
                v46 = 5;
                v42 = *a4;
                cnprint::CNPrinter::Print(&v47, &v46, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
                v11 = 4.0;
LABEL_114:
                v10 = 0x100000000;
                return v10 | LODWORD(v11);
              }

              goto LABEL_98;
            }

            if (!v16)
            {
              v47 = 12;
              v46 = 5;
              v43 = *a4;
              cnprint::CNPrinter::Print(&v47, &v46, "Invalid range unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
              goto LABEL_108;
            }

            v35 = v16 + 356 * v25;
            v36 = a6[1];
            if (*(v35 + 32 * *a6 + 2 * v36))
            {
              v28 = *(v35 + 352);
              v34 = *(v35 + 32 * *a6 + 2 * v36);
              goto LABEL_113;
            }

LABEL_108:
            v11 = 1.0;
            goto LABEL_114;
          }

          if (v26 == 3)
          {
            if (v18)
            {
              v37 = v18 + 356 * v25;
              v28 = *(v37 + 352);
              v29 = *a6;
              v30 = a6[1];
              v32 = *(v37 + 32 * *a6 + 2 * v30);
              if (!v32)
              {
                goto LABEL_109;
              }

              goto LABEL_104;
            }
          }

          else
          {
            if (v26 != 4)
            {
LABEL_98:
              v47 = 12;
              v46 = 5;
              v40 = *a4;
              cnprint::CNPrinter::Print(&v47, &v46, "Invalid obs type - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
              goto LABEL_108;
            }

            if (v19)
            {
              v31 = v19 + 356 * v25;
              v28 = *(v31 + 352);
              v29 = *a6;
              v30 = a6[1];
              v32 = *(v31 + 32 * *a6 + 2 * v30);
              if (v18 && !v32)
              {
                v33 = v18 + 356 * v25;
                if (*(v33 + 32 * v29 + 2 * v30))
                {
                  v28 = *(v33 + 352);
                  v34 = *(v33 + 32 * v29 + 2 * v30);
LABEL_113:
                  v11 = v28 * v34;
                  goto LABEL_114;
                }

LABEL_109:
                if (!v17)
                {
                  goto LABEL_116;
                }

                v27 = v17 + 356 * v25;
LABEL_111:
                v38 = *(v27 + 32 * v29 + 2 * v30);
                if (v38)
                {
                  v34 = v38;
                  goto LABEL_113;
                }

LABEL_116:
                v10 = 0x100000000;
                v11 = v28 / 0.01;
                return v10 | LODWORD(v11);
              }

LABEL_104:
              v34 = v32;
              goto LABEL_113;
            }
          }

          v47 = 12;
          v46 = 5;
          v41 = *a4;
          cnprint::CNPrinter::Print(&v47, &v46, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
          v11 = 2.0;
          goto LABEL_114;
        }

        goto LABEL_76;
      }

      if (!*a3)
      {
        goto LABEL_76;
      }
    }

    v23 = 5;
    goto LABEL_86;
  }

  v10 = 0;
  v11 = 0.0;
  return v10 | LODWORD(v11);
}

uint64_t raven::GNSSUncertaintyScaling::Indus25GNSSUncertaintyWrapper::GetScaleFactorTableIndices(float a1, double a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = 0;
  v13 = 40;
  while (flt_1D0EA3E70[v12] < a1)
  {
    ++v12;
    v13 -= 4;
    if (!v13)
    {
      v12 = 10;
      break;
    }
  }

  v14 = 0;
  v15 = 120;
  while (dbl_1D0EA3E98[v14] < a2)
  {
    ++v14;
    v15 -= 8;
    if (!v15)
    {
      v14 = 15;
      break;
    }
  }

  v22 = v10;
  v23 = v11;
  v16 = v12 >= 0xB || v14 >= 0x10;
  v17 = !v16;
  if (v16)
  {
    v21 = 12;
    v20 = 5;
    v18 = a1;
    cnprint::CNPrinter::Print(&v21, &v20, "invalid index found,cn0,%.3f,cn0_bin,%zu,elev,%.3lf,elev_bin,%zu,", a6, a7, a8, a9, a10, SLOBYTE(v18));
  }

  else
  {
    *a4 = v12;
    a4[1] = v14;
  }

  return v17;
}

uint64_t raven::GNSSPreprocessedMeasurementsChecker::Configure(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (!*a2 || (*(v8 + 33) & 1) == 0)
  {
    v36 = 12;
    v35 = 4;
    v15 = "Error: GNSSPreprocessedMeasurementsChecker could not be configured. Raven parameters are not initialized.";
LABEL_14:
    cnprint::CNPrinter::Print(&v36, &v35, v15, a4, a5, a6, a7, a8, v34);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = a3;
  *(a1 + 168) = v8;
  v9 = *(v8 + 612);
  v10 = *(v8 + 616);
  if (fabs(v10) > 90.0)
  {
    v36 = 12;
    v35 = 4;
    v15 = "Error: GNSSPreprocessedMeasurementsChecker could not be configured. Invalid gnss_minimum_elevation";
    goto LABEL_14;
  }

  v11 = *(v8 + 2232);
  v12 = (v11 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v13 = ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v11 >= 0)
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = (v11 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v12;
  if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v14 = 1;
  }

  if ((v14 | v13) == 1)
  {
    v36 = 12;
    v35 = 4;
    cnprint::CNPrinter::Print(&v36, &v35, "Error: GNSSPreprocessedMeasurementsChecker invalid minimum expected NLOS path delay,%.3lf", a4, a5, a6, a7, a8, v11);
  }

  else
  {
    v18 = *(v8 + 2224);
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v20 = ((v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v18 >= 0)
    {
      v20 = 0;
      v19 = 0;
    }

    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
    {
      v19 = 1;
    }

    if ((v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v19 = 1;
    }

    if (v19 || v20)
    {
      v36 = 12;
      v35 = 4;
      cnprint::CNPrinter::Print(&v36, &v35, "Error: GNSSPreprocessedMeasurementsChecker invalid distance travelled for WiFi crosschecks,%.3lfm", a4, a5, a6, a7, a8, v18);
    }

    else
    {
      v21 = *(v8 + 2288);
      v22 = (v21 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v23 = ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v21 >= 0)
      {
        v23 = 0;
        v22 = 0;
      }

      v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v22;
      if ((v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v24 = 1;
      }

      if ((v24 | v23) == 1)
      {
        v36 = 12;
        v35 = 4;
        cnprint::CNPrinter::Print(&v36, &v35, "Error: GNSSPreprocessedMeasurementsChecker invalid duration for WiFi crosschecks (non-pedestrian),%.3lf", a4, a5, a6, a7, a8, v21);
      }

      else
      {
        v25 = *(v8 + 2296);
        v26 = (v25 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v27 = ((v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (v25 >= 0)
        {
          v27 = 0;
          v26 = 0;
        }

        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
        {
          v26 = 1;
        }

        if ((v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
        {
          v26 = 1;
        }

        if (v26 || v27)
        {
          v36 = 12;
          v35 = 4;
          cnprint::CNPrinter::Print(&v36, &v35, "Error: GNSSPreprocessedMeasurementsChecker invalid duration for WiFi crosschecks (pedestrian),%.3lf", a4, a5, a6, a7, a8, v25);
        }

        else
        {
          v28 = *(v8 + 1568);
          v29 = (v28 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
          v30 = v28 < 0 && ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
          if (v28 >= 0)
          {
            v29 = 0;
          }

          v31 = (v28 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v29;
          if ((v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
          {
            v31 = 1;
          }

          if ((v31 | v30) == 1)
          {
            v36 = 12;
            v35 = 4;
            cnprint::CNPrinter::Print(&v36, &v35, "Error: GNSSPreprocessedMeasurementsChecker invalid maximum non-ADR dwell time,%.3lf", a4, a5, a6, a7, a8, v28);
          }

          else
          {
            v32 = *(v8 + 1544);
            if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v32 < 0.0 || v32 > 1.0)
            {
              v36 = 12;
              v35 = 4;
              cnprint::CNPrinter::Print(&v36, &v35, "Error: GNSSPreprocessedMeasurementsChecker invalid fraction of sensor cache allowed for back-propagation,%.3lf", a4, a5, a6, a7, a8, SLOBYTE(v32));
            }

            else
            {
              v33 = *(v8 + 2216);
              if (v33 > 0.0)
              {
                v16 = 0;
                *(a1 + 24) = v10 * 0.0174532925;
                *(a1 + 72) = *(v8 + 2305);
                *(a1 + 80) = 5;
                *(a1 + 8) = 1;
                return v16;
              }

              v36 = 12;
              v35 = 4;
              cnprint::CNPrinter::Print(&v36, &v35, "GNSSPreprocessedMeasurementsChecker: Invalid maximum allowed duration since last LOS HMM  WiFi cross-check update,%.3lf", a4, a5, a6, a7, a8, SLOBYTE(v33));
            }
          }
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL raven::GNSSPreprocessedMeasurementsChecker::GetClockOffsetForCrossCheck(raven::GNSSPreprocessedMeasurementsChecker *this, const raven::GnssPreprocessedMeasurementsEvent *a2, double *a3, double *a4)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8;
  v66[0] = v8;
  *&v66[1] = v10;
  v11 = v10;
  if (*(a2 + 48) != 1 || *(a2 + 32) != 1 || (*(a2 + 64) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
    {
      LOWORD(v64) = 12;
      LOBYTE(v63[0]) = 1;
      v53 = v11 + v9;
      cnprint::CNPrinter::Print(&v64, v63, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,cannot determine the time of previous GNSS measurement", v24, v25, v26, v27, v28, SLOBYTE(v53));
    }

    return 0;
  }

  v12 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EB2678);
  if (!v12 || (v15 = v12, (v12[251] & 1) == 0))
  {
    if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
    {
      LOWORD(v64) = 12;
      LOBYTE(v63[0]) = 1;
      v54 = v11 + v9;
      cnprint::CNPrinter::Print(&v64, v63, "GNSSPreprocessedMeasurementsChecker,no clock bias estimate available,%.3lf", v30, v31, v32, v33, v34, SLOBYTE(v54));
    }

    return 0;
  }

  v13.i64[0] = *(*(this + 21) + 3488);
  v64 = 0;
  v65 = 0;
  *v16.i64 = CNTimeSpan::SetTimeSpan(&v64, 0, v13, v14);
  v18 = CNTimeSpan::operator-(v66, v15 + 149, v16, v17);
  v22 = v18;
  v63[0] = v18;
  *&v63[1] = v19;
  v23 = v19;
  if (v18 < 0 || v19 < 0.0)
  {
    v18 = CNTimeSpan::operator-(v63, v20, v21);
    v20.i64[0] = v35;
  }

  else
  {
    *v20.i64 = v19;
  }

  if (!v18 && (v20.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (!v64)
  {
    v21.i64[0] = v65;
    if ((v65 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_23;
    }
  }

  v36 = v18 <= v64;
  if (v18 == v64)
  {
LABEL_22:
    v21.i64[0] = v65;
LABEL_23:
    v36 = *v20.i64 <= *v21.i64;
  }

  if (!v36)
  {
    if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
    {
      LOWORD(v61) = 12;
      LOBYTE(v60[0]) = 1;
      v55 = v11 + v9;
      v57 = *(v15 + 150) + v15[149];
      cnprint::CNPrinter::Print(&v61, v60, "GNSSPreprocessedMeasurementsChecker,time difference too large for clock bias prediction,t_gps,%.3lf,t_wifi,%.3lf", v37, v38, v39, v40, v41, SLOBYTE(v55));
    }

    return 0;
  }

  if ((*(a2 + 64) & 1) == 0)
  {
    goto LABEL_35;
  }

  v20.i64[0] = *(a2 + 7);
  v60[0] = 0;
  v60[1] = 0;
  *v42.i64 = CNTimeSpan::SetTimeSpan(v60, 0, v20, v21);
  v61 = CNTimeSpan::operator-(v66, v60, v42, v43);
  v62 = v44;
  v45 = sub_1D0B7C8AC(v15 + 149, &v61);
  v46 = v45;
  if (v45)
  {
    if (cnprint::CNPrinter::GetLogLevel(v45) <= 1)
    {
      LOWORD(v60[0]) = 12;
      v59 = 1;
      v56 = v62 + v61;
      v58 = *(v15 + 150) + v15[149];
      cnprint::CNPrinter::Print(v60, &v59, "GNSSPreprocessedMeasurementsChecker,stale solution,t_last_gps,%.3lf,t_wifi,%.3lf", v47, v48, v49, v50, v51, SLOBYTE(v56));
    }

    return !v46;
  }

  if ((*(a2 + 32) & 1) == 0 || (*(a2 + 48) & 1) == 0)
  {
LABEL_35:
    sub_1D0C42F28();
  }

  v52 = v23 + v22;
  *a3 = (*(a2 + 3) - *(a2 + 5) + *(v15 + 252) + *(v15 + 253) * v52) * 1000000.0;
  *a4 = sqrt(*(v15 + 254) + (v52 * *(v15 + 256) + *(v15 + 255) * 2.0) * v52) * 1000000.0;
  return !v46;
}

uint64_t raven::GNSSPreprocessedMeasurementsChecker::GetWiFiPositionForCrossCheck(uint64_t a1, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  a10.i64[0] = a2[1];
  v11 = *a10.i64 + *a2;
  v12 = fabs(v11);
  v13 = (*&v12 - 1) < 0xFFFFFFFFFFFFFLL;
  v14 = v11 < 0.0 && (*&v12 - 0x10000000000000) >> 53 < 0x3FF;
  if (v11 >= 0.0)
  {
    v13 = 0;
  }

  v15 = *&v12 <= 0x7FF0000000000000;
  v16 = v12 == INFINITY || v13;
  if (!v15)
  {
    v16 = 1;
  }

  if ((v16 | v14) == 1)
  {
    v46.i16[0] = 12;
    LOBYTE(v45[0]) = 4;
    LOBYTE(v42) = LOBYTE(v11);
    v17 = "GNSSPreprocessedMeasurementsChecker,invalid time,%.3lf";
LABEL_21:
    v22 = &v46;
    v23 = v45;
LABEL_22:
    cnprint::CNPrinter::Print(v22, v23, v17, a4, a5, a6, a7, a8, SLOBYTE(v42));
    return 0;
  }

  v19 = *(a1 + 16);
  if (v19[1152] != 1 || (v19[1440] & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) > 1)
    {
      return 0;
    }

    v46.i16[0] = 12;
    LOBYTE(v45[0]) = 1;
    v42 = a2[1] + *a2;
    v17 = "GNSSPreprocessedMeasurementsChecker,no wifi solution to cross-check,%.3lf";
    goto LABEL_21;
  }

  v21 = v19[1360];
  if (v21 <= 0xF && ((1 << v21) & 0xF7EF) != 0)
  {
    v46.i16[0] = 12;
    LOBYTE(v45[0]) = 4;
    LOBYTE(v42) = LOBYTE(v11);
    v17 = "GNSSPreprocessedMeasurementsChecker,wifi solution has non-wifi source,time,%.3lf,source,%d";
    goto LABEL_21;
  }

  if ((atomic_load_explicit(qword_1EE054ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1EE054ED0))
  {
    qword_1EE054F00 = 0;
    xmmword_1EE054EE0 = 0u;
    xmmword_1EE054EF0 = 0u;
    __cxa_guard_release(qword_1EE054ED0);
  }

  v25 = *(a1 + 16);
  if ((v25[72].i8[0] & 1) == 0)
  {
    goto LABEL_58;
  }

  v46 = v25[79];
  *v27.i64 = CNTimeSpan::operator-(&xmmword_1EE054EE0, &v46, v46, a10);
  if (v28 + *v27.i64 != 0.0)
  {
    qword_1EE054F00 = 0;
    xmmword_1EE054EE0 = 0u;
    xmmword_1EE054EF0 = 0u;
    v29 = *(a1 + 16);
    if ((*(v29 + 1152) & 1) == 0)
    {
      goto LABEL_58;
    }

    xmmword_1EE054EE0 = *(v29 + 1264);
    v26.i64[1] = *(&xmmword_1EE054EE0 + 1);
    xmmword_1EE054EF0 = xmmword_1EE054EE0;
    v25 = *(a1 + 16);
  }

  v30 = 2288;
  if ((*(a1 + 80) & 0xFE) == 2)
  {
    v30 = 2296;
  }

  v26.i64[0] = *(*(a1 + 168) + v30);
  v46 = 0uLL;
  *v31.i64 = CNTimeSpan::SetTimeSpan(&v46, 0, v26, v27);
  if ((v25[72].i8[0] & 1) == 0)
  {
LABEL_58:
    __assert_rtn("operator->", "optional.hpp", 1221, "this->is_initialized()");
  }

  v33 = v25[79].i64[1];
  v45[0] = v25[79].i64[0];
  v45[1] = v33;
  v34 = CNTimeSpan::operator-(a2, v45, v31, v32);
  if (!v34 && (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v35 < 0.0)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  if (v34)
  {
    if (v34 < 0)
    {
      goto LABEL_53;
    }
  }

  else if (v35 < 0.0)
  {
    goto LABEL_53;
  }

  if (v46.i64[0] || (v36 = *&v46.i64[1], (v46.i64[1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    if (v34 == v46.i64[0])
    {
LABEL_43:
      v36 = *&v46.i64[1];
      goto LABEL_44;
    }

    if (v34 <= v46.i64[0])
    {
      goto LABEL_45;
    }

LABEL_53:
    if (cnprint::CNPrinter::GetLogLevel(v34))
    {
      return 0;
    }

    v44 = 12;
    v43 = 0;
    v42 = a2[1] + *a2;
    v17 = "GNSSPreprocessedMeasurementsChecker,time misalignment too large for WiFi cross-check,t_gps,%.3lf,t_wifi,%.3lf";
LABEL_55:
    v22 = &v44;
    v23 = &v43;
    goto LABEL_22;
  }

LABEL_44:
  if (v36 < v35)
  {
    goto LABEL_53;
  }

LABEL_45:
  v37 = sub_1D0B9AF58(v25[1].i64, &unk_1D0EB2678);
  if (!v37 || (v37[171] & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v37) > 1)
    {
      return 0;
    }

    v44 = 12;
    v43 = 1;
    v42 = a2[1] + *a2;
    v17 = "GNSSPreprocessedMeasurementsChecker,no user speed to account for time misalignment,t_gps,%.3lf,t_wifi,%.3lf";
    goto LABEL_55;
  }

  v38 = sub_1D0E355A8(a2, *(v37 + 172));
  v39 = *&qword_1EE054F00;
  if (*&qword_1EE054F00 > *(*(a1 + 168) + 2224))
  {
    if (cnprint::CNPrinter::GetLogLevel(v38))
    {
      return 0;
    }

    v44 = 12;
    v43 = 0;
    v42 = a2[1] + *a2;
    v17 = "GNSSPreprocessedMeasurementsChecker,distance travelled too large for WiFi cross-check,t_gps,%.3lf,dist_travelled,%.3lf";
    goto LABEL_55;
  }

  v40 = *(a1 + 16);
  if ((*(v40 + 1152) & 1) == 0)
  {
    __assert_rtn("get", "optional.hpp", 1211, "this->is_initialized()");
  }

  memcpy(a3 + 1, (v40 + 1168), 0x160uLL);
  v41 = v39 * v39 * 0.333333333;
  a3[39] = v41 + a3[39];
  a3[42] = v41 + a3[42];
  a3[44] = v41 + a3[44];
  return 1;
}

uint64_t sub_1D0E355A8(double *a1, double a2)
{
  result = sub_1D0B7CF88(a1, &xmmword_1EE054EF0);
  if (result)
  {
    result = CNTimeSpan::operator-(a1, &xmmword_1EE054EF0, v5, v6);
    *&qword_1EE054F00 = *&qword_1EE054F00 + a2 * (v7 + result);
    xmmword_1EE054EF0 = *a1;
  }

  return result;
}

void raven::GNSSPreprocessedMeasurementsChecker::Reset(raven::GNSSPreprocessedMeasurementsChecker *this)
{
  if (*(this + 7))
  {
    sub_1D0E357D0(*(this + 6));
    *(this + 6) = 0;
    v2 = *(this + 5);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(this + 4) + 8 * i) = 0;
      }
    }

    *(this + 7) = 0;
  }

  if (*(this + 192) == 1)
  {
    *(this + 192) = 0;
  }
}

void *sub_1D0E3567C(void *a1)
{
  *a1 = &unk_1F4CEFC28;
  sub_1D0E35794((a1 + 4));
  return a1;
}

void sub_1D0E356C0(void *a1)
{
  *a1 = &unk_1F4CEFC28;
  sub_1D0E35794((a1 + 4));

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E35724(uint64_t a1)
{
  *(a1 + 224) = &unk_1F4CDFE98;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  *(a1 + 224) = &unk_1F4CD5F70;
  return a1;
}

uint64_t sub_1D0E35794(uint64_t a1)
{
  sub_1D0E357D0(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1D0E357D0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_1D0E35814((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_1D0E35814(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  *(a1 + 24) = &unk_1F4CEFC88;
  *(a1 + 88) = &unk_1F4CD5E28;
  *(a1 + 32) = &unk_1F4CD5E28;
}

void *sub_1D0E358A4(void *result)
{
  *result = &unk_1F4CEFC88;
  result[8] = &unk_1F4CD5E28;
  result[1] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E35904(void *a1)
{
  *a1 = &unk_1F4CEFC88;
  a1[8] = &unk_1F4CD5E28;
  a1[1] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

double sub_1D0E35974@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000002;
  *a2 = &unk_1F4CE0220;
  *(a2 + 8) = xmmword_1D0E83F60;
  *(a2 + 32) = a2 + 40;
  v2 = 64;
  if (!*(a1 + 120))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

uint64_t sub_1D0E359D0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1D0E35814(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

raven::RavenLosEstimatorLookupTables::CN0StandardNormalCDF *raven::RavenLosEstimatorLookupTables::CN0StandardNormalCDF::CN0StandardNormalCDF(raven::RavenLosEstimatorLookupTables::CN0StandardNormalCDF *this)
{
  for (i = 0; i != 99; ++i)
  {
    v3 = ((i * 10.0) / 99.0) + -5.0;
    *(this + i + 50) = cnstatistics::NormalCDF(this, v3, 0.0, 1.0);
    *(this + i) = v3;
  }

  v7 = 0x4014000000000000;
  v6 = xmmword_1D0E7DCB0;
  sub_1D0C1899C(&v6, &v7);
  *(this + 149) = v4;
  *(this + 99) = 1084227584;
  return this;
}

double raven::RavenLosEstimatorLookupTables::CN0StandardNormalCDF::GetCDFValue(raven::RavenLosEstimatorLookupTables::CN0StandardNormalCDF *this, float a2)
{
  if (a2 <= -5.0)
  {
    return *(this + 50);
  }

  if (a2 >= 5.0)
  {
    return *(this + 149);
  }

  v2 = (((a2 + 5.0) * 10.0) + 0.5);
  if (v2 >= 0x64)
  {
    return *(this + 149);
  }

  v4 = vabds_f32(a2, *(this + v2));
  if (v2 == 99)
  {
    goto LABEL_9;
  }

  v5 = v2 + 1;
  if (v4 <= vabds_f32(a2, *(this + v2 + 1)))
  {
    if (v2)
    {
LABEL_9:
      v5 = (((a2 + 5.0) * 10.0) + 0.5);
      if (v4 > vabds_f32(a2, *(this + v2 - 1)))
      {
        v5 = v2 - 1;
      }

      goto LABEL_12;
    }

    v5 = 0;
  }

LABEL_12:
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 98;
  if (v5 < 0x62)
  {
    v7 = v5;
  }

  return (*(this + v6 + 50) + *(this + v5 + 50) + *(this + v7 + 51)) * 0.333333333;
}

uint64_t raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::Initialize(raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor *this, const raven::RavenPlatformInfo *a2)
{
  GnssChipset = CNPlatformInfo::GetGnssChipset(a2);
  if (GnssChipset > 6)
  {
    if (GnssChipset < 10)
    {
      if (!qword_1EE054F38)
      {
        operator new[]();
      }

      *(this + 4) = qword_1EE054F38;
      v9 = qword_1EE054F40;
      if (!qword_1EE054F40)
      {
        operator new[]();
      }
    }

    else if ((GnssChipset - 10) < 2)
    {
      if (!qword_1EE054F48)
      {
        operator new[]();
      }

      *(this + 4) = qword_1EE054F48;
      v9 = qword_1EE054F50;
      if (!qword_1EE054F50)
      {
        operator new[]();
      }
    }

    else if (GnssChipset == 12)
    {
      if (!qword_1EE054F58)
      {
        operator new[]();
      }

      *(this + 4) = qword_1EE054F58;
      v9 = qword_1EE054F60;
      if (!qword_1EE054F60)
      {
        operator new[]();
      }
    }

    else
    {
      if (GnssChipset != 13)
      {
        goto LABEL_37;
      }

      if (!qword_1EE054F08)
      {
        operator new[]();
      }

      *(this + 4) = qword_1EE054F08;
      v9 = qword_1EE054F10;
      if (!qword_1EE054F10)
      {
        operator new[]();
      }
    }

    goto LABEL_36;
  }

  if (GnssChipset <= 3)
  {
    if (GnssChipset >= 4)
    {
      goto LABEL_37;
    }

    goto LABEL_4;
  }

  if (GnssChipset == 4)
  {
    if (!qword_1EE054F18)
    {
      operator new[]();
    }

    *(this + 4) = qword_1EE054F18;
    v9 = qword_1EE054F20;
    if (!qword_1EE054F20)
    {
      operator new[]();
    }

    goto LABEL_36;
  }

  if (GnssChipset != 5)
  {
    if (!qword_1EE054F28)
    {
      operator new[]();
    }

    *(this + 4) = qword_1EE054F28;
    v9 = qword_1EE054F30;
    if (!qword_1EE054F30)
    {
      operator new[]();
    }

LABEL_36:
    *(this + 5) = v9;
    goto LABEL_37;
  }

LABEL_4:
  if (cnprint::CNPrinter::GetLogLevel(GnssChipset) <= 1)
  {
    v14 = 12;
    v13 = 1;
    cnprint::CNPrinter::Print(&v14, &v13, "LOS Estimator C/N0 lookup tables not supported for this HW", v4, v5, v6, v7, v8, v12);
  }

LABEL_37:
  if (*(this + 4))
  {
    v10 = *(this + 5);
    *(this + 1) = v10 != 0;
    if (v10)
    {
      operator new();
    }
  }

  else
  {
    *(this + 1) = 0;
  }

  return *this & 1;
}

void sub_1D0E37220(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::GetCN0Likelihoods(uint64_t a1, _BYTE *a2, int a3, float a4, uint64_t a5, double *a6, double *a7, uint64_t a8, uint64_t a9)
{
  *a6 = INFINITY;
  *a7 = INFINITY;
  if (*(a1 + 1) != 1)
  {
    return 4294967294;
  }

  v45 = v14;
  v46 = v13;
  v47 = v12;
  v48 = v11;
  v49 = v9;
  v50 = v10;
  if (!*(a1 + 16))
  {
    return 4294967291;
  }

  v43 = 0;
  v44 = 0;
  if (raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::GetGnssBandElevBandIndices(a1, a2, a3, &v43, a6, a7, a8, a9))
  {
    return 0xFFFFFFFFLL;
  }

  v20 = *(a1 + 32);
  v21 = v43;
  v22 = v44;
  v23 = *(v20 + 56 * v43 + 4 * v44);
  v24 = *(v20 + 24);
  result = 4294967292;
  v26 = v23 <= 50.0 && v23 >= 10.0 && v24 <= 10.0;
  if (v26 && v24 > 0.0)
  {
    v27 = fmaxf(a4 + -2.0, 0.0);
    v28 = fminf(a4 + 2.0, 50.0);
    v29 = (v28 - v23) / v24;
    v30 = *(a1 + 16);
    CDFValue = raven::RavenLosEstimatorLookupTables::CN0StandardNormalCDF::GetCDFValue(v30, (v27 - v23) / v24);
    v32 = raven::RavenLosEstimatorLookupTables::CN0StandardNormalCDF::GetCDFValue(v30, v29) - CDFValue;
    *a6 = v32;
    if (v32 >= 0.0 && v32 <= 1.0)
    {
      v34 = *(a1 + 40);
      v35 = *(v34 + 56 * v21 + 4 * v22);
      v36 = *(v34 + 24);
      result = 4294967292;
      v38 = v35 <= 50.0 && v35 >= 10.0 && v36 <= 10.0;
      if (v38 && v36 > 0.0)
      {
        v39 = (v28 - v35) / v36;
        v40 = raven::RavenLosEstimatorLookupTables::CN0StandardNormalCDF::GetCDFValue(v30, (v27 - v35) / v36);
        v41 = raven::RavenLosEstimatorLookupTables::CN0StandardNormalCDF::GetCDFValue(v30, v39) - v40;
        *a7 = v41;
        if (v41 > 1.0 || v41 < 0.0)
        {
          return 4294967293;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::GetGnssBandElevBandIndices(uint64_t a1, _BYTE *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  if (v10 <= 5)
  {
    if (*a2 > 3u)
    {
      v14 = 2;
      goto LABEL_17;
    }

    if (*a2)
    {
      v11 = 4;
      v12 = 3;
      if (v10 != 3)
      {
        v12 = 0;
      }

      v13 = v10 == 2;
      goto LABEL_9;
    }

LABEL_14:
    v20 = v8;
    v21 = v9;
    v19 = 12;
    v18 = 4;
    cnprint::CNPrinter::Print(&v19, &v18, "Invalid GNSS Band type: LOS Estimator C/N0 (or MPF set) likelihoods not found for GNSS band,%d", a4, a5, a6, a7, a8, v10);
    return 0xFFFFFFFFLL;
  }

  if (*a2 > 7u)
  {
    if (v10 == 8)
    {
      v14 = 5;
      goto LABEL_17;
    }

    if (v10 != 9)
    {
      v14 = 0;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v11 = 6;
  v12 = v10 == 7;
  v13 = v10 == 6;
LABEL_9:
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

LABEL_17:
  v16 = 0;
  v17 = 24;
  while (*&asc_1D0EB2758[4 * v16] < a3)
  {
    ++v16;
    v17 -= 4;
    if (!v17)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v16 > 5)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = v14;
  a4[1] = v16;
  return result;
}

uint64_t raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::GetMPFSetLikelihoods(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, double *a5, double *a6, uint64_t a7, uint64_t a8)
{
  *a5 = INFINITY;
  *a6 = INFINITY;
  if (*(a1 + 1) != 1)
  {
    return 4294967294;
  }

  v22 = v8;
  v23 = v9;
  if (*(*(a1 + 32) + 52) != 1)
  {
    return 4294967290;
  }

  v20 = 0;
  v21 = 0;
  if (raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::GetGnssBandElevBandIndices(a1, a2, a3, &v20, a5, a6, a7, a8))
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v20;
  v15 = v21;
  v16 = *(*(a1 + 32) + 56 * v20 + 4 * v21 + 28);
  *a5 = v16;
  result = 4294967293;
  if (v16 >= 0.0 && v16 <= 1.0)
  {
    v18 = *(*(a1 + 40) + 56 * v14 + 4 * v15 + 28);
    *a6 = v18;
    if (v18 > 1.0 || v18 < 0.0)
    {
      return 4294967293;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1D0E37634(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEFCC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::StepCountChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::StepCountChecker::HandleEvent(raven::StepCountChecker *this, const raven::StepCountEvent *a2, raven::StepCountEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v51 = 12;
    v50 = 4;
    v30 = (*(*a2 + 16))(a2, a2, a3);
    v49 = v31 + v30;
    cnprint::CNPrinter::Print(&v51, &v50, "t,%.3lf,StepCountChecker, not configured", v32, v33, v34, v35, v36, SLOBYTE(v49));
    return 0xFFFFFFFFLL;
  }

  if ((*(this + 24) & 1) == 0)
  {
    result = 0;
    *(this + 4) = &unk_1F4CEEBE8;
    v37 = *(a2 + 8);
    *(this + 56) = *(a2 + 24);
    *(this + 40) = v37;
    v38 = *(a2 + 40);
    v39 = *(a2 + 56);
    v40 = *(a2 + 72);
    *(this + 120) = *(a2 + 88);
    *(this + 104) = v40;
    *(this + 88) = v39;
    *(this + 72) = v38;
    v41 = *(a2 + 104);
    v42 = *(a2 + 120);
    v43 = *(a2 + 136);
    v44 = *(a2 + 19);
LABEL_24:
    *(this + 23) = v44;
    *(this + 168) = v43;
    *(this + 152) = v42;
    *(this + 136) = v41;
    *(this + 24) = 1;
    return result;
  }

  v6 = (*(*a2 + 16))(a2);
  if ((*(this + 24) & 1) == 0)
  {
LABEL_31:
    __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
  }

  v8 = v6;
  v9 = v7;
  v10 = v7;
  v11 = (*(*(this + 4) + 16))(this + 32);
  if (v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v13 || (!v11 ? (v14 = (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v14 = 1), !v14 || v8 == v11))
  {
    if (v10 > v12)
    {
      goto LABEL_16;
    }

LABEL_26:
    if (*(this + 24) == 1)
    {
      *(this + 24) = 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (v8 < v11)
  {
    goto LABEL_26;
  }

LABEL_16:
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (*(a2 + 38) <= *(this + 46) || *(a2 + 39) < *(this + 47))
  {
    goto LABEL_26;
  }

  v15 = *(a2 + 8);
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 8) = v15;
  v16 = *(a2 + 40);
  v17 = *(a2 + 56);
  v18 = *(a2 + 72);
  *(a3 + 88) = *(a2 + 88);
  *(a3 + 72) = v18;
  *(a3 + 56) = v17;
  *(a3 + 40) = v16;
  v19 = *(a2 + 104);
  v20 = *(a2 + 120);
  v21 = *(a2 + 136);
  *(a3 + 19) = *(a2 + 19);
  *(a3 + 136) = v21;
  *(a3 + 120) = v20;
  *(a3 + 104) = v19;
  if (*(this + 9) == 1)
  {
    if (*(this + 24) == 1)
    {
      result = 0;
      v23 = *(a2 + 8);
      *(this + 56) = *(a2 + 24);
      *(this + 40) = v23;
      v24 = *(a2 + 40);
      v25 = *(a2 + 56);
      v26 = *(a2 + 72);
      *(this + 120) = *(a2 + 88);
      *(this + 104) = v26;
      *(this + 88) = v25;
      *(this + 72) = v24;
      v27 = *(a2 + 104);
      v28 = *(a2 + 120);
      v29 = *(a2 + 136);
      *(this + 23) = *(a2 + 19);
      *(this + 168) = v29;
      *(this + 152) = v28;
      *(this + 136) = v27;
      return result;
    }

    result = 0;
    *(this + 4) = &unk_1F4CEEBE8;
    v45 = *(a2 + 8);
    *(this + 56) = *(a2 + 24);
    *(this + 40) = v45;
    v46 = *(a2 + 40);
    v47 = *(a2 + 56);
    v48 = *(a2 + 72);
    *(this + 120) = *(a2 + 88);
    *(this + 104) = v48;
    *(this + 88) = v47;
    *(this + 72) = v46;
    v41 = *(a2 + 104);
    v42 = *(a2 + 120);
    v43 = *(a2 + 136);
    v44 = *(a2 + 19);
    goto LABEL_24;
  }

  return 0;
}

uint64_t raven::StepCountChecker::Reset(uint64_t this)
{
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
  }

  return this;
}

uint64_t sub_1D0E37A3C(uint64_t result)
{
  *result = &unk_1F4CEFD10;
  if (*(result + 24) == 1)
  {
    *(result + 24) = 0;
  }

  return result;
}

void sub_1D0E37A6C(uint64_t a1)
{
  *a1 = &unk_1F4CEFD10;
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
  }

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenIonosphereEstimatorActiveObject::RavenIonosphereEstimatorActiveObject(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *a1 = &unk_1F4CEFD70;
  *(a1 + 224) = 256;
  *(a1 + 232) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = 0;
  *(a1 + 1968) = 850045863;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0;
  raven::RavenIonosphereEstimator::RavenIonosphereEstimator((a1 + 2032));
}

void sub_1D0E37D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1D0E3874C(v15 + 2032);
  std::mutex::~mutex((v15 + 1968));
  sub_1D0D41E0C(v16);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(v15);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenIonosphereEstimatorActiveObject::Configure(cnframework::ActiveObjectBase *this, uint64_t *a2)
{
  if (*(this + 224) == 1 && cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    LOWORD(v43) = 12;
    LOBYTE(v42) = 1;
    (*(*this + 16))(__p, this);
    if (v45 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v43, &v42, "Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 224) = 0;
  v10 = *a2;
  if (!*a2 || (*(v10 + 33) & 1) == 0)
  {
    LOWORD(v43) = 12;
    LOBYTE(v42) = 4;
    (*(*this + 16))(__p, this);
    if (v45 >= 0)
    {
      v22 = __p;
    }

    else
    {
      LOBYTE(v22) = __p[0];
    }

    cnprint::CNPrinter::Print(&v43, &v42, "Error: %s could not be configured. p_raven_parameters is not initialized.", v17, v18, v19, v20, v21, v22);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  *(this + 245) = v10;
  cnframework::ActiveObjectBase::SetEventQueueDelay(this, 1.0);
  v43 = *a2;
  if (raven::RavenIonosphereEstimator::Configure(this + 2032, &v43))
  {
    v42 = 12;
    v41 = 4;
    (*(*this + 16))(__p, this);
    if (v45 >= 0)
    {
      v16 = __p;
    }

    else
    {
      LOBYTE(v16) = __p[0];
    }

    cnprint::CNPrinter::Print(&v42, &v41, "Error: %s could not be configured. Configuration of ionosphere estimator failed", v11, v12, v13, v14, v15, v16);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    *(this + 224) = 0;
    return 0xFFFFFFFFLL;
  }

  v23 = *(*a2 + 3104);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v23 <= 90.0 ? (v24 = v23 < -10.0) : (v24 = 1), v24))
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v42) = 4;
    v25 = cnprint::CNLogFormatter::FormatGeneral(this + 239, "Configure() failed, invalid satellite elevation mask specified,mask,%.2lf", v23);
    if (*(this + 1935) >= 0)
    {
      LOBYTE(v31) = v25;
    }

    else
    {
      v31 = *(this + 239);
    }

    cnprint::CNPrinter::Print(__p, &v42, "%s", v26, v27, v28, v29, v30, v31);
    return 0xFFFFFFFFLL;
  }

  *(this + 224) = 1;
  v33 = (*(*this + 40))(this);
  LogLevel = cnprint::CNPrinter::GetLogLevel(v33);
  if (LogLevel <= 1)
  {
    v42 = 12;
    v41 = 1;
    (*(*this + 16))(__p, this);
    if (v45 >= 0)
    {
      v40 = __p;
    }

    else
    {
      LOBYTE(v40) = __p[0];
    }

    cnprint::CNPrinter::Print(&v42, &v41, "%s configured successfully.", v35, v36, v37, v38, v39, v40);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E38128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenIonosphereEstimatorActiveObject::Reset(raven::RavenIonosphereEstimatorActiveObject *this)
{
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
  if (*(this + 1064) == 1)
  {
    *(this + 1064) = 0;
  }

  if (*(this + 1904) == 1)
  {
    *(this + 1904) = 0;
  }

  *(this + 225) = 1;
  std::mutex::lock((this + 1968));
  raven::RavenIonosphereEstimator::Reset((this + 2032));

  std::mutex::unlock((this + 1968));
}

std::string *raven::RavenIonosphereEstimatorActiveObject::SetLogPrefix(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 1936), a2);
  std::string::operator=((a1 + 6096), a2);

  return std::string::operator=((a1 + 8488), a2);
}

uint64_t raven::RavenIonosphereEstimatorActiveObject::GetIonosphereParameters(uint64_t a1, _OWORD *a2)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    LOWORD(v18[0]) = 12;
    v50 = 2;
    v5 = cnprint::CNLogFormatter::FormatGeneral((a1 + 1912), "RavenIonosphereEstimatorActiveObject: not configured");
    if (*(a1 + 1935) >= 0)
    {
      LOBYTE(v11) = v5;
    }

    else
    {
      v11 = *(a1 + 1912);
    }

    cnprint::CNPrinter::Print(v18, &v50, "%s", v6, v7, v8, v9, v10, v11);
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 225))
  {
    return 0xFFFFFFFFLL;
  }

  std::mutex::lock((a1 + 1968));
  v18[1] = 0;
  v18[2] = 0;
  v18[0] = &unk_1F4CEF2B8;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0x7FF8000000000000;
  LOWORD(v29) = 0;
  *(&v29 + 1) = 0;
  *v30 = 0;
  *&v30[8] = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v30[24] = 0x7FF8000000000000;
  v31 = 0uLL;
  v32 = *&v30[8];
  v33 = *&v30[8];
  v34 = *&v30[8];
  v35 = *&v30[8];
  v36 = *&v30[8];
  v37 = *&v30[8];
  *&v38 = 0x7FF8000000000000;
  *(&v38 + 1) = 0x7FF8000000000000;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v45 = 0x7FF8000000000000;
  v46 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  if (raven::RavenIonosphereEstimator::PopulateEvent((a1 + 2032), v18))
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
    v12 = v37;
    a2[8] = v36;
    a2[9] = v12;
    a2[10] = v38;
    v13 = v33;
    a2[4] = v32;
    a2[5] = v13;
    v14 = v35;
    a2[6] = v34;
    a2[7] = v14;
    v15 = *v30;
    *a2 = v29;
    a2[1] = v15;
    v16 = v31;
    a2[2] = *&v30[16];
    a2[3] = v16;
  }

  std::mutex::unlock((a1 + 1968));
  return v4;
}

void sub_1D0E38420(uint64_t a1)
{
  v2 = a1 + 4096;
  *a1 = &unk_1F4CEFD70;
  sub_1D0E18B14((a1 + 10488));
  *(a1 + 10416) = &unk_1F4CE3930;
  *(a1 + 6120) = &unk_1F4CED088;
  *(a1 + 9472) = &unk_1F4CD5E28;
  *(a1 + 9352) = &unk_1F4CD5E28;
  *(a1 + 8512) = &unk_1F4CD5E28;
  sub_1D0E1A158(a1 + 6120);
  if (*(v2 + 2023) < 0)
  {
    operator delete(*(a1 + 6096));
  }

  if (*(v2 + 1999) < 0)
  {
    operator delete(*(a1 + 6072));
  }

  if (*(a1 + 2480) == 1)
  {
    *(a1 + 2280) = &unk_1F4CEE030;
  }

  std::mutex::~mutex((a1 + 1968));
  if (*(a1 + 1959) < 0)
  {
    operator delete(*(a1 + 1936));
  }

  if (*(a1 + 1935) < 0)
  {
    operator delete(*(a1 + 1912));
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

void sub_1D0E385AC(uint64_t a1)
{
  v2 = a1 + 4096;
  *a1 = &unk_1F4CEFD70;
  sub_1D0E18B14((a1 + 10488));
  *(a1 + 10416) = &unk_1F4CE3930;
  *(a1 + 6120) = &unk_1F4CED088;
  *(a1 + 9472) = &unk_1F4CD5E28;
  *(a1 + 9352) = &unk_1F4CD5E28;
  *(a1 + 8512) = &unk_1F4CD5E28;
  sub_1D0E1A158(a1 + 6120);
  if (*(v2 + 2023) < 0)
  {
    operator delete(*(a1 + 6096));
  }

  if (*(v2 + 1999) < 0)
  {
    operator delete(*(a1 + 6072));
  }

  if (*(a1 + 2480) == 1)
  {
    *(a1 + 2280) = &unk_1F4CEE030;
  }

  std::mutex::~mutex((a1 + 1968));
  if (*(a1 + 1959) < 0)
  {
    operator delete(*(a1 + 1936));
  }

  if (*(a1 + 1935) < 0)
  {
    operator delete(*(a1 + 1912));
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E3874C(uint64_t a1)
{
  sub_1D0E18B14((a1 + 8456));
  *(a1 + 8384) = &unk_1F4CE3930;
  *(a1 + 4088) = &unk_1F4CED088;
  *(a1 + 7440) = &unk_1F4CD5E28;
  *(a1 + 7320) = &unk_1F4CD5E28;
  *(a1 + 6480) = &unk_1F4CD5E28;
  sub_1D0E1A158(a1 + 4088);
  if (*(a1 + 4087) < 0)
  {
    operator delete(*(a1 + 4064));
  }

  if (*(a1 + 4063) < 0)
  {
    operator delete(*(a1 + 4040));
  }

  if (*(a1 + 448) == 1)
  {
    *(a1 + 248) = &unk_1F4CEE030;
  }

  return a1;
}

uint64_t raven::RavenActivityStateEstimator::Initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 1)
  {
    LOWORD(v47) = 12;
    v45[0] = 2;
    cnprint::CNPrinter::Print(&v47, v45, "WARNING: ActivityStateEstimator being re-initialized", a4, a5, a6, a7, a8, v33);
    *a1 = 0;
  }

  if (!*a2)
  {
    LOWORD(v47) = 12;
    v45[0] = 4;
    v11 = "ActivityStateEstimator,invalid pointer to RavenParameters";
LABEL_19:
    cnprint::CNPrinter::Print(&v47, v45, v11, a4, a5, a6, a7, a8, v33);
    return 0;
  }

  v10 = *(a2 + 16) + *(a2 + 8);
  if (COERCE__INT64(fabs(v10)) >= 0x7FF0000000000000)
  {
    LOWORD(v47) = 12;
    v45[0] = 4;
    cnprint::CNPrinter::Print(&v47, v45, "ActivityStateEstimator,invalid input time,%.3lf", a4, a5, a6, a7, a8, SLOBYTE(v10));
    return 0;
  }

  v12 = *(*a2 + 872);
  v13 = v12 & 0x7FFFFFFFFFFFFFFFLL;
  v14 = (v12 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v15 = v12 < 0;
  v16 = v12 < 0 && ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (!v15)
  {
    v14 = 0;
  }

  v17 = v13 == 0x7FF0000000000000 || v14;
  if (v13 > 0x7FF0000000000000)
  {
    v17 = 1;
  }

  if ((v17 | v16) == 1)
  {
    LOWORD(v47) = 12;
    v45[0] = 4;
    v33 = *(*(a1 + 8) + 872);
    v11 = "ActivityStateEstimator,invalid estimator prediction interval,%.3lf";
    goto LABEL_19;
  }

  *(a1 + 272) = 0x3DDB7CDFD9D7BDBBLL;
  v37 = 0x10000000ALL;
  v35 = &unk_1F4CEAE48;
  v36 = xmmword_1D0E87BE0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v38 = &v39;
  v39 = 0x3FF0000000000000;
  v19 = 1.0;
  for (i = 48; i != 120; i += 8)
  {
    v19 = v19 + *(&v35 + i);
  }

  if (fabs(v19 + -1.0) > 1.0e-10 && cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v47) = 2;
    v45[0] = 1;
    cnprint::CNPrinter::Print(&v47, v45, "WARNING: HMM initialized with non-normalized probability vector.", v21, v22, v23, v24, v25, v33);
  }

  sub_1D0B94CA4(v45, &v35);
  *&v26.f64[1] = 0xA0000000ALL;
  v46 = xmmword_1D0E87BE0;
  v49 = 0x10000000ALL;
  v48 = xmmword_1D0E87BE0;
  v47 = &unk_1F4CEAE48;
  v50 = &v51;
  v26.f64[0] = 1.0 / v19;
  sub_1D0B8930C(v45, &v47, v26);
  sub_1D0B894B0(a1 + 24, &v47);
  sub_1D0B894B0(a1 + 144, a1 + 24);
  *(a1 + 264) = 1;
  *(a1 + 8) = *a2;
  *(a1 + 280) = *(a2 + 8);
  *a1 = 1;
  if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
  {
    LOWORD(v47) = 12;
    v45[0] = 1;
    v34 = *(a2 + 16) + *(a2 + 8);
    cnprint::CNPrinter::Print(&v47, v45, "ActivityStateEstimator initialized,time,%.3lf", v28, v29, v30, v31, v32, SLOBYTE(v34));
  }

  return 1;
}

uint64_t raven::RavenActivityStateEstimator::Reset(uint64_t this)
{
  *this = 0;
  *(this + 280) = 0;
  *(this + 288) = 0x7FF8000000000000;
  return this;
}

uint64_t raven::RavenActivityStateEstimator::Update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    if ((*a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *a3 > 6.4)
    {
      v12 = 1;
      if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
      {
        LOWORD(v36[0]) = 12;
        LOBYTE(v35) = 1;
        v31 = *(a1 + 288) + *(a1 + 280);
        v33 = *a3;
        cnprint::CNPrinter::Print(v36, &v35, "ActivityStateEstimator,time,%.3lf,step count age invalid or too old,%.3lf", v18, v19, v20, v21, v22, SLOBYTE(v31));
      }
    }

    else if (*(a3 + 8))
    {
      v36[0] = *a2;
      v36[1] = xmmword_1D0EB38E0;
      v36[2] = vdupq_n_s64(0x3FEE666666666666uLL);
      v37 = vdupq_n_s64(0x3FA999999999999AuLL);
      v38 = v37;
      v39 = v37;
      v6 = sub_1D0B954B8(a1 + 16, v36);
      v12 = v6 == 0;
      if (v6)
      {
        v35 = 12;
        v34 = 4;
        v29 = *(a1 + 288) + *(a1 + 280);
        cnprint::CNPrinter::Print(&v35, &v34, "ActivityStateEstimator,time,%.3lf,failed StepCountArgs update,code,%d", v7, v8, v9, v10, v11, SLOBYTE(v29));
      }
    }

    else
    {
      if (!cnprint::CNPrinter::GetLogLevel(a1))
      {
        LOWORD(v36[0]) = 12;
        LOBYTE(v35) = 0;
        v32 = *(a1 + 288) + *(a1 + 280);
        cnprint::CNPrinter::Print(v36, &v35, "ActivityStateEstimator,time,%.3lf,no update due to absence of steps", v23, v24, v25, v26, v27, SLOBYTE(v32));
      }

      return 1;
    }
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v36[0]) = 12;
      LOBYTE(v35) = 1;
      v30 = *(a2 + 8) + *a2;
      cnprint::CNPrinter::Print(v36, &v35, "WARNING: ActivityStateEstimator,time,%.3lf,trying to update uninitialized estimator", v13, v14, v15, v16, v17, SLOBYTE(v30));
    }

    return 0;
  }

  return v12;
}

void sub_1D0E38F24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}

void sub_1D0E39018(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v14[v7];
          if ((v14[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v14[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t raven::MovingStateChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::GNSSUncertaintyScaling::Fire7orNewerPhoneGNSSUncertaintyWrapper::Instance(raven::GNSSUncertaintyScaling::Fire7orNewerPhoneGNSSUncertaintyWrapper *this)
{
  result = qword_1EC5FBBC8;
  if (!qword_1EC5FBBC8)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E391A4()
{
  if (!qword_1EC5FB850)
  {
    operator new();
  }

  return qword_1EC5FB850;
}

uint64_t sub_1D0E392A4()
{
  if (!qword_1EC5FB858)
  {
    operator new();
  }

  return qword_1EC5FB858;
}

uint64_t sub_1D0E393A4()
{
  if (!qword_1EC5FB860)
  {
    operator new();
  }

  return qword_1EC5FB860;
}

uint64_t sub_1D0E394A4()
{
  if (!qword_1EC5FB868)
  {
    operator new();
  }

  return qword_1EC5FB868;
}

uint64_t raven::GNSSUncertaintyScaling::Fire7orNewerWatchGNSSUncertaintyWrapper::Instance(raven::GNSSUncertaintyScaling::Fire7orNewerWatchGNSSUncertaintyWrapper *this)
{
  result = qword_1EC5FBD80;
  if (!qword_1EC5FBD80)
  {
    operator new();
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::Fire7orNewerWatchGNSSUncertaintyWrapper::GetUncertaintyScaleFactorCore(uint64_t a1, int *a2, _BYTE *a3, unsigned __int8 *a4, char *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    v51 = v8;
    v52 = v9;
    v17 = *a4;
    if (v17 > 6)
    {
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v20 = 0;
    }

    else
    {
      v18 = 1 << v17;
      if ((v18 & 0x27) != 0)
      {
        v19 = (1 << *a5) & 0x4C;
LABEL_6:
        v20 = sub_1D0E39A04();
        v21 = sub_1D0E39C50();
        v22 = sub_1D0E39E9C();
        v23 = sub_1D0E3A0E8();
        goto LABEL_11;
      }

      if ((v18 & 0x18) == 0)
      {
        *a5;
        goto LABEL_6;
      }

      *a5;
      v20 = sub_1D0E3A334();
      v21 = sub_1D0E3A580();
      v22 = sub_1D0E3A7CC();
      v23 = sub_1D0E3AA18();
    }

LABEL_11:
    v24 = *a3;
    if (v24 > 5)
    {
      if (*a3 <= 7u)
      {
        if (v24 == 7)
        {
          v26 = 2;
        }

        else
        {
          v26 = 0;
        }

        if (v24 == 6)
        {
          v25 = 1;
        }

        else
        {
          v25 = v26;
        }

        goto LABEL_34;
      }

      if (v24 == 8)
      {
        v25 = 3;
        goto LABEL_34;
      }

      if (v24 == 9)
      {
LABEL_24:
        v50 = 12;
        v49 = 4;
        v47 = *a4;
        v48 = *a5;
        cnprint::CNPrinter::Print(&v50, &v49, "Invalid GNSS Band type: GNSS uncertainty parameters not found for obs_type,%d,band,%d,se,%d,activity,%d", a4, a5, a6, a7, a8, *a2);
        goto LABEL_58;
      }

      v25 = 0;
      if (v24 != 10)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (*a3 > 1u)
      {
        if (v24 == 2)
        {
          v25 = 6;
          goto LABEL_34;
        }

        if (v24 == 3)
        {
          v25 = 4;
          goto LABEL_34;
        }

        v25 = 0;
        if (v24 != 4)
        {
LABEL_34:
          v27 = v25;
          v28 = *a2;
          if (*a2 <= 2)
          {
            if (v28 != 1)
            {
              if (v28 == 2)
              {
                if (v21)
                {
                  v29 = v21 + 228 * v27;
                  v30 = *(v29 + 224);
                  v31 = *a6;
                  v32 = a6[1];
                  goto LABEL_61;
                }

                v50 = 12;
                v49 = 5;
                v45 = *a4;
                cnprint::CNPrinter::Print(&v50, &v49, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
                v11 = 4.0;
LABEL_64:
                v10 = 0x100000000;
                return v10 | LODWORD(v11);
              }

              goto LABEL_48;
            }

            if (!v20)
            {
              v50 = 12;
              v49 = 5;
              v46 = *a4;
              cnprint::CNPrinter::Print(&v50, &v49, "Invalid range unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
              goto LABEL_58;
            }

            v38 = v20 + 228 * v27;
            v39 = a6[1];
            if (*(v38 + 32 * *a6 + 2 * v39))
            {
              v30 = *(v38 + 224);
              v37 = *(v38 + 32 * *a6 + 2 * v39);
              goto LABEL_63;
            }

LABEL_58:
            v11 = 1.0;
            goto LABEL_64;
          }

          if (v28 == 3)
          {
            if (v22)
            {
              v40 = v22 + 228 * v27;
              v30 = *(v40 + 224);
              v31 = *a6;
              v32 = a6[1];
              v34 = *(v40 + 32 * *a6 + 2 * v32);
              if (!v34)
              {
                goto LABEL_59;
              }

              goto LABEL_54;
            }
          }

          else
          {
            if (v28 != 4)
            {
LABEL_48:
              v50 = 12;
              v49 = 5;
              v43 = *a4;
              cnprint::CNPrinter::Print(&v50, &v49, "Invalid obs type - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
              goto LABEL_58;
            }

            if (v23)
            {
              v33 = v23 + 228 * v27;
              v30 = *(v33 + 224);
              v31 = *a6;
              v32 = a6[1];
              v34 = *(v33 + 32 * *a6 + 2 * v32);
              if (v34)
              {
                v35 = 1;
              }

              else
              {
                v35 = v22 == 0;
              }

              if (!v35)
              {
                v36 = v22 + 228 * v27;
                if (*(v36 + 32 * v31 + 2 * v32))
                {
                  v30 = *(v36 + 224);
                  v37 = *(v36 + 32 * v31 + 2 * v32);
LABEL_63:
                  v11 = v30 * v37;
                  goto LABEL_64;
                }

LABEL_59:
                if (!v21)
                {
                  goto LABEL_66;
                }

                v29 = v21 + 228 * v27;
LABEL_61:
                v41 = *(v29 + 32 * v31 + 2 * v32);
                if (v41)
                {
                  v37 = v41;
                  goto LABEL_63;
                }

LABEL_66:
                v10 = 0x100000000;
                v11 = v30 / 0.01;
                return v10 | LODWORD(v11);
              }

LABEL_54:
              v37 = v34;
              goto LABEL_63;
            }
          }

          v50 = 12;
          v49 = 5;
          v44 = *a4;
          cnprint::CNPrinter::Print(&v50, &v49, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
          v11 = 2.0;
          goto LABEL_64;
        }

        goto LABEL_24;
      }

      if (!*a3)
      {
        goto LABEL_24;
      }
    }

    v25 = 5;
    goto LABEL_34;
  }

  v10 = 0;
  v11 = 0.0;
  return v10 | LODWORD(v11);
}

uint64_t sub_1D0E39A04()
{
  result = qword_1EC5FB870;
  if (!qword_1EC5FB870)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E39C50()
{
  result = qword_1EC5FB878;
  if (!qword_1EC5FB878)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E39E9C()
{
  result = qword_1EC5FB880;
  if (!qword_1EC5FB880)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E3A0E8()
{
  result = qword_1EC5FB888;
  if (!qword_1EC5FB888)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E3A334()
{
  result = qword_1EC5FB890;
  if (!qword_1EC5FB890)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E3A580()
{
  result = qword_1EC5FB898;
  if (!qword_1EC5FB898)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E3A7CC()
{
  result = qword_1EC5FB8A0;
  if (!qword_1EC5FB8A0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E3AA18()
{
  result = qword_1EC5FB8A8;
  if (!qword_1EC5FB8A8)
  {
    operator new();
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::Fire7orNewerWatchGNSSUncertaintyWrapper::GetScaleFactorTableIndices(float a1, double a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = 0;
  v13 = 24;
  while (flt_1D0EB3D60[v12] < a1)
  {
    ++v12;
    v13 -= 4;
    if (!v13)
    {
      v12 = 6;
      break;
    }
  }

  v14 = 0;
  v15 = 120;
  while (dbl_1D0EB3D78[v14] < a2)
  {
    ++v14;
    v15 -= 8;
    if (!v15)
    {
      v14 = 15;
      break;
    }
  }

  v22 = v10;
  v23 = v11;
  v16 = v12 >= 7 || v14 >= 0x10;
  v17 = !v16;
  if (v16)
  {
    v21 = 12;
    v20 = 5;
    v18 = a1;
    cnprint::CNPrinter::Print(&v21, &v20, "invalid index found,cn0,%.3f,cn0_bin,%zu,elev,%.3lf,elev_bin,%zu,", a6, a7, a8, a9, a10, SLOBYTE(v18));
  }

  else
  {
    *a4 = v12;
    a4[1] = v14;
  }

  return v17;
}

uint64_t raven::RavenPositionContextEstimatorActiveObject::RavenPositionContextEstimatorActiveObject(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *a1 = &unk_1F4CF0050;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_1F4CF00E0;
  *(a1 + 368) = 0x100000002;
  *(a1 + 344) = &unk_1F4CE0220;
  *(a1 + 376) = a1 + 384;
  *(a1 + 424) = 0x100000002;
  *(a1 + 400) = &unk_1F4CE0220;
  *(a1 + 432) = a1 + 440;
  *(a1 + 352) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 456) = 1;
  *(a1 + 464) = 0x3DDB7CDFD9D7BDBBLL;
  *(a1 + 472) = 0;
  *(a1 + 480) = xmmword_1D0E83F80;
  *(a1 + 496) = 0;
  *(a1 + 504) = &unk_1F4CEF5C8;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0x7FF8000000000000;
  *(a1 + 608) = 0;
  *(a1 + 616) = &unk_1F4CEF568;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0x7FF8000000000000;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0x3FE0000000000000;
  *(a1 + 736) = 0x3FE0000000000000;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 744) = 0u;
  sub_1D0B751F4(&__str, "<PositionContext> ");
  std::string::operator=((a1 + 288), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1D0B751F4(&__str, "<PositionContext> ");
  std::string::operator=((a1 + 768), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1D0E3AFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D0E3B600(v15 + 320);
  sub_1D0D41E0C(v15 + 264);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(v15);
  _Unwind_Resume(a1);
}

void raven::RavenPositionContextEstimatorActiveObject::~RavenPositionContextEstimatorActiveObject(void **this)
{
  *this = &unk_1F4CF0050;
  if (*(this + 791) < 0)
  {
    operator delete(this[96]);
  }

  if (*(this + 767) < 0)
  {
    operator delete(this[93]);
  }

  this[42] = &unk_1F4CF00E0;
  this[50] = &unk_1F4CD5E28;
  this[43] = &unk_1F4CD5E28;
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenPositionContextEstimatorActiveObject::~RavenPositionContextEstimatorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::RavenPositionContextEstimatorActiveObject::Configure(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 224) == 1 && cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v37) = 12;
    LOBYTE(v36) = 1;
    (*(*a1 + 16))(__p, a1);
    v4 = v39 >= 0 ? __p : __p[0];
    cnprint::CNLogFormatter::FormatGeneral((a1 + 264), "Warning: %s configured more than once.", v4);
    if (*(a1 + 287) >= 0)
    {
      LOBYTE(v10) = a1 + 8;
    }

    else
    {
      v10 = *(a1 + 264);
    }

    cnprint::CNPrinter::Print(&v37, &v36, "%s", v5, v6, v7, v8, v9, v10);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 224) = 0;
  v11 = *a2;
  if (!*a2 || (*(v11 + 33) & 1) == 0)
  {
    LOWORD(v37) = 12;
    LOBYTE(v36) = 4;
    (*(*a1 + 16))(__p, a1);
    if (v39 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    cnprint::CNLogFormatter::FormatGeneral((a1 + 264), "Error: %s could not be configured. p_raven_parameters is not initialized.", v19);
    if (*(a1 + 287) >= 0)
    {
      LOBYTE(v25) = a1 + 8;
    }

    else
    {
      v25 = *(a1 + 264);
    }

    cnprint::CNPrinter::Print(&v37, &v36, "%s", v20, v21, v22, v23, v24, v25);
    goto LABEL_28;
  }

  *(a1 + 312) = v11;
  v37 = v11;
  if (raven::RavenPositionContextEstimator::Configure(a1 + 320, &v37))
  {
    v36 = 12;
    v35 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v39 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    cnprint::CNLogFormatter::FormatGeneral((a1 + 264), "Error: %s could not be configured. Configuration of position context estimator failed.", v12);
    if (*(a1 + 287) >= 0)
    {
      LOBYTE(v18) = a1 + 8;
    }

    else
    {
      v18 = *(a1 + 264);
    }

    cnprint::CNPrinter::Print(&v36, &v35, "%s", v13, v14, v15, v16, v17, v18);
LABEL_28:
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  *(a1 + 224) = 1;
  v27 = (*(*a1 + 40))(a1);
  if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
  {
    v36 = 12;
    v35 = 1;
    (*(*a1 + 16))(__p, a1);
    v28 = v39 >= 0 ? __p : __p[0];
    cnprint::CNLogFormatter::FormatGeneral((a1 + 264), "%s configured successfully.", v28);
    if (*(a1 + 287) >= 0)
    {
      LOBYTE(v34) = a1 + 8;
    }

    else
    {
      v34 = *(a1 + 264);
    }

    cnprint::CNPrinter::Print(&v36, &v35, "%s", v29, v30, v31, v32, v33, v34);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E3B484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *raven::RavenPositionContextEstimatorActiveObject::SetLogPrefix(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1 + 12, a2);

  return std::string::operator=(a1 + 32, a2);
}

double sub_1D0E3B500(uint64_t a1)
{
  *(a1 + 320) = 0;
  *(a1 + 472) = 0;
  *(a1 + 608) = 0;
  result = NAN;
  *(a1 + 480) = xmmword_1D0E83F80;
  *(a1 + 496) = 0;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0x3FE0000000000000;
  *(a1 + 736) = 0x3FE0000000000000;
  return result;
}

void *sub_1D0E3B530(void *result)
{
  *result = &unk_1F4CF00E0;
  result[8] = &unk_1F4CD5E28;
  result[1] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E3B590(void *a1)
{
  *a1 = &unk_1F4CF00E0;
  a1[8] = &unk_1F4CD5E28;
  a1[1] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E3B600(uint64_t a1)
{
  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  *(a1 + 16) = &unk_1F4CF00E0;
  *(a1 + 80) = &unk_1F4CD5E28;
  *(a1 + 24) = &unk_1F4CD5E28;
  return a1;
}

double raven::PositionChecker::Configure(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  v4 = *a2;
  *(a1 + 40) = *(*a2 + 920);
  *(a1 + 32) = *(v4 + 2512);
  *(a1 + 48) = raven::GNSSMeasurementSelectionParameters::AllMeasurementsExcluded((v4 + 592)) ^ 1;
  v10 = *(v4 + 2136);
  if ((*&v10 <= -1 || ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v10 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v29 = 12;
    v28 = 4;
    cnprint::CNPrinter::Print(&v29, &v28, "PositionChecker: Invalid innovation reweighting threshold %.1lg", v5, v6, v7, v8, v9, SLOBYTE(v10));
  }

  else
  {
    v13 = *(v4 + 2144);
    if ((*&v13 <= -1 || ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v13 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v29 = 12;
      v28 = 4;
      cnprint::CNPrinter::Print(&v29, &v28, "PositionChecker:Invalid innovation rejection threshold %.1lg", v5, v6, v7, v8, v9, SLOBYTE(v13));
    }

    else
    {
      v16 = *(v4 + 2160);
      if ((*&v16 <= -1 || ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v16 - 1) >= 0xFFFFFFFFFFFFFLL)
      {
        v29 = 12;
        v28 = 4;
        cnprint::CNPrinter::Print(&v29, &v28, "PositionChecker: Invalid target horizontal sigma value %.1lg", v5, v6, v7, v8, v9, SLOBYTE(v16));
      }

      else
      {
        v19 = *(v4 + 2168);
        if ((*&v19 <= -1 || ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v19 - 1) >= 0xFFFFFFFFFFFFFLL)
        {
          v29 = 12;
          v28 = 4;
          cnprint::CNPrinter::Print(&v29, &v28, "PositionChecker: Invalid vertical target sigma value %.1lg", v5, v6, v7, v8, v9, SLOBYTE(v19));
        }

        else
        {
          v22 = *(v4 + 3216);
          if ((v22 <= -1 || ((v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v22 - 1) >= 0xFFFFFFFFFFFFFLL)
          {
            v29 = 12;
            v28 = 4;
            cnprint::CNPrinter::Print(&v29, &v28, "PositionChecker: Invalid VL position uncertainty default scale factor %.1lg", v5, v6, v7, v8, v9, v22);
          }

          else if (v16 <= v10)
          {
            if (v19 <= v10)
            {
              v26 = *(v4 + 3496);
              v27 = *(v4 + 3504);
              if (v26 <= 0.0 || v27 < 0.0)
              {
                cnprint::CNPrinter::Print(&v29, &v28, "PositionChecker: Invalid hybrid 2D WiFi + DEM altitude threshold values, unc %.1lg age %.1lg", v5, v6, v7, v8, v9, SLOBYTE(v26));
              }

              else
              {
                *(a1 + 56) = v10 * v10;
                *(a1 + 64) = v13 * v13;
                *(a1 + 72) = *(v4 + 2152);
                *(a1 + 80) = v16 * v16;
                result = v19 * v19;
                *(a1 + 88) = v19 * v19;
                *(a1 + 96) = v22;
                *(a1 + 104) = v26;
                *(a1 + 112) = v27;
                *(a1 + 24) = *(v4 + 3830);
                *(a1 + 25) = *(v4 + 3832);
                *(a1 + 26) = *(v4 + 3831);
                *(a1 + 8) = 1;
              }
            }

            else
            {
              v29 = 12;
              v28 = 4;
              cnprint::CNPrinter::Print(&v29, &v28, "PositionChecker: Invalid vertical target sigma count: value of %.1lg is greater than reweight-sigma threshold %.1lg", v5, v6, v7, v8, v9, SLOBYTE(v19));
            }
          }

          else
          {
            v29 = 12;
            v28 = 4;
            cnprint::CNPrinter::Print(&v29, &v28, "PositionChecker: Invalid horizontal target sigma count: value of %.1lg is greater than reweight-sigma threshold %.1lg", v5, v6, v7, v8, v9, SLOBYTE(v16));
          }
        }
      }
    }
  }

  return result;
}

uint64_t raven::PositionChecker::TestInnovationAndReweight(raven::PositionChecker *this, raven::PositionEvent *a2)
{
  if (!sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EC0A90))
  {
    if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
    {
      LOWORD(v143) = 12;
      LOBYTE(v115) = 1;
      v40 = (*(*a2 + 16))(a2);
      v83 = v41 + v40;
      cnprint::CNPrinter::Print(&v143, &v115, "t,%.3lf skipped position measurement innovation test: invalid raven solution", v42, v43, v44, v45, v46, SLOBYTE(v83));
    }

    return 5;
  }

  v4 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EC0A90);
  if (!v4)
  {
    sub_1D0C543A8("unordered_map::at: key not found");
  }

  v5 = v4;
  if ((v4[186] & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      LOWORD(v143) = 12;
      LOBYTE(v115) = 1;
      v47 = (*(*a2 + 16))(a2);
      v84 = v48 + v47;
      cnprint::CNPrinter::Print(&v143, &v115, "t,%.3lf skipped position measurement innovation test: invalid device position", v49, v50, v51, v52, v53, SLOBYTE(v84));
    }

    return 5;
  }

  if ((v4[196] & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      LOWORD(v143) = 12;
      LOBYTE(v115) = 1;
      v54 = (*(*a2 + 16))(a2);
      v85 = v55 + v54;
      cnprint::CNPrinter::Print(&v143, &v115, "t,%.3lf skipped position measurement innovation test: invalid device velocity", v56, v57, v58, v59, v60, SLOBYTE(v85));
    }

    return 5;
  }

  v168 = 0x100000003;
  v166 = &unk_1F4CDEB28;
  v167 = xmmword_1D0E7DCC0;
  v169 = &v170;
  v170 = *(a2 + 18);
  v171 = *(a2 + 38);
  v160 = 0x100000006;
  v158 = &unk_1F4CE0BF8;
  v159 = xmmword_1D0E84530;
  v161 = &v162;
  v162 = *(v4 + 187);
  v163 = v4[189];
  v164 = *(v4 + 197);
  v165 = v4[199];
  v155 = 0x300000003;
  v153 = &unk_1F4CD5DD0;
  v154 = xmmword_1D0E76C10;
  v156 = &v157;
  v150 = 0x300000003;
  v148 = &unk_1F4CD5DD0;
  v149 = xmmword_1D0E76C10;
  v151 = &v152;
  sub_1D0DF5384((v4 + 149), &v153);
  if ((v6 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
    {
      LOWORD(v143) = 12;
      LOBYTE(v115) = 1;
      v61 = (*(*a2 + 16))(a2);
      v86 = v62 + v61;
      cnprint::CNPrinter::Print(&v143, &v115, "t,%.3lf skipped position measurement innovation test: failed to get raven position solution covariance", v63, v64, v65, v66, v67, SLOBYTE(v86));
    }

    return 5;
  }

  sub_1D0C4DF40((v5 + 149), &v148);
  if ((v7 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
    {
      LOWORD(v143) = 12;
      LOBYTE(v115) = 1;
      v68 = (*(*a2 + 16))(a2);
      v87 = v69 + v68;
      cnprint::CNPrinter::Print(&v143, &v115, "t,%.3lf skipped position measurement innovation test: failed to get raven velocity solution covariance", v70, v71, v72, v73, v74, SLOBYTE(v87));
    }

    return 5;
  }

  v145 = 0x600000006;
  v143 = &unk_1F4CDF278;
  v146 = v147;
  v144 = xmmword_1D0E7F320;
  memset(v147, 0, sizeof(v147));
  v139 = 0x100000003;
  v137 = &unk_1F4CDEAA0;
  v138 = xmmword_1D0E7DCC0;
  v142 = 2;
  v140 = &v141;
  v141 = 0x100000000;
  v119 = 0x400000003;
  v133 = 0x100000003;
  v131 = &unk_1F4CDEAA0;
  v132 = xmmword_1D0E7DCC0;
  v136 = 5;
  v134 = &v135;
  v135 = 0x400000003;
  sub_1D0BADC74(&v115, &v143, &v137, &v137);
  sub_1D0D2CFF0(&v115, &v153);
  sub_1D0BADC74(&v115, &v143, &v131, &v131);
  sub_1D0D2CFF0(&v115, &v148);
  v128 = 0x100000006;
  v126 = &unk_1F4CE0BF8;
  v129 = v130;
  v127 = xmmword_1D0E84530;
  memset(v130, 0, sizeof(v130));
  v123 = 0x100000006;
  v121 = &unk_1F4CE0BF8;
  v124 = v125;
  v122 = xmmword_1D0E84530;
  memset(v125, 0, sizeof(v125));
  v115 = (*(*a2 + 16))(a2);
  *&v116 = v8;
  v110 = (v5[3][2])(v5 + 3);
  *&v111 = v9;
  v12 = CNTimeSpan::operator-(&v115, &v110, v10, v11);
  v120 = v13 + v12;
  v117 = 0x600000006;
  v115 = &unk_1F4CDF278;
  v116 = xmmword_1D0E7F320;
  v118 = &v119;
  v112 = 0x600000006;
  v110 = &unk_1F4CDF278;
  v111 = xmmword_1D0E7F320;
  v113 = &v114;
  sub_1D0BFCF2C(&v158, &v121, &v120, &v126, &v115, &v110, v14, v15);
  v102 = 0x600000006;
  v100 = &unk_1F4CDF278;
  v101 = xmmword_1D0E7F320;
  v103 = v104;
  sub_1D0B89390(&v115, &v143, &v100);
  v17 = v116;
  v16 = DWORD1(v116);
  v97 = 0x600000006;
  v92 = &unk_1F4CDF278;
  v98 = v99;
  v93 = DWORD1(v116);
  v94 = v116;
  v95 = v116 * DWORD1(v116);
  v96 = DWORD1(v116);
  if (DWORD1(v116))
  {
    v18 = 0;
    v19 = 0;
    v20 = HIDWORD(v116);
    v21 = v118;
    do
    {
      v22 = v18;
      v23 = v19;
      for (i = v17; i; --i)
      {
        v99[v23] = v21[v22];
        v23 += v16;
        ++v22;
      }

      ++v19;
      v18 += v20;
    }

    while (v19 != v16);
  }

  v107 = 0x600000006;
  v105 = &unk_1F4CDF278;
  v106 = xmmword_1D0E7F320;
  v108 = &v109;
  sub_1D0B89390(&v100, &v92, &v105);
  sub_1D0D2D730(&v105, &v137, &v137, &v92);
  sub_1D0BFA8EC(&v100, &v126, &v137);
  sub_1D0BBA094(v91, &v100);
  v102 = 0x300000003;
  v100 = &unk_1F4CD5DD0;
  v101 = xmmword_1D0E76C10;
  v103 = v104;
  if ((sub_1D0C1A564(a2, &v100) & 1) == 0)
  {
    v90 = 12;
    v89 = 4;
    v75 = (*(*a2 + 16))(a2);
    v88 = v76 + v75;
    cnprint::CNPrinter::Print(&v90, &v89, "t,%.3lf positionevent failure: unable to obtain measurement variance", v77, v78, v79, v80, v81, SLOBYTE(v88));
    return 1;
  }

  result = raven::PositionChecker::InnovationTestingAndReweighting(this, &v166, &v100, v91, &v92);
  if (result == 4)
  {
    v32 = sub_1D0E3CAF0(a2, &v100, v26, v27, v28, v29, v30, v31);
    result = 4;
    if ((v32 & 1) == 0)
    {
      v90 = 12;
      v89 = 4;
      v33 = (*(*a2 + 16))(a2);
      v82 = v34 + v33;
      cnprint::CNPrinter::Print(&v90, &v89, "t,%.3lf positionevent failure: unable to set reweighted measurement variance", v35, v36, v37, v38, v39, SLOBYTE(v82));
      return 1;
    }
  }

  return result;
}

uint64_t raven::PositionChecker::InnovationTestingAndReweighting(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.i64[0] = *(a2 + 8);
  v6.i64[0] = *(a3 + 8);
  v5.i64[1] = *(a4 + 8);
  v6.i64[1] = *(a5 + 8);
  v7.i64[0] = 0x300000003;
  v7.i64[1] = 0x300000003;
  if (vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(v5, xmmword_1D0EC0A80), vceqq_s32(v6, v7))))))
  {
    return 1;
  }

  v130 = 0x100000003;
  v129 = xmmword_1D0E7DCC0;
  v128 = &unk_1F4CDEB28;
  v131 = &v132;
  sub_1D0BA5A78(a2, a4, &v128);
  sub_1D0BD2CA4(v127, **(a4 + 32), *(*(a4 + 32) + 8), *(*(a4 + 32) + 16));
  v124 = 0x100000003;
  v123 = xmmword_1D0E7DCC0;
  v122 = &unk_1F4CDEB28;
  v125 = &v126;
  v119 = 0x300000003;
  v118 = xmmword_1D0E76C10;
  v117 = &unk_1F4CD5DD0;
  v120 = &v121;
  v114 = 0x300000003;
  v113 = xmmword_1D0E76C10;
  v112 = &unk_1F4CD5DD0;
  v115 = &v116;
  sub_1D0E296D4(v127, &v128, &v122);
  if (!v17 || !sub_1D0BFE654(v127, a3, &v117) || (sub_1D0BFE654(v127, a5, &v112) & 1) == 0)
  {
    v67 = 12;
    LOBYTE(v107) = 4;
    cnprint::CNPrinter::Print(&v67, &v107, "Failed to transform information from ECEF to ENU", v12, v13, v14, v15, v16, v66);
    return 1;
  }

  v109 = 0x300000003;
  v108 = xmmword_1D0E76C10;
  v107 = &unk_1F4CD5DD0;
  v110 = &v111;
  sub_1D0B88838(&v112, &v117, &v107);
  v72 = 0x100000000;
  v104 = 0x100000002;
  v102 = &unk_1F4CE0EA8;
  v105 = &v106;
  v103 = xmmword_1D0E83F60;
  v106 = 0x100000000;
  sub_1D0D89C74(&v67, &v122, &v102);
  v19 = v68;
  v18 = v69;
  v89 = 0x200000001;
  v84 = &unk_1F4CECB50;
  v90 = v91;
  v85 = v69;
  v86 = v68;
  v87 = v68 * v69;
  v88 = v69;
  if (v69)
  {
    v20 = 0;
    v21 = 0;
    v22 = v70;
    v23 = v71;
    do
    {
      v24 = v20;
      v25 = v21;
      for (i = v19; i; --i)
      {
        v91[v25] = *(v23 + 8 * v24);
        v25 += v18;
        ++v24;
      }

      ++v21;
      v20 += v22;
    }

    while (v21 != v18);
  }

  sub_1D0E3CBB4(&v107, &v102, &v102, v78);
  v81 = 0x200000002;
  v80 = xmmword_1D0E83F70;
  v79 = &unk_1F4CE0268;
  v82 = &v83;
  v135 = 0x100000002;
  v134 = xmmword_1D0E83F60;
  v133 = &unk_1F4CE0EA8;
  v136 = &v137;
  v75 = 0x100000008;
  v74 = xmmword_1D0E84520;
  v73 = &unk_1F4CE4320;
  v76 = &v77;
  sub_1D0B9F868(v78, &v133, &v73, &v79);
  v94 = 0x200000001;
  v93 = xmmword_1D0E84500;
  v92 = &unk_1F4CECB50;
  v95 = &v96;
  sub_1D0B89390(&v84, &v79, &v92);
  sub_1D0D89C74(&v73, &v122, &v102);
  v99 = 0x100000001;
  *&v27 = 0x100000001;
  *(&v27 + 1) = 0x100000001;
  v98 = v27;
  v97 = &unk_1F4CDF418;
  v100 = &v101;
  v28 = sub_1D0B89390(&v92, &v73, &v97);
  v29 = *v100;
  cnstatistics::InverseChi2(v28, a1[9], 2.0);
  if (v29 <= v31)
  {
    v33 = 0;
LABEL_23:
    v46 = v125[2] * v125[2];
    v47 = v46 / *&v110[2 * SHIDWORD(v108) + 2];
    if (v47 <= a1[7] || (v48 = v46 / a1[11] - *&v115[2 * SHIDWORD(v113) + 2], (*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v49 = &v120[2 * SHIDWORD(v118)], v48 <= v49[2]))
    {
      if ((v33 & 1) == 0)
      {
        return 5;
      }
    }

    else
    {
      v49[2] = v48;
      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        v67 = 12;
        LOBYTE(v73) = 1;
        v55 = sqrt(v47);
        cnprint::CNPrinter::Print(&v67, &v73, "PositionChecker: measurement reweighted for axis# 2 normalized innovation = %.1lg", v50, v51, v52, v53, v54, SLOBYTE(v55));
      }
    }

    sub_1D0B9F3C4(&v67, **(a4 + 32), *(*(a4 + 32) + 8), *(*(a4 + 32) + 16));
    if (sub_1D0BFE654(&v67, &v117, a3))
    {
      return 4;
    }

    LOWORD(v73) = 12;
    LOBYTE(v79) = 4;
    cnprint::CNPrinter::Print(&v73, &v79, "PositionChecker: Failed to transform information from ENU to ECEF frame", v56, v57, v58, v59, v60, v66);
    return 1;
  }

  v32 = 0;
  v33 = 0;
  v34 = 1;
  while (1)
  {
    v35 = v34;
    v36 = v125[v32] * v125[v32];
    v37 = v36 / *&v110[v32 + v32 * HIDWORD(v108)];
    if (v37 > a1[8])
    {
      break;
    }

    if (v37 > a1[7])
    {
      v38 = v36 / a1[10] - *&v115[v32 + v32 * HIDWORD(v113)];
      if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v39 = v32 + v32 * HIDWORD(v118);
        if (v38 > *&v120[v39])
        {
          *&v120[v39] = v38;
          LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
          v33 = 1;
          if (LogLevel <= 1)
          {
            v67 = 12;
            LOBYTE(v73) = 1;
            cnprint::CNPrinter::Print(&v67, &v73, "PositionChecker: measurement reweighted for axis# %d normalized innovation = %.1lg", v40, v41, v42, v43, v44, v32);
          }
        }
      }
    }

    v34 = 0;
    v32 = 1;
    if ((v35 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    v67 = 12;
    LOBYTE(v73) = 1;
    cnprint::CNPrinter::Print(&v67, &v73, "PositionChecker: measurement rejected, normalized innovation for axis# %d = %.1lg", v61, v62, v63, v64, v65, v32);
  }

  return 3;
}

uint64_t sub_1D0E3CAF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8) == 3 && *(a2 + 12) == 3;
  v9 = v8;
  if (v8)
  {
    v10 = *(a2 + 32);
    a1[39] = *v10;
    v11 = *(a2 + 20);
    v12 = &v10[v11];
    a1[40] = *v12;
    v13 = &v10[2 * v11];
    a1[41] = *v13;
    a1[40] = v10[1];
    a1[42] = v12[1];
    a1[43] = v10[((2 * v11) | 1)];
    a1[41] = v10[2];
    a1[43] = v12[2];
    a1[44] = v13[2];
  }

  else
  {
    v17 = 12;
    v16 = 4;
    cnprint::CNPrinter::Print(&v17, &v16, "Failed to set ECEF covariance matrix: Invalid input matrix size", a4, a5, a6, a7, a8, v15);
  }

  return v9;
}

uint64_t sub_1D0E3CBB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a3 + 16);
  *(a4 + 24) = 0x200000002;
  *a4 = &unk_1F4CE0268;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v5 * v4;
  *(a4 + 20) = v4;
  v6 = a4 + 40;
  *(a4 + 32) = a4 + 40;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 32);
    v10 = *(a3 + 32);
    do
    {
      if (v4)
      {
        v11 = 0;
        v12 = *(result + 20) * *(v10 + 4 * v8);
        v13 = *(result + 32);
        v14 = v7;
        v15 = v4;
        do
        {
          *(v6 + 8 * v14++) = *(v13 + 8 * (*(v9 + 4 * v11++) + v12));
          --v15;
        }

        while (v15);
      }

      ++v8;
      v7 += v4;
    }

    while (v8 != v5);
  }

  return result;
}

uint64_t raven::PositionChecker::Supplement2DWiFiWithAltitudeAssistance(raven::PositionChecker *this, raven::PositionEvent *a2)
{
  if (*(a2 + 200) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 201) != 1 || *(a2 + 202) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(this + 2);
  if (*(v5 + 144) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v54[0] = (*(*(v5 + 152) + 16))();
  v54[1] = v6;
  v53 = *(a2 + 104);
  v8 = CNTimeSpan::operator-(&v53, v54, v53, v7);
  v12 = v8;
  v52[0] = v8;
  *&v52[1] = v9;
  v13 = v9;
  v15 = v9 < 0.0 || v8 < 0;
  v16 = v8;
  v17 = v9;
  if (v15)
  {
    v16 = CNTimeSpan::operator-(v52, v10, v11);
    v17 = v18;
  }

  v10.i64[0] = *(this + 14);
  v50 = 0;
  v51 = 0;
  *v20.i64 = CNTimeSpan::SetTimeSpan(&v50, 0, v10, v11);
  if (!v16 && (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (!v50)
  {
    v20.i64[0] = v51;
    if ((v51 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_22;
    }
  }

  v22 = v16 <= v50;
  if (v16 == v50)
  {
LABEL_21:
    v20.i64[0] = v51;
LABEL_22:
    v22 = v17 <= *v20.i64;
  }

  if (!v22)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v19))
    {
      LOWORD(v50) = 12;
      v49 = 0;
      v23 = (*(*a2 + 16))(a2);
      v46 = v24 + v23;
      cnprint::CNPrinter::Print(&v50, &v49, "t,%.3lf PositionChecker: Altitude Event age outside the use threshold for hybrid 2D WiFi Position, time_diff,%.3lf", v25, v26, v27, v28, v29, SLOBYTE(v46));
    }

    return 0xFFFFFFFFLL;
  }

  if (v15)
  {
    v19 = CNTimeSpan::operator-(v52, v20, v21);
    v12 = v19;
    v13 = v31;
  }

  v32 = *(this + 2);
  if ((*(v32 + 144) & 1) == 0)
  {
    goto LABEL_43;
  }

  v33 = fmax(v13 + v12, 1.0) * 1.5 + *(v32 + 264);
  if (v33 <= *(this + 13))
  {
    v33 = *(this + 13);
  }

  v34 = v33 * v33;
  v35 = *(a2 + 29);
  if (v35 <= *(a2 + 32))
  {
    v35 = *(a2 + 32);
  }

  if (v34 <= v35)
  {
    v34 = v35;
  }

  v36 = v34;
  if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
  {
    LOWORD(v50) = 12;
    v49 = 1;
    v37 = (*(*a2 + 16))(a2);
    v44 = *(this + 2);
    if ((*(v44 + 144) & 1) == 0)
    {
      goto LABEL_43;
    }

    v48 = *(v44 + 256);
    v47 = v38 + v37;
    cnprint::CNPrinter::Print(&v50, &v49, "t,%.3lf PositionChecker: Altitude Event is added to the 2D WiFi Pos, age,%.3lf,alt,%.3lf,unc,%.3lf", v39, v40, v41, v42, v43, SLOBYTE(v47));
  }

  v45 = *(this + 2);
  if ((*(v45 + 144) & 1) == 0)
  {
LABEL_43:
    __assert_rtn("operator->", "optional.hpp", 1221, "this->is_initialized()");
  }

  *(a2 + 28) = *(v45 + 256);
  *(a2 + 202) = 1;
  *(a2 + 34) = v36;
  *(a2 + 31) = 0;
  *(a2 + 33) = 0;
  if (sub_1D0C17F90(a2))
  {
    sub_1D0C182A4(a2);
  }

  result = 0;
  *(a2 + 200) = 16;
  return result;
}

uint64_t raven::PositionChecker::VLPositionTestingAndReweighting(raven::PositionChecker *this, raven::PositionEvent *a2)
{
  v149 = 0x300000003;
  v148 = xmmword_1D0E76C10;
  v147 = &unk_1F4CD5DD0;
  v150 = &v151;
  v4 = sub_1D0C1A564(a2, &v147);
  if ((v4 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      *v158 = 12;
      v127[0] = 1;
      v10 = (*(*a2 + 16))(a2);
      v108 = v11 + v10;
      cnprint::CNPrinter::Print(v158, v127, "t,%.3lf PositionChecker: VL localization crosscheck failure: unable to get position ECEF var-cov", v12, v13, v14, v15, v16, SLOBYTE(v108));
    }

    return 0;
  }

  v6 = *(this + 12) * *(this + 12);
  v7 = v148;
  if (v148 < 1)
  {
    v5.n128_u64[0] = 0;
    v9 = xmmword_1D0E76C10;
LABEL_10:
    v159 = 0x300000003;
    *&v158[8] = v9;
    *v158 = &unk_1F4CD5DD0;
    v160 = &v161;
    v5.n128_f64[0] = 1.0 / v5.n128_f64[0];
    sub_1D0BC5ED4(&v147, v158, v5);
    v5 = sub_1D0B894B0(&v147, v158);
    v9 = xmmword_1D0E76C10;
    goto LABEL_11;
  }

  v8 = 0;
  v5.n128_u64[0] = 0;
  v9 = xmmword_1D0E76C10;
  do
  {
    v5.n128_f64[0] = v5.n128_f64[0] + *&v150[v8];
    v8 += HIDWORD(v148) + 1;
    --v7;
  }

  while (v7);
  if (v5.n128_f64[0] < 1.0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v159 = 0x300000003;
  *&v158[8] = v9;
  *v158 = &unk_1F4CD5DD0;
  v160 = &v161;
  v5.n128_f64[0] = v6;
  sub_1D0BC5ED4(&v147, v158, v5);
  sub_1D0B894B0(&v147, v158);
  v23 = sub_1D0E3CAF0(a2, &v147, v17, v18, v19, v20, v21, v22);
  if ((v23 & 1) == 0)
  {
LABEL_56:
    if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
    {
      *v158 = 12;
      v127[0] = 1;
      v84 = (*(*a2 + 16))(a2);
      v112 = v85 + v84;
      cnprint::CNPrinter::Print(v158, v127, "t,%.3lf PositionChecker: VL localization crosscheck failure: unable to set reweighted position variance", v86, v87, v88, v89, v90, SLOBYTE(v112));
    }

    return 0;
  }

  if (!*(this + 24))
  {
    return 1;
  }

  if (*(a2 + 280) == 1)
  {
    v143 = 0x100000003;
    v142 = xmmword_1D0E7DCC0;
    v141 = &unk_1F4CDEB28;
    v144 = &v145;
    v145 = *(a2 + 18);
    v146 = *(a2 + 38);
    v25 = *(this + 2);
    if (*(v25 + 784) != 1 || *(v25 + 1072) != 1)
    {
LABEL_21:
      v37 = 0;
      v38 = 0;
      goto LABEL_22;
    }

    *v158 = *(a2 + 104);
    *v127 = *(v25 + 896);
    v26 = CNTimeSpan::operator-(v158, v127, *v127, v24);
    v28 = v26;
    v29 = v27;
    if (v26 == 30)
    {
      if (v27 <= 0.0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (!v26)
      {
        if (v27 == INFINITY)
        {
          goto LABEL_19;
        }

LABEL_60:
        v137 = 0x100000003;
        v136 = xmmword_1D0E7DCC0;
        v135 = &unk_1F4CDEB28;
        v138 = &v139;
        v128 = 0x300000003;
        *&v127[8] = xmmword_1D0E76C10;
        *v127 = &unk_1F4CD5DD0;
        v129 = v130;
        v139 = *(v25 + 1080);
        v140 = *(v25 + 1096);
        v92 = *(v25 + 1120);
        v93 = *(v25 + 1128);
        v130[0] = *(v25 + 1104);
        *(&v91 + 1) = *(&v130[0] + 1);
        *&v91 = v92;
        v130[1] = v91;
        v94 = *(v25 + 1136);
        v131 = v93;
        v132 = v94;
        v133 = v92;
        v134 = v94;
        v124 = 0x100000003;
        v123 = xmmword_1D0E7DCC0;
        v122 = &unk_1F4CDEB28;
        v125 = &v126;
        sub_1D0BA5A78(&v141, &v135, &v122);
        v116 = 0x100000003;
        v114 = &unk_1F4CDEB28;
        v115 = xmmword_1D0E7DCC0;
        v117 = v118;
        v159 = 0x100000134;
        *&v158[8] = xmmword_1D0E7DD20;
        *v158 = &unk_1F4CDEC90;
        v160 = &v161;
        v154 = 0x100000003;
        v153 = xmmword_1D0E7DCC0;
        v152 = &unk_1F4CDEB28;
        v155 = &v156;
        sub_1D0BFB1AC(&v122, &v114, v158, &v152, "2");
        if (v95 <= 1.0)
        {
          v38 = 1;
        }

        else
        {
          v96 = (v29 + v28) * 2.5 * ((v29 + v28) * 2.5);
          v97 = v129;
          *v129 = v96 + *v129;
          v98 = *&v127[20];
          v97[*&v127[20] + 1] = v96 + v97[*&v127[20] + 1];
          v97[2 * v98 + 2] = v96 + v97[2 * v98 + 2];
          sub_1D0D4C358(v127, &v147, v158);
          sub_1D0D4BC50(&v122, v119);
          sub_1D0D4C398(v158, &v114);
          sub_1D0BFB8FC(v119, &v114, &v152);
          v99 = sub_1D0BFC678(&v152, &v122, v120);
          v38 = *v121 <= 6.25139;
          if (*v121 > 6.25139 && cnprint::CNPrinter::GetLogLevel(v99) <= 1)
          {
            LOWORD(v114) = 12;
            LOBYTE(v152) = 1;
            v100 = (*(*a2 + 16))(a2);
            v113 = v101 + v100;
            cnprint::CNPrinter::Print(&v114, &v152, "t,%.3lf,PositionChecker: VL localization crosscheck, failed, normalized delta position %.3lf > %.3lf (test threshold)", v102, v103, v104, v105, v106, SLOBYTE(v113));
          }
        }

        v37 = 1;
LABEL_22:
        v39 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EC0A90);
        v41 = *(this + 2);
        if (v39 && *(v39 + 1288) == 1)
        {
          v154 = 0x100000003;
          v153 = xmmword_1D0E7DCC0;
          v152 = &unk_1F4CDEB28;
          v155 = &v156;
          v156 = *(v39 + 81);
          v157 = v39[164];
          v137 = 0x100000003;
          v136 = xmmword_1D0E7DCC0;
          v135 = &unk_1F4CDEB28;
          v138 = &v139;
          sub_1D0BA5A78(&v141, &v152, &v135);
          v128 = 0x100000003;
          *&v127[8] = xmmword_1D0E7DCC0;
          *v127 = &unk_1F4CDEB28;
          v129 = v130;
          v159 = 0x100000134;
          *&v158[8] = xmmword_1D0E7DD20;
          *v158 = &unk_1F4CDEC90;
          v160 = &v161;
          v116 = 0x100000003;
          v114 = &unk_1F4CDEB28;
          v115 = xmmword_1D0E7DCC0;
          v117 = v118;
          sub_1D0BFB1AC(&v135, v127, v158, &v114, "2");
          v42 = 0;
          v44 = v43 <= 100.0;
          v45 = 1;
LABEL_36:
          LogLevel = cnprint::CNPrinter::GetLogLevel(v39);
          if (!LogLevel)
          {
            *v158 = 12;
            v127[0] = 0;
            v57 = (*(*a2 + 16))(a2);
            v59 = v58 + v57;
            cnprint::CNPrinter::Print(v158, v127, "t,%.3lf PositionChecker: VL localization MSR, cross-check valid,%d,%d,%d passed,%d,%d, vl_distance,%.3lf", v60, v61, v62, v63, v64, SLOBYTE(v59));
          }

          if ((v38 | v37 ^ 1) & 1) == 0 && !v44 && ((v45 | v42))
          {
            return 0;
          }

          v65 = v148;
          if (v148 < 1)
          {
            v67 = 0.0;
          }

          else
          {
            v66 = 0;
            v67 = 0.0;
            do
            {
              v67 = v67 + *&v150[v66];
              v66 += HIDWORD(v148) + 1;
              --v65;
            }

            while (v65);
          }

          if (v37 | v45 | v42)
          {
            v68 = 1.0;
          }

          else
          {
            v68 = 100.0;
          }

          if (!v44 && (v37 & v38 & 1) != 0)
          {
            if (v67 >= 400.0)
            {
              v68 = 1.0;
            }

            else
            {
              v68 = 400.0 / v67;
            }
          }

          if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
          {
            *v158 = 12;
            v127[0] = 0;
            v69 = (*(*a2 + 16))(a2);
            v111 = v70 + v69;
            cnprint::CNPrinter::Print(v158, v127, "t,%.3lf PositionChecker: VL localization MSR Re-weight unc_sf,%.3lf", v71, v72, v73, v74, v75, SLOBYTE(v111));
          }

          v159 = 0x300000003;
          *&v76.f64[1] = 0x300000009;
          *&v158[8] = xmmword_1D0E76C10;
          *v158 = &unk_1F4CD5DD0;
          v160 = &v161;
          v76.f64[0] = v68;
          sub_1D0BC5ED4(&v147, v158, v76);
          sub_1D0B894B0(&v147, v158);
          v23 = sub_1D0E3CAF0(a2, &v147, v77, v78, v79, v80, v81, v82);
          if (v23)
          {
            return 1;
          }

          goto LABEL_56;
        }

        if (*(v41 + 1152) != 1 || *(v41 + 1440) != 1 || (v46 = *(v41 + 1360), v46 != 11) && v46 != 4)
        {
LABEL_35:
          v45 = 0;
          v42 = 0;
          v44 = 0;
          goto LABEL_36;
        }

        *v158 = *(a2 + 104);
        *v127 = *(v41 + 1264);
        v47 = CNTimeSpan::operator-(v158, v127, *v127, v40);
        if ((v47 || (*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v47 != 6)
        {
          if (v47 >= 7)
          {
LABEL_33:
            v39 = cnprint::CNPrinter::GetLogLevel(v47);
            if (!v39)
            {
              *v158 = 12;
              v127[0] = 0;
              v49 = (*(*a2 + 16))(a2);
              v110 = v50 + v49;
              cnprint::CNPrinter::Print(v158, v127, "t,%.3lf,PositionChecker: VL localization crosscheck, previous WiFi pos is too old: %.2lf > %.2lf", v51, v52, v53, v54, v55, SLOBYTE(v110));
            }

            goto LABEL_35;
          }
        }

        else if (v48 > 0.0)
        {
          goto LABEL_33;
        }

        v159 = 0x100000003;
        *&v158[8] = xmmword_1D0E7DCC0;
        *v158 = &unk_1F4CDEB28;
        v160 = &v161;
        v161 = *(v41 + 1448);
        v162 = *(v41 + 1464);
        sub_1D0C4E2D8(&v141, v158, v127);
        sub_1D0BFA800(v127);
        v45 = 0;
        v44 = v107 <= 100.0;
        v42 = 1;
        goto LABEL_36;
      }

      if (v26 < 31)
      {
        goto LABEL_60;
      }
    }

LABEL_19:
    if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
    {
      *v158 = 12;
      v127[0] = 1;
      v30 = (*(*a2 + 16))(a2);
      v109 = v31 + v30;
      cnprint::CNPrinter::Print(v158, v127, "t,%.3lf,PositionChecker: VL localization cross-check, previous VL is too old: %.2lf > %.2lf", v32, v33, v34, v35, v36, SLOBYTE(v109));
    }

    goto LABEL_21;
  }

  return 0;
}

uint64_t raven::PositionChecker::Reset(uint64_t this)
{
  if (*(this + 120) == 1)
  {
    *(this + 120) = 0;
  }

  return this;
}

uint64_t sub_1D0E3DBD4(uint64_t result)
{
  *result = &unk_1F4CF0160;
  if (*(result + 120) == 1)
  {
    *(result + 120) = 0;
  }

  return result;
}

void sub_1D0E3DC04(uint64_t a1)
{
  *a1 = &unk_1F4CF0160;
  if (*(a1 + 120) == 1)
  {
    *(a1 + 120) = 0;
  }

  JUMPOUT(0x1D387ECA0);
}

raven::RavenPredictor *raven::RavenPredictor::RavenPredictor(raven::RavenPredictor *this)
{
  *(this + 1) = 0;
  *(this + 2) = &unk_1F4CDFD88;
  *(this + 323) = &unk_1F4CD5B00;
  *(this + 162) = 0u;
  *(this + 163) = 0u;
  *(this + 164) = 0u;
  *(this + 165) = 0u;
  *(this + 166) = 0u;
  *(this + 167) = 0u;
  *(this + 168) = 0u;
  *(this + 169) = 0u;
  *(this + 2713) = 0u;
  *(this + 24) = 0;
  *(this + 2) = xmmword_1D0E843E0;
  *(this + 6) = 0x40C3880000000000;
  *(this + 644) = 0;
  *(this + 684) = 10;
  *(this + 343) = &unk_1F4CE0A68;
  *(this + 344) = &unk_1F4CDFD88;
  *(this + 665) = &unk_1F4CD5B00;
  *(this + 5449) = 0u;
  *(this + 340) = 0u;
  *(this + 339) = 0u;
  *(this + 338) = 0u;
  *(this + 337) = 0u;
  *(this + 336) = 0u;
  *(this + 335) = 0u;
  *(this + 334) = 0u;
  *(this + 333) = 0u;
  *(this + 2760) = 0;
  *(this + 173) = xmmword_1D0E843E0;
  *(this + 348) = 0x40C3880000000000;
  *(this + 1328) = 0;
  *(this + 1368) = 10;
  sub_1D0BAD0C8(this + 5480);
  *(this + 1017) = &unk_1F4CEF4D8;
  *(this + 509) = 0u;
  *(this + 8160) = 0;
  *(this + 8168) = 0u;
  *(this + 8184) = 0;
  *(this + 512) = 0u;
  *(this + 8208) = 0;
  *(this + 8216) = 0u;
  *(this + 1029) = 0x7FF8000000000000;
  *this = 0;
  return this;
}

void sub_1D0E3DE34(_Unwind_Exception *a1)
{
  *v6 = v2;
  *v7 = &unk_1F4CD5B78;
  *v5 = &unk_1F4CD5B78;
  *v3 = v1;
  *v4 = &unk_1F4CD5B78;
  _Unwind_Resume(a1);
}

uint64_t raven::RavenPredictor::Configure(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (!*a2 || (*(v8 + 33) & 1) == 0)
  {
    v18 = 12;
    v17 = 4;
    v11 = "RavenPredictor::Configure called with uninitialized parameters.";
    goto LABEL_9;
  }

  *a1 = 0;
  *(a1 + 8) = v8;
  if (*(v8 + 3672) != 1)
  {
    v13 = *(v8 + 3668);
    if (v13)
    {
      v18 = 12;
      v17 = 4;
      cnprint::CNPrinter::Print(&v18, &v17, "Error: RavenPredictor::Configure() failed to load gravity parameters becasue of invalid model type: %d.", a4, a5, a6, a7, a8, v13);
      return 0xFFFFFFFFLL;
    }

    if (sub_1D0D53F20(a1 + 16, &unk_1D0EC0B08, &unk_1D0EC0C04, &unk_1D0EC0D00, &unk_1D0EC0EF8, &unk_1D0EC10F0, &unk_1D0EC12E8))
    {
      v18 = 12;
      v17 = 4;
      v11 = "Error: RavenPredictor::Configure() failed to load EGM96 gravity parameters.";
      goto LABEL_9;
    }

LABEL_16:
    *(a1 + 2576) = 1;
    v14 = *(a1 + 8);
    if (*(v14 + 3668))
    {
      v18 = 12;
      v17 = 4;
      v11 = "Error: RavenPredictor::Configure() failed to set EGM96 model constants.";
    }

    else
    {
      *(a1 + 32) = xmmword_1D0E843E0;
      *(a1 + 48) = 0x40E86A0000000000;
      v15 = *(v14 + 3704);
      if ((v15 - 11) <= 0xFFFFFFF6)
      {
        __assert_rtn("SetTruncationDegree", "sphericalharmonicsgravitymodel.h", 471, "trunc >= 2 && trunc <= max_degree");
      }

      *(a1 + 2736) = v15;
      if (*(a1 + 24))
      {
        sub_1D0D87D70(a1 + 2752, a1 + 16);
        result = 0;
        *a1 = 1;
        return result;
      }

      v18 = 12;
      v17 = 4;
      v11 = "Error: RavenPredictor::Configure() gravity parameters are invalid.";
    }

    goto LABEL_9;
  }

  v10 = (v8 + 3680);
  if (*(v8 + 3703) < 0)
  {
    v10 = *v10;
  }

  if (!sub_1D0D53E44(a1 + 16, v10))
  {
    goto LABEL_16;
  }

  v18 = 12;
  v17 = 4;
  v11 = "Error: RavenPredictor::Configure() failed to load gravity parameters from file.";
LABEL_9:
  cnprint::CNPrinter::Print(&v18, &v17, v11, a4, a5, a6, a7, a8, v16);
  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1082))
  {
    return 1;
  }

  v28 = v2;
  v29 = v3;
  v6 = sub_1D0BE0DE8(&v24, a2 + 408);
  v7 = v25;
  if (v25 < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v9 = v9 + *(v27 + 8 * v8);
      v8 += v26 + 1;
      --v7;
    }

    while (v7);
    v6.n128_u64[0] = 4.0;
    if (v9 >= 1.0)
    {
      goto LABEL_11;
    }
  }

  v6.n128_u64[0] = 4.0;
  if (fabs(v9) >= 2.22044605e-16)
  {
    v6.n128_f64[0] = 1.0 / v9 * 4.0;
  }

LABEL_11:
  v21 = 0x300000003;
  v19 = &unk_1F4CD5DD0;
  v20 = xmmword_1D0E76C10;
  v22 = &v23;
  sub_1D0BC5ED4(&v24, &v19, v6);
  sub_1D0B894B0(&v24, &v19);
  result = cntransformation::CNRigidTransformation::SetPpp(a2 + 200, &v24);
  if (!result)
  {
    return result;
  }

  v10 = sub_1D0BE0DE8(&v19, a2 + 296);
  v11 = v20;
  if (v20 < 1)
  {
    v13 = 0.0;
    goto LABEL_18;
  }

  v12 = 0;
  v13 = 0.0;
  do
  {
    v13 = v13 + *&v22[v12];
    v12 += HIDWORD(v20) + 1;
    --v11;
  }

  while (v11);
  v10.n128_u64[0] = 16.0;
  if (v13 < 0.00121846968)
  {
LABEL_18:
    v10.n128_u64[0] = 16.0;
    if (fabs(v13) >= 2.22044605e-16)
    {
      v10.n128_f64[0] = 0.00121846968 / v13 * 16.0;
    }
  }

  v16 = 0x300000003;
  v14 = &unk_1F4CD5DD0;
  v15 = xmmword_1D0E76C10;
  v17 = &v18;
  sub_1D0BC5ED4(&v19, &v14, v10);
  sub_1D0B894B0(&v19, &v14);
  result = cntransformation::CNRigidTransformation::SetPrr(a2 + 200, &v19);
  if (result)
  {
    *(a2 + 1082) = 1;
  }

  return result;
}

double raven::RavenDeltaVIOEstimateActiveObject::ApplyVIOYawCorrection(raven::RavenDeltaVIOEstimateActiveObject *this, double result)
{
  if (fabs(result) > 0.01 && *(this + 480) != 0)
  {
    v18 = v2;
    v19 = v3;
    v5 = this + 0x2000;
    v6 = __sincos_stret(result);
    v12 = 0x300000003;
    v10 = &unk_1F4CD5DD0;
    v13 = v14;
    v11 = xmmword_1D0E76C10;
    v14[2] = 0;
    v15 = 0u;
    v16 = 0u;
    v14[0] = *&v6.__cosval;
    v14[1] = *&v6.__sinval;
    *&v14[3] = -v6.__sinval;
    *&v15 = v6.__cosval;
    v17 = 0x3FF0000000000000;
    sub_1D0D260A4(v9, &v10);
    cnrotation::Cat(v5 + 89, v9, v8);
    if (v5 + 712 != v8)
    {
      result = *v8;
      v7 = v8[1];
      *(v5 + 712) = v8[0];
      *(v5 + 728) = v7;
    }
  }

  return result;
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::ComputeCovarianceFromSigmaCorrelationMatrix(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8) == 3 && *(a2 + 12) == 3;
  v4 = v3;
  if (v3)
  {
    *(a3 + 8) = xmmword_1D0E76C10;
    v5 = *(a2 + 32);
    v6 = *(a3 + 32);
    *v6 = *v5 * *v5;
    v7 = *(a2 + 20);
    v8 = &v5[v7];
    v6[4] = v8[1] * v8[1];
    v9 = &v5[2 * v7];
    v6[8] = v9[2] * v9[2];
    v10 = v5[1] * v8[1] * *v5;
    v6[1] = v10;
    v11 = v5[2] * v9[2] * *v5;
    v6[2] = v11;
    v12 = v8[2] * v9[2] * v8[1];
    v6[3] = v10;
    v6[5] = v12;
    v6[6] = v11;
    v6[7] = v12;
  }

  else
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(a1);
    if (LogLevel <= 1)
    {
      v25 = 12;
      v24 = 1;
      (*(*a1 + 16))(__p, a1);
      if (v23 >= 0)
      {
        v20 = __p;
      }

      else
      {
        LOBYTE(v20) = __p[0];
      }

      cnprint::CNPrinter::Print(&v25, &v24, "%s, Input sigma-correlation matrix has wrong dimensions, expected 3x3", v15, v16, v17, v18, v19, v20);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v4;
}

void sub_1D0E3E4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::ComputeSigmaCorrelationMatrixFromCovariance(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) == 3 && *(a2 + 12) == 3)
  {
    *(a3 + 8) = xmmword_1D0E76C10;
    v11 = *(a2 + 32);
    v12 = sqrt(*v11);
    v13 = *(a3 + 32);
    *v13 = v12;
    v14 = *(a2 + 20);
    v15 = &v11[v14];
    v16 = sqrt(v15[1]);
    v13[4] = v16;
    v17 = sqrt(v11[2 * v14 + 2]);
    v13[8] = v17;
    if (fabs(v12 * v16) >= 2.22044605e-16)
    {
      v18 = v11[1] / (v12 * v16);
      v13[1] = v18;
      v19 = v12 * v17;
      if (fabs(v19) >= 2.22044605e-16)
      {
        v20 = v11[2] / v19;
        v13[2] = v20;
        v21 = v16 * v17;
        if (fabs(v21) >= 2.22044605e-16)
        {
          v23 = v15[2];
          v13[3] = v18;
          v24 = v23 / v21;
          v13[5] = v24;
          v13[6] = v20;
          v13[7] = v24;
          return 1;
        }
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v28 = 12;
    v27 = 1;
    (*(*a1 + 16))(__p, a1);
    if (v26 >= 0)
    {
      v10 = __p;
    }

    else
    {
      LOBYTE(v10) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "%s, Input variance-covariance matrix has wrong dimensions, expected 3x3", v5, v6, v7, v8, v9, v10);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E3E694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::Configure(cnframework::ActiveObjectBase *this, uint64_t *a2)
{
  if (*(this + 224) == 1)
  {
    v37 = 12;
    v36 = 2;
    (*(*this + 16))(__p, this);
    if (v35 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v37, &v36, "Warning: %s configured more than once", v4, v5, v6, v7, v8, v9);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 224) = 0;
  v10 = *a2;
  if (!*a2 || (*(v10 + 33) & 1) == 0)
  {
    v37 = 12;
    v36 = 4;
    (*(*this + 16))(__p, this);
    if (v35 >= 0)
    {
      v26 = __p;
    }

    else
    {
      LOBYTE(v26) = __p[0];
    }

    cnprint::CNPrinter::Print(&v37, &v36, "%s could not be configured - invalid RavenParameters", v21, v22, v23, v24, v25, v26);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  *(this + 29) = v10;
  if ((*(v10 + 3200) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v10 + 3192) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v10 + 3200) < *(v10 + 3192))
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v37) = 1;
      v32 = *(this + 29);
      v33 = *(v32 + 3192);
      cnprint::CNPrinter::Print(__p, &v37, "#WARNING, Incompatible Raven VIO Parameters, delta_VIO sampling period smaller than VIO estimate period [%.3lf < %.3lf]", v27, v28, v29, v30, v31, *(v32 + 3200));
    }

    return 0xFFFFFFFFLL;
  }

  cnframework::ActiveObjectBase::SetEventQueueDelay(this, 0.0);
  v12 = *a2;
  *(this + 1266) = *(*a2 + 920);
  *(this + 1259) = *(v12 + 792);
  *(this + 224) = 1;
  v13 = (*(*this + 40))(this);
  if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
  {
    v37 = 12;
    v36 = 1;
    (*(*this + 16))(__p, this);
    if (v35 >= 0)
    {
      v19 = __p;
    }

    else
    {
      LOBYTE(v19) = __p[0];
    }

    cnprint::CNPrinter::Print(&v37, &v36, "%s configured successfully", v14, v15, v16, v17, v18, v19);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E3E948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenDeltaVIOEstimateActiveObject::CreateAndRaiseDeltaVIOEstimates(int8x16_t *this, double a2, int8x16_t a3)
{
  v3 = this[632].u64[1];
  if (v3 >= 2)
  {
    v5 = this[632].u64[0];
    v6 = v3 + v5 - 1;
    v7 = this[630].i64[1];
    v8 = v6 >> 4;
    v9 = v6 & 0xF;
    v56[0] = *(*(v7 + 8 * (v6 >> 4)) + 1088 * (v6 & 0xF));
    v10 = this + 433;
    if (this[501].i8[0] == 1)
    {
      v55[0] = this[433];
      v11 = CNTimeSpan::operator-(v56, v55, v55[0], a3);
      if (v12 + v11 + (v12 + v11) * 0.05 < *(this[14].i64[1] + 3200))
      {
        return;
      }

      v13 = *(v7 + 8 * v8) + 1088 * v9;
    }

    else
    {
      v14 = (*(v7 + ((v5 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v5 & 0xF));
      v55[0] = *v14;
      v15 = CNTimeSpan::operator-(v56, v55, v55[0], a3);
      if (v16 + v15 + (v16 + v15) * 0.05 < *(this[14].i64[1] + 3200))
      {
        return;
      }

      if (!raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(v15, v14))
      {
        sub_1D0E3EEAC(this[630].i64);
        return;
      }

      v11 = sub_1D0E3EF34(v10, v14);
      if ((this[501].i8[0] & 1) == 0)
      {
        sub_1D0C42F28();
      }

      v17 = this[632].i64[1] + this[632].i64[0] - 1;
      v13 = *(this[630].i64[1] + ((v17 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v17 & 0xF);
    }

    if (raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(v11, v13))
    {
      cntransformation::Inv((v13 + 200), v55);
      cntransformation::Cat(v55, &this[445].u64[1], &v52);
      v29[16] = &unk_1F4CEE090;
      v44 = 0x100000003;
      v43 = xmmword_1D0E7DCC0;
      v42 = &unk_1F4CDEB28;
      v45 = &v46;
      v49 = 0x300000003;
      v48 = xmmword_1D0E76C10;
      v47 = &unk_1F4CD5DD0;
      v50 = &v51;
      v18 = *v13;
      v31 = *(v13 + 16);
      v30 = v18;
      v19 = *(v13 + 32);
      v20 = *(v13 + 48);
      v21 = *(v13 + 64);
      v35 = *(v13 + 80);
      v34 = v21;
      v33 = v20;
      v32 = v19;
      v22 = v10[3];
      v38 = v10[2];
      v39 = v22;
      v23 = v10[5];
      v40 = v10[4];
      v41 = v23;
      v24 = v10[1];
      v36 = *v10;
      v37 = v24;
      v27 = 0x100000003;
      v26 = xmmword_1D0E7DCC0;
      v25 = &unk_1F4CDEB28;
      v28 = v29;
      sub_1D0BA5940(&v53, &v25);
      sub_1D0B894B0(&v42, &v25);
      sub_1D0B894B0(&v47, &v54);
      sub_1D0DD5C34();
    }

    sub_1D0E3F070(this[630].i64);
  }
}

void sub_1D0E3EEAC(uint64_t a1)
{
  sub_1D0E44254((*(*(a1 + 8) + ((*(a1 + 32) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (*(a1 + 32) & 0xFLL)));
  v2 = vaddq_s64(*(a1 + 32), xmmword_1D0E76280);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0x20uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 16;
  }
}

uint64_t sub_1D0E3EF34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1088) == 1)
  {
    *a1 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v6;
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    v7 = *(a2 + 80);
    v8 = *(a2 + 96);
    v9 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v9;
    *(a1 + 80) = v7;
    *(a1 + 96) = v8;
    v10 = *(a2 + 144);
    v11 = *(a2 + 160);
    v12 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 160) = v11;
    *(a1 + 176) = v12;
    *(a1 + 144) = v10;
    if (a1 != a2)
    {
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = *(a2 + 216);
    }

    sub_1D0B894B0(a1 + 232, a2 + 232);
    sub_1D0B894B0(a1 + 296, a2 + 296);
    sub_1D0B894B0(a1 + 408, a2 + 408);
    sub_1D0B894B0(a1 + 520, a2 + 520);
    *(a1 + 632) = *(a2 + 632);
    if (a1 != a2)
    {
      *(a1 + 640) = *(a2 + 640);
      *(a1 + 656) = *(a2 + 656);
    }

    sub_1D0B894B0(a1 + 672, a2 + 672);
    sub_1D0B894B0(a1 + 736, a2 + 736);
    sub_1D0B894B0(a1 + 848, a2 + 848);
    sub_1D0B894B0(a1 + 960, a2 + 960);
    *(a1 + 1072) = *(a2 + 1072);
    v13 = *(a2 + 1080);
    *(a1 + 1082) = *(a2 + 1082);
    *(a1 + 1080) = v13;
  }

  else
  {
    sub_1D0E3F45C(a1, a2);
    *(a1 + 1088) = 1;
  }

  return a1;
}

BOOL sub_1D0E3F070(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_1D0E44254((*(a1[1] + ((v2 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v2 & 0xF)));
  --a1[5];

  return sub_1D0E44358(a1);
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::CreateAndRaisePositionEvent(uint64_t this, double a2, int8x16_t a3)
{
  if (*(this + 480) == 1)
  {
    v62 = v6;
    v63 = v5;
    v64 = v3;
    v65 = v4;
    v7 = this;
    v8 = *(this + 10120);
    if (v8)
    {
      v9 = (*(*(this + 10088) + (((v8 + *(this + 10112) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((v8 + *(this + 10112) - 1) & 0xF));
      v10 = *v9;
      v61 = *v9;
      if (*(this + 10040) != 1 || (this = CNTimeSpan::operator-(&v61, (this + 10024), v10, a3), v11 + this + (v11 + this) * 0.05 > *(v7 + 10072)))
      {
        v12 = sub_1D0E3F45C(&v53, v9);
        if (raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(v12, &v53))
        {
          if (*(v7 + 264) == 1)
          {
            if (*(v7 + 10064) != 1 || (v15 = CNTimeSpan::operator-(&v61, (v7 + 10048), v13, v14), v16 + v15 >= 20.0))
            {
              v45 = 0.0;
              if (raven::RavenDeltaVIOEstimateActiveObject::ShouldApplyVIOYawCorrection(v7, &v45))
              {
                v17 = v45;
                raven::RavenDeltaVIOEstimateActiveObject::ApplyVIOYawCorrection(v7, v45);
                *(v7 + 248) = v17 + *(v7 + 248);
                v18 = *(v7 + 10064);
                *(v7 + 10048) = v61;
                if ((v18 & 1) == 0)
                {
                  *(v7 + 10064) = 1;
                }
              }
            }
          }

          v47 = 0x100000003;
          *&v45 = &unk_1F4CDEB28;
          v46 = xmmword_1D0E7DCC0;
          v48 = &v49;
          sub_1D0BA5A78(v60, v7 + 9848, &v45);
          sub_1D0B894B0(v60, &v45);
          cntransformation::Cat((v7 + 8904), &v59, &v45);
          v39 = 0;
          v33 = 15;
          v34 = vdupq_n_s64(0x7FF8000000000000uLL);
          v35 = v34;
          v36 = v34;
          v37 = v34;
          v40 = v34;
          v41 = v34;
          v42 = v34;
          v43 = v34;
          v23 = v55;
          v24 = v56;
          v25 = v57;
          v26 = v58;
          v21 = v53;
          v22 = v54;
          v28 = v54;
          v27 = v53;
          v31 = v57;
          v30 = v56;
          v29 = v55;
          v20 = &unk_1F4CEF748;
          v38 = 0x7FF8000000000000;
          v44 = 0x7FF8000000000000;
          v32 = v58;
          v40 = *v50;
          v41.i64[0] = v50[1].i64[0];
          v41.i64[1] = *v52;
          v19 = &v52[v51];
          v42 = *v19;
          v43.i64[0] = v19->i64[1];
          v43.i64[1] = v52[(2 * v51) | 1];
          v44 = v52[2 * v51 + 2];
          LOBYTE(v39) = 1;
          if (sub_1D0C17F90(&v20))
          {
            sub_1D0C182A4(&v20);
          }

          sub_1D0DD58CC();
        }

        return sub_1D0E3F070((v7 + 10080));
      }
    }
  }

  return this;
}

uint64_t sub_1D0E3F45C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v9;
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  *(a1 + 144) = v10;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  if (a1 != a2)
  {
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
  }

  sub_1D0BBA094(a1 + 232, a2 + 232);
  sub_1D0BE0DE8(a1 + 296, a2 + 296);
  sub_1D0BE0DE8(a1 + 408, a2 + 408);
  sub_1D0BE0DE8(a1 + 520, a2 + 520);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  if (a1 != a2)
  {
    *(a1 + 640) = *(a2 + 640);
    *(a1 + 656) = *(a2 + 656);
  }

  sub_1D0BBA094(a1 + 672, a2 + 672);
  sub_1D0BE0DE8(a1 + 736, a2 + 736);
  sub_1D0BE0DE8(a1 + 848, a2 + 848);
  sub_1D0BE0DE8(a1 + 960, a2 + 960);
  *(a1 + 1072) = *(a2 + 1072);
  v13 = *(a2 + 1080);
  *(a1 + 1082) = *(a2 + 1082);
  *(a1 + 1080) = v13;
  return a1;
}

void sub_1D0E3F5C4(_Unwind_Exception *a1)
{
  *v7 = &unk_1F4CD5E28;
  *v6 = &unk_1F4CD5E28;
  *v5 = &unk_1F4CD5E28;
  *v4 = &unk_1F4CD5E28;
  *v3 = &unk_1F4CD5E28;
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::ShouldApplyVIOYawCorrection(raven::RavenDeltaVIOEstimateActiveObject *this, double *a2)
{
  *a2 = 0.0;
  v4 = *(this + 328) == 1 && *(this + 448) == 1 && vabdd_f64(*(this + 40), *(this + 55)) < *(this + 55) * 0.1;
  v5 = *(this + 296) == 1 && *(this + 448) == 1 && vabdd_f64(*(this + 36), *(this + 55)) < *(this + 55) * 0.25;
  v6 = 0.0;
  if (*(this + 280) != 1)
  {
    goto LABEL_30;
  }

  if (*(this + 5808) != 1)
  {
    goto LABEL_30;
  }

  if (*(this + 4496) != 1)
  {
    goto LABEL_30;
  }

  if (*(this + 4497) != 1)
  {
    goto LABEL_30;
  }

  if (*(this + 477) != 1)
  {
    goto LABEL_30;
  }

  v7 = *(this + 563);
  v57 = 0x100000003;
  v55 = &unk_1F4CDEB28;
  v56 = xmmword_1D0E7DCC0;
  v58 = &v59;
  v59 = vmulq_n_f64(*(this + 282), v7);
  v60 = v7 * *(this + 566);
  v52 = 0x100000003;
  v50 = &unk_1F4CDEB28;
  v51 = xmmword_1D0E7DCC0;
  v53 = &v54;
  sub_1D0B89390(this + 9912, &v55, &v50);
  v8 = *v53;
  v9 = *(v53 + 1);
  if (hypot(*v53, v9) < 1.0 || fabs(v8) <= 0.005 && fabs(v9) <= 0.005)
  {
    goto LABEL_30;
  }

  if ((*(this + 280) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  v10 = atan2(v8, v9);
  v11 = v10 + 6.28318531;
  if (v10 >= 0.0)
  {
    v11 = v10;
  }

  v12 = *(this + 34);
  v13 = vabdd_f64(v11, v12);
  if (6.28318531 - v13 < v13)
  {
    v13 = 6.28318531 - v13;
  }

  if (v13 < 0.104719755)
  {
    if (*(this + 312) == 1)
    {
      v14 = *(this + 38);
      v15 = vabdd_f64(v14, v12);
      v16 = 6.28318531 - v15;
      if (6.28318531 - v15 >= v15)
      {
        v16 = v15;
      }

      v6 = v16;
      if (v12 > v14 || (v17 = 0, v14 > 3.14159265) && v12 < 3.14159265)
      {
        v17 = 0;
        v6 = -v16;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
LABEL_30:
    v17 = 1;
  }

  if (*(this + 264))
  {
    v18 = *(this + 328);
    if (*(this + 464) != 1)
    {
      if ((*(this + 328) & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (*(this + 328))
    {
      if (!(v17 & 1 | (*(this + 40) <= 20.0 || !v4 || !v5)) && *(this + 32) > 5.0)
      {
        v19 = fabs(v6);
        if (v19 > 0.034906585 && v19 < 0.174532925)
        {
          *a2 = v6;
          LogLevel = cnprint::CNPrinter::GetLogLevel(this);
          result = 1;
          if (LogLevel <= 1)
          {
            LOWORD(v50) = 12;
            v49 = 1;
            (*(*this + 16))(&v55, this);
            if ((*(this + 328) & 1) == 0)
            {
              sub_1D0C42F28();
            }

            v27 = *(this + 1265) + *(this + 1264) - 1;
            v28 = *(*(this + 1261) + ((v27 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v27 & 0xF);
            v29 = *(v28 + 8) + *v28;
            if (v56 >= 0)
            {
              v30 = &v55;
            }

            else
            {
              LOBYTE(v30) = v55;
            }

            v44 = *(this + 32);
            v45 = *(this + 31) * 57.2957795;
            v41 = *a2 * 57.2957795;
            v42 = *(this + 40);
            cnprint::CNPrinter::Print(&v50, &v49, "%s: VIO t,%.3lf VIO yaw correction,%.3lf [deg] detected, distance moved,%.3lf, cross-track distance to passthrough,%.3lf, accum_yaw_corr,%.3lf [deg]", v22, v23, v24, v25, v26, v30);
            if (SHIBYTE(v56) < 0)
            {
              operator delete(v55);
            }

            return 1;
          }

          return result;
        }
      }

      goto LABEL_47;
    }
  }

  else if (*(this + 328))
  {
LABEL_47:
    v31 = *(this + 40);
  }

LABEL_48:
  LOWORD(v50) = 12;
  v49 = 2;
  (*(*this + 16))(&v55, this);
  if (v56 >= 0)
  {
    v37 = &v55;
  }

  else
  {
    LOBYTE(v37) = v55;
  }

  v38 = *(this + 1265) + *(this + 1264) - 1;
  v39 = *(*(this + 1261) + ((v38 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v38 & 0xF);
  v48 = *(this + 464);
  v47 = *(this + 264);
  v46 = *(this + 31) * 57.2957795;
  v43 = *(this + 32);
  v40 = *(v39 + 8) + *v39;
  cnprint::CNPrinter::Print(&v50, &v49, "%s: curr_VIO t,%.3lf VIO yaw correction criteria, distance moved,%.3lf, cross-track distance to passthrough,%.3lf, course difference ,%.3lf, accum_yaw_corr,%.3lf, [deg] flags [%d %d %d %d %d]", v32, v33, v34, v35, v36, v37);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  return 0;
}

_BYTE *raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(_BYTE *this, const raven::ARSessionStatusEvent *a2)
{
  if (this[224] == 1)
  {
    v3 = this;
    v4 = *(a2 + 104);
    this[240] = v4;
    if (v4 != 2)
    {
      v18 = 12;
      v17 = 2;
      (*(*this + 16))(v15, this);
      v5 = v16;
      v6 = v15[0];
      sub_1D0E115B4(a2, &__p);
      if (v5 >= 0)
      {
        v12 = v15;
      }

      else
      {
        LOBYTE(v12) = v6;
      }

      cnprint::CNPrinter::Print(&v18, &v17, "%s: AR Session is not Running, ARStatus, %s", v7, v8, v9, v10, v11, v12);
      if (v14 < 0)
      {
        operator delete(__p);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      return (*(*v3 + 40))(v3);
    }
  }

  return this;
}

void sub_1D0E3FD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E3FD90(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, double *a5)
{
  v5 = a2;
  if (a4 != a2)
  {
    v6 = a1;
    v7 = 0xF0F0F0F0F0F0F0F1 * ((a4 - *a3) >> 6) + 2 * (a3 - a1) + 0xF0F0F0F0F0F0F0FLL * ((a2 - *a1) >> 6);
    if (v7)
    {
      do
      {
        v9 = v7 >> 1;
        v11 = v6;
        v12 = v5;
        sub_1D0E441E0(&v11, v7 >> 1);
        v13 = *v12;
        if (sub_1D0B7C8AC(&v13, a5))
        {
          v6 = v11;
          v5 = (v12 + 68);
          v12 = v5;
          if (v5 - *v11 == 17408)
          {
            v6 = v11 + 1;
            v5 = v11[1];
          }

          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
    }
  }

  return v5;
}

void raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(raven::RavenDeltaVIOEstimateActiveObject *this, const raven::VIOEstimateEvent *a2, double a3, int8x16_t a4)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if (*(a2 + 1184))
  {
    if (*(a2 + 296) == 1)
    {
      v6 = *(this + 1265);
      if (v6)
      {
        v7 = *(a2 + 13);
        v8 = *(*(this + 1261) + (((v6 + *(this + 1264) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((v6 + *(this + 2528) - 1) & 0xF);
        v9 = *v8;
        a4.i64[0] = *(v8 + 8);
        if ((v7 || (*(a2 + 14) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (!v9 ? (v10 = (a4.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v10 = 1), v10 && v7 != v9))
        {
          if (v7 < v9)
          {
LABEL_14:
            if (cnprint::CNPrinter::GetLogLevel(this) < 2)
            {
              LOWORD(v103[0]) = 12;
              LOBYTE(v106) = 1;
              (*(*this + 16))(__p, this);
              if (v108 >= 0)
              {
                v16 = __p;
              }

              else
              {
                LOBYTE(v16) = __p[0];
              }

              v17 = *(this + 1265) + *(this + 1264) - 1;
              v18 = *(*(this + 1261) + ((v17 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v17 & 0xF);
              v97 = *(a2 + 14) + *(a2 + 13);
              v100 = *(v18 + 8) + *v18;
              cnprint::CNPrinter::Print(v103, &v106, "%s, Current VIO estimate's Time %.3lf is before the previous VIO estimate %.3lf", v11, v12, v13, v14, v15, v16);
              if (v108 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_76;
          }
        }

        else if (*(a2 + 14) < *a4.i64)
        {
          goto LABEL_14;
        }

        *__p = *(a2 + 200);
        *v103 = *(v8 + 96);
        v41 = CNTimeSpan::operator-(__p, v103, *v103, a4);
        v43.i64[0] = 0x3CB0000000000000;
        if (fabs(v42 + v41) < 2.22044605e-16)
        {
          v33 = this + 232;
          v44 = *(this + 29);
          goto LABEL_53;
        }

        if (cnprint::CNPrinter::GetLogLevel(v41) < 2)
        {
          LOWORD(v103[0]) = 12;
          LOBYTE(v106) = 1;
          (*(*this + 16))(__p, this);
          if (v108 >= 0)
          {
            v50 = __p;
          }

          else
          {
            LOBYTE(v50) = __p[0];
          }

          v51 = *(this + 1265) + *(this + 1264) - 1;
          v52 = *(*(this + 1261) + ((v51 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v51 & 0xF);
          v98 = *(a2 + 14) + *(a2 + 13);
          v101 = *(v52 + 8) + *v52;
          cnprint::CNPrinter::Print(v103, &v106, "%s, VIO estimate session start time changed, possible change in VIO reference frame, time, current VIO %.3lf previous VIO %.3lf", v45, v46, v47, v48, v49, v50);
          if (v108 < 0)
          {
            operator delete(__p[0]);
          }
        }

        (*(*this + 40))(this);
        v33 = this + 232;
        v44 = *(this + 29);
        v6 = *(this + 1265);
        if (v6)
        {
LABEL_53:
          v53 = *(v44 + 3200);
          v54 = *(a2 + 13);
          v55 = *(a2 + 14);
          *__p = *(*(*(this + 1261) + (((v6 + *(this + 1264) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((v6 + *(this + 2528) - 1) & 0xF));
          v56.i64[1] = __p[1];
          v103[0] = 0;
          v103[1] = 0;
          v56.i64[0] = v53;
          *v57.i64 = CNTimeSpan::SetTimeSpan(v103, 0, v56, v43);
          v59 = CNTimeSpan::operator+(__p, v103, v57, v58);
          v62 = v60;
          if (!v54 && (*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v59 && (*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v63 = v54 <= v59, v54 == v59))
          {
            v63 = v55 <= v60;
          }

          if (v63)
          {
            goto LABEL_71;
          }

          if (cnprint::CNPrinter::GetLogLevel(v59) < 2)
          {
            LOWORD(v103[0]) = 12;
            LOBYTE(v106) = 1;
            (*(*this + 16))(__p, this);
            if (v108 >= 0)
            {
              v69 = __p;
            }

            else
            {
              LOBYTE(v69) = __p[0];
            }

            v70 = *(this + 1265) + *(this + 1264) - 1;
            v71 = *(*(this + 1261) + ((v70 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v70 & 0xF);
            v102 = *(v71 + 8) + *v71;
            v99 = *(a2 + 14) + *(a2 + 13);
            cnprint::CNPrinter::Print(v103, &v106, "%s, Large gap in incoming VIO estimate, time, current VIO %.3lf previous VIO %.3lf, gap tolerance, %.3lf", v64, v65, v66, v67, v68, v69);
            if (v108 < 0)
            {
              operator delete(__p[0]);
            }
          }

          (*(*this + 40))(this);
          v34 = *(this + 1265);
          if (v34)
          {
LABEL_71:
            if ((raven::RavenDeltaVIOEstimateActiveObject::IsVIOPositionConsistent(this, a2 + 13, v62, v61) & 1) == 0)
            {
LABEL_76:
              (*(*this + 40))(this);
              return;
            }

            v34 = *(this + 1265);
            if (v34 >= 0x19)
            {
              v73 = (v34 - 24);
              if (v73 >= 1)
              {
                v74 = *(this + 1261);
                v75 = *(this + 1264);
                v76 = (v74 + 8 * (v75 >> 4));
                if (*(this + 1262) == v74)
                {
                  v77 = 0;
                }

                else
                {
                  v77 = (*v76 + 1088 * (*(this + 1264) & 0xFLL));
                }

                __p[0] = (v74 + 8 * (v75 >> 4));
                __p[1] = v77;
                sub_1D0E441E0(__p, v73);
                sub_1D0E41274(this + 1260, v76, v77, __p[0], __p[1]);
                v34 = *(this + 1265);
              }
            }
          }

          goto LABEL_34;
        }
      }

      else
      {
        v33 = this + 232;
      }

      v34 = 0;
LABEL_34:
      v35 = *(this + 1262);
      v36 = *(this + 1261);
      if (v35 == v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = 2 * (v35 - v36) - 1;
      }

      v38 = *(this + 1264);
      if (v37 == v34 + v38)
      {
        if (v38 < 0x10)
        {
          v39 = *(this + 1263);
          v40 = *(this + 1260);
          if (v35 - v36 < (v39 - v40))
          {
            operator new();
          }

          if (v39 == v40)
          {
            v72 = 1;
          }

          else
          {
            v72 = (v39 - v40) >> 2;
          }

          sub_1D0C4E87C(v72);
        }

        *(this + 1264) = v38 - 16;
        __p[0] = *v36;
        *(this + 1261) = v36 + 1;
        sub_1D0C149C4(this + 1260, __p);
        v36 = *(this + 1261);
        v35 = *(this + 1262);
      }

      if (v35 == v36)
      {
        v79 = 0;
      }

      else
      {
        v78 = *(this + 1265) + *(this + 1264);
        v79 = *(v36 + ((v78 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v78 & 0xF);
      }

      sub_1D0E3F45C(v79, a2 + 104);
      ++*(this + 1265);
      if (*(this + 352) == 1)
      {
        *__p = *(*(*(this + 1261) + ((*(this + 1264) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (*(this + 1264) & 0xFLL));
        v80 = sub_1D0B7CF88(__p, this + 42);
        if (v80)
        {
          v83 = *(this + 1265) + *(this + 1264) - 1;
          v84 = raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(v80, *(*(this + 1261) + ((v83 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v83 & 0xF));
          if (v84 && raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(v84, *(*(this + 1261) + ((*(this + 1264) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (*(this + 1264) & 0xFLL)))
          {
            raven::RavenDeltaVIOEstimateActiveObject::VIOUserCourseTurnDetection(this, *(*(this + 1261) + (((*(this + 1265) + *(this + 1264) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((*(this + 2530) + *(this + 1264) - 1) & 0xF), *(*(this + 1261) + ((*(this + 1264) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (*(this + 1264) & 0xFLL), v85, v82);
          }

          v86 = *(this + 352);
          v81 = *(a2 + 104);
          *(this + 21) = v81;
          if ((v86 & 1) == 0)
          {
            *(this + 352) = 1;
          }
        }
      }

      else
      {
        *(this + 21) = *(a2 + 104);
        *(this + 352) = 1;
        v81 = sub_1D0B894B0(this + 376, a2 + 336);
      }

      if (*(this + 480) || *(this + 6920) == 1 && (*__p = *(this + 370), *v103 = *(a2 + 104), v93 = CNTimeSpan::operator-(__p, v103, *v103, v82), v82.i64[0] = *(*(this + 29) + 3200), v81.n128_f64[0] = fabs(v96 + v93), v81.n128_f64[0] <= *v82.i64) && (raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(this, (this + 5816), v94, v95), (*(this + 480) & 1) != 0))
      {
        if (*(this + 6920) != 1)
        {
          goto LABEL_94;
        }

        __p[0] = (*(*a2 + 16))(a2, v81);
        __p[1] = v87;
        if ((*(this + 6920) & 1) == 0)
        {
          sub_1D0C42F28();
        }

        v103[0] = (*(*(this + 727) + 16))();
        v103[1] = v88;
        v91 = CNTimeSpan::operator-(__p, v103, v89, v90);
        v81.n128_f64[0] = v92 + v91;
        v82.i64[0] = *(this + 1259);
        if (v81.n128_f64[0] >= *v82.i64)
        {
LABEL_94:
          raven::RavenDeltaVIOEstimateActiveObject::CreateAndRaisePositionEvent(this, v81.n128_f64[0], v82);
        }
      }

      if ((*(*v33 + 3821) & 1) != 0 || *(*v33 + 3805) == 1)
      {
        raven::RavenDeltaVIOEstimateActiveObject::CreateAndRaiseDeltaVIOEstimates(this, v81.n128_f64[0], v82);
      }

      return;
    }

    if (cnprint::CNPrinter::GetLogLevel(this) > 1)
    {
      return;
    }

    v106 = 12;
    v105 = 1;
    (*(*this + 16))(__p, this);
    v25 = v108;
    v26 = __p[0];
    sub_1D0B751F4(v103, off_1E83D8380[*(a2 + 296)]);
    if (v25 >= 0)
    {
      v32 = __p;
    }

    else
    {
      LOBYTE(v32) = v26;
    }

    cnprint::CNPrinter::Print(&v106, &v105, "%s, Current VIO estimate is not in Nominal Tracking State [Status: %s]", v27, v28, v29, v30, v31, v32);
    if (v104 < 0)
    {
      operator delete(v103[0]);
    }
  }

  else
  {
    LOWORD(v103[0]) = 12;
    LOBYTE(v106) = 2;
    (*(*this + 16))(__p, this);
    if (v108 >= 0)
    {
      v24 = __p;
    }

    else
    {
      LOBYTE(v24) = __p[0];
    }

    cnprint::CNPrinter::Print(v103, &v106, "%s, Current VIO estimate of IMU pose is not Valid.", v19, v20, v21, v22, v23, v24);
  }

  if (v108 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0E40C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  operator delete(v26);
  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::IsVIOPositionConsistent(void *a1, double *a2, double a3, int8x16_t a4)
{
  v4 = a1[1265];
  if (!v4)
  {
    return 1;
  }

  v7 = (a2 + 29);
  *v55 = *a2;
  v8 = (*(a1[1261] + (((v4 + a1[1264] - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((v4 + *(a1 + 2528) - 1) & 0xF));
  *v59 = *v8;
  v9 = CNTimeSpan::operator-(v55, v59, *v59, a4);
  v11 = v10;
  v47 = 0x100000003;
  v45 = &unk_1F4CDEB28;
  v46 = xmmword_1D0E7DCC0;
  v48 = &v49;
  sub_1D0BA5A78(v7, v8 + 232, &v45);
  v60 = 0x100000003;
  *&v59[8] = xmmword_1D0E7DCC0;
  *v59 = &unk_1F4CDEB28;
  v61 = v62;
  v56 = 0x100000134;
  *&v55[8] = xmmword_1D0E7DD20;
  *v55 = &unk_1F4CDEC90;
  v57 = v58;
  v52 = 0x100000003;
  v50 = &unk_1F4CDEB28;
  v51 = xmmword_1D0E7DCC0;
  v53 = v54;
  sub_1D0BFB1AC(&v45, v59, v55, &v50, "2");
  v13 = fabs((v11 + v9) * 2.5) * 3.0;
  if (v14 <= v13)
  {
    if (*(a2 + 1081) == 1)
    {
      v26 = a1[1265] + a1[1264] - 1;
      if (*(*(a1[1261] + ((v26 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v26 & 0xF) + 1081) == 1)
      {
        v60 = 0x100000003;
        *&v59[8] = xmmword_1D0E7DCC0;
        *v59 = &unk_1F4CDEB28;
        v61 = v62;
        v56 = 0x100000134;
        *&v55[8] = xmmword_1D0E7DD20;
        *v55 = &unk_1F4CDEC90;
        v57 = v58;
        v52 = 0x100000003;
        v50 = &unk_1F4CDEB28;
        v51 = xmmword_1D0E7DCC0;
        v53 = v54;
        sub_1D0BFB1AC((a2 + 84), v59, v55, &v50, "2");
        v28 = v27;
        v29 = a1[1265] + a1[1264] - 1;
        v30 = *(a1[1261] + ((v29 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v29 & 0xF);
        v60 = 0x100000003;
        *&v59[8] = xmmword_1D0E7DCC0;
        *v59 = &unk_1F4CDEB28;
        v61 = v62;
        v56 = 0x100000134;
        *&v55[8] = xmmword_1D0E7DD20;
        *v55 = &unk_1F4CDEC90;
        v57 = v58;
        v52 = 0x100000003;
        v50 = &unk_1F4CDEB28;
        v51 = xmmword_1D0E7DCC0;
        v53 = v54;
        sub_1D0BFB1AC(v30 + 672, v59, v55, &v50, "2");
        if (vabdd_f64(v28, v32) > v13)
        {
          if (cnprint::CNPrinter::GetLogLevel(v31) > 1)
          {
            return 0;
          }

          *v59 = 12;
          LOBYTE(v50) = 1;
          (*(*a1 + 16))(v55, a1);
          if (v55[23] >= 0)
          {
            v39 = v55;
          }

          else
          {
            LOBYTE(v39) = v55[0];
          }

          v40 = a2[1] + *a2;
          cnprint::CNPrinter::Print(v59, &v50, "%s, Device position jump in ARKit camera frame for the incoming VIO estimate, t current VIO %.3lf delta-time,%.3lf, distance moved,%.3lf > %.3lf", v34, v35, v36, v37, v38, v39);
          if ((v55[23] & 0x80000000) == 0)
          {
            return 0;
          }

          v25 = *v55;
          goto LABEL_8;
        }
      }
    }

    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(v12) > 1)
  {
    return 0;
  }

  v44 = 12;
  v43 = 1;
  (*(*a1 + 16))(__p, a1);
  v15 = v42;
  v16 = __p[0];
  v17 = *a2;
  v18 = *(a2 + 1);
  v60 = 0x100000003;
  *&v59[8] = xmmword_1D0E7DCC0;
  *v59 = &unk_1F4CDEB28;
  v61 = v62;
  v56 = 0x100000134;
  *&v55[8] = xmmword_1D0E7DD20;
  *v55 = &unk_1F4CDEC90;
  v57 = v58;
  v52 = 0x100000003;
  v50 = &unk_1F4CDEB28;
  v51 = xmmword_1D0E7DCC0;
  v53 = v54;
  sub_1D0BFB1AC(&v45, v59, v55, &v50, "2");
  v24 = __p;
  if (v15 < 0)
  {
    LOBYTE(v24) = v16;
  }

  cnprint::CNPrinter::Print(&v44, &v43, "%s, IMU position jump in incoming VIO estimate, t current VIO %.3lf delta-time,%.3lf, distance moved,%.3lf > %.3lf", v19, v20, v21, v22, v23, v24);
  if ((v42 & 0x80000000) == 0)
  {
    return 0;
  }

  v25 = __p[0];
LABEL_8:
  operator delete(v25);
  return 0;
}

void sub_1D0E41238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1D0E41274(void *a1, char *a2, void *a3, char *a4, void *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xF0F0F0F0F0F0F0F1 * ((a5 - *a4) >> 6) + 2 * (a4 - a2) + 0xF0F0F0F0F0F0F0FLL * ((a3 - *a2) >> 6);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = a1[2];
  v10 = &v8[v7 >> 4];
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*v10 + 1088 * (a1[4] & 0xFLL));
  }

  if (a3 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xF0F0F0F0F0F0F0F1 * ((a3 - *a2) >> 6) + 2 * (a2 - v10) + 0xF0F0F0F0F0F0F0FLL * ((v11 - *v10) >> 6);
  }

  v43 = &v8[v7 >> 4];
  v44 = v11;
  sub_1D0E441E0(&v43, v12);
  if (v6 >= 1)
  {
    v13 = v43;
    v14 = v44;
    v15 = v12;
    v16 = a1[5];
    v42 = v15;
    if (v15 <= (v16 - v6) >> 1)
    {
      sub_1D0E441E0(&v43, v6);
      if (v13 == v10)
      {
        sub_1D0E443C0(&v43, v11, v14, v43, v44);
        v21 = v45;
        v12 = v42;
      }

      else
      {
        v23 = *v13;
        v22 = v13 - 1;
        sub_1D0E443C0(&v43, v23, v14, v43, v44);
        v24 = v44;
        v25 = v45;
        if (v22 == v10)
        {
          v12 = v42;
        }

        else
        {
          v12 = v42;
          do
          {
            v26 = *v22--;
            sub_1D0E443C0(&v43, v26, v26 + 17408, v24, v25);
            v24 = v44;
            v25 = v45;
          }

          while (v22 != v10);
        }

        sub_1D0E443C0(&v43, v11, *v22 + 17408, v24, v25);
        v21 = v45;
      }

      while (v11 != v21)
      {
        sub_1D0E44254(v11);
        v11 += 136;
        if ((v11 - *v10) == 17408)
        {
          v38 = v10[1];
          ++v10;
          v11 = v38;
        }
      }

      v39 = a1[5] - v6;
      v7 = a1[4] + v6;
      a1[4] = v7;
      a1[5] = v39;
      v8 = a1[1];
      if (v7 >= 0x20)
      {
        do
        {
          operator delete(*v8);
          v8 = (a1[1] + 8);
          a1[1] = v8;
          v7 = a1[4] - 16;
          a1[4] = v7;
        }

        while (v7 > 0x1F);
      }
    }

    else
    {
      sub_1D0E441E0(&v43, v6);
      v17 = v44;
      v18 = v16 + v7;
      v19 = &v8[(v16 + v7) >> 4];
      if (v9 == v8)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v19 + 1088 * (v18 & 0xF);
      }

      v12 = v42;
      if (v43 == v19)
      {
        v27 = v20;
        v28 = v13;
        i = v14;
      }

      else
      {
        v30 = v43 + 1;
        sub_1D0E445EC(&v43, v44, *v43 + 17408, v13, v14);
        v28 = v44;
        for (i = v45; v30 != v19; i = v45)
        {
          v31 = *v30++;
          sub_1D0E445EC(&v43, v31, v31 + 17408, v28, i);
          v28 = v44;
        }

        v17 = *v30;
        v27 = v20;
      }

      sub_1D0E445EC(&v43, v17, v27, v28, i);
      v33 = v44;
      v32 = v45;
      v34 = a1[1];
      if (a1[2] == v34)
      {
        v36 = 0;
      }

      else
      {
        v35 = a1[5] + a1[4];
        v36 = *(v34 + ((v35 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v35 & 0xF);
      }

      if (v36 != v45)
      {
        do
        {
          sub_1D0E44254(v32);
          v32 += 136;
          if ((v32 - *v33) == 17408)
          {
            v37 = v33[1];
            ++v33;
            v32 = v37;
          }
        }

        while (v32 != v36);
      }

      a1[5] -= v6;
        ;
      }

      v8 = a1[1];
      v7 = a1[4];
    }
  }

  if (a1[2] == v8)
  {
    v40 = 0;
  }

  else
  {
    v40 = v8[v7 >> 4] + 1088 * (v7 & 0xF);
  }

  v43 = &v8[v7 >> 4];
  v44 = v40;
  return sub_1D0E441E0(&v43, v12);
}