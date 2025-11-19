uint64_t raven::RavenPredictor::HandleEvent(raven::RavenPredictor *this, const raven::TimeMarkEvent *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this)
  {
    v9 = (this + 8144);
    result = sub_1D0B7CF88(a2 + 1, this + 1018);
    if (result)
    {
      result = 0;
      v11 = *(a2 + 24);
      *v9 = *(a2 + 8);
      v9[1] = v11;
      v12 = *(a2 + 40);
      v13 = *(a2 + 56);
      v14 = *(a2 + 88);
      v9[4] = *(a2 + 72);
      v9[5] = v14;
      v9[2] = v12;
      v9[3] = v13;
    }
  }

  else
  {
    v17 = 12;
    v16 = 4;
    cnprint::CNPrinter::Print(&v17, &v16, "Error: RavenPredictor::HandleEvent(TimeMarkEvent) failed. Predictor is not configured.", a4, a5, a6, a7, a8, v15);
    return 0xFFFFFFFFLL;
  }

  return result;
}

cnprint::CNPrinter *sub_1D0BB8984(uint64_t a1, raven::RavenUserSpeedActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(v10, a3, a3, a4, a5, a6, a7, a8);
  return raven::RavenUserSpeedActiveObject::HandleEvent(v8, v10);
}

cnprint::CNPrinter *raven::RavenUserSpeedActiveObject::HandleEvent(raven::RavenUserSpeedActiveObject *this, const raven::TimeMarkEvent *a2)
{
  result = (*(*a2 + 16))(a2);
  *&v33 = result;
  *(&v33 + 1) = v5;
  if (*(this + 1320) == 1)
  {
    v25 = (*(*(this + 150) + 16))();
    *&v26 = v6;
    result = CNTimeSpan::operator-(&v33, &v25, v7, v8);
    v10 = v9 + result;
    if (v10 <= 3.56)
    {
      if (v10 >= 0.0)
      {
        if (*(this + 1320))
        {
          v24 = 0;
          v25 = &unk_1F4CEF718;
          v11 = *(this + 1240);
          v29 = *(this + 1256);
          v12 = *(this + 1288);
          v30 = *(this + 1272);
          v31 = v12;
          v32 = *(this + 1304);
          v13 = *(this + 1224);
          v26 = *(this + 1208);
          memset(&v23[1], 0, 64);
          v23[0] = v33;
          v26 = v33;
          v27 = 0u;
          v30 = 0u;
          v29 = 0u;
          v28 = 0u;
          *&v31 = 0;
          *(&v31 + 1) = 0x7FF8000000000000;
          if (!cnprint::CNPrinter::GetLogLevel(result))
          {
            LOWORD(v23[0]) = 12;
            v22 = 0;
            v14 = (*(*a2 + 16))(a2);
            v21 = v15 + v14;
            cnprint::CNPrinter::Print(v23, &v22, "t,%.3lf,UserSpeedAO: UserSpeedEvent,age,%.2lf", v16, v17, v18, v19, v20, SLOBYTE(v21));
          }

          sub_1D0D48BB8();
        }

        sub_1D0C42F28();
      }
    }

    else if (*(this + 1320) == 1)
    {
      *(this + 1320) = 0;
    }
  }

  return result;
}

double sub_1D0BB8BAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(v15, a3, a3, a4, a5, a6, a7, a8);
  v9 = v24;
  *(v8 + 568) = v23;
  *(v8 + 584) = v9;
  *(v8 + 600) = v25;
  *(v8 + 616) = v26;
  v10 = v20;
  *(v8 + 504) = v19;
  *(v8 + 520) = v10;
  v11 = v22;
  *(v8 + 536) = v21;
  *(v8 + 552) = v11;
  v12 = v16;
  *(v8 + 440) = *&v15[8];
  *(v8 + 456) = v12;
  result = *&v17;
  v14 = v18;
  *(v8 + 472) = v17;
  *(v8 + 488) = v14;
  return result;
}

void sub_1D0BB8C34(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v8, v9);
}

uint64_t raven::RavenPositionContextEstimator::HandleEvent(raven::RavenPositionContextEstimator *this, const raven::ActivityStateEvent *a2)
{
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v2;
  v14 = v3;
  v11 = (*(*a2 + 16))(a2);
  v12 = v6;
  v10[0] = *(a2 + 104);
  raven::RavenPositionContextEstimator::HandleEvidence(this, v10, v7, v8);
  return 0;
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::ActivityStateEvent *a2)
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

void raven::RavenPositionContextEstimator::HandleEvidence(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  v6 = CNTimeSpan::operator-((a2 + 8), (a1 + 152), a3, a4);
  v21[0] = v6;
  *&v21[1] = v7;
  if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
  {
    v6 = CNTimeSpan::operator-(v21, v8, v9);
    v8.i64[0] = v10;
  }

  if ((v6 || (v8.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v6 != 10)
  {
    if (v6 < 11)
    {
      goto LABEL_16;
    }
  }

  else if (*v8.i64 <= 0.0)
  {
    goto LABEL_16;
  }

  if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
  {
    v20 = 12;
    v19 = 1;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 424), "RavenPositionContextEstimator::HandleEvidence(ActivityStateEvidence),last estimate is too old, re-initialize the HMM");
    if (*(a1 + 447) >= 0)
    {
      LOBYTE(v17) = v11;
    }

    else
    {
      v17 = *(a1 + 424);
    }

    cnprint::CNPrinter::Print(&v20, &v19, "%s", v12, v13, v14, v15, v16, v17);
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = *(*(a1 + 8) + 2480);
  raven::RavenPositionContextEstimator::InitializeHiddenMarkovModel(a1);
LABEL_16:
  if (*a2 != 5 || *(a1 + 176) == 1 && *(a1 + 168) >= 5.0)
  {
    raven::RavenPositionContextEstimator::HmmPredictAndUpdate(a1, a2);
    if (!v18)
    {

      raven::RavenPositionContextEstimator::UpdatePositionContextStateEvent(a1);
    }
  }
}

{
  v6 = CNTimeSpan::operator-((a2 + 16), (a1 + 152), a3, a4);
  v21[0] = v6;
  *&v21[1] = v7;
  if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
  {
    v6 = CNTimeSpan::operator-(v21, v8, v9);
    v8.i64[0] = v10;
  }

  if ((v6 || (v8.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v6 != 10)
  {
    if (v6 < 11)
    {
      goto LABEL_16;
    }
  }

  else if (*v8.i64 <= 0.0)
  {
    goto LABEL_16;
  }

  if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
  {
    v20 = 12;
    v19 = 1;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 424), "RavenPositionContextEstimator::HandleEvidence(AvailabilityEvidence),last estimate is too old, re-initialize the HMM");
    if (*(a1 + 447) >= 0)
    {
      LOBYTE(v17) = v11;
    }

    else
    {
      v17 = *(a1 + 424);
    }

    cnprint::CNPrinter::Print(&v20, &v19, "%s", v12, v13, v14, v15, v16, v17);
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = *(*(a1 + 8) + 2480);
  raven::RavenPositionContextEstimator::InitializeHiddenMarkovModel(a1);
LABEL_16:
  raven::RavenPositionContextEstimator::HmmPredictAndUpdate(a1, a2);
  if (!v18)
  {

    raven::RavenPositionContextEstimator::UpdatePositionContextStateEvent(a1);
  }
}

{
  v6 = CNTimeSpan::operator-((a2 + 8), (a1 + 152), a3, a4);
  v21[0] = v6;
  *&v21[1] = v7;
  if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
  {
    v6 = CNTimeSpan::operator-(v21, v8, v9);
    v8.i64[0] = v10;
  }

  if ((v6 || (v8.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v6 != 10)
  {
    if (v6 < 11)
    {
      goto LABEL_16;
    }
  }

  else if (*v8.i64 <= 0.0)
  {
    goto LABEL_16;
  }

  if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
  {
    v20 = 12;
    v19 = 1;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 424), "RavenPositionContextEstimator::HandleEvidence(GnssEvidence),last estimate is too old, re-initialize the HMM");
    if (*(a1 + 447) >= 0)
    {
      LOBYTE(v17) = v11;
    }

    else
    {
      v17 = *(a1 + 424);
    }

    cnprint::CNPrinter::Print(&v20, &v19, "%s", v12, v13, v14, v15, v16, v17);
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = *(*(a1 + 8) + 2480);
  raven::RavenPositionContextEstimator::InitializeHiddenMarkovModel(a1);
LABEL_16:
  raven::RavenPositionContextEstimator::HmmPredictAndUpdate(a1, a2);
  if (!v18)
  {

    raven::RavenPositionContextEstimator::UpdatePositionContextStateEvent(a1);
  }
}

uint64_t raven::RavenMovingStateEstimator::GetMovingStateEvent(raven::RavenMovingStateEstimator *this, raven::MovingStateEvent *a2)
{
  if (*(this + 217) != 1 || *(this + 216) != 1)
  {
    return 0;
  }

  v42[5] = v2;
  v42[6] = v3;
  v5 = 72;
  if (!*(this + 1088))
  {
    v5 = 8;
  }

  v40 = 0x100000003;
  v38 = &unk_1F4CDEB28;
  v39 = xmmword_1D0E7DCC0;
  v41 = v42;
  sub_1D0B894B0(&v38, this + v5 + 4216);
  v6 = v41;
  v7 = *v41;
  if ((*v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v41[1];
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = v41[2];
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v10 = 0.0;
  if (v7 <= 1.0)
  {
    v11 = *v41;
  }

  else
  {
    v11 = 1.0;
  }

  if (v7 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  if (v8 <= 1.0)
  {
    v13 = v41[1];
  }

  else
  {
    v13 = 1.0;
  }

  if (v8 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  *v41 = v12;
  v6[1] = v14;
  if (v9 >= 0.0)
  {
    v10 = 1.0;
    if (v9 <= 1.0)
    {
      v10 = v9;
    }
  }

  v6[2] = v10;
  v15 = DWORD1(v39);
  if (DWORD1(v39))
  {
    v16 = 0;
    v17 = v39;
    v18 = 1;
    do
    {
      v19 = v6[(v17 * v16)];
      v20 = v18;
      v21 = v17 - 1;
      if (v17 >= 2)
      {
        do
        {
          v19 = v19 + v6[v20++];
          --v21;
        }

        while (v21);
      }

      v37[v16++] = v19;
      v18 += v17;
    }

    while (v16 != v15);
    v22 = v37[0] + -1.0;
  }

  else
  {
    v22 = NAN;
  }

  if (fabs(v22) > 0.000000015)
  {
    return 0;
  }

  v35 = 0x100000001;
  v33 = &unk_1F4CDF418;
  *&v24 = 0x100000001;
  *(&v24 + 1) = 0x100000001;
  v34 = v24;
  v36 = v37;
  v30 = 0x100000001;
  v28 = &unk_1F4CDF460;
  v29 = v24;
  v31 = &v32;
  sub_1D0BBAD9C(&v38, &v33, &v28);
  if (*v31 <= 2u)
  {
    *(a2 + 104) = *v31 + 1;
  }

  v25 = v41;
  v26 = *v41;
  *(a2 + 15) = *v41;
  v27 = v25[1];
  *(a2 + 16) = v27;
  *(a2 + 17) = 1.0 - v26 - v27;
  *(a2 + 14) = 0;
  return 1;
}

double raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::MountStateEvent *a2, uint64_t a3, uint64_t a4, int8x16_t a5, int8x16_t a6)
{
  if (*(this + 58) == 1 && *(this + 1848) == 1)
  {
    v8 = *(this + 1960);
    if (v8 > 3 || v8 == 1)
    {
      v20 = *(a2 + 104);
      v21 = v20 > 3 || v20 == 1;
      if (!v21 && *(this + 1208) == 1 && ((*(this + 1320) - 4) & 0xFA) == 0)
      {
        v22 = *(this + 146);
        v23 = v22[118];
        v24 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a5, a6);
        v25 = v24 ? 752 : 744;
        v26 = v24 ? 776 : 768;
        v27 = *(this + 3781);
        v28 = *(this + 1892);
        if (*(v28 + 48 * v27 + 48) < v23 && *(v28 + 56 * v27 + 56) < v23 && *(v28 + (v27 << 6) + 64) < v23 && *(v28 + 72 * v27 + 72) < v23)
        {
          v29 = *(v22 + v25) * *(v22 + v25);
          if (*(v28 + 80 * v27 + 80) < v29 && *(v28 + 88 * v27 + 88) < v29 && *(v28 + 96 * v27 + 96) < v29)
          {
            v30 = v22[91] * v22[91];
            if (*(v28 + 104 * v27 + 104) < v30 && *(v28 + 112 * v27 + 112) < v30 && *(v28 + 120 * v27 + 120) < v30)
            {
              v31 = *(v22 + v26) * *(v22 + v26);
              if (*(v28 + (v27 << 7) + 128) < v31 && *(v28 + 136 * v27 + 136) < v31 && *(v28 + 144 * v27 + 144) < v31)
              {
                raven::RavenPNTEstimator::InflateAttitudeUncertainty(this, v22[178] + v22[178]);
                raven::RavenPNTEstimator::InflateInsUncertainty(this, *(*(this + 146) + 1432));
                v32 = *(*(this + 146) + 1448);
                if (*(this + 2760) == 1)
                {
                  raven::RavenPNTEstimator::InflateDeviceVelocityUncertainty(this, v32);
                  raven::RavenPNTEstimator::InflateUserVelocityUncertainty(this, *(*(this + 146) + 1448));
                  raven::RavenPNTEstimator::InflateUserPositionUncertainty(this, *(*(this + 146) + 1440));
                }

                else
                {
                  raven::RavenPNTEstimator::InflateVelocityUncertainty(this, v32);
                }

                if (raven::RavenPNTEstimator::UpdateFullStateEstimate(this, v33, v34, v35))
                {
                  v46 = 12;
                  v45 = 4;
                  v44[0] = (*(*a2 + 16))(a2);
                  v44[1] = v37;
                  cnprint::CNLogFormatter::FormatGeneral(this + 2712, v44, "Could not update full states after dismount");
                  if (*(this + 2735) >= 0)
                  {
                    LOBYTE(v43) = this - 104;
                  }

                  else
                  {
                    v43 = *(this + 339);
                  }

                  cnprint::CNPrinter::Print(&v46, &v45, "%s", v38, v39, v40, v41, v42, v43);
                  raven::RavenPNTEstimator::Reset(this);
                }
              }
            }
          }
        }
      }
    }
  }

  v10 = *(this + 2760);
  if (*(this + 2760))
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        __assert_rtn("HandleEvent", "ravenpntestimator.cpp", 2851, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_27;
    }

    v11 = *(a2 + 104);
    if (v11 > 3 || v11 == 1)
    {
      goto LABEL_27;
    }

    LOBYTE(v44[0]) = 0;
LABEL_16:
    raven::RavenPNTEstimator::SetStateParameterization(this, v44, a3, a4);
    goto LABEL_27;
  }

  v13 = *(this + 3781);
  v14 = *(this + 1892);
  v15 = (*(this + 58) & 1) == 0 || sqrt(*(v14 + 200 * v13 + 200) + *(v14 + 208 * v13 + 208) + *(v14 + 216 * v13 + 216)) * 57.2957795 >= 10.0;
  a5.i64[0] = *(v14 + (v13 << 7) + 128);
  a6.i64[0] = *(v14 + 136 * v13 + 136);
  if (*a6.i64 <= *(v14 + 144 * v13 + 144))
  {
    a6.i64[0] = *(v14 + 144 * v13 + 144);
  }

  if (*a5.i64 <= *a6.i64)
  {
    a5.i64[0] = a6.i64[0];
  }

  v16 = *a5.i64;
  if (*(this + 58))
  {
    v17 = *(*(this + 146) + 784);
    v18 = *(a2 + 104);
    if ((v18 > 3 || v18 == 1) && *(this + 1848) == 1)
    {
      v36 = *(this + 1960);
      if ((v36 > 3 || v36 == 1) && *(this + 1208) == 1 && ((*(this + 1320) - 4) & 0xFA) == 0 && !raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a5, a6) && !v15 && sqrt(v16) <= v17 * 20.0)
      {
        LOBYTE(v44[0]) = 1;
        goto LABEL_16;
      }
    }
  }

LABEL_27:

  *&result = raven::RavenEstimator::HandleMountStateEvent(this, a2).n128_u64[0];
  return result;
}

void raven::RavenMovingStateEstimatorActiveObject::HandleEvent(raven::RavenMovingStateEstimatorActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if ((*(this + 224) & 1) == 0)
  {
    LOWORD(v15) = 12;
    LOBYTE(__p) = 2;
    v5 = this + 232;
    v16 = (*(*a2 + 16))(a2);
    *&v17 = v12;
    cnprint::CNLogFormatter::FormatGeneral(v5, &v16, "RavenMovingStateEstimatorActiveObject is not configured.");
LABEL_6:
    if (*(this + 255) >= 0)
    {
      LOBYTE(v13) = v5;
    }

    else
    {
      v13 = *(this + 29);
    }

    cnprint::CNPrinter::Print(&v15, &__p, "%s", v7, v8, v9, v10, v11, v13);
    return;
  }

  v4 = raven::RavenMovingStateEstimator::HandleEvent((this + 280), a2);
  if (v4)
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) > 1)
    {
      return;
    }

    LOWORD(v15) = 12;
    LOBYTE(__p) = 1;
    LOBYTE(v5) = this - 24;
    v16 = (*(*a2 + 16))(a2);
    *&v17 = v6;
    cnprint::CNLogFormatter::FormatGeneral(this + 232, &v16, "RavenMovingStateEstimatorActiveObject,failed to handle TimeMarkEvent in moving state estimator");
    goto LABEL_6;
  }

  v16 = &unk_1F4CEF778;
  v23 = 0;
  v24 = 0x3FF0000000000000;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v19 = *(a2 + 40);
  v20 = *(a2 + 56);
  v21 = *(a2 + 72);
  v22 = *(a2 + 88);
  v17 = *(a2 + 8);
  v18 = *(a2 + 24);
  if (raven::RavenMovingStateEstimator::GetMovingStateEvent((this + 280), &v16))
  {
    sub_1D0BB7A20();
  }
}

void sub_1D0BB99FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t raven::RavenMovingStateEstimator::Predict(uint64_t a1, __int128 *a2)
{
  if ((*(a1 + 217) & 1) == 0)
  {
    LOWORD(v66) = 12;
    LOBYTE(v81) = 4;
    v7 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4384, a2, "failed to predict, Unconfigured");
LABEL_7:
    if (*(a1 + 4407) >= 0)
    {
      LOBYTE(v13) = v7;
    }

    else
    {
      v13 = *(a1 + 4384);
    }

    cnprint::CNPrinter::Print(&v66, &v81, "%s", v8, v9, v10, v11, v12, v13);
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 216) & 1) == 0)
  {
    LOWORD(v66) = 12;
    LOBYTE(v81) = 4;
    v7 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4384, a2, "failed to predict, Uninitialized");
    goto LABEL_7;
  }

  v69 = 0x300000003;
  v67 = &unk_1F4CD5DD0;
  v70 = &v71;
  memset(v73, 0, sizeof(v73));
  v66 = *a2;
  v68 = xmmword_1D0E76C10;
  if (*(a1 + 1040))
  {
    v4 = v73;
    v5 = xmmword_1D0E7F460;
    v6 = 0.25;
  }

  else
  {
    *&v73[0] = 0x3FA999999999999ALL;
    v5 = xmmword_1D0E7F470;
    v4 = &v73[1] + 1;
    v6 = 0.2;
  }

  *v4 = 0x3FA999999999999ALL;
  v71 = v5;
  v74 = v6;
  v72 = 0x3FD6666666666666;
  *(v73 + 8) = xmmword_1D0E7F480;
  v75 = 0x3FE8000000000000;
  if (!*(a1 + 4352))
  {
    sub_1D0B894B0(a1 + 4288, a1 + 4224);
  }

  v15 = *(a1 + 4296);
  v16 = *(a1 + 4300);
  if (v15)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;
  if (v15 <= v16)
  {
    v19 = *(a1 + 4300);
  }

  else
  {
    v19 = *(a1 + 4296);
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  if (v18 == 1)
  {
    v88 = 0x100000003;
    v86 = &unk_1F4CDEB28;
    v89 = v90;
    v87 = xmmword_1D0E7F490;
    v83 = 0x100000003;
    *&v21.f64[1] = 0x300000003;
    v82 = xmmword_1D0E7DCC0;
    v81 = &unk_1F4CDEB28;
    v84 = v85;
    v21.f64[0] = INFINITY;
    v22 = &v86;
LABEL_34:
    sub_1D0B8930C(v22, &v81, v21);
    goto LABEL_37;
  }

  v23 = *(a1 + 4360);
  v83 = 0x100000003;
  v82 = xmmword_1D0E7DCC0;
  v81 = &unk_1F4CDEB28;
  v84 = v85;
  v24 = sub_1D0B94BA0(a1 + 4288, 1, &v81);
  v25 = *v84;
  if (fabs(*v84 + -1.0) > v23)
  {
    if (cnprint::CNPrinter::GetLogLevel(v24) <= 1)
    {
      LOWORD(v81) = 2;
      LOBYTE(v86) = 1;
      cnprint::CNPrinter::Print(&v81, &v86, "WARNING: HMM prediction passed a non-normalized probability vector.", v26, v27, v28, v29, v30, v65);
    }

    if ((v19 & 0x80000000) == 0)
    {
      sub_1D0BBA094(&v86, a1 + 4288);
      *&v87 = v19 | 0x100000000;
      DWORD2(v87) = v19;
      HIDWORD(v87) = v19;
      v83 = 0x100000003;
      *&v21.f64[1] = 0x300000003;
      v82 = xmmword_1D0E7DCC0;
      v81 = &unk_1F4CDEB28;
      v84 = v85;
      v21.f64[0] = 1.0 / v25;
      goto LABEL_34;
    }

LABEL_59:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

  sub_1D0BBA094(&v81, a1 + 4288);
  *&v82 = v19 | 0x100000000;
  DWORD2(v82) = v19;
  HIDWORD(v82) = v19;
LABEL_37:
  sub_1D0B894B0(a1 + 4288, &v81);
  *(a1 + 4352) = 1;
  v83 = 0x300000003;
  v82 = xmmword_1D0E76C10;
  v81 = &unk_1F4CD5DD0;
  v84 = v85;
  v37 = sub_1D0BBA1DC(&v66, &v81, v31, v32, v33, v34, v35, v36);
  if (v37)
  {
    LOWORD(v86) = 2;
    LOBYTE(v76) = 4;
    cnprint::CNPrinter::Print(&v86, &v76, "ERROR: HMM transition probability function failed.", v38, v39, v40, v41, v42, v65);
    v43 = 27;
LABEL_39:
    LOWORD(v81) = 12;
    LOBYTE(v86) = 4;
    v44 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4384, a1 + 4368, "failed to predict,code,%d", v43);
    if (*(a1 + 4407) >= 0)
    {
      LOBYTE(v50) = v44;
    }

    else
    {
      v50 = *(a1 + 4384);
    }

    cnprint::CNPrinter::Print(&v81, &v86, "%s", v45, v46, v47, v48, v49, v50);
    return 0xFFFFFFFFLL;
  }

  if (v20)
  {
    v51 = 0;
    v52 = 0;
    v53 = v84;
LABEL_45:
    v54 = 0.0;
    v55 = v53;
    v56 = v20;
    while (1)
    {
      v57 = *v55;
      if (*v55 < 0.0 || v57 > 1.0)
      {
        break;
      }

      v54 = v54 + v57;
      ++v55;
      if (!--v56)
      {
        if (fabs(v54 + -1.0) <= *(a1 + 4360))
        {
          ++v51;
          v53 += SHIDWORD(v82);
          v52 = v51 >= v20;
          if (v51 != v20)
          {
            goto LABEL_45;
          }
        }

        break;
      }
    }

    if (!v52)
    {
      if (cnprint::CNPrinter::GetLogLevel(v37) <= 1)
      {
        LOWORD(v86) = 2;
        LOBYTE(v76) = 1;
        cnprint::CNPrinter::Print(&v86, &v76, "ERROR: HMM transition probability matrix is invalid.", v60, v61, v62, v63, v64, v65);
      }

      v43 = 28;
      goto LABEL_39;
    }
  }

  v88 = 0x100000003;
  v87 = xmmword_1D0E7DCC0;
  v86 = &unk_1F4CDEB28;
  v89 = v90;
  sub_1D0B89390(&v81, a1 + 4288, &v86);
  sub_1D0B894B0(a1 + 4224, &v86);
  v78 = 0x100000003;
  v77 = xmmword_1D0E7DCC0;
  v76 = &unk_1F4CDEB28;
  v79 = &v80;
  sub_1D0B94BA0(a1 + 4224, 1, &v76);
  v59.f64[0] = 1.0 / *v79;
  v88 = 0x100000003;
  v87 = xmmword_1D0E7DCC0;
  v86 = &unk_1F4CDEB28;
  v89 = v90;
  sub_1D0B8930C(a1 + 4224, &v86, v59);
  sub_1D0B894B0(a1 + 4224, &v86);
  result = 0;
  *(a1 + 4352) = 0;
  *(a1 + 4368) = *a2;
  return result;
}

