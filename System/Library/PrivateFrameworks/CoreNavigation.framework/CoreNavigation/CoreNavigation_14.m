double raven::RavenLineOfSightEstimator::GetProbabilityLOS(raven::RavenLineOfSightEstimator *this)
{
  if (*this != 1)
  {
    return NAN;
  }

  v9[2] = v1;
  v9[3] = v2;
  v3 = 64;
  if (!*(this + 34))
  {
    v3 = 8;
  }

  v7 = 0x100000002;
  v5 = &unk_1F4CE0220;
  v6 = xmmword_1D0E83F60;
  v8 = v9;
  sub_1D0B894B0(&v5, this + v3 + 16);
  return *v8;
}

void *raven::GNSSPreprocessedMeasurementsChecker::RemoveOldLOSEstimators(void *result, uint64_t a2, double a3, int8x16_t a4)
{
  v4 = (result + 6);
  v5 = result[6];
  if (v5)
  {
    v7 = result;
    v8 = result + 4;
    while (1)
    {
      *__p = *(v5 + 13);
      result = CNTimeSpan::operator-(a2, __p, *__p, a4);
      *a4.i64 = result;
      if (v9 + result > *(v7[21] + 2200))
      {
        break;
      }

      v12 = *v5;
LABEL_38:
      v5 = v12;
      if (!v12)
      {
        return result;
      }
    }

    if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
    {
      v33 = 12;
      v32 = 1;
      v10 = *a2;
      v11 = *(a2 + 8);
      if (v5[199] < 0)
      {
        sub_1D0BC39B4(__p, *(v5 + 22), *(v5 + 23));
      }

      else
      {
        *__p = *(v5 + 11);
        v30 = *(v5 + 24);
      }

      v31 = *(v5 + 25);
      sub_1D0BCFAB8(__p);
      v28 = *(v7[21] + 2200);
      v27 = v11 + v10;
      cnprint::CNPrinter::Print(&v33, &v32, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,removing LOS estimator,%s,age,%.2lf,max_age,%.2lf", v13, v14, v15, v16, v17, SLOBYTE(v27));
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v18 = v7[5];
    v12 = *v5;
    v19 = *(v5 + 1);
    v20 = vcnt_s8(v18);
    v20.i16[0] = vaddlv_u8(v20);
    if (v20.u32[0] > 1uLL)
    {
      if (v19 >= *&v18)
      {
        v19 %= *&v18;
      }
    }

    else
    {
      v19 &= *&v18 - 1;
    }

    v21 = *(*v8 + 8 * v19);
    do
    {
      v22 = v21;
      v21 = *v21;
    }

    while (v21 != v5);
    if (v22 == v4)
    {
      goto LABEL_41;
    }

    v23 = *(v22 + 1);
    if (v20.u32[0] > 1uLL)
    {
      if (v23 >= *&v18)
      {
        v23 %= *&v18;
      }
    }

    else
    {
      v23 &= *&v18 - 1;
    }

    v24 = *v5;
    if (v23 != v19)
    {
LABEL_41:
      if (v12)
      {
        v25 = *(v12 + 1);
        if (v20.u32[0] > 1uLL)
        {
          if (v25 >= *&v18)
          {
            v25 %= *&v18;
          }
        }

        else
        {
          v25 &= *&v18 - 1;
        }

        v24 = *v5;
        if (v25 == v19)
        {
          goto LABEL_31;
        }
      }

      *(*v8 + 8 * v19) = 0;
      v24 = *v5;
    }

    if (!v24)
    {
LABEL_37:
      *v22 = v24;
      *v5 = 0;
      --v7[7];
      __p[0] = v5;
      __p[1] = v4 - 16;
      LOBYTE(v30) = 1;
      *(&v30 + 1) = 0;
      HIDWORD(v30) = 0;
      result = sub_1D0E359D0(__p);
      goto LABEL_38;
    }

LABEL_31:
    v26 = *(v24 + 8);
    if (v20.u32[0] > 1uLL)
    {
      if (v26 >= *&v18)
      {
        v26 %= *&v18;
      }
    }

    else
    {
      v26 &= *&v18 - 1;
    }

    if (v26 != v19)
    {
      *(*v8 + 8 * v26) = v22;
      v24 = *v5;
    }

    goto LABEL_37;
  }

  return result;
}

void sub_1D0C46EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C46F00(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA910(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v8, v9);
  v9[0] = &unk_1F4CEF598;
  v11 = &v10;
  sub_1D0BBBD80(&v11);
}

void sub_1D0C46F70(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1 + 96;
  sub_1D0BBBD80((v2 - 24));
  _Unwind_Resume(a1);
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if (*(this + 224))
  {
    v3 = (this + 320);

    raven::RavenPositionContextEstimator::HandleEvent(v3, a2);
  }

  else
  {
    v13 = 12;
    v12 = 2;
    v11[0] = (*(*a2 + 16))(a2);
    v11[1] = v4;
    cnprint::CNLogFormatter::FormatGeneral(this + 264, v11, "RavenPositionContextEstimatorActiveObject is not configured.");
    if (*(this + 287) >= 0)
    {
      LOBYTE(v10) = this + 8;
    }

    else
    {
      v10 = *(this + 33);
    }

    cnprint::CNPrinter::Print(&v13, &v12, "%s", v5, v6, v7, v8, v9, v10);
  }
}

uint64_t raven::RavenPositionContextEstimator::HandleEvent(raven::RavenPositionContextEstimator *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v53 = v5;
  v54 = v4;
  v55 = v2;
  v56 = v3;
  v7 = this;
  v50[0] = 0;
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  v9 = *(a2 + 12);
  v8 = *(a2 + 13);
  if (v9 != v8)
  {
    v44 = 0;
    while (1)
    {
      v10 = *v9;
      if (*v9)
      {
        if (!*(v10 + 24))
        {
          v49 = 12;
          v48 = 2;
          v45 = COERCE_DOUBLE((*(*a2 + 16))(a2));
          v46 = v18;
          cnprint::CNLogFormatter::FormatGeneral(v7 + 424, &v45, "Warning: RavenPositionContextEstimator::HandleEvent(GnssPreprocessedMeasurementsEvent),unknown constellation");
          goto LABEL_10;
        }

        if (*(v10 + 264) >= *(*(v7 + 1) + 616) * 0.0174532925)
        {
          v21 = *(v10 + 328);
          v20 = *(v10 + 336);
          if (v20 == v21)
          {
            goto LABEL_14;
          }

          while (2)
          {
            if (*(v21 + 96) == 1)
            {
              v22 = *(v21 + 100);
              v23 = v22 > 0xA;
              v24 = (1 << v22) & 0x545;
              if (v23 || v24 == 0)
              {
                v26 = *(v10 + 264);
                v45 = *(v21 + 112);
                v27 = sub_1D0B8954C(v50, &v45, v26);
                if (v27)
                {
                  v49 = 12;
                  v48 = 4;
                  v45 = COERCE_DOUBLE((*(*a2 + 16))(a2));
                  v46 = v28;
                  v29 = *(v21 + 112);
                  cnprint::CNLogFormatter::FormatGeneral(v7 + 424, &v45, "RavenPositionContextEstimator::HandleEvent(GnssPreprocessedMeasurementsEvent),failed to add cno %.3f to OnlineStatisticsEstimator");
                }

                else
                {
                  ++v44;
                  this = cnprint::CNPrinter::GetLogLevel(v27);
                  if (this)
                  {
                    goto LABEL_22;
                  }

                  v49 = 12;
                  v48 = 0;
                  v45 = COERCE_DOUBLE((*(*a2 + 16))(a2));
                  v46 = v36;
                  sub_1D0BCFAB8(v10);
                  v37 = *(v21 + 96) - 1;
                  if (v37 <= 4)
                  {
                    v38 = off_1E83D7F50[v37];
                  }

                  v43 = *(v21 + 112);
                  cnprint::CNLogFormatter::FormatGeneral(v7 + 424, &v45, "RavenPositionContextEstimator::HandleEvent(GnssPreprocessedMeasurementsEvent),satID,%s,obs,%s,cno,%.2f");
                }

                if (*(v7 + 447) >= 0)
                {
                  LOBYTE(v35) = v7 - 88;
                }

                else
                {
                  v35 = *(v7 + 53);
                }

                cnprint::CNPrinter::Print(&v49, &v48, "%s", v30, v31, v32, v33, v34, v35);
              }
            }

LABEL_22:
            v21 += 208;
            if (v21 == v20)
            {
              goto LABEL_14;
            }

            continue;
          }
        }

        this = cnprint::CNPrinter::GetLogLevel(this);
        if (this <= 1)
        {
          v49 = 12;
          v48 = 1;
          v45 = COERCE_DOUBLE((*(*a2 + 16))(a2));
          v46 = v11;
          sub_1D0BCFAB8(v10);
          v12 = *(v10 + 264) * 57.2957795;
          cnprint::CNLogFormatter::FormatGeneral(v7 + 424, &v45, "%s,RavenPositionContextEstimator::HandleEvent(GnssPreprocessedMeasurementsEvent),satellite excluded,low elevation,%.2f deg");
LABEL_10:
          if (*(v7 + 447) >= 0)
          {
            LOBYTE(v19) = v7 - 88;
          }

          else
          {
            v19 = *(v7 + 53);
          }

          cnprint::CNPrinter::Print(&v49, &v48, "%s", v13, v14, v15, v16, v17, v19);
        }
      }

LABEL_14:
      v9 += 2;
      if (v9 == v8)
      {
        goto LABEL_36;
      }
    }
  }

  v44 = 0;
LABEL_36:
  v46 = (*(*a2 + 16))(a2);
  v47 = v40;
  v41.i32[1] = v52[2];
  *v41.i32 = *&v52[1];
  v45 = COERCE_DOUBLE(__PAIR64__(v44, v41.u32[0]));
  raven::RavenPositionContextEstimator::HandleEvidence(v7, &v45, v41, v42);
  return 0;
}

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupMeanCn0ProbabilityGivenOutdoor(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*a2 < 0x2E)
  {
    v12 = *a3;
    result = 0xFFFFFFFFLL;
    v11 = -1.0;
    if (v12 > 3)
    {
      if (v12 == 4)
      {
        result = 0;
        v13 = &unk_1D0E81B90;
        goto LABEL_15;
      }

      if (v12 == 6)
      {
        result = 0;
        v13 = &unk_1D0E81D00;
        goto LABEL_15;
      }

      if (v12 != 5)
      {
        goto LABEL_16;
      }
    }

    else if (v12 != 1)
    {
      if (v12 == 2)
      {
        result = 0;
        v13 = &unk_1D0E818B0;
      }

      else
      {
        if (v12 != 3)
        {
          goto LABEL_16;
        }

        result = 0;
        v13 = &unk_1D0E81A20;
      }

LABEL_15:
      v11 = v13[v9];
      goto LABEL_16;
    }

    result = 0;
    v13 = &unk_1D0E81740;
    goto LABEL_15;
  }

  v15 = 12;
  v14 = 4;
  cnprint::CNPrinter::Print(&v15, &v14, "LookupMeanCn0ProbabilityGivenOutdoor(),index out of bound,%lu", a4, a5, a6, a7, a8, v9);
  result = 0xFFFFFFFFLL;
  v11 = -1.0;
LABEL_16:
  *a4 = v11;
  return result;
}

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupMeanCn0ProbabilityGivenIndoor(raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables *this, const unint64_t *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*a2 < 0x2E)
  {
    result = 0;
    v11 = dbl_1D0E81E70[v9];
  }

  else
  {
    v13 = 12;
    v12 = 4;
    cnprint::CNPrinter::Print(&v13, &v12, "LookupMeanCn0ProbabilityGivenIndoor(),index out of bound,%lu", a4, a5, a6, a7, a8, v9);
    result = 0xFFFFFFFFLL;
    v11 = -1.0;
  }

  *a3 = v11;
  return result;
}

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupNumSatsProbabilityGivenIndoor(raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables *this, const unint64_t *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*a2 < 0x47)
  {
    result = 0;
    v11 = dbl_1D0E82AF8[v9];
  }

  else
  {
    v13 = 12;
    v12 = 4;
    cnprint::CNPrinter::Print(&v13, &v12, "LookupNumSatsProbabilityGivenIndoor(),index out of bound,%lu", a4, a5, a6, a7, a8, v9);
    result = 0xFFFFFFFFLL;
    v11 = -1.0;
  }

  *a3 = v11;
  return result;
}

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupNumSatsProbabilityGivenOutdoor(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*a2 < 0x47)
  {
    v12 = *a3;
    result = 0xFFFFFFFFLL;
    v11 = -1.0;
    if (v12 > 3)
    {
      if (v12 == 4)
      {
        result = 0;
        v13 = &unk_1D0E82688;
        goto LABEL_15;
      }

      if (v12 == 6)
      {
        result = 0;
        v13 = &unk_1D0E828C0;
        goto LABEL_15;
      }

      if (v12 != 5)
      {
        goto LABEL_16;
      }
    }

    else if (v12 != 1)
    {
      if (v12 == 2)
      {
        result = 0;
        v13 = &unk_1D0E82218;
      }

      else
      {
        if (v12 != 3)
        {
          goto LABEL_16;
        }

        result = 0;
        v13 = &unk_1D0E82450;
      }

LABEL_15:
      v11 = v13[v9];
      goto LABEL_16;
    }

    result = 0;
    v13 = &unk_1D0E81FE0;
    goto LABEL_15;
  }

  v15 = 12;
  v14 = 4;
  cnprint::CNPrinter::Print(&v15, &v14, "LookupNumSatsProbabilityGivenOutdoor(),index out of bound,%lu", a4, a5, a6, a7, a8, v9);
  result = 0xFFFFFFFFLL;
  v11 = -1.0;
LABEL_16:
  *a4 = v11;
  return result;
}

void sub_1D0C47F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

__n128 sub_1D0C47FB0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CE6048;
  *(a1 + 8) = &unk_1F4CEE030;
  v2 = *(a2 + 8);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 48) = v3;
  *(a1 + 16) = v2;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 88);
  *(a1 + 112) = v6;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 128) = &unk_1F4CD5A50;
  *(a1 + 136) = *(a2 + 128);
  *(a1 + 152) = *(a2 + 144);
  *(a1 + 168) = *(a2 + 160);
  result = *(a2 + 176);
  *(a1 + 184) = result;
  *(a1 + 200) = *(a2 + 192);
  return result;
}

void raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(raven::GnssMeasurementDataEvent *this)
{
  *this = &unk_1F4CEDFD0;
  v2 = *(this + 38);
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  v3 = *(this + 36);
  *(this + 36) = 0;
  if (v3)
  {
    MEMORY[0x1D387ECA0](v3, 0x1000C4095D96C66);
  }

  v4 = *(this + 35);
  *(this + 35) = 0;
  if (v4)
  {
    MEMORY[0x1D387ECA0](v4, 0x1000C4095D96C66);
  }

  v5 = *(this + 34);
  *(this + 34) = 0;
  if (v5)
  {
    MEMORY[0x1D387ECA0](v5, 0x1000C4095D96C66);
  }

  v6 = *(this + 33);
  *(this + 33) = 0;
  if (v6)
  {
    MEMORY[0x1D387ECA0](v6, 0x1000C40D315E998);
  }

  v7 = *(this + 32);
  *(this + 32) = 0;
  if (v7)
  {
    MEMORY[0x1D387ECA0](v7, 0x1000C4079AA8B5ELL);
  }

  v8 = *(this + 29);
  if (v8)
  {
    *(this + 30) = v8;
    operator delete(v8);
  }

  v9 = (this + 208);
  sub_1D0C48174(&v9);
  v9 = (this + 184);
  sub_1D0C48234(&v9);
}

{
  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0C48174(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0C481C8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D0C481C8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 256)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }

    if (*(i - 208) == 1)
    {
      v5 = *(i - 232);
      if (v5)
      {
        *(i - 224) = v5;
        operator delete(v5);
      }
    }
  }

  a1[1] = v2;
}