__n128 sub_1D0BBA094(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDEB28;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

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
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0BBA1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    LOWORD(v47) = 12;
    v44[0] = 4;
    cnprint::CNPrinter::Print(&v47, v44, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, 0);
    return 0xFFFFFFFFLL;
  }

  if ((atomic_load_explicit(&qword_1EE053950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053950))
  {
    v49 = 0x300000001;
    v47 = &unk_1F4CDF0C8;
    v50 = &v51;
    v48 = xmmword_1D0E7F310;
    v51 = 0x100000000;
    v52 = 2;
    sub_1D0D2CF48(&v47, &unk_1EE053958);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053958, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053950);
  }

  sub_1D0BB77E0(&v47, a1 + 16, 0);
  v15 = v48;
  if (v48)
  {
    v16 = 0;
    v17 = 0.0;
    while (1)
    {
      v18 = *(v50 + (v16 >> 29));
      v19 = (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v20 = v18 < 0.0 && ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v18 >= 0.0)
      {
        v19 = 0;
      }

      v21 = (*&v18 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v19;
      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v21 = 1;
      }

      if (((v21 | v20) & 1) != 0 || v18 > 1.0)
      {
        goto LABEL_58;
      }

      v17 = v17 + v18;
      v16 += 0x100000000;
      if (!--v15)
      {
        v22 = v17 + -1.0;
        goto LABEL_21;
      }
    }
  }

  v22 = -1.0;
LABEL_21:
  if (fabs(v22) >= 2.22044605e-16)
  {
    goto LABEL_58;
  }

  sub_1D0BB77E0(v44, a1 + 16, 1);
  v23 = v45;
  if (v45)
  {
    v24 = 0;
    v25 = 0.0;
    while (1)
    {
      v26 = *(v46 + (v24 >> 29));
      v27 = (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v28 = v26 < 0.0 && ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v26 >= 0.0)
      {
        v27 = 0;
      }

      v29 = (*&v26 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v27;
      if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v29 = 1;
      }

      if (((v29 | v28) & 1) != 0 || v26 > 1.0)
      {
        goto LABEL_58;
      }

      v25 = v25 + v26;
      v24 += 0x100000000;
      if (!--v23)
      {
        v30 = v25 + -1.0;
        goto LABEL_39;
      }
    }
  }

  v30 = -1.0;
LABEL_39:
  if (fabs(v30) >= 2.22044605e-16)
  {
    goto LABEL_58;
  }

  sub_1D0BB77E0(v41, a1 + 16, 2);
  v31 = v42;
  if (v42)
  {
    v32 = 0;
    v33 = 0.0;
    while (1)
    {
      v34 = *(v43 + (v32 >> 29));
      v35 = (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v36 = v34 < 0.0 && ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v34 >= 0.0)
      {
        v35 = 0;
      }

      v37 = (*&v34 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v35;
      if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v37 = 1;
      }

      if (((v37 | v36) & 1) != 0 || v34 > 1.0)
      {
        break;
      }

      v33 = v33 + v34;
      v32 += 0x100000000;
      if (!--v31)
      {
        v38 = v33 + -1.0;
        goto LABEL_57;
      }
    }

LABEL_58:
    LOWORD(v47) = 12;
    v44[0] = 4;
    v40 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v47, v44, "time,%.3lf,t-function failure on line %d: %s() %s", v10, v11, v12, v13, v14, SLOBYTE(v40));
    return 0xFFFFFFFFLL;
  }

  v38 = -1.0;
LABEL_57:
  if (fabs(v38) >= 2.22044605e-16)
  {
    goto LABEL_58;
  }

  *(a2 + 8) = xmmword_1D0E76C10;
  sub_1D0B894B0(a2, a1 + 16);
  return 0;
}

void sub_1D0BBA5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 136) == 1)
  {
    sub_1D0B894B0(a1 + 8, a1 + 72);
  }

  v76 = 0x100000001;
  v74[3] = &unk_1F4CDF2C0;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  v75 = v6;
  v77 = &v78;
  v78 = a2;
  v72 = 0x100000003;
  v70 = &unk_1F4CDF348;
  v71 = v6;
  v73 = v74;
  v74[0] = a3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  sub_1D0B95DC8(v68, &v70);
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

  v12 = *(a1 + 144);
  if (!*(a1 + 16) || !*(a1 + 20))
  {
    if ((v11 & 0x80000000) != 0)
    {
      __assert_rtn("Ones", "cnmatrix.h", 2317, "nr >= 0");
    }

    v87 = 0x100000003;
    v85 = &unk_1F4CDEB28;
    v88 = v89;
    *&v86 = v11 | 0x100000000;
    v20 = 1.0 / v11;
    DWORD2(v86) = v11;
    HIDWORD(v86) = v11;
    if (v11 > 3)
    {
      memset_pattern16(v89, &unk_1D0E7F4B0, 16 * ((v11 - 1) >> 1));
      __asm { FMOV            V0.2D, #1.0 }

      *(&v87 + v11) = _Q0;
    }

    else if (v11)
    {
      memset_pattern16(v89, &unk_1D0E7F4B0, (8 * v11));
    }

    v92 = 0x100000003;
    *&v22.f64[1] = 0x300000003;
    v91 = xmmword_1D0E7DCC0;
    v90 = &unk_1F4CDEB28;
    v93 = v94;
    v21 = &v85;
    goto LABEL_27;
  }

  v92 = 0x100000003;
  v66 = xmmword_1D0E7DCC0;
  v91 = xmmword_1D0E7DCC0;
  v90 = &unk_1F4CDEB28;
  v93 = v94;
  v13 = sub_1D0B94BA0(a1 + 8, 1, &v90);
  v14 = *v93;
  if (fabs(*v93 + -1.0) <= v12)
  {
    if ((v11 & 0x80000000) == 0)
    {
      sub_1D0BBA094(&v90, a1 + 8);
      *&v91 = v11 | 0x100000000;
      DWORD2(v91) = v11;
      HIDWORD(v91) = v11;
      goto LABEL_28;
    }

LABEL_64:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
  {
    LOWORD(v90) = 2;
    LOBYTE(v85) = 1;
    cnprint::CNPrinter::Print(&v90, &v85, "WARNING: HMM update passed a non-normalized probability vector.", v15, v16, v17, v18, v19, 3);
  }

  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  v20 = 1.0 / v14;
  sub_1D0BBA094(&v85, a1 + 8);
  *&v86 = v11 | 0x100000000;
  DWORD2(v86) = v11;
  HIDWORD(v86) = v11;
  v92 = 0x100000003;
  *&v22.f64[1] = 0x300000003;
  v91 = v66;
  v90 = &unk_1F4CDEB28;
  v93 = v94;
LABEL_27:
  v22.f64[0] = v20;
  sub_1D0B8930C(v21, &v90, v22);
LABEL_28:
  sub_1D0B894B0(a1 + 8, &v90);
  sub_1D0BBA094(&v90, a1 + 8);
  v27 = *v77;
  v87 = 0x100000003;
  v85 = &unk_1F4CDEB28;
  v67 = xmmword_1D0E7DCC0;
  v86 = xmmword_1D0E7DCC0;
  v88 = v89;
  v28 = v27(*v69, &v85);
  if (v28)
  {
    LOWORD(v79) = 2;
    v84 = 4;
    v35 = "ERROR: HMM emission function failed.";
LABEL_30:
    cnprint::CNPrinter::Print(&v79, &v84, v35, v29, v30, v31, v32, v33, 3);
    return;
  }

  if (v11)
  {
    v36 = 0.0;
    v37 = v88;
    v38 = v88;
    v39 = v11;
    do
    {
      v40 = *v38;
      if (*v38 < 0.0 || v40 > 1.0)
      {
        LOWORD(v79) = 2;
        v84 = 4;
        v35 = "ERROR: HMM emission probability matrix is invalid.";
        goto LABEL_30;
      }

      v36 = v36 + v40;
      ++v38;
      --v39;
    }

    while (v39);
    if (fabs(v36) > v12)
    {
      v42 = v93;
      do
      {
        v43 = *v37++;
        v34.n128_f64[0] = v43 * *v42;
        *v42++ = v34.n128_f64[0];
        --v11;
      }

      while (v11);
      goto LABEL_44;
    }

LABEL_50:
    LOWORD(v79) = 2;
    v84 = 4;
    v35 = "ERROR: HMM emission probability matrix is null matrix";
    goto LABEL_30;
  }

  if (v12 >= 0.0)
  {
    goto LABEL_50;
  }

LABEL_44:
  v44 = DWORD1(v91);
  if (DWORD1(v91))
  {
    v45 = 0;
    v46 = v91;
    v47 = v93;
    v48 = 1;
    v49 = xmmword_1D0E7DCC0;
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

      v83[v45++] = v50;
      v48 += v46;
    }

    while (v45 != v44);
    v34.n128_f64[0] = v83[0];
  }

  else
  {
    v49 = xmmword_1D0E7DCC0;
  }

  if (fabs(v34.n128_f64[0]) < 2.22044605e-16)
  {
    if (cnprint::CNPrinter::GetLogLevel(v28) <= 1)
    {
      LOWORD(v79) = 2;
      v84 = 1;
      cnprint::CNPrinter::Print(&v79, &v84, "HMM state is null vector after update; revert to input state", v53, v54, v55, v56, v57, 3);
    }

    v34 = sub_1D0B894B0(&v90, a1 + 8);
    v58 = DWORD1(v91);
    if (DWORD1(v91))
    {
      v59 = 0;
      v60 = v91;
      v61 = v93;
      v62 = 1;
      v49 = v67;
      do
      {
        v63 = v61[(v60 * v59)];
        v64 = v62;
        v65 = v60 - 1;
        if (v60 >= 2)
        {
          do
          {
            v63 = v63 + v61[v64++];
            --v65;
          }

          while (v65);
        }

        v83[v59++] = v63;
        v62 += v60;
      }

      while (v59 != v58);
      v34.n128_f64[0] = v83[0];
    }

    else
    {
      v49 = v67;
    }
  }

  v81 = 0x100000003;
  v80 = v49;
  v79 = &unk_1F4CDEB28;
  v82 = v83;
  v34.n128_f64[0] = 1.0 / v34.n128_f64[0];
  sub_1D0B8930C(&v90, &v79, v34);
  sub_1D0B894B0(&v90, &v79);
  sub_1D0B894B0(a1 + 72, &v90);
  *(a1 + 136) = 1;
}

uint64_t sub_1D0BBABC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if ((v8 <= -1 || ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v8 - 1) >= 0xFFFFFFFFFFFFFLL && (v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = 12;
    v26 = 4;
    v23 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v27, &v26, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v23));
    return 0xFFFFFFFFLL;
  }

  v12 = *(a1 + 24);
  if ((v12 <= -1 || ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v12 - 1) >= 0xFFFFFFFFFFFFFLL && (v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v29 = 12;
    v28 = 4;
    v24 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v29, &v28, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v24));
    return 0xFFFFFFFFLL;
  }

  v16 = *(a1 + 32);
  if ((v16 <= -1 || ((v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v16 - 1) >= 0xFFFFFFFFFFFFFLL && (v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v31 = 12;
    v30 = 4;
    v25 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v31, &v30, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v25));
    return 0xFFFFFFFFLL;
  }

  v20 = 0;
  *(a2 + 8) = xmmword_1D0E7DCC0;
  v21 = *(a2 + 32);
  *v21 = v8;
  v21[1] = *(a1 + 24);
  v21[2] = *(a1 + 32);
  return v20;
}

__n128 sub_1D0BBAD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0BB7860(a1, 1, a2, a3);
  if (*(a1 + 8) == 1 || *(a1 + 12) == 1)
  {
    v8 = *(a2 + 16);
    if (v8 >= 2)
    {
      v9 = *(a2 + 32);
      v10 = *(a3 + 32);
      v11 = *v9;
      for (i = 1; i < v8; ++i)
      {
        v13 = v9[i];
        if (v13 > v11)
        {
          *v9 = v13;
          *v10 = v10[i];
          v8 = *(a2 + 16);
          v11 = v13;
        }
      }
    }

    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a2 + 8) = result;
    *(a3 + 8) = result;
  }

  return result;
}

void sub_1D0BBAE84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(&v19, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 432) == 1)
  {
    *(v8 + 424) = v31;
    *(v8 + 248) = v20;
    v9 = v28;
    v10 = v30;
    *(v8 + 392) = v29;
    *(v8 + 408) = v10;
    v11 = v24;
    v12 = v26;
    *(v8 + 328) = v25;
    *(v8 + 344) = v12;
    *(v8 + 360) = v27;
    *(v8 + 376) = v9;
    v13 = v22;
    *(v8 + 264) = v21;
    *(v8 + 280) = v13;
    *(v8 + 296) = v23;
    *(v8 + 312) = v11;
  }

  else
  {
    *(v8 + 240) = &unk_1F4CEF688;
    *(v8 + 424) = v31;
    *(v8 + 248) = v20;
    v14 = v28;
    v15 = v30;
    *(v8 + 392) = v29;
    *(v8 + 408) = v15;
    v16 = v24;
    v17 = v26;
    *(v8 + 328) = v25;
    *(v8 + 344) = v17;
    *(v8 + 360) = v27;
    *(v8 + 376) = v14;
    v18 = v22;
    *(v8 + 264) = v21;
    *(v8 + 280) = v18;
    *(v8 + 296) = v23;
    *(v8 + 312) = v16;
    *(v8 + 432) = 1;
  }

  if ((v26 & 0xFE) != 2 && *(v8 + 1320) == 1)
  {
    *(v8 + 1320) = 0;
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Baro::~Baro(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this)
{
  *this = &unk_1F4CD97F8;
  CoreNavigation::CLP::LogEntry::PrivateData::Baro::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Baro::~Baro(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Baro::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Baro::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::~BaroSample(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this)
{
  *this = &unk_1F4CD9780;
  CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::~BaroSample(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0BBB210(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9356C(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEF538;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0x7FF8000000000000;
  v22 = 0;
  v23 = 0x3FF0000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  result = raven::MountStateChecker::HandleEvent(*(v8 + 1888), v10, v11);
  if (!result)
  {
    sub_1D0B9E5C4();
  }

  return result;
}

double sub_1D0BBB2E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9356C(&v10, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 1120) == 1)
  {
    *(v8 + 1216) = v16;
    *(v8 + 1232) = v17;
    *(v8 + 1248) = v18;
    *(v8 + 1264) = v19;
    *(v8 + 1152) = v12;
    *(v8 + 1168) = v13;
    *(v8 + 1184) = v14;
    *(v8 + 1200) = v15;
    result = *&v11;
    *(v8 + 1136) = v11;
  }

  else
  {
    *(v8 + 1128) = &unk_1F4CEF538;
    *(v8 + 1216) = v16;
    *(v8 + 1232) = v17;
    *(v8 + 1248) = v18;
    *(v8 + 1264) = v19;
    *(v8 + 1152) = v12;
    *(v8 + 1168) = v13;
    *(v8 + 1184) = v14;
    *(v8 + 1200) = v15;
    result = *&v11;
    *(v8 + 1136) = v11;
    *(v8 + 1120) = 1;
  }

  return result;
}

uint64_t cnprint::CNLogFormatter::FormatGeneral(uint64_t a1, uint64_t a2, char *__format, ...)
{
  va_start(va, __format);
  cnprint::CNLogFormatter::FormatCore(a1, (a1 + 24), a2, 1, __format, va);
  return a1;
}

void cnprint::CNLogFormatter::FormatCore(uint64_t a1, const void **a2, uint64_t a3, int a4, char *__format, va_list a6)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(&__p, 0, sizeof(__p));
  if (a4 && snprintf(__str, 0x800uLL, "time,%.3lf,", *(a3 + 8) + *a3) >= 1)
  {
    sub_1D0BBB60C(&__p, __str);
  }

  if (vsnprintf(__str, 0x800uLL, __format, a6) < 0)
  {
    sub_1D0BBB79C(a2, &__p.__r_.__value_.__l.__data_, &v16);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v16;
  }

  else
  {
    sub_1D0BBB79C(a2, &__p.__r_.__value_.__l.__data_, &v16);
    v10 = strlen(__str);
    v11 = std::string::append(&v16, __str, v10);
    v12 = v11->__r_.__value_.__r.__words[0];
    v18[0] = v11->__r_.__value_.__l.__size_;
    *(v18 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = v18[0];
    *a1 = v12;
    *(a1 + 8) = v14;
    *(a1 + 15) = *(v18 + 7);
    *(a1 + 23) = v13;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1D0BBB5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1D0BBB60C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1D0BBB654(a1, __s, v4);
}

std::string *sub_1D0BBB654(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

uint64_t sub_1D0BBB710(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_1D0BBB79C@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_1D0BBB710(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_1D0BBB868(uint64_t a1, double *a2, uint64_t a3, double *a4, double *a5, double *a6)
{
  if (!*(a1 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  if (!sub_1D0B7C8AC(a2, (a1 + 40)) && !sub_1D0B7CF88(a2, (a1 + 56)))
  {
    v13 = CNTimeSpan::operator-(a2, (a1 + 72), v11, v12);
    v15 = v14 + v13;
    if (fabs(v15) <= 2592000.0)
    {
      v17 = 0;
      v18 = 0;
      *a4 = 0.0;
      *a5 = 0.0;
      v19 = a1 + 88;
      v20 = 0.0;
      v21 = 1.0;
      *a6 = 0.0;
      v22 = 32;
      v23 = 0.0;
      do
      {
        v24 = v20;
        v20 = v21;
        *a4 = *a4 + *(v19 + 8 * v17) * v21;
        v25 = v17;
        *a5 = *a5 + *(v19 + 8 * v17) * v17 * v24;
        *a6 = *a6 + *(v19 + 8 * v17) * (v18 * v17) * v23;
        v21 = v15 * v21;
        ++v17;
        v18 = v25;
        v23 = v24;
        v22 -= 8;
      }

      while (v22);
      v26 = 0;
      v27 = 0;
      a4[1] = 0.0;
      a5[1] = 0.0;
      v28 = a1 + 120;
      v29 = 0.0;
      v30 = 1.0;
      a6[1] = 0.0;
      v31 = 32;
      v32 = 0.0;
      do
      {
        v33 = v29;
        v29 = v30;
        a4[1] = a4[1] + *(v28 + 8 * v26) * v30;
        v34 = v26;
        a5[1] = a5[1] + *(v28 + 8 * v26) * v26 * v33;
        a6[1] = a6[1] + *(v28 + 8 * v26) * (v27 * v26) * v32;
        v30 = v15 * v30;
        ++v26;
        v27 = v34;
        v32 = v33;
        v31 -= 8;
      }

      while (v31);
      v35 = 0;
      v36 = 0;
      a4[2] = 0.0;
      a5[2] = 0.0;
      v37 = a1 + 152;
      v38 = 0.0;
      v39 = 1.0;
      a6[2] = 0.0;
      v40 = 32;
      v41 = 0.0;
      do
      {
        v42 = v38;
        v38 = v39;
        a4[2] = a4[2] + *(v37 + 8 * v35) * v39;
        v43 = v35;
        a5[2] = a5[2] + *(v37 + 8 * v35) * v35 * v42;
        a6[2] = a6[2] + *(v37 + 8 * v35) * (v36 * v35) * v41;
        v39 = v15 * v39;
        ++v35;
        v36 = v43;
        v41 = v42;
        v40 -= 8;
      }

      while (v40);
      v44 = 0;
      v45 = 0.0;
      while ((*&a4[v44] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v45 = v45 + a4[v44] * a4[v44];
        if (++v44 == 3)
        {
          if (sqrt(v45) >= 6341752.3)
          {
            v46 = 0;
            while ((*&a5[v46] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (++v46 == 3)
              {
                v47 = 0;
                do
                {
                  v48 = a6[v47];
                }

                while ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v47++ != 2);
                if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0BBBB60(uint64_t a1, double a2, double a3)
{
  v5 = __sincos_stret(a2);
  v6 = __sincos_stret(a3);
  v7 = *(a1 + 48);
  *v7 = -v6.__sinval;
  v8 = *(a1 + 36);
  v9 = &v7[v8];
  *v9 = v6.__cosval;
  v10 = &v7[2 * v8];
  *v10 = 0.0;
  v7[1] = -(v6.__cosval * v5.__sinval);
  v9[1] = -(v6.__sinval * v5.__sinval);
  v7[((2 * v8) | 1)] = v5.__cosval;
  v7[2] = v5.__cosval * v6.__cosval;
  v9[2] = v5.__cosval * v6.__sinval;
  v10[2] = v5.__sinval;
  *(a1 + 8) = 1;
  return 1;
}

uint64_t sub_1D0BBBC00(uint64_t result, double a2)
{
  v2 = *(result + 32);
  v3 = *(result + 16);
  if (v3 > 3)
  {
    v10 = (v2 + 8 * v3);
    v11 = (v3 - 1) >> 1;
    v12 = vdupq_lane_s64(*&a2, 0);
    do
    {
      *v2++ = v12;
      --v11;
    }

    while (v11);
    v10[-1] = v12;
  }

  else if (v3 >= 1)
  {
    v4 = (v3 + 1) & 0xFFFFFFFE;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_1D0E7DD30;
    v7 = &v2->i64[1];
    v8 = vdupq_n_s64(2uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v5, v6));
      if (v9.i8[0])
      {
        *(v7 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v7 = a2;
      }

      v6 = vaddq_s64(v6, v8);
      v7 += 2;
      v4 -= 2;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D0BBBC94@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if ((a1 & 0x80000000) != 0)
  {
    __assert_rtn("Eye", "cnmatrix.h", 2135, "nr >= 0");
  }

  if ((a2 & 0x80000000) != 0)
  {
    __assert_rtn("Eye", "cnmatrix.h", 2136, "nc >= 0");
  }

  *(a3 + 24) = 0x100000001;
  *a3 = &unk_1F4CDF418;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;
  result = sub_1D0BBBC00(a3, 0.0);
  if (a1 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  if (v7)
  {
    v8 = 0;
    v9 = *(a3 + 20) + 1;
    v10 = *(a3 + 32);
    do
    {
      *(v10 + 8 * v8) = 0x3FF0000000000000;
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_1D0BBBD80(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0BCA40C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D0BBBDF8(uint64_t a1, raven::RavenIonosphereEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenIonosphereEstimatorActiveObject::HandleEvent(v8, v9);
}

void raven::RavenIonosphereEstimatorActiveObject::HandleEvent(raven::RavenIonosphereEstimatorActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 225))
    {
      std::mutex::lock((this + 1968));
      raven::RavenIonosphereEstimator::HandleEvent((this + 2032), a2);
      if (*(this + 1904) != 1 || (v60 = (*(*(this + 134) + 16))(this + 1072), v61 = v4, v58 = 1, v59 = 0, v25 = CNTimeSpan::operator+(&v60, &v58, v5, v6), *&v26 = v7, sub_1D0B8E6A8(a2 + 1, &v25)))
      {
        v25 = &unk_1F4CEF2B8;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = vdupq_n_s64(0x7FF8000000000000uLL);
        v36 = 0x7FF8000000000000;
        v37 = 0;
        v39 = v35;
        v40 = v35;
        v41 = v35;
        v42 = v35;
        v43 = v35;
        v44 = v35;
        v38 = 0;
        v45 = 0x7FF8000000000000;
        v46 = 0x7FF8000000000000;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0;
        v53 = 0x7FF8000000000000;
        v54 = 0;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v8 = *(a2 + 56);
        v28 = *(a2 + 40);
        v29 = v8;
        v9 = *(a2 + 88);
        v30 = *(a2 + 72);
        v31 = v9;
        v10 = *(a2 + 24);
        v26 = *(a2 + 8);
        v27 = v10;
        if (!raven::RavenIonosphereEstimator::PopulateEvent((this + 2032), &v25))
        {
          operator new();
        }
      }

      if (*(this + 1064) != 1 || (v60 = (*(*(this + 29) + 16))(this + 232), v61 = v18, v58 = 1, v59 = 0, v25 = CNTimeSpan::operator+(&v60, &v58, v19, v20), *&v26 = v21, sub_1D0B8E6A8(a2 + 1, &v25)))
      {
        v25 = &unk_1F4CEE948;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35.i8[0] = 0;
        v35.i64[1] = 0;
        v36 = 0;
        LOBYTE(v37) = 0;
        v38 = 0;
        v39.i64[0] = 0;
        v39.i8[8] = 0;
        v40 = 0uLL;
        v41 = vdupq_n_s64(0x7FF8000000000000uLL);
        v42 = v41;
        v43 = v41;
        v44 = v41;
        v45 = 0x7FF8000000000000;
        v46 = 0x7FF8000000000000;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v52 = 0;
        v53 = 0x7FF8000000000000;
        v54 = 0;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v22 = *(a2 + 56);
        v28 = *(a2 + 40);
        v29 = v22;
        v23 = *(a2 + 88);
        v30 = *(a2 + 72);
        v31 = v23;
        v24 = *(a2 + 24);
        v26 = *(a2 + 8);
        v27 = v24;
        if (!raven::RavenIonosphereEstimator::PopulateEvent((this + 2032), &v25))
        {
          operator new();
        }
      }

      std::mutex::unlock((this + 1968));
    }
  }

  else
  {
    LOWORD(v25) = 12;
    LOBYTE(v60) = 2;
    v11 = cnprint::CNLogFormatter::FormatGeneral(this + 239, "RavenIonosphereEstimatorActiveObject: not configured");
    if (*(this + 1935) >= 0)
    {
      LOBYTE(v17) = v11;
    }

    else
    {
      v17 = *(this + 239);
    }

    cnprint::CNPrinter::Print(&v25, &v60, "%s", v12, v13, v14, v15, v16, v17);
  }
}

void sub_1D0BBC634(_Unwind_Exception *a1)
{
  v5 = *(v3 - 96);
  if (v5)
  {
    sub_1D0B7CAB8(v5);
  }

  sub_1D0B7CAB8(v2);
  std::mutex::unlock((v1 + 1968));
  _Unwind_Resume(a1);
}

uint64_t raven::RavenIonosphereEstimator::HandleEvent(raven::RavenIonosphereEstimator *this, const raven::TimeMarkEvent *a2)
{
  v2 = *(a2 + 24);
  *(this + 29) = *(a2 + 8);
  *(this + 30) = v2;
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 88);
  *(this + 33) = *(a2 + 72);
  *(this + 34) = v5;
  *(this + 31) = v3;
  *(this + 32) = v4;
  if (*(this + 8) != 1)
  {
    return 32;
  }

  if (*(this + 9) != 1)
  {
    return 0;
  }

  v55.i64[0] = (*(*a2 + 16))(a2);
  v55.i64[1] = v8;
  v51 = *(this + 2);
  v10 = CNTimeSpan::operator-(&v55, &v51, v51, v9);
  *v13.i64 = v12 + v10;
  if (*v13.i64 >= 0.0)
  {
    v25 = *(this + 504);
    *v13.i64 = *v13.i64 / *(v25 + 2568);
    v11.i64[0] = 1.0;
    if (*v13.i64 > 1.0)
    {
      if (*(this + 80) != 1)
      {
        goto LABEL_19;
      }

      v27 = CNTimeSpan::operator-(this + 58, this + 8, v13, v11);
      v51.i64[0] = v27;
      *&v51.i64[1] = v28;
      if (v27 < 0 || (*v29.i64 = v28, v28 < 0.0))
      {
        v27 = CNTimeSpan::operator-(v51.i64, v29, v30);
        v29.i64[0] = v31;
      }

      if (*v29.i64 + v27 >= *(v25 + 3136))
      {
LABEL_19:
        updated = raven::RavenIonosphereEstimator::UpdateEstimatorParametersViaPolyfitToKlobucharModel(this);
        if (updated && cnprint::CNPrinter::GetLogLevel(updated) <= 1)
        {
          v51.i16[0] = 12;
          v54.i8[0] = 1;
          v33 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "Warning: UpdateEstimatorParametersViaPolyfitToKlobucharModel failed, continuing without updating parameters");
          if (*(this + 4063) >= 0)
          {
            LOBYTE(v39) = v33;
          }

          else
          {
            v39 = *(this + 505);
          }

          cnprint::CNPrinter::Print(&v51, &v54, "%s", v34, v35, v36, v37, v38, v39);
        }
      }

      *(this + 3620) = 0u;
      *(this + 3592) = 0u;
      *(this + 3608) = 0u;
      *(this + 3560) = 0u;
      *(this + 3576) = 0u;
      *(this + 3528) = 0u;
      *(this + 3544) = 0u;
      *(this + 3496) = 0u;
      *(this + 3512) = 0u;
      *(this + 3464) = 0u;
      *(this + 3480) = 0u;
      *(this + 3432) = 0u;
      *(this + 3448) = 0u;
      *(this + 3400) = 0u;
      *(this + 3416) = 0u;
      *(this + 3368) = 0u;
      *(this + 3384) = 0u;
      *(this + 3336) = 0u;
      *(this + 3352) = 0u;
      *(this + 3304) = 0u;
      *(this + 3320) = 0u;
      *(this + 3272) = 0u;
      *(this + 3288) = 0u;
      *(this + 3240) = 0u;
      *(this + 3256) = 0u;
      v40 = *(this + 2);
      v53 = v55;
      v54 = v40;
      v51 = 0uLL;
      v52 = 0x7FF8000000000000;
      EstimatorPredictAndUpdateArguments = raven::RavenIonosphereEstimator::GetEstimatorPredictAndUpdateArguments(this, &v54, &v53, &v51, *v55.i64, v40);
      if (EstimatorPredictAndUpdateArguments)
      {
        v24 = raven::RavenIonosphereEstimator::PredictAndUpdate(this, &v51);
        v49 = v24;
        sub_1D0BAAFCC(&v49);
        return v24;
      }

      if (cnprint::CNPrinter::GetLogLevel(EstimatorPredictAndUpdateArguments) <= 1)
      {
        LOWORD(v49) = 12;
        v50 = 1;
        v42 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, &v55, "Could not get predict and update arguments");
        if (*(this + 4063) >= 0)
        {
          LOBYTE(v48) = v42;
        }

        else
        {
          v48 = *(this + 505);
        }

        cnprint::CNPrinter::Print(&v49, &v50, "%s", v43, v44, v45, v46, v47, v48);
      }
    }

    return 0;
  }

  if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
  {
    v54.i16[0] = 12;
    v53.i8[0] = 1;
    v51.i64[0] = (*(*a2 + 16))(a2);
    v51.i64[1] = v14;
    v15 = *(this + 5) + *(this + 4);
    v16 = (*(*a2 + 16))(a2);
    cnprint::CNLogFormatter::FormatGeneral(this + 4040, &v51, "Estimator time is greater than event time,%.3lf > %.3lf", v15, v17 + v16);
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v23) = this - 56;
    }

    else
    {
      v23 = *(this + 505);
    }

    cnprint::CNPrinter::Print(&v54, &v53, "%s", v18, v19, v20, v21, v22, v23);
  }

  return 64;
}

void *sub_1D0BBCAA4(uint64_t a1, unint64_t a2)
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
      v4 = v2[4];
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

uint64_t sub_1D0BBCB88(uint64_t result, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v3 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v3;
    *(a3 + 16) = v3;
    *(a3 + 20) = 1;
    if (v3)
    {
      v4 = 0;
      v5 = *(result + 32);
      v6 = *(a3 + 32);
      do
      {
        v7 = *(result + 8);
        v8 = *(v5 + 4 * (v7 * v4));
        if (v7 >= 2)
        {
          v9 = v7 - 1;
          v10 = v7 * v4 + 1;
          do
          {
            v8 += *(v5 + 4 * v10++);
            --v9;
          }

          while (v9);
        }

        *(v6 + 4 * v4++) = v8;
      }

      while (v4 < *(result + 12));
    }
  }

  else
  {
    v11 = *(result + 8);
    *(a3 + 8) = v11;
    *(a3 + 12) = 1;
    *(a3 + 16) = v11;
    *(a3 + 20) = v11;
    if (v11)
    {
      v12 = 0;
      v13 = *(result + 32);
      v14 = *(a3 + 32);
      do
      {
        *(v14 + 4 * v12) = *(v13 + 4 * v12);
        ++v12;
      }

      while (v12 < *(result + 8));
    }

    v15 = *(result + 12);
    if (v15 >= 2)
    {
      v16 = *(result + 32);
      v17 = *(a3 + 32);
      v18 = 1;
      LODWORD(v19) = *(result + 8);
      do
      {
        if (v19)
        {
          v20 = 0;
          v21 = v19 * v18;
          do
          {
            *(v17 + 4 * v20) += *(v16 + 4 * (v21 + v20));
            ++v20;
            v19 = *(result + 8);
          }

          while (v20 < v19);
          v15 = *(result + 12);
        }

        ++v18;
      }

      while (v18 < v15);
    }
  }

  return result;
}

uint64_t sub_1D0BBCC94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1D0DA0EE0(a1, a2);
  }

  else
  {
    sub_1D0BBCCD4(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1D0BBCCD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  result = (v3 + 8);
  if (*(a2 + 31) < 0)
  {
    result = sub_1D0BC39B4(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *result = v5;
  }

  *(a1 + 8) = v3 + 32;
  return result;
}

void sub_1D0BBCD70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B99264(v23, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 224))
  {
    if (*(v8 + 497) == 1 && *(v8 + 496) == 1)
    {
      raven::RavenMovingStateEstimator::HandleEvent((v8 + 280), v23);
    }
  }

  else
  {
    v28 = 12;
    v27 = 2;
    v26[0] = (*(v23[0] + 16))(v23, v9);
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

    cnprint::CNLogFormatter::FormatWarning(v8 + 232, v26, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
    if (*(v8 + 255) >= 0)
    {
      LOBYTE(v22) = v8 - 24;
    }

    else
    {
      v22 = *(v8 + 232);
    }

    cnprint::CNPrinter::Print(&v28, &v27, "%s", v17, v18, v19, v20, v21, v22);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_1D0BBCEB0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenMovingStateEstimator::HandleEvent(__n128 *this, const raven::ActivityStateEvent *a2)
{
  v4 = a2 + 104;
  if (*(a2 + 104) == 5 && this[87].n128_u8[0] == 1)
  {
    v5 = this[84].n128_u8[8];
    if (v5 > 3)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = 2u >> (v5 & 0xF);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  this[65].n128_u8[0] = v6 & 1;
  if (sub_1D0BBD090(a2 + 104) > 0.95)
  {
    this[65].n128_u8[1] = (*v4 < 0xAuLL) & (0xCu >> *v4);
  }

  if (this[77].n128_u8[8] == 1)
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    this[69] = *(a2 + 56);
    this[68] = v9;
    this[67] = v8;
    this[66] = v7;
    v10 = *(a2 + 72);
    v11 = *(a2 + 88);
    v12 = *(a2 + 104);
    this[73] = *(a2 + 120);
    this[72] = v12;
    this[71] = v11;
    this[70] = v10;
    result = *(a2 + 136);
    v14 = *(a2 + 152);
    v15 = *(a2 + 168);
    this[77].n128_u64[0] = *(a2 + 23);
    this[76] = v15;
    this[75] = v14;
    this[74] = result;
  }

  else
  {
    this[65].n128_u64[1] = &unk_1F4CEF688;
    v16 = *(a2 + 8);
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    this[69] = *(a2 + 56);
    this[68] = v18;
    this[67] = v17;
    this[66] = v16;
    v19 = *(a2 + 72);
    v20 = *(a2 + 88);
    v21 = *(a2 + 104);
    this[73] = *(a2 + 120);
    this[72] = v21;
    this[71] = v20;
    this[70] = v19;
    result = *(a2 + 136);
    v22 = *(a2 + 152);
    v23 = *(a2 + 168);
    this[77].n128_u64[0] = *(a2 + 23);
    this[76] = v23;
    this[75] = v22;
    this[74] = result;
    this[77].n128_u8[8] = 1;
  }

  return result;
}

double sub_1D0BBD090(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 9)
  {
    return *&a1[8 * v1 + 8];
  }

  return result;
}

double sub_1D0BBD0B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(&v20, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 432) == 1)
  {
    *(v8 + 424) = v32;
    *(v8 + 248) = v21;
    v9 = v29;
    v10 = v31;
    *(v8 + 392) = v30;
    *(v8 + 408) = v10;
    v11 = v25;
    v12 = v27;
    *(v8 + 328) = v26;
    *(v8 + 344) = v12;
    *(v8 + 360) = v28;
    *(v8 + 376) = v9;
    v13 = v23;
    *(v8 + 264) = v22;
    *(v8 + 280) = v13;
    result = *&v24;
    *(v8 + 296) = v24;
    *(v8 + 312) = v11;
  }

  else
  {
    *(v8 + 240) = &unk_1F4CEF688;
    *(v8 + 424) = v32;
    *(v8 + 248) = v21;
    v15 = v29;
    v16 = v31;
    *(v8 + 392) = v30;
    *(v8 + 408) = v16;
    v17 = v25;
    v18 = v27;
    *(v8 + 328) = v26;
    *(v8 + 344) = v18;
    *(v8 + 360) = v28;
    *(v8 + 376) = v15;
    v19 = v23;
    *(v8 + 264) = v22;
    *(v8 + 280) = v19;
    result = *&v24;
    *(v8 + 296) = v24;
    *(v8 + 312) = v17;
    *(v8 + 432) = 1;
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent(raven::GnssMeasurementPreprocessor *this, raven::KlobucharParametersEvent *a2)
{
  if ((*this & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v16 = 12;
      v15 = 1;
      cnprint::CNPrinter::Print(&v16, &v15, "#gmp,KlobucharParametersEvent,not configured", v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  if (*(this + 520) != 1)
  {
    return 0;
  }

  v3 = *(this + 328);
  v4 = *(this + 344);
  *(a2 + 40) = *(this + 360);
  *(a2 + 24) = v4;
  *(a2 + 8) = v3;
  v5 = *(this + 376);
  v6 = *(this + 392);
  v7 = *(this + 408);
  *(a2 + 104) = *(this + 424);
  *(a2 + 88) = v7;
  *(a2 + 72) = v6;
  *(a2 + 56) = v5;
  cnnavigation::KlobucharModelParameters::operator=(a2 + 120, this + 440);
  if (*(this + 520) == 1)
  {
    *(this + 40) = &unk_1F4CEE030;
    *(this + 520) = 0;
  }

  return 1;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::~GnssAvailabilityPrediction(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this)
{
  *this = &unk_1F4CDB6E8;
  CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::~GnssAvailabilityPrediction(this);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0BBD378(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA910(v33, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8))
  {
    v11 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v33, v9, v10);
    if (v11 && cnprint::CNPrinter::GetLogLevel(v11) <= 1)
    {
      v39[0] = 12;
      v38 = 1;
      v37[0] = (*(v33[0] + 16))(v33);
      v37[1] = v12;
      (*(v33[0] + 24))(v35, v33);
      if (v36 >= 0)
      {
        v18 = v35;
      }

      else
      {
        v18 = v35[0];
      }

      v19 = cnprint::CNLogFormatter::FormatWarning(v8 + 240, v37, "Failed to handle event - %s.", v13, v14, v15, v16, v17, v18);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v25) = v19;
      }

      else
      {
        v25 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(v39, &v38, "%s", v20, v21, v22, v23, v24, v25);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }
  }

  else
  {
    LOWORD(v35[0]) = 12;
    LOBYTE(v37[0]) = 2;
    v26 = cnprint::CNLogFormatter::FormatGeneral((v8 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v32) = v26;
    }

    else
    {
      v32 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v35, v37, "%s", v27, v28, v29, v30, v31, v32);
  }

  v33[0] = &unk_1F4CEF598;
  v35[0] = &v34;
  sub_1D0BBBD80(v35);
}

void sub_1D0BBD554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (*(v23 - 65) < 0)
  {
    operator delete(*(v23 - 88));
  }

  *(v23 - 40) = &a23;
  sub_1D0BBBD80((v23 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BBD5A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0BBD62C(result, a4);
  }

  return result;
}

void sub_1D0BBD60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1D0BBBD80(&a9);
  _Unwind_Resume(a1);
}

void sub_1D0BBD62C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1D0BCAB88(a1, a2);
  }

  sub_1D0D31B50();
}

void sub_1D0BBD668(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_1D0C448F0(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1D0BBD62C(a1, v11);
    }

    sub_1D0D31B50();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_1D0BCAD10(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_1D0B7CAB8(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_1D0BCAD10(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_1D0BC0038(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t raven::RavenEstimator::HandleGnssPreprocessedMeasurementsEvent(raven::RavenEstimator *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if (*(this + 57))
  {
    sub_1D0BCAC14(this + 2440, a2);
    return 0;
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v20 = 12;
      v19 = 1;
      v18[0] = (*(*a2 + 16))(a2);
      v18[1] = v5;
      cnprint::CNLogFormatter::FormatWarning(this + 2712, v18, "Estimator not configured, failed to handle GnssPreprocessedMeasurementsEvent.", v6, v7, v8, v9, v10, v17);
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v16) = this - 104;
      }

      else
      {
        v16 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v20, &v19, "%s", v11, v12, v13, v14, v15, v16);
    }

    return 0xFFFFFFFFLL;
  }
}

BOOL raven::RavenEstimator::AreGnssMeasurementsAtSameTime(uint64_t a1, void *a2, _OWORD *a3, int8x16_t a4, int8x16_t a5)
{
  v6 = *a4.i64;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = 0;
  *&v50 = 0;
  BYTE8(v50) = 0;
  v51 = 0uLL;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = 0;
  *&v53 = 0;
  *(&v53 + 1) = 0x7FF8000000000000;
  *&v48 = 0;
  *(&v48 + 1) = 0x7FF0000000000000;
  LOBYTE(v43) = 0;
  *(&v43 + 1) = 0;
  v44.i64[0] = 0;
  v44.i8[8] = 0;
  v45 = 0uLL;
  LOBYTE(v46) = 0;
  *(&v46 + 1) = 0;
  *&v47 = 0;
  *(&v47 + 1) = 0x7FF8000000000000;
  *&v42 = 0;
  *(&v42 + 1) = 0xFFF0000000000000;
  v9 = a2[12];
  v10 = a2[13];
  while (v9 != v10)
  {
    v11 = *v9;
    if (*v9)
    {
      v12 = *(v11 + 328);
      v13 = *(v11 + 336);
      while (v12 != v13)
      {
        if (sub_1D0B7C8AC(v12, &v48))
        {
          v14 = *v12;
          v49 = *(v12 + 1);
          v48 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v52 = *(v12 + 4);
          v53 = v17;
          v50 = v15;
          v51 = v16;
        }

        if (sub_1D0B7CF88(v12, &v42))
        {
          v18 = *(v12 + 1);
          v42 = *v12;
          v43 = v18;
          a4 = *(v12 + 4);
          a5 = *(v12 + 6);
          v19 = *(v12 + 5);
          v46 = *(v12 + 4);
          v47 = v19;
          v44 = a4;
          v45 = a5;
        }

        v12 += 26;
      }
    }

    v9 += 2;
  }

  v20 = CNTimeSpan::operator-(&v42, &v48, a4, a5);
  v40 = v20;
  v41 = v21;
  if (v20 < 0 || (*v22.i64 = v21, v21 < 0.0))
  {
    v20 = CNTimeSpan::operator-(&v40, v22, v23);
    v22.i64[0] = v24;
  }

  v25 = fabs(*v22.i64 + v20);
  if (v25 > v6)
  {
    v39 = 12;
    v38 = 4;
    v40 = (*(*a2 + 16))(a2);
    v41 = v30;
    cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, &v40, "GNSS measurements do not share a common time,min_time,%.3lf,max_time,%.3lf", *(&v48 + 1) + v48, *(&v42 + 1) + v42);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v36) = a1 - 104;
    }

    else
    {
      v36 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v39, &v38, "%s", v31, v32, v33, v34, v35, v36);
  }

  else
  {
    v26 = v51;
    v27 = v52;
    v28 = v49;
    a3[2] = v50;
    a3[3] = v26;
    v29 = v53;
    a3[4] = v27;
    a3[5] = v29;
    *a3 = v48;
    a3[1] = v28;
  }

  return v25 <= v6;
}

double sub_1D0BBDAB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000008;
  *a2 = &unk_1F4CE4320;
  *(a2 + 8) = xmmword_1D0E84520;
  *(a2 + 32) = a2 + 40;
  v2 = 768;
  if (!*(a1 + 1540))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0BBDB14(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1D0BC27A8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const void **sub_1D0BBDB70(uint64_t a1)
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
    v4 = 26 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x1A)
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
    sub_1D0C54E78(a1, v10);
  }

  *(a1 + 32) = v5 + 26;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_1D0BA02E4(a1, v11);
}

void sub_1D0BBDD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *a2, raven::GnssAvailabilityEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v12 = 0uLL;
  v11 = &unk_1F4CEF048;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0uLL;
  v18 = 0;
  v19 = 0;
  v20[0] = 0;
  *&v20[1] = xmmword_1D0E83F80;
  v21 = 0;
  result = raven::ConvertProtobufToGnssAvailabilityEvent(a2, &v11, a3, a4, a5, a6, a7, a8, xmmword_1D0E83F80, a10);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1D0BBE06C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToGnssAvailabilityEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *a2, raven::GnssAvailabilityEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 36) & 1) == 0)
  {
    return 0;
  }

  v38 = v10;
  v39 = v11;
  v15 = *(this + 1);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v15, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    *(a2 + 13) = *(this + 2);
    if ((*(this + 7) - 1) >= 3)
    {
      result = cnprint::CNPrinter::GetLogLevel(result);
      if (result <= 1)
      {
        v37 = 12;
        v36 = 1;
        v17 = (*(*a2 + 16))(a2);
        v32 = v18 + v17;
        cnprint::CNPrinter::Print(&v37, &v36, "t,%.3lf,WARNING: Gnss Availability Prediction, unknown measurement source", v19, v20, v21, v22, v23, SLOBYTE(v32));
      }

      v16 = 0;
    }

    else
    {
      v16 = *(this + 28);
    }

    *(a2 + 113) = v16;
    v24 = *(this + 6) - 1;
    if (v24 >= 3)
    {
      if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
      {
        v35 = 12;
        v34 = 1;
        v25 = (*(*a2 + 16))(a2);
        v33 = v26 + v25;
        cnprint::CNPrinter::Print(&v35, &v34, "t,%.3lf,WARNING: Gnss Availability Prediction, unknown state", v27, v28, v29, v30, v31, SLOBYTE(v33));
      }

      LOBYTE(v24) = 0;
    }

    *(a2 + 112) = v24;
    return 1;
  }

  return result;
}

void sub_1D0BBE2A8(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v27.__vftable) = 3;
    LOBYTE(v35) = 5;
    cnprint::CNPrinter::Print(&v27, &v35, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v26);
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
    if (v19 != (off_1F4CEF070 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF070 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v27.__vftable = 0;
      std::bad_cast::bad_cast(&v27);
      v27.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v27.__vftable = &unk_1F4CEF048;
    v22 = v20[2];
    v21 = v20[3];
    v28 = v20[1];
    v29 = v22;
    v30 = v21;
    v24 = v20[5];
    v23 = v20[6];
    v25 = *(v20 + 106);
    v31 = v20[4];
    *&v33[10] = v25;
    *v33 = v23;
    v32 = v24;
  }

  else
  {
    v35 = 3;
    v34 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v27.__vftable) = 3;
      v36 = 5;
      cnprint::CNPrinter::Print(&v27, &v36, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v26);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v35, &v34, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v29 = 0uLL;
    v32 = 0uLL;
    *&v33[16] = 0u;
    v28 = 0uLL;
    v27.__vftable = &unk_1F4CEF048;
    v30 = 0uLL;
    v31 = 0uLL;
    *v33 = 0;
    *&v33[8] = 0x7FF8000000000000;
  }

  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v9, &v27);
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::GnssAvailabilityEvent *a2)
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

uint64_t raven::RavenPositionContextEstimator::HandleEvent(raven::RavenPositionContextEstimator *this, const raven::GnssAvailabilityEvent *a2)
{
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v2;
  v15 = v3;
  v12 = (*(*a2 + 16))(a2);
  v13 = v6;
  v10 = *(a2 + 13);
  v7.i64[0] = v10;
  v11 = *(a2 + 112);
  raven::RavenPositionContextEstimator::HandleEvidence(this, &v10, v7, v8);
  return 0;
}

__n128 raven::RavenPositionContextEstimator::HmmPredictAndUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) == 1)
  {
    v45 = v2;
    v46 = v3;
    if (*a1 == 1)
    {
      v6 = *(*(a1 + 8) + 2496);
      v44[0] = *(a2 + 16);
      v44[1] = v6;
      if (sub_1D0BBEAAC(a1 + 16, v44))
      {
        v29[0] = 12;
        v28[0] = 4;
        v12 = a1 - 88;
        cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to predict,code,%d");
LABEL_5:
        if (*(a1 + 447) >= 0)
        {
          LOBYTE(v18) = v12;
        }

        else
        {
          v18 = *(a1 + 424);
        }

LABEL_20:
        cnprint::CNPrinter::Print(v29, v28, "%s", v13, v14, v15, v16, v17, v18);
        return result;
      }

      v41 = 0x100000001;
      *&v19 = 0x100000001;
      *(&v19 + 1) = 0x100000001;
      v40 = v19;
      v39 = &unk_1F4CE0380;
      v42 = &v43;
      v43 = sub_1D0BBF854;
      v36 = 0x100000001;
      v35 = v19;
      v34 = &unk_1F4CDF3D0;
      v37 = &v38;
      v31 = *(a2 + 16);
      v30 = -1.0;
      if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupGnssAvailabilityStateProbabilityGivenOutdoor(a1 + 472, (a2 + 8), &v30, v7, v8, v9, v10, v11))
      {
        v29[0] = 12;
        v28[0] = 4;
        v25 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupGnssAvailabilityStateProbabilityGivenOutdoor failed");
      }

      else if (v30 < 0.0 || v30 > 1.0 || (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v29[0] = 12;
        v28[0] = 4;
        v25 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupGnssAvailabilityStateProbabilityGivenOutdoor returned invalid probability");
      }

      else
      {
        v33 = v30;
        v30 = -1.0;
        if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupGnssAvailabilityStateProbabilityGivenIndoor(a1 + 472, (a2 + 8), &v30, v20, v21, v22, v23, v24))
        {
          v29[0] = 12;
          v28[0] = 4;
          v25 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupGnssAvailabilityStateProbabilityGivenIndoor failed");
        }

        else
        {
          if (v30 >= 0.0 && v30 <= 1.0 && (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            v32 = v30;
            *v37 = &v31;
            sub_1D0BBF10C(a1 + 16, v29);
            sub_1D0BBF168(v28, &v39);
            sub_1D0BBF75C(v27, &v34);
            if (!sub_1D0BBF260(a1 + 16, v29, 1, v28, v27))
            {
              result = *(a2 + 16);
              *(a1 + 152) = result;
              return result;
            }

            v29[0] = 12;
            v28[0] = 4;
            v12 = a1 - 88;
            cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to update,code,%d");
            goto LABEL_5;
          }

          v29[0] = 12;
          v28[0] = 4;
          v25 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupGnssAvailabilityStateProbabilityGivenIndoor returned invalid probability");
        }
      }

      if (*(a1 + 447) >= 0)
      {
        LOBYTE(v18) = v25;
      }

      else
      {
        v18 = *(a1 + 424);
      }

      goto LABEL_20;
    }
  }

  return result;
}

{
  if (*(a1 + 1) != 1)
  {
    return result;
  }

  v70 = v2;
  v71 = v3;
  if (*a1 != 1)
  {
    return result;
  }

  v6 = *(*(a1 + 8) + 2496);
  v69[0] = *(a2 + 8);
  v69[1] = v6;
  v7 = sub_1D0BBEAAC(a1 + 16, v69);
  if (!v7)
  {
    v66 = 0x100000002;
    v65 = xmmword_1D0E83F60;
    v64 = &unk_1F4CE02B0;
    v67 = v68;
    v68[0] = sub_1D0BBF854;
    v68[1] = sub_1D0BBF854;
    v61 = 0x100000002;
    v60 = xmmword_1D0E83F60;
    v59 = &unk_1F4CE0338;
    v62 = &v63;
    __asm { FMOV            V0.2D, #-1.0 }

    v24 = *(a2 + 8);
    v55 = _Q0;
    v56 = v24;
    v54 = v24;
    v25 = 0.0;
    if (*a2 >= 0.0)
    {
      v25 = *a2;
    }

    v53 = v25;
    v52 = *(a1 + 288);
    v51 = -1.0;
    if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupMeanCn0ProbabilityGivenOutdoor(a1 + 472, &v53, &v52, &v51, v8, v9, v10, v11))
    {
      v50 = 4;
      v31 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupMeanCn0ProbabilityGivenOutdoor failed for signal environment,%hhu");
    }

    else if (v51 < 0.0 || v51 > 1.0 || (*&v51 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v49[0]) = 12;
      v50 = 4;
      v31 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupMeanCn0ProbabilityGivenOutdoor returned invalid probability", v48, v49[0]);
    }

    else
    {
      v58 = v51;
      v51 = -1.0;
      if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupMeanCn0ProbabilityGivenIndoor((a1 + 472), &v53, &v51, v26, v27, v28, v29, v30))
      {
        LOWORD(v49[0]) = 12;
        v50 = 4;
        v31 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupMeanCn0ProbabilityGivenIndoor failed", v48, v49[0]);
      }

      else if (v51 < 0.0 || v51 > 1.0 || (*&v51 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        LOWORD(v49[0]) = 12;
        v50 = 4;
        v31 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupMeanCn0ProbabilityGivenIndoor returned invalid probability", v48, v49[0]);
      }

      else
      {
        v57 = v51;
        *v62 = &v56;
        v53 = *(a2 + 4);
        v51 = -1.0;
        if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupNumSatsProbabilityGivenOutdoor(a1 + 472, &v53, &v52, &v51, v37, v38, v39, v40))
        {
          v50 = 4;
          v31 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupNumSatsProbabilityGivenOutdoor failed for signal environment,%hhu");
        }

        else if (v51 < 0.0 || v51 > 1.0 || (*&v51 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          LOWORD(v49[0]) = 12;
          v50 = 4;
          v31 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupNumSatsProbabilityGivenOutdoor returned invalid probability", v48, v49[0]);
        }

        else
        {
          *(&v55 + 1) = v51;
          v51 = -1.0;
          if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupNumSatsProbabilityGivenIndoor((a1 + 472), &v53, &v51, v42, v43, v44, v45, v46))
          {
            LOWORD(v49[0]) = 12;
            v50 = 4;
            v31 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupNumSatsProbabilityGivenIndoor failed", v48, v49[0]);
          }

          else
          {
            if (v51 >= 0.0 && v51 <= 1.0 && (*&v51 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
            {
              *&v55 = v51;
              v62[1] = &v54;
              sub_1D0BBF10C(a1 + 16, v49);
              v47 = sub_1D0BBF260(a1 + 16, v49, 2, &v64, &v59);
              if (!v47)
              {
                result = *(a2 + 8);
                *(a1 + 152) = result;
                return result;
              }

              LOWORD(v49[0]) = 12;
              v50 = 4;
              cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to update,code,%d", v47);
              if (*(a1 + 447) >= 0)
              {
                LOBYTE(v41) = a1 - 88;
              }

              else
              {
                v41 = *(a1 + 424);
              }

              goto LABEL_22;
            }

            LOWORD(v49[0]) = 12;
            v50 = 4;
            v31 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupNumSatsProbabilityGivenIndoor returned invalid probability", v48, v49[0]);
          }
        }
      }
    }

    if (*(a1 + 447) >= 0)
    {
      LOBYTE(v41) = v31;
    }

    else
    {
      v41 = *(a1 + 424);
    }

LABEL_22:
    cnprint::CNPrinter::Print(v49, &v50, "%s", v32, v33, v34, v35, v36, v41);
    return result;
  }

  LOWORD(v64) = 12;
  LOBYTE(v59) = 4;
  cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to predict,code,%d", v7);
  if (*(a1 + 447) >= 0)
  {
    LOBYTE(v17) = a1 - 88;
  }

  else
  {
    v17 = *(a1 + 424);
  }

  cnprint::CNPrinter::Print(&v64, &v59, "%s", v12, v13, v14, v15, v16, v17);
  return result;
}

{
  if (*(a1 + 1) == 1)
  {
    v44 = v2;
    v45 = v3;
    if (*a1 == 1)
    {
      v6 = *(*(a1 + 8) + 2496);
      v43[0] = *(a2 + 8);
      v43[1] = v6;
      if (sub_1D0BBEAAC(a1 + 16, v43))
      {
        v27[0] = 12;
        v26[0] = 4;
        v11 = a1 - 88;
        cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to predict,code,%d");
LABEL_5:
        if (*(a1 + 447) >= 0)
        {
          LOBYTE(v17) = v11;
        }

        else
        {
          v17 = *(a1 + 424);
        }

LABEL_20:
        cnprint::CNPrinter::Print(v27, v26, "%s", v12, v13, v14, v15, v16, v17);
        return result;
      }

      v40 = 0x100000001;
      *&v18 = 0x100000001;
      *(&v18 + 1) = 0x100000001;
      v39 = v18;
      v38 = &unk_1F4CE0380;
      v41 = &v42;
      v42 = sub_1D0BBF854;
      v35 = 0x100000001;
      v34 = v18;
      v33 = &unk_1F4CDF3D0;
      v36 = &v37;
      v30 = *(a2 + 8);
      v29 = *(a1 + 288);
      v28 = -1.0;
      if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupActivityStateProbabilityGivenOutdoor(a1 + 472, a2, &v29, &v28, v7, v8, v9, v10))
      {
        v27[0] = 12;
        v26[0] = 4;
        v23 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupActivityStateProbabilityGivenOutdoor failed");
      }

      else if (v28 < 0.0 || v28 > 1.0 || (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v27[0] = 12;
        v26[0] = 4;
        v23 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupActivityStateProbabilityGivenOutdoor returned invalid probability");
      }

      else
      {
        v32 = v28;
        v28 = -1.0;
        if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupActivityStateProbabilityGivenIndoor(a1 + 472, a2, &v29, &v28, v19, v20, v21, v22))
        {
          v27[0] = 12;
          v26[0] = 4;
          v23 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupActivityStateProbabilityGivenIndoor failed");
        }

        else
        {
          if (v28 >= 0.0 && v28 <= 1.0 && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            v31 = v28;
            *v36 = &v30;
            sub_1D0BBF10C(a1 + 16, v27);
            sub_1D0BBF168(v26, &v38);
            sub_1D0BBF75C(v25, &v33);
            if (!sub_1D0BBF260(a1 + 16, v27, 1, v26, v25))
            {
              result = *(a2 + 8);
              *(a1 + 152) = result;
              return result;
            }

            v27[0] = 12;
            v26[0] = 4;
            v11 = a1 - 88;
            cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to update,code,%d");
            goto LABEL_5;
          }

          v27[0] = 12;
          v26[0] = 4;
          v23 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupActivityStateProbabilityGivenIndoor returned invalid probability");
        }
      }

      if (*(a1 + 447) >= 0)
      {
        LOBYTE(v17) = v23;
      }

      else
      {
        v17 = *(a1 + 424);
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1D0BBEAAC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 120))
  {
    sub_1D0B894B0(a1 + 64, a1 + 8);
  }

  v4 = *(a1 + 72);
  v5 = *(a1 + 76);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v4 <= v5)
  {
    v8 = *(a1 + 76);
  }

  else
  {
    v8 = *(a1 + 72);
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v7 == 1)
  {
    v60 = 0x100000002;
    v58 = &unk_1F4CE0220;
    v61 = v62;
    v59 = xmmword_1D0E7F490;
    v55 = 0x100000002;
    v53 = &unk_1F4CE0220;
    *&v10.f64[1] = 0x200000002;
    v54 = xmmword_1D0E83F60;
    v56 = v57;
    v10.f64[0] = INFINITY;
    v11 = &v58;
LABEL_22:
    sub_1D0B8930C(v11, &v53, v10);
    goto LABEL_25;
  }

  v12 = *(a1 + 128);
  v55 = 0x100000002;
  v53 = &unk_1F4CE0220;
  v47 = xmmword_1D0E83F60;
  v54 = xmmword_1D0E83F60;
  v56 = v57;
  v13 = sub_1D0B94BA0(a1 + 64, 1, &v53);
  v14 = *v56;
  if (fabs(*v56 + -1.0) > v12)
  {
    if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
    {
      LOWORD(v53) = 2;
      LOBYTE(v58) = 1;
      cnprint::CNPrinter::Print(&v53, &v58, "WARNING: HMM prediction passed a non-normalized probability vector.", v15, v16, v17, v18, v19, 2);
    }

    if ((v8 & 0x80000000) == 0)
    {
      sub_1D0BBEF48(&v58, a1 + 64);
      *&v59 = v8 | 0x100000000;
      DWORD2(v59) = v8;
      HIDWORD(v59) = v8;
      v55 = 0x100000002;
      v53 = &unk_1F4CE0220;
      *&v10.f64[1] = 0x200000002;
      v54 = v47;
      v56 = v57;
      v10.f64[0] = 1.0 / v14;
      goto LABEL_22;
    }

LABEL_43:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  sub_1D0BBEF48(&v53, a1 + 64);
  *&v54 = v8 | 0x100000000;
  DWORD2(v54) = v8;
  HIDWORD(v54) = v8;
LABEL_25:
  sub_1D0B894B0(a1 + 64, &v53);
  *(a1 + 120) = 1;
  v55 = 0x200000002;
  v53 = &unk_1F4CE0268;
  v54 = xmmword_1D0E83F70;
  v56 = v57;
  v26 = sub_1D0BBFE0C(a2, &v53, v20, v21, v22, v23, v24, v25);
  if (v26)
  {
    LOWORD(v58) = 2;
    LOBYTE(v48) = 4;
    cnprint::CNPrinter::Print(&v58, &v48, "ERROR: HMM transition probability function failed.", v27, v28, v29, v30, v31, v47);
    return 27;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_39;
    }

    v33 = 0;
    v34 = 0;
    v35 = v56;
LABEL_29:
    v36 = 0.0;
    v37 = v35;
    v38 = v9;
    while (1)
    {
      v39 = *v37;
      if (*v37 < 0.0 || v39 > 1.0)
      {
        break;
      }

      v36 = v36 + v39;
      ++v37;
      if (!--v38)
      {
        if (fabs(v36 + -1.0) <= *(a1 + 128))
        {
          ++v33;
          v35 += SHIDWORD(v54);
          v34 = v33 >= v9;
          if (v33 != v9)
          {
            goto LABEL_29;
          }
        }

        break;
      }
    }

    if (!v34)
    {
      if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
      {
        LOWORD(v58) = 2;
        LOBYTE(v48) = 1;
        cnprint::CNPrinter::Print(&v58, &v48, "ERROR: HMM transition probability matrix is invalid.", v42, v43, v44, v45, v46, v47);
      }

      return 28;
    }

    else
    {
LABEL_39:
      v60 = 0x100000002;
      v59 = xmmword_1D0E83F60;
      v58 = &unk_1F4CE0220;
      v61 = v62;
      sub_1D0B89390(&v53, a1 + 64, &v58);
      sub_1D0B894B0(a1 + 8, &v58);
      v50 = 0x100000002;
      v48 = &unk_1F4CE0220;
      v49 = xmmword_1D0E83F60;
      v51 = &v52;
      sub_1D0B94BA0(a1 + 8, 1, &v48);
      v41.f64[0] = 1.0 / *v51;
      v60 = 0x100000002;
      v59 = xmmword_1D0E83F60;
      v58 = &unk_1F4CE0220;
      v61 = v62;
      sub_1D0B8930C(a1 + 8, &v58, v41);
      sub_1D0B894B0(a1 + 8, &v58);
      result = 0;
      *(a1 + 120) = 0;
    }
  }

  return result;
}

__n128 sub_1D0BBEF48(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000002;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0220;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 2)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupGnssAvailabilityStateProbabilityGivenOutdoor(uint64_t a1, unsigned __int8 *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (v9 < 4)
  {
    result = 0;
    v11 = dbl_1D0E82D30[v9];
  }

  else
  {
    v13 = 12;
    v12 = 4;
    cnprint::CNPrinter::Print(&v13, &v12, "LookupGnssAvailabilityStateProbabilityGivenOutdoor(),index out of bound,%lu", a4, a5, a6, a7, a8, v9);
    result = 0xFFFFFFFFLL;
    v11 = -1.0;
  }

  *a3 = v11;
  return result;
}

double sub_1D0BBF10C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1D0BBF168(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000002;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE02B0;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v2 * v3;
  *(result + 20) = v3;
  *(result + 32) = result + 40;
  if (v3 > 2)
  {
    v7 = "this->max_num_rows_ >= A.NumRows()";
    v8 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v7 = "this->max_num_cols_ >= A.NumCols()";
    v8 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v8, v7);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      *(*(result + 32) + v5) = *(*(a2 + 32) + v5);
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_1D0BBF260(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 128);
  if (*(a2 + 8))
  {
    v10 = *(a2 + 12) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v73 = 0x100000002;
    v71 = &unk_1F4CE0220;
    v74 = v75;
    v72 = xmmword_1D0E83F60;
    memset_pattern16(v75, &unk_1D0E7F4B0, 0x10uLL);
    v78 = 0x100000002;
    *&v11.f64[1] = 0x200000002;
    v77 = xmmword_1D0E83F60;
    v76 = &unk_1F4CE0220;
    v79 = v80;
    v11.f64[0] = 0.5;
  }

  else
  {
    v78 = 0x100000002;
    v63 = xmmword_1D0E83F60;
    v77 = xmmword_1D0E83F60;
    v76 = &unk_1F4CE0220;
    v79 = v80;
    v13 = sub_1D0B94BA0(a2, 1, &v76);
    v14 = *v79;
    if (fabs(*v79 + -1.0) <= v9)
    {
      sub_1D0BBEF48(&v76, a2);
      v77 = xmmword_1D0E83F60;
      goto LABEL_13;
    }

    if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
    {
      LOWORD(v76) = 2;
      LOBYTE(v71) = 1;
      cnprint::CNPrinter::Print(&v76, &v71, "WARNING: HMM update passed a non-normalized probability vector.", v15, v16, v17, v18, v19, 2);
    }

    sub_1D0BBEF48(&v71, a2);
    *&v11.f64[1] = 0x200000002;
    v72 = v63;
    v78 = 0x100000002;
    v77 = v63;
    v76 = &unk_1F4CE0220;
    v79 = v80;
    v11.f64[0] = 1.0 / v14;
  }

  sub_1D0B8930C(&v71, &v76, v11);
LABEL_13:
  sub_1D0B894B0(a1 + 8, &v76);
  sub_1D0BBEF48(&v76, a1 + 8);
  v20 = 0;
  v21 = xmmword_1D0E83F60;
  v64 = xmmword_1D0E83F60;
  while (1)
  {
    v22 = *(*(a4 + 32) + 8 * v20);
    v73 = 0x100000002;
    v71 = &unk_1F4CE0220;
    v72 = v21;
    v74 = v75;
    v23 = v22(*(*(a5 + 32) + 8 * v20), &v71);
    if (v23)
    {
      break;
    }

    v30 = 0;
    v31 = 0;
    v32 = 0.0;
    v33 = v74;
    do
    {
      v34 = *&v74[8 * v31];
      if (v34 < 0.0 || v34 > 1.0)
      {
        LOWORD(v65) = 2;
        v70 = 4;
        v62 = "ERROR: HMM emission probability matrix is invalid.";
LABEL_41:
        cnprint::CNPrinter::Print(&v65, &v70, v62, v24, v25, v26, v27, v28, v64);
        return 30;
      }

      v36 = v30;
      v32 = v32 + v34;
      v30 = 1;
      v31 = 1;
    }

    while ((v36 & 1) == 0);
    if (fabs(v32) <= v9)
    {
      LOWORD(v65) = 2;
      v70 = 4;
      v62 = "ERROR: HMM emission probability matrix is null matrix";
      goto LABEL_41;
    }

    v37 = 0;
    v38 = v79;
    do
    {
      v38[v37] = *&v33[v37 * 8] * v38[v37];
      ++v37;
    }

    while (v37 != 2);
    v39 = DWORD1(v77);
    if (DWORD1(v77))
    {
      v40 = 0;
      v41 = v77;
      v42 = v77 - 1;
      v43 = 1;
      do
      {
        v44 = v38[v41 * v40];
        v45 = v43;
        v46 = v42;
        if (v41 >= 2)
        {
          do
          {
            v44 = v44 + v38[v45++];
            --v46;
          }

          while (v46);
        }

        v69[v40++] = v44;
        v43 += v41;
      }

      while (v40 != v39);
    }

    v29.n128_f64[0] = v69[0];
    if (fabs(v69[0]) < 2.22044605e-16)
    {
      if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
      {
        LOWORD(v65) = 2;
        v70 = 1;
        cnprint::CNPrinter::Print(&v65, &v70, "HMM state is null vector after update; revert to input state", v47, v48, v49, v50, v51, v64);
      }

      v29 = sub_1D0B894B0(&v76, a1 + 8);
      v52 = DWORD1(v77);
      if (DWORD1(v77))
      {
        v53 = 0;
        v54 = v77;
        v55 = v79;
        v56 = v77 - 1;
        v57 = 1;
        do
        {
          v58 = v55[v54 * v53];
          v59 = v57;
          v60 = v56;
          if (v54 >= 2)
          {
            do
            {
              v58 = v58 + v55[v59++];
              --v60;
            }

            while (v60);
          }

          v69[v53++] = v58;
          v57 += v54;
        }

        while (v53 != v52);
      }

      v29.n128_f64[0] = v69[0];
    }

    v67 = 0x100000002;
    v65 = &unk_1F4CE0220;
    v66 = v64;
    v68 = v69;
    v29.n128_f64[0] = 1.0 / v29.n128_f64[0];
    sub_1D0B8930C(&v76, &v65, v29);
    sub_1D0B894B0(&v76, &v65);
    v21 = v64;
    if (++v20 == a3)
    {
      sub_1D0B894B0(a1 + 64, &v76);
      result = 0;
      *(a1 + 120) = 1;
      return result;
    }
  }

  LOWORD(v65) = 2;
  v70 = 4;
  cnprint::CNPrinter::Print(&v65, &v70, "ERROR: HMM emission function failed.", v24, v25, v26, v27, v28, v64);
  return 29;
}

uint64_t sub_1D0BBF75C(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000002;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE0338;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v2 * v3;
  *(result + 20) = v3;
  *(result + 32) = result + 40;
  if (v3 > 2)
  {
    v7 = "this->max_num_rows_ >= A.NumRows()";
    v8 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v7 = "this->max_num_cols_ >= A.NumCols()";
    v8 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v8, v7);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      *(*(result + 32) + v5) = *(*(a2 + 32) + v5);
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_1D0BBF854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void raven::RavenPositionContextEstimator::UpdatePositionContextStateEvent(raven::RavenPositionContextEstimator *this)
{
  *(this + 19) = *(this + 152);
  v6 = 0;
  StateProbability = raven::RavenPositionContextEstimator::GetStateProbability(this, &v6);
  v5 = 1;
  v3 = raven::RavenPositionContextEstimator::GetStateProbability(this, &v5);
  *(this + 51) = StateProbability;
  *(this + 52) = v3;
  v4 = 2 * (v3 >= 0.95);
  if (StateProbability >= 0.95)
  {
    v4 = 1;
  }

  *(this + 400) = v4;
}

double raven::RavenPositionContextEstimator::GetStateProbability(uint64_t a1, int *a2)
{
  if (*a1 != 1)
  {
    return NAN;
  }

  v11[4] = v2;
  v11[5] = v3;
  v5 = 64;
  if (!*(a1 + 136))
  {
    v5 = 8;
  }

  v9 = 0x100000002;
  v7 = &unk_1F4CE0220;
  v8 = xmmword_1D0E83F60;
  v10 = v11;
  sub_1D0B894B0(&v7, a1 + v5 + 16);
  return *&v10[*a2];
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v6 != 3)
        {
          if (v6 == 4 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_48;
          }

          goto LABEL_22;
        }

        if (v7 != 1)
        {
          goto LABEL_22;
        }

LABEL_44:
        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v25;
        *(this + 9) |= 4u;
        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v23 < v10 && *v23 == 32)
        {
          v11 = v23 + 1;
          *(a2 + 1) = v11;
LABEL_48:
          v25[0] = 0;
          if (v11 >= v10 || (v24 = *v11, (v24 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25);
            if (!result)
            {
              return result;
            }

            v24 = v25[0];
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v24 <= 3)
          {
            *(this + 9) |= 8u;
            *(this + 7) = v24;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && (TagFallback & 7) == 0)
      {
        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_34;
      }

LABEL_22:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_22;
    }

    *(this + 9) |= 1u;
    v12 = *(this + 1);
    if (!v12)
    {
      operator new();
    }

    v25[0] = 0;
    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25))
      {
        return 0;
      }
    }

    else
    {
      v25[0] = *v13;
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
    v8 = *(a2 + 2);
    if (v19 < v8 && *v19 == 16)
    {
      v9 = v19 + 1;
      *(a2 + 1) = v9;
LABEL_34:
      v25[0] = 0;
      if (v9 >= v8 || (v20 = *v9, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25);
        if (!result)
        {
          return result;
        }

        v20 = v25[0];
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v20 <= 3)
      {
        *(this + 9) |= 2u;
        *(this + 6) = v20;
      }

      v22 = *(a2 + 1);
      if (v22 < *(a2 + 2) && *v22 == 25)
      {
        *(a2 + 1) = v22 + 1;
        goto LABEL_44;
      }
    }
  }
}