void sub_1D0C48234(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0C48288(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1D0C48288(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 200)
  {
    result = *(i - 16);
    *(i - 16) = 0;
    if (result)
    {
      result = MEMORY[0x1D387ECA0](result, 0x1000C4041240993);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void sub_1D0C482F8(uint64_t a1)
{
  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::~MeasurementReportCallbackContents(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *this = &unk_1F4CDE460;
  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedDtor(this);
  sub_1D0B8CD0C(this + 13);
  sub_1D0B8CD0C(this + 6);
  sub_1D0B8CD0C(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::~MeasurementReportCallbackContents(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 9);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 12);
    if (v5)
    {
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::~ReceivedTimeStamp(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  *this = &unk_1F4CDE3E8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::~ReceivedTimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::~MeasurementReport(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  *this = &unk_1F4CDDA10;
  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::~MeasurementReport(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Clock::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Clock::~Clock(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this)
{
  *this = &unk_1F4CDD998;
  CoreNavigation::CLP::LogEntry::PrivateData::Clock::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Clock::~Clock(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::~ReceiverClockCorrections(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  *this = &unk_1F4CDD8A8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::~ReceiverClockCorrections(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::~ReceiverToGpsTimeConversion(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *this = &unk_1F4CDD920;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::~ReceiverToGpsTimeConversion(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Measurement::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 6);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 7);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 8);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 9);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 11);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 12);
    if (v9)
    {
      v10 = *(*v9 + 8);

      v10();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Measurement::~Measurement(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this)
{
  *this = &unk_1F4CDD7B8;
  CoreNavigation::CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Measurement::~Measurement(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvId::~SvId(CoreNavigation::CLP::LogEntry::PrivateData::SvId *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::SvId::~SvId(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDCED0;
  CoreNavigation::CLP::LogEntry::PrivateData::SvId::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvId::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::SvId *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::~ConstellationId(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this)
{
  *this = &unk_1F4CDCE58;
  CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::~ConstellationId(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SyncState::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 7);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 8);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 9);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(this + 10);
    if (v11)
    {
      v12 = *(*v11 + 8);

      v12();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::~GpsL1SyncState(CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *this)
{
  *this = &unk_1F4CDCF48;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::~GpsL1SyncState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvTime::~SvTime(CoreNavigation::CLP::LogEntry::PrivateData::SvTime *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::SvTime::~SvTime(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDD3F8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::~FrequencyOffset(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::~FrequencyOffset(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDD470;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SyncState::~SyncState(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this)
{
  *this = &unk_1F4CDD380;
  CoreNavigation::CLP::LogEntry::PrivateData::SyncState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SyncState::~SyncState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::~GpsL5SyncState(CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *this)
{
  *this = &unk_1F4CDD038;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::~GpsL5SyncState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::~GlonassId(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *this)
{
  *this = &unk_1F4CDCDE0;
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::~GlonassId(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::~GlonassSlotInfo(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *this)
{
  *this = &unk_1F4CDCD68;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::~GlonassSlotInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::~GlonassL1fSyncState(CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *this)
{
  *this = &unk_1F4CDD0B0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::~GlonassL1fSyncState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::~PhaseTracking(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  *this = &unk_1F4CDD560;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::~PhaseTracking(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::~BeidouB2SyncState(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::~BeidouB2SyncState(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDD1A0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  v1 = this;
  v2 = *(this + 10);
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1D387ECA0](v2, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ != v1)
  {
    v4 = *(v1 + 2);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 3);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v1 + 4);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v1 + 5);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::~MeasurementExtension(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  *this = &unk_1F4CDD740;
  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::SharedDtor(this);
  sub_1D0B8CD0C(this + 11);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::~MeasurementExtension(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::~SvMeasurementUsage(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::~SvMeasurementUsage(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDD6C8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::~SignalCorrelationPeak(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::~SignalCorrelationPeak(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDD5D8;
  CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::~BeidouB1SyncState(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *this)
{
  *this = &unk_1F4CDD128;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::~BeidouB1SyncState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::~GalileoE1SyncState(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *this)
{
  *this = &unk_1F4CDD218;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::~GalileoE1SyncState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::~GalileoE5SyncState(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *this)
{
  *this = &unk_1F4CDD290;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::~GalileoE5SyncState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      v7 = *(*v6 + 8);

      v7();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::~TimeConversionInfo(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  *this = &unk_1F4CDE208;
  CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::~TimeConversionInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::~GpsTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::~GpsTimeInfo(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDDEC0;
  CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::~LeapSecondInfo(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::~LeapSecondInfo(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDDDD0;
  CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::~GpsToUtcConversion(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  *this = &unk_1F4CDDE48;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::~GpsToUtcConversion(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::~GlonassTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::~GlonassTimeInfo(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDDFB0;
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::~GlonassSubsecondConversion(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this)
{
  *this = &unk_1F4CDDF38;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::~GlonassSubsecondConversion(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      v7 = *(*v6 + 8);

      v7();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::~BeidouTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  *this = &unk_1F4CDE0A0;
  CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::~BeidouTimeInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::~SubSecondConversion(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this)
{
  *this = &unk_1F4CDE028;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::~SubSecondConversion(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::~GalileoTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  *this = &unk_1F4CDE118;
  CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::~GalileoTimeInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::~NavicTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *this)
{
  *this = &unk_1F4CDE190;
  CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::~NavicTimeInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::~KlobucharModelParameters(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  *this = &unk_1F4CDE280;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::~KlobucharModelParameters(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::~ReceiverBandCorrections(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *this)
{
  *this = &unk_1F4CDDCE0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::~ReceiverBandCorrections(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::~SvInfo(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this)
{
  *this = &unk_1F4CDDC68;
  CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::SharedDtor(this);
  sub_1D0B8CD0C(this + 13);
  sub_1D0B8CD0C(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::~SvInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 16);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::~SvBandCorrections(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *this = &unk_1F4CDDB00;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::~SvBandCorrections(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::~SvPositionAtTime(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this)
{
  *this = &unk_1F4CDDB78;
  CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::~SvPositionAtTime(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::~Wgs84Ecef(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  *this = &unk_1F4CDDA88;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::~Wgs84Ecef(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_52;
        }

        if (v6 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_62:
          v42 = 0;
          if (v11 >= v10 || (v30 = *v11, (v30 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
            if (!result)
            {
              return result;
            }

            v30 = v42;
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v30 <= 6)
          {
            *(this + 15) |= 8u;
            *(this + 7) = v30;
          }

          v31 = *(a2 + 1);
          if (v31 < *(a2 + 2) && *v31 == 42)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v32 = *(this + 11);
            v33 = *(this + 10);
            if (v33 >= v32)
            {
              if (v32 == *(this + 12))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
                v32 = *(this + 11);
              }

              *(this + 11) = v32 + 1;
              operator new();
            }

            v34 = *(this + 4);
            *(this + 10) = v33 + 1;
            v35 = *(v34 + 8 * v33);
            v42 = 0;
            v36 = *(a2 + 1);
            if (v36 >= *(a2 + 2) || *v36 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v36;
              *(a2 + 1) = v36 + 1;
            }

            v37 = *(a2 + 14);
            v38 = *(a2 + 15);
            *(a2 + 14) = v37 + 1;
            if (v37 >= v38)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergePartialFromCodedStream(v35, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v39 = *(a2 + 14);
            v17 = __OFSUB__(v39, 1);
            v40 = v39 - 1;
            if (v40 < 0 == v17)
            {
              *(a2 + 14) = v40;
            }

            v31 = *(a2 + 1);
            v41 = *(a2 + 2);
            if (v31 >= v41 || *v31 != 42)
            {
              break;
            }

LABEL_71:
            *(a2 + 1) = v31 + 1;
          }

          if (v31 == v41 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_21;
      }

      *(this + 15) |= 1u;
      v12 = *(this + 1);
      if (!v12)
      {
        operator new();
      }

      v42 = 0;
      v13 = *(a2 + 1);
      if (v13 >= *(a2 + 2) || *v13 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
        {
          return 0;
        }
      }

      else
      {
        v42 = *v13;
        *(a2 + 1) = v13 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v12, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v16 = *(a2 + 14);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v18 < 0 == v17)
      {
        *(a2 + 14) = v18;
      }

      v19 = *(a2 + 1);
      if (v19 < *(a2 + 2) && *v19 == 18)
      {
        *(a2 + 1) = v19 + 1;
LABEL_38:
        *(this + 15) |= 2u;
        v20 = *(this + 2);
        if (!v20)
        {
          operator new();
        }

        v42 = 0;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
          {
            return 0;
          }
        }

        else
        {
          v42 = *v21;
          *(a2 + 1) = v21 + 1;
        }

        v22 = *(a2 + 14);
        v23 = *(a2 + 15);
        *(a2 + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v24 = *(a2 + 14);
        v17 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v17)
        {
          *(a2 + 14) = v25;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v26 < v8 && *v26 == 24)
        {
          v9 = v26 + 1;
          *(a2 + 1) = v9;
LABEL_52:
          v42 = 0;
          if (v9 >= v8 || (v27 = *v9, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
            if (!result)
            {
              return result;
            }

            v27 = v42;
          }

          else
          {
            *(a2 + 1) = v9 + 1;
          }

          if (v27 <= 6)
          {
            *(this + 15) |= 4u;
            *(this + 6) = v27;
          }

          v29 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v29 < v10 && *v29 == 32)
          {
            v11 = v29 + 1;
            *(a2 + 1) = v11;
            goto LABEL_62;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 2)
    {
      goto LABEL_38;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2, raven::MapsRouteHintEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v11 = 0uLL;
  v10 = &unk_1F4CEE060;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0uLL;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v21 = 0uLL;
  v20 = 0x7FF8000000000000;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0x7FF8000000000000;
  v31 = 0;
  v33 = 0;
  v34 = 0;
  __p = 0;
  if (raven::ConvertProtobufToMapsRouteHintEvent(a2, &v10, a3, a4, a5, a6, a7, a8, a9, a10))
  {
    operator new();
  }

  v10 = &unk_1F4CEE060;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_1D0C4B348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  v39 = *(v37 - 80);
  if (v39)
  {
    sub_1D0B7CAB8(v39);
  }

  sub_1D0B7CAB8(v36);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToMapsRouteHintEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2, raven::MapsRouteHintEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 60) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((*(this + 60) & 2) == 0)
    {
      return 0;
    }

    v21 = *(this + 2);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 16);
    }

    result = raven::ConvertProtobufToRavenTime(v21, a2 + 104, 0, v14, v15, v16, v17, v18, v19, v20);
    if (result)
    {
      v43[0] = *(this + 6);
      *(a2 + 200) = raven::ConvertProtobufToMapsRouteType(v43);
      v43[0] = *(this + 7);
      *(a2 + 201) = raven::ConvertProtobufToMapsRouteType(v43);
      v23 = (a2 + 208);
      v22 = *(a2 + 26);
      *(a2 + 27) = v22;
      v24 = *(this + 10);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 28) - v22) >> 3) < v24)
      {
        sub_1D0DC99F4(a2 + 208, v24);
      }

      LODWORD(v25) = *(this + 10);
      if (v25 >= 1)
      {
        v26 = 0;
        do
        {
          v27 = *(*(this + 4) + 8 * v26);
          v28 = v27[1];
          if (v26 >= v25)
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
            v27 = *(*(this + 4) + 8 * v26);
            v25 = *(this + 10);
          }

          else
          {
            v25 = v25;
          }

          v29 = v27[2];
          if (v25 <= v26)
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
            v27 = *(*(this + 4) + 8 * v26);
            v25 = *(this + 10);
          }

          v30 = v27[3];
          if (v25 <= v26)
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
            v27 = *(*(this + 4) + 8 * v26);
            v25 = *(this + 10);
          }

          v31 = v27[4];
          if (v25 <= v26)
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
            v27 = *(*(this + 4) + 8 * v26);
          }

          v32 = v27[5];
          v33 = *(a2 + 27);
          v34 = *(a2 + 28);
          if (v33 >= v34)
          {
            v36 = *v23;
            v37 = v33 - *v23;
            v38 = 0xCCCCCCCCCCCCCCCDLL * (v37 >> 3) + 1;
            if (v38 > 0x666666666666666)
            {
              sub_1D0C5663C();
            }

            v39 = 0xCCCCCCCCCCCCCCCDLL * ((v34 - v36) >> 3);
            if (2 * v39 > v38)
            {
              v38 = 2 * v39;
            }

            if (v39 >= 0x333333333333333)
            {
              v38 = 0x666666666666666;
            }

            if (v38)
            {
              sub_1D0DC99F4(a2 + 208, v38);
            }

            v40 = (8 * (v37 >> 3));
            *v40 = v28;
            v40[1] = v29;
            v40[2] = v30;
            v40[3] = v31;
            v40[4] = v32;
            v35 = v40 + 5;
            v41 = v40 - v37;
            memcpy(v40 - v37, v36, v37);
            v42 = *(a2 + 26);
            *(a2 + 26) = v41;
            *(a2 + 27) = v35;
            *(a2 + 28) = 0;
            if (v42)
            {
              operator delete(v42);
            }
          }

          else
          {
            *v33 = v28;
            *(v33 + 1) = v29;
            *(v33 + 2) = v30;
            v35 = v33 + 40;
            *(v33 + 3) = v31;
            *(v33 + 4) = v32;
          }

          *(a2 + 27) = v35;
          ++v26;
          v25 = *(this + 10);
        }

        while (v26 < v25);
      }

      return 1;
    }
  }

  return result;
}

void sub_1D0C4B7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToMapsRouteType(int *a1)
{
  v1 = *a1;
  if (*a1 >= 7)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

void sub_1D0C4B83C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v51.__vftable) = 3;
    LOBYTE(v49) = 5;
    cnprint::CNPrinter::Print(&v51, &v49, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v30);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEF0D0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF0D0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v51.__vftable = 0;
      std::bad_cast::bad_cast(&v51);
      v51.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v31 = &unk_1F4CEE060;
    v32 = *(v20 + 16);
    v21 = *(v20 + 32);
    v22 = *(v20 + 48);
    v23 = *(v20 + 80);
    v35 = *(v20 + 64);
    v36 = v23;
    v33 = v21;
    v34 = v22;
    v24 = *(v20 + 96);
    v25 = *(v20 + 112);
    v26 = *(v20 + 128);
    v40 = *(v20 + 144);
    v38 = v25;
    v39 = v26;
    v37 = v24;
    v27 = *(v20 + 160);
    v28 = *(v20 + 176);
    v29 = *(v20 + 192);
    LOWORD(v44) = *(v20 + 208);
    v43 = v29;
    v42 = v28;
    v41 = v27;
    v46 = 0;
    v47 = 0;
    __p = 0;
    sub_1D0B94988(&__p, *(v20 + 216), *(v20 + 224), 0xCCCCCCCCCCCCCCCDLL * ((*(v20 + 224) - *(v20 + 216)) >> 3));
  }

  else
  {
    v49 = 3;
    v48 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v51.__vftable) = 3;
      v50 = 5;
      cnprint::CNPrinter::Print(&v51, &v50, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v30);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v49, &v48, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v33 = 0uLL;
    v36 = 0uLL;
    v39 = 0uLL;
    v40 = 0u;
    v42 = 0uLL;
    v32 = 0uLL;
    v31 = &unk_1F4CEE060;
    v34 = 0uLL;
    v35 = 0uLL;
    *&v37 = 0;
    v38 = 0uLL;
    *(&v37 + 1) = 0x7FF8000000000000;
    *&v40 = 0;
    BYTE8(v40) = 0;
    v41 = 0uLL;
    *&v43 = 0;
    *(&v43 + 1) = 0x7FF8000000000000;
    v44 = 0;
    __p = 0;
    v46 = 0;
    v47 = 0;
  }

  sub_1D0C4BB84(v9 + 800, &v31);
  v31 = &unk_1F4CEE060;
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1D0C4BB84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 232) == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    v3 = *(a2 + 24);
    v4 = *(a2 + 40);
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
    *(a1 + 40) = v4;
    *(a1 + 24) = v3;
    v6 = *(a2 + 88);
    v7 = *(a2 + 104);
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
    *(a1 + 104) = v7;
    *(a1 + 88) = v6;
    v9 = *(a2 + 152);
    v10 = *(a2 + 168);
    v11 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v11;
    *(a1 + 168) = v10;
    *(a1 + 152) = v9;
    if (a1 != a2)
    {
      sub_1D0C4BD08((a1 + 208), *(a2 + 208), *(a2 + 216), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 216) - *(a2 + 208)) >> 3));
    }
  }

  else
  {
    *a1 = &unk_1F4CEE060;
    v12 = *(a2 + 152);
    v13 = *(a2 + 168);
    v14 = *(a2 + 184);
    v15 = *(a2 + 200);
    v16 = *(a2 + 88);
    v17 = *(a2 + 104);
    v18 = *(a2 + 120);
    v19 = *(a2 + 136);
    v20 = *(a2 + 24);
    v21 = *(a2 + 40);
    v22 = *(a2 + 56);
    v23 = *(a2 + 72);
    v24 = *(a2 + 8);
    *(a1 + 208) = 0;
    *(a1 + 8) = v24;
    *(a1 + 72) = v23;
    *(a1 + 56) = v22;
    *(a1 + 40) = v21;
    *(a1 + 24) = v20;
    *(a1 + 136) = v19;
    *(a1 + 120) = v18;
    *(a1 + 104) = v17;
    *(a1 + 88) = v16;
    *(a1 + 200) = v15;
    *(a1 + 184) = v14;
    *(a1 + 168) = v13;
    *(a1 + 152) = v12;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    sub_1D0B94988(a1 + 208, *(a2 + 208), *(a2 + 216), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 216) - *(a2 + 208)) >> 3));
    *(a1 + 232) = 1;
  }

  return a1;
}

void *sub_1D0C4BD08(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      sub_1D0DC99A8(v6, v11);
    }

    sub_1D0C5663C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_1D0C4BE68(void *a1)
{
  a1[1] = &unk_1F4CEE060;
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::~MapMatchingRouteHint(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::~MapMatchingRouteHint(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CDA8D8;
  CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::SharedDtor(this);
  sub_1D0B8CD0C(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

__n128 sub_1D0C4C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v35.__vftable) = 3;
    LOBYTE(v33) = 5;
    cnprint::CNPrinter::Print(&v35, &v33, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v31);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v24 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v24 != (off_1F4CEF130 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v24, (off_1F4CEF130 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v35.__vftable = 0;
        std::bad_cast::bad_cast(&v35);
        v35.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v25 = *(a2 + 16);
    *a1 = &unk_1F4CEF568;
    v26 = *(v25 + 48);
    v27 = *(v25 + 64);
    v28 = *(v25 + 32);
    *(a1 + 8) = *(v25 + 16);
    *(a1 + 56) = v27;
    *(a1 + 40) = v26;
    *(a1 + 24) = v28;
    v29 = *(v25 + 96);
    result = *(v25 + 112);
    v30 = *(v25 + 128);
    *(a1 + 72) = *(v25 + 80);
    *(a1 + 120) = v30;
    *(a1 + 104) = result;
    *(a1 + 88) = v29;
  }

  else
  {
    v33 = 3;
    v32 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v35.__vftable) = 3;
      v34 = 5;
      cnprint::CNPrinter::Print(&v35, &v34, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v31);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v33, &v32, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF568;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
    __asm { FMOV            V0.2D, #0.5 }

    *(a1 + 112) = result;
  }

  return result;
}

void sub_1D0C4C270(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0C4C01C(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    raven::RavenEstimator::HandlePositionContextStateEvent((v8 + 2968), v31);
    if (v10 && cnprint::CNPrinter::GetLogLevel(v10) <= 1)
    {
      v36 = 12;
      v35 = 1;
      v34[0] = (*(v31[0] + 16))(v31);
      v34[1] = v11;
      (*(v31[0] + 24))(v32, v31);
      if (v33 >= 0)
      {
        v17 = v32;
      }

      else
      {
        v17 = v32[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v8 + 240, v34, "Failed to handle event - %s.", v12, v13, v14, v15, v16, v17);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v23) = v8 - 16;
      }

      else
      {
        v23 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v36, &v35, "%s", v18, v19, v20, v21, v22, v23);
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }
    }
  }

  else
  {
    LOWORD(v32[0]) = 12;
    LOBYTE(v34[0]) = 2;
    v24 = cnprint::CNLogFormatter::FormatGeneral((v8 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v30) = v24;
    }

    else
    {
      v30 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v32, v34, "%s", v25, v26, v27, v28, v29, v30);
  }
}

void sub_1D0C4C414(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenEstimator::HandlePositionContextStateEvent(raven::RavenEstimator *this, const raven::PositionContextStateEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 2152) == 1)
    {
      v4 = *(a2 + 8);
      v5 = *(a2 + 24);
      v6 = *(a2 + 56);
      *(this + 2200) = *(a2 + 40);
      *(this + 2216) = v6;
      *(this + 2168) = v4;
      *(this + 2184) = v5;
      result = *(a2 + 72);
      v8 = *(a2 + 88);
      v9 = *(a2 + 104);
      *(this + 285) = *(a2 + 15);
      *(this + 2248) = v8;
      *(this + 2264) = v9;
      *(this + 2232) = result;
    }

    else
    {
      *(this + 270) = &unk_1F4CEF568;
      v22 = *(a2 + 8);
      v23 = *(a2 + 24);
      v24 = *(a2 + 56);
      *(this + 2200) = *(a2 + 40);
      *(this + 2216) = v24;
      *(this + 2168) = v22;
      *(this + 2184) = v23;
      result = *(a2 + 72);
      v25 = *(a2 + 88);
      v26 = *(a2 + 104);
      *(this + 285) = *(a2 + 15);
      *(this + 2248) = v25;
      *(this + 2264) = v26;
      *(this + 2232) = result;
      *(this + 2152) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v30 = 12;
    v29 = 1;
    v28[0] = (*(*a2 + 16))(a2);
    v28[1] = v10;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v28, "Estimator not configured, failed to handle PositionContextStateEvent.", v11, v12, v13, v14, v15, v27);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v21) = this - 104;
    }

    else
    {
      v21 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v30, &v29, "%s", v16, v17, v18, v19, v20, v21);
  }

  return result;
}

double raven::RavenEstimator::FillZUPTEvent(raven::RavenEstimator *this, const raven::MovingStateEvent *a2, raven::VelocityEvent *a3)
{
  v3 = *(this + 146);
  if (!v3 || (*(v3 + 33) & 1) == 0)
  {
    v34 = 12;
    v33 = 4;
    v6 = (*(*a2 + 16))(a2);
    v29 = v7 + v6;
    cnprint::CNPrinter::Print(&v34, &v33, "t,%.3lf, Raven parameters not configured.", v8, v9, v10, v11, v12, SLOBYTE(v29));
    return result;
  }

  v4 = *(a2 + 104);
  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    v5 = 264;
LABEL_8:
    result = *(v3 + v5);
    v14 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v14;
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a3 + 88) = *(a2 + 88);
    *(a3 + 72) = v17;
    *(a3 + 56) = v16;
    *(a3 + 40) = v15;
    v18 = *(a2 + 24);
    *(a3 + 104) = *(a2 + 8);
    *(a3 + 120) = v18;
    v19 = *(a2 + 40);
    v20 = *(a2 + 56);
    v21 = *(a2 + 72);
    *(a3 + 184) = *(a2 + 88);
    *(a3 + 168) = v21;
    *(a3 + 152) = v20;
    *(a3 + 136) = v19;
    *(a3 + 37) = 0;
    *(a3 + 38) = 0;
    *(a3 + 36) = 0;
    *(a3 + 39) = result;
    *(a3 + 40) = 0;
    *(a3 + 41) = 0;
    *(a3 + 42) = result;
    *(a3 + 43) = 0;
    *(a3 + 44) = result;
    *(a3 + 280) = 1;
    return result;
  }

  v32 = 12;
  v31 = 4;
  v22 = (*(*a2 + 16))(a2);
  v30 = v23 + v22;
  cnprint::CNPrinter::Print(&v32, &v31, "t,%.3lf, ZUPT not filled, moving state is not frozen or not moving.", v24, v25, v26, v27, v28, SLOBYTE(v30));
  return result;
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::VelocityEvent *a2)
{
  v77[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1)
  {
    if (*(this + 58) != 1 || *(a2 + 280) == 0)
    {
      v5 = 0;
    }

    else
    {
      v65 = 0x100000003;
      v64 = xmmword_1D0E7DCC0;
      v63 = &unk_1F4CDEB28;
      v66 = &v67;
      v67 = *(a2 + 18);
      v68 = *(a2 + 38);
      v56 = 0x300000003;
      v55 = xmmword_1D0E76C10;
      v57 = v58;
      v7 = *(a2 + 41);
      v8 = *(a2 + 42);
      v58[0] = *(a2 + 312);
      *(&v6 + 1) = *(&v58[0] + 1);
      *&v6 = v7;
      v58[1] = v6;
      v9 = *(a2 + 344);
      v59 = v8;
      v60 = v9;
      v61 = v7;
      v62 = v9;
      v10 = *(a2 + 13);
      v11 = *(a2 + 14);
      *&v53 = v10;
      *(&v53 + 1) = v11;
      v54 = &unk_1F4CD5DD0;
      sub_1D0BA002C(v50, 28);
      v50[0] = &unk_1F4CEB778;
      v52 = v53;
      if ((v55 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v73 = 0x100000003;
      v69 = &unk_1F4CDEB28;
      v17 = v75;
      v74 = v75;
      v70 = v55 | 0x100000000;
      v71 = v55;
      v72 = v55;
      if (v55 > 3)
      {
        v18 = &v75[v55];
        bzero(v75, 16 * ((v55 - 1) >> 1));
        *(v18 - 2) = 0;
        *(v18 - 1) = 0;
      }

      else if (v55)
      {
        bzero(v75, 8 * v55);
      }

      if (*(this + 8560))
      {
        if (*(this + 3624) == 174)
        {
          LOWORD(v77[0]) = 2;
          v76 = 2;
          v45 = v11 + v10;
          cnprint::CNPrinter::Print(v77, &v76, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v12, v13, v14, v15, v16, SLOBYTE(v45));
        }

        else if (*(this + 8561) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
          {
            LOWORD(v77[0]) = 2;
            v76 = 1;
            v47 = v11 + v10;
            cnprint::CNPrinter::Print(v77, &v76, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v24, v25, v26, v27, v28, SLOBYTE(v47));
          }
        }

        else
        {
          v29 = sub_1D0B7C8AC(&v53, this + 1071);
          if (!v29)
          {
            v77[0] = 0;
            v77[1] = 0;
            sub_1D0C4CDF0();
          }

          if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
          {
            LOWORD(v77[0]) = 2;
            v76 = 1;
            v48 = *(&v53 + 1) + v53;
            v49 = *(this + 1072) + *(this + 1071);
            cnprint::CNPrinter::Print(v77, &v76, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v30, v31, v32, v33, v34, SLOBYTE(v48));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
      {
        LOWORD(v77[0]) = 2;
        v76 = 1;
        v46 = v11 + v10;
        cnprint::CNPrinter::Print(v77, &v76, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v19, v20, v21, v22, v23, SLOBYTE(v46));
      }

      LOWORD(v77[0]) = 12;
      v76 = 4;
      v69 = (*(*a2 + 16))(a2);
      v70 = v35;
      v36 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v69, "Could not add measurement - velocity");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v42) = v36;
      }

      else
      {
        v42 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v77, &v76, "%s", v37, v38, v39, v40, v41, v42);
      v5 = 0xFFFFFFFFLL;
      v50[0] = &unk_1F4CE4300;
      if (v51 < 0)
      {
        operator delete(v50[2]);
      }
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1D0C4CD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C4CF00(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_1D0C5663C();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1D0C3994C(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_1D0C4D030(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_1D0C4CF00(a1, a2 - v2);
  }
}

void sub_1D0C4D2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C4D3A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BAF858(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEE8D0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0x7FF8000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0x7FF8000000000000;
  result = raven::AltitudeChangeChecker::HandleEvent(*(v8 + 1848), v10, v11);
  if (!result)
  {
    sub_1D0C4D060();
  }

  return result;
}

void sub_1D0C4D480(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0C4C01C(v23, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenEstimator::HandlePositionContextStateEvent((v8 + 288), v23);
  if (v9 && cnprint::CNPrinter::GetLogLevel(v9) <= 1)
  {
    v28 = 12;
    v27 = 1;
    v26[0] = (*(v23[0] + 16))(v23);
    v26[1] = v10;
    (*(v23[0] + 24))(v24, v23);
    if (v25 >= 0)
    {
      v16 = v24;
    }

    else
    {
      v16 = v24[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v26, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v22) = v8 - 16;
    }

    else
    {
      v22 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v28, &v27, "%s", v17, v18, v19, v20, v21, v22);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_1D0C4D5AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::AltitudeChangeChecker::HandleEvent(raven::AltitudeChangeChecker *this, const raven::AltitudeChangeEvent *a2, raven::AltitudeChangeEvent *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v54[0]) = 12;
    LOBYTE(v70) = 4;
    v35 = (*(*a2 + 16))(a2, a2, a3);
    v50 = v36 + v35;
    cnprint::CNPrinter::Print(v54, &v70, "t,%.3lf,AltitudeChangeChecker, not configured", v37, v38, v39, v40, v41, SLOBYTE(v50));
LABEL_27:
    result = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  if (*(*(this + 2) + 56) == 9)
  {
    goto LABEL_27;
  }

  v5 = *(a2 + 25);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  v6 = *(a2 + 26);
  v7 = v6 < 0 || ((v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v7 && (v6 - 1) > 0xFFFFFFFFFFFFELL)
  {
    goto LABEL_27;
  }

  v54[0] = (*(*a2 + 16))(a2);
  v54[1] = v10;
  v13 = CNTimeSpan::operator-(v54, a2 + 13, v11, v12);
  v15 = v14 + v13;
  v16 = (COERCE__INT64(fabs(v15)) - 0x10000000000000) >> 53;
  v17 = v15 < 0.0 || v16 > 0x3FE;
  if (v17 && (*&v15 - 1) > 0xFFFFFFFFFFFFELL)
  {
    goto LABEL_27;
  }

  *(a3 + 8) = *(a2 + 8);
  v19 = *(a2 + 24);
  v20 = *(a2 + 40);
  v21 = *(a2 + 56);
  *(a3 + 72) = *(a2 + 72);
  *(a3 + 56) = v21;
  *(a3 + 40) = v20;
  *(a3 + 24) = v19;
  v22 = *(a2 + 88);
  v23 = *(a2 + 104);
  v24 = *(a2 + 120);
  *(a3 + 136) = *(a2 + 136);
  *(a3 + 120) = v24;
  *(a3 + 104) = v23;
  *(a3 + 88) = v22;
  v25 = *(a2 + 152);
  v26 = *(a2 + 168);
  v27 = *(a2 + 184);
  *(a3 + 200) = *(a2 + 200);
  *(a3 + 184) = v27;
  *(a3 + 168) = v26;
  *(a3 + 152) = v25;
  if (*(this + 9) != 1)
  {
    goto LABEL_30;
  }

  v28 = *(a2 + 26);
  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0E7F5F1);
  if (!result)
  {
    goto LABEL_28;
  }

  if (*(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F5F1) + 1544) != 1)
  {
    goto LABEL_30;
  }

  v81 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F5F1) + 92);
  v82 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F5F1)[186];
  v79 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F5F1) + 97);
  v80 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F5F1)[196];
  v77[0] = 0;
  v77[1] = 0;
  v78 = 0.0;
  v71 = 0;
  v74 = 0x300000003;
  v72 = &unk_1F4CD5DD0;
  v73 = xmmword_1D0E76C10;
  v75 = &v76;
  v70 = &unk_1F4CD5D50;
  if (cnnavigation::ECEFToENU(&v79, 1, 0, &v81, 1, v77, &v70))
  {
LABEL_30:
    result = 0;
    goto LABEL_28;
  }

  v30 = v78;
  v67 = 0x300000003;
  v66 = xmmword_1D0E76C10;
  v65 = &unk_1F4CD5DD0;
  v68 = &v69;
  v31 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F5F1);
  v32 = sub_1D0C4DF40((v31 + 146), &v65);
  if ((v33 & 1) == 0)
  {
    LOWORD(v54[0]) = 12;
    LOBYTE(v60) = 2;
    v43 = (*(*a2 + 16))(a2, v32);
    v51 = v44 + v43;
    cnprint::CNPrinter::Print(v54, &v60, "t,%.3lf,WARNING: Altitude change checker, difference with current solution not checked, can't get velocity covariance", v45, v46, v47, v48, v49, SLOBYTE(v51));
    goto LABEL_30;
  }

  v62 = 0x300000003;
  v61 = xmmword_1D0E76C10;
  v60 = &unk_1F4CD5DD0;
  v63 = &v64;
  if (v71 == 1)
  {
    sub_1D0B894B0(&v60, &v72);
  }

  v57 = 0x300000003;
  v56 = xmmword_1D0E7F310;
  v55 = &unk_1F4CD5DD0;
  v58 = &v59;
  sub_1D0C4DE2C(&v60, 2, ":", v54);
  sub_1D0B894B0(&v55, v54);
  sub_1D0C1B688(&v55, &v65, v53);
  sub_1D0C1B708(&v55, v52);
  sub_1D0C1B688(v53, v52, v54);
  v34 = sqrt(*v54[4]);
  result = (((fabs(vabdd_f64(v5 / v15, v30) / sqrt(v28 / v15 * (v28 / v15) + v34 * v34)) > *(this + 3)) | ~*(this + 8)) << 31 >> 31);
LABEL_28:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0C4DB5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0C4C01C(v24, a3, a3, a4, a5, a6, a7, a8);
  v9 = raven::RavenEstimator::HandlePositionContextStateEvent((v8 + 288), v24);
  if (v10)
  {
    v29 = 12;
    v28 = 2;
    v27[0] = (*(v24[0] + 16))(v24, v9);
    v27[1] = v11;
    (*(v24[0] + 24))(v25, v24);
    if (v26 >= 0)
    {
      v17 = v25;
    }

    else
    {
      v17 = v25[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v27, "Failed to handle event - %s.", v12, v13, v14, v15, v16, v17);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v23) = v8 - 16;
    }

    else
    {
      v23 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v29, &v28, "%s", v18, v19, v20, v21, v22, v23);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }
}

void sub_1D0C4DC7C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C4DC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x300000001;
  *(a1 + 8) = xmmword_1D0E7F310;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CDF1E8;
  *(a1 + 64) = a2;
  *(a1 + 96) = 0x100000001;
  *(a1 + 72) = &unk_1F4CDF158;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *(a1 + 80) = v7;
  *(a1 + 104) = a1 + 112;
  *(a1 + 144) = 0x100000003;
  *(a1 + 120) = &unk_1F4CDEAA0;
  *(a1 + 128) = xmmword_1D0E7DCC0;
  *(a1 + 152) = a1 + 160;
  sub_1D0B9F5D4(a1 + 72, a3);
  sub_1D0B9F5D4(a1 + 120, a4);
  v8 = *(a1 + 88);
  v9 = *(a1 + 136);
  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v9 * v8;
  *(a1 + 20) = v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a2 + 20);
    v13 = *(a2 + 32);
    do
    {
      if (v8)
      {
        v14 = *(a1 + 104);
        v15 = *(*(a1 + 152) + 4 * v11) * v12;
        v16 = *(a1 + 32);
        v17 = v10;
        v18 = v8;
        do
        {
          v19 = *v14++;
          *(v16 + 8 * v17++) = *(v13 + 8 * (v19 + v15));
          --v18;
        }

        while (v18);
      }

      ++v11;
      v10 += v8;
    }

    while (v11 != v9);
  }

  return a1;
}

uint64_t sub_1D0C4DE2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 != 58 || a3[1])
  {
    __assert_rtn("operator()", "cnmatrix.h", 992, "strcmp(c, :) == 0");
  }

  v18 = 0x100000001;
  v16 = &unk_1F4CDF158;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v17 = v4;
  v19 = &v20;
  v20 = a2;
  v5 = *(a1 + 12);
  v13 = 0x100000003;
  v8 = &unk_1F4CDEAA0;
  v9 = v5;
  v10 = 1;
  v11 = v5;
  v12 = v5;
  v14 = v15;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v15[i] = i;
    }
  }

  return sub_1D0C4DC98(a4, a1, &v16, &v8);
}

double sub_1D0C4DF40(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 376) == 1)
  {
    if (*(a2 + 8) == 3 && *(a2 + 12) == 3)
    {
      v3 = *(a2 + 20);
    }

    else
    {
      *(a2 + 8) = xmmword_1D0E76C10;
      v3 = 3;
    }

    v4 = *(a2 + 32);
    *v4 = *(a1 + 408);
    v5 = &v4[v3];
    *v5 = *(a1 + 416);
    v6 = &v4[2 * v3];
    *v6 = *(a1 + 424);
    v4[1] = *(a1 + 416);
    v5[1] = *(a1 + 432);
    v4[(2 * v3) | 1] = *(a1 + 440);
    v4[2] = *(a1 + 424);
    v5[2] = *(a1 + 440);
    result = *(a1 + 448);
    v6[2] = result;
  }

  return result;
}

void *sub_1D0C4DFE4(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = (result + 3);
      do
      {
        v4 = *(result + 3);
        v5 = *(result + 1);
        result = v2;
        if (v4 < v5)
        {
          v6 = *v2;
          v7 = v3;
          do
          {
            v8 = v7;
            v9 = *(v7 - 2);
            v7 -= 2;
            v10 = *(v8 - 4);
            *(v8 - 1) = *(v8 - 3);
            *v8 = v9;
          }

          while (v4 < v10);
          *(v7 - 1) = v6;
          *v7 = v4;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

void *sub_1D0C4E048(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1D0C3994C(result, a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0C4E0E8(const void **a1, void *a2)
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
      sub_1D0C5663C();
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
      sub_1D0C3994C(a1, v12);
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

double raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(uint64_t a1, double **a2)
{
  v5[0] = 0;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0.0;
  }

  do
  {
    sub_1D0B8954C(v5, v2++, 1.0);
  }

  while (v2 != v3);
  return *&v7[4];
}

double raven::RavenDeviceAttitudeActiveObject::UpdateSensorStaticNoise(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    v2 = *(a2 + 16);
    v3 = *(a1 + 288);
    v2.f64[1] = *(a2 + 32);
    __asm { FMOV            V3.2D, #3.0 }

    v9 = vmlaq_f64(vnegq_f64(v3), _Q3, v2);
    v10 = vdupq_n_s64(0x3FE3333333333333uLL);
    *(a1 + 288) = vmlaq_f64(v3, v10, v9);
    *(a1 + 304) = *(a1 + 304) + -(*(a1 + 304) - *(a2 + 48) * 3.0) * 0.6;
    v11 = *(a2 + 64);
    v11.f64[1] = *(a2 + 80);
    *(a1 + 6696) = vmlaq_f64(*(a1 + 6696), v10, vmlaq_f64(vnegq_f64(*(a1 + 6696)), _Q3, v11));
    result = *(a1 + 6712) + -(*(a1 + 6712) - *(a2 + 96) * 3.0) * 0.6;
    *(a1 + 6712) = result;
  }

  return result;
}

double sub_1D0C4E2D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000003;
  *a3 = &unk_1F4CDEB28;
  *(a3 + 8) = xmmword_1D0E7DCC0;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0BA5A78(a1, a2, a3);
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v6 == 5)
            {
              if (v7 == 1)
              {
                goto LABEL_63;
              }
            }

            else if (v6 == 6 && (TagFallback & 7) == 0)
            {
              v9 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_67;
            }

            goto LABEL_42;
          }

          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v17 = *(a2 + 2);
              goto LABEL_77;
            }

            goto LABEL_42;
          }

          if (v6 != 8 || v7 != 5)
          {
            goto LABEL_42;
          }

LABEL_85:
          v28[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v28) & 1) == 0)
          {
            return 0;
          }

          *(this + 12) = v28[0];
          *(this + 14) |= 0x80u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 != 3)
        {
          if (v6 == 4 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_53;
          }

          goto LABEL_42;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(a2 + 1);
        v13 = *(a2 + 2);
LABEL_38:
        v28[0] = 0;
        if (v15 >= v13 || (v16 = *v15, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
          if (!result)
          {
            return result;
          }

          v16 = v28[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v16 <= 2)
        {
          *(this + 14) |= 4u;
          *(this + 6) = v16;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v20 < v10 && *v20 == 32)
        {
          v11 = v20 + 1;
          *(a2 + 1) = v11;
LABEL_53:
          v28[0] = 0;
          if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
            if (!result)
            {
              return result;
            }

            v21 = v28[0];
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v21 <= 3)
          {
            *(this + 14) |= 8u;
            *(this + 7) = v21;
          }

          v22 = *(a2 + 1);
          if (v22 < *(a2 + 2) && *v22 == 41)
          {
            *(a2 + 1) = v22 + 1;
LABEL_63:
            *v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v28) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = *v28;
            *(this + 14) |= 0x10u;
            v23 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v23 < v8 && *v23 == 48)
            {
              v9 = v23 + 1;
              *(a2 + 1) = v9;
LABEL_67:
              v28[0] = 0;
              if (v9 >= v8 || (v24 = *v9, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
                if (!result)
                {
                  return result;
                }

                v24 = v28[0];
              }

              else
              {
                *(a2 + 1) = v9 + 1;
              }

              if (v24 <= 3)
              {
                *(this + 14) |= 0x20u;
                *(this + 10) = v24;
              }

              v25 = *(a2 + 1);
              v17 = *(a2 + 2);
              if (v25 < v17 && *v25 == 56)
              {
                v18 = v25 + 1;
                *(a2 + 1) = v18;
LABEL_77:
                v28[0] = 0;
                if (v18 >= v17 || (v26 = *v18, (v26 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = v28[0];
                  v27 = *(a2 + 1);
                  v17 = *(a2 + 2);
                }

                else
                {
                  v27 = v18 + 1;
                  *(a2 + 1) = v27;
                }

                *(this + 44) = v26 != 0;
                *(this + 14) |= 0x40u;
                if (v27 < v17 && *v27 == 69)
                {
                  *(a2 + 1) = v27 + 1;
                  goto LABEL_85;
                }
              }
            }
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_42;
      }

      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v28) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v28;
      *(this + 14) |= 1u;
      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_30:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v28) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v28;
        *(this + 14) |= 2u;
        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v14 < v13 && *v14 == 24)
        {
          v15 = v14 + 1;
          *(a2 + 1) = v15;
          goto LABEL_38;
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_30;
    }

LABEL_42:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

void CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::~OutdoorUpdate(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this)
{
  *this = &unk_1F4CDBDF0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::~OutdoorUpdate(this);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0C4E87C(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0C4E8C4(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v4;
  }

  *(a1 + 80) = *(a2 + 3);
  *(a1 + 88) = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(a1 + 152) = a2[6];
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  *(a1 + 216) = a2[10];
  *(a1 + 200) = v10;
  *(a1 + 184) = v9;
  *(a1 + 168) = v8;
  v11 = a2[11];
  v12 = a2[12];
  v13 = a2[14];
  *(a1 + 264) = a2[13];
  *(a1 + 280) = v13;
  *(a1 + 248) = v12;
  *(a1 + 232) = v11;
  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a2 + 271) < 0)
  {
    sub_1D0BC39B4((a1 + 304), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v14 = *(a2 + 248);
    *(a1 + 320) = *(a2 + 33);
    *(a1 + 304) = v14;
  }

  *(a1 + 328) = *(a2 + 34);
  v15 = *(a2 + 280);
  v16 = *(a2 + 312);
  *(a1 + 352) = *(a2 + 296);
  *(a1 + 368) = v16;
  *(a1 + 336) = v15;
  v17 = *(a2 + 328);
  v18 = *(a2 + 344);
  v19 = *(a2 + 376);
  *(a1 + 416) = *(a2 + 360);
  *(a1 + 432) = v19;
  *(a1 + 384) = v17;
  *(a1 + 400) = v18;
  v20 = *(a2 + 392);
  v21 = *(a2 + 408);
  v22 = *(a2 + 440);
  *(a1 + 480) = *(a2 + 424);
  *(a1 + 496) = v22;
  *(a1 + 448) = v20;
  *(a1 + 464) = v21;
  sub_1D0BA002C(a1, 17);
  *a1 = &unk_1F4CEC288;
  return a1;
}

void sub_1D0C4EA20(_Unwind_Exception *exception_object)
{
  *(v1 + 296) = &unk_1F4CD5F70;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnnavigation::GNSSDopplerShift(void *a1, const cnnavigation::GNSSUTCParameters *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, int a8, int8x16_t a9, int8x16_t a10, double a11, double *a12, unsigned __int8 a13, uint64_t a14)
{
  if ((a9.i64[0] < 0 || ((a9.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (a9.i64[0] - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v76 = v17;
  v77 = v16;
  v78 = v14;
  v79 = v15;
  v29 = 0;
  while ((*(a3 + v29) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v29 += 8;
    if (v29 == 24)
    {
      for (i = 0; i != 3; ++i)
      {
        if ((*&a4[i] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          return 0xFFFFFFFFLL;
        }
      }

      result = 0xFFFFFFFFLL;
      if ((a10.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        return result;
      }

      v62 = a9;
      v75 = 0uLL;
      a9.i64[0] = a10.i64[0];
      *v32.i64 = CNTimeSpan::SetTimeSpan(&v75, 0, a9, a10);
      v74[0] = CNTimeSpan::operator-(a1, &v75, v32, v33);
      v74[1] = v34;
      v73 = 0.0;
      v72 = 0.0;
      v71 = 0u;
      v70 = 0u;
      if (a8)
      {
        v36 = v62;
        if (a8 != 1)
        {
          return 0xFFFFFFFFLL;
        }

        v37 = 2;
        if (a13)
        {
LABEL_19:
          result = cnnavigation::GNSSTimeOfFlight(v74, a2, a3, a5, v37, a6, 1, a7, v36, v35, &v73, 1u, &v70);
          if (result)
          {
            return result;
          }

          v69 = 0.0;
          memset(v68, 0, sizeof(v68));
          v66 = 0u;
          v67 = 0u;
          result = cnnavigation::GNSSTimeOfFlightRate(v74, a2, a3, a4, a5, v37, a6, 1, v62.n128_f64[0], v38, a7, &v69, 1, &v66);
LABEL_27:
          if (!result)
          {
            v42 = v69;
            v65 = 0.0;
            *v39.i64 = v73;
            v63[0] = 0;
            v63[1] = 0;
            *v43.i64 = CNTimeSpan::SetTimeSpan(v63, 0, v39, v40);
            v64[0] = CNTimeSpan::operator-(v74, v63, v43, v44);
            v64[1] = v45;
            result = (*(*a5 + 136))(a5, v64, a2, &v65, a13, &v75, v62);
            if (!result)
            {
              v46 = v65;
              v47 = 1.0 - a11 - v42;
              v48 = a11 + v42 * (1.0 - a11);
              v49 = 1.0 - v47 * v65;
              v50 = v47 * v65 - v48 / v49;
              *a12 = v50 * v62.n128_f64[0];
              if (a13)
              {
                v51 = 1.0 - v48 / (v49 * v49);
                v52 = (v42 + -1.0) / v49;
                v53 = (a11 + -1.0) / v49;
                v54 = v66.f64[0];
                v55 = v47 * (v75.f64[0] * (1.0 - *&v70)) - v46 * v66.f64[0];
                v56 = -v75.f64[0];
                v57 = v68[0].f64[0];
                v58 = v47 * -(v75.f64[0] * v72) - v46 * v68[0].f64[0];
                v59 = v68[1].f64[1];
                v60 = -(v46 * v68[1].f64[1]);
                v61 = v50 + v62.n128_f64[0] * (v53 * v66.f64[1] + v51 * (v47 * (v75.f64[1] - v75.f64[0] * *(&v70 + 1)) - v46 * v66.f64[1]));
                *a14 = (v53 * v66.f64[0] + v51 * v55) * v62.n128_f64[0];
                *(a14 + 8) = v61;
                *(a14 + 16) = vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v67, v53), vmlsq_lane_f64(vmulq_n_f64(vmulq_n_f64(v71, v56), v47), v67, v46, 0), v51), v62.n128_f64[0]);
                *(a14 + 32) = (v53 * v57 + v51 * v58) * v62.n128_f64[0];
                *(a14 + 40) = vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(v68 + 8), v53), vmulq_n_f64(*(v68 + 8), -v46), v51), v62.n128_f64[0]);
                *(a14 + 56) = (v53 * v59 + v51 * v60) * v62.n128_f64[0];
                *(a14 + 64) = (v51 * -v55 - v53 * v54) * v62.n128_f64[0];
                *(a14 + 72) = (v52 - v51 * v46) * v62.n128_f64[0];
              }
            }
          }

          return result;
        }
      }

      else
      {
        v37 = 1;
        v36 = v62;
        if (a13)
        {
          goto LABEL_19;
        }
      }

      result = cnnavigation::GNSSTimeOfFlight(v74, a2, a3, a5, v37, a6, 1, a7, v36, v35, &v73, 0, &v75);
      if (result)
      {
        return result;
      }

      v69 = 0.0;
      memset(v68, 0, sizeof(v68));
      v66 = 0u;
      v67 = 0u;
      result = cnnavigation::GNSSTimeOfFlightRate(v74, a2, a3, a4, a5, v37, a6, 1, v62.n128_f64[0], v41, a7, &v69, 0, &v75);
      goto LABEL_27;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t cnnavigation::GNSSTimeOfFlightRate(void *a1, const cnnavigation::GNSSUTCParameters *a2, uint64_t a3, double *a4, uint64_t a5, int a6, uint64_t *a7, int a8, double a9, int8x16_t a10, uint64_t *a11, double *a12, char a13, float64x2_t *a14)
{
  v211 = *MEMORY[0x1E69E9840];
  if ((a9 < 0.0 || ((*&a9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&a9 - 1) > 0xFFFFFFFFFFFFELL)
  {
LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  for (i = 0; i != 24; i += 8)
  {
    if ((*(a3 + i) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }
  }

  v21 = *a3;
  _Q2 = *(a3 + 8);
  v209 = *a3;
  v210 = _Q2;
  _D9 = _Q2.f64[1];
  __asm { FMLA            D0, D9, V2.D[1] }

  *a10.i64 = sqrt(_D0);
  if (*a10.i64 < 6341752.3)
  {
    goto LABEL_12;
  }

  v178 = a10;
  v180 = _Q2;
  v194 = 0.0;
  v193 = 0.0;
  v191 = 0u;
  v192 = 0u;
  result = cnnavigation::GNSSTimeOfFlight(a1, a2, a3, a5, a6, a7, a8, a11, *&a9, a10, &v194, 1u, &v191);
  if (!result)
  {
    v38 = *&v191;
    v39 = v192;
    v40 = v193;
    v37.i64[0] = a4[2];
    *a12 = *&v191 + *&v192 * *a4 + *(&v192 + 1) * a4[1] + v193 * *v37.i64;
    if (a13)
    {
      v41 = *(&v191 + 1);
      *v36.i64 = v194;
      v196 = 0uLL;
      v173 = v36;
      *v42.i64 = CNTimeSpan::SetTimeSpan(&v196, 0, v36, v37);
      *&v195[0].f64[0] = CNTimeSpan::operator-(a1, &v196, v42, v43);
      v195[0].f64[1] = v44;
      result = (*(*a5 + 56))(a5, v195, a2, &v188, v187, v186);
      if (result)
      {
        goto LABEL_13;
      }

      v45 = __sincos_stret(*v173.i64 * 0.0000729211515);
      v46 = v45.__sinval * v189 + v45.__cosval * v188;
      v47 = v45.__cosval * v189 - v45.__sinval * v188;
      v208[0] = v46;
      v208[1] = v47;
      v208[2] = v190;
      _Q2.f64[0] = v47;
      _Q2.f64[1] = v190;
      _Q17 = vsubq_f64(_Q2, v180);
      *&v50 = *&vmulq_f64(_Q17, _Q17);
      _D20 = _Q17.f64[1];
      __asm { FMLA            D2, D20, V17.D[1] }

      v52 = sqrt(_Q2.f64[0]);
      if (fabs(v52) > 0.000000015)
      {
        v169 = v189;
        v53 = sqrt(v47 * v47 + v46 * v46 + v190 * v190);
        v155 = *v187;
        v156 = *&v187[1];
        v154 = *a12;
        v158 = *a4;
        v159 = a4[1];
        v160 = a4[2];
        v161 = *&v187[2];
        v163 = *v186;
        v164 = *&v186[1];
        v157 = *&v186[2];
        v54 = (*v178.i64 / v52 - (v180.f64[0] * (v47 / v52) + v21 * (v46 / v52) + _D9 * (v190 / v52))) / v52;
        v196 = 0uLL;
        v162 = v41;
        v168 = v188;
        v166 = _Q17;
        v167 = v50;
        *&v165 = v52;
        v151 = _Q17.f64[1];
        v153 = v46 - v21;
        v148 = v40;
        if (v54 >= 0.0)
        {
          if (v54 <= 1.0)
          {
            v56 = *(a3 + 8) + v54 * _Q17.f64[0];
            v170 = *a3 + v54 * (v46 - v21);
            v196.f64[0] = v170;
            v182 = v56;
            v196.f64[1] = v56;
            v55 = *(a3 + 16) + v54 * _Q17.f64[1];
          }

          else
          {
            v196.f64[0] = v45.__sinval * v189 + v45.__cosval * v188;
            v196.f64[1] = v45.__cosval * v189 - v45.__sinval * v188;
            v182 = v196.f64[1];
            v170 = v196.f64[0];
            v55 = v190;
          }
        }

        else
        {
          v196.f64[0] = v21;
          v196.f64[1] = v180.f64[0];
          v182 = v180.f64[0];
          v170 = v21;
          v55 = _D9;
        }

        v197.f64[0] = v55;
        if (v53 <= *v178.i64)
        {
          v57 = v21;
        }

        else
        {
          v57 = v46;
        }

        if (v53 <= *v178.i64)
        {
          v58 = v180.f64[0];
        }

        else
        {
          v58 = v47;
        }

        if (v53 <= *v178.i64)
        {
          v59 = _D9;
        }

        else
        {
          v59 = v190;
        }

        v206.f64[0] = v57;
        v206.f64[1] = v58;
        v207 = v59;
        v204 = 0;
        v203 = 0;
        v201 = 0.0;
        v200 = 0.0;
        v202 = 0.0;
        v149 = v47;
        v60 = v53;
        result = cnnavigation::ECEFToLLA(&v196, 1, &v203, 0, v195);
        if (result)
        {
          goto LABEL_13;
        }

        v143 = v57;
        v145 = v55;
        v147 = v60;
        v205 = 0;
        result = cnnavigation::LLAToECEF(&v203, 1, &v200, 0, v195);
        if (result)
        {
          goto LABEL_13;
        }

        v61 = v200;
        v62 = v201;
        v63 = v202;
        result = cnnavigation::ECEFToLLA(&v206, 1, &v203, 0, v195);
        if (result)
        {
          goto LABEL_13;
        }

        v205 = 0;
        result = cnnavigation::LLAToECEF(&v203, 1, &v200, 0, v195);
        if (result)
        {
          goto LABEL_13;
        }

        v140 = v21 / *v178.i64;
        v64 = vdivq_f64(v180, vdupq_lane_s64(v178.i64[0], 0));
        v142 = v64;
        v181 = v147 - *v178.i64;
        v65 = sqrt(v182 * v182 + v170 * v170 + v145 * v145);
        v183 = v65 - sqrt(v62 * v62 + v61 * v61 + v63 * v63);
        v66 = sqrt(v58 * v58 + v143 * v143 + v59 * v59) - sqrt(v201 * v201 + v200 * v200 + v202 * v202);
        v200 = 0.0;
        v67 = 0uLL;
        memset(v195, 0, 64);
        v171 = 0.0;
        v68 = 0.0;
        v69 = 0.0;
        v70 = 0uLL;
        if (a6)
        {
          v69 = 0.0;
          if (v183 < 350000.0)
          {
            v69 = 0.0;
            if (v66 > 350000.0)
            {
              v71 = v65 < v147;
              if (v65 >= *v178.i64)
              {
                v71 = 0;
              }

              result = 0xFFFFFFFFLL;
              if (v147 < *v178.i64)
              {
                goto LABEL_13;
              }

              if (v71)
              {
                goto LABEL_13;
              }

              *v64.i64 = *v173.i64 * ((350000.0 - v183) / v181);
              v206 = 0uLL;
              *v72.i64 = CNTimeSpan::SetTimeSpan(&v206, 0, v64, v173);
              *&v196.f64[0] = CNTimeSpan::operator-(a1, &v206, v72, v73);
              v196.f64[1] = v74;
              v75 = cnnavigation::TAITime::ToGPSTime(&v196, a2);
              result = (*(*a7 + 24))(a7, v75, &v209, v208, &v200, v195, v76, a9);
              if (result)
              {
                goto LABEL_13;
              }

              v77 = 0.0;
              if (a6 == 2)
              {
                v77 = -1.0;
              }

              if (a6 == 1)
              {
                v69 = 1.0;
              }

              else
              {
                v69 = v77;
              }

              v78 = -(350000.0 - v183) / (v181 * v181);
              v68 = v195[1].f64[0] + v195[0].f64[0] * (*v173.i64 * (v140 * v78));
              v70 = vmlaq_n_f64(*(&v195[1] + 8), vmulq_n_f64(vmulq_n_f64(v142, v78), *v173.i64), v195[0].f64[0]);
              v67 = 0uLL;
            }
          }
        }

        v144 = v70;
        v146 = v68;
        v174 = v69;
        v185 = 0;
        v199 = 0;
        v197 = v67;
        v198 = v67;
        v176 = 0u;
        v196 = v67;
        if (a8 && v183 < 8500.0)
        {
          v175 = 0.0;
          if (v66 > 8500.0)
          {
            v79 = v65 < v147;
            v80.i64[1] = v178.i64[1];
            if (v65 >= *v178.i64)
            {
              v79 = 0;
            }

            result = 0xFFFFFFFFLL;
            if (v147 >= *v178.i64 && !v79)
            {
              v81 = 8500.0 - v183;
              *v80.i64 = (8500.0 - v183) / v181;
              v184 = v194;
              *v80.i64 = *v80.i64 * v194;
              v204 = 0;
              v203 = 0;
              *v82.i64 = CNTimeSpan::SetTimeSpan(&v203, 0, v80, *&v194);
              *&v206.f64[0] = CNTimeSpan::operator-(a1, &v203, v82, v83);
              v206.f64[1] = v84;
              v85 = cnnavigation::TAITime::ToGPSTime(&v206, a2);
              result = (*(*a11 + 24))(a11, v85, &v209, v208, &v185, &v196, v86);
              if (!result)
              {
                v87 = 0.0;
                if (a8 == 1)
                {
                  v87 = 1.0;
                }

                v171 = v87;
                v88 = -v81 / (v181 * v181);
                v175 = v196.f64[1] + v196.f64[0] * (v140 * v88 * v184);
                v176 = vmlaq_n_f64(v197, vmulq_n_f64(vmulq_n_f64(v142, v88), v184), v196.f64[0]);
                goto LABEL_64;
              }
            }

            goto LABEL_13;
          }
        }

        else
        {
          v175 = 0.0;
        }

LABEL_64:
        v179 = v45.__cosval * 0.0000729211515 * -0.0000729211515 * v154;
        v177 = v45.__sinval * 0.0000729211515 * v154;
        v89 = v149 * 0.0000729211515;
        v150 = v45.__sinval * 0.0000729211515 * 0.0000729211515;
        v90 = *&v165 * (*&v165 * *&v165);
        v91 = v89 - v45.__cosval * v155;
        v92 = (v169 * -v45.__sinval - v45.__cosval * v168) * 0.0000729211515 + v45.__sinval * v155 - v45.__cosval * v156;
        v93 = v151;
        v94 = -(v153 * v166.f64[0]) / v90;
        v95 = v91 - v45.__sinval * v156;
        v96 = v45.__sinval * v156 + v45.__cosval * v155;
        v97 = (v93 * v93 + v167) / v90;
        v98 = -(v153 * v151) / v90;
        v139 = v45.__cosval * v156 + -v45.__sinval * v155 + v92 * v38;
        v141 = v96 + v95 * v38;
        v99 = v96 + v95 * v154;
        v172 = v97;
        v100 = v94 * v92 + v97 * v95 - v98 * v161;
        v101 = v153 / *&v165 * ((1.0 - v154) * -(v45.__cosval * v163) + v45.__sinval * -0.0000729211515 * v155 * (1.0 - v154) + v179 * v168 + v177 * v155 + v45.__cosval * 0.0000729211515 * v156 * (1.0 - v154) + v164 * -v45.__sinval * (1.0 - v154) + -(v150 * v154) * v169 + -(v45.__cosval * 0.0000729211515 * v154) * v156);
        v102 = v162 * v101 + v162 * v100 * v99;
        v103 = *&v39 * v101 + -(v97 - v100 * *&v39) * v99;
        v104 = *(&v39 + 1) * v101 + -(v94 - v100 * *(&v39 + 1)) * v99;
        v105 = v148 * v101 + -(v98 - v100 * v148) * v99;
        v106 = (v93 * v93 + v153 * v153) / v90;
        v107 = -(v166.f64[0] * v151) / v90;
        v108 = v45.__cosval * v156 + -v45.__sinval * v155 + v92 * v154;
        v109 = v106 * ((v169 * -v45.__sinval - v45.__cosval * v168) * 0.0000729211515 + v45.__sinval * v155 - v45.__cosval * v156) + v94 * v95 - v107 * v161;
        v152 = v102 + v162 * v109 * v108;
        v138 = v103 + -(v94 - v109 * *&v39) * v108;
        _Q24 = vdivq_f64(v166, vdupq_lane_s64(v165, 0));
        v111 = (v153 * v153 + v167) / v90;
        v112 = ((1.0 - v154) * (v45.__sinval * v163) + v45.__cosval * -0.0000729211515 * v155 * (1.0 - v154) + v150 * v154 * v168 + v45.__cosval * 0.0000729211515 * v154 * v155 + -(v45.__sinval * 0.0000729211515 * v156) * (1.0 - v154) + -(v45.__cosval * v164) * (1.0 - v154) + v179 * v169 + v177 * v156) * _Q24.f64[0];
        v113 = v152 + v112 * v162;
        v114 = v138 + v112 * *&v39;
        v115 = v104 + -(v106 - v109 * *(&v39 + 1)) * v108 + v112 * *(&v39 + 1);
        v116 = v105 + -(v107 - v109 * v148) * v108 + v112 * v148;
        v117 = v161 - v161 * v154;
        v118 = (v169 * -v45.__sinval - v45.__cosval * v168) * 0.0000729211515 + v45.__sinval * v155 - v45.__cosval * v156;
        v119 = v107 * v118 + v98 * v95 - v111 * v161;
        _D27 = v161;
        v121 = -(v157 * (1.0 - v154));
        _D21 = (1.0 - v154) * v157 + v121 * v38;
        __asm { FMLA            D28, D21, V24.D[1] }

        v124 = vmuld_lane_f64(v121, _Q24, 1);
        v125 = v113 + v162 * v119 * v117 + v124 * v162;
        v126 = v114 + -(v98 - v119 * *&v39) * v117 + v124 * *&v39;
        v127 = v115 + -(v107 - v119 * *(&v39 + 1)) * v117 + v124 * *(&v39 + 1);
        v128 = v116 + -(v111 - v119 * v148) * v117 + v124 * v148;
        v129 = v161 - v38 * v161;
        v130 = _D28 + (-(v94 * v139) - v172 * v141 - v98 * v129) * v158;
        v131 = -(v94 * v118) - v172 * v95 + v98 * v161;
        v132 = v127 + (v94 + v131 * *(&v39 + 1)) * v158;
        v133 = v130 + (-(v106 * v139) - v94 * v141 - v107 * v129) * v159;
        v134 = -(v106 * v118) - v94 * v95 + v107 * v161;
        v135 = -(v107 * v118) - v98 * v95 + v111 * v161;
        __asm { FMLS            D2, D27, V24.D[1] }

        *&v137 = _D2 / -299792458.0 + 1.0;
        a14->f64[0] = (v133 + (-(v107 * v139) - v98 * v141 - v111 * (v161 - v38 * v161)) * v160) / 299792458.0 / *&v137;
        a14->f64[1] = (v125 + v162 * v131 * v158 + v162 * v134 * v159 + v162 * v135 * v160) / 299792458.0 / *&v137;
        a14[1].f64[0] = (v126 + (v172 + v131 * *&v39) * v158 + (v94 + v134 * *&v39) * v159 + (v98 + v135 * *&v39) * v160) / 299792458.0 / *&v137;
        a14[1].f64[1] = (v132 + (v106 + v134 * *(&v39 + 1)) * v159 + (v107 + v135 * *(&v39 + 1)) * v160) / 299792458.0 / *&v137;
        a14[2].f64[0] = (v128 + (v98 + v131 * v148) * v158 + (v107 + v134 * v148) * v159 + (v111 + v135 * v148) * v160) / 299792458.0 / *&v137;
        a14[2].f64[1] = (v153 / *&v165 / -299792458.0 + v174 * v146 + v171 * v175) / *&v137;
        a14[3] = vdivq_f64(vmlaq_n_f64(vmlaq_n_f64(vdivq_f64(_Q24, vdupq_n_s64(0xC1B1DE784A000000)), v144, v174), v176, v171), vdupq_lane_s64(v137, 0));
        goto LABEL_21;
      }

      a14[2] = 0u;
      a14[3] = 0u;
      *a14 = 0u;
      a14[1] = 0u;
    }

LABEL_21:
    result = 0;
  }

LABEL_13:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0C4FC14(uint64_t a1, double *a2, uint64_t a3, double *a4, uint64_t a5, double *a6)
{
  if (!*(a1 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_1D0B7C8AC(a2, (a1 + 40)))
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_1D0B7CF88(a2, (a1 + 56)))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = CNTimeSpan::operator-(a2, (a1 + 72), v10, v11);
  v14 = v13 + v12;
  if (fabs(v14) > 2592000.0)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = 0;
  v16 = 0;
  *a4 = 0.0;
  v17 = a1 + 184;
  v18 = 1.0;
  v19 = 0.0;
  *a6 = 0.0;
  a6[1] = 0.0;
  v20 = 32;
  v21 = 0.0;
  do
  {
    v22 = v15;
    *a4 = *a4 + *(v17 + 8 * v15) * v15 * v21;
    v23 = *a6 + *(v17 + 8 * v15) * (v15 * v16) * v19;
    *a6 = v23;
    v19 = v21;
    v21 = v18;
    v18 = v14 * v18;
    ++v15;
    v16 = v22;
    v20 -= 8;
  }

  while (v20);
  if ((*a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0C4FD4C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 8);
  if ((v8 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v41 = 0x100000003;
  v36 = &unk_1F4CDEB28;
  v11 = v43;
  v42 = v43;
  v37 = v8;
  v38 = 1;
  v39 = v8;
  v40 = v8;
  if (v8 > 3)
  {
    v12 = &v43[v8];
    bzero(v43, 16 * ((v8 - 1) >> 1));
    *(v12 - 2) = 0;
    *(v12 - 1) = 0;
  }

  else if (v8)
  {
    bzero(v43, 8 * v8);
  }

  if (*a1)
  {
    if (*(a1 + 5936) == 174)
    {
      LOWORD(v45[0]) = 2;
      v44 = 2;
      v31 = a2[1] + *a2;
      cnprint::CNPrinter::Print(v45, &v44, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", a4, a5, a6, a7, a8, SLOBYTE(v31));
    }

    else if (*(a1 + 1) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
      {
        LOWORD(v45[0]) = 2;
        v44 = 1;
        v33 = a2[1] + *a2;
        cnprint::CNPrinter::Print(v45, &v44, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v18, v19, v20, v21, v22, SLOBYTE(v33));
      }
    }

    else
    {
      v23 = sub_1D0B7C8AC(a2, (a1 + 8));
      if (!v23)
      {
        v45[0] = 0;
        v45[1] = 0;
        sub_1D0C501C8();
      }

      if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
      {
        LOWORD(v45[0]) = 2;
        v44 = 1;
        v34 = a2[1] + *a2;
        v35 = *(a1 + 16) + *(a1 + 8);
        cnprint::CNPrinter::Print(v45, &v44, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v24, v25, v26, v27, v28, SLOBYTE(v34));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
  {
    LOWORD(v45[0]) = 2;
    v44 = 1;
    v32 = a2[1] + *a2;
    cnprint::CNPrinter::Print(v45, &v44, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v13, v14, v15, v16, v17, SLOBYTE(v32));
  }

  result = 0xFFFFFFFFLL;
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0C5019C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C503A8(_Unwind_Exception *a1)
{
  sub_1D0D840AC(v1 + 56);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0C50400(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0C501C8(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0C50400;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEC2A0;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEC2A0);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssDopplerArgs_RavenConvergence>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0C504EC(uint64_t a1)
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

uint64_t sub_1D0C50598(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEC2A0, 0)) == 0))
  {
    LOWORD(v76) = 12;
    LOBYTE(v84) = 4;
    v40 = MEMORY[0x30] + MEMORY[0x28];
LABEL_21:
    cnprint::CNPrinter::Print(&v76, &v84, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v40));
    return 0xFFFFFFFFLL;
  }

  v16 = v14;
  v18 = *(a1 + 8);
  v17 = *(a1 + 12);
  if (v18 <= v17)
  {
    v19 = *(a1 + 12);
  }

  else
  {
    v19 = *(a1 + 8);
  }

  if (!v18 || !v17 || v19 != 8 || ((v21 = *(a2 + 8), v20 = *(a2 + 12), v21 <= v20) ? (v22 = *(a2 + 12)) : (v22 = *(a2 + 8)), !v21 || !v20 || v22 != 1))
  {
    LOWORD(v76) = 12;
    LOBYTE(v84) = 4;
    v40 = *(v14 + 6) + *(v14 + 5);
    goto LABEL_21;
  }

  if ((v14[128] & 1) == 0)
  {
    LOWORD(v76) = 12;
    LOBYTE(v84) = 4;
    v42 = *(v14 + 6) + *(v14 + 5);
    cnprint::CNPrinter::Print(&v76, &v84, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v42));
    LOWORD(v76) = 12;
    LOBYTE(v84) = 4;
    v43 = *(v16 + 12) + *(v16 + 11);
    sub_1D0BCFAB8((v16 + 56));
    cnprint::CNPrinter::Print(&v76, &v84, "t,%.3lf,%s,TAI time invalid", v44, v45, v46, v47, v48, SLOBYTE(v43));
    return 0xFFFFFFFFLL;
  }

  v23 = *(a1 + 32);
  v94 = *v23;
  v95 = *(v23 + 2);
  v92 = *(v23 + 24);
  v15.i64[0] = *(v23 + 6);
  v93 = *(v23 + 5);
  v91 = &unk_1F4CD5F20;
  v89 = 0.0;
  v90 = &unk_1F4CD5BC8;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = *(v14 + 136);
  v24.i64[1] = *(&v83 + 1);
  v84 = 0u;
  v24.i64[0] = *(v14 + 24);
  v25 = *(v23 + 7);
  *v15.i64 = *v15.i64 / 1000000.0;
  LOWORD(v76) = 0;
  v77 = 0u;
  v78 = 0u;
  LODWORD(v79) = 0;
  *(&v79 + 1) = 0;
  *&v80 = 0;
  DWORD2(v80) = 0;
  if (cnnavigation::GNSSDopplerShift(&v83, &v76, &v94, &v92, (v14 + 296), &v91, &v90, 1, v24, v15, v25 / 1000000.0, &v89, 1u, &v84))
  {
    LOWORD(v76) = 12;
    LOBYTE(v83) = 4;
    v31 = *(v16 + 6) + *(v16 + 5);
    cnprint::CNPrinter::Print(&v76, &v83, "time,%.3lf,h-function failure on line %d: %s() %s", v26, v27, v28, v29, v30, SLOBYTE(v31));
    if (cnprint::CNPrinter::GetLogLevel(v32) <= 1)
    {
      LOWORD(v76) = 12;
      LOBYTE(v83) = 1;
      v34 = *(v16 + 11);
      v33 = *(v16 + 12);
      sub_1D0BCFAB8((v16 + 56));
      v68 = v33 + v34;
      cnprint::CNPrinter::Print(&v76, &v83, "t,%.3lf,%s,GNSSDopplerShift returned != 0", v35, v36, v37, v38, v39, SLOBYTE(v68));
    }

    return 0xFFFFFFFFLL;
  }

  v49 = 299792458.0 / *(v16 + 24);
  v50 = -(v49 * v89);
  *&v51 = 0x100000001;
  *(&v51 + 1) = 0x100000001;
  *(a4 + 8) = v51;
  **(a4 + 32) = v50 + **(a2 + 32);
  *&v78 = 0x800000001;
  v76 = &unk_1F4CEC348;
  *(&v78 + 1) = &v79;
  v77 = xmmword_1D0E9CBE0;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  sub_1D0B894B0(a5, &v76);
  v52 = *(&v85 + 1);
  v53 = *(a5 + 32);
  *v53 = -(*&v85 * v49);
  v54 = *(a5 + 20);
  v53[v54] = -(v52 * v49);
  v55 = *(&v86 + 1);
  v53[2 * v54] = -(*&v86 * v49);
  v53[3 * v54] = -(v55 * v49);
  v56 = *(&v87 + 1);
  v53[4 * v54] = -(*&v87 * v49);
  v53[5 * v54] = -(v56 * v49);
  v57 = *(&v88 + 1);
  v53[6 * v54] = -(*&v88 * v49) / 1000000.0;
  v53[7 * v54] = -(v57 * v49) / 1000000.0;
  *&v78 = 0x100000001;
  v76 = &unk_1F4CDF418;
  *&v58 = 0x100000001;
  *(&v58 + 1) = 0x100000001;
  v77 = v58;
  *(&v78 + 1) = &v79;
  *&v79 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v76);
  if (!cnprint::CNPrinter::GetLogLevel(v59))
  {
    LOWORD(v76) = 12;
    LOBYTE(v83) = 0;
    v61 = *(v16 + 11);
    v60 = *(v16 + 12);
    sub_1D0BCFAB8((v16 + 56));
    v62 = *(a1 + 32);
    v75 = *(v16 + 50);
    v74 = v16[277];
    v72 = *(v62 + 56) * 299.792458;
    v73 = *(v16 + 64);
    v70 = *(v16 + 26) - v50;
    v71 = *(v62 + 48) * 299.792458;
    v69 = v60 + v61;
    cnprint::CNPrinter::Print(&v76, &v83, "t,%.3lf,%s,using Doppler,predicted,%.3lf,obs,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,clockDriftMps,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v63, v64, v65, v66, v67, SLOBYTE(v69));
  }

  return 0;
}

void sub_1D0C50B00(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  sub_1D0B751F4(&v16, v4);
  sub_1D0B751F4(&v15, v5);
  sub_1D0B751F4(&v14, "Error in function ");
  sub_1D0D26F24(&v16, "%1%", "long double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  sub_1D0D2898C(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  sub_1D0D26F24(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::logic_error::logic_error(&v11, &v14);
  v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
  sub_1D0D272E8(&v11);
}

void sub_1D0C50C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::logic_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::logic_error::~logic_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0C50CB8(void *a1, __int128 *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = *a2;
  v69 = 0x100000006;
  v68 = xmmword_1D0E84530;
  v10 = v71;
  v67 = &unk_1F4CE0BF8;
  v70 = v71;
  if (!a4)
  {
    v60 = 0x100000006;
    v19 = *(a3 + 32);
    v62 = *(v19 + 168);
    v20.i64[1] = *(&v62 + 1);
    v21 = *(v19 + 192);
    v22 = *(v19 + 208);
    v23 = v21 * *(v19 + 200);
    v63 = *(v19 + 184);
    v64 = v23;
    v24 = *(v19 + 216);
    v59 = xmmword_1D0E84530;
    v58 = &unk_1F4CE0BF8;
    v61 = &v62;
    v65 = v21 * v22;
    v66 = v21 * v24;
    v20.i64[0] = 0x600000006;
    v55 = 0x600000006;
    v54 = xmmword_1D0E7F320;
    v53 = &unk_1F4CDF278;
    v56 = v57;
    v50 = 0x600000006;
    v49 = xmmword_1D0E7F320;
    v48 = &unk_1F4CDF278;
    v51 = v52;
    v25 = CNTimeSpan::operator-(a1, &v72, v20, xmmword_1D0E7F320);
    v36 = v26 + v25;
    v43 = 0x100000006;
    v41 = &unk_1F4CE0BF8;
    v44 = &v45;
    v42 = xmmword_1D0E84530;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    if (!sub_1D0BFCF2C(&v58, &v41, &v36, &v67, &v53, &v48, v27, v28))
    {
      v10 = v70;
      goto LABEL_11;
    }

    return 0xFFFFFFFFLL;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      __assert_rtn("IntegrateUserStateEstimate", "ravenpntestimatorhelper.h", 1714, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
    }

    goto LABEL_11;
  }

  v60 = 0x100000003;
  v59 = xmmword_1D0E7DCC0;
  v58 = &unk_1F4CDEB28;
  v61 = &v62;
  v43 = 0x100000003;
  v41 = &unk_1F4CDEB28;
  v42 = xmmword_1D0E7DCC0;
  v44 = &v45;
  v45 = 0uLL;
  *&v46 = 0;
  v38 = 0x100000003;
  v36 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v37 = xmmword_1D0E7DCC0;
  v39 = &v40;
  v55 = 0x300000003;
  v54 = xmmword_1D0E76C10;
  v53 = &unk_1F4CD5DD0;
  v56 = v57;
  v50 = 0x300000003;
  v49 = xmmword_1D0E76C10;
  v48 = &unk_1F4CD5DD0;
  v51 = v52;
  v11 = *(a3 + 32);
  v62 = *(v11 + 168);
  v63 = *(v11 + 184);
  if (sub_1D0D865A4(&v58, &v41, 0, &v36, &v53, &v48, a7, a8))
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v39;
  v15 = v70;
  *v70 = *v39;
  v15[1] = v14[1];
  v15[2] = v14[2];
  v16 = *(a3 + 32);
  v17 = v61;
  *v61 = v16[24] * v16[25];
  v17[1] = v16[24] * v16[26];
  v17[2] = v16[24] * v16[27];
  if (sub_1D0D865A4(&v58, &v41, 0, &v36, &v53, &v48, v12, v13))
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v39;
  v10 = v70;
  v70[3] = *v39;
  v10[4] = v18[1];
  v10[5] = v18[2];
LABEL_11:
  *(a5 + 8) = xmmword_1D0E84420;
  v30 = *(a5 + 32);
  *v30 = *v10;
  *(v30 + 8) = v10[1];
  *(v30 + 16) = v10[2];
  v31 = *(v10 + 3);
  v32 = *(v10 + 5);
  v33 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v31, v31).f64[1]) + v31.f64[0] * v31.f64[0] + v32 * v32);
  *(v30 + 24) = v33;
  result = 0;
  if (fabs(v33) <= 0.000000015)
  {
    v35 = *(a3 + 32);
    *(v30 + 32) = *(v35 + 200);
    *(v30 + 40) = *(v35 + 208);
    v34 = *(v35 + 216);
  }

  else
  {
    *(v30 + 32) = vdivq_f64(v31, vdupq_lane_s64(*&v33, 0));
    v34 = v32 / v33;
  }

  *(v30 + 48) = v34;
  return result;
}

uint64_t *sub_1D0C5112C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(a4 + 16 * *a2);
  if (v6)
  {
    v7 = *(v6 + 328);
    v8 = v7 == *(v6 + 336) || *(v7 + 189) != 1;
  }

  else
  {
    v8 = -1;
  }

  v9 = *(a4 + 16 * *result);
  if (v9)
  {
    v10 = *(v9 + 328);
    v11 = v10 == *(v9 + 336) || *(v10 + 189) != 1;
  }

  else
  {
    v11 = -1;
  }

  v12 = v8 <= v11;
  if (v8 == v11)
  {
    if (v6)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_23;
    }

    v12 = *(v6 + 264) <= *(v9 + 264);
  }

  if (!v12)
  {
    v14 = *(a4 + 16 * *a3);
    if (v14)
    {
      v15 = *(v14 + 328);
      if (v15 != *(v14 + 336))
      {
        v16 = *(v15 + 189) != 1;
        if (v6)
        {
          goto LABEL_21;
        }

LABEL_44:
        v18 = -1;
        goto LABEL_48;
      }

      v16 = 1;
      if (!v6)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v16 = -1;
      if (!v6)
      {
        goto LABEL_44;
      }
    }

LABEL_21:
    v17 = *(v6 + 328);
    v18 = v17 == *(v6 + 336) || *(v17 + 189) != 1;
LABEL_48:
    v30 = v16 <= v18;
    if (v16 == v18)
    {
      if (v6)
      {
        v31 = v14 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        goto LABEL_56;
      }

      v30 = *(v14 + 264) <= *(v6 + 264);
    }

    if (!v30)
    {
      *result = *a3;
LABEL_78:
      *a3 = v5;
      return result;
    }

LABEL_56:
    *result = v4;
    *a2 = v5;
    v32 = *(a4 + 16 * *a3);
    if (v32)
    {
      v33 = *(v32 + 328);
      if (v33 != *(v32 + 336))
      {
        v34 = *(v33 + 189) != 1;
        if (v9)
        {
          goto LABEL_59;
        }

LABEL_63:
        v36 = -1;
LABEL_72:
        v40 = v34 <= v36;
        if (v34 != v36)
        {
LABEL_76:
          if (v40)
          {
            return result;
          }

          *a2 = *a3;
          goto LABEL_78;
        }

        if (v9 && v32)
        {
          v40 = *(v32 + 264) <= *(v9 + 264);
          goto LABEL_76;
        }

        return result;
      }

      v34 = 1;
      if (!v9)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v34 = -1;
      if (!v9)
      {
        goto LABEL_63;
      }
    }

LABEL_59:
    v35 = *(v9 + 328);
    v36 = v35 == *(v9 + 336) || *(v35 + 189) != 1;
    goto LABEL_72;
  }

LABEL_23:
  v19 = *(a4 + 16 * *a3);
  if (!v19)
  {
    v21 = -1;
    if (!v6)
    {
      goto LABEL_29;
    }

LABEL_26:
    v22 = *(v6 + 328);
    v23 = v22 == *(v6 + 336) || *(v22 + 189) != 1;
    goto LABEL_33;
  }

  v20 = *(v19 + 328);
  if (v20 == *(v19 + 336))
  {
    v21 = 1;
    if (!v6)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v21 = *(v20 + 189) != 1;
  if (v6)
  {
    goto LABEL_26;
  }

LABEL_29:
  v23 = -1;
LABEL_33:
  v24 = v21 <= v23;
  if (v21 == v23)
  {
    if (v6)
    {
      v25 = v19 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return result;
    }

    v24 = *(v19 + 264) <= *(v6 + 264);
  }

  if (v24)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v4;
  v26 = *result;
  v27 = *(a4 + 16 * *a2);
  if (v27)
  {
    v28 = *(v27 + 328);
    v29 = v28 == *(v27 + 336) || *(v28 + 189) != 1;
  }

  else
  {
    v29 = -1;
  }

  v37 = *(a4 + 16 * *result);
  if (v37)
  {
    v38 = *(v37 + 328);
    v39 = v38 == *(v37 + 336) || *(v38 + 189) != 1;
  }

  else
  {
    v39 = -1;
  }

  v41 = v29 <= v39;
  if (v29 == v39)
  {
    if (!v27 || !v37)
    {
      return result;
    }

    v41 = *(v27 + 264) <= *(v37 + 264);
  }

  if (!v41)
  {
    *result = *a2;
    *a2 = v26;
  }

  return result;
}

cnprint::CNLogFormatter *cnprint::CNLogFormatter::FormatWarning(cnprint::CNLogFormatter *this, char *a2, ...)
{
  va_start(va, a2);
  va_copy(v11, va);
  if (*(this + 47) >= 0)
  {
    v4 = *(this + 47);
  }

  else
  {
    v4 = *(this + 4);
  }

  v5 = __p;
  sub_1D0BBB710(__p, v4 + 10);
  if (v10 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(this + 47) >= 0)
    {
      v6 = this + 24;
    }

    else
    {
      v6 = *(this + 3);
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, " WARNING: ");
  v8[0] = 0;
  v8[1] = 0;
  cnprint::CNLogFormatter::FormatCore(this, __p, v8, 0, a2, v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1D0C5150C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C51528(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = v1;
  if (*(a1 + 24) == 1)
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return sub_1D0BF06AC(a1 + 8, (a1 + 8), &v4, &v3);
}

uint64_t sub_1D0C51578@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  if (a2 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *(a3 + 24) = 0x100000003;
  *a3 = &unk_1F4CDEB28;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 0.0);
}

float64x2_t *cnrotation::Inv@<X0>(float64x2_t *this@<X0>, float64x2_t *a2@<X8>)
{
  v3 = *this;
  v5 = this[1].f64[0];
  v4 = this[1].f64[1];
  v6 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v3, v3).f64[1]) + v3.f64[0] * v3.f64[0] + v5 * v5 + v4 * v4);
  if (fabs(v6) >= 2.22044605e-16)
  {
    v7 = vdivq_f64(vnegq_f64(v3), vdupq_lane_s64(*&v6, 0));
    v9 = -v5 / v6;
    v8 = v4 / v6;
  }

  else
  {
    v7 = 0uLL;
    v8 = 1.0;
    v9 = 0.0;
  }

  *a2 = v7;
  a2[1].f64[0] = v9;
  a2[1].f64[1] = v8;
  return this;
}

double sub_1D0C51690(uint64_t a1, uint64_t a2)
{
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDEB28;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 3)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 1)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0C51778@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 8) = xmmword_1D0E76C10;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

uint64_t sub_1D0C517F8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
  }

  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 32) = a2 + 40;
  *(a2 + 8) = a1;
  *(a2 + 12) = a1;
  *(a2 + 16) = a1 * a1;
  *(a2 + 20) = a1;

  return sub_1D0BBBC00(a2, 0.0);
}

uint64_t sub_1D0C51878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 8);
  v11 = *(a1 + 12);
  if (v11 >= v12)
  {
    v13 = *(a1 + 8);
  }

  else
  {
    v13 = *(a1 + 12);
  }

  v14 = *(a3 + 28) * *(a3 + 24);
  sub_1D0B894B0(a2, a1);
  v15 = *(a2 + 8);
  v16 = *(a2 + 12);
  v17 = *(a2 + 32);
  v18 = *(a5 + 32);
  v19 = *(a4 + 32);
  v20 = *(a6 + 32);
  v21 = *(a3 + 32);
  v50 = 65;
  v49 = 65;
  v47 = v16;
  v48 = v15;
  v22 = dgesvd_NEWLAPACK();
  v23 = **(a3 + 32);
  if (v14 < v23 && cnprint::CNPrinter::GetLogLevel(v22) <= 1)
  {
    LOWORD(v48) = 4;
    LOBYTE(v47) = 1;
    cnprint::CNPrinter::Print(&v48, &v47, "Warning: Svd optimal workspace size %u is greater than provided workspace size %u; performance may suffer.", v24, v25, v26, v27, v28, v23);
  }

  v29 = *(a3 + 24);
  v30 = *(a3 + 28);
  *(a3 + 8) = v29;
  *(a3 + 12) = v30;
  *(a3 + 16) = v30 * v29;
  *(a3 + 20) = v29;
  *(a4 + 8) = v12;
  *(a4 + 12) = v12;
  *(a4 + 16) = v12 * v12;
  *(a4 + 20) = v12;
  *(a5 + 8) = v12;
  *(a5 + 12) = v11;
  *(a5 + 16) = v11 * v12;
  *(a5 + 20) = v12;
  if (v13)
  {
    v31 = 0;
    v32 = *(a5 + 32);
    v33 = v32;
    do
    {
      v34 = *v33++;
      v32[v31] = v34;
      v31 += v12 + 1;
      --v13;
    }

    while (v13);
  }

  if (v11)
  {
    v35 = 0;
    v36 = 0;
    v37 = *(a5 + 32);
    v38 = v12 - 1;
    v39 = 1;
    do
    {
      if (v12 >= v36)
      {
        v40 = v36;
      }

      else
      {
        v40 = v12;
      }

      for (i = v35; v40; --v40)
      {
        *(v37 + 8 * i++) = 0;
      }

      ++v36;
      v42 = v39;
      v43 = v38;
      if (v36 < v12)
      {
        do
        {
          *(v37 + 8 * v42++) = 0;
          --v43;
        }

        while (v43);
      }

      v35 += v12;
      --v38;
      v39 += v12 + 1;
    }

    while (v36 != v11);
  }

  *(a6 + 8) = v11;
  *(a6 + 12) = v11;
  *(a6 + 16) = v11 * v11;
  *(a6 + 20) = v11;
  result = (*(*a6 + 24))(a6);
  v46 = *(a6 + 8);
  v45 = *(a6 + 12);
  *(a6 + 8) = v45;
  *(a6 + 12) = v46;
  *(a6 + 16) = v46 * v45;
  *(a6 + 20) = v45;
  return result;
}

uint64_t sub_1D0C51AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v17 = 0x300000003;
  v12 = &unk_1F4CD5DD0;
  v13 = v4;
  v14 = v5;
  v15 = v5 * v4;
  v16 = v4;
  v18 = &v19;
  v9 = 0x1000001E6;
  v7 = &unk_1F4CDFFB0;
  v8 = xmmword_1D0E83DC0;
  v10 = &v11;
  return sub_1D0C51878(a1, &v12, &v7, a2, a3, a4);
}

void sub_1D0C51BB4(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0C51C04(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 8 * v10);
            v13 = v10;
            do
            {
              v13 = (v13 * (v4 + v2 - v6)) % v8;
              v14 = *(v9 + 8 * v13);
              *(v9 + 8 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

uint64_t sub_1D0C51CC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*a2 != 58 || a2[1])
  {
    __assert_rtn("operator()", "cnmatrix.h", 891, "strcmp(r, :) == 0");
  }

  v4 = *(a1 + 8);
  v18 = 0x100000003;
  v13 = &unk_1F4CDEAA0;
  v14 = v4;
  v15 = 1;
  v16 = v4;
  v17 = v4;
  v19 = v20;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v20[i] = i;
    }
  }

  v10 = 0x100000001;
  v8 = &unk_1F4CDF158;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  v9 = v6;
  v11 = &v12;
  v12 = a3;
  return sub_1D0C51DC8(a4, a1, &v13, &v8);
}

uint64_t sub_1D0C51DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x100000003;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CDF1A0;
  *(a1 + 64) = a2;
  *(a1 + 96) = 0x100000003;
  *(a1 + 72) = &unk_1F4CDEAA0;
  *(a1 + 80) = xmmword_1D0E7DCC0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 152) = 0x100000001;
  *(a1 + 128) = &unk_1F4CDF158;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *(a1 + 136) = v7;
  *(a1 + 160) = a1 + 168;
  sub_1D0B9F5D4(a1 + 72, a3);
  sub_1D0B9F5D4(a1 + 128, a4);
  v8 = *(a1 + 88);
  v9 = *(a1 + 144);
  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v9 * v8;
  *(a1 + 20) = v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a2 + 20);
    v13 = *(a2 + 32);
    do
    {
      if (v8)
      {
        v14 = *(a1 + 104);
        v15 = *(*(a1 + 160) + 4 * v11) * v12;
        v16 = *(a1 + 32);
        v17 = v10;
        v18 = v8;
        do
        {
          v19 = *v14++;
          *(v16 + 8 * v17++) = *(v13 + 8 * (v19 + v15));
          --v18;
        }

        while (v18);
      }

      ++v11;
      v10 += v8;
    }

    while (v11 != v9);
  }

  return a1;
}

double sub_1D0C51F2C(uint64_t a1, uint64_t a2, float64x2_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B8930C(a2, a1, a3);
  return result;
}

double sub_1D0C51FB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0x100000003;
  *a2 = &unk_1F4CDEB28;
  *(a2 + 8) = xmmword_1D0E7DCC0;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

double sub_1D0C52038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 12;
  v10 = 4;
  v8 = *(a1 + 8) + *a1;
  cnprint::CNPrinter::Print(&v11, &v10, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v8));
  return result;
}

std::chrono::steady_clock::time_point *cnconsole::ProgressBar::ProgressBar(std::chrono::steady_clock::time_point *this)
{
  this[4].__d_.__rep_ = 0;
  this[1].__d_.__rep_ = 0;
  this[2].__d_.__rep_ = 0;
  this->__d_.__rep_ = 0;
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  this->__d_.__rep_ = v2.__d_.__rep_;
  this[1].__d_.__rep_ = v2.__d_.__rep_;
  this[2].__d_.__rep_ = v2.__d_.__rep_;
  return this;
}

{
  this[4].__d_.__rep_ = 0;
  this[1].__d_.__rep_ = 0;
  this[2].__d_.__rep_ = 0;
  this->__d_.__rep_ = 0;
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  this->__d_.__rep_ = v2.__d_.__rep_;
  this[1].__d_.__rep_ = v2.__d_.__rep_;
  this[2].__d_.__rep_ = v2.__d_.__rep_;
  return this;
}

std::chrono::steady_clock::time_point *cnconsole::ProgressBar::ProgressBar(std::chrono::steady_clock::time_point *this, double *a2)
{
  this->__d_.__rep_ = 0;
  this[1].__d_.__rep_ = 0;
  this[2].__d_.__rep_ = 0;
  this[4].__d_.__rep_ = *a2;
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  this->__d_.__rep_ = v3.__d_.__rep_;
  this[1].__d_.__rep_ = v3.__d_.__rep_;
  this[2].__d_.__rep_ = v3.__d_.__rep_;
  return this;
}

{
  this->__d_.__rep_ = 0;
  this[1].__d_.__rep_ = 0;
  this[2].__d_.__rep_ = 0;
  this[4].__d_.__rep_ = *a2;
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  this->__d_.__rep_ = v3.__d_.__rep_;
  this[1].__d_.__rep_ = v3.__d_.__rep_;
  this[2].__d_.__rep_ = v3.__d_.__rep_;
  return this;
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep cnconsole::ProgressBar::Display(cnconsole::ProgressBar *this, uint64_t *a2, uint64_t *a3, char a4)
{
  result = std::chrono::steady_clock::now().__d_.__rep_;
  *(this + 1) = result;
  v9 = *(this + 4);
  if (v9 == 0.0 || (a4 & 1) != 0 || v9 > 0.0 && v9 <= ((result - *(this + 2)) / 1000000000))
  {
    *(this + 2) = result;
    sub_1D0BC2F00(v25);
    cnconsole::ProgressBar::DisplayElapsedTime(this, &__p);
    if ((v24 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v24 & 0x80u) == 0)
    {
      v11 = v24;
    }

    else
    {
      v11 = v23;
    }

    sub_1D0BCD7C4(&v26, p_p, v11);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    cnconsole::ProgressBar::DisplayPercentage(a2, a3, &__p);
    if ((v24 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v24 & 0x80u) == 0)
    {
      v13 = v24;
    }

    else
    {
      v13 = v23;
    }

    sub_1D0BCD7C4(&v26, v12, v13);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    cnconsole::ProgressBar::DisplayProgressBar(a2, a3, &__p);
    if ((v24 & 0x80u) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p;
    }

    if ((v24 & 0x80u) == 0)
    {
      v15 = v24;
    }

    else
    {
      v15 = v23;
    }

    sub_1D0BCD7C4(&v26, v14, v15);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    cnconsole::ProgressBar::DisplayBytesProcessed(a2, a3, &__p);
    if ((v24 & 0x80u) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p;
    }

    if ((v24 & 0x80u) == 0)
    {
      v17 = v24;
    }

    else
    {
      v17 = v23;
    }

    sub_1D0BCD7C4(&v26, v16, v17);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    sub_1D0C535E0(v25, &__p);
    if ((v24 & 0x80u) == 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p;
    }

    if ((v24 & 0x80u) == 0)
    {
      v19 = v24;
    }

    else
    {
      v19 = v23;
    }

    v20 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], v18, v19);
    sub_1D0BCD7C4(v20, "\n", 1);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    v25[0] = *MEMORY[0x1E69E54D8];
    v21 = *(MEMORY[0x1E69E54D8] + 72);
    *(v25 + *(v25[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v26 = v21;
    v27 = MEMORY[0x1E69E5548] + 16;
    if (v29 < 0)
    {
      operator delete(v28[7].__locale_);
    }

    v27 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v28);
    std::iostream::~basic_iostream();
    return MEMORY[0x1D387EBF0](&v30);
  }

  return result;
}

uint64_t cnconsole::ProgressBar::DisplayElapsedTime@<X0>(cnconsole::ProgressBar *this@<X0>, _BYTE *a2@<X8>)
{
  sub_1D0BC2F00(v9);
  v4 = (*(this + 1) - *this) / 1000000000;
  *(this + 3) = v4;
  *(&v12[-1].__locale_ + *(v9[0] - 24)) = 4;
  v5 = MEMORY[0x1D387E9C0](&v10, (v4 / 60));
  sub_1D0BCD7C4(v5, "m", 1);
  *(&v12[-1].__locale_ + *(v9[0] - 24)) = 3;
  v6 = MEMORY[0x1D387E9C0](&v10, (v4 % 60));
  sub_1D0BCD7C4(v6, "s", 1);
  sub_1D0C535E0(v9, a2);
  v9[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v10 = v7;
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D387EBF0](&v14);
}

void sub_1D0C52E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0C53688(va);
  _Unwind_Resume(a1);
}

uint64_t cnconsole::ProgressBar::DisplayPercentage@<X0>(const uint64_t *a1@<X1>, const uint64_t *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_1D0BC2F00(v12);
  v7 = *a1 / *a2;
  v8 = v12[0];
  *(&v15[-1].__locale_ + *(v12[0] - 24)) = 6;
  *(&v12[2] + *(v8 - 24)) = 1;
  *(&v12[1] + *(v8 - 24)) |= 4u;
  v9 = MEMORY[0x1D387E990](&v13, v7 * 100.0);
  sub_1D0BCD7C4(v9, "%", 1);
  sub_1D0C535E0(v12, a3);
  v12[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v13 = v10;
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D387EBF0](&v17);
}

void sub_1D0C53098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0C53688(va);
  _Unwind_Resume(a1);
}

uint64_t cnconsole::ProgressBar::DisplayProgressBar@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_1D0BC2F00(v23);
  v7 = ioctl(1, 0x40087468uLL, v21);
  v8 = v22;
  if (v7 == -1 || v22 - 1001 > 0xFFFFFC17)
  {
    if ((byte_1EC5FB438 & 1) == 0)
    {
      v9 = *a1;
      v10 = *a2;
      *(&v26[-1].__locale_ + *(v23[0] - 24)) = 3;
      sub_1D0BCD7C4(&v24, "[", 1);
      v11 = v9 / v10;
      v12 = (v8 - 40);
      v13 = round(v11 * v12);
      if (v13 > 0.0)
      {
        v14 = 1;
        do
        {
          sub_1D0BCD7C4(&v24, "=", 1);
          v15 = v14++;
        }

        while (v13 > v15);
      }

      v16 = v12 - v13;
      if (v16 > 0.0)
      {
        v17 = 1;
        do
        {
          sub_1D0BCD7C4(&v24, ".", 1);
          v18 = v17++;
        }

        while (v16 > v18);
      }

      sub_1D0BCD7C4(&v24, "]", 1);
    }
  }

  else
  {
    byte_1EC5FB438 = 1;
  }

  sub_1D0C535E0(v23, a3);
  v23[0] = *MEMORY[0x1E69E54D8];
  v19 = *(MEMORY[0x1E69E54D8] + 72);
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v24 = v19;
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D387EBF0](&v28);
}

void sub_1D0C53360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1D0C53688(va);
  _Unwind_Resume(a1);
}

uint64_t cnconsole::ProgressBar::DisplayBytesProcessed@<X0>(const uint64_t *a1@<X1>, const uint64_t *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_1D0BC2F00(v13);
  v7 = v13[0];
  *(&v16[-1].__locale_ + *(v13[0] - 24)) = 6;
  *(&v13[2] + *(v7 - 24)) = 1;
  *(&v13[1] + *(v7 - 24)) |= 4u;
  v8 = MEMORY[0x1D387E990](&v14, *a1 / 1000000.0);
  v9 = sub_1D0BCD7C4(v8, " / ", 3);
  v10 = MEMORY[0x1D387E990](v9, *a2 / 1000000.0);
  sub_1D0BCD7C4(v10, " MB", 3);
  sub_1D0C535E0(v13, a3);
  v13[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v11;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D387EBF0](&v18);
}

void sub_1D0C535CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0C53688(va);
  _Unwind_Resume(a1);
}

const void *sub_1D0C535E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D0BCD96C(a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t sub_1D0C53688(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1D387EBF0](a1 + 128);
  return a1;
}

void sub_1D0C53808(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1D0C53864(exception, a1);
  __cxa_throw(exception, off_1E83D7D60, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1D0C53864(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void cnconsole::filesystem::absolute(void **a1@<X0>, std::string *a2@<X8>)
{
  v40[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    sub_1D0BC39B4(&__str, *a1, a1[1]);
  }

  else
  {
    __str = *a1;
  }

  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v5 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (p_str->__r_.__value_.__s.__data_[0] != 126)
  {
LABEL_37:
    bzero(&__dst, 0x400uLL);
    if (v4 >= 0)
    {
      v24 = &__str;
    }

    else
    {
      v24 = v5;
    }

    realpath_DARWIN_EXTSN(v24, &__dst);
    sub_1D0B751F4(&__p, &__dst);
    LOWORD(v34.__r_.__value_.__l.__data_) = 0;
    LOBYTE(v40[0]) = 2;
    if (*(a1 + 23) >= 0)
    {
      LOBYTE(v30) = a1;
    }

    else
    {
      v30 = *a1;
    }

    cnprint::CNPrinter::Print(&v34, v40, "Resolved '%s' to '%s'", v25, v26, v27, v28, v29, v30);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1D0BC39B4(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v31 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      a2[1].__r_.__value_.__s.__data_[0] = 1;
      if (v31 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a2 = __p;
      a2[1].__r_.__value_.__s.__data_[0] = 1;
    }

    v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    goto LABEL_48;
  }

  cnconsole::filesystem::getUserHomeDirectory(&__dst);
  if (v39)
  {
    __p = __dst;
  }

  else
  {
    sub_1D0B751F4(&__p, &unk_1D0ED80C5);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_1D0BC39B4(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      goto LABEL_16;
    }

LABEL_29:
    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    v34.__r_.__value_.__s.__data_[0] = 4;
    cnprint::CNPrinter::Print(&__dst, &v34, "Failed to deduce user home directory", v7, v8, v9, v10, v11, v33);
    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    v34.__r_.__value_.__s.__data_[0] = 4;
    if (*(a1 + 23) >= 0)
    {
      LOBYTE(v23) = a1;
    }

    else
    {
      v23 = *a1;
    }

    cnprint::CNPrinter::Print(&__dst, &v34, "Failed to convert relative path to absolute path: %s", v18, v19, v20, v21, v22, v23);
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    v17 = 1;
    goto LABEL_33;
  }

  if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_29;
  }

  __dst = __p;
LABEL_16:
  std::string::basic_string(&v34, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v37);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v34;
  }

  else
  {
    v12 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&__dst, v12, size);
  v15 = v14->__r_.__value_.__r.__words[0];
  v40[0] = v14->__r_.__value_.__l.__size_;
  *(v40 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v15;
  __str.__r_.__value_.__l.__size_ = v40[0];
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v40 + 7);
  *(&__str.__r_.__value_.__s + 23) = v16;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v17 = 0;
LABEL_33:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((v17 & 1) == 0)
  {
    v5 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_37;
  }

LABEL_48:
  if (v4 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1D0C53BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void *cnconsole::filesystem::getUserHomeDirectory@<X0>(_BYTE *a1@<X8>)
{
  v3 = getenv("HOME");
  if (v3 || (v4 = getuid(), result = getpwuid(v4), (v3 = *(result + 6)) != 0))
  {
    result = sub_1D0B751F4(a1, v3);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  a1[24] = v6;
  return result;
}

BOOL cnconsole::filesystem::exists(const char *a1)
{
  memset(&v2, 0, sizeof(v2));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v2) == 0;
}

BOOL cnconsole::filesystem::isFileWriteable(uint64_t a1)
{
  v11[19] = *MEMORY[0x1E69E9840];
  isFileReadable = cnconsole::filesystem::isFileReadable(a1);
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  sub_1D0C5400C(&v9);
  v4 = *&v10[*(v9 - 24) + 24];
  if (!v4)
  {
    if (!std::filebuf::close())
    {
      std::ios_base::clear(&v10[*(v9 - 24) - 8], *&v10[*(v9 - 24) + 24] | 4);
    }

    if (!isFileReadable)
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      remove(v6, v5);
    }
  }

  v9 = *MEMORY[0x1E69E54D0];
  *&v10[*(v9 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1D387E8C0](v10);
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](v11);
  v7 = *MEMORY[0x1E69E9840];
  return v4 == 0;
}

void sub_1D0C53E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D0C54438(&a9, MEMORY[0x1E69E54D0]);
  MEMORY[0x1D387EBF0](v9 + 416);
  _Unwind_Resume(a1);
}

BOOL cnconsole::filesystem::isFileReadable(uint64_t *a1)
{
  v7[19] = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  sub_1D0C541CC(v5);
  v2 = *&v6[*(v5[0] - 24) + 16] == 0;
  v5[0] = *MEMORY[0x1E69E54C8];
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1D387E8C0](v6);
  std::istream::~istream();
  MEMORY[0x1D387EBF0](v7);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t *sub_1D0C5400C(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x1D387E8B0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1D0C54194(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0C541CC(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1D387E8B0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1D0C54358(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1D387EBF0](v1);
  _Unwind_Resume(a1);
}

void sub_1D0C543A8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1D0C54404(exception, a1);
  __cxa_throw(exception, off_1E83D7D68, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_1D0C54404(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t sub_1D0C54438(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1D387E8C0](a1 + 1);

  return std::ostream::~ostream();
}

double cndft::SlidingDFT::SlidingDFT(cndft::SlidingDFT *this)
{
  *this = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  return result;
}

{
  *this = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  return result;
}

uint64_t cndft::SlidingDFT::GetConfiguration(uint64_t a1, _OWORD *a2)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = *(a1 + 8);
  return result;
}

uint64_t cndft::SlidingDFT::SetConfiguration(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  if ((*a2 < 0 || ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*a2 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 8);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v19[4] = v5;
  v19[5] = v6;
  v11 = *(a2 + 12);
  result = 0xFFFFFFFFLL;
  if (v11)
  {
    if (v11 < v9 >> 1)
    {
      *a1 = 0;
      *(a1 + 8) = *a2;
      v13 = 1.0;
      v14 = 1.0 / *(a1 + 8);
      LODWORD(a5) = *(a1 + 16);
      LODWORD(v13) = *(a1 + 20);
      v15 = v13;
      v16 = *&a5;
      *(a1 + 24) = v14;
      *(a1 + 32) = v14 * v15 / v16;
      v19[0] = 0.0 / v16;
      v19[1] = v15 * 6.28318531 / v16;
      sub_1D0C547F8(v19);
      *(a1 + 40) = v17;
      *(a1 + 48) = v18;
      *a1 = 1;
      cndft::SlidingDFT::ResetDFT(a1);
      return 0;
    }
  }

  return result;
}

void cndft::SlidingDFT::ResetDFT(cndft::SlidingDFT *this)
{
  if (*this != 1)
  {
    return;
  }

  v2 = *(this + 8);
  v3 = *(this + 9);
  *(this + 12) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(this + 9);
      v2 = (*(this + 8) + 8);
      *(this + 8) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    v6 = 512;
LABEL_8:
    *(this + 11) = v6;
  }

  v7 = *(this + 14);
  v8 = *(this + 15);
  *(this + 18) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(this + 15);
      v7 = (*(this + 14) + 8);
      *(this + 14) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 128;
  }

  else
  {
    if (v9 != 2)
    {
      return;
    }

    v11 = 256;
  }

  *(this + 17) = v11;
}

double cndft::SlidingDFT::GetDFTFrequency(cndft::SlidingDFT *this)
{
  if (*this == 1)
  {
    return *(this + 4);
  }

  else
  {
    return NAN;
  }
}

double cndft::SlidingDFT::operator[](uint64_t a1, unsigned int a2)
{
  if (*a1 != 1)
  {
    return 0.0;
  }

  result = 0.0;
  if (*(a1 + 144) > a2)
  {
    v3 = *(*(a1 + 112) + (((*(a1 + 136) + a2) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 136) + a2);
    result = *v3;
    v4 = *(v3 + 8);
  }

  return result;
}

void sub_1D0C547F8(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == 0.0)
  {
    exp(v1);
    return;
  }

  if (fabs(v1) != INFINITY)
  {
    goto LABEL_12;
  }

  if (v1 < 0.0)
  {
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v2 = 1.0;
    }

    goto LABEL_12;
  }

  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
LABEL_12:
    v4 = v2;
    exp(v1);
    __sincos_stret(v4);
    return;
  }

  if (fabs(v2) != INFINITY)
  {
    v3 = *(a1 + 1);
  }
}

const void **sub_1D0C548C8(const void **result, void *a2)
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

      sub_1D0C54C1C(result, v9);
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

void *sub_1D0C549D4(void *result, void *a2)
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

      sub_1D0C54C1C(result[4], v11);
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

const void **sub_1D0C54ADC(const void **result, void *a2)
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

      sub_1D0C54C1C(result[4], v9);
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

void sub_1D0C54BE8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1D0C54C1C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void *sub_1D0C54C64(void *result, void *a2)
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

      sub_1D0C54E78(result[4], v11);
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

const void **sub_1D0C54D6C(const void **result, void *a2)
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

      sub_1D0C54E78(result[4], v9);
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

void sub_1D0C54E78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t cnestimation::PeriodicityTracker::DFTPoint::DFTPoint(uint64_t a1, double a2, long double a3, long double a4)
{
  *a1 = 0;
  v5 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 8) = v5;
  *(a1 + 24) = v5;
  if ((*&a2 > -1 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a2 - 1) < 0xFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0) && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
    v11 = hypot(a3, a4);
    *(a1 + 32) = v11;
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
      *a1 = 1;
    }
  }

  return a1;
}

double cnestimation::PeriodicityTracker::DFTPoint::DFTValue(cnestimation::PeriodicityTracker::DFTPoint *this)
{
  result = *(this + 2);
  v2 = *(this + 3);
  return result;
}

cnestimation::PeriodicityTracker *cnestimation::PeriodicityTracker::PeriodicityTracker(cnestimation::PeriodicityTracker *this)
{
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(this + 8) = v2;
  *(this + 24) = v2;
  *(this + 40) = v2;
  *(this + 14) = 0;
  *(this + 36) = 0;
  *(this + 10) = 0x7FF8000000000000;
  *(this + 22) = 0x80000000;
  *this = 0;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 47) = 0;
  cnestimation::PeriodicityTracker::Reset(this);
  return this;
}

{
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(this + 8) = v2;
  *(this + 24) = v2;
  *(this + 40) = v2;
  *(this + 14) = 0;
  *(this + 36) = 0;
  *(this + 10) = 0x7FF8000000000000;
  *(this + 22) = 0x80000000;
  *this = 0;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 47) = 0;
  cnestimation::PeriodicityTracker::Reset(this);
  return this;
}

void cnestimation::PeriodicityTracker::Reset(cnestimation::PeriodicityTracker *this)
{
  *(this + 36) = 0;
  *(this + 10) = 0x7FF8000000000000;
  *(this + 22) = 0x80000000;
  v2 = *(this + 13);
  v3 = *(this + 14);
  *(this + 17) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(this + 14);
      v2 = (*(this + 13) + 8);
      *(this + 13) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 512;
  }

  *(this + 16) = v6;
LABEL_8:
  v7 = *(this + 19);
  if (*(this + 20) != v7)
  {
    v8 = *(this + 22);
    v9 = *(this + 23);
    v10 = (v7 + 8 * (v8 / 0x1A));
    v11 = (*v10 + 152 * (v8 % 0x1A));
    v12 = *(v7 + 8 * ((v9 + v8) / 0x1A)) + 152 * ((v9 + v8) % 0x1A);
    while (v11 != v12)
    {
      cndft::SlidingDFT::ResetDFT(v11);
      v11 = (v11 + 152);
      if ((v11 - *v10) == 3952)
      {
        v13 = v10[1];
        ++v10;
        v11 = v13;
      }
    }
  }
}

uint64_t cnestimation::PeriodicityTracker::Configure(uint64_t a1, __int128 *a2)
{
  if ((*a2 < 0 || ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*a2 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 1);
  v6 = v5 < 0 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v6 && (v5 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 2);
  v9 = v8 < 0 || ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v9 && (v8 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(a2 + 3);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v11 > 0.0 && *(a2 + 2) < v11)
  {
    v14 = *(a2 + 4);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v14 > 0.0 && v14 < 1.0)
    {
      v15 = *(a2 + 5);
      v16 = (v15 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v17 = ((v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v15 >= 0)
      {
        v17 = 0;
        v16 = 0;
      }

      v18 = v15 & 0x7FFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v16 = 1;
      }

      v19 = v18 <= 0x7FF0000000000000;
      v20 = v18 == 0x7FF0000000000000 || v16;
      if (!v19)
      {
        v20 = 1;
      }

      if (((v20 | v17) & 1) == 0 && *(a2 + 12))
      {
        *a1 = 0;
        v21 = *a2;
        v22 = a2[1];
        v23 = a2[2];
        *(a1 + 56) = *(a2 + 12);
        *(a1 + 40) = v23;
        *(a1 + 24) = v22;
        *(a1 + 8) = v21;
        v24 = vcvtpd_u64_f64(*(a2 + 1) / *a2);
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        *(a1 + 92) = v25;
        v26 = *(a2 + 5) * sqrt(v25);
        *(a1 + 64) = cnstatistics::InverseNormal(0xFFFFFFFFLL, 1.0 - *(a2 + 4), v26 * 1.25331414, v26);
        v37 = *a2;
        v38 = v25;
        v27 = v37 * v25;
        v28 = *(a2 + 3);
        v29 = v27 * *(a2 + 2);
        v30 = vcvtmd_u64_f64(v29);
        v31 = vcvtpd_u64_f64(v27 * v28);
        v32 = v31 - v30;
        if (v31 < v30)
        {
LABEL_50:
          if (*(a1 + 184) == v32 + 1)
          {
            cnestimation::PeriodicityTracker::Reset(a1);
            result = 0;
            *a1 = 1;
            return result;
          }

          cnestimation::PeriodicityTracker::Reset(a1);
        }

        else
        {
          while (1)
          {
            v39 = v30;
            LOBYTE(v34[0]) = 0;
            *&v34[5] = 0u;
            memset(v35, 0, sizeof(v35));
            memset(v36, 0, sizeof(v36));
            v33 = cndft::SlidingDFT::SetConfiguration(v34, &v37, 0.0, v29, v28);
            if (v33)
            {
              cnestimation::PeriodicityTracker::Reset(a1);
            }

            else
            {
              sub_1D0C554D4((a1 + 144), v34);
            }

            sub_1D0C56540(v36);
            sub_1D0C56D94(v35);
            if (v33)
            {
              break;
            }

            if (++v30 > v31)
            {
              goto LABEL_50;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

void sub_1D0C554B8(_Unwind_Exception *a1)
{
  sub_1D0C56540((v1 + 104));
  sub_1D0C56D94((v1 + 56));
  _Unwind_Resume(a1);
}

void *sub_1D0C554D4(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 26 * ((v5 - v4) >> 3) - 1;
  }

  v7 = result[4];
  v8 = result[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x1A)
    {
      v9 = result[3];
      v10 = v9 - *result;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *result)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1D0C4E87C(v12);
    }

    result[4] = v7 - 26;
    v66 = *v4;
    result[1] = v4 + 8;
    result = sub_1D0C149C4(result, &v66);
    v4 = v3[1];
    v8 = v3[5] + v3[4];
  }

  v13 = *&v4[8 * (v8 / 0x1A)] + 152 * (v8 % 0x1A);
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  *(v13 + 48) = *(a2 + 6);
  *(v13 + 16) = v15;
  *(v13 + 32) = v16;
  *(v13 + 56) = 0u;
  *v13 = v14;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  v17 = *(a2 + 8);
  if (*(a2 + 9) != v17)
  {
    v18 = *(a2 + 11);
    v19 = (v18 >> 6) & 0x3FFFFFFFFFFFFF8;
    v20 = (v17 + v19);
    v21 = v18 & 0x1FF;
    v22 = (*(v17 + v19) + 8 * v21);
    v23 = *(a2 + 12) + v18;
    v24 = (v23 >> 6) & 0x3FFFFFFFFFFFFF8;
    if ((*(v17 + v24) + 8 * (v23 & 0x1FF)) != v22)
    {
      v25 = v23 & 0x1FF | ((v24 - v19) << 6);
      v26 = v25 - v21;
      if (v25 != v21)
      {
        if (((v26 + 1) & 0x1FF) != 0)
        {
          v27 = ((v26 + 1) >> 9) + 1;
        }

        else
        {
          v27 = (v26 + 1) >> 9;
        }

        if (v27)
        {
          v67 = v13 + 56;
          sub_1D0C54C1C(v13 + 56, v27);
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = MEMORY[0];
        v32 = v26 + (-MEMORY[0] >> 3);
        if (v32 < 1)
        {
          v34 = 511 - v32;
          LOWORD(v32) = ~(511 - v32);
          v33 = -8 * (v34 >> 9);
        }

        else
        {
          v33 = 8 * (v32 >> 9);
        }

        v35 = *v33 + 8 * (v32 & 0x1FF);
        if (v35)
        {
          do
          {
            v36 = v31 + 512;
            if (v30 == v33)
            {
              v36 = v35;
            }

            if (v28 == v36)
            {
              v36 = v28;
            }

            else
            {
              v37 = *v20;
              v38 = v28;
              do
              {
                v39 = *v22;
                v22 += 8;
                *v38++ = v39;
                if (v22 - v37 == 4096)
                {
                  v40 = v20[1];
                  ++v20;
                  v37 = v40;
                  v22 = v40;
                }
              }

              while (v38 != v36);
            }

            v29 += v36 - v28;
            if (v30 == v33)
            {
              break;
            }

            v41 = *(v30 + 8);
            v30 += 8;
            v31 = v41;
            v28 = v41;
          }

          while (v41 != v35);
          *(v13 + 96) = v29;
        }
      }
    }
  }

  *(v13 + 104) = 0uLL;
  *(v13 + 120) = 0uLL;
  *(v13 + 136) = 0uLL;
  v42 = *(a2 + 14);
  if (*(a2 + 15) != v42)
  {
    v43 = *(a2 + 17);
    v44 = (v43 >> 5) & 0x7FFFFFFFFFFFFF8;
    v45 = (v42 + v44);
    v46 = (*(v42 + v44) + 16 * v43);
    v47 = *(a2 + 18) + v43;
    v48 = (v47 >> 5) & 0x7FFFFFFFFFFFFF8;
    if ((*(v42 + v48) + 16 * v47) != v46)
    {
      v49 = *(a2 + 17);
      v50 = (*(a2 + 144) + v43) | (32 * (v48 - v44));
      v51 = v50 - v49;
      if (v50 != v49)
      {
        if (v51 == 0xFF)
        {
          v52 = (v51 + 1) >> 8;
        }

        else
        {
          v52 = ((v51 + 1) >> 8) + 1;
        }

        if (v52)
        {
          v67 = v13 + 104;
          sub_1D0C54E78(v13 + 104, v52);
        }

        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = MEMORY[0];
        v57 = v51 + (-MEMORY[0] >> 4);
        if (v57 < 1)
        {
          v59 = 255 - v57;
          LOBYTE(v57) = ~(-1 - v57);
          v58 = -8 * (v59 >> 8);
        }

        else
        {
          v58 = 8 * (v57 >> 8);
        }

        v60 = *v58 + 16 * v57;
        if (v60)
        {
          do
          {
            v61 = v56 + 256;
            if (v55 == v58)
            {
              v61 = v60;
            }

            if (v53 == v61)
            {
              v61 = v53;
            }

            else
            {
              v62 = v53;
              do
              {
                v63 = *v46++;
                *v62 = v63;
                if ((v46 - *v45) == 4096)
                {
                  v64 = v45[1];
                  ++v45;
                  v46 = v64;
                }

                ++v62;
              }

              while (v62 != v61);
              v54 = *(v13 + 144);
            }

            v54 += v61 - v53;
            *(v13 + 144) = v54;
            if (v55 == v58)
            {
              break;
            }

            v65 = *(v55 + 8);
            v55 += 8;
            v56 = v65;
            v53 = v65;
          }

          while (v65 != v60);
        }
      }
    }
  }

  ++v3[5];
  return result;
}

void sub_1D0C55E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v13);
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

BOOL cnestimation::PeriodicityTracker::IsValid(cnestimation::PeriodicityTracker *this)
{
  if (*this != 1)
  {
    return 0;
  }

  LODWORD(v1) = vcvtpd_u64_f64(*(this + 2) / *(this + 1));
  if (v1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = v1;
  }

  return *(this + 17) >= v1;
}

uint64_t cnestimation::PeriodicityTracker::InterpolateDFTPeak(cnestimation::PeriodicityTracker *this, const cnestimation::PeriodicityTracker::DFTPoint *a2, const cnestimation::PeriodicityTracker::DFTPoint *a3, const cnestimation::PeriodicityTracker::DFTPoint *a4, double *a5)
{
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v23[2] = v8;
  v23[3] = v7;
  v23[8] = v5;
  v23[9] = v6;
  if (*a2 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a3 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(a2 + 1);
  if (*(this + 1) >= v12 || v12 >= *(a3 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  v14 = -*(a2 + 3);
  v23[0] = *(a2 + 2);
  v23[1] = v14;
  v22 = *(this + 1);
  v15 = sub_1D0B90DA8(&v22, v23);
  v22 = *(a2 + 1);
  v16 = sub_1D0B90DA8(&v22, v23);
  v22 = *(a3 + 1);
  v17 = sub_1D0B90DA8(&v22, v23);
  v18 = (v15 - v17) / (v15 + v16 * 2.0 + v17);
  v19 = fabs(v18);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v19 < 2.22044605e-16)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = *(a2 + 1) + (sqrt(v18 * 8.0 * v18 + 1.0) + -1.0) / (v18 * 4.0) * 0.5 * (*(a3 + 1) - *(this + 1));
  return result;
}

double sub_1D0C56108(void *a1, double *a2)
{
  v4 = a1[4];
  if (!v4)
  {
    sub_1D0C56FA0(a1);
    v4 = a1[4];
  }

  v5 = a1[1];
  v6 = (v5 + 8 * (v4 >> 9));
  if (a1[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  result = *a2;
  *(v7 - 8) = *a2;
  v9 = a1[5] + 1;
  a1[4] = v4 - 1;
  a1[5] = v9;
  return result;
}

uint64_t cnestimation::PeriodicityTracker::IsFeatureObservedInRecentTimeHistory(cnestimation::PeriodicityTracker *this, double a2, double *a3)
{
  if (*this != 1)
  {
    return 0;
  }

  v25 = v6;
  v26 = v5;
  v27 = v3;
  v28 = v4;
  if (*(this + 73) == 1)
  {
    v8 = LOBYTE(a2);
    if (*&a2 > -1 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a2 - 1) < 0xFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v13 = vcvtpd_u64_f64(a2 / *(this + 1));
      if (v13 >= *(this + 34))
      {
        v14 = *(this + 34);
      }

      else
      {
        v14 = v13;
      }

      ObservedFeatureInRecentSamples = cnestimation::PeriodicityTracker::NumberOfSamplesToLastObservedFeatureInRecentSamples(this, v14);
      if (HIDWORD(ObservedFeatureInRecentSamples))
      {
        *a3 = -(ObservedFeatureInRecentSamples * *(this + 1));
        return 1;
      }
    }

    else
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(this);
      if (LogLevel <= 1)
      {
        v24 = 2;
        v23 = 1;
        cnprint::CNPrinter::Print(&v24, &v23, "PeriodicityTracker - invalid time interval for feature search,%.3lf", v18, v19, v20, v21, v22, v8);
      }
    }
  }

  return 0;
}

uint64_t cnestimation::PeriodicityTracker::NumberOfSamplesToLastObservedFeatureInRecentSamples(cnestimation::PeriodicityTracker *this, unsigned int a2)
{
  v2 = a2;
  v4 = *(this + 17);
  if (v4 < a2)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v36 = 2;
      v35 = 1;
      v34 = *(this + 17);
      cnprint::CNPrinter::Print(&v36, &v35, "WARNING: PeriodicityTracker search range exceeds signal length,num_samples,%u,length,%u", v5, v6, v7, v8, v9, v2);
    }

    goto LABEL_5;
  }

  if (a2 >= 3)
  {
    v14 = *(this + 16) + v4;
    v15 = *(this + 13);
    v16 = (v15 + 8 * (v14 >> 9));
    v17 = *v16 + 8 * (v14 & 0x1FF);
    if (*(this + 14) == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v19 = (v18 - *v16) >> 3;
    v20 = v19 - a2;
    if (v20 < 1)
    {
      v22 = 511 - v20;
      LOWORD(v20) = ~(511 - v20);
      v21 = &v16[-8 * (v22 >> 9)];
    }

    else
    {
      v21 = &v16[8 * (v20 >> 9)];
    }

    v23 = *v21;
    v24 = *v21 + 8 * (v20 & 0x1FF);
    v10 = *(this + 14);
    switch(v10)
    {
      case 0:
        v11 = *(this + 14);
        v12 = v11;
        return v11 | v10 | v12;
      case 2:
        if (v18 == v24)
        {
          goto LABEL_5;
        }

        v25 = v21;
        v26 = v24;
        v30 = v24;
        v31 = v21;
        while (1)
        {
          if (++v30 - v23 == 4096)
          {
            v32 = *(v31 + 1);
            v31 += 8;
            v23 = v32;
            v30 = v32;
          }

          if (v30 == v18)
          {
            break;
          }

          if (*v26 < *v30)
          {
            v25 = v31;
            v26 = v30;
          }
        }

        break;
      case 1:
        if (v18 == v24)
        {
          goto LABEL_5;
        }

        v25 = v21;
        v26 = v24;
        v27 = v24;
        v28 = v21;
        while (1)
        {
          if (++v27 - v23 == 4096)
          {
            v29 = *(v28 + 1);
            v28 += 8;
            v23 = v29;
            v27 = v29;
          }

          if (v27 == v18)
          {
            break;
          }

          if (*v27 < *v26)
          {
            v25 = v28;
            v26 = v27;
          }
        }

        break;
      default:
        v25 = v16;
        v26 = v18;
        break;
    }

    if (v26 != v24)
    {
      v33 = (v26 - *v25) >> 3;
      if (v33 + ((v25 - v21) << 6) != (v24 - *v21) >> 3)
      {
        if (v18 == v26)
        {
          LODWORD(v11) = -1;
        }

        else
        {
          v11 = v19 + ((v16 - v25) << 6) + ~v33;
          if (!v11)
          {
            v10 = 0;
            goto LABEL_6;
          }
        }

        v12 = v11 & 0xFFFFFF00;
        v10 = v11;
        v11 = 0x100000000;
        return v11 | v10 | v12;
      }
    }
  }

LABEL_5:
  v10 = 0;
  v11 = 0;
LABEL_6:
  v12 = 0;
  return v11 | v10 | v12;
}

double cnestimation::PeriodicityTracker::SignalFundamentalFrequency(cnestimation::PeriodicityTracker *this)
{
  if (*(this + 73) == 1)
  {
    return *(this + 10);
  }

  else
  {
    return NAN;
  }
}

uint64_t sub_1D0C56540(void *a1)
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
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1D0C565EC(a1);
}

uint64_t sub_1D0C565EC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

__n128 sub_1D0C56654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 32);
  v7 = *(a3 + 32);
  if (v6 >= *(a1 + 32))
  {
    if (v7 < v6)
    {
      result = *a2;
      v12 = *(a2 + 16);
      v13 = *(a2 + 32);
      v14 = *(a3 + 32);
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *(a3 + 32) = v13;
      *a3 = result;
      *(a3 + 16) = v12;
      if (*(a2 + 32) < *(a1 + 32))
      {
        result = *a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 32);
        v18 = *(a2 + 32);
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *(a2 + 32) = v17;
        *a2 = result;
        *(a2 + 16) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = *(a1 + 16);
      v9 = *(a1 + 32);
      v10 = *(a3 + 32);
      v11 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *(a3 + 32) = v9;
      *a3 = result;
      *(a3 + 16) = v8;
      goto LABEL_10;
    }

    result = *a1;
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a2 + 32);
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *(a2 + 32) = v21;
    *a2 = result;
    *(a2 + 16) = v20;
    if (*(a3 + 32) < *(a2 + 32))
    {
      result = *a2;
      v8 = *(a2 + 16);
      v9 = *(a2 + 32);
      v24 = *(a3 + 32);
      v25 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a2 + 32) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 32) < *(a3 + 32))
  {
    result = *a3;
    v26 = *(a3 + 16);
    v27 = *(a3 + 32);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v29;
    *(a3 + 32) = v28;
    *(a4 + 32) = v27;
    *a4 = result;
    *(a4 + 16) = v26;
    if (*(a3 + 32) < *(a2 + 32))
    {
      result = *a2;
      v30 = *(a2 + 16);
      v31 = *(a2 + 32);
      v32 = *(a3 + 32);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *(a3 + 32) = v31;
      *a3 = result;
      *(a3 + 16) = v30;
      if (*(a2 + 32) < *(a1 + 32))
      {
        result = *a1;
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = *(a2 + 32);
        v37 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *(a2 + 32) = v35;
        *a2 = result;
        *(a2 + 16) = v34;
      }
    }
  }

  result.n128_u64[0] = *(a5 + 32);
  if (result.n128_f64[0] < *(a4 + 32))
  {
    result = *a4;
    v38 = *(a4 + 16);
    v39 = *(a4 + 32);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *(a5 + 32) = v39;
    *a5 = result;
    *(a5 + 16) = v38;
    result.n128_u64[0] = *(a4 + 32);
    if (result.n128_f64[0] < *(a3 + 32))
    {
      result = *a3;
      v42 = *(a3 + 16);
      v43 = *(a3 + 32);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v45;
      *(a3 + 32) = v44;
      *(a4 + 32) = v43;
      *a4 = result;
      *(a4 + 16) = v42;
      result.n128_u64[0] = *(a3 + 32);
      if (result.n128_f64[0] < *(a2 + 32))
      {
        result = *a2;
        v46 = *(a2 + 16);
        v47 = *(a2 + 32);
        v48 = *(a3 + 32);
        v49 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v49;
        *(a2 + 32) = v48;
        *(a3 + 32) = v47;
        *a3 = result;
        *(a3 + 16) = v46;
        result.n128_u64[0] = *(a2 + 32);
        if (result.n128_f64[0] < *(a1 + 32))
        {
          result = *a1;
          v50 = *(a1 + 16);
          v51 = *(a1 + 32);
          v52 = *(a2 + 32);
          v53 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *(a2 + 32) = v51;
          *a2 = result;
          *(a2 + 16) = v50;
        }
      }
    }
  }

  return result;
}

BOOL sub_1D0C5689C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = (a2 - 40);
      v11 = *(a1 + 72);
      v12 = *(a2 - 8);
      if (v11 < *(a1 + 32))
      {
        if (v12 >= v11)
        {
          v54 = *(a1 + 32);
          v56 = *a1;
          v55 = *(a1 + 16);
          v57 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v57;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v56;
          *(a1 + 56) = v55;
          *(a1 + 72) = v54;
          if (*(a2 - 8) >= *(a1 + 72))
          {
            return 1;
          }

          v13 = *(a1 + 40);
          v14 = *(a1 + 56);
          v15 = *(a1 + 72);
          v58 = *(a2 - 8);
          v59 = *(a2 - 24);
          *(a1 + 40) = *v10;
          *(a1 + 56) = v59;
          *(a1 + 72) = v58;
        }

        else
        {
          v13 = *a1;
          v14 = *(a1 + 16);
          v15 = *(a1 + 32);
          v16 = *(a2 - 8);
          v17 = *(a2 - 24);
          *a1 = *v10;
          *(a1 + 16) = v17;
          *(a1 + 32) = v16;
        }

        *(a2 - 8) = v15;
        v9 = 1;
        *v10 = v13;
        *(a2 - 24) = v14;
        return v9;
      }

      if (v12 >= v11)
      {
        return 1;
      }

      v33 = *(a1 + 40);
      v34 = *(a1 + 56);
      v35 = *(a1 + 72);
      v36 = *(a2 - 8);
      v37 = *(a2 - 24);
      *(a1 + 40) = *v10;
      *(a1 + 56) = v37;
      *(a1 + 72) = v36;
      *(a2 - 8) = v35;
      *v10 = v33;
      *(a2 - 24) = v34;
LABEL_50:
      if (*(a1 + 72) < *(a1 + 32))
      {
        v88 = *(a1 + 32);
        v90 = *a1;
        v89 = *(a1 + 16);
        v91 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v91;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v90;
        *(a1 + 56) = v89;
        v9 = 1;
        *(a1 + 72) = v88;
        return v9;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_1D0C56654(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v26 = *(a1 + 72);
    v27 = *(a1 + 32);
    v28 = *(a1 + 112);
    if (v26 >= v27)
    {
      if (v28 < v26)
      {
        v46 = *(a1 + 72);
        v47 = *(a1 + 56);
        v48 = *(a1 + 40);
        v49 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v49;
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v48;
        *(a1 + 96) = v47;
        *(a1 + 112) = v46;
        if (*(a1 + 72) < v27)
        {
          v50 = *(a1 + 32);
          v52 = *a1;
          v51 = *(a1 + 16);
          v53 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v53;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v52;
          *(a1 + 56) = v51;
          *(a1 + 72) = v50;
        }
      }

      goto LABEL_47;
    }

    if (v28 >= v26)
    {
      v73 = *(a1 + 32);
      v75 = *a1;
      v74 = *(a1 + 16);
      v76 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v76;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v75;
      *(a1 + 56) = v74;
      *(a1 + 72) = v73;
      if (v28 >= *(a1 + 72))
      {
        goto LABEL_47;
      }

      v29 = *(a1 + 72);
      v30 = *(a1 + 56);
      v31 = *(a1 + 40);
      v77 = *(a1 + 96);
      *(a1 + 40) = *(a1 + 80);
      *(a1 + 56) = v77;
      *(a1 + 72) = *(a1 + 112);
    }

    else
    {
      v29 = *(a1 + 32);
      v31 = *a1;
      v30 = *(a1 + 16);
      v32 = *(a1 + 96);
      *a1 = *(a1 + 80);
      *(a1 + 16) = v32;
      *(a1 + 32) = *(a1 + 112);
    }

    *(a1 + 80) = v31;
    *(a1 + 96) = v30;
    *(a1 + 112) = v29;
LABEL_47:
    if (*(a2 - 8) >= *(a1 + 112))
    {
      return 1;
    }

    v78 = a2 - 40;
    v79 = *(a1 + 80);
    v80 = *(a1 + 96);
    v81 = *(a1 + 112);
    v82 = *(a2 - 8);
    v83 = *(a2 - 24);
    *(a1 + 80) = *(a2 - 40);
    *(a1 + 96) = v83;
    *(a1 + 112) = v82;
    *(v78 + 32) = v81;
    *v78 = v79;
    *(v78 + 16) = v80;
    if (*(a1 + 112) >= *(a1 + 72))
    {
      return 1;
    }

    v84 = *(a1 + 72);
    v85 = *(a1 + 40);
    v86 = *(a1 + 96);
    *(a1 + 40) = *(a1 + 80);
    v87 = *(a1 + 56);
    *(a1 + 56) = v86;
    *(a1 + 72) = *(a1 + 112);
    *(a1 + 80) = v85;
    *(a1 + 96) = v87;
    *(a1 + 112) = v84;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 8) < *(a1 + 32))
    {
      v4 = *a1;
      v5 = *(a1 + 16);
      v6 = *(a1 + 32);
      v7 = *(a2 - 8);
      v8 = *(a2 - 24);
      *a1 = *(a2 - 40);
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
      *(a2 - 8) = v6;
      *(a2 - 24) = v5;
      v9 = 1;
      *(a2 - 40) = v4;
      return v9;
    }

    return 1;
  }

LABEL_13:
  v18 = a1 + 80;
  v19 = *(a1 + 72);
  v20 = *(a1 + 32);
  v21 = *(a1 + 112);
  if (v19 >= v20)
  {
    if (v21 < v19)
    {
      v38 = *(a1 + 72);
      v39 = *(a1 + 56);
      v40 = *(a1 + 40);
      v41 = *(a1 + 96);
      *(a1 + 40) = *v18;
      *(a1 + 56) = v41;
      *(a1 + 72) = *(a1 + 112);
      *v18 = v40;
      *(a1 + 96) = v39;
      *(a1 + 112) = v38;
      if (*(a1 + 72) < v20)
      {
        v42 = *(a1 + 32);
        v44 = *a1;
        v43 = *(a1 + 16);
        v45 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v45;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v44;
        *(a1 + 56) = v43;
        *(a1 + 72) = v42;
      }
    }
  }

  else
  {
    if (v21 >= v19)
    {
      v60 = *(a1 + 32);
      v62 = *a1;
      v61 = *(a1 + 16);
      v63 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v63;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v62;
      *(a1 + 56) = v61;
      *(a1 + 72) = v60;
      if (v21 >= *(a1 + 72))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 72);
      v23 = *(a1 + 56);
      v24 = *(a1 + 40);
      v64 = *(a1 + 96);
      *(a1 + 40) = *v18;
      *(a1 + 56) = v64;
      *(a1 + 72) = *(a1 + 112);
    }

    else
    {
      v22 = *(a1 + 32);
      v24 = *a1;
      v23 = *(a1 + 16);
      v25 = *(a1 + 96);
      *a1 = *v18;
      *(a1 + 16) = v25;
      *(a1 + 32) = *(a1 + 112);
    }

    *v18 = v24;
    *(a1 + 96) = v23;
    *(a1 + 112) = v22;
  }

LABEL_33:
  v65 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    v68 = *(v65 + 32);
    if (v68 < *(v18 + 32))
    {
      v93 = *v65;
      v94 = *(v65 + 16);
      v69 = v66;
      while (1)
      {
        v70 = a1 + v69;
        v71 = *(a1 + v69 + 96);
        *(v70 + 120) = *(a1 + v69 + 80);
        *(v70 + 136) = v71;
        *(v70 + 152) = *(a1 + v69 + 112);
        if (v69 == -80)
        {
          break;
        }

        v69 -= 40;
        if (v68 >= *(v70 + 72))
        {
          v72 = a1 + v69 + 120;
          goto LABEL_41;
        }
      }

      v72 = a1;
LABEL_41:
      *v72 = v93;
      *(v72 + 16) = v94;
      *(v72 + 32) = v68;
      if (++v67 == 8)
      {
        return v65 + 40 == a2;
      }
    }

    v18 = v65;
    v66 += 40;
    v65 += 40;
    if (v65 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_1D0C56D94(void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1D0C565EC(a1);
}

uint64_t sub_1D0C56E40(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x1A];
    v7 = *v6 + 152 * (v5 % 0x1A);
    v8 = v2[(a1[5] + v5) / 0x1A] + 152 * ((a1[5] + v5) % 0x1A);
    if (v7 != v8)
    {
      do
      {
        sub_1D0C56540((v7 + 104));
        sub_1D0C56D94((v7 + 56));
        v7 += 152;
        if (v7 - *v6 == 3952)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 13;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 26;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1D0C565EC(a1);
}

const void **sub_1D0C56FA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_1D0C54C1C(a1, v10);
  }

  *(a1 + 32) = v5 + 512;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_1D0C548C8(a1, v11);
}

void sub_1D0C5719C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cnframework::GenericEvent::GetEventType(cnframework::GenericEvent *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 8) == 1)
  {
    return *(this + 3);
  }

  v14 = v8;
  v15 = v9;
  v13 = 3;
  v12 = 5;
  cnprint::CNPrinter::Print(&v13, &v12, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v11);
  return MEMORY[0x1E69E54A8];
}

char *cnframework::GenericEvent::GetEventName@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[8])
  {
    if (this[71] < 0)
    {
      return sub_1D0BC39B4(a2, *(this + 6), *(this + 7));
    }

    else
    {
      *a2 = *(this + 3);
      *(a2 + 16) = *(this + 8);
    }
  }

  else
  {
    *(a2 + 23) = 12;
    strcpy(a2, "GenericEvent");
  }

  return this;
}