uint64_t sub_1D0BBFE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v8 >= 0.0 ? (v9 = v8 <= 1.0) : (v9 = 0), v9))
  {
    v11 = *(a1 + 24);
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v11 >= 0.0 && v11 <= 1.0)
    {
      result = 0;
      *(a2 + 8) = xmmword_1D0E83F70;
      v13 = *(a2 + 32);
      *v13 = v8;
      v13[1] = 1.0 - v8;
      v13[2] = 1.0 - v11;
      v13[3] = v11;
      return result;
    }

    v19 = 12;
    v18 = 4;
    v15 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v19, &v18, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v15));
  }

  else
  {
    v17 = 12;
    v16 = 4;
    v14 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v17, &v16, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v14));
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupGnssAvailabilityStateProbabilityGivenIndoor(uint64_t a1, unsigned __int8 *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (v9 < 4)
  {
    result = 0;
    v11 = dbl_1D0E82D48[v9];
  }

  else
  {
    v13 = 12;
    v12 = 4;
    cnprint::CNPrinter::Print(&v13, &v12, "LookupGnssAvailabilityStateProbabilityGivenIndoor(),index out of bound,%lu", a4, a5, a6, a7, a8, v9);
    result = 0xFFFFFFFFLL;
    v11 = -1.0;
  }

  *a3 = v11;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void *sub_1D0BC0038(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_1D0BCABDC(v7);
  return v4;
}

void sub_1D0BC00C0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_1D0B7CAB8(v3);
    }

    v1 -= 16;
  }
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::GnssPreprocessedMeasurementsEvent *a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  v326 = *MEMORY[0x1E69E9840];
  if (*(v4 + 57) != 1 || (v6 = v4, *(v4 + 58) != 1) || (v7 = v5, raven::RavenEstimator::HandleGnssPreprocessedMeasurementsEvent(v4, v5)) || (v285 = (*(*v7 + 16))(v7), v286 = v8, updated = raven::RavenConvergenceEstimator::UpdateClockOffsetEstimateIfNecessary(v6, (v7 + 6), &v285), !updated))
  {
    v27 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  if ((v7[22] & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(updated) <= 1)
    {
      LOWORD(v256.__r_.__value_.__l.__data_) = 12;
      LOBYTE(v239) = 1;
      v285 = (*(*v7 + 16))(v7);
      v286 = v12;
      cnprint::CNLogFormatter::FormatGeneral(v6 + 2712, &v285, "Encountered GnssPreprocessedMeasurementsEvent with no oscillator model.");
      if (*(v6 + 2735) >= 0)
      {
        LOBYTE(v18) = v6 - 104;
      }

      else
      {
        v18 = *(v6 + 2712);
      }

      cnprint::CNPrinter::Print(&v256, &v239, "%s", v13, v14, v15, v16, v17, v18);
    }

    raven::RavenConvergenceEstimator::ResetOscillatorStates(v6);
  }

  v311 = 0uLL;
  v312 = 0;
  v314 = 0;
  v313 = 0;
  v315 = 0;
  v317 = 0;
  v316 = 0;
  v318 = 0;
  v320 = 0;
  v319 = 0;
  v321 = 0x7FF8000000000000;
  if (*(*(v6 + 1168) + 3828) != 1 || (v10.i64[0] = 0x3EB0C6F7A0B5ED8DLL, !raven::RavenEstimator::AreGnssMeasurementsAtSameTime(v6, v7, &v311, v10, v11)))
  {
    v248 = &v248;
    v249 = &v248;
    v250 = 0;
    goto LABEL_22;
  }

  sub_1D0BCAF88(&v285, v6 + 2864);
  v307 = *(v6 + 8432);
  v308 = *(v6 + 8448);
  v309 = *(v6 + 8464);
  v310 = *(v6 + 8480);
  v304 = *(v6 + 8384);
  v305 = *(v6 + 8400);
  v306 = *(v6 + 8416);
  v300 = v306;
  v301 = v307;
  v302 = v308;
  v298 = v304;
  v299 = v305;
  v303 = *(v6 + 8464);
  v297 = 0;
  v19 = (v6 + 80);
  *&v256.__r_.__value_.__l.__data_ = *(v6 + 80);
  v20 = CNTimeSpan::operator-(&v311, &v256, *&v256.__r_.__value_.__l.__data_, v308);
  v24 = v20;
  v25 = v21;
  if (!v20 && (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v20)
  {
    if (v21 >= 0.0)
    {
      goto LABEL_18;
    }

LABEL_122:
    if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
    {
      LOWORD(v239) = 12;
      v233[0] = 1;
      v256.__r_.__value_.__r.__words[0] = (*(*v7 + 16))(v7);
      v256.__r_.__value_.__l.__size_ = v149;
      v150 = cnprint::CNLogFormatter::FormatGeneral(v6 + 2712, &v256, "GNSS measurement selection: negative prediction interval,dt,%.3lf", v25 + v24);
      if (*(v6 + 2735) >= 0)
      {
        LOBYTE(v156) = v150;
      }

      else
      {
        v156 = *(v6 + 2712);
      }

      cnprint::CNPrinter::Print(&v239, v233, "%s", v151, v152, v153, v154, v155, v156);
    }

    v26 = 0;
    goto LABEL_128;
  }

  if (v20 < 0)
  {
    goto LABEL_122;
  }

LABEL_18:
  v26 = 1;
LABEL_128:
  v158 = *(v6 + 88);
  v256.__r_.__value_.__r.__words[0] = *(v6 + 80);
  v157 = v256.__r_.__value_.__r.__words[0];
  v256.__r_.__value_.__l.__size_ = v158;
  v159 = CNTimeSpan::operator-(&v311, &v256, v22, v23);
  v161 = v160;
  v162 = *(v6 + 1168);
  v163 = *(v162 + 872);
  *&v325[0] = v157;
  *(&v325[0] + 1) = v158;
  v249 = 0;
  v248 = 0;
  *v164.i64 = v163;
  CNTimeSpan::SetTimeSpan(&v248, 0, v164, v165);
  v166.i64[0] = *(v162 + 880);
  v284[1] = 0;
  v284[0] = 0;
  *v168.i64 = CNTimeSpan::SetTimeSpan(v284, 0, v166, v167);
  if (!v26)
  {
    goto LABEL_161;
  }

  *v169.i64 = v161;
  *v168.i64 = (v161 + v159) / v163;
  v170 = vcvtpd_s64_f64(*v168.i64);
  if (v170 < 1)
  {
    goto LABEL_161;
  }

  v223 = (v6 + 2712);
  v171 = 1;
  v226 = vdupq_n_s64(0x7FF8000000000000uLL);
  v168 = xmmword_1D0E83F60;
  while (1)
  {
    v283[0] = CNTimeSpan::operator+(v325, &v248, v168, v169);
    v283[1] = v172;
    v175 = CNTimeSpan::operator+(v283, v284, v173, v174);
    if (!v175 && (*&v176 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_136:
      v177.i64[0] = *(&v311 + 1);
LABEL_137:
      v178 = *v177.i64 <= v176;
      goto LABEL_139;
    }

    if (!v311)
    {
      v177.i64[0] = *(&v311 + 1);
      if ((*(&v311 + 1) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_137;
      }
    }

    if (v175 == v311)
    {
      goto LABEL_136;
    }

    v178 = v175 > v311;
LABEL_139:
    v179 = v283;
    if (v178)
    {
      v179 = &v311;
    }

    v282 = *v179;
    v239 = 0uLL;
    *(v240 + 8) = v226;
    *(&v240[1] + 8) = v226;
    EstimatorPredictAndUpdateArguments = raven::RavenConvergenceEstimator::GetEstimatorPredictAndUpdateArguments(v6, v325, &v282, &v239, *v226.i64, v177);
    if (!EstimatorPredictAndUpdateArguments)
    {
      break;
    }

    data = 0x800000008;
    *&v256.__r_.__value_.__r.__words[1] = xmmword_1D0E84510;
    v256.__r_.__value_.__r.__words[0] = &unk_1F4CE43B0;
    *&v258 = &v258 + 8;
    if (sub_1D0B9E8C4(v6, &v239, &v256, v181))
    {
      goto LABEL_159;
    }

    *&v233[24] = 0x200000002;
    *v233 = &unk_1F4CE14D8;
    *&v233[8] = xmmword_1D0E83F70;
    *&v233[32] = &v233[40];
    *&v233[40] = xmmword_1D0E84550;
    *&v322[24] = 0x100000002;
    *&v322[8] = xmmword_1D0E83F60;
    *v322 = &unk_1F4CE1520;
    v323 = v324;
    v324[0] = sub_1D0BA4C04;
    v324[1] = sub_1D0BA55E4;
    v255 = *&v240[0];
    v254 = *&v240[0];
    *&v236[24] = 0x100000002;
    *&v236[8] = xmmword_1D0E83F60;
    *v236 = &unk_1F4CE15A8;
    v237 = v238;
    v238[0] = &v255;
    v238[1] = &v254;
    v182 = sub_1D0BA19BC(&v285, &v256, v233, v322);
    if (v182)
    {
      v253 = 12;
      v252 = 4;
      v251[0] = (*(*v7 + 16))(v7);
      v251[1] = v191;
      cnprint::CNLogFormatter::FormatGeneral(v223, v251, "GNSS measurement selection: could not predict filter,code,%d", v182);
      if (*(v6 + 2735) >= 0)
      {
        LOBYTE(v197) = v6 - 104;
      }

      else
      {
        v197 = *(v6 + 2712);
      }

      cnprint::CNPrinter::Print(&v253, &v252, "%s", v192, v193, v194, v195, v196, v197);
LABEL_159:
      v26 = 0;
LABEL_160:
      v19 = (v6 + 80);
      goto LABEL_161;
    }

    v168 = v282;
    v325[0] = v282;
    v183 = v171++ >= v170 || v178;
    if (v183)
    {
      v26 = 1;
      goto LABEL_160;
    }
  }

  v19 = (v6 + 80);
  if (cnprint::CNPrinter::GetLogLevel(EstimatorPredictAndUpdateArguments) <= 1)
  {
    *v233 = 12;
    v322[0] = 1;
    v256.__r_.__value_.__r.__words[0] = (*(*v7 + 16))(v7);
    v256.__r_.__value_.__l.__size_ = v184;
    cnprint::CNLogFormatter::FormatGeneral(v223, &v256, "GNSS measurement selection: could not get predict and update arguments");
    if (*(v6 + 2735) >= 0)
    {
      LOBYTE(v190) = v6 - 104;
    }

    else
    {
      v190 = *(v6 + 2712);
    }

    cnprint::CNPrinter::Print(v233, v322, "%s", v185, v186, v187, v188, v189, v190);
  }

  v26 = 0;
LABEL_161:
  raven::PopulateAllTimeFields(&v311, v6 + 136, v168, v169);
  if (*(v6 + 1208) == 1)
  {
    v235 = *(v6 + 1400);
    v198 = *(v6 + 1368);
    *&v233[32] = *(v6 + 1352);
    *&v233[48] = v198;
    v234 = *(v6 + 1384);
    v199 = *(v6 + 1336);
    *v233 = *(v6 + 1320);
    *&v233[16] = v199;
  }

  else
  {
    *v233 = 0;
    *&v233[8] = 0x3FF0000000000000;
    memset(&v233[16], 0, 48);
    v234 = 0u;
    v235 = 0;
  }

  if (*(v6 + 2592) == 1)
  {
    v200 = *(v6 + 2704);
  }

  else
  {
    v200 = 0;
  }

  LOBYTE(v283[0]) = v200;
  if (*(v6 + 1848) == 1)
  {
    v323 = *(v6 + 1992);
    v201 = *(v6 + 1976);
    *v322 = *(v6 + 1960);
    *&v322[16] = v201;
  }

  else
  {
    *v322 = 0;
    *&v322[8] = 0x3FF0000000000000;
    *&v322[24] = 0;
    v323 = 0;
    *&v322[16] = 0;
  }

  if (*(v6 + 2000) == 1)
  {
    v202 = *(v6 + 2128);
    *v236 = *(v6 + 2112);
    *&v236[16] = v202;
    v237 = *(v6 + 2144);
  }

  else
  {
    *v236 = 0;
    *&v236[8] = 0x3FF0000000000000;
    *&v236[24] = 0;
    v237 = 0;
    *&v236[16] = 0;
  }

  if (v26)
  {
    sub_1D0BBDAB8(&v285, &v239);
    sub_1D0BA5FC4(&v285, &v256);
    v203 = sub_1D0BC1CEC(v6 + 5928, &v311, &v239, &v256, v233, v283, v322, v236);
  }

  else
  {
    v203 = 0;
  }

  sub_1D0BCB680(&v285);
  v248 = &v248;
  v249 = &v248;
  v250 = 0;
  if (!v203)
  {
    goto LABEL_22;
  }

  LOBYTE(v285) = 0;
  LOBYTE(v286) = 0;
  v204 = raven::RavenSequentialGNSSMeasurementSelector::SelectMeasurements(v6 + 5928, v7, &v248, &v285);
  v207 = v204;
  if ((v204 & 1) != 0 && v286 == 1)
  {
    v208 = v285;
    v256.__r_.__value_.__r.__words[0] = (*(*v7 + 16))(v7);
    v256.__r_.__value_.__l.__size_ = v209;
    v204 = raven::RavenConvergenceEstimator::AdjustClockOffset(v6, &v256, *&v208);
    if ((v204 & 1) == 0)
    {
LABEL_183:
      v27 = 0xFFFFFFFFLL;
      goto LABEL_184;
    }
  }

  if (*(*(v6 + 1168) + 3369) == 1 && *(v6 + 288) < 0x1Fu)
  {
    v256.__r_.__value_.__r.__words[0] = CNTimeSpan::operator-(v19, (v6 + 64), v205, v206);
    v256.__r_.__value_.__l.__size_ = v210;
    v204 = raven::RavenEstimator::UpdateAggressiveFlooringOfOutputUncertaintyData(v6, &v256, v6 + 2152, v7[23], v211, v212);
  }

  else
  {
    *(v6 + 8352) = 0;
    *(v6 + 280) = 0;
  }

  LODWORD(v256.__r_.__value_.__l.__data_) = 1;
  LODWORD(v239) = 5;
  ITRCount = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v204, (v6 + 7392), &v256, &v239);
  v214 = ITRCount;
  LODWORD(v256.__r_.__value_.__l.__data_) = 1;
  LODWORD(v239) = 4;
  v215 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(ITRCount, (v6 + 7392), &v256, &v239);
  v216 = v215;
  v217 = v215 + v214;
  *(v6 + 312) = v217 - *(v6 + 8368);
  LODWORD(v256.__r_.__value_.__l.__data_) = 1;
  LODWORD(v239) = 3;
  UnprocessedMSRData = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v215, (v6 + 7392), &v256, &v239);
  *(v6 + 316) = UnprocessedMSRData - *(v6 + 8372);
  if (v217)
  {
    *(v6 + 320) = v216 / v217;
  }

  if ((v207 & 1) == 0)
  {
LABEL_22:
    UnprocessedMSRData = raven::RavenSequentialGNSSMeasurementSelector::GetUnprocessedMSRData(v6 + 5928, v7, &v248);
    if (UnprocessedMSRData)
    {
      goto LABEL_23;
    }

    goto LABEL_183;
  }

LABEL_23:
  v31 = v249;
  if (v249 != &v248)
  {
    v32 = 0;
    v225 = v6 + 2712;
    v224 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v33 = v31 + 2;
      v34 = v31[2];
      v35 = *(v31 + 48);
      if ((v35 - 1) >= 2)
      {
        if (v35 == 3)
        {
          ++v32;
        }

        else
        {
          raven::RavenSequentialGNSSMeasurementSelector::GetFinalGnssObservable(v6 + 5928, (v31 + 2), &v239);
          if (v247)
          {
            *&v236[24] = 0x100000003;
            *&v36 = 0x100000001;
            *(&v36 + 1) = 0x100000001;
            *&v236[8] = v36;
            *v236 = &unk_1F4CDEB28;
            v237 = v238;
            *&v233[24] = 0x300000003;
            *v233 = &unk_1F4CD5DD0;
            *&v233[8] = v36;
            *&v233[32] = &v233[40];
            sub_1D0B751F4(&v256, &unk_1D0ED80C5);
            LOBYTE(data) = 0;
            HIDWORD(data) = -1;
            v258 = 0u;
            v259 = 0u;
            v260 = 0u;
            v261 = 0u;
            v262 = 0u;
            *&v263 = 0;
            *(&v263 + 1) = 0x7FF8000000000000;
            LODWORD(v264) = 0;
            BYTE4(v264) = 0;
            *(&v264 + 1) = 0x7FF8000000000000;
            *&v265[8] = v224;
            *&v265[24] = v224;
            *&v265[40] = v224;
            *v265 = 2143289344;
            *&v265[56] = 2143289344;
            v265[60] = 0;
            LOBYTE(v266) = 0;
            BYTE4(v266) = 0;
            BYTE8(v266) = 0;
            WORD6(v266) = 0;
            BYTE14(v266) = 1;
            v267 = v224;
            v268 = &unk_1F4CDFE98;
            sub_1D0B751F4(&v269, &unk_1D0ED80C5);
            LOBYTE(v270) = 0;
            HIDWORD(v270) = -1;
            v271 = 0u;
            v272 = 0u;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v276 = 0u;
            v277 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
            v281 = 0u;
            v37 = *v33;
            *&v38 = 0x100000001;
            *(&v38 + 1) = 0x100000001;
            *&v236[8] = v38;
            *&v233[8] = v38;
            *v237 = *(&v241 + 1);
            **&v233[32] = (*(&v244 + 2) * *(&v244 + 2));
            *&v265[48] = v244;
            v266 = v245;
            v267 = v246;
            v264 = v240[5];
            *v265 = v241;
            *&v265[16] = v242;
            *&v265[32] = v243;
            v260 = v240[1];
            v261 = v240[2];
            v262 = v240[3];
            v263 = v240[4];
            v258 = v239;
            v259 = v240[0];
            std::string::operator=(&v256, v34);
            data = v34[1].__r_.__value_.__l.__data_;
            UnprocessedMSRData = std::string::operator=(&v269, (v37 + 40));
            v270 = *(v37 + 64);
            v39 = *(v37 + 72);
            v40 = *(v37 + 104);
            v272 = *(v37 + 88);
            v273 = v40;
            v271 = v39;
            v41 = *(v37 + 120);
            v42 = *(v37 + 136);
            v43 = *(v37 + 168);
            v276 = *(v37 + 152);
            v277 = v43;
            v274 = v41;
            v275 = v42;
            v44 = *(v37 + 184);
            v45 = *(v37 + 200);
            v46 = *(v37 + 232);
            v280 = *(v37 + 216);
            v281 = v46;
            v278 = v44;
            v279 = v45;
            v47 = *(v31[3] + 96);
            if ((v47 - 3) < 2)
            {
              sub_1D0BC3810(&v285, &v256);
              v289 = *v31[3];
              v64 = v286;
              v65 = sub_1D0BCFAB8(v34);
              sub_1D0B751F4(v227, v65);
              sub_1D0BA01A8(&v285, v64, v227);
              if (v228 < 0)
              {
                operator delete(v227[0]);
              }

              v71 = *&v233[8];
              if ((*&v233[8] & 0x80000000) != 0)
              {
                __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
              }

              *&v322[24] = 0x100000003;
              *v322 = &unk_1F4CDEB28;
              v72 = v324;
              v323 = v324;
              *&v322[8] = *&v233[8];
              *&v322[12] = 1;
              *&v322[16] = *&v233[8];
              *&v322[20] = *&v233[8];
              if (*&v233[8] > 3u)
              {
                bzero(v324, 16 * ((*&v233[8] - 1) >> 1));
                v86 = &v322[8 * v71 + 24];
                *v86 = 0;
                v86[1] = 0;
              }

              else if (*&v233[8])
              {
                bzero(v324, 8 * *&v233[8]);
              }

              if (*(v6 + 8560))
              {
                if (*(v6 + 14496) == 174)
                {
                  LOWORD(v325[0]) = 2;
                  LOBYTE(v284[0]) = 2;
                  v218 = *(&v289 + 1) + v289;
                  cnprint::CNPrinter::Print(v325, v284, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v66, v67, v68, v69, v70, SLOBYTE(v218));
                }

                else if (*(v6 + 8561) == 1)
                {
                  if (cnprint::CNPrinter::GetLogLevel(v72) <= 1)
                  {
                    LOWORD(v325[0]) = 2;
                    LOBYTE(v284[0]) = 1;
                    v220 = *(&v289 + 1) + v289;
                    cnprint::CNPrinter::Print(v325, v284, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v92, v93, v94, v95, v96, SLOBYTE(v220));
                  }
                }

                else
                {
                  v97 = sub_1D0B7C8AC(&v289, (v6 + 8568));
                  if (!v97)
                  {
                    v325[0] = 0uLL;
                    sub_1D0BCA1D4();
                  }

                  if (cnprint::CNPrinter::GetLogLevel(v97) <= 1)
                  {
                    LOWORD(v325[0]) = 2;
                    LOBYTE(v284[0]) = 1;
                    v221 = *(&v289 + 1) + v289;
                    v222 = *(v6 + 8576) + *(v6 + 8568);
                    cnprint::CNPrinter::Print(v325, v284, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v98, v99, v100, v101, v102, SLOBYTE(v221));
                  }
                }
              }

              else if (cnprint::CNPrinter::GetLogLevel(v72) <= 1)
              {
                LOWORD(v325[0]) = 2;
                LOBYTE(v284[0]) = 1;
                v219 = *(&v289 + 1) + v289;
                cnprint::CNPrinter::Print(v325, v284, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v87, v88, v89, v90, v91, SLOBYTE(v219));
              }

              LOWORD(v325[0]) = 12;
              LOBYTE(v284[0]) = 4;
              *v322 = (*(*v7 + 16))(v7);
              *&v322[8] = v103;
              v104 = sub_1D0BCFAB8(v34);
              cnprint::CNLogFormatter::FormatGeneral(v225, v322, "Could not add measurement - average Doppler for %s", v104);
              LOBYTE(v110) = v6 - 104;
              if (*(v6 + 2735) < 0)
              {
                v110 = *(v6 + 2712);
              }

              cnprint::CNPrinter::Print(v325, v284, "%s", v105, v106, v107, v108, v109, v110);
              v285 = &unk_1F4CE4300;
              if (v288 < 0)
              {
                operator delete(v287);
              }

              v292 = &unk_1F4CDFE98;
              if (v294 < 0)
              {
                operator delete(v293);
              }

              v292 = &unk_1F4CD5F70;
              if (v291 < 0)
              {
                operator delete(v290);
              }
            }

            else if (v47 == 2)
            {
              sub_1D0C4E8C4(&v285, &v256);
              v289 = *v31[3];
              v73 = v286;
              v74 = sub_1D0BCFAB8(v34);
              sub_1D0B751F4(v229, v74);
              sub_1D0BA01A8(&v285, v73, v229);
              if (v230 < 0)
              {
                operator delete(v229[0]);
              }

              if (sub_1D0C4FD4C(v6 + 8560, &v289, v236, v233, &v285, v75, v76, v77))
              {
                LOWORD(v325[0]) = 12;
                LOBYTE(v284[0]) = 4;
                *v322 = (*(*v7 + 16))(v7);
                *&v322[8] = v78;
                v79 = sub_1D0BCFAB8(v34);
                cnprint::CNLogFormatter::FormatGeneral(v225, v322, "Could not add measurement - Doppler for %s", v79);
                LOBYTE(v85) = v6 - 104;
                if (*(v6 + 2735) < 0)
                {
                  v85 = *(v6 + 2712);
                }

                cnprint::CNPrinter::Print(v325, v284, "%s", v80, v81, v82, v83, v84, v85);
              }

              UnprocessedMSRData = sub_1D0C504EC(&v285);
            }

            else if (v47 == 1)
            {
              sub_1D0BCF90C(&v285, &v256);
              v289 = *v31[3];
              v48 = v286;
              v49 = sub_1D0BCFAB8(v34);
              sub_1D0B751F4(__p, v49);
              sub_1D0BA01A8(&v285, v48, __p);
              if (v232 < 0)
              {
                operator delete(__p[0]);
              }

              v54 = *(*v33 + 312);
              v53 = *(*v33 + 320);
              if (v53)
              {
                atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v295 = v54;
              v55 = v296;
              v296 = v53;
              if (v55)
              {
                sub_1D0B7CAB8(v55);
              }

              if (sub_1D0BC9B98(v6 + 8560, &v289, v236, v233, &v285, v50, v51, v52))
              {
                LOWORD(v325[0]) = 12;
                LOBYTE(v284[0]) = 4;
                *v322 = (*(*v7 + 16))(v7);
                *&v322[8] = v56;
                v57 = sub_1D0BCFAB8(v34);
                cnprint::CNLogFormatter::FormatGeneral(v225, v322, "Could not add measurement - PSR for %s", v57);
                LOBYTE(v63) = v6 - 104;
                if (*(v6 + 2735) < 0)
                {
                  v63 = *(v6 + 2712);
                }

                cnprint::CNPrinter::Print(v325, v284, "%s", v58, v59, v60, v61, v62, v63);
              }

              UnprocessedMSRData = sub_1D0BCA100(&v285);
            }

            v268 = &unk_1F4CDFE98;
            if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v269.__r_.__value_.__l.__data_);
            }

            v268 = &unk_1F4CD5F70;
            if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v256.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v31 = v31[1];
    }

    while (v31 != &v248);
    if (v32)
    {
      v111 = 1;
      v112 = v32 / *(*(v6 + 1168) + 1472);
      do
      {
        UnprocessedMSRData = sub_1D0C51528(v6 + 8488);
        if (UnprocessedMSRData)
        {
          break;
        }
      }

      while (v112 > v111++);
    }
  }

  LogLevel = cnprint::CNPrinter::GetLogLevel(UnprocessedMSRData);
  if (LogLevel <= 1)
  {
    LOWORD(v239) = 12;
    v233[0] = 1;
    v256.__r_.__value_.__r.__words[0] = (*(*v7 + 16))(v7);
    v256.__r_.__value_.__l.__size_ = v115;
    raven::RavenSequentialGNSSMeasurementSelector::StringOfL1MeasurementCountsByConstellation((v6 + 5928), &v285);
    v116 = SHIBYTE(v287) >= 0 ? &v285 : v285;
    v117 = cnprint::CNLogFormatter::FormatGeneral(v6 + 2712, &v256, "%s", v116);
    if (*(v6 + 2735) >= 0)
    {
      LOBYTE(v123) = v117;
    }

    else
    {
      v123 = *(v6 + 2712);
    }

    cnprint::CNPrinter::Print(&v239, v233, "%s", v118, v119, v120, v121, v122, v123);
    if (SHIBYTE(v287) < 0)
    {
      operator delete(v285);
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v239) = 12;
    v233[0] = 1;
    v256.__r_.__value_.__r.__words[0] = (*(*v7 + 16))(v7);
    v256.__r_.__value_.__l.__size_ = v124;
    raven::RavenSequentialGNSSMeasurementSelector::StringOfL5MeasurementCountsByConstellation((v6 + 5928), &v285);
    v125 = SHIBYTE(v287) >= 0 ? &v285 : v285;
    v126 = cnprint::CNLogFormatter::FormatGeneral(v6 + 2712, &v256, "%s", v125);
    if (*(v6 + 2735) >= 0)
    {
      LOBYTE(v132) = v126;
    }

    else
    {
      v132 = *(v6 + 2712);
    }

    cnprint::CNPrinter::Print(&v239, v233, "%s", v127, v128, v129, v130, v131, v132);
    if (SHIBYTE(v287) < 0)
    {
      operator delete(v285);
    }
  }

  LOWORD(v239) = 12;
  v233[0] = 2;
  v256.__r_.__value_.__r.__words[0] = (*(*v7 + 16))(v7);
  v256.__r_.__value_.__l.__size_ = v133;
  raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCounts((v6 + 5928), &v285);
  if (SHIBYTE(v287) >= 0)
  {
    v134 = &v285;
  }

  else
  {
    v134 = v285;
  }

  cnprint::CNLogFormatter::FormatGeneral(v6 + 2712, &v256, "%s", v134);
  if (*(v6 + 2735) >= 0)
  {
    LOBYTE(v140) = v6 - 104;
  }

  else
  {
    v140 = *(v6 + 2712);
  }

  cnprint::CNPrinter::Print(&v239, v233, "%s", v135, v136, v137, v138, v139, v140);
  if (SHIBYTE(v287) < 0)
  {
    operator delete(v285);
  }

  LOWORD(v239) = 12;
  v233[0] = 2;
  v256.__r_.__value_.__r.__words[0] = (*(*v7 + 16))(v7);
  v256.__r_.__value_.__l.__size_ = v141;
  raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCountsForRayTracedMeasurements((v6 + 5928), &v285);
  if (SHIBYTE(v287) >= 0)
  {
    v142 = &v285;
  }

  else
  {
    v142 = v285;
  }

  cnprint::CNLogFormatter::FormatGeneral(v6 + 2712, &v256, "%s", v142);
  if (*(v6 + 2735) >= 0)
  {
    LOBYTE(v148) = v6 - 104;
  }

  else
  {
    v148 = *(v6 + 2712);
  }

  cnprint::CNPrinter::Print(&v239, v233, "%s", v143, v144, v145, v146, v147, v148);
  if (SHIBYTE(v287) < 0)
  {
    operator delete(v285);
  }

  v27 = 0;
LABEL_184:
  sub_1D0BCC0B4(&v248);
LABEL_20:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_1D0BC1A74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BC1C3C(uint64_t a1)
{
  v2 = *(a1 + 352);
  if (v2)
  {
    *(a1 + 360) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    sub_1D0B7CAB8(v3);
  }

  *(a1 + 56) = &unk_1F4CDFE98;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *(a1 + 56) = &unk_1F4CD5F70;
  if (*(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

uint64_t sub_1D0BC1CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, __int128 *a7, __int128 *a8)
{
  if (COERCE__INT64(fabs(*(a2 + 8) + *a2)) > 0x7FEFFFFFFFFFFFFFLL || (v126 = 0, v127 = 0, sub_1D0B7C8AC(a2, &v126)))
  {
    LOWORD(v126) = 12;
    v129[0] = 4;
    v21 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not initialized; invalid time");
LABEL_4:
    if (*(a1 + 231) >= 0)
    {
      LOBYTE(v27) = v21;
    }

    else
    {
      v27 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v126, v129, "%s", v22, v23, v24, v25, v26, v27);
    return 0;
  }

  if ((*a1 & 1) == 0)
  {
    LOWORD(v126) = 12;
    v129[0] = 2;
    v21 = cnprint::CNLogFormatter::FormatWarning(a1 + 208, a2, "#MSR not initialized; not configured", v16, v17, v18, v19, v20, v123);
    goto LABEL_4;
  }

  v31 = *(a3 + 8);
  v30 = *(a3 + 12);
  if (v31 <= v30)
  {
    v32 = *(a3 + 12);
  }

  else
  {
    v32 = *(a3 + 8);
  }

  if (!v31 || !v30 || v32 != 8)
  {
    LOWORD(v126) = 12;
    v129[0] = 4;
    v40 = *(a3 + 16);
    v21 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; state vector has incorrect size,nx,%u");
    goto LABEL_4;
  }

  if (*(a4 + 8) != 0x800000008)
  {
    LOWORD(v126) = 12;
    v129[0] = 4;
    v21 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; state covariance has incorrect size,rows,%u,cols,%u");
    goto LABEL_4;
  }

  for (i = 0; i != 8; ++i)
  {
    if ((*(*(a3 + 32) + 8 * i) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v126) = 12;
      v129[0] = 4;
      v21 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; infinite value at index,%d");
      goto LABEL_4;
    }
  }

  v34 = *(a1 + 2192);
  if ((v34 & 1) == 0)
  {
    v35 = *(a2 + 16);
    *(a1 + 2096) = *a2;
    *(a1 + 2112) = v35;
    v36 = *(a2 + 32);
    v37 = *(a2 + 48);
    v38 = *(a2 + 80);
    *(a1 + 2160) = *(a2 + 64);
    *(a1 + 2176) = v38;
    *(a1 + 2128) = v36;
    *(a1 + 2144) = v37;
    *(a1 + 2192) = 1;
  }

  if (*(a1 + 2304))
  {
    v39 = v34 ^ 1;
  }

  else
  {
    sub_1D0BC2764(a1 + 2200, a3);
    v39 = 1;
  }

  if (*(a1 + 2416))
  {
    sub_1D0BC2764(a1 + 2312, a1 + 256);
  }

  else
  {
    sub_1D0BC2764(a1 + 2312, a3);
  }

  raven::RavenSequentialGNSSMeasurementSelector::ResetEpochSpecificMembers(a1);
  if (v39)
  {
    v41 = (a1 + 1512);
    sub_1D0B751F4(&v126, "\n");
    if ((v128 & 0x80u) == 0)
    {
      v42 = &v126;
    }

    else
    {
      v42 = v126;
    }

    if ((v128 & 0x80u) == 0)
    {
      v43 = v128;
    }

    else
    {
      v43 = v127;
    }

    v44 = sub_1D0BCD7C4((a1 + 1512), v42, v43);
    if ((v128 & 0x80u) == 0)
    {
      v45 = &v126;
    }

    else
    {
      v45 = v126;
    }

    if ((v128 & 0x80u) == 0)
    {
      v46 = v128;
    }

    else
    {
      v46 = v127;
    }

    v47 = sub_1D0BCD7C4(v44, v45, v46);
    if ((v128 & 0x80u) == 0)
    {
      v48 = &v126;
    }

    else
    {
      v48 = v126;
    }

    if ((v128 & 0x80u) == 0)
    {
      v49 = v128;
    }

    else
    {
      v49 = v127;
    }

    sub_1D0BCD7C4(v47, v48, v49);
    sub_1D0D8DF58((a1 + 1512));
    v50 = *v41;
    *(v41 + *(*v41 - 24) + 16) = 3;
    *(v41 + *(v50 - 24) + 24) = 27;
    v51 = sub_1D0BCD7C4((a1 + 1512), "Configured Start Time    : ", 27);
    *(v51 + *(*v51 - 24) + 24) = 15;
    if ((*(a1 + 2192) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v52 = MEMORY[0x1D387E990](*(a1 + 2104) + *(a1 + 2096));
    *(v52 + *(*v52 - 24) + 24) = 15;
    if ((*(a1 + 2192) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v53 = MEMORY[0x1D387E990](*(a1 + 2128) + *(a1 + 2120));
    if ((v128 & 0x80u) == 0)
    {
      v54 = &v126;
    }

    else
    {
      v54 = v126;
    }

    if ((v128 & 0x80u) == 0)
    {
      v55 = v128;
    }

    else
    {
      v55 = v127;
    }

    v56 = sub_1D0BCD7C4(v53, v54, v55);
    if ((v128 & 0x80u) == 0)
    {
      v57 = &v126;
    }

    else
    {
      v57 = v126;
    }

    if ((v128 & 0x80u) == 0)
    {
      v58 = v128;
    }

    else
    {
      v58 = v127;
    }

    sub_1D0BCD7C4(v56, v57, v58);
    v59 = *v41;
    *(v41 + *(*v41 - 24) + 16) = 3;
    *(v41 + *(v59 - 24) + 24) = 27;
    v60 = sub_1D0BCD7C4((a1 + 1512), "Start PVT XYZ [m or m/s] : ", 27);
    *(v60 + *(*v60 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v61 = MEMORY[0x1D387E990](**(a1 + 2232));
    *(v61 + *(*v61 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v62 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 8));
    *(v62 + *(*v62 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v63 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 16));
    *(v63 + *(*v63 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v64 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 24));
    *(v64 + *(*v64 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v65 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 32));
    *(v65 + *(*v65 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v66 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 40));
    if ((v128 & 0x80u) == 0)
    {
      v67 = &v126;
    }

    else
    {
      v67 = v126;
    }

    if ((v128 & 0x80u) == 0)
    {
      v68 = v128;
    }

    else
    {
      v68 = v127;
    }

    v69 = sub_1D0BCD7C4(v66, v67, v68);
    if ((v128 & 0x80u) == 0)
    {
      v70 = &v126;
    }

    else
    {
      v70 = v126;
    }

    if ((v128 & 0x80u) == 0)
    {
      v71 = v128;
    }

    else
    {
      v71 = v127;
    }

    v72 = sub_1D0BCD7C4(v69, v70, v71);
    if ((v128 & 0x80u) == 0)
    {
      v73 = &v126;
    }

    else
    {
      v73 = v126;
    }

    if ((v128 & 0x80u) == 0)
    {
      v74 = v128;
    }

    else
    {
      v74 = v127;
    }

    sub_1D0BCD7C4(v72, v73, v74);
    if (v128 < 0)
    {
      operator delete(v126);
    }
  }

  sub_1D0B894B0(a1 + 360, a4);
  v75 = 0;
  v76 = *(a1 + 380);
  v77 = *(a1 + 392);
  v78 = v76 + 1;
  v79 = 8 * v76;
  v80 = v77;
  while (2)
  {
    v81 = 0;
    v82 = v80;
    v83 = v80;
    do
    {
      v84 = *v82;
      if ((*v82 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
LABEL_104:
        LOWORD(v126) = 12;
        v129[0] = 4;
        v21 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; infinite input covariance,i,%u,j,%u");
        goto LABEL_4;
      }

      if (!v81 && v77[v78 * v75] <= 0.0)
      {
        LOWORD(v126) = 12;
        v129[0] = 4;
        v21 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; non-positive variance,i,%u");
        goto LABEL_4;
      }

      v85 = *v83;
      if ((*v83 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_104;
      }

      if (vabdd_f64(v84, v85) > 0.000000015)
      {
        LOWORD(v126) = 12;
        v129[0] = 4;
        v21 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; covariance not symmetric,i,%u,j,%u,Pij,%.3e,Pji,%.3e");
        goto LABEL_4;
      }

      v86 = (v84 + v85) * 0.5;
      *v82 = v86;
      *v83++ = v86;
      --v81;
      v82 = (v82 + v79);
    }

    while (v75 - 8 != v81);
    ++v75;
    v80 = (v80 + v79 + 8);
    if (v75 != 8)
    {
      continue;
    }

    break;
  }

  v129[0] = 0;
  sub_1D0BDFE04(a1 + 360, v129, &v125);
  v125 = &unk_1F4CD5E28;
  v28 = v129[0];
  if (v129[0])
  {
    v87 = *a6;
    *(a1 + 1016) = v87;
    v88 = *a5;
    *(a1 + 1040) = *(a5 + 1);
    *(a1 + 1024) = v88;
    v89 = *(a5 + 2);
    v90 = *(a5 + 3);
    v91 = *(a5 + 4);
    *(a1 + 1104) = *(a5 + 10);
    *(a1 + 1088) = v91;
    *(a1 + 1072) = v90;
    *(a1 + 1056) = v89;
    v92 = *a7;
    v93 = a7[1];
    *(a1 + 1144) = *(a7 + 4);
    *(a1 + 1112) = v92;
    *(a1 + 1128) = v93;
    v94 = *a8;
    v95 = a8[1];
    *(a1 + 1184) = *(a8 + 4);
    *(a1 + 1168) = v95;
    *(a1 + 1152) = v94;
    if ((v87 - 3) > 1 || (v96 = *(a1 + 1024), v96 > 9))
    {
      LOBYTE(v97) = 0;
    }

    else
    {
      v97 = 0xCu >> v96;
    }

    *(a1 + 1272) = v97 & 1;
    v98 = *(a2 + 16);
    *(a1 + 96) = *a2;
    *(a1 + 112) = v98;
    v99 = *(a2 + 32);
    v100 = *(a2 + 48);
    v101 = *(a2 + 80);
    *(a1 + 160) = *(a2 + 64);
    *(a1 + 176) = v101;
    *(a1 + 128) = v99;
    *(a1 + 144) = v100;
    sub_1D0B894B0(a1 + 256, a3);
    v102 = *(a1 + 192);
    v103 = *(v102 + 1656);
    *(a1 + 1328) = *(v102 + 1672);
    *(a1 + 1312) = v103;
    v104 = *(v102 + 1688);
    *(a1 + 1296) = *(v102 + 1704);
    *(a1 + 1280) = v104;
    v105 = *a6;
    if (v105 > 6)
    {
      goto LABEL_126;
    }

    if (((1 << v105) & 0x26) != 0)
    {
      v106 = *a5;
      v107 = v106 - 2;
      if (v106 - 2) < 5 && ((0x1Bu >> v107))
      {
        v108 = &unk_1D0E87938;
        v109 = &unk_1D0E87910;
        goto LABEL_125;
      }
    }

    else if (((1 << v105) & 0x18) != 0)
    {
      v106 = *a5;
      v107 = v106 - 2;
      if (v106 - 2) < 5 && ((0x1Bu >> v107))
      {
        v108 = &unk_1D0E87988;
        v109 = &unk_1D0E87960;
LABEL_125:
        v117 = v108[v107];
        v118 = (v102 + v109[v107]);
        v119 = v118[1];
        *(a1 + 1312) = *v118;
        *(a1 + 1328) = v119;
        v120 = (v102 + v117);
        v121 = v120[1];
        *(a1 + 1280) = *v120;
        *(a1 + 1296) = v121;
        goto LABEL_126;
      }
    }

    else
    {
      if (v105 != 6)
      {
LABEL_126:
        v106 = *a5;
        goto LABEL_127;
      }

      v106 = *a5;
      v107 = v106 - 2;
      if (v106 - 2) < 5 && ((0x1Bu >> v107))
      {
        v108 = &unk_1D0E879D8;
        v109 = &unk_1D0E879B0;
        goto LABEL_125;
      }
    }

LABEL_127:
    if ((v106 - 2) > 4)
    {
      v122 = 2176;
    }

    else
    {
      v122 = qword_1D0E87A00[(v106 - 2)];
    }

    *(a1 + 1192) = *(v102 + v122) * *(v102 + v122);
    *(a1 + 40) = ((v106 - 4) & 0xFA) == 0;
    *(a1 + 1) = 1;
    return v28;
  }

  LOWORD(v126) = 12;
  v124 = 4;
  v110 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; covariance not positive definite");
  if (*(a1 + 231) >= 0)
  {
    LOBYTE(v116) = v110;
  }

  else
  {
    v116 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&v126, &v124, "%s", v111, v112, v113, v114, v115, v116);
  return v28;
}

void sub_1D0BC2720(_Unwind_Exception *exception_object)
{
  if (*(v2 - 97) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BC2764(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == 1)
  {
    sub_1D0B894B0(a1, a2);
  }

  else
  {
    sub_1D0BA1824(a1, a2);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1D0BC27A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1D0BDFDC8((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1D0BC27EC(uint64_t a1)
{
  *a1 = &unk_1F4CEAB60;
  if (*(a1 + 1751) < 0)
  {
    operator delete(*(a1 + 1728));
  }

  if (*(a1 + 1727) < 0)
  {
    operator delete(*(a1 + 1704));
  }

  v3 = (a1 + 1680);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1656);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1632);
  sub_1D0BA5F70(&v3);
  *(a1 + 1424) = &unk_1F4CD5E28;
  *(a1 + 872) = &unk_1F4CD5E28;
  *(a1 + 768) = &unk_1F4CD5E28;
  *(a1 + 664) = &unk_1F4CD5E28;
  *(a1 + 112) = &unk_1F4CD5E28;
  *(a1 + 8) = &unk_1F4CD5E28;
  return a1;
}

uint64_t *sub_1D0BC2944(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_1D0BC2AB0((a1 + 1), 16);
  return a1;
}

void sub_1D0BC2A88(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BC2AB0(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1D387EB80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1D0BC2B6C(a1);
  return a1;
}

void sub_1D0BC2B44(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1D0BC2B6C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_1D0BC2C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1D0C537F0();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1D0BC2E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_1D0BC2E5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D0BCD96C(a1);
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

uint64_t *sub_1D0BC2F00(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_1D0BC2AB0((a1 + 3), 24);
  return a1;
}

void sub_1D0BC317C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1D387EBF0](v1);
  _Unwind_Resume(a1);
}

uint64_t cnnavigation::GNSSPseudorange(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, double *a7, int a8, int8x16_t a9, int8x16_t a10, float64x2_t *a11)
{
  v11 = *a9.i64;
  if (a9.i64[0] >= 0 && ((a9.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (a9.i64[0] - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v20 = *a10.i64;
    v23 = 0;
    while ((*(a3 + v23) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v23 += 8;
      if (v23 == 24)
      {
        if ((a10.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          return 0xFFFFFFFFLL;
        }

        v62 = 0;
        v63 = 0;
        a9.i64[0] = a10.i64[0];
        *v25.i64 = CNTimeSpan::SetTimeSpan(&v62, 0, a9, a10);
        v61[0] = CNTimeSpan::operator-(a1, &v62, v25, v26);
        v61[1] = v27;
        v59 = 0.0;
        v60 = 0.0;
        v29.i64[1] = 0;
        v57 = 0u;
        v58 = 0u;
        if (a8)
        {
          *v29.i64 = v11;
          result = cnnavigation::GNSSTimeOfFlight(v61, a2, a3, a4, 1, a5, 1, a6, v29, v28, &v60, 1u, &v57);
          if (!result)
          {
            v56 = 0.0;
            v32 = v60;
            v53 = 0;
            v54 = 0;
            *v30.i64 = v60;
            *v33.i64 = CNTimeSpan::SetTimeSpan(&v53, 0, v30, v31);
            v62 = CNTimeSpan::operator-(v61, &v53, v33, v34);
            v63 = v35;
            result = (*(*a4 + 96))(a4, &v62, a2, &v56, 1, v55, v11);
            if (!result)
            {
              *a7 = (v32 - v56 + v20) * 299792458.0;
              v36 = v55[0];
              v37 = v59;
              v38 = v59 * v55[0];
              v39 = v57.f64[0];
              v40.f64[0] = v36 - v57.f64[0] * v36;
              v40.f64[1] = v55[1];
              v41 = vdupq_n_s64(0xC1B1DE784A000000);
              v42 = vmulq_f64(v40, v41);
              v43 = vmulq_f64(vmulq_n_f64(v58, -v55[0]), v41);
              v44 = vdupq_n_s64(0x41B1DE784A000000uLL);
              v45 = vmlaq_f64(v43, v44, v58);
              *a11 = vmlaq_f64(v42, v44, v57);
              a11[1] = v45;
              a11[2].f64[0] = v38 * 299792458.0 + v37 * 299792458.0;
              a11[2].f64[1] = v36 * 299792458.0 + v39 * -299792458.0 + 299792458.0;
            }
          }
        }

        else
        {
          *v29.i64 = v11;
          result = cnnavigation::GNSSTimeOfFlight(v61, a2, a3, a4, 1, a5, 1, a6, v29, v28, &v60, 0, &v62);
          if (!result)
          {
            v56 = 0.0;
            v48 = v60;
            v52[0] = 0;
            v52[1] = 0;
            *v46.i64 = v60;
            *v49.i64 = CNTimeSpan::SetTimeSpan(v52, 0, v46, v47);
            v53 = CNTimeSpan::operator-(v61, v52, v49, v50);
            v54 = v51;
            result = (*(*a4 + 96))(a4, &v53, a2, &v56, 0, &v62, v11);
            if (!result)
            {
              *a7 = (v48 - v56 + v20) * 299792458.0;
            }
          }
        }

        return result;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t cnnavigation::LLAToECEF(double *a1, int a2, double *a3, int a4, uint64_t a5)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = __sincos_stret(*a1);
  v12 = __sincos_stret(v9);
  v13 = v11.__sinval * v12.__cosval;
  v14 = v11.__cosval * v12.__sinval;
  v15 = v11.__cosval * v12.__cosval;
  if (a2 == 1)
  {
    v19 = v11.__sinval * -0.00669437999 * v11.__sinval + 1.0;
    v20 = 6378137.0 / sqrt(v19);
    v21 = v10 + v20;
    v22 = v15 * (v10 + v20);
    *a3 = v22;
    a3[1] = v14 * v21;
    v23 = v21 + v20 * -0.00669437999;
    a3[2] = v11.__sinval * v23;
    if (a4)
    {
      v24 = v11.__cosval * (v11.__sinval * 42697.6727) * pow(v19, -1.5);
      *a5 = v24 * v15 - v21 * v13;
      *(a5 + 8) = -(v21 * v14);
      *(a5 + 16) = v15;
      *(a5 + 24) = v24 * v14 - v21 * (v11.__sinval * v12.__sinval);
      *(a5 + 32) = v22;
      *(a5 + 40) = v14;
      v18 = v11.__cosval * v23 + v24 * 0.99330562 * v11.__sinval;
      goto LABEL_7;
    }

    return 0;
  }

  if (!a2)
  {
    v16 = v10 + 6371009.0;
    v17 = (v10 + 6371009.0) * v15;
    *a3 = v17;
    a3[1] = (v10 + 6371009.0) * v14;
    a3[2] = v11.__sinval * (v10 + 6371009.0);
    if (a4)
    {
      *a5 = -(v16 * v13);
      *(a5 + 8) = -(v16 * v14);
      *(a5 + 16) = v15;
      *(a5 + 24) = -(v16 * (v11.__sinval * v12.__sinval));
      *(a5 + 32) = v17;
      *(a5 + 40) = v14;
      v18 = v11.__cosval * v16;
LABEL_7:
      result = 0;
      *(a5 + 48) = v18;
      *(a5 + 56) = 0;
      *(a5 + 64) = v11.__sinval;
      return result;
    }

    return 0;
  }

  return 2;
}

uint64_t cnnavigation::NullIonosphereModel::GetIonosphericDelay(cnnavigation::NullIonosphereModel *this, int a2, double a3, const double *a4, const double *a5, double a6, double *a7)
{
  result = 0xFFFFFFFFLL;
  if (a4)
  {
    if (a5)
    {
      result = 0;
      *a7 = 0.0;
    }
  }

  return result;
}

uint64_t cnnavigation::NullTroposphereModel::GetTroposphericDelay(cnnavigation::NullTroposphereModel *this, int a2, double a3, const double *a4, const double *a5, double *a6)
{
  result = 0xFFFFFFFFLL;
  if (a4)
  {
    if (a5)
    {
      result = 0;
      *a6 = 0.0;
    }
  }

  return result;
}

double cnnavigation::NullIonosphereModel::GetIonosphericDelay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _OWORD *a6)
{
  if (a3)
  {
    if (a4)
    {
      *a5 = 0;
      result = 0.0;
      a6[2] = 0u;
      a6[3] = 0u;
      *a6 = 0u;
      a6[1] = 0u;
    }
  }

  return result;
}

double cnnavigation::NullTroposphereModel::GetTroposphericDelay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a3)
  {
    if (a4)
    {
      *a5 = 0;
      *(a6 + 48) = 0;
      result = 0.0;
      *(a6 + 16) = 0u;
      *(a6 + 32) = 0u;
      *a6 = 0u;
    }
  }

  return result;
}

uint64_t sub_1D0BC36F8(uint64_t a1, double *a2, uint64_t a3, double *a4, uint64_t a5, double *a6)
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
  *a4 = 0.0;
  v16 = a1 + 184;
  v17 = 1.0;
  v18 = 0.0;
  v19 = 32;
  *a6 = 0.0;
  a6[1] = 0.0;
  do
  {
    *a4 = *a4 + *(v16 + 8 * v15) * v17;
    v20 = *a6 + *(v16 + 8 * v15) * v15 * v18;
    *a6 = v20;
    v18 = v17;
    v17 = v14 * v17;
    ++v15;
    v19 -= 8;
  }

  while (v19);
  if ((*a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0BC3810(uint64_t a1, __int128 *a2)
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
  sub_1D0BA002C(a1, 16);
  *a1 = &unk_1F4CEC2E8;
  return a1;
}

void sub_1D0BC396C(_Unwind_Exception *exception_object)
{
  *(v1 + 296) = &unk_1F4CD5F70;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0BC39B4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1D0C537F0();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void raven::RavenSequentialGNSSMeasurementSelector::ComputeAndStoreAprioriPseudorangeInnovationStatistics(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1))
  {
    if (*(a1 + 32) == 1)
    {
      *(a1 + 32) = 0;
    }

    __p = 0;
    v39 = 0;
    v40 = 0;
    v35[0] = 0;
    v36 = 0;
    v37 = 1;
    sub_1D0BC3E34(&__p);
    v41 = 1;
    v8 = *(a2 + 8);
    if (v8 == a2)
    {
LABEL_9:
      if (v35[0] == 1)
      {
        v10 = __p;
        if ((v39 - __p) < 0x21)
        {
          goto LABEL_22;
        }

        v4.i64[0] = 25.0;
        sub_1D0BC4124(v35, v4, v5, v6, v7);
        v12 = v11;
        v13.i64[0] = 0x4049000000000000;
        sub_1D0BC4124(v35, v13, v14, v15, v16);
        v18 = v17;
        v19.i64[0] = 0x4052C00000000000;
        sub_1D0BC4124(v35, v19, v20, v21, v22);
        v24 = v23;
        if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v35[0] = 0;
          v36 = 0;
          v37 = 1;
          v39 = __p;
          sub_1D0BC3E34(&__p);
          v41 = 1;
          LOWORD(v34) = 12;
          v33 = 4;
          v26 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR pseudorange innovation quartiles invalid,%.1lf,%.1lf,%.1lf", v12, v18, v24);
          if (*(a1 + 231) >= 0)
          {
            LOBYTE(v32) = v26;
          }

          else
          {
            v32 = *(a1 + 208);
          }

          cnprint::CNPrinter::Print(&v34, &v33, "%s", v27, v28, v29, v30, v31, v32);
        }

        else
        {
          v25 = *(a1 + 32);
          *(a1 + 8) = v12;
          *(a1 + 16) = v18;
          *(a1 + 24) = v23;
          if ((v25 & 1) == 0)
          {
            *(a1 + 32) = 1;
          }
        }
      }
    }

    else
    {
      while (1)
      {
        v9 = *(v8 + 24);
        if (*(v9 + 96) == 1 && *(v8 + 160) == 1)
        {
          v34 = *(v9 + 120) - *(v8 + 48);
          if (sub_1D0BC3F08(v35, &v34, 1.0 / (*(v9 + 168) * *(v9 + 168))))
          {
            break;
          }
        }

        v8 = *(v8 + 8);
        if (v8 == a2)
        {
          goto LABEL_9;
        }
      }

      v35[0] = 0;
      v36 = 0;
      v37 = 1;
      v39 = __p;
      sub_1D0BC3E34(&__p);
      v41 = 1;
    }

    v10 = __p;
LABEL_22:
    if (v10)
    {
      v39 = v10;
      operator delete(v10);
    }
  }
}

void sub_1D0BC3CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::CheckForAndHandleGrossClockOffsetError(uint64_t a1, uint64_t a2)
{
  raven::RavenSequentialGNSSMeasurementSelector::ComputeAndStoreAprioriPseudorangeInnovationStatistics(a1, a2);
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  if (vabdd_f64(v3, v4) <= 0.000000015)
  {
    return 0;
  }

  v5 = v3 - v4;
  v6 = *(a1 + 16);
  v7 = *(*(a1 + 392) + 48 * *(a1 + 380) + 48);
  v8 = sqrt((v3 - v6 + v5 * 0.2413) * (v3 - v6 + v5 * 0.2413) + v7 * 89875.5179);
  if (v6 >= 0.0)
  {
    if (v6 + v8 * -5.0 <= 0.0)
    {
      return 1;
    }
  }

  else if (v6 + v8 * 5.0 >= 0.0)
  {
    return 1;
  }

  v11 = v6 * 0.00333564095;
  *(a1 + 72) = v6 * 0.00333564095;
  v9 = 1;
  *(a1 + 80) = 1;
  *(*(a1 + 944) + 48) = v6 * 0.00333564095 + *(*(a1 + 944) + 48);
  raven::RavenSequentialGNSSMeasurementSelector::LogClockOffsetCorrection(a1, v6 * 0.00333564095);
  v20 = 12;
  v19 = 3;
  v12 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR gross clock error detected,%.3lf us,sigma,%.3lf us", v11, sqrt(v7));
  if (*(a1 + 231) >= 0)
  {
    LOBYTE(v18) = v12;
  }

  else
  {
    v18 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&v20, &v19, "%s", v13, v14, v15, v16, v17, v18);
  return v9;
}

void sub_1D0BC3E34(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_1D0BC40DC(a1, v4 >> 4);
    }

    v6 = 0;
    if (v3 >> 4)
    {
      v7 = 16 * (v4 >> 4);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_1D0BC3F08(uint64_t a1, uint64_t *a2, double a3)
{
  if ((*a1 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 32) = *(a1 + 24);
    sub_1D0BC3E34((a1 + 24));
    *(a1 + 48) = 1;
  }

  v6 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v7 = ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a3 >= 0.0)
  {
    v7 = 0;
    v6 = 0;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v6 = 1;
  }

  v8 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v6;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v8 = 1;
  }

  result = 0xFFFFFFFFLL;
  if (((v8 | v7) & 1) == 0)
  {
    v10 = *a2;
    v11 = *(a1 + 24);
    *(a1 + 8) = *(a1 + 8) + a3;
    v12 = *a2;
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v14 >= v13)
    {
      v16 = (v14 - v11) >> 4;
      v17 = v16 + 1;
      if ((v16 + 1) >> 60)
      {
        sub_1D0C5663C();
      }

      v18 = v13 - v11;
      if (v18 >> 3 > v17)
      {
        v17 = v18 >> 3;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v19 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        sub_1D0BC40DC(a1 + 24, v19);
      }

      v20 = (v14 - v11) >> 4;
      v21 = 16 * v16;
      *v21 = a3;
      *(v21 + 8) = v12;
      v15 = 16 * v16 + 16;
      v22 = 16 * v16 - 16 * v20;
      memcpy((v21 - 16 * v20), v11, v14 - v11);
      v23 = *(a1 + 24);
      *(a1 + 24) = v22;
      *(a1 + 32) = v15;
      *(a1 + 40) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v14 = a3;
      *(v14 + 1) = v12;
      v15 = (v14 + 16);
    }

    *(a1 + 32) = v15;
    if (v14 != v11)
    {
      v24 = *(a1 + 16);
      if (vabdd_f64(**(a1 + 24), a3) >= 2.22044605e-16)
      {
        v24 = 0;
      }

      *(a1 + 16) = v24;
      *(a1 + 48) = 0;
    }

    result = 0;
    *a1 = 1;
  }

  return result;
}

void sub_1D0BC40DC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0BC4124(uint64_t a1, int8x16_t a2, double a3, double a4, int8x16_t a5)
{
  v5 = *a2.i64;
  v7 = *a2.i64 < 0.0 || *a2.i64 > 100.0 || (a2.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  if (v7 || *a1 != 1)
  {
    return;
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  if ((v10 - v9) == 16)
  {
    v11 = *(v9 + 8);
    return;
  }

  v12 = (v10 - v9) >> 4;
  if ((*(a1 + 48) & 1) == 0)
  {
    v13 = 126 - 2 * __clz(v12);
    if (v10 == v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    sub_1D0BD154C(v9, v10, &v37, v14, 1, 100.0);
    *(a1 + 48) = 1;
  }

  v15 = v5 / 100.0;
  if (*(a1 + 16) == 1)
  {
    v16 = v12 + 1.0;
    if (v15 > 1.0 / v16)
    {
      if (v15 >= v12 / v16)
      {
        v34 = *(*(a1 + 32) - 8);
      }

      else
      {
        *a2.i64 = v15 * v16;
        v17 = vcvtmd_u64_f64(*a2.i64);
        v18 = *(a1 + 24);
        v19 = (*(a1 + 32) - v18) >> 4;
        if (v19 <= v17 - 1 || v19 <= v17)
        {
          sub_1D0DCE19C();
        }

        v20 = *(v18 + 16 * (v17 - 1) + 8);
        *a5.i64 = *a2.i64 - trunc(*a2.i64);
        v21.f64[0] = NAN;
        v21.f64[1] = NAN;
        v22 = v20 + *vbslq_s8(vnegq_f64(v21), a5, a2).i64 * (*(v18 + 16 * v17 + 8) - v20);
      }

      return;
    }

    v24 = *(a1 + 24);
LABEL_31:
    v33 = *(v24 + 8);
    return;
  }

  v23 = *(a1 + 8);
  v24 = *(a1 + 24);
  v25 = *v24 * 0.5 / v23;
  if (v15 <= v25)
  {
    goto LABEL_31;
  }

  v26 = *(a1 + 32);
  if (v15 >= *(v26 - 16) * -0.5 / v23 + 1.0)
  {
    v35 = *(v26 - 8);
  }

  else
  {
    v27 = *(v26 - 8);
    if (v24 != v26)
    {
      v28 = v25 + 0.0;
      v29 = v24 + 16;
      while (1)
      {
        v30 = v29;
        if (v29 == v26)
        {
          break;
        }

        v31 = v28 + v25;
        v29 += 16;
        v25 = *v30 * 0.5 / v23;
        v28 = v31 + v25;
        if (v28 >= v15)
        {
          v32 = *(v30 + 8);
          v24 = v30 - 16;
          goto LABEL_35;
        }
      }

      v24 = v29 - 16;
    }

LABEL_35:
    v36 = *(v24 + 8);
  }
}

uint64_t sub_1D0BC437C(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 3);
        v6 = *(v4 + 1);
        v4 = v2;
        if (v5 < v6)
        {
          v7 = *v2;
          v8 = v3;
          while (1)
          {
            v9 = result + v8;
            v10 = *(result + v8 + 8);
            *(v9 + 16) = *(result + v8);
            *(v9 + 24) = v10;
            if (!v8)
            {
              break;
            }

            v8 -= 16;
            if (v5 >= *(v9 - 8))
            {
              v11 = result + v8 + 16;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
          *(v11 + 8) = v5;
        }

        v2 = v4 + 2;
        v3 += 16;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::EnsureFirstPseudorangeAprioriInnovationIsAnInlier(uint64_t a1, uint64_t ***a2)
{
  if (*(a1 + 32) == 1)
  {
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      v34 = v2;
      v35 = v3;
      v36 = v4;
      v8 = 0;
      v9 = 0;
      v10 = *(a1 + 24);
      v11 = *(a1 + 8);
      v12 = v10 - v11;
      v13 = v11 - (v10 - v11);
      v14 = v10 + v12;
      while (2)
      {
        v15 = *v5;
        for (i = (*v5)[1]; i != v15; i = *(i + 1))
        {
          v17 = *(i + 3);
          if (*(v17 + 96) == 1)
          {
            if (*(i + 160) == 1)
            {
              v18 = *(v17 + 120) - i[6];
              if (v18 >= v13 && v18 <= v14)
              {
                if (v8)
                {
                  if (v2 != i)
                  {
                    v20 = *(i + 1);
                    if (v20 != v2)
                    {
                      v21 = *i;
                      *(*&v21 + 8) = v20;
                      *v20 = v21;
                      v22 = *v2;
                      *(v22 + 8) = i;
                      *i = v22;
                      *v2 = i;
                      *(i + 1) = v2;
                      --v15[2];
                      ++v9[2];
                    }
                  }

                  v23 = raven::RavenSequentialGNSSMeasurementSelector::LogChangePseudorangeReordering(a1, *(i + 2), *(v2 + 2));
                  if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
                  {
                    v33 = 12;
                    v32 = 1;
                    v24 = sub_1D0BCFAB8(*(v2 + 2));
                    v25 = sub_1D0BCFAB8(*(i + 2));
                    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR replacing %s with %s as first pseudorange", v24, v25);
                    if (*(a1 + 231) >= 0)
                    {
                      LOBYTE(v31) = a1 - 48;
                    }

                    else
                    {
                      v31 = *(a1 + 208);
                    }

                    cnprint::CNPrinter::Print(&v33, &v32, "%s", v26, v27, v28, v29, v30, v31);
                  }
                }

                return;
              }
            }

            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v2 = i;
            }

            v8 = 1;
          }
        }

        if (++v5 != v6)
        {
          continue;
        }

        break;
      }
    }
  }
}

void *raven::RavenSequentialGNSSMeasurementSelector::TestInnovationsAndUpdateEstimator@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v160 = &v160;
  v161 = &v160;
  v162 = 0;
  v8 = a2[1];
  if (v8 == a2)
  {
    goto LABEL_162;
  }

  v151 = a4;
  v11 = a1 + 208;
  v154 = (a1 + 1288);
  v155 = (a1 + 1280);
  v152 = (a1 + 1304);
  v153 = (a1 + 1296);
  v149 = (a1 + 1320);
  v150 = (a1 + 1312);
  v147 = (a1 + 1336);
  v148 = (a1 + 1328);
  do
  {
    v12 = v8[1];
    if ((v8[20] & 1) == 0)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v159) = 4;
      v22 = sub_1D0BCFAB8(v8[2]);
      v23 = *(v8[3] + 96) - 1;
      v24 = "UnknownType";
      if (v23 <= 4)
      {
        v24 = off_1E83D8358[v23];
      }

      cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR no measurement function data for %s %s", v22, v24);
      if (*(a1 + 231) >= 0)
      {
        LOBYTE(v30) = v11;
      }

      else
      {
        v30 = *(a1 + 208);
      }

      goto LABEL_16;
    }

    if ((v8[24] & 0xFFFFFFFE) == 2)
    {
      goto LABEL_17;
    }

    v13 = *(a1 + 1504) + 1;
    *(a1 + 1504) = v13;
    *(v8 + 113) = v13;
    ShouldMeasurementBeUsedToUpdateEstimator = raven::RavenSequentialGNSSMeasurementSelector::ShouldMeasurementBeUsedToUpdateEstimator(a1, (v8 + 2));
    if (!ShouldMeasurementBeUsedToUpdateEstimator)
    {
      if (!cnprint::CNPrinter::GetLogLevel(ShouldMeasurementBeUsedToUpdateEstimator))
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v159) = 0;
        v31 = sub_1D0BCFAB8(v8[2]);
        v32 = *(v8[3] + 96) - 1;
        v33 = "UnknownType";
        if (v32 <= 4)
        {
          v33 = off_1E83D8358[v32];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR should not use %s %s", v31, v33);
        if (*(a1 + 231) >= 0)
        {
          LOBYTE(v39) = v11;
        }

        else
        {
          v39 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(__p, &v159, "%s", v34, v35, v36, v37, v38, v39);
      }

      v8[24] = 0x200000002;
      goto LABEL_17;
    }

    raven::RavenSequentialGNSSMeasurementSelector::ComputeInnovationData(a1, v8[3], (v8 + 6), __p);
    *(v8 + 21) = *__p;
    v15 = __p[2];
    *(v8 + 184) = __p[2];
    if ((v15 & 1) == 0)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v159) = 4;
      v40 = sub_1D0BCFAB8(v8[2]);
      v41 = *(v8[3] + 96) - 1;
      v42 = "UnknownType";
      if (v41 <= 4)
      {
        v42 = off_1E83D8358[v41];
      }

      cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR could not compute innovations from %s %s", v40, v42);
      if (*(a1 + 231) >= 0)
      {
        LOBYTE(v30) = v11;
      }

      else
      {
        v30 = *(a1 + 208);
      }

      goto LABEL_16;
    }

    updated = raven::RavenSequentialGNSSMeasurementSelector::UpdateTIVsForMeasurement(a1, (v8 + 2));
    v17 = *(v8[3] + 96);
    if (v17 <= 1)
    {
      if (!v17)
      {
LABEL_44:
        if (!cnprint::CNPrinter::GetLogLevel(updated))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v159) = 0;
          v56 = sub_1D0BCFAB8(v8[2]);
          v57 = *(v8[3] + 96);
          v58 = "UnknownType";
          if ((v57 - 1) <= 4)
          {
            v58 = off_1E83D8358[v57 - 1];
          }

          cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR %s %s invalid measurement type, %d", v56, v58, v57);
          if (*(a1 + 231) >= 0)
          {
            LOBYTE(v30) = v11;
          }

          else
          {
            v30 = *(a1 + 208);
          }

          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v19 = v149;
      v18 = v150;
      v21 = v147;
      v20 = v148;
      if (v17 == 1)
      {
LABEL_34:
        v4 = *v18;
        v5 = *v19;
        v6 = *v20;
        v7 = *v21;
      }
    }

    else
    {
      v19 = v154;
      v18 = v155;
      v21 = v152;
      v20 = v153;
      if ((v17 - 2) < 3)
      {
        goto LABEL_34;
      }

      if (v17 == 5)
      {
        goto LABEL_44;
      }
    }

    MSRThresholdType = raven::RavenSequentialGNSSMeasurementSelector::GetMSRThresholdType(a1, (v8 + 2));
    if (!MSRThresholdType)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v159) = 4;
      v59 = sub_1D0BCFAB8(v8[2]);
      v60 = *(v8[3] + 96) - 1;
      v61 = "UnknownType";
      if (v60 <= 4)
      {
        v61 = off_1E83D8358[v60];
      }

      cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR %s %s could not determine MSR threshold", v59, v61);
      if (*(a1 + 231) >= 0)
      {
        LOBYTE(v30) = v11;
      }

      else
      {
        v30 = *(a1 + 208);
      }

      goto LABEL_16;
    }

    if (MSRThresholdType == 1)
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(MSRThresholdType);
      v45 = v7;
      v46 = v6;
      if (!LogLevel)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v159) = 0;
        v47 = sub_1D0BCFAB8(v8[2]);
        v48 = *(v8[3] + 96) - 1;
        v49 = "UnknownType";
        if (v48 <= 4)
        {
          v49 = off_1E83D8358[v48];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR %s %s using positive-side thresholds,reweight,%.3lf,reject,%.3lf", v47, v49, v6, v7);
        if (*(a1 + 231) >= 0)
        {
          LOBYTE(v55) = v11;
        }

        else
        {
          v55 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(__p, &v159, "%s", v50, v51, v52, v53, v54, v55);
        v45 = v7;
        v46 = v6;
      }
    }

    else
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(MSRThresholdType);
      v45 = v4;
      v46 = v5;
      if (!LogLevel)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v159) = 0;
        v62 = sub_1D0BCFAB8(v8[2]);
        v63 = *(v8[3] + 96) - 1;
        v64 = "UnknownType";
        if (v63 <= 4)
        {
          v64 = off_1E83D8358[v63];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR %s %s using negative-side thresholds,reweight,%.3lf,reject,%.3lf", v62, v64, v5, v4);
        if (*(a1 + 231) >= 0)
        {
          LOBYTE(v70) = v11;
        }

        else
        {
          v70 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(__p, &v159, "%s", v65, v66, v67, v68, v69, v70);
        v45 = v4;
        v46 = v5;
      }
    }

    if (*(*(a1 + 192) + 3829) != 1 || *(v8[3] + 188) != 1)
    {
      raven::RavenSequentialGNSSMeasurementSelector::DetermineAndSetInnovationTestResult(a1, (v8 + 2), v45, v46);
      goto LABEL_73;
    }

    *(v8 + 48) = 5;
    if (cnprint::CNPrinter::GetLogLevel(LogLevel))
    {
      goto LABEL_73;
    }

    v159 = 12;
    v158 = 0;
    v71 = v8[3];
    v72 = sub_1D0BCFAB8(v8[2]);
    v73 = v8[3];
    v74 = *(v73 + 96) - 1;
    v75 = "UnknownType";
    if (v74 <= 4)
    {
      v75 = off_1E83D8358[v74];
    }

    v76 = *(v73 + 100);
    memset(__p, 0, 24);
    if (v76 <= 4)
    {
      if (v76 <= 1)
      {
        HIBYTE(__p[2]) = 4;
        if (v76)
        {
          v77 = 1094922572;
        }

        else
        {
          v77 = 543911509;
        }
      }

      else if (v76 == 2)
      {
        HIBYTE(__p[2]) = 4;
        v77 = 538981708;
      }

      else
      {
        HIBYTE(__p[2]) = 4;
        if (v76 == 3)
        {
          v77 = 543568204;
        }

        else
        {
          v77 = 541667650;
        }
      }
    }

    else if (v76 > 7)
    {
      if (v76 == 8)
      {
        HIBYTE(__p[2]) = 4;
        v77 = 543241541;
      }

      else
      {
        if (v76 != 9)
        {
          if (v76 == 10)
          {
            HIBYTE(__p[2]) = 3;
            qmemcpy(__p, "NL5", 3);
          }

          goto LABEL_155;
        }

        HIBYTE(__p[2]) = 4;
        v77 = 1112748364;
      }
    }

    else if (v76 == 5)
    {
      HIBYTE(__p[2]) = 4;
      v77 = 541274434;
    }

    else
    {
      HIBYTE(__p[2]) = 4;
      if (v76 == 6)
      {
        v77 = 543240770;
      }

      else
      {
        v77 = 538980677;
      }
    }

    LODWORD(__p[0]) = v77;
LABEL_155:
    cnprint::CNLogFormatter::FormatGeneral(v11, v71, "#MSR Skip Innovation Testing for %s %s %s with externally set uncertainty %.2f", v72, v75, __p, *(v73 + 168));
    if (*(a1 + 231) >= 0)
    {
      LOBYTE(v137) = v11;
    }

    else
    {
      v137 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v159, &v158, "%s", v132, v133, v134, v135, v136, v137);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_73:
    v78 = raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(a1, (v8 + 2));
    v79 = *(v8 + 48);
    if (v79 > 2)
    {
      if (v79 == 3)
      {
        if (!cnprint::CNPrinter::GetLogLevel(v78))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v159) = 0;
          v100 = v8[3];
          v101 = sub_1D0BCFAB8(v8[2]);
          v102 = *(v8[3] + 96) - 1;
          v103 = "UnknownType";
          if (v102 <= 4)
          {
            v103 = off_1E83D8358[v102];
          }

          cnprint::CNLogFormatter::FormatGeneral(v11, v100, "#MSR rejecting %s %s", v101, v103);
          if (*(a1 + 231) >= 0)
          {
            LOBYTE(v30) = v11;
          }

          else
          {
            v30 = *(a1 + 208);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v79 != 4)
        {
          if (v79 == 5)
          {
            v84 = *(v8[3] + 168);
            *(v8 + 26) = v84 * v84;
            *(v8 + 216) = 1;
          }

LABEL_87:
          __p[3] = 0x100000008;
          __p[0] = &unk_1F4CE4320;
          *&__p[1] = xmmword_1D0E84520;
          __p[4] = &v157;
          v85 = raven::RavenSequentialGNSSMeasurementSelector::UpdateEstimator(a1, (v8 + 2));
          if ((v85 & 1) == 0 && cnprint::CNPrinter::GetLogLevel(v85) <= 1)
          {
            v159 = 12;
            v158 = 1;
            v86 = v8[3];
            v87 = sub_1D0BCFAB8(v8[2]);
            v88 = *(v8[3] + 96) - 1;
            v89 = "UnknownType";
            if (v88 <= 4)
            {
              v89 = off_1E83D8358[v88];
            }

            cnprint::CNLogFormatter::FormatGeneral(v11, v86, "#MSR %s %s could not be used to update estimator", v87, v89);
            if (*(a1 + 231) >= 0)
            {
              LOBYTE(v95) = v11;
            }

            else
            {
              v95 = *(a1 + 208);
            }

            cnprint::CNPrinter::Print(&v159, &v158, "%s", v90, v91, v92, v93, v94, v95);
          }

          goto LABEL_17;
        }

        if (!a3)
        {
          raven::RavenSequentialGNSSMeasurementSelector::ComputeReweightedMeasurementVariance(a1, (v8 + 2));
          v8[26] = v116;
          *(v8 + 216) = v117;
          if ((v117 & 1) == 0)
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v159) = 4;
            v128 = v8[3];
            v129 = sub_1D0BCFAB8(v8[2]);
            v130 = *(v8[3] + 96) - 1;
            v131 = "UnknownType";
            if (v130 <= 4)
            {
              v131 = off_1E83D8358[v130];
            }

            cnprint::CNLogFormatter::FormatGeneral(v11, v128, "#MSR %s %s could not be re-weighted", v129, v131);
            if (*(a1 + 231) >= 0)
            {
              LOBYTE(v30) = v11;
            }

            else
            {
              v30 = *(a1 + 208);
            }

            goto LABEL_16;
          }

          if (!cnprint::CNPrinter::GetLogLevel(v116))
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v159) = 0;
            v118 = v8[3];
            v119 = sub_1D0BCFAB8(v8[2]);
            v120 = *(v8[3] + 96) - 1;
            v121 = "UnknownType";
            if (v120 <= 4)
            {
              v121 = off_1E83D8358[v120];
            }

            cnprint::CNLogFormatter::FormatGeneral(v11, v118, "#MSR Re-weighting %s measurement from %s", v119, v121);
            if (*(a1 + 231) >= 0)
            {
              LOBYTE(v127) = v11;
            }

            else
            {
              v127 = *(a1 + 208);
            }

            cnprint::CNPrinter::Print(__p, &v159, "%s", v122, v123, v124, v125, v126, v127);
          }

          goto LABEL_87;
        }

        if (*(v8 + 184) == 1)
        {
          *(v8 + 184) = 0;
        }

        *(v8 + 48) = 0;
        v108 = raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(a1, (v8 + 2));
        if (&v160 != v8)
        {
          v109 = v8[1];
          if (v109 != &v160)
          {
            v110 = *v8;
            v110[1] = v109;
            *v109 = v110;
            v111 = v160;
            v160[1] = v8;
            *v8 = v111;
            v8[1] = &v160;
            --a2[2];
            v160 = v8;
            ++v162;
          }
        }

        if (!cnprint::CNPrinter::GetLogLevel(v108))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v159) = 0;
          v112 = v8[3];
          v113 = sub_1D0BCFAB8(v8[2]);
          v114 = *(v8[3] + 96) - 1;
          v115 = "UnknownType";
          if (v114 <= 4)
          {
            v115 = off_1E83D8358[v114];
          }

          cnprint::CNLogFormatter::FormatGeneral(v11, v112, "#MSR %s %s delaying evaluation", v113, v115);
          if (*(a1 + 231) >= 0)
          {
            LOBYTE(v30) = v11;
          }

          else
          {
            v30 = *(a1 + 208);
          }

          goto LABEL_16;
        }
      }
    }

    else if (v79)
    {
      if (v79 == 1)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v159) = 4;
        v104 = v8[3];
        v105 = sub_1D0BCFAB8(v8[2]);
        v106 = *(v8[3] + 96) - 1;
        v107 = "UnknownType";
        if (v106 <= 4)
        {
          v107 = off_1E83D8358[v106];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, v104, "#MSR error for %s %s", v105, v107);
        if (*(a1 + 231) >= 0)
        {
          LOBYTE(v30) = v11;
        }

        else
        {
          v30 = *(a1 + 208);
        }

        goto LABEL_16;
      }

      if (v79 != 2)
      {
        goto LABEL_87;
      }

      if (!cnprint::CNPrinter::GetLogLevel(v78))
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v159) = 0;
        v80 = v8[3];
        v81 = sub_1D0BCFAB8(v8[2]);
        v82 = *(v8[3] + 96) - 1;
        v83 = "UnknownType";
        if (v82 <= 4)
        {
          v83 = off_1E83D8358[v82];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, v80, "#MSR ignoring %s %s", v81, v83);
        if (*(a1 + 231) >= 0)
        {
          LOBYTE(v30) = v11;
        }

        else
        {
          v30 = *(a1 + 208);
        }

LABEL_16:
        cnprint::CNPrinter::Print(__p, &v159, "%s", v25, v26, v27, v28, v29, v30);
      }
    }

    else if (!cnprint::CNPrinter::GetLogLevel(v78))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v159) = 0;
      v96 = v8[3];
      v97 = sub_1D0BCFAB8(v8[2]);
      v98 = *(v8[3] + 96) - 1;
      v99 = "UnknownType";
      if (v98 <= 4)
      {
        v99 = off_1E83D8358[v98];
      }

      cnprint::CNLogFormatter::FormatGeneral(v11, v96, "#MSR no decision for %s %s", v97, v99);
      if (*(a1 + 231) >= 0)
      {
        LOBYTE(v30) = v11;
      }

      else
      {
        v30 = *(a1 + 208);
      }

      goto LABEL_16;
    }

LABEL_17:
    v8 = v12;
  }

  while (v12 != a2);
  v138 = v162;
  a4 = v151;
  if (!v162)
  {
LABEL_162:
    v144 = 0;
    *a4 = 0;
    goto LABEL_163;
  }

  *v151 = v151;
  v151[1] = v151;
  v140 = v160;
  v139 = v161;
  v141 = v160[1];
  v142 = *v161;
  v142[1] = v141;
  *v141 = v142;
  v143 = *v151;
  v143[1] = v139;
  *v139 = v143;
  *v151 = v140;
  v140[1] = v151;
  v151[2] = v138;
  v162 = 0;
  v144 = 1;
LABEL_163:
  a4[24] = v144;
  return sub_1D0BCC0B4(&v160);
}

BOOL raven::RavenSequentialGNSSMeasurementSelector::ShouldMeasurementBeUsedToUpdateEstimator(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 8) + 96);
  if ((v4 - 2) >= 3)
  {
    v9 = v4 == 5 || v4 == 0;
    if (v9 && !cnprint::CNPrinter::GetLogLevel(a1))
    {
      v29 = 12;
      v28 = 0;
      v10 = sub_1D0BCFAB8(*a2);
      cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s unexpected measurement type %d", v10, *(*(a2 + 8) + 96));
      if (*(a1 + 231) >= 0)
      {
        LOBYTE(v16) = a1 - 48;
      }

      else
      {
        v16 = *(a1 + 208);
      }

      cnprint::CNPrinter::Print(&v29, &v28, "%s", v11, v12, v13, v14, v15, v16);
    }

    return 1;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_1D0BD2638(a1 + 1200, v5, v6);
  if (a1 + 1208 != v7 && (*(v7 + 48) & 0xFFFFFFFE) == 4)
  {
    return 0;
  }

  if (!*(a1 + 40))
  {
    return 1;
  }

  v17 = sub_1D0BD2638(a1 + 1224, v5, v6);
  if (a1 + 1232 == v17)
  {
    return *(*(a1 + 192) + 607) == 0;
  }

  v18 = *(v17 + 48);
  if (v18 < 4)
  {
    return *(*(a1 + 192) + 607) == 0;
  }

  if (v18 != 4)
  {
    return 1;
  }

  v19 = *(a1 + 1256);
  v20 = 999.0;
  if (v19)
  {
    v21 = a1 + 1256;
    do
    {
      v22 = *(v19 + 32);
      v9 = v22 == v5;
      v23 = v22 < v5;
      if (v9)
      {
        v23 = *(v19 + 40) < v6;
      }

      v24 = !v23;
      if (v23)
      {
        v25 = 8;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v21 = v19;
      }

      v19 = *(v19 + v25);
    }

    while (v19);
    if (v21 != a1 + 1256)
    {
      v26 = *(v21 + 32);
      v9 = v26 == v5;
      v27 = v26 > v5;
      if (v9)
      {
        v27 = *(v21 + 40) > v6;
      }

      if (!v27)
      {
        v20 = fabs(*(v21 + 48));
      }
    }
  }

  return v20 < *(*(a1 + 192) + 1648);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::ComputeInnovationData@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 16) = 0;
  if (*(a3 + 112) == 1)
  {
    v6 = result;
    *(a4 + 8) = 0x7FF8000000000000;
    v7 = a3 + 8;
    v8 = *a3;
    *(a4 + 16) = 1;
    v9 = *(a2 + 120);
    v21 = 0x100000001;
    v19 = &unk_1F4CDF418;
    *&v10 = 0x100000001;
    *(&v10 + 1) = 0x100000001;
    v20 = v10;
    v22 = v23;
    sub_1D0B89390(a3 + 8, result + 912, &v19);
    v12 = (DWORD1(v20) * v20);
    if (v12 >= 1)
    {
      v13 = v22;
      v14 = v28;
      do
      {
        v15 = *v13++;
        *v14++ = v9 - v8 - v15;
        --v12;
      }

      while (v12);
      v11 = v28[0];
    }

    *a4 = v11;
    v26 = 0x800000001;
    v24 = &unk_1F4CEC348;
    v25 = xmmword_1D0E9CBE0;
    v27 = v28;
    sub_1D0B89390(v7, v6 + 360, &v24);
    v17 = *(a3 + 16);
    v16 = *(a3 + 20);
    v21 = 0x100000008;
    v19 = &unk_1F4CE4320;
    *&v20 = __PAIR64__(v17, v16);
    DWORD2(v20) = v17 * v16;
    HIDWORD(v20) = v16;
    v22 = v23;
    sub_1D0BD2018(v7, &v19);
    v31 = 0x100000001;
    v29 = &unk_1F4CDF418;
    *&v18 = 0x100000001;
    *(&v18 + 1) = 0x100000001;
    v30 = v18;
    v32 = &v33;
    result = sub_1D0B89390(&v24, &v19, &v29);
    *(a4 + 8) = *v32;
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::GetMSRThresholdType(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 144) != 1)
  {
    return 0;
  }

  v59[8] = v5;
  v59[9] = v4;
  v59[16] = v2;
  v59[17] = v3;
  if (*(a2 + 168) != 1)
  {
    return 0;
  }

  result = 0;
  v9 = *(a2 + 8);
  v10 = *(a2 + 160) + (*(v9 + 168) * *(v9 + 168));
  v11 = *(v9 + 96);
  if (v11 > 1)
  {
    if ((v11 - 2) < 3)
    {
      v13 = *(a2 + 48);
      v12 = *(a2 + 52);
      v47 = 0x100000008;
      v42 = &unk_1F4CE4320;
      v43 = v12;
      v44 = v13;
      v45 = v13 * v12;
      v46 = v12;
      v48 = &v49;
      sub_1D0BD2018(a2 + 40, &v42);
      v52 = 0x100000008;
      v50 = &unk_1F4CE4320;
      v51 = xmmword_1D0E84520;
      v53 = v54;
      sub_1D0B89390(a1 + 360, &v42, &v50);
      v57 = 0x100000008;
      v55 = &unk_1F4CE4320;
      v56 = xmmword_1D0E84520;
      v58 = v59;
      v14.f64[0] = 1.0 / v10;
      v15 = sub_1D0BC5ED4(&v50, &v55, v14);
      v15.f64[0] = *(a2 + 152);
      v52 = 0x100000008;
      v50 = &unk_1F4CE4320;
      v51 = xmmword_1D0E84520;
      v53 = v54;
      sub_1D0BC5ED4(&v55, &v50, v15);
      v16 = v53[3];
      v17 = v53[4];
      v18 = v53[5];
      v19 = *(a1 + 288);
      v20 = v19[3];
      v21 = v19[4];
      v22 = v19[5];
      v23 = v21 * v21 + v20 * v20 + v22 * v22;
      v24 = *(a1 + 380);
      v25 = *(a1 + 392);
      v26 = *(v25 + 24 * v24 + 24);
      v27 = *(v25 + 8 * ((4 * v24) | 3));
      v28 = (v25 + 40 * v24);
      v29 = *(v25 + 32 * v24 + 32);
      v30 = v28[3];
      v31 = v28[4];
      v32 = v28[5];
      v33 = ((v20 + v20) * v21 * v27 + v20 * v20 * v26 + (v20 + v20) * v22 * v30 + v21 * v21 * v29 + (v21 + v21) * v22 * v31 + v22 * v22 * v32) / v23;
      if (v23 < 0.000000015)
      {
        v33 = v26 + v27 * 2.0 + v30 * 2.0 + v29 + v31 * 2.0 + v32;
      }

      v34 = v23 < v33 * *(a1 + 200) || v23 < v17 * v17 + v16 * v16 + v18 * v18;
      if (v34 || v17 * v21 + v20 * v16 + v22 * v18 >= 0.0)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    if (v11 != 5)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!v11)
  {
LABEL_20:
    LOWORD(v55) = 12;
    LOBYTE(v50) = 4;
    v35 = sub_1D0BCFAB8(*a2);
    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s unexpected measurement type when selecting thresholds, %d", v35, *(*(a2 + 8) + 96));
    if (*(a1 + 231) >= 0)
    {
      LOBYTE(v41) = a1 - 48;
    }

    else
    {
      v41 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v55, &v50, "%s", v36, v37, v38, v39, v40, v41);
    return 0;
  }

  if (v11 == 1)
  {
    if (*(a2 + 152) / sqrt(v10) >= 0.0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::UpdateEstimator(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 144) & 1) == 0)
  {
    LOWORD(v46) = 12;
    LOBYTE(v41) = 4;
    v20 = a1 + 208;
    sub_1D0BCFAB8(*a2);
    v21 = *(*(a2 + 8) + 96) - 1;
    if (v21 <= 4)
    {
      v22 = off_1E83D8358[v21];
    }

    cnprint::CNLogFormatter::FormatGeneral(v20, a1 + 96, "#MSR %s %s h-function data missing at update");
    goto LABEL_19;
  }

  if ((*(a2 + 168) & 1) == 0)
  {
    LOWORD(v46) = 12;
    LOBYTE(v41) = 4;
    v20 = a1 + 208;
    sub_1D0BCFAB8(*a2);
    v23 = *(*(a2 + 8) + 96) - 1;
    if (v23 <= 4)
    {
      v24 = off_1E83D8358[v23];
    }

    cnprint::CNLogFormatter::FormatGeneral(v20, a1 + 96, "#MSR %s %s innovation data missing at update");
    goto LABEL_19;
  }

  if ((*(a2 + 200) & 1) == 0)
  {
    LOWORD(v46) = 12;
    LOBYTE(v41) = 4;
    v20 = a1 + 208;
    sub_1D0BCFAB8(*a2);
    v30 = *(*(a2 + 8) + 96) - 1;
    if (v30 <= 4)
    {
      v31 = off_1E83D8358[v30];
    }

    cnprint::CNLogFormatter::FormatGeneral(v20, a1 + 96, "#MSR %s %s recommended variance missing at update");
LABEL_19:
    if (*(a1 + 231) >= 0)
    {
      LOBYTE(v32) = v20;
    }

    else
    {
      v32 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v46, &v41, "%s", v25, v26, v27, v28, v29, v32);
    return 0;
  }

  v4 = *(a2 + 160);
  v5 = *(a2 + 192);
  v7 = *(a2 + 48);
  v6 = *(a2 + 52);
  v48 = 0x100000008;
  v46 = &unk_1F4CE4320;
  *&v47 = __PAIR64__(v7, v6);
  DWORD2(v47) = v7 * v6;
  HIDWORD(v47) = v6;
  v49 = v50;
  sub_1D0BD2018(a2 + 40, &v46);
  v63 = 0x100000008;
  v62 = xmmword_1D0E84520;
  v61 = &unk_1F4CE4320;
  v64 = &v65;
  sub_1D0B89390(a1 + 360, &v46, &v61);
  v58 = 0x100000008;
  v57 = xmmword_1D0E84520;
  v56 = &unk_1F4CE4320;
  v59 = &v60;
  v8.f64[0] = 1.0 / (v4 + v5);
  v9 = sub_1D0BC5ED4(&v61, &v56, v8);
  v9.f64[0] = *(a2 + 152);
  v53 = 0x100000008;
  v52 = xmmword_1D0E84520;
  v51 = &unk_1F4CE4320;
  v54 = &v55;
  sub_1D0BC5ED4(&v56, &v51, v9);
  v48 = 0x100000008;
  v47 = xmmword_1D0E84520;
  v46 = &unk_1F4CE4320;
  v49 = v50;
  sub_1D0B88838(a1 + 256, &v51, &v46);
  sub_1D0B894B0(a1 + 256, &v46);
  v11 = v62;
  v10 = DWORD1(v62);
  v38 = 0x800000001;
  v33 = &unk_1F4CEC348;
  v39 = v40;
  v34 = DWORD1(v62);
  v35 = v62;
  v36 = v62 * DWORD1(v62);
  v37 = DWORD1(v62);
  if (DWORD1(v62))
  {
    v12 = 0;
    v13 = 0;
    v14 = HIDWORD(v62);
    v15 = v64;
    do
    {
      v16 = v12;
      v17 = v13;
      for (i = v11; i; --i)
      {
        v40[v17] = v15[v16];
        v17 += v10;
        ++v16;
      }

      ++v13;
      v12 += v14;
    }

    while (v13 != v10);
  }

  v43 = 0x800000008;
  v41 = &unk_1F4CE43B0;
  v42 = xmmword_1D0E84510;
  v44 = &v45;
  sub_1D0B89390(&v56, &v33, &v41);
  v48 = 0x800000008;
  v47 = xmmword_1D0E84510;
  v46 = &unk_1F4CE43B0;
  v49 = v50;
  sub_1D0BA5A78(a1 + 360, &v41, &v46);
  sub_1D0B894B0(a1 + 360, &v46);
  v48 = 0x100000008;
  v47 = xmmword_1D0E84520;
  v46 = &unk_1F4CE4320;
  v49 = v50;
  sub_1D0B88838(a1 + 912, &v51, &v46);
  sub_1D0B894B0(a1 + 912, &v46);
  return 1;
}