void sub_1D0C572C8(uint64_t a1)
{
  sub_1D0B7D844(a1);

  JUMPOUT(0x1D387ECA0);
}

double cnframework::ActiveObjectBase::ActiveObjectBase(uint64_t a1)
{
  *a1 = &unk_1F4CD5620;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
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
  return result;
}

uint64_t cnframework::ActiveObjectBase::HandleNextEvent(cnframework::ActiveObjectBase *this, int8x16_t a2, int8x16_t a3)
{
  v4 = *(this + 18);
  *(this + 18) = v4 + 1;
  if (v4 <= 0)
  {
    result = cnframework::ActiveObjectBase::HandleNextEventAndDetermineIfMoreWorkIsNeeded(this, a2, a3);
    v4 = *(this + 18) - 1;
  }

  else
  {
    result = 0;
  }

  *(this + 18) = v4;
  return result;
}

void cnframework::ActiveObjectBase::SetEventDistributor(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (a1[27])
    {
      v19 = 3;
      v18 = 3;
      (*(*a1 + 16))(__p, a1);
      if (v17 >= 0)
      {
        v9 = __p;
      }

      else
      {
        LOBYTE(v9) = __p[0];
      }

      cnprint::CNPrinter::Print(&v19, &v18, "Replacing previously-set event distributor in %s.", v4, v5, v6, v7, v8, v9);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    a1[27] = a2;
  }

  else
  {
    v19 = 3;
    v18 = 5;
    (*(*a1 + 16))(__p, a1);
    if (v17 >= 0)
    {
      v15 = __p;
    }

    else
    {
      LOBYTE(v15) = __p[0];
    }

    cnprint::CNPrinter::Print(&v19, &v18, "Attempted to set null event distributor in %s.", v10, v11, v12, v13, v14, v15);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0C574F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnframework::ActiveObjectBase::ResetCurrentTime(uint64_t this)
{
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0x7FF8000000000000;
  *(this + 152) = 0;
  *(this + 105) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0x7FF8000000000000;
  return this;
}

uint64_t cnframework::ActiveObjectBase::ResetDroppedEventStats(uint64_t this)
{
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0x7FF8000000000000;
  *(this + 152) = 0;
  return this;
}

void cnframework::ActiveObjectBase::ResetEventQueue(cnframework::ActiveObjectBase *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  sub_1D0C448F0(this + 22);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v3 = v4;
  memset(v4, 0, 24);
  sub_1D0BBBD80(&v3);
  v2 = *MEMORY[0x1E69E9840];
}

void cnframework::ActiveObjectBase::SetEventQueueDelay(cnframework::ActiveObjectBase *this, double a2)
{
  if (*&a2 > -1 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a2 - 1) < 0xFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v24 = 3;
      v23 = 1;
      (*(*this + 16))(__p, this);
      if (v22 >= 0)
      {
        v14 = __p;
      }

      else
      {
        LOBYTE(v14) = __p[0];
      }

      cnprint::CNPrinter::Print(&v24, &v23, "%s setting event queue delay to %.3lf", v9, v10, v11, v12, v13, v14);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(this + 52) = a2 > 0.0;
    __p[0] = 0;
    __p[1] = 0;
    *v7.i64 = a2;
    CNTimeSpan::SetTimeSpan(__p, 0, v7, v8);
    *(this + 10) = *__p;
  }

  else
  {
    v24 = 3;
    v23 = 5;
    (*(*this + 16))(__p, this);
    if (v22 >= 0)
    {
      v20 = __p;
    }

    else
    {
      LOBYTE(v20) = __p[0];
    }

    cnprint::CNPrinter::Print(&v24, &v23, "%s attempted to set event queue delay to %.3lf, defaulting to 0.0", v15, v16, v17, v18, v19, v20);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    *(this + 52) = 0;
    *(this + 20) = 0;
    *(this + 21) = 0;
  }
}

void sub_1D0C57778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C577A0(uint64_t a1)
{
  sub_1D0C577DC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1D0C577DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1D0B7D7C4((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1D0C57820()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t cnframework::Supervisor::Supervisor(uint64_t a1)
{
  *a1 = &unk_1F4CD5690;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 113) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x7FF8000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x7FF8000000000000;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 8) = &unk_1F4CD5750;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  MEMORY[0x1D387EA80](a1 + 256);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0x7FF8000000000000;
  *(a1 + 344) = 850045863;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 393) = 0u;
  *(a1 + 416) = 850045863;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 465) = 0u;
  return a1;
}

void sub_1D0C57970(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 240) = v5;
    operator delete(v5);
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(v2);
  _Unwind_Resume(a1);
}

void cnframework::Supervisor::~Supervisor(cnframework::Supervisor *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_1F4CD5690;
  if ((*(this + 480) & 1) == 0)
  {
    v12 = 3;
    v11 = 5;
    cnprint::CNPrinter::Print(&v12, &v11, "Supervisor::~Supervisor called without Supervisor::TearDown", a4, a5, a6, a7, a8, v10);
  }

  std::recursive_mutex::lock(this + 4);
  *(this + 30) = *(this + 29);
  std::recursive_mutex::unlock(this + 4);
  std::mutex::~mutex((this + 416));
  std::mutex::~mutex((this + 344));
  std::recursive_mutex::~recursive_mutex(this + 4);
  v9 = *(this + 29);
  if (v9)
  {
    *(this + 30) = v9;
    operator delete(v9);
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject((this + 8));
}

uint64_t cnframework::Supervisor::GetCurrentTime(cnframework::Supervisor *this)
{
  std::mutex::lock((this + 344));
  v2 = *(this + 41);
  v3 = *(this + 42);
  std::mutex::unlock((this + 344));
  return v2;
}

void cnframework::Supervisor::Reset(cnframework::Supervisor *this)
{
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v21 = 3;
    v20 = 1;
    (*(*this + 40))(__p, this);
    if (v19 >= 0)
    {
      v7 = __p;
    }

    else
    {
      LOBYTE(v7) = __p[0];
    }

    cnprint::CNPrinter::Print(&v21, &v20, "%s calling Supervisor::Reset", v2, v3, v4, v5, v6, v7);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::mutex::lock((this + 416));
  v8 = *(this + 408);
  std::mutex::unlock((this + 416));
  if (v8 == 1)
  {
    cnframework::Supervisor::Pause(this);
  }

  std::mutex::lock((this + 344));
  *(this + 320) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0x7FF8000000000000;
  std::mutex::unlock((this + 344));
  std::recursive_mutex::lock(this + 4);
  v9 = *(this + 29);
  v10 = *(this + 30);
  while (v9 != v10)
  {
    (*(**v9 + 40))();
    v9 += 8;
  }

  std::recursive_mutex::unlock(this + 4);
  v11 = (*(*this + 112))(this);
  if (v8)
  {
    cnframework::Supervisor::Start(this);
  }

  if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
  {
    v21 = 3;
    v20 = 1;
    (*(*this + 40))(__p, this);
    if (v19 >= 0)
    {
      v17 = __p;
    }

    else
    {
      LOBYTE(v17) = __p[0];
    }

    cnprint::CNPrinter::Print(&v21, &v20, "%s Supervisor::Reset completed", v12, v13, v14, v15, v16, v17);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }
}