float64x2_t sub_1D0BC5ED4(uint64_t a1, uint64_t a2, float64x2_t result)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  v5 = (v4 * v3);
  *(a2 + 16) = v5;
  *(a2 + 20) = v3;
  v6 = v5 - 1;
  if (v5 >= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    v9 = v7;
    v10 = v8;
    v11 = v5;
    do
    {
      v12 = *v9++;
      *v10++ = v12 * result.f64[0];
      --v11;
    }

    while (v11);
    if (v5 > 3)
    {
      v14 = (v5 - 2);
      v15 = (v7 + 8 * v14);
      v16 = v6 >> 1;
      v17 = v8;
      do
      {
        v18 = *v7++;
        *v17++ = vmulq_n_f64(v18, result.f64[0]);
        --v16;
      }

      while (v16);
      result = vmulq_n_f64(*v15, result.f64[0]);
      *&v8[v14] = result;
    }

    else
    {
      do
      {
        v13 = v7->f64[0];
        v7 = (v7 + 8);
        *v8++ = v13 * result.f64[0];
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::ComputeHorizontalPositionMisclosureAndHDOP(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1D0BD2CA4(v65, **(a1 + 288), *(*(a1 + 288) + 8), *(*(a1 + 288) + 16));
    v62 = 0;
    __p = 0;
    v63 = 0;
    v58[0] = 0;
    v59 = 0;
    v60 = 1;
    sub_1D0BC3E34(&__p);
    v64 = 1;
    v55 = 0x400000004;
    v53 = &unk_1F4CDEB70;
    v56 = v57;
    v54 = xmmword_1D0E7DCD0;
    v7.n128_u64[1] = 0;
    memset(v57, 0, sizeof(v57));
    v8 = *(a2 + 8);
    if (v8 == a2)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v7.n128_u64[1] = 0x400000004;
      do
      {
        if (*(*(v8 + 24) + 96) == 1 && (*(v8 + 192) & 0xFFFFFFFE) == 4)
        {
          v10 = *(v8 + 16);
          v11 = *(v10 + 264);
          v12 = cos(v11);
          if (*(a1 + 2424) == 1)
          {
            v49 = 0x400000001;
            v48 = xmmword_1D0E84480;
            v47 = &unk_1F4CE4368;
            v50 = &v51;
            v13 = __sincos_stret(*(v10 + 272));
            *&v51 = -(v12 * v13.__sinval);
            *(&v51 + 1) = -(v12 * v13.__cosval);
            *&v52 = -sin(v11);
            *(&v52 + 1) = 0x3FF0000000000000;
            v39 = 0x100000004;
            v37 = &unk_1F4CDEBB8;
            v40 = v41;
            v38 = xmmword_1D0E7DCE0;
            v41[0] = v51;
            v41[1] = v52;
            v44 = 0x400000004;
            v42 = &unk_1F4CDEB70;
            v43 = xmmword_1D0E7DCD0;
            v45 = v46;
            sub_1D0B89390(&v37, &v47, &v42);
            v68 = 0x400000004;
            v67 = xmmword_1D0E7DCD0;
            v66 = COERCE_DOUBLE(&unk_1F4CDEB70);
            v69 = v70;
            sub_1D0B88838(&v53, &v42, &v66);
            v7 = sub_1D0B894B0(&v53, &v66);
            v11 = *(*(v8 + 16) + 264);
          }

          ++v9;
          if (v11 <= 1.3962634 && v11 >= 0.34906585)
          {
            v14 = *(*(v8 + 24) + 120);
            v15 = *(v8 + 48);
            v44 = 0x100000001;
            v42 = &unk_1F4CDF418;
            *&v16 = 0x100000001;
            *(&v16 + 1) = 0x100000001;
            v43 = v16;
            v45 = v46;
            sub_1D0B89390(v8 + 56, a1 + 912, &v42);
            v17 = (DWORD1(v43) * v43);
            if (v17 >= 1)
            {
              v18 = v45;
              v19 = v70;
              do
              {
                v20 = *v18++;
                *v19++ = v14 - v15 - v20;
                --v17;
              }

              while (v17);
            }

            v66 = fabs(v70[0]) / v12;
            sub_1D0BC3F08(v58, &v66, 1.0);
          }
        }

        v8 = *(v8 + 8);
      }

      while (v8 != a2);
    }

    v21 = *(a1 + 2440);
    if (v9 - v21 < 4)
    {
      goto LABEL_39;
    }

    if (v58[0])
    {
      v22 = (v62 - __p) >> 4;
    }

    else
    {
      v22 = 0;
    }

    if (v22 - v21 < 4)
    {
LABEL_31:
      if (*(a1 + 2424) == 1)
      {
        v44 = 0x400000004;
        v42 = &unk_1F4CDEB70;
        v43 = xmmword_1D0E7DCD0;
        v45 = v46;
        v49 = 0x100000004;
        v48 = xmmword_1D0E7DCE0;
        v47 = &unk_1F4CDFDB8;
        v50 = &v51;
        v39 = 0x100000004;
        v37 = &unk_1F4CDFDB8;
        v38 = xmmword_1D0E7DCE0;
        v40 = v41;
        v68 = 0x100000010;
        v67 = xmmword_1D0E83CB0;
        v66 = COERCE_DOUBLE(&unk_1F4CDFE00);
        v69 = v70;
        v28 = sub_1D0BA5174(&v53, &v47, &v37, &v66, &v42);
        if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v28 >= *(*(a1 + 192) + 920))
        {
          LOWORD(v66) = 12;
          LOBYTE(v47) = 4;
          v29 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "t,%.3lf, pseudoinverse of design matrix is poorly conditioned, condition number, %.3lf", *(a1 + 104) + *(a1 + 96), v28);
          if (*(a1 + 231) >= 0)
          {
            LOBYTE(v35) = v29;
          }

          else
          {
            v35 = *(a1 + 208);
          }

          cnprint::CNPrinter::Print(&v66, &v47, "%s", v30, v31, v32, v33, v34, v35);
        }

        else
        {
          *(a1 + 2448) = sqrt(*v45 + v45[SHIDWORD(v43) + 1]);
        }
      }

LABEL_39:
      if (__p)
      {
        v62 = __p;
        operator delete(__p);
      }

      return;
    }

    v23 = *(a1 + 1024);
    if (v23 > 9)
    {
      goto LABEL_28;
    }

    v24 = 1 << v23;
    if ((v24 & 0x393) != 0)
    {
      v7.n128_u64[0] = 0x4052C00000000000;
LABEL_30:
      sub_1D0BC4124(v58, v7, v4, v5, v6);
      *(a1 + 2432) = v27;
      goto LABEL_31;
    }

    if ((v24 & 0x4C) != 0)
    {
      v25 = *(a1 + 1016);
      if (v25 <= 6)
      {
        v7.n128_u64[0] = qword_1D0EA3DF0[v25];
        goto LABEL_30;
      }
    }

    else
    {
LABEL_28:
      v26 = *(a1 + 1016);
      if ((v26 - 3) >= 2)
      {
        v36 = v26 == 6 || v26 == 0;
        v7.n128_u64[0] = 0x4041800000000000;
        v4 = 75.0;
        if (v36)
        {
          v7.n128_u64[0] = 0x4052C00000000000;
        }

        goto LABEL_30;
      }
    }

    v7.n128_u64[0] = 0x4049000000000000;
    goto LABEL_30;
  }
}

void sub_1D0BC65A0(_Unwind_Exception *a1)
{
  v2 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void raven::RavenSequentialGNSSMeasurementSelector::UpdateITRCounts(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == a2)
  {
    return;
  }

  v4 = a1;
  v39 = a1 + 173;
  v40 = a1 + 168;
LABEL_3:
  v5 = *(v2 + 24);
  v6 = *(v5 + 100);
  v7 = v40;
  if (v6 > 0xA)
  {
    goto LABEL_6;
  }

  if (((1 << v6) & 0x544) != 0)
  {
    v7 = v39;
    goto LABEL_6;
  }

  v7 = v40;
  if (*(v5 + 100))
  {
LABEL_6:
    if (*(*(v2 + 16) + 312))
    {
      v8 = *(v5 + 96);
      v42 = v5 + 96;
      v9 = sub_1D0BC6C68(v4 + 178, v8);
      v10 = *(v2 + 192);
      if (sub_1D0BD2DFC(v9 + 3, *(v2 + 192)))
      {
        v42 = v2 + 192;
        v11 = sub_1D0BD32D0(v9 + 3, v10);
        ++*(v11 + 5);
      }

      else
      {
        v42 = v10 | 0x100000000;
        sub_1D0BD2EB0(v9 + 3, v10);
      }
    }

    v12 = *(v2 + 16);
    v13 = *(v12 + 24);
    v14 = v7[1];
    if (!*&v14)
    {
      goto LABEL_26;
    }

    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = *(v12 + 24);
      if (*&v14 <= v13)
      {
        v16 = v13 % v7[1];
      }
    }

    else
    {
      v16 = (v14.i32[0] - 1) & v13;
    }

    v17 = *(*v7 + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_26:
      operator new();
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v13)
      {
        if (*(v18 + 16) == v13)
        {
          v20 = *(v2 + 24);
          v21 = *(v20 + 96);
          v42 = v20 + 96;
          v22 = sub_1D0BC6C68(v18 + 3, v21);
          v23 = *(v2 + 192);
          if (sub_1D0BD2DFC(v22 + 3, *(v2 + 192)))
          {
            v42 = v2 + 192;
            v24 = sub_1D0BD32D0(v22 + 3, v23);
            ++*(v24 + 5);
          }

          else
          {
            v42 = v23 | 0x100000000;
            sub_1D0BD2EB0(v22 + 3, v23);
          }

          v25 = *(v2 + 24);
          v26 = *(v25 + 96);
          v42 = v25 + 96;
          v27 = sub_1D0BC6C68(v4 + 183, v26);
          v28 = *(v2 + 192);
          if (sub_1D0BD2DFC(v27 + 3, *(v2 + 192)))
          {
            v42 = v2 + 192;
            a1 = sub_1D0BD32D0(v27 + 3, v28);
            ++*(a1 + 5);
          }

          else
          {
            v42 = v28 | 0x100000000;
            a1 = sub_1D0BD2EB0(v27 + 3, v28);
          }

          v2 = *(v2 + 8);
          if (v2 == a2)
          {
            return;
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (v15.u32[0] > 1uLL)
        {
          if (v19 >= *&v14)
          {
            v19 %= *&v14;
          }
        }

        else
        {
          v19 &= *&v14 - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_26;
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_26;
      }
    }
  }

  if (!cnprint::CNPrinter::GetLogLevel(a1))
  {
    LOWORD(v42) = 12;
    v41 = 0;
    v29 = sub_1D0BCFAB8(*(v2 + 16));
    v30 = *(v2 + 24);
    v31 = *(v30 + 96) - 1;
    if (v31 > 4)
    {
      v32 = "UnknownType";
    }

    else
    {
      v32 = off_1E83D8358[v31];
    }

    cnprint::CNLogFormatter::FormatGeneral((v4 + 26), (v4 + 12), "#MSR %s %s unsupported band family, %d", v29, v32, *(v30 + 100));
    if (*(v4 + 231) >= 0)
    {
      LOBYTE(v38) = v4 - 48;
    }

    else
    {
      v38 = v4[26];
    }

    cnprint::CNPrinter::Print(&v42, &v41, "%s", v33, v34, v35, v36, v37, v38);
  }
}

void sub_1D0BC6C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D0BD2D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0BC6C68(void *a1, int a2)
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

void sub_1D0BC709C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0BD2DB0(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::LogMSRData(uint64_t result, uint64_t a2)
{
  if (*(result + 1))
  {
    v2 = result;
    if (*(result + 1506))
    {
      v31 = 0x100000008;
      v29 = &unk_1F4CE4320;
      v30 = xmmword_1D0E84520;
      v32 = &v33;
      sub_1D0BA5A78(result + 256, result + 912, &v29);
      sub_1D0B751F4(&v28, "\n");
      v26 = 0;
      __src = 0;
      v27 = 0;
      v4 = *(a2 + 16);
      if (v4 >= 2)
      {
        if ((v4 & 0x8000000000000000) == 0)
        {
          sub_1D0D2FF2C(&__src, v4 >> 1);
        }

        sub_1D0C5663C();
      }

      memset(v23, 0, sizeof(v23));
      v24 = 1065353216;
      v20 = 0u;
      v21 = 0u;
      v22 = 1065353216;
      v5 = *(a2 + 8);
      if (v5 != a2)
      {
        v6 = *(*(v5 + 16) + 28) + 1000 * *(*(v5 + 16) + 24);
        LODWORD(v18.__r_.__value_.__l.__data_) = v6;
        v7 = __src;
        v8 = v26 - __src;
        v9 = (v26 - __src) >> 2;
        v10 = v9 + 1;
        if (!((v9 + 1) >> 62))
        {
          v11 = v27 - __src;
          if ((v27 - __src) >> 1 > v10)
          {
            v10 = v11 >> 1;
          }

          v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
          v13 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v12)
          {
            v13 = v10;
          }

          if (v13)
          {
            sub_1D0D2FF2C(&__src, v13);
          }

          *(4 * v9) = v6;
          memcpy(0, v7, v8);
          v14 = __src;
          __src = 0;
          v26 = 4 * v9 + 4;
          v27 = 0;
          if (v14)
          {
            operator delete(v14);
          }

          v26 = 4 * v9 + 4;
          __b.__r_.__value_.__r.__words[0] = &v18;
          sub_1D0E31160(v23, v18.__r_.__value_.__l.__data_);
          operator new();
        }

        sub_1D0C5663C();
      }

      v15 = *(v2 + 192);
      v15[3770];
      v16 = v15[641];
      v17 = v15[2562];
      operator new();
    }
  }

  return result;
}

void sub_1D0BC9638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  operator delete(__p);
  sub_1D0E31100(&a67);
  sub_1D0E310A0(&STACK[0x200]);
  v68 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v68;
    operator delete(v68);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  _Unwind_Resume(a1);
}