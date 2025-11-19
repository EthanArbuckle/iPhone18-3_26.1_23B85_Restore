void CoreNavigation::CLP::LogEntry::Raven::DevicePosition::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserPosition::ByteSize(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    if (v2)
    {
      v4 = *(this + 1);
      if (!v4)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v4 = *(CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_ + 8);
      }

      v5 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = v6 + v7 + 1;
      v2 = *(this + 23);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      v3 += 9;
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = v3 + 9;
  if ((v2 & 0x100) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 0x200) != 0)
  {
    v8 += 9;
  }

  if ((v2 & 0xFF00) != 0)
  {
    result = v8;
  }

  else
  {
    result = v3;
  }

  *(this + 22) = result;
  return result;
}

const void **sub_1D0C15D70(const void **result, void *a2)
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

      sub_1D0C4E87C(v9);
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

void CoreNavigation::CLP::LogEntry::Raven::DevicePosition::~DevicePosition(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this)
{
  *this = &unk_1F4CD6D38;
  CoreNavigation::CLP::LogEntry::Raven::DevicePosition::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::DevicePosition::~DevicePosition(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::~DeviceVelocity(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::~DeviceVelocity(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6DB0;
  CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::~DeviceReceiverClockDiscrepancy(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this)
{
  *this = &unk_1F4CD7008;
  CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::~DeviceReceiverClockDiscrepancy(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t **sub_1D0C160E0(void *a1, unsigned __int8 a2)
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
      v4 = a2 % a1[1];
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

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::~NrEstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  *this = &unk_1F4CD6978;
  CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::SharedDtor(this);
  sub_1D0B8CD0C(this + 14);
  sub_1D0B8CD0C(this + 11);
  sub_1D0B8CD0C(this + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::~NrEstimatorHealth(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t raven::RavenSupervisor::GetRavenSolution(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (COERCE__INT64(fabs(*(a2 + 8) + *a2)) < 0x7FF0000000000000)
  {
    v5 = a1 + 168872;

    return raven::RavenSolutionActiveObject::GetRavenSolution(v5, a2, a3);
  }

  else
  {
    sub_1D0BAE168(a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t raven::RavenSolutionActiveObject::GetRavenSolution(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (COERCE__INT64(fabs(*(a2 + 8) + *a2)) < 0x7FF0000000000000)
  {
    std::mutex::lock((a1 + 11320));
    if (raven::RavenPredictor::Predict(a1 + 3008, a2, a3, v7, v8, v9, v10, v11, v12, v13))
    {
      memcpy((a3 + 8), (a1 + 360), 0xA51uLL);
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      raven::RavenSolutionActiveObject::WriteRavenSolutionToProtobuf(a1, a3);
      v4 = 0;
    }

    std::mutex::unlock((a1 + 11320));
  }

  else
  {
    sub_1D0BAE168(a3);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t raven::RavenPredictor::Predict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*a1 & 1) == 0)
  {
    LOWORD(v75) = 12;
    v84.i8[0] = 4;
    v27 = "RavenPredictor::Predict() failed. Predictor is not configured.";
LABEL_23:
    cnprint::CNPrinter::Print(&v75, &v84, v27, a4, a5, a6, a7, a8, v63);
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 1) & 1) == 0)
  {
    LOWORD(v75) = 12;
    v84.i8[0] = 2;
    v27 = "RavenPredictor::Predict() failed. Predictor is not initialized.";
    goto LABEL_23;
  }

  if (!*(a1 + 5688))
  {
    LOWORD(v75) = 12;
    v84.i8[0] = 4;
    v27 = "RavenPredictor::Predict() failed. Current raven estimator type is not initialized.";
    goto LABEL_23;
  }

  if (*(a1 + 5689) != 2)
  {
    LOWORD(v75) = 12;
    v84.i8[0] = 2;
    v27 = "RavenPredictor::Predict() failed. Current raven solution is not healthy.";
    goto LABEL_23;
  }

  if (*(a1 + 5688) != 4)
  {
    LOWORD(v75) = 12;
    v84.i8[0] = 4;
    cnprint::CNPrinter::Print(&v75, &v84, "RavenPredictor::Predict() failed. Expected raven estimator type %u, but received %u.", a4, a5, a6, a7, a8, 4);
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 6744) & 1) == 0)
  {
    LOWORD(v75) = 12;
    v84.i8[0] = 4;
    v27 = "RavenPredictor::Predict() failed. Current user position is not valid.";
    goto LABEL_23;
  }

  v13 = CNTimeSpan::operator-(a2, (a1 + 6648), a9, a10);
  v22 = v13;
  v90[0] = v13;
  *&v90[1] = v14;
  v23 = v14;
  v25 = v14 < 0.0 || v13 < 0;
  *v20.i64 = v14;
  if (v25)
  {
    v13 = CNTimeSpan::operator-(v90, v20, v21);
    v20.i64[0] = v26;
  }

  *v20.i64 = *v20.i64 + v13;
  *v21.i64 = fabs(*(*(a1 + 8) + 3488));
  if (*v20.i64 > *v21.i64)
  {
    LOWORD(v75) = 12;
    v84.i8[0] = 4;
    v64 = *(a2 + 8) + *a2;
    v65 = *(a1 + 6656) + *(a1 + 6648);
    cnprint::CNPrinter::Print(&v75, &v84, "RavenPredictor::Predict() failed. Exceeded maximum prediction duration. Given input time: %.3lf (s). Current raven solution time: %.3lf (s)", v15, v16, v17, v18, v19, SLOBYTE(v64));
    return 0xFFFFFFFFLL;
  }

  if (v25)
  {
    v22 = CNTimeSpan::operator-(v90, v20, v21);
    v23 = v29;
  }

  if (fabs(v23 + v22) < 2.22044605e-16)
  {
    memcpy((a3 + 8), (a1 + 5488), 0xA51uLL);
    return 0;
  }

  sub_1D0BAE168(a3);
  memcpy((a3 + 104), (a1 + 5584), 0x428uLL);
  memcpy((a3 + 2032), (a1 + 7512), 0x269uLL);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  *&v89 = 0;
  *(&v89 + 1) = 0x7FF8000000000000;
  v30 = *a2;
  v84 = *a2;
  v85 = 0u;
  if (*(a1 + 7464) != 1)
  {
    goto LABEL_32;
  }

  v77 = 0x10000001CLL;
  v76 = xmmword_1D0E843A0;
  v75 = &unk_1F4CE0A20;
  v78 = v79;
  v68 = 0x100000002;
  v66 = &unk_1F4CE0220;
  v67 = xmmword_1D0E83F60;
  v69 = v70;
  v74 = *(a1 + 6648);
  *&v79[152] = *(a1 + 7472);
  if (sub_1D0C16DB8(a2, &v74, &v75, &v66))
  {
    v72.i16[0] = 12;
    v71.i8[0] = 2;
    cnprint::CNPrinter::Print(&v72, &v71, "RavenPNTEstimatorHelper::IntegrateDeviceOscillatorStateEstimate failed to predict clock states in RavenPredictor::Predict().", v31, v32, v33, v34, v35, v63);
LABEL_32:
    *(a3 + 1992) = *(a1 + 7472);
    v37 = *(a1 + 7488);
    *(a3 + 2008) = v37;
    v37.i64[0] = *(a1 + 7504);
    *(a3 + 2024) = v37.i64[0];
    raven::PopulateAllTimeFields(&v84, a1 + 8144, v37, v30);
    goto LABEL_33;
  }

  v59 = v69;
  v36.i64[0] = *v69;
  *(a3 + 1992) = *v69;
  *(a3 + 2000) = v59[1];
  v60 = *(a1 + 7488);
  *(a3 + 2008) = v60;
  *(a3 + 2024) = *(a1 + 7504);
  *v60.i64 = sqrt(*v60.i64);
  v73 = v60.i64[0];
  v71 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v71, 0, v36, v60);
  v72 = v71;
  raven::PopulateAllTimeFields(&v84, a1 + 8144, &v72, &v73, v71, v61);
LABEL_33:
  v41 = *(a1 + 6824);
  if (v41 == 1 && *(a1 + 6825) == 1)
  {
    v77 = 0x10000001CLL;
    v76 = xmmword_1D0E843A0;
    v75 = &unk_1F4CE0A20;
    v78 = v79;
    v68 = 0x100000007;
    v66 = &unk_1F4CE0BB0;
    v67 = xmmword_1D0E84420;
    v69 = v70;
    v74 = *(a1 + 6648);
    v80 = *(a1 + 6752);
    v81 = *(a1 + 6768);
    v82 = *(a1 + 6832);
    v83 = *(a1 + 6848);
    if (sub_1D0C50CB8(a2, &v74, &v75, 0, &v66, v38, v39, v40))
    {
      v72.i16[0] = 12;
      v71.i8[0] = 2;
      cnprint::CNPrinter::Print(&v72, &v71, "RavenPNTEstimatorHelper::IntegrateUserStateEstimate failed to predict user states in RavenPredictor::Predict().", v42, v43, v44, v45, v46, v63);
      return 0xFFFFFFFFLL;
    }

    *(a3 + 1264) = 1;
    *(a3 + 1344) = 257;
    v62 = v69;
    *(a3 + 1272) = *v69;
    *(a3 + 1280) = v62[1];
    *(a3 + 1288) = v62[2];
    *(a3 + 1296) = *(a1 + 6776);
    *(a3 + 1312) = *(a1 + 6792);
    *(a3 + 1328) = *(a1 + 6808);
    *(a3 + 1352) = v62[3];
    *(a3 + 1360) = v62[4];
    *(a3 + 1368) = v62[5];
    *(a3 + 1376) = v62[6];
    *(a3 + 1384) = *(a1 + 6864);
    *(a3 + 1400) = *(a1 + 6880);
    *(a3 + 1416) = *(a1 + 6896);
    *(a3 + 1432) = *(a1 + 6912);
    *(a3 + 1448) = *(a1 + 6928);
  }

  else
  {
    *(a3 + 1264) = 1;
    *(a3 + 1272) = *(a1 + 6752);
    *(a3 + 1288) = *(a1 + 6768);
    *(a3 + 1304) = *(a1 + 6784);
    *(a3 + 1320) = *(a1 + 6800);
    *(a3 + 1336) = *(a1 + 6816);
    if (v41)
    {
      *(a3 + 1344) = 1;
      *(a3 + 1352) = *(a1 + 6832);
      *(a3 + 1384) = *(a1 + 6864);
    }
  }

  result = 0;
  v47 = v86;
  v48 = v87;
  v49 = v86;
  v50 = v87;
  *(a3 + 40) = v86;
  *(a3 + 56) = v48;
  v52 = v88;
  v51 = v89;
  *(a3 + 72) = v88;
  *(a3 + 1232) = v52;
  v53 = v88;
  v54 = v89;
  *(a3 + 88) = v51;
  *(a3 + 1200) = v47;
  *(a3 + 1216) = v48;
  v56 = v84;
  v55 = v85;
  *(a3 + 8) = v84;
  *(a3 + 1248) = v51;
  *(a3 + 1168) = v56;
  v57 = v84;
  v58 = v85;
  *(a3 + 24) = v55;
  *(a3 + 1184) = v55;
  *(a3 + 208) = 5;
  *(a3 + 144) = v49;
  *(a3 + 160) = v50;
  *(a3 + 176) = v53;
  *(a3 + 192) = v54;
  *(a3 + 112) = v57;
  *(a3 + 128) = v58;
  return result;
}

uint64_t sub_1D0C16DB8(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v28 = 0x1400000013;
  v37 = 0x100000002;
  v35 = &unk_1F4CE0EA8;
  v36 = xmmword_1D0E83F60;
  v38 = &v39;
  v39 = 0x1400000013;
  v34 = *a2;
  v6.i64[1] = *(&v34 + 1);
  v31 = 0x100000002;
  v30 = xmmword_1D0E83F60;
  v29 = &unk_1F4CE0220;
  v32 = &v33;
  v6.i64[0] = 0x200000002;
  v26 = 0x200000002;
  v25 = xmmword_1D0E83F70;
  v24 = &unk_1F4CE0268;
  v27 = &v28;
  v21 = 0x200000002;
  v20 = xmmword_1D0E83F70;
  v19 = &unk_1F4CE0268;
  v22 = &v23;
  v7 = CNTimeSpan::operator-(a1, &v34, v6, xmmword_1D0E83F70);
  v18 = v8 + v7;
  sub_1D0C17188(a3, &v35, v17);
  v14 = 0x100000002;
  v12 = &unk_1F4CE0220;
  v13 = xmmword_1D0E83F60;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  if (sub_1D0C16F88(v17, &v12, &v18, &v29, &v24, &v19, v9, v10))
  {
    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(a4, &v29);
  return 0;
}

uint64_t sub_1D0C16F88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  if (v8 <= v9)
  {
    v10 = *(a1 + 12);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11 && v10 == 2;
  if (v12 && ((v14 = *(a2 + 8), v15 = *(a2 + 12), v14 <= v15) ? (v16 = *(a2 + 12)) : (v16 = *(a2 + 8)), v14 ? (v17 = v15 == 0) : (v17 = 1), !v17 ? (v18 = v16 == 2) : (v18 = 0), v18))
  {
    v23 = *a3;
    v37 = 0x200000002;
    v35 = &unk_1F4CE0268;
    v36 = xmmword_1D0E83F70;
    v38 = v39;
    v39[0] = 0x3FF0000000000000;
    v39[1] = 0;
    v39[3] = 0x3FF0000000000000;
    v39[2] = v23;
    v32 = 0x100000002;
    v30 = &unk_1F4CE0220;
    v31 = xmmword_1D0E83F60;
    v33 = &v34;
    sub_1D0B89390(&v35, a1, &v30);
    v27 = 0x100000002;
    v25 = &unk_1F4CE0220;
    v26 = xmmword_1D0E83F60;
    v28 = v29;
    sub_1D0B88838(&v30, a2, &v25);
    sub_1D0B894B0(a4, &v25);
    sub_1D0B894B0(a5, &v35);
    v27 = 0x200000002;
    v25 = &unk_1F4CE0268;
    v26 = xmmword_1D0E83F70;
    v29[1] = 0;
    v29[2] = 0;
    v28 = v29;
    v29[0] = 0x3FF0000000000000;
    v29[3] = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v25);
    return 0;
  }

  else
  {
    LOWORD(v35) = 12;
    LOBYTE(v25) = 4;
    cnprint::CNPrinter::Print(&v35, &v25, "f_TwoStateOscillator called with inadequate matrices.", a4, a5, a6, a7, a8, v24);
    return 0xFFFFFFFFLL;
  }
}

double sub_1D0C17188@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000002;
  *(a3 + 24) = 0x100000002;
  *a3 = &unk_1F4CE0220;
  *(a3 + 8) = v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = v5;
  *(a3 + 20) = v3;
  v7 = (a3 + 40);
  *(a3 + 32) = a3 + 40;
  if (v5)
  {
    v8 = *(a2 + 32);
    v9 = *(a1 + 32);
    do
    {
      v10 = *v8++;
      result = *(v9 + 8 * v10);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_69;
            }
          }

          else if (v6 == 8 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_77;
          }
        }

        else if (v6 == 5)
        {
          if (v7 == 5)
          {
            goto LABEL_61;
          }
        }

        else if (v6 == 6 && v7 == 5)
        {
          goto LABEL_65;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if (v7 == 5)
          {
            goto LABEL_53;
          }
        }

        else if (v6 == 4 && v7 == 5)
        {
          goto LABEL_57;
        }

        goto LABEL_34;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v27 = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
        if (!result)
        {
          return result;
        }

        v13 = v27;
      }

      else
      {
        *(a2 + 1) = v12 + 1;
      }

      if (v13 <= 6)
      {
        *(this + 10) |= 1u;
        *(this + 2) = v13;
      }

      v16 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v16 < v8 && *v16 == 16)
      {
        v9 = v16 + 1;
        *(a2 + 1) = v9;
LABEL_45:
        v27 = 0;
        if (v9 >= v8 || (v17 = *v9, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
          if (!result)
          {
            return result;
          }

          v17 = v27;
          v18 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v18 = v9 + 1;
          *(a2 + 1) = v18;
        }

        *(this + 3) = v17;
        *(this + 10) |= 2u;
        if (v18 < v8 && *v18 == 29)
        {
          *(a2 + 1) = v18 + 1;
LABEL_53:
          v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v27;
          *(this + 10) |= 4u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 37)
          {
            *(a2 + 1) = v19 + 1;
LABEL_57:
            v27 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v27) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = v27;
            *(this + 10) |= 8u;
            v20 = *(a2 + 1);
            if (v20 < *(a2 + 2) && *v20 == 45)
            {
              *(a2 + 1) = v20 + 1;
LABEL_61:
              v27 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v27) & 1) == 0)
              {
                return 0;
              }

              *(this + 6) = v27;
              *(this + 10) |= 0x10u;
              v21 = *(a2 + 1);
              if (v21 < *(a2 + 2) && *v21 == 53)
              {
                *(a2 + 1) = v21 + 1;
LABEL_65:
                v27 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v27) & 1) == 0)
                {
                  return 0;
                }

                *(this + 7) = v27;
                *(this + 10) |= 0x20u;
                v22 = *(a2 + 1);
                v10 = *(a2 + 2);
                if (v22 < v10 && *v22 == 56)
                {
                  v14 = v22 + 1;
                  *(a2 + 1) = v14;
LABEL_69:
                  v27 = 0;
                  if (v14 >= v10 || (v23 = *v14, (v23 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
                    if (!result)
                    {
                      return result;
                    }

                    v23 = v27;
                    v24 = *(a2 + 1);
                    v10 = *(a2 + 2);
                  }

                  else
                  {
                    v24 = v14 + 1;
                    *(a2 + 1) = v24;
                  }

                  *(this + 32) = v23 != 0;
                  *(this + 10) |= 0x40u;
                  if (v24 < v10 && *v24 == 64)
                  {
                    v11 = v24 + 1;
                    *(a2 + 1) = v11;
LABEL_77:
                    v27 = 0;
                    if (v11 >= v10 || (v25 = *v11, (v25 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
                      if (!result)
                      {
                        return result;
                      }

                      v25 = v27;
                      v26 = *(a2 + 1);
                      v10 = *(a2 + 2);
                    }

                    else
                    {
                      v26 = v11 + 1;
                      *(a2 + 1) = v26;
                    }

                    *(this + 33) = v25 != 0;
                    *(this + 10) |= 0x80u;
                    if (v26 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      result = 1;
                      *(a2 + 36) = 1;
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_45;
    }

LABEL_34:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

BOOL raven::RavenSolutionPostprocessor::Update_EHE_Floor_Filter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = (a1 + 1352);
  v9 = *(a2 + 104);
  v35 = v9 - *(a1 + 1352);
  v10 = *(a2 + 112);
  v36 = vsubq_f64(v10, *(a1 + 1360));
  sub_1D0BD2CA4(v34, v9, v10.f64[0], v10.f64[1]);
  sub_1D0BED7A0(v34, &v35, v33.f64);
  if (v16)
  {
    v17 = sqrt(vaddvq_f64(vmulq_f64(v33, v33)));
    if (fabs(*(a3 + 1040) + -1.0) >= 2.22044605e-16)
    {
      v19 = *(a2 + 120);
      *v8 = *(a2 + 104);
      *(a1 + 1368) = v19;
      v20 = *(a1 + 1344);
      v21 = sqrt(a4);
      if (v20)
      {
        v22 = *(a1 + 1336);
        if (v21 < 100.0 || v20 < 5 || v22 >= 40.0)
        {
          v25 = v17 + -6.0;
          if (v25 >= 0.0)
          {
            v26 = v25;
          }

          else
          {
            v26 = 0.0;
          }

          v27 = v26 * 0.0714285714 * (v20 + -1.0) + 1.0;
          if (v20 + 1 < 0x14)
          {
            v28 = v20 + 1;
          }

          else
          {
            v28 = 20;
          }

          v29 = v27 / v28;
          if (v29 > 1.0)
          {
            v29 = 1.0;
          }

          *(a1 + 1336) = v22 + v29 * (v21 - v22);
          *(a1 + 1344) = vcvtad_u64_f64(1.0 / v29);
        }

        return 1;
      }

      else if (v21 <= 100.0)
      {
        result = 1;
        *(a1 + 1344) = 1;
        *(a1 + 1336) = v21;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return *(a1 + 1344) != 0;
    }
  }

  else
  {
    v32 = 12;
    v31 = 4;
    cnprint::CNPrinter::Print(&v32, &v31, "Update_EHE_Floor_Filter: Failed to rotate delta_ECEF vector from last RavenSolution.", v11, v12, v13, v14, v15, v30);
    result = 0;
    *(a1 + 1336) = 0x7FF8000000000000;
    *(a1 + 1344) = 0;
    *v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 1368) = 0x7FF8000000000000;
  }

  return result;
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, raven::PositionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v54[1] = 0;
  v54[2] = 0;
  v54[0] = &unk_1F4CEF748;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0x7FF8000000000000;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v72 = 0;
  v71 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0x7FF8000000000000;
  v77 = 0;
  v78 = 0;
  v79 = vdupq_n_s64(0x7FF8000000000000uLL);
  v80 = v79;
  v81 = v79;
  v82 = v79;
  v83 = 0x7FF8000000000000;
  v84 = 0;
  v85 = v79;
  v86 = v79;
  v87 = v79;
  v88 = v79;
  v18 = v79;
  v89 = 0x7FF8000000000000;
  if (raven::ConvertProtobufToPositionEvent(a2, v54, a3, a4, a5, a6, a7, a8, v79, a10))
  {
    sub_1D0C185C4();
  }

  v19[1] = 0;
  v19[2] = 0;
  v19[0] = &unk_1F4CEF6E8;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0x7FF8000000000000;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0x7FF8000000000000;
  v42 = 0;
  v43 = v18;
  v44 = v18;
  v45 = v18;
  v46 = v18;
  v47 = 0x7FF8000000000000;
  v48 = 0;
  v49 = v18;
  v50 = v18;
  v51 = v18;
  v52 = v18;
  v53 = 0x7FF8000000000000;
  result = raven::ConvertProtobufToVelocityEvent(a2, v54, v19, v11, v12, v13, v14, v15, v18, v16);
  if (result)
  {
    sub_1D0C1B78C();
  }

  return result;
}

void sub_1D0C179FC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::ConvertProtobufToPositionEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, raven::PositionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v61[0] = 0;
  v61[1] = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0x7FF8000000000000;
  if ((*(this + 100) & 1) == 0)
  {
    goto LABEL_25;
  }

  v12 = *(this + 1);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8);
  }

  v13 = raven::ConvertProtobufToRavenTime(v12, v61, 0, a4, a5, a6, a7, a8, a9, a10);
  if (!v13)
  {
    goto LABEL_25;
  }

  v16 = *(this + 3);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  if ((*(v16 + 366) & 0x10) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
    {
      v59.i16[0] = 12;
      v60 = 1;
      cnprint::CNPrinter::Print(&v59, &v60, "location private does not have mach continuous time for position event", v17, v18, v19, v20, v21, v58);
    }

LABEL_25:
    v32 = 0;
    return v32 & 1;
  }

  v22 = *(this + 3);
  if (!v22)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
    v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  v14.i64[0] = *(v22 + 128);
  v59 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v59, 0, v14, v15);
  v23 = v59;
  *(a2 + 8) = v59;
  v25 = raven::PopulateAllTimeFields(a2 + 8, v61, v23, v24);
  v26 = *(this + 2);
  if (!v26)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
    v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if ((*(v26 + 153) & 0x10) != 0)
  {
    v28 = *(this + 2);
    if (!v28)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v25 = raven::ConvertProtobufToLocationType(*(v28 + 104));
    *(a2 + 200) = v25;
    if ((v25 - 12) < 2)
    {
      goto LABEL_25;
    }

    if (v25 != 9 && v25 != 1)
    {
      goto LABEL_24;
    }

    v31 = *(this + 3);
    if (!v31)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    if ((*(v31 + 364) & 8) != 0)
    {
      v34 = *(this + 3);
      if (!v34)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
        v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
      }

      v29.i64[0] = *(v34 + 32);
      v59 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v59, 0, v29, v30);
      *(a2 + 2) = v59;
      v27 = 1;
    }

    else
    {
LABEL_24:
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    *(a2 + 200) = 0;
  }

  *(a2 + 24) = v27;
  *(a2 + 104) = *(a2 + 8);
  *(a2 + 120) = *(a2 + 24);
  *(a2 + 184) = *(a2 + 88);
  *(a2 + 168) = *(a2 + 72);
  *(a2 + 152) = *(a2 + 56);
  *(a2 + 136) = *(a2 + 40);
  v35 = *(this + 2);
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
    v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if (*(v35 + 16) <= 0.0)
  {
    goto LABEL_36;
  }

  v36 = *(this + 2);
  if (!v36)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
    v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if ((*(v36 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    *(a2 + 201) = 0;
    *(a2 + 26) = 0;
    *(a2 + 27) = 0;
    goto LABEL_37;
  }

  v46 = *(this + 2);
  if (!v46)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
    v46 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  v47 = *(v46 + 8);
  if (!v47)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
    v47 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
  }

  if (fabs(*(v47 + 8)) >= 2.22044605e-16)
  {
    *(a2 + 26) = 0;
    v51 = (a2 + 208);
    *(a2 + 201) = 1;
    *(a2 + 27) = 0;
LABEL_67:
    v52 = *(this + 2);
    if (!v52)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v52 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v53 = *(v52 + 8);
    if (!v53)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v53 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    *v51 = *(v53 + 8) * 0.0174532925;
    v54 = *(this + 2);
    if (!v54)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v54 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v55 = *(v54 + 8);
    if (!v55)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v55 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    *(a2 + 27) = *(v55 + 16) * 0.0174532925;
    v56 = *(this + 2);
    if (!v56)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v56 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v57 = *(v56 + 16) * *(v56 + 16) * 0.5;
    *(a2 + 29) = v57;
    *(a2 + 32) = v57;
    *(a2 + 30) = 0;
    goto LABEL_37;
  }

  v48 = *(this + 2);
  if (!v48)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
    v48 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  v49 = *(v48 + 8);
  if (!v49)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
    v49 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
  }

  v50 = fabs(*(v49 + 16));
  *(a2 + 26) = 0;
  v51 = (a2 + 208);
  *(a2 + 201) = v50 >= 2.22044605e-16;
  *(a2 + 27) = 0;
  if (v50 >= 2.22044605e-16)
  {
    goto LABEL_67;
  }

LABEL_37:
  v37 = *(this + 2);
  if (!v37)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
    v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if (*(v37 + 32) <= 0.0)
  {
    *(a2 + 202) = 0;
    v44 = 0.0;
    v45 = 224;
  }

  else
  {
    v38 = *(this + 2);
    if (!v38)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v39 = *(v38 + 32) & 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 202) = v39 < 0x7FF0000000000000;
    *(a2 + 28) = 0;
    if (v39 > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_52;
    }

    v40 = *(this + 2);
    if (!v40)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v41 = *(v40 + 24);
    v42 = *(this + 3);
    if (!v42)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    *(a2 + 28) = v41 + *(v42 + 100);
    *(a2 + 31) = 0;
    *(a2 + 33) = 0;
    v43 = *(this + 2);
    if (!v43)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v44 = *(v43 + 32) * *(v43 + 32);
    v45 = 272;
  }

  *(a2 + v45) = v44;
LABEL_52:
  if (sub_1D0C17F90(a2))
  {
    sub_1D0C182A4(a2);
  }

  v32 = *(a2 + 201) | *(a2 + 280);
  return v32 & 1;
}

uint64_t raven::ConvertProtobufToLocationType(unsigned int a1)
{
  if (a1 >= 0xE)
  {
    return 1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1D0C17F90(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(a1 + 280))
  {
    result = 1;
  }

  else if (*(a1 + 201) == 1 && *(a1 + 202) == 1 && (v59 = 0uLL, v60 = 0, v3 = *(a1 + 208), v57 = v3, v22 = *(a1 + 216), v58 = v22, !cnnavigation::LLAToECEF(&v57, 1, &v59, 0, v41)))
  {
    *(a1 + 288) = v59;
    *(a1 + 304) = v60;
    v50 = 0x300000003;
    v49 = xmmword_1D0E76C10;
    v48 = &unk_1F4CD5DD0;
    v51 = v52;
    v6 = *(a1 + 248);
    v7 = *(a1 + 256);
    v52[0] = *(a1 + 232);
    *(&v5 + 1) = *(&v52[0] + 1);
    *&v5 = v6;
    v52[1] = v5;
    v8 = *(a1 + 264);
    v53 = v7;
    v54 = v8;
    v55 = v6;
    v56 = v8;
    v45 = 0x300000003;
    v44 = xmmword_1D0E76C10;
    v43 = &unk_1F4CD5DD0;
    v46 = &v47;
    sub_1D0C09230(v41, v3, *&v22);
    if (v41[8] == 1)
    {
      sub_1D0B894B0(&v43, &v42);
    }

    v33 = 0x300000003;
    v31 = &unk_1F4CD5DD0;
    v32 = xmmword_1D0E76C10;
    v34 = &v35;
    sub_1D0B89390(&v43, &v48, &v31);
    v9 = DWORD1(v44);
    v10 = v44;
    v28 = 0x300000003;
    v23 = &unk_1F4CD5DD0;
    v29 = v30;
    v24 = DWORD1(v44);
    v25 = v44;
    v26 = v44 * DWORD1(v44);
    v27 = DWORD1(v44);
    if (DWORD1(v44))
    {
      v11 = 0;
      v12 = 0;
      v13 = HIDWORD(v44);
      v14 = v46;
      do
      {
        v15 = v11;
        v16 = v12;
        for (i = v10; i; --i)
        {
          v30[v16] = v14[v15];
          v16 += v9;
          ++v15;
        }

        ++v12;
        v11 += v13;
      }

      while (v12 != v9);
    }

    v38 = 0x300000003;
    v37 = xmmword_1D0E76C10;
    v36 = &unk_1F4CD5DD0;
    v39 = &v40;
    sub_1D0B89390(&v31, &v23, &v36);
    v18 = v39;
    *(a1 + 312) = *v39;
    v19 = SHIDWORD(v37);
    v20 = &v18[SHIDWORD(v37)];
    *(a1 + 320) = *v20;
    v21 = &v18[2 * v19];
    *(a1 + 328) = *v21;
    *(a1 + 336) = v20[1];
    result = 1;
    *(a1 + 344) = v18[((2 * v19) | 1)];
    *(a1 + 352) = v21[2];
    *(a1 + 280) = 1;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0C182A4(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 201);
  if (v2 == 1)
  {
    v3 = *(a1 + 202);
    if (v3)
    {
      goto LABEL_18;
    }

    if ((*(a1 + 280) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 280) != 1)
  {
    goto LABEL_9;
  }

  v61 = *(a1 + 288);
  v62 = *(a1 + 304);
  v59 = 0.0;
  v60 = 0uLL;
  if (cnnavigation::ECEFToLLA(&v61, 1, &v59, 0, v43))
  {
    if (v2)
    {
      v3 = *(a1 + 202);
      goto LABEL_18;
    }

LABEL_9:
    v3 = 0;
    goto LABEL_18;
  }

  v4 = v59;
  *(a1 + 208) = v59;
  v5 = *&v60;
  *(a1 + 216) = v60;
  v52 = 0x300000003;
  v51 = xmmword_1D0E76C10;
  v50 = &unk_1F4CD5DD0;
  v53 = v54;
  v7 = *(a1 + 328);
  v8 = *(a1 + 336);
  v54[0] = *(a1 + 312);
  *(&v6 + 1) = *(&v54[0] + 1);
  *&v6 = v7;
  v54[1] = v6;
  v9 = *(a1 + 344);
  v55 = v8;
  v56 = v9;
  v57 = v7;
  v58 = v9;
  v47 = 0x300000003;
  v46 = xmmword_1D0E76C10;
  v45 = &unk_1F4CD5DD0;
  v48 = &v49;
  sub_1D0BFE48C(v43, v4, v5);
  if (v43[8] == 1)
  {
    sub_1D0B894B0(&v45, &v44);
  }

  v35 = 0x300000003;
  v33 = &unk_1F4CD5DD0;
  v34 = xmmword_1D0E76C10;
  v36 = &v37;
  sub_1D0B89390(&v45, &v50, &v33);
  v10 = DWORD1(v46);
  v11 = v46;
  v30 = 0x300000003;
  v25 = &unk_1F4CD5DD0;
  v31 = v32;
  v26 = DWORD1(v46);
  v27 = v46;
  v28 = v46 * DWORD1(v46);
  v29 = DWORD1(v46);
  if (DWORD1(v46))
  {
    v12 = 0;
    v13 = 0;
    v14 = HIDWORD(v46);
    v15 = v48;
    do
    {
      v16 = v12;
      v17 = v13;
      for (i = v11; i; --i)
      {
        v32[v17] = v15[v16];
        v17 += v10;
        ++v16;
      }

      ++v13;
      v12 += v14;
    }

    while (v13 != v10);
  }

  v40 = 0x300000003;
  v39 = xmmword_1D0E76C10;
  v38 = &unk_1F4CD5DD0;
  v41 = &v42;
  sub_1D0B89390(&v33, &v25, &v38);
  v19 = v41;
  *(a1 + 232) = *v41;
  v20 = SHIDWORD(v39);
  v21 = &v19[SHIDWORD(v39)];
  *(a1 + 240) = *v21;
  v22 = &v19[2 * v20];
  *(a1 + 248) = *v22;
  *(a1 + 256) = v21[1];
  v3 = 1;
  *(a1 + 264) = v19[((2 * v20) | 1)];
  *(a1 + 272) = v22[2];
  *(a1 + 201) = 257;
LABEL_18:
  v23 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

void sub_1D0C18638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C186C8(uint64_t a1)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0C188B8();
}

void sub_1D0C18804(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C1885C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0C186C8((a1 + 3));
}

void sub_1D0C1899C(double *a1, double *a2)
{
  v3 = *a1;
  v8 = a1[1];
  v2 = v8;
  if ((*&v8 <= -1 || ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v8 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v6 = "Scale parameter is %1%, but must be > 0 !";
    goto LABEL_11;
  }

  v8 = v3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = "Location parameter is %1%, but must be finite!";
    goto LABEL_11;
  }

  v7 = *a2;
  if (fabs(*a2) != INFINITY)
  {
    v8 = *a2;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v6 = "Random variate x is %1%, but must be finite!";
LABEL_11:
      sub_1D0D26D6C("boost::math::cdf(const normal_distribution<%1%>&, %1%)", v6, &v8);
    }

    if (fabs(sub_1D0BEE5E0(1, (v7 - v3) / (v2 * -1.41421356))) > 1.79769313e308)
    {
      sub_1D0D27B28("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
    }
  }
}

double cnstatistics::NormalCDF(cnstatistics *this, double a2, double a3, double a4)
{
  v12 = a2;
  if (a4 < 0.0)
  {
    return NAN;
  }

  if (fabs(a2) == INFINITY)
  {
    v5 = fabs(a4) == INFINITY;
    v4 = NAN;
    if (a2 != a3 && !v5)
    {
      v6 = a2 <= 0.0;
      goto LABEL_11;
    }
  }

  else if (fabs(a3) == INFINITY)
  {
    v7 = fabs(a4) == INFINITY;
    v4 = NAN;
    if (a2 != a3 && !v7)
    {
      v6 = a2 <= a3;
LABEL_11:
      if (v6)
      {
        return 0.0;
      }

      else
      {
        return 1.0;
      }
    }
  }

  else
  {
    v8 = fabs(a4);
    if (v8 >= 2.22044605e-16)
    {
      v4 = 0.5;
      if (v8 != INFINITY)
      {
        sub_1D0C1902C(v11, a3, a4);
        sub_1D0C1899C(v11, &v12);
        return v9;
      }
    }

    else if (a2 >= a3)
    {
      return 1.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v4;
}

void sub_1D0C18C38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA45C(v25, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 224) == 1)
  {
    v30 = *(v8 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v8 + 232), &v30);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v8 + 232), v25))
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      memset(v73, 0, sizeof(v73));
      v74 = 0;
      v64[1] = 0;
      v64[2] = 0;
      v64[0] = &unk_1F4CEF598;
      v65 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v8 + 232), v64))
      {
        sub_1D0C4499C();
      }

      v46[2] = 0;
      v46[0] = &unk_1F4CEE9A8;
      v46[1] = 0;
      v47 = 0;
      v49 = 0;
      v48 = 0;
      v50 = 0;
      v52 = 0;
      v51 = 0;
      v53 = 0;
      v55 = 0;
      v54 = 0;
      v56 = 0x7FF8000000000000;
      v57 = 0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v63 = 0;
      v61 = 0;
      v62 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v8 + 232), v46))
      {
        sub_1D0B9B7B4();
      }

      *(&v30 + 1) = 0;
      v31 = 0.0;
      *&v30 = &unk_1F4CEE030;
      LOBYTE(v32) = 0;
      *(&v32 + 1) = 0;
      *&v33 = 0;
      BYTE8(v33) = 0;
      v34 = 0uLL;
      LOBYTE(v35) = 0;
      *(&v35 + 1) = 0;
      v36 = 0;
      v37 = 0x7FF8000000000000;
      v38 = 0;
      v39 = 0;
      v40 = &unk_1F4CD5A50;
      v41 = 0u;
      v42 = 0u;
      v43 = xmmword_1D0E76640;
      v44 = xmmword_1D0E76650;
      v45 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v8 + 232), &v30))
      {
        v10 = *(v8 + 112);
        v9 = *(v8 + 120);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        *(&v30 + 1) = v10;
        v31 = v9;
        v36 = 0;
        v37 = 0x7FF8000000000000;
        v29 = 12;
        v28 = 2;
        sub_1D0B751F4(&__p, "KlobucharParametersEvent");
        v24 = v10 + v9;
        cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v11, v12, v13, v14, v15, SLOBYTE(v24));
        if (v27 < 0)
        {
          operator delete(__p);
        }

        sub_1D0C47D0C();
      }

      v64[0] = &unk_1F4CEF598;
      *&v30 = &v73[4];
      sub_1D0BBBD80(&v30);
    }

    else
    {
      LOWORD(v46[0]) = 12;
      LOBYTE(v64[0]) = 2;
      v16 = (*(v25[0] + 16))(v25);
      v18 = v17 + v16;
      (*(v25[0] + 24))(&v30, v25);
      cnprint::CNPrinter::Print(v46, v64, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v19, v20, v21, v22, v23, SLOBYTE(v18));
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30);
      }
    }
  }
}

void sub_1D0C18FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  *(v65 - 184) = v64;
  a64 = (v65 - 88);
  sub_1D0BBBD80(&a64);
  _Unwind_Resume(a1);
}

double *sub_1D0C1902C(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  v5 = a3;
  if ((*&a3 <= -1 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a3 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    sub_1D0D26D6C("boost::math::normal_distribution<%1%>::normal_distribution", "Scale parameter is %1%, but must be > 0 !", &v5);
  }

  v5 = a2;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_1D0D26D6C("boost::math::normal_distribution<%1%>::normal_distribution", "Location parameter is %1%, but must be finite!", &v5);
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::PositionEvent *a2)
{
  if ((*this & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) > 1)
    {
      return 0;
    }

    LOWORD(v67) = 12;
    LOBYTE(v66) = 1;
    v17 = "#gmp,HandleEvent(pos),not configured";
LABEL_21:
    cnprint::CNPrinter::Print(&v67, &v66, v17, v12, v13, v14, v15, v16, SLOBYTE(v60));
    return 0;
  }

  v4 = *(a2 + 200);
  if (v4 < 0x11 && ((0x13DE9u >> v4) & 1) != 0)
  {
    return 1;
  }

  if (*(a2 + 201) == 1)
  {
    if ((*(a2 + 202) & 1) == 0)
    {
      LOWORD(v67) = 12;
      LOBYTE(v66) = 2;
      v5 = (*(*a2 + 16))(a2);
      v63 = *(a2 + 200);
      v61 = v6 + v5;
      cnprint::CNPrinter::Print(&v67, &v66, "#gmp,HandleEvent(pos),ignoring 2D Horizontal PositionEvent,t,%.3lf,type,%u", v7, v8, v9, v10, v11, SLOBYTE(v61));
      return 1;
    }

    goto LABEL_10;
  }

  if ((*(a2 + 280) & 1) == 0)
  {
    LOWORD(v67) = 12;
    LOBYTE(v66) = 3;
    v34 = (*(*a2 + 16))(a2);
    v64 = *(a2 + 200);
    v60 = v35 + v34;
    v17 = "#gmp,HandleEvent(pos),Failed to handle PositionEvent,t,%.3lf,type,%u";
    goto LABEL_21;
  }

LABEL_10:
  v67 = &unk_1F4CEF748;
  memcpy(v68, a2 + 8, sizeof(v68));
  if (sub_1D0C17F90(&v67))
  {
    LogLevel = sub_1D0C182A4(&v67);
    if (LogLevel)
    {
      v19 = *(this + 1);
      if (*(v19 + 2561) == 1)
      {
        v20 = fabs(v68[25]);
        if (v20 <= 1.30899694)
        {
          if (v20 <= 1.04719755)
          {
            if (v20 <= 1.04545222)
            {
              *(this + 2336) = 1;
              *(this + 291) = *(v19 + 3128);
              if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
              {
                v66 = 12;
                v65 = 0;
                v59 = *(this + 291);
                *(this + 2336) = 1;
                cnprint::CNPrinter::Print(&v66, &v65, "#gmp,Operate normally,elevation,%.2lf,use_model,%d", v54, v55, v56, v57, v58, v59);
              }
            }

            else if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
            {
              v66 = 12;
              v65 = 0;
              v53 = *(this + 291);
              *(this + 2336) = 1;
              cnprint::CNPrinter::Print(&v66, &v65, "#gmp,Maintain current state,elevation,%.2lf,use_model,%d", v48, v49, v50, v51, v52, v53);
            }
          }

          else
          {
            if (v20 <= 1.30725161 && (*(this + 2336) & 1) == 0)
            {
              LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
              if (!LogLevel)
              {
                v66 = 12;
                v65 = 0;
                cnprint::CNPrinter::Print(&v66, &v65, "#gmp,Below cutoff and below hysteresis region; use local model", v36, v37, v38, v39, v40, SLOBYTE(v60));
              }

              *(this + 2336) = 1;
              v19 = *(this + 1);
            }

            v41 = *(v19 + 3128);
            if (v41 < 15.0)
            {
              v41 = 15.0;
            }

            *(this + 291) = v41;
            if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
            {
              v66 = 12;
              v65 = 0;
              v47 = *(this + 291);
              *(this + 2336) = 1;
              cnprint::CNPrinter::Print(&v66, &v65, "#gmp,Adjusting elevation threshold,elevation,%.2lf,use_model,%d", v42, v43, v44, v45, v46, v47);
            }
          }

          goto LABEL_17;
        }

        if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
        {
          v66 = 12;
          v65 = 0;
          cnprint::CNPrinter::Print(&v66, &v65, "#gmp,Above cutoff; do not use local model", v21, v22, v23, v24, v25, SLOBYTE(v60));
        }
      }

      *(this + 2336) = 0;
LABEL_17:
      memcpy(this + 536, v68, 0x160uLL);
      return 1;
    }
  }

  v66 = 12;
  v65 = 4;
  v27 = (*(*a2 + 16))(a2);
  v62 = v28 + v27;
  cnprint::CNPrinter::Print(&v66, &v65, "#gmp,Could not fill in LLA/ECEF for incoming position,t,%.3lf", v29, v30, v31, v32, v33, SLOBYTE(v62));
  return 0;
}

uint64_t sub_1D0C19498(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA45C(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEF748;
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
  v29 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0x7FF8000000000000;
  v34 = 0;
  v35 = 0;
  v36 = vdupq_n_s64(0x7FF8000000000000uLL);
  v37 = v36;
  v38 = v36;
  v39 = v36;
  v40 = 0x7FF8000000000000;
  v41 = 0;
  v42 = v36;
  v43 = v36;
  v44 = v36;
  v45 = v36;
  v46 = 0x7FF8000000000000;
  result = raven::RavenIntegrityEstimator::HandleEvent((v8 + 240), v10, v11);
  if (!result)
  {
    sub_1D0DD58CC();
  }

  return result;
}

uint64_t raven::PositionChecker::HandleEvent(raven::PositionChecker *this, const raven::PositionEvent *a2, raven::PositionEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v168) = 12;
    LOBYTE(v160) = 4;
    v35 = (*(*a2 + 16))(a2, a2, a3);
    v146 = v41 + v35;
    v42 = "t,%.3lf,PositionChecker, not configured";
    v43 = &v168;
    v44 = &v160;
LABEL_50:
    cnprint::CNPrinter::Print(v43, v44, v42, v36, v37, v38, v39, v40, SLOBYTE(v146));
    return 0xFFFFFFFFLL;
  }

  memcpy(a3 + 8, a2 + 8, 0x160uLL);
  if (*(a3 + 200) == 4)
  {
    v6 = *(a3 + 201) == 1 && *(a3 + 202) == 0;
    if (v6 && *(this + 26) == 1 && raven::PositionChecker::Supplement2DWiFiWithAltitudeAssistance(this, a3))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (sub_1D0C17F90(a3))
  {
    sub_1D0C182A4(a3);
  }

  if (*(a3 + 280) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a3 + 36);
  v8 = *(a3 + 37);
  v9 = *(a3 + 38);
  result = 0xFFFFFFFFLL;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 37) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*(a3 + 38) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || sqrt(v8 * v8 + v7 * v7 + v9 * v9) <= 3185504.5)
  {
    return result;
  }

  v11 = *(a3 + 39);
  v12 = v11 < 0 || ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v12 && (v11 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return result;
  }

  v14 = *(a3 + 42);
  v15 = v14 < 0 || ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v15 && (v14 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return result;
  }

  v17 = *(a3 + 44);
  v18 = v17 < 0 || ((v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  v19 = v18 && (v17 - 1) > 0xFFFFFFFFFFFFELL;
  if (v19 || (*(a3 + 40) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 41) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 43) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v170 = 0x300000003;
  v169 = xmmword_1D0E76C10;
  v168 = &unk_1F4CD5DD0;
  v171 = &v172;
  if (!sub_1D0C1A564(a3, &v168) || sub_1D0C1A5F8(&v168, v20, v21, v22) > *(this + 5))
  {
    return 0xFFFFFFFFLL;
  }

  v24 = *(this + 2);
  if ((*(v24 + 656) & 1) == 0 && *(v24 + 658) != 1)
  {
    goto LABEL_59;
  }

  if (*(v24 + 1568))
  {
    v25 = *(this + 2);
    v163 = (*(*a2 + 16))(a2);
    *&v164 = v26;
    v27 = *(this + 2);
    v30 = CNTimeSpan::operator-(&v163, (v27 + 1544), v28, v29);
    v160 = v30;
    v161 = v31;
    if (v30 < 0 || v31 < 0.0)
    {
      v30 = CNTimeSpan::operator-(&v160, v32, v33);
      v34 = v45;
    }

    else
    {
      v34 = v31;
    }

    if (v34 + v30 <= 2.0 && *(v27 + 1560) >= 3u)
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(v30);
      if (LogLevel <= 1)
      {
        LOWORD(v163) = 12;
        LOBYTE(v157[0]) = 1;
        v46 = (*(*a2 + 16))(a2);
        v152 = *(*(this + 2) + 1560);
        v147 = v47 + v46;
        cnprint::CNPrinter::Print(&v163, v157, "t,%.3lf, Overriding inside-tunnel / close-to-tunnel status due to GNSS availability: age=%.3lf, num_satellites_tracked=%u", v48, v49, v50, v51, v52, SLOBYTE(v147));
      }

LABEL_59:
      v53 = 0;
      goto LABEL_69;
    }

    v24 = v25;
  }

  v163 = (*(*a2 + 16))(a2);
  *&v164 = v54;
  v157[0] = (*(*(v24 + 432) + 16))(v24 + 432);
  v157[1] = v55;
  LogLevel = CNTimeSpan::operator-(&v163, v157, v56, v57);
  v160 = LogLevel;
  v161 = v58;
  if (LogLevel < 0 || (*v59.i64 = v58, v58 < 0.0))
  {
    LogLevel = CNTimeSpan::operator-(&v160, v59, v60);
    v59.i64[0] = v61;
  }

  v62 = *v59.i64 + LogLevel;
  v53 = v62 < 30.0;
  if (v62 < 30.0)
  {
    v63 = *(a3 + 200);
    if (v63 == 16 || v63 == 4)
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
      if (LogLevel <= 1)
      {
        LOWORD(v163) = 12;
        LOBYTE(v157[0]) = 1;
        v64 = (*(*a2 + 16))(a2);
        v151 = *(v24 + 658);
        v153 = *(v24 + 656);
        v148 = v65 + v64;
        cnprint::CNPrinter::Print(&v163, v157, "t,%.3lf, CPI is rejected at tunnel,is_tunnel,%d,is_close_to_tunnel,%d", v66, v67, v68, v69, v70, SLOBYTE(v148));
      }
    }
  }

LABEL_69:
  v71 = *(a3 + 200);
  if (v71 > 8)
  {
    if (v71 != 9)
    {
      if (v71 != 16)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }
  }

  else if (v71 != 1)
  {
    if (v71 != 4)
    {
LABEL_79:
      if (v71 - 16 < 0xFFFFFFFE)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_80;
    }

LABEL_75:
    if (!v53)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  if (*(this + 48))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_80:
  if (*(this + 9) != 1)
  {
    return 0;
  }

  if (v71 != 16)
  {
    if (v71 == 14)
    {
      v83 = *(this + 2);
      if (*(v83 + 272) == 1 && *(v83 + 384) != 2)
      {
        if (cnprint::CNPrinter::GetLogLevel(LogLevel) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        LOWORD(v160) = 12;
        LOBYTE(v163) = 1;
        v128 = (*(*a3 + 16))(a3);
        v146 = v129 + v128;
        v42 = "t,%.3lf,PositionChecker: ARSession is not in running state, VL localization position dropped";
        goto LABEL_122;
      }

      v84 = raven::PositionChecker::VLPositionTestingAndReweighting(this, a3);
      if ((v84 & 1) == 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(v84) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        LOWORD(v160) = 12;
        LOBYTE(v163) = 1;
        v85 = (*(*a3 + 16))(a3);
        v146 = v86 + v85;
        v42 = "t,%.3lf,PositionChecker: VL localization position dropped, consistency check returned failure";
        goto LABEL_122;
      }

      goto LABEL_106;
    }

    if (v71 != 4)
    {
      goto LABEL_106;
    }
  }

  if (*(this + 25) == 1)
  {
    v72 = raven::PositionChecker::TestInnovationAndReweight(this, a3);
    switch(v72)
    {
      case 1:
        LOWORD(v160) = 12;
        LOBYTE(v163) = 4;
        v132 = (*(*a3 + 16))(a3);
        v146 = v133 + v132;
        v42 = "t,%.3lf error in position measurement innovation testing";
        goto LABEL_122;
      case 3:
        if (cnprint::CNPrinter::GetLogLevel(v72))
        {
          return 0xFFFFFFFFLL;
        }

        LOWORD(v160) = 12;
        LOBYTE(v163) = 0;
        v130 = (*(*a3 + 16))(a3);
        v146 = v131 + v130;
        v42 = "t,%.3lf Innovation test failed: Position-Measurement rejected";
        goto LABEL_122;
      case 2:
        LOWORD(v160) = 12;
        LOBYTE(v163) = 4;
        v73 = (*(*a3 + 16))(a3);
        v146 = v74 + v73;
        v42 = "t,%.3lf unexpected innovation test result";
LABEL_122:
        v43 = &v160;
        v44 = &v163;
        goto LABEL_50;
    }
  }

  if (*(this + 120) == 1)
  {
    v163 = (*(*a3 + 16))(a3);
    *&v164 = v75;
    if ((*(this + 120) & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    v78 = CNTimeSpan::operator-(&v163, this + 17, v76, v77);
    v160 = v78;
    v161 = v79;
    if (v78 < 0 || (*v80.i64 = v79, v79 < 0.0))
    {
      v78 = CNTimeSpan::operator-(&v160, v80, v81);
      v80.i64[0] = v82;
    }

    if (*v80.i64 + v78 < 30.0 && fabs(sqrt((v8 - *(this + 53)) * (v8 - *(this + 53)) + (v7 - *(this + 52)) * (v7 - *(this + 52)) + (v9 - *(this + 54)) * (v9 - *(this + 54)))) <= 0.01)
    {
      if (cnprint::CNPrinter::GetLogLevel(v78) > 1)
      {
        return 0xFFFFFFFFLL;
      }

      LOWORD(v160) = 12;
      LOBYTE(v163) = 1;
      v136 = (*(*a2 + 16))(a2);
      v146 = v137 + v136;
      v42 = "t,%.3lf,PositionChecker: duplicate PositionEvent,returning check failed";
      goto LABEL_122;
    }

    memcpy(this + 136, a3 + 8, 0x160uLL);
  }

  else
  {
    *(this + 16) = &unk_1F4CEF748;
    memcpy(this + 136, a3 + 8, 0x160uLL);
    *(this + 120) = 1;
  }

  if (sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EC0A90))
  {
    if (*(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 1344) == 1)
    {
      v87 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      if (v87[169] > 13.4112)
      {
        if (cnprint::CNPrinter::GetLogLevel(v87) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        LOWORD(v160) = 12;
        LOBYTE(v163) = 1;
        v134 = (*(*a2 + 16))(a2);
        v146 = v135 + v134;
        v42 = "t,%.3lf,PositionChecker: Speed too large,returning check failed,%.3lf";
        goto LABEL_122;
      }
    }
  }

LABEL_106:
  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EC0A90);
  if (result)
  {
    if (*(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 1464) == 1)
    {
      v88 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 184);
      v89 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 185);
      v90 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 186);
      if (!sub_1D0C1A564(a3, &v168))
      {
        return 0xFFFFFFFFLL;
      }

      v91 = *v171;
      v92 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v93 = v171;
      *v171 = v91 + *(v92 + 187);
      v94 = v93[SHIDWORD(v169)];
      v95 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v96 = SHIDWORD(v169);
      v97 = v171;
      v171[SHIDWORD(v169)] = v94 + *(v95 + 188);
      v98 = v97[2 * v96];
      v99 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v100 = v171;
      v171[2 * SHIDWORD(v169)] = v98 + *(v99 + 189);
      v101 = v100[1];
      v102 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v103 = v171;
      v171[1] = v101 + *(v102 + 188);
      v104 = v103[SHIDWORD(v169) + 1];
      v105 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v106 = SHIDWORD(v169);
      v107 = v171;
      v171[SHIDWORD(v169) + 1] = v104 + *(v105 + 190);
      v108 = v107[2 * v106 + 1];
      v109 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v110 = v171;
      v171[2 * SHIDWORD(v169) + 1] = v108 + *(v109 + 191);
      v111 = v110[2];
      v112 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v113 = v171;
      v171[2] = v111 + *(v112 + 189);
      v114 = v113[SHIDWORD(v169) + 2];
      v115 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v116 = SHIDWORD(v169);
      v117 = v171;
      v171[SHIDWORD(v169) + 2] = v114 + *(v115 + 191);
      v118 = v117[2 * v116 + 2];
      v119 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v171[2 * SHIDWORD(v169) + 2] = v118 + *(v119 + 192);
      v165 = 0x100000003;
      v164 = xmmword_1D0E7DCC0;
      v166 = v167;
      v167[0] = v7 - v88;
      v167[1] = v8 - v89;
      v167[2] = v9 - v90;
      v162 = INFINITY;
      v163 = &unk_1F4CDEB28;
      sub_1D0D4BAFC(&v168, &v162, &v160);
      if ((*&v162 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v162 > *(this + 5))
      {
        if (cnprint::CNPrinter::GetLogLevel(v120) <= 1)
        {
          LOWORD(v157[0]) = 12;
          v156[0] = 1;
          v121 = (*(*a2 + 16))(a2);
          v149 = v122 + v121;
          cnprint::CNPrinter::Print(v157, v156, "t,%.3lf,PositionChecker: Poorly conditioned joint covariance matrix,returning check failed", v123, v124, v125, v126, v127, SLOBYTE(v149));
        }

        return 0xFFFFFFFFLL;
      }

      sub_1D0D4BC50(&v163, v156);
      sub_1D0BFB8FC(v156, &v160, v157);
      v138 = sub_1D0BFC678(v157, &v163, v158);
      if (fabs(sqrt(*v159)) > *(this + 4) || (*(this + 8) & 1) == 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(v138) <= 1)
        {
          LOWORD(v157[0]) = 12;
          v156[0] = 1;
          v139 = (*(*a2 + 16))(a2);
          v155 = *(a2 + 200);
          v154 = *(this + 4);
          v150 = v140 + v139;
          cnprint::CNPrinter::Print(v157, v156, "t,%.3lf,PositionChecker: failed sigma sanity test, %.2lf > %.2lf, returning check failed, src,%d", v141, v142, v143, v144, v145, SLOBYTE(v150));
        }

        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  return result;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::PositionChecker **this, const raven::PositionEvent *a2, raven::PositionEvent *a3)
{
  v5 = raven::PositionChecker::HandleEvent(this[210], a2, a3);
  if (v5)
  {
    return v5;
  }

  v7 = *(a3 + 200);
  if (v7 <= 0xD)
  {
    if (v7 != 4 && v7 != 11)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (v7 != 14)
  {
    if (v7 != 16)
    {
      return v5;
    }

LABEL_11:
    if (*(a3 + 202) == 1)
    {
      if (*(this + 1168) == 1)
      {
        memcpy(this + 148, a3 + 8, 0x160uLL);
      }

      else
      {
        this[147] = &unk_1F4CEF748;
        memcpy(this + 148, a3 + 8, 0x160uLL);
        *(this + 1168) = 1;
      }

      if (*(a3 + 200) == 16)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return v5;
  }

  if (*(this + 288) == 1 && *(this + 400) == 2)
  {
    if (*(this + 800) == 1)
    {
      memcpy(this + 102, a3 + 8, 0x160uLL);
    }

    else
    {
      this[101] = &unk_1F4CEF748;
      memcpy(this + 102, a3 + 8, 0x160uLL);
      *(this + 800) = 1;
    }
  }

  return v5;
}

uint64_t sub_1D0C1A564(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 280) & 1) != 0 || (result = sub_1D0C17F90(a1), result))
  {
    *(a2 + 8) = xmmword_1D0E76C10;
    v5 = *(a2 + 32);
    *v5 = *(a1 + 312);
    v5[3] = *(a1 + 320);
    v5[6] = *(a1 + 328);
    v5[1] = *(a1 + 320);
    v5[4] = *(a1 + 336);
    v5[7] = *(a1 + 344);
    v5[2] = *(a1 + 328);
    v5[5] = *(a1 + 344);
    v5[8] = *(a1 + 352);
    return 1;
  }

  return result;
}

double sub_1D0C1A5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v29 = 0x300000003;
  v28 = xmmword_1D0E76C10;
  v27 = &unk_1F4CD5DD0;
  v30 = &v31;
  v24 = 0x300000003;
  v23 = xmmword_1D0E76C10;
  v22 = &unk_1F4CD5DD0;
  v25 = &v26;
  v19 = 0x100000003;
  v18 = xmmword_1D0E7DCC0;
  v17 = &unk_1F4CDEAA0;
  v20 = &v21;
  v14 = 0x1000001E6;
  v12 = &unk_1F4CDFFB0;
  v13 = xmmword_1D0E83DC0;
  v15 = &v16;
  v9 = 0x100000003;
  v7 = &unk_1F4CDEB28;
  v8 = xmmword_1D0E7DCC0;
  v10 = &v11;
  return sub_1D0C1A8F0(v4, &v27, &v22, &v17, &v12, &v7, "2", v5);
}

void sub_1D0C1A774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a3 + 28) * *(a3 + 24);
  sub_1D0B894B0(a2, a1);
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v12 = *(a2 + 32);
  v13 = *(a4 + 32);
  v14 = *(a3 + 32);
  v28 = 78;
  v27 = 78;
  v25 = v11;
  v26 = v10;
  v15 = dgesvd_NEWLAPACK();
  v16 = **(a3 + 32);
  if (v9 < v16 && cnprint::CNPrinter::GetLogLevel(v15) <= 1)
  {
    LOWORD(v26) = 4;
    LOBYTE(v25) = 1;
    cnprint::CNPrinter::Print(&v26, &v25, "Warning: Svd optimal workspace size %u is greater than provided workspace size %u; performance may suffer.", v17, v18, v19, v20, v21, v16);
  }

  if (v8 >= v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = v8;
  }

  v23 = *(a3 + 24);
  v24 = *(a3 + 28);
  *(a3 + 8) = v23;
  *(a3 + 12) = v24;
  *(a3 + 16) = v24 * v23;
  *(a3 + 20) = v23;
  *(a4 + 8) = v22;
  *(a4 + 12) = 1;
  *(a4 + 16) = v22;
  *(a4 + 20) = v22;
}

double sub_1D0C1A8F0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *__s1, uint64_t a8)
{
  v8 = 0.0;
  if (!a1[4])
  {
    return v8;
  }

  v16 = a1[2];
  v17 = a1[3];
  v18 = *__s1;
  if (v18 != 50)
  {
    if (v18 == 49 && !__s1[1])
    {
LABEL_12:
      if (v16 == v17)
      {
        sub_1D0BFB1AC(a1, a2, a5, a6, __s1);
        v20 = v19;
        sub_1D0B9F868(a1, a4, a5, a3);
        sub_1D0BFB1AC(a3, a2, a5, a6, __s1);
        return v20 * v21;
      }

      else
      {
        v27 = 4;
        v26 = 5;
        cnprint::CNPrinter::Print(&v27, &v26, "Error using Cond: condition numbers for non-square matrices cannot be computed based on the %s-norm.", a4, a5, a6, __s1, a8, __s1);
      }

      return v8;
    }

    goto LABEL_7;
  }

  if (__s1[1])
  {
LABEL_7:
    if (strcmp(__s1, "inf") && strcmp(__s1, "fro"))
    {
      v29 = 4;
      v28 = 5;
      cnprint::CNPrinter::Print(&v29, &v28, "Error using Cond: condition number based on invalid %s-norm was requested.", a4, a5, a6, __s1, a8, __s1);
      v18 = *__s1;
    }

    if (v18 != 50 || __s1[1])
    {
      goto LABEL_12;
    }
  }

  sub_1D0C1A774(a1, a2, a5, a6);
  v22 = *(a6 + 32);
  if (v16 >= v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = v16;
  }

  v24 = v22[v23 - 1];
  if (v24 <= 0.0)
  {
    return INFINITY;
  }

  else
  {
    return *v22 / v24;
  }
}

void sub_1D0C1AAC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA45C(v12, a3, a3, a4, a5, a6, a7, a8);
  if ((v19 | 8) == 9 && v14 == 1 && COERCE__INT64(fabs(*&v15 + *(&v14 + 1))) <= 0x7FEFFFFFFFFFFFFFLL && COERCE__INT64(fabs(*(&v13 + 1) + v13)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = *(v8 + 224);
    v10 = v16;
    *(v8 + 264) = v15;
    *(v8 + 280) = v10;
    v11 = v18;
    *(v8 + 296) = v17;
    *(v8 + 312) = v11;
    *(v8 + 232) = v13;
    *(v8 + 248) = v14;
    if ((v9 & 1) == 0)
    {
      *(v8 + 224) = 1;
    }
  }
}

uint64_t raven::ConvertProtobufToVelocityEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, const raven::PositionEvent *a3, raven::VelocityEvent *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v127 = *MEMORY[0x1E69E9840];
  v111[1] = 0;
  v111[0] = 0;
  v112 = 0;
  v114 = 0;
  v113 = 0;
  v115 = 0;
  v117 = 0;
  v116 = 0;
  v118 = 0;
  v120 = 0;
  v119 = 0;
  v121 = 0x7FF8000000000000;
  if ((*(this + 100) & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8);
  }

  v14 = raven::ConvertProtobufToRavenTime(v13, v111, 0, a4, a5, a6, a7, a8, a9, a10);
  if (!v14)
  {
    goto LABEL_10;
  }

  v17 = *(this + 3);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v14);
    v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  if ((*(v17 + 366) & 0x10) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
    {
      v105.i16[0] = 12;
      LOBYTE(v100) = 1;
      cnprint::CNPrinter::Print(&v105, &v100, "location private does not have mach continuous time for velocity event", v18, v19, v20, v21, v22, v86);
    }

LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  v26 = *(this + 3);
  if (!v26)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v14);
    v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  v15.i64[0] = *(v26 + 128);
  v105 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v105, 0, v15, v16);
  v27 = v105;
  *(a3 + 8) = v105;
  LogLevel = raven::PopulateAllTimeFields(a3 + 8, v111, v27, v28);
  v30 = *(this + 2);
  if (!v30)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if ((*(v30 + 153) & 0x10) != 0)
  {
    v32 = *(this + 2);
    if (!v32)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    LogLevel = raven::ConvertProtobufToLocationType(*(v32 + 104));
    *(a3 + 200) = LogLevel;
    if ((LogLevel | 8) != 9)
    {
      goto LABEL_24;
    }

    v35 = *(this + 3);
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    if ((*(v35 + 364) & 8) != 0)
    {
      v36 = *(this + 3);
      if (!v36)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
        v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
      }

      v33.i64[0] = *(v36 + 32);
      v105 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v105, 0, v33, v34);
      *(a3 + 2) = v105;
      v31 = 1;
    }

    else
    {
LABEL_24:
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
    *(a3 + 200) = 0;
  }

  *(a3 + 24) = v31;
  *(a3 + 104) = *(a3 + 8);
  *(a3 + 120) = *(a3 + 24);
  *(a3 + 184) = *(a3 + 88);
  *(a3 + 168) = *(a3 + 72);
  *(a3 + 152) = *(a3 + 56);
  *(a3 + 136) = *(a3 + 40);
  v37 = *(this + 2);
  v38 = v37;
  if (!v37)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    v37 = *(this + 2);
  }

  if (*(v38 + 40) < 0.0)
  {
    goto LABEL_40;
  }

  v39 = v37;
  if (!v37)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    v37 = *(this + 2);
  }

  if ((*(v39 + 40) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_40;
  }

  v40 = v37;
  if (!v37)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    v37 = *(this + 2);
  }

  if (*(v40 + 56) <= 0.0)
  {
LABEL_40:
    v42 = 0;
  }

  else
  {
    v41 = v37;
    if (!v37)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
      v37 = *(this + 2);
    }

    v42 = (*(v41 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  *(a3 + 201) = v42;
  if (v37)
  {
    *(a3 + 26) = *(v37 + 40);
LABEL_44:
    v43 = *(v37 + 72);
    goto LABEL_45;
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
  v37 = *(this + 2);
  *(a3 + 26) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 40);
  if (v37)
  {
    goto LABEL_44;
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
  v37 = *(this + 2);
  v43 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 72);
  if (!v37)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

LABEL_45:
  if (*(v37 + 64) >= 0.0)
  {
    v45 = *(this + 2);
    if (!v45)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v44 = 0;
    if (*(v45 + 64) < 360.0 && v43 > 0.0)
    {
      v44 = (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    }
  }

  else
  {
    v44 = 0;
  }

  *(a3 + 203) = v44;
  v46 = *(this + 2);
  if (!v46)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v46 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  *(a3 + 28) = *(v46 + 64) * 0.0174532925;
  if (*(a3 + 201) != 1 || (*(a3 + 203) & 1) != 0 || *(a3 + 26) >= 1.0)
  {
    goto LABEL_66;
  }

  LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
  if (LogLevel <= 1)
  {
    v105.i16[0] = 12;
    LOBYTE(v100) = 1;
    v52 = *(this + 2);
    if (v52)
    {
      v53 = v52[8];
      v54 = *(a3 + 201);
    }

    else
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v52 = *(this + 2);
      v53 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 64);
      v56 = *(a3 + 201);
      if (!v52)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v55);
        v52 = *(this + 2);
        v79 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 40);
        if (!v52)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v78);
          v52 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
        }

        goto LABEL_64;
      }
    }

    v57 = v52[5];
LABEL_64:
    v87 = v52[7];
    cnprint::CNPrinter::Print(&v105, &v100, "Filling dummy course at low speed,course,%.3f,acc,%.3f,spd valid,%d,speed,%.3f,acc,%.3f", v47, v48, v49, v50, v51, v53);
  }

  *(a3 + 203) = 1;
  *(a3 + 28) = 0;
  v43 = 180.0;
LABEL_66:
  v58 = *(this + 2);
  if (!v58)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v58 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  *(a3 + 29) = *(v58 + 56) * *(v58 + 56);
  *(a3 + 34) = v43 * 0.0174532925 * (v43 * 0.0174532925);
  *(a3 + 202) = 1;
  *(a3 + 27) = 0;
  *(a3 + 30) = 0;
  *(a3 + 31) = 0;
  *(a3 + 16) = xmmword_1D0E9C870;
  *(a3 + 280) = 0;
  if (((*(a2 + 201) & 1) != 0 || *(a2 + 280) == 1) && *(a3 + 201) == 1 && *(a3 + 203) == 1)
  {
    v59 = *(a3 + 26);
    v60 = __sincos_stret(*(a3 + 28));
    *&v125 = v59 * v60.__sinval;
    *(&v125 + 1) = v59 * v60.__cosval;
    v126 = 0;
    v122 = 0uLL;
    v123 = 0;
    if (*(a2 + 280) == 1)
    {
      v61 = 0;
      v62 = a2 + 288;
      v63 = a2 + 296;
      v64 = *(a2 + 38);
    }

    else
    {
      v62 = a2 + 208;
      v63 = a2 + 216;
      v64 = *(a2 + 28);
      if (!*(a2 + 202))
      {
        v64 = 0.0;
      }

      v61 = 1;
    }

    v65 = *v63;
    v124[0] = *v62;
    v124[1] = v65;
    *&v124[2] = v64;
    v105.i8[8] = 0;
    v108 = 0x300000003;
    v107 = xmmword_1D0E76C10;
    v106 = &unk_1F4CD5DD0;
    v109 = &v110;
    v105.i64[0] = &unk_1F4CD5D90;
    if (!cnnavigation::ENUToECEF(&v125, 1, v61, v124, 1, &v122, &v105))
    {
      *(a3 + 280) = 1;
      *(a3 + 18) = v122;
      *(a3 + 38) = v123;
      v102 = 0x300000003;
      v101 = xmmword_1D0E76C10;
      v100 = &unk_1F4CD5DD0;
      v103 = &v104;
      if (v105.u8[8] == 1)
      {
        sub_1D0B894B0(&v100, &v106);
      }

      v66 = *(a3 + 29);
      v67 = *(a3 + 34);
      sub_1D0BFA9C4(3, 3, v97);
      v68 = sqrt(v66);
      v69 = sqrt(v67);
      if (v59 < v68 * 5.0 || v69 >= 0.261799388)
      {
        if (v69 >= 0.261799388)
        {
          v77 = (v59 + v68 * 3.0) / 3.0 * ((v59 + v68 * 3.0) / 3.0);
        }

        else
        {
          v77 = *(a3 + 29);
        }

        v80 = v99;
        *v99 = v77;
        v81 = v98;
        v80[v98 + 1] = v77;
        v80[2 * v81 + 2] = *(a3 + 32);
      }

      else
      {
        sub_1D0BFA9C4(3, 3, v94);
        v70 = v96;
        *v96 = *(a3 + 29);
        v71 = v95;
        v72 = &v70[v95];
        *v72 = *(a3 + 31);
        v73 = &v70[2 * v71];
        *v73 = *(a3 + 30);
        v70[1] = *(a3 + 31);
        v72[1] = *(a3 + 34);
        v70[((2 * v71) | 1)] = *(a3 + 33);
        v70[2] = *(a3 + 30);
        v72[2] = *(a3 + 33);
        v73[2] = *(a3 + 32);
        sub_1D0BFA9C4(3, 3, v91);
        v74 = v93;
        *v93 = v60.__sinval;
        v75 = v92;
        v76 = &v74[v92];
        *v76 = v59 * v60.__cosval;
        v74[1] = v60.__cosval;
        v76[1] = -(v59 * v60.__sinval);
        v74[2 * v75 + 2] = 1.0;
        sub_1D0C1B688(v91, v94, v89);
        sub_1D0C1B708(v91, v88);
        sub_1D0C1B688(v89, v88, v90);
        sub_1D0B894B0(v97, v90);
      }

      sub_1D0C1B688(&v100, v97, v91);
      sub_1D0C1B708(&v100, v90);
      sub_1D0C1B688(v91, v90, v94);
      v82 = v96;
      *(a3 + 39) = *v96;
      v83 = v95;
      v84 = &v82[v95];
      *(a3 + 40) = *v84;
      v85 = &v82[2 * v83];
      *(a3 + 41) = *v85;
      *(a3 + 42) = v84[1];
      *(a3 + 43) = v82[((2 * v83) | 1)];
      *(a3 + 44) = v85[2];
    }
  }

  if (*(a3 + 201) == 1 && *(a3 + 203) == 1 && (*(a3 + 202) & 1) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = *(a3 + 280);
  }

LABEL_11:
  v24 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

uint64_t cnnavigation::ENUToECEF(__int128 *a1, int a2, int a3, uint64_t a4, int a5, float64x2_t *a6, uint64_t a7)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v12 = *a4;
    v21 = *a4;
    v16 = *(a4 + 8);
    v22 = v16;
    if (cnnavigation::LLAToECEF(&v21, a2, v23.f64, 0, &v19))
    {
      goto LABEL_10;
    }

    v11 = v16;
  }

  else
  {
    if (a3)
    {
      goto LABEL_10;
    }

    v23 = *a4;
    v24 = *(a4 + 16);
    if (cnnavigation::ECEFToLLA(&v23, a2, &v21, 0, &v19))
    {
      goto LABEL_10;
    }

    v12 = v21;
    v11.n128_u64[0] = v22.n128_u64[0];
  }

  (*(*a7 + 16))(a7, v12, v11);
  v17 = *a1;
  v18 = *(a1 + 2);
  sub_1D0BED7A0(a7, &v17, v19.f64);
  if (a5 == 1)
  {
    *a6 = v19;
    v13 = v20;
    goto LABEL_13;
  }

  if (!a5)
  {
    *a6 = vaddq_f64(v19, v23);
    v13 = v20 + v24;
LABEL_13:
    result = 0;
    a6[1].f64[0] = v13;
    goto LABEL_11;
  }

LABEL_10:
  result = 0xFFFFFFFFLL;
LABEL_11:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0C1B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 8) = xmmword_1D0E76C10;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0C1B708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0BD2018(a1, a2);
}

void sub_1D0C1B994(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C1BA34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0C050F4(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEF6E8;
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
  v29 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0x7FF8000000000000;
  v34 = 0;
  v35 = vdupq_n_s64(0x7FF8000000000000uLL);
  v36 = v35;
  v37 = v35;
  v38 = v35;
  v39 = 0x7FF8000000000000;
  v40 = 0;
  v41 = v35;
  v42 = v35;
  v43 = v35;
  v44 = v35;
  v45 = 0x7FF8000000000000;
  result = raven::VelocityChecker::HandleEvent(*(v8 + 1952), v10, v11);
  if (!result)
  {
    sub_1D0C1B78C();
  }

  return result;
}

void sub_1D0C1BB88(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::VelocityChecker::HandleEvent(raven::VelocityChecker *this, const raven::VelocityEvent *a2, raven::VelocityEvent *a3)
{
  if (*(this + 8))
  {
    v4 = *(a2 + 200);
    v8 = v4 > 0xD;
    v5 = (1 << v4) & 0x3808;
    v6 = v8 || v5 == 0;
    if (v6 && (*(a2 + 36) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 37) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 38) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v7 = *(a2 + 39);
      v8 = v7 < 0 || ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
      if (!v8 || (v7 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        v10 = *(a2 + 42);
        v11 = v10 < 0 || ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
        if (!v11 || (v10 - 1) <= 0xFFFFFFFFFFFFELL)
        {
          v13 = *(a2 + 44);
          v14 = v13 < 0 || ((v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
          if ((!v14 || (v13 - 1) <= 0xFFFFFFFFFFFFELL) && (*(a2 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 41) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 43) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v63 = *(a2 + 37);
            v64 = *(a2 + 38);
            v62 = *(a2 + 36);
            v78 = 0x300000003;
            v77 = xmmword_1D0E76C10;
            v76 = &unk_1F4CD5DD0;
            v79 = &v80;
            if (sub_1D0C1C13C(a2, &v76))
            {
              if (sub_1D0C1A5F8(&v76, v18, v19, v20) <= *(this + 4) && ((*(a2 + 200) | 8) != 9 || (*(this + 40) & 1) == 0))
              {
                memcpy(a3 + 8, a2 + 8, 0x160uLL);
                if (*(this + 9) != 1)
                {
                  return 0;
                }

                result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0E83DF0);
                if (!result)
                {
                  return result;
                }

                if (*(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0) + 1544) != 1)
                {
                  return 0;
                }

                v22 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0) + 194);
                v23 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0) + 195);
                v24 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0) + 196);
                v25 = *v79;
                v26 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v27 = v79;
                *v79 = v25 + *(v26 + 197);
                v28 = v27[SHIDWORD(v77)];
                v29 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v30 = SHIDWORD(v77);
                v31 = v79;
                v79[SHIDWORD(v77)] = v28 + *(v29 + 198);
                v32 = v31[2 * v30];
                v33 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v34 = v79;
                v79[2 * SHIDWORD(v77)] = v32 + *(v33 + 199);
                v35 = v34[1];
                v36 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v37 = v79;
                v79[1] = v35 + *(v36 + 198);
                v38 = v37[SHIDWORD(v77) + 1];
                v39 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v40 = SHIDWORD(v77);
                v41 = v79;
                v79[SHIDWORD(v77) + 1] = v38 + *(v39 + 200);
                v42 = v41[2 * v40 + 1];
                v43 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v44 = v79;
                v79[2 * SHIDWORD(v77) + 1] = v42 + *(v43 + 201);
                v45 = v44[2];
                v46 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v47 = v79;
                v79[2] = v45 + *(v46 + 199);
                v48 = v47[SHIDWORD(v77) + 2];
                v49 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v50 = SHIDWORD(v77);
                v51 = v79;
                v79[SHIDWORD(v77) + 2] = v48 + *(v49 + 201);
                v52 = v51[2 * v50 + 2];
                v53 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v79[2 * SHIDWORD(v77) + 2] = v52 + *(v53 + 202);
                v73 = 0x100000003;
                v72 = xmmword_1D0E7DCC0;
                v71 = &unk_1F4CDEB28;
                v74 = v75;
                v75[0] = v62 - v22;
                v75[1] = v63 - v23;
                v75[2] = v64 - v24;
                v70 = INFINITY;
                sub_1D0D4BAFC(&v76, &v70, v69);
                if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v70 <= *(this + 4))
                {
                  sub_1D0D4BC50(&v71, v65);
                  sub_1D0BFB8FC(v65, v69, v66);
                  sub_1D0BFC678(v66, &v71, v67);
                  return (((fabs(sqrt(*v68)) > *(this + 3)) | ~*(this + 8)) << 31 >> 31);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    LOWORD(v76) = 12;
    v69[0] = 4;
    v54 = (*(*a2 + 16))(a2, a2, a3);
    v61 = v55 + v54;
    cnprint::CNPrinter::Print(&v76, v69, "t,%.3lf,VelocityChecker, not configured", v56, v57, v58, v59, v60, SLOBYTE(v61));
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0C1C13C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 280);
  if (*(a2 + 8) == 3 && *(a2 + 12) == 3)
  {
    v4 = *(a1 + 280);
  }

  else
  {
    v4 = 0;
  }

  if (v4 == 1)
  {
    v5 = *(a2 + 32);
    *v5 = *(a1 + 312);
    v6 = *(a2 + 20);
    v7 = &v5[v6];
    *v7 = *(a1 + 320);
    v8 = &v5[2 * v6];
    *v8 = *(a1 + 328);
    v5[1] = *(a1 + 320);
    v7[1] = *(a1 + 336);
    v5[((2 * v6) | 1)] = *(a1 + 344);
    v5[2] = *(a1 + 328);
    v7[2] = *(a1 + 344);
    v8[2] = *(a1 + 352);
  }

  return v4;
}

void sub_1D0C1C1C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0C050F4(v12, a3, a3, a4, a5, a6, a7, a8);
  if ((v19 | 8) == 9 && v14 == 1 && COERCE__INT64(fabs(*&v15 + *(&v14 + 1))) <= 0x7FEFFFFFFFFFFFFFLL && COERCE__INT64(fabs(*(&v13 + 1) + v13)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = *(v8 + 224);
    v10 = v16;
    *(v8 + 264) = v15;
    *(v8 + 280) = v10;
    v11 = v18;
    *(v8 + 296) = v17;
    *(v8 + 312) = v11;
    *(v8 + 232) = v13;
    *(v8 + 248) = v14;
    if ((v9 & 1) == 0)
    {
      *(v8 + 224) = 1;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::LogEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v6 != 2)
      {
        goto LABEL_15;
      }

      *(this + 7) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v22 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
        {
          return 0;
        }
      }

      else
      {
        v22 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v11 = *(a2 + 14);
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v13 < 0 == v12)
      {
        *(a2 + 14) = v13;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 18)
      {
        *(a2 + 1) = v14 + 1;
LABEL_27:
        *(this + 7) |= 2u;
        v15 = *(this + 2);
        if (!v15)
        {
          operator new();
        }

        v23 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
          {
            return 0;
          }
        }

        else
        {
          v23 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v19 = *(a2 + 14);
        v12 = __OFSUB__(v19, 1);
        v20 = v19 - 1;
        if (v20 < 0 == v12)
        {
          *(a2 + 14) = v20;
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

    if (v6 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v6 == 4)
          {
            if (v7 == 2)
            {
              goto LABEL_68;
            }

            goto LABEL_28;
          }

          if (v6 == 5)
          {
            if (v7 != 2)
            {
              goto LABEL_28;
            }

LABEL_82:
            *(this + 15) |= 0x10u;
            v37 = *(this + 5);
            if (!v37)
            {
              operator new();
            }

            v51 = 0;
            v38 = *(a2 + 1);
            if (v38 >= *(a2 + 2) || *v38 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
              {
                return 0;
              }
            }

            else
            {
              v51 = *v38;
              *(a2 + 1) = v38 + 1;
            }

            v39 = *(a2 + 14);
            v40 = *(a2 + 15);
            *(a2 + 14) = v39 + 1;
            if (v39 >= v40)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::NrBiases::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v41 = *(a2 + 14);
            v13 = __OFSUB__(v41, 1);
            v42 = v41 - 1;
            if (v42 < 0 == v13)
            {
              *(a2 + 14) = v42;
            }

            v43 = *(a2 + 1);
            if (v43 < *(a2 + 2) && *v43 == 50)
            {
              *(a2 + 1) = v43 + 1;
              goto LABEL_96;
            }
          }

          else
          {
            if (v6 != 6 || v7 != 2)
            {
              goto LABEL_28;
            }

LABEL_96:
            *(this + 15) |= 0x20u;
            v44 = *(this + 6);
            if (!v44)
            {
              operator new();
            }

            v51 = 0;
            v45 = *(a2 + 1);
            if (v45 >= *(a2 + 2) || *v45 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
              {
                return 0;
              }
            }

            else
            {
              v51 = *v45;
              *(a2 + 1) = v45 + 1;
            }

            v46 = *(a2 + 14);
            v47 = *(a2 + 15);
            *(a2 + 14) = v46 + 1;
            if (v46 >= v47)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v48 = *(a2 + 14);
            v13 = __OFSUB__(v48, 1);
            v49 = v48 - 1;
            if (v49 < 0 == v13)
            {
              *(a2 + 14) = v49;
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

        if (v6 != 1)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_28;
        }

        *(this + 15) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v51 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
          {
            return 0;
          }
        }

        else
        {
          v51 = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v10 = *(a2 + 14);
        v11 = *(a2 + 15);
        *(a2 + 14) = v10 + 1;
        if (v10 >= v11)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v12 = *(a2 + 14);
        v13 = __OFSUB__(v12, 1);
        v14 = v12 - 1;
        if (v14 < 0 == v13)
        {
          *(a2 + 14) = v14;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_40;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_28;
      }

LABEL_40:
      *(this + 15) |= 2u;
      v16 = *(this + 2);
      if (!v16)
      {
        operator new();
      }

      v51 = 0;
      v17 = *(a2 + 1);
      if (v17 >= *(a2 + 2) || *v17 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
        {
          return 0;
        }
      }

      else
      {
        v51 = *v17;
        *(a2 + 1) = v17 + 1;
      }

      v18 = *(a2 + 14);
      v19 = *(a2 + 15);
      *(a2 + 14) = v18 + 1;
      if (v18 >= v19)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v20 = *(a2 + 14);
      v13 = __OFSUB__(v20, 1);
      v21 = v20 - 1;
      if (v21 < 0 == v13)
      {
        *(a2 + 14) = v21;
      }

      v22 = *(a2 + 1);
      if (v22 < *(a2 + 2) && *v22 == 26)
      {
        *(a2 + 1) = v22 + 1;
LABEL_54:
        *(this + 15) |= 4u;
        v23 = *(this + 3);
        if (!v23)
        {
          operator new();
        }

        v51 = 0;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
          {
            return 0;
          }
        }

        else
        {
          v51 = *v24;
          *(a2 + 1) = v24 + 1;
        }

        v25 = *(a2 + 14);
        v26 = *(a2 + 15);
        *(a2 + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v27 = *(a2 + 14);
        v13 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v13)
        {
          *(a2 + 14) = v28;
        }

        v29 = *(a2 + 1);
        if (v29 < *(a2 + 2) && *v29 == 34)
        {
          *(a2 + 1) = v29 + 1;
LABEL_68:
          *(this + 15) |= 8u;
          v30 = *(this + 4);
          if (!v30)
          {
            operator new();
          }

          v51 = 0;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
            {
              return 0;
            }
          }

          else
          {
            v51 = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v32 = *(a2 + 14);
          v33 = *(a2 + 15);
          *(a2 + 14) = v32 + 1;
          if (v32 >= v33)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v34 = *(a2 + 14);
          v13 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v13)
          {
            *(a2 + 14) = v35;
          }

          v36 = *(a2 + 1);
          if (v36 < *(a2 + 2) && *v36 == 42)
          {
            *(a2 + 1) = v36 + 1;
            goto LABEL_82;
          }
        }
      }
    }

    if (v6 == 3 && v7 == 2)
    {
      goto LABEL_54;
    }

LABEL_28:
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
    v4 = *(a2 + 1);
    if (v4 < *(a2 + 2))
    {
      TagFallback = *v4;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_58;
        }

        *(this + 73) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v109[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v109))
          {
            return 0;
          }
        }

        else
        {
          v109[0] = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v21 = *(a2 + 14);
        v22 = __OFSUB__(v21, 1);
        v23 = v21 - 1;
        if (v23 < 0 == v22)
        {
          *(a2 + 14) = v23;
        }

        v24 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v24 >= v13 || *v24 != 16)
        {
          continue;
        }

        v14 = v24 + 1;
        *(a2 + 1) = v14;
        goto LABEL_70;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
LABEL_70:
        v109[0] = 0;
        if (v14 >= v13 || (v25 = *v14, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v109);
          if (!result)
          {
            return result;
          }

          v25 = v109[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v25 <= 6)
        {
          *(this + 73) |= 2u;
          *(this + 4) = v25;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v27 >= v9 || *v27 != 24)
        {
          continue;
        }

        v10 = v27 + 1;
        *(a2 + 1) = v10;
LABEL_80:
        v109[0] = 0;
        if (v10 >= v9 || (v28 = *v10, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v109);
          if (!result)
          {
            return result;
          }

          v28 = v109[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v28 <= 3)
        {
          *(this + 73) |= 4u;
          *(this + 5) = v28;
        }

        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 33)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_90:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v109;
        *(this + 73) |= 8u;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 41)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_94:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v109;
        *(this + 73) |= 0x10u;
        v31 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v31 >= v11 || *v31 != 48)
        {
          continue;
        }

        v15 = v31 + 1;
        *(a2 + 1) = v15;
LABEL_98:
        if (v15 >= v11 || (v32 = *v15, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v32;
          v33 = v15 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 73) |= 0x20u;
        if (v33 >= v11 || *v33 != 56)
        {
          continue;
        }

        v16 = v33 + 1;
        *(a2 + 1) = v16;
LABEL_106:
        if (v16 >= v11 || (v34 = *v16, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v34;
          v35 = v16 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 73) |= 0x40u;
        if (v35 >= v11 || *v35 != 64)
        {
          continue;
        }

        v12 = v35 + 1;
        *(a2 + 1) = v12;
LABEL_114:
        if (v12 >= v11 || (v36 = *v12, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v36;
          v37 = v12 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 73) |= 0x80u;
        if (v37 >= v11 || *v37 != 73)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_122:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v109;
        *(this + 73) |= 0x100u;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 81)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_126:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v109;
        *(this + 73) |= 0x200u;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 89)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_130:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v109;
        *(this + 73) |= 0x400u;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 97)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_134:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v109;
        *(this + 73) |= 0x800u;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 != 105)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_138:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v109;
        *(this + 73) |= 0x1000u;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 113)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_142:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v109;
        *(this + 73) |= 0x2000u;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v43 + 1;
LABEL_146:
          v44 = *(this + 31);
          v45 = *(this + 30);
          if (v45 >= v44)
          {
            if (v44 == *(this + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
              v44 = *(this + 31);
            }

            *(this + 31) = v44 + 1;
            operator new();
          }

          v46 = *(this + 14);
          *(this + 30) = v45 + 1;
          v47 = *(v46 + 8 * v45);
          v109[0] = 0;
          v48 = *(a2 + 1);
          if (v48 >= *(a2 + 2) || *v48 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v109))
            {
              return 0;
            }
          }

          else
          {
            v109[0] = *v48;
            *(a2 + 1) = v48 + 1;
          }

          v49 = *(a2 + 14);
          v50 = *(a2 + 15);
          *(a2 + 14) = v49 + 1;
          if (v49 >= v50)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v47, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v51 = *(a2 + 14);
          v22 = __OFSUB__(v51, 1);
          v52 = v51 - 1;
          if (v52 < 0 == v22)
          {
            *(a2 + 14) = v52;
          }

          v43 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        while (v43 < v53 && *v43 == 122);
        if (v53 - v43 < 2)
        {
          continue;
        }

        v54 = *v43;
        do
        {
          if (v54 != 130 || v43[1] != 1)
          {
            goto LABEL_1;
          }

          *(a2 + 1) = v43 + 2;
LABEL_167:
          v55 = *(this + 37);
          v56 = *(this + 36);
          if (v56 >= v55)
          {
            if (v55 == *(this + 38))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 136));
              v55 = *(this + 37);
            }

            *(this + 37) = v55 + 1;
            operator new();
          }

          v57 = *(this + 17);
          *(this + 36) = v56 + 1;
          v58 = *(v57 + 8 * v56);
          v109[0] = 0;
          v59 = *(a2 + 1);
          if (v59 >= *(a2 + 2) || *v59 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v109))
            {
              return 0;
            }
          }

          else
          {
            v109[0] = *v59;
            *(a2 + 1) = v59 + 1;
          }

          v60 = *(a2 + 14);
          v61 = *(a2 + 15);
          *(a2 + 14) = v60 + 1;
          if (v60 >= v61)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v58, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v62 = *(a2 + 14);
          v22 = __OFSUB__(v62, 1);
          v63 = v62 - 1;
          if (v63 < 0 == v22)
          {
            *(a2 + 14) = v63;
          }

          v43 = *(a2 + 1);
          if (*(a2 + 4) - v43 <= 1)
          {
            goto LABEL_1;
          }

          v54 = *v43;
        }

        while (v54 != 137);
        if (v43[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v43 + 2;
LABEL_185:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = *v109;
        *(this + 73) |= 0x10000u;
        v64 = *(a2 + 1);
        if (*(a2 + 4) - v64 < 2 || *v64 != 145 || v64[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v64 + 2;
LABEL_190:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 21) = *v109;
        *(this + 73) |= 0x20000u;
        v65 = *(a2 + 1);
        if (*(a2 + 4) - v65 < 2 || *v65 != 153 || v65[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v65 + 2;
LABEL_195:
        *v109 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v109) & 1) == 0)
        {
          return 0;
        }

        *(this + 22) = *v109;
        *(this + 73) |= 0x40000u;
        v66 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v18 - v66 >= 2 && *v66 == 160 && v66[1] == 1)
        {
          v17 = (v66 + 2);
          *(a2 + 1) = v17;
LABEL_200:
          if (v17 >= v18 || (v67 = *v17, v67 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 23);
            if (!result)
            {
              return result;
            }

            v68 = *(a2 + 1);
            v18 = *(a2 + 2);
          }

          else
          {
            *(this + 23) = v67;
            v68 = (v17 + 1);
            *(a2 + 1) = v68;
          }

          *(this + 73) |= 0x80000u;
          if (v18 - v68 >= 2)
          {
            v69 = *v68;
            do
            {
              if (v69 != 170 || v68[1] != 1)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v68 + 2;
LABEL_210:
              v70 = *(this + 51);
              v71 = *(this + 50);
              if (v71 >= v70)
              {
                if (v70 == *(this + 52))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 192));
                  v70 = *(this + 51);
                }

                *(this + 51) = v70 + 1;
                operator new();
              }

              v72 = *(this + 24);
              *(this + 50) = v71 + 1;
              v73 = *(v72 + 8 * v71);
              v109[0] = 0;
              v74 = *(a2 + 1);
              if (v74 >= *(a2 + 2) || *v74 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v109))
                {
                  return 0;
                }
              }

              else
              {
                v109[0] = *v74;
                *(a2 + 1) = v74 + 1;
              }

              v75 = *(a2 + 14);
              v76 = *(a2 + 15);
              *(a2 + 14) = v75 + 1;
              if (v75 >= v76)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v73, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v77 = *(a2 + 14);
              v22 = __OFSUB__(v77, 1);
              v78 = v77 - 1;
              if (v78 < 0 == v22)
              {
                *(a2 + 14) = v78;
              }

              v68 = *(a2 + 1);
              if (*(a2 + 4) - v68 <= 1)
              {
                goto LABEL_1;
              }

              v69 = *v68;
            }

            while (v69 != 178);
            while (1)
            {
              if (v68[1] != 1)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v68 + 2;
LABEL_228:
              v79 = *(this + 57);
              v80 = *(this + 56);
              if (v80 >= v79)
              {
                if (v79 == *(this + 58))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 216));
                  v79 = *(this + 57);
                }

                *(this + 57) = v79 + 1;
                operator new();
              }

              v81 = *(this + 27);
              *(this + 56) = v80 + 1;
              v82 = *(v81 + 8 * v80);
              v109[0] = 0;
              v83 = *(a2 + 1);
              if (v83 >= *(a2 + 2) || *v83 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v109))
                {
                  return 0;
                }
              }

              else
              {
                v109[0] = *v83;
                *(a2 + 1) = v83 + 1;
              }

              v84 = *(a2 + 14);
              v85 = *(a2 + 15);
              *(a2 + 14) = v84 + 1;
              if (v84 >= v85)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v82, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v86 = *(a2 + 14);
              v22 = __OFSUB__(v86, 1);
              v87 = v86 - 1;
              if (v87 < 0 == v22)
              {
                *(a2 + 14) = v87;
              }

              v68 = *(a2 + 1);
              if (*(a2 + 4) - v68 <= 1)
              {
                goto LABEL_1;
              }

              v88 = *v68;
              if (v88 == 186)
              {
                break;
              }

              if (v88 != 178)
              {
                goto LABEL_1;
              }
            }

            while (1)
            {
              if (v68[1] != 1)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v68 + 2;
LABEL_248:
              v89 = *(this + 63);
              v90 = *(this + 62);
              if (v90 >= v89)
              {
                if (v89 == *(this + 64))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 240));
                  v89 = *(this + 63);
                }

                *(this + 63) = v89 + 1;
                operator new();
              }

              v91 = *(this + 30);
              *(this + 62) = v90 + 1;
              v92 = *(v91 + 8 * v90);
              v109[0] = 0;
              v93 = *(a2 + 1);
              if (v93 >= *(a2 + 2) || *v93 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v109))
                {
                  return 0;
                }
              }

              else
              {
                v109[0] = *v93;
                *(a2 + 1) = v93 + 1;
              }

              v94 = *(a2 + 14);
              v95 = *(a2 + 15);
              *(a2 + 14) = v94 + 1;
              if (v94 >= v95)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v92, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v96 = *(a2 + 14);
              v22 = __OFSUB__(v96, 1);
              v97 = v96 - 1;
              if (v97 < 0 == v22)
              {
                *(a2 + 14) = v97;
              }

              v68 = *(a2 + 1);
              if (*(a2 + 4) - v68 <= 1)
              {
                goto LABEL_1;
              }

              v98 = *v68;
              if (v98 == 194)
              {
                break;
              }

              if (v98 != 186)
              {
                goto LABEL_1;
              }
            }

            if (v68[1] == 1)
            {
              do
              {
                *(a2 + 1) = v68 + 2;
LABEL_268:
                v99 = *(this + 68);
                v100 = *(this + 69);
                if (v99 >= v100)
                {
                  if (v100 == *(this + 70))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 264));
                    v100 = *(this + 69);
                  }

                  *(this + 69) = v100 + 1;
                  operator new();
                }

                v101 = *(this + 33);
                *(this + 68) = v99 + 1;
                v102 = *(v101 + 8 * v99);
                v109[0] = 0;
                v103 = *(a2 + 1);
                if (v103 >= *(a2 + 2) || *v103 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v109))
                  {
                    return 0;
                  }
                }

                else
                {
                  v109[0] = *v103;
                  *(a2 + 1) = v103 + 1;
                }

                v104 = *(a2 + 14);
                v105 = *(a2 + 15);
                *(a2 + 14) = v104 + 1;
                if (v104 >= v105)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v102, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v106 = *(a2 + 14);
                v22 = __OFSUB__(v106, 1);
                v107 = v106 - 1;
                if (v107 < 0 == v22)
                {
                  *(a2 + 14) = v107;
                }

                v68 = *(a2 + 1);
                v108 = *(a2 + 2);
              }

              while (v108 - v68 > 1 && *v68 == 194 && v68[1] == 1);
              if (v68 == v108 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_80;
      case 4u:
        if (v6 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_58;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_94;
        }

        goto LABEL_58;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v15 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_98;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v16 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_106;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_114;
      case 9u:
        if (v6 == 1)
        {
          goto LABEL_122;
        }

        goto LABEL_58;
      case 0xAu:
        if (v6 == 1)
        {
          goto LABEL_126;
        }

        goto LABEL_58;
      case 0xBu:
        if (v6 == 1)
        {
          goto LABEL_130;
        }

        goto LABEL_58;
      case 0xCu:
        if (v6 == 1)
        {
          goto LABEL_134;
        }

        goto LABEL_58;
      case 0xDu:
        if (v6 == 1)
        {
          goto LABEL_138;
        }

        goto LABEL_58;
      case 0xEu:
        if (v6 == 1)
        {
          goto LABEL_142;
        }

        goto LABEL_58;
      case 0xFu:
        if (v6 == 2)
        {
          goto LABEL_146;
        }

        goto LABEL_58;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_167;
        }

        goto LABEL_58;
      case 0x11u:
        if (v6 == 1)
        {
          goto LABEL_185;
        }

        goto LABEL_58;
      case 0x12u:
        if (v6 == 1)
        {
          goto LABEL_190;
        }

        goto LABEL_58;
      case 0x13u:
        if (v6 == 1)
        {
          goto LABEL_195;
        }

        goto LABEL_58;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v17 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_200;
      case 0x15u:
        if (v6 == 2)
        {
          goto LABEL_210;
        }

        goto LABEL_58;
      case 0x16u:
        if (v6 == 2)
        {
          goto LABEL_228;
        }

        goto LABEL_58;
      case 0x17u:
        if (v6 == 2)
        {
          goto LABEL_248;
        }

        goto LABEL_58;
      case 0x18u:
        if (v6 != 2)
        {
          goto LABEL_58;
        }

        goto LABEL_268;
      default:
LABEL_58:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v6 == 4)
        {
          if (v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(this + 13) |= 8u;
          v30 = *(this + 4);
          if (!v30)
          {
            operator new();
          }

          v38[0] = 0;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38))
            {
              return 0;
            }
          }

          else
          {
            v38[0] = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v32 = *(a2 + 14);
          v33 = *(a2 + 15);
          *(a2 + 14) = v32 + 1;
          if (v32 >= v33)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v34 = *(a2 + 14);
          v13 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v13)
          {
            *(a2 + 14) = v35;
          }

          v36 = *(a2 + 1);
          if (v36 < *(a2 + 2) && *v36 == 41)
          {
            *(a2 + 1) = v36 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_80:
          *v38 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v38) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v38;
          *(this + 13) |= 0x10u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      *(this + 13) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v38[0] = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38))
        {
          return 0;
        }
      }

      else
      {
        v38[0] = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v12 = *(a2 + 14);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v14 < 0 == v13)
      {
        *(a2 + 14) = v14;
      }

      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 18)
      {
        *(a2 + 1) = v15 + 1;
LABEL_38:
        *(this + 13) |= 2u;
        v16 = *(this + 2);
        if (!v16)
        {
          operator new();
        }

        v38[0] = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38))
          {
            return 0;
          }
        }

        else
        {
          v38[0] = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v20 = *(a2 + 14);
        v13 = __OFSUB__(v20, 1);
        v21 = v20 - 1;
        if (v21 < 0 == v13)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        if (v22 < *(a2 + 2) && *v22 == 26)
        {
          *(a2 + 1) = v22 + 1;
LABEL_52:
          *(this + 13) |= 4u;
          v23 = *(this + 3);
          if (!v23)
          {
            operator new();
          }

          v38[0] = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38))
            {
              return 0;
            }
          }

          else
          {
            v38[0] = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v25 = *(a2 + 14);
          v26 = *(a2 + 15);
          *(a2 + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v27 = *(a2 + 14);
          v13 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v13)
          {
            *(a2 + 14) = v28;
          }

          v29 = *(a2 + 1);
          if (v29 < *(a2 + 2) && *v29 == 34)
          {
            *(a2 + 1) = v29 + 1;
            goto LABEL_66;
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v12 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 1) = v9;
      *(this + 7) |= 1u;
      if (v10 < v7 && *v10 == 17)
      {
        *(a2 + 1) = v10 + 1;
LABEL_21:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 7) |= 2u;
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
      goto LABEL_21;
    }

LABEL_13:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_47;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v11 >= v7 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 10) |= 1u;
      if (v13 < v7 && *v13 == 16)
      {
        v8 = v13 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        if (v8 >= v7 || (v15 = *v8, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v15;
          v16 = v8 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 10) |= 2u;
        if (v16 < v7 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v7 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
          }

          else
          {
            *(a2 + 1) = v14 + 1;
          }

          if (v17 <= 0x23)
          {
            *(this + 10) |= 4u;
            *(this + 8) = v17;
          }

          v18 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v18 < v9 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_47:
            if (v10 >= v9 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v19;
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 10) |= 8u;
            if (v20 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_71;
        }

        *(this + 57) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v62[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62))
          {
            return 0;
          }
        }

        else
        {
          v62[0] = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 == v24)
        {
          *(a2 + 14) = v25;
        }

        v26 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v26 >= v13 || *v26 != 16)
        {
          continue;
        }

        v14 = v26 + 1;
        *(a2 + 1) = v14;
        goto LABEL_83;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
LABEL_83:
        v62[0] = 0;
        if (v14 >= v13 || (v27 = *v14, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
          if (!result)
          {
            return result;
          }

          v27 = v62[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v27 <= 9)
        {
          *(this + 57) |= 2u;
          *(this + 6) = v27;
        }

        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 25)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_93:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v62;
        *(this + 57) |= 4u;
        v30 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v30 >= v19 || *v30 != 32)
        {
          continue;
        }

        v20 = v30 + 1;
        *(a2 + 1) = v20;
LABEL_97:
        v62[0] = 0;
        if (v20 >= v19 || (v31 = *v20, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
          if (!result)
          {
            return result;
          }

          v31 = v62[0];
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v31 <= 3)
        {
          *(this + 57) |= 8u;
          *(this + 7) = v31;
        }

        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 41)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_107:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v62;
        *(this + 57) |= 0x10u;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 49)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_111:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v62;
        *(this + 57) |= 0x20u;
        v34 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v34 >= v17 || *v34 != 56)
        {
          continue;
        }

        v18 = v34 + 1;
        *(a2 + 1) = v18;
LABEL_115:
        v62[0] = 0;
        if (v18 >= v17 || (v35 = *v18, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
          if (!result)
          {
            return result;
          }

          v35 = v62[0];
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (v35 <= 9)
        {
          *(this + 57) |= 0x40u;
          *(this + 12) = v35;
        }

        v36 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v36 >= v15 || *v36 != 64)
        {
          continue;
        }

        v16 = v36 + 1;
        *(a2 + 1) = v16;
LABEL_125:
        v62[0] = 0;
        if (v16 >= v15 || (v37 = *v16, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
          if (!result)
          {
            return result;
          }

          v37 = v62[0];
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v37 <= 3)
        {
          *(this + 57) |= 0x80u;
          *(this + 13) = v37;
        }

        v38 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v38 >= v11 || *v38 != 72)
        {
          continue;
        }

        v12 = v38 + 1;
        *(a2 + 1) = v12;
LABEL_135:
        v62[0] = 0;
        if (v12 >= v11 || (v39 = *v12, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
          if (!result)
          {
            return result;
          }

          v39 = v62[0];
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v39 <= 2)
        {
          *(this + 57) |= 0x100u;
          *(this + 34) = v39;
        }

        v40 = *(a2 + 1);
        if (*(a2 + 4) - v40 < 2 || *v40 != 161 || v40[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v40 + 2;
LABEL_146:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v62;
        *(this + 57) |= 0x200u;
        v41 = *(a2 + 1);
        if (*(a2 + 4) - v41 < 2 || *v41 != 169 || v41[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v41 + 2;
LABEL_151:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v62;
        *(this + 57) |= 0x400u;
        v42 = *(a2 + 1);
        if (*(a2 + 4) - v42 < 2 || *v42 != 177 || v42[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v42 + 2;
LABEL_156:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v62;
        *(this + 57) |= 0x800u;
        v43 = *(a2 + 1);
        if (*(a2 + 4) - v43 < 2 || *v43 != 185 || v43[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v43 + 2;
LABEL_161:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v62;
        *(this + 57) |= 0x1000u;
        v44 = *(a2 + 1);
        if (*(a2 + 4) - v44 < 2 || *v44 != 193 || v44[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v44 + 2;
LABEL_166:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v62;
        *(this + 57) |= 0x2000u;
        v45 = *(a2 + 1);
        if (*(a2 + 4) - v45 < 2 || *v45 != 201 || v45[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v45 + 2;
LABEL_171:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v62;
        *(this + 57) |= 0x4000u;
        v46 = *(a2 + 1);
        if (*(a2 + 4) - v46 < 2 || *v46 != 209 || v46[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v46 + 2;
LABEL_176:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v62;
        *(this + 57) |= 0x8000u;
        v47 = *(a2 + 1);
        if (*(a2 + 4) - v47 < 2 || *v47 != 217 || v47[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v47 + 2;
LABEL_181:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = *v62;
        *(this + 57) |= 0x10000u;
        v48 = *(a2 + 1);
        if (*(a2 + 4) - v48 < 2 || *v48 != 225 || v48[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v48 + 2;
LABEL_186:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = *v62;
        *(this + 57) |= 0x20000u;
        v49 = *(a2 + 1);
        if (*(a2 + 4) - v49 < 2 || *v49 != 233 || v49[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v49 + 2;
LABEL_191:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 16) = *v62;
        *(this + 57) |= 0x40000u;
        v50 = *(a2 + 1);
        if (*(a2 + 4) - v50 < 2 || *v50 != 145 || v50[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v50 + 2;
LABEL_196:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 18) = *v62;
        *(this + 57) |= 0x80000u;
        v51 = *(a2 + 1);
        if (*(a2 + 4) - v51 < 2 || *v51 != 153 || v51[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v51 + 2;
LABEL_201:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 19) = *v62;
        *(this + 57) |= 0x100000u;
        v52 = *(a2 + 1);
        if (*(a2 + 4) - v52 < 2 || *v52 != 161 || v52[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v52 + 2;
LABEL_206:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = *v62;
        *(this + 57) |= 0x200000u;
        v53 = *(a2 + 1);
        if (*(a2 + 4) - v53 < 2 || *v53 != 169 || v53[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v53 + 2;
LABEL_211:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 21) = *v62;
        *(this + 57) |= 0x400000u;
        v54 = *(a2 + 1);
        if (*(a2 + 4) - v54 < 2 || *v54 != 225 || v54[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v54 + 2;
LABEL_216:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 22) = *v62;
        *(this + 57) |= 0x800000u;
        v55 = *(a2 + 1);
        if (*(a2 + 4) - v55 < 2 || *v55 != 233 || v55[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v55 + 2;
LABEL_221:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 23) = *v62;
        *(this + 57) |= 0x1000000u;
        v56 = *(a2 + 1);
        if (*(a2 + 4) - v56 < 2 || *v56 != 241 || v56[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v56 + 2;
LABEL_226:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 24) = *v62;
        *(this + 57) |= 0x2000000u;
        v57 = *(a2 + 1);
        if (*(a2 + 4) - v57 < 2 || *v57 != 249 || v57[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v57 + 2;
LABEL_231:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 25) = *v62;
        *(this + 57) |= 0x4000000u;
        v58 = *(a2 + 1);
        if (*(a2 + 4) - v58 < 2 || *v58 != 177 || v58[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v58 + 2;
LABEL_236:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 26) = *v62;
        *(this + 57) |= 0x8000000u;
        v59 = *(a2 + 1);
        if (*(a2 + 4) - v59 < 2 || *v59 != 185 || v59[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v59 + 2;
LABEL_241:
        *v62 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62))
        {
          *(this + 27) = *v62;
          *(this + 57) |= 0x10000000u;
          v60 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v9 - v60 >= 2 && *v60 == 128 && v60[1] == 5)
          {
            v10 = (v60 + 2);
            *(a2 + 1) = v10;
LABEL_246:
            v62[0] = 0;
            if (v10 >= v9 || (v61 = *v10, (v61 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
              if (!result)
              {
                return result;
              }

              v61 = v62[0];
            }

            else
            {
              *(a2 + 1) = v10 + 1;
            }

            if (v61 <= 7)
            {
              *(this + 57) |= 0x20000000u;
              *(this + 35) = v61;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v6 == 1)
        {
          goto LABEL_93;
        }

        goto LABEL_71;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_97;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_71;
      case 6u:
        if (v6 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_71;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_115;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_125;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_135;
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
        goto LABEL_71;
      case 0x14u:
        if (v6 == 1)
        {
          goto LABEL_146;
        }

        goto LABEL_71;
      case 0x15u:
        if (v6 == 1)
        {
          goto LABEL_151;
        }

        goto LABEL_71;
      case 0x16u:
        if (v6 == 1)
        {
          goto LABEL_156;
        }

        goto LABEL_71;
      case 0x17u:
        if (v6 == 1)
        {
          goto LABEL_161;
        }

        goto LABEL_71;
      case 0x18u:
        if (v6 == 1)
        {
          goto LABEL_166;
        }

        goto LABEL_71;
      case 0x19u:
        if (v6 == 1)
        {
          goto LABEL_171;
        }

        goto LABEL_71;
      case 0x1Au:
        if (v6 == 1)
        {
          goto LABEL_176;
        }

        goto LABEL_71;
      case 0x1Bu:
        if (v6 == 1)
        {
          goto LABEL_181;
        }

        goto LABEL_71;
      case 0x1Cu:
        if (v6 == 1)
        {
          goto LABEL_186;
        }

        goto LABEL_71;
      case 0x1Du:
        if (v6 == 1)
        {
          goto LABEL_191;
        }

        goto LABEL_71;
      case 0x32u:
        if (v6 == 1)
        {
          goto LABEL_196;
        }

        goto LABEL_71;
      case 0x33u:
        if (v6 == 1)
        {
          goto LABEL_201;
        }

        goto LABEL_71;
      case 0x34u:
        if (v6 == 1)
        {
          goto LABEL_206;
        }

        goto LABEL_71;
      case 0x35u:
        if (v6 == 1)
        {
          goto LABEL_211;
        }

        goto LABEL_71;
      case 0x3Cu:
        if (v6 == 1)
        {
          goto LABEL_216;
        }

        goto LABEL_71;
      case 0x3Du:
        if (v6 == 1)
        {
          goto LABEL_221;
        }

        goto LABEL_71;
      case 0x3Eu:
        if (v6 != 1)
        {
          goto LABEL_71;
        }

        goto LABEL_226;
      case 0x3Fu:
        if (v6 == 1)
        {
          goto LABEL_231;
        }

        goto LABEL_71;
      case 0x46u:
        if (v6 == 1)
        {
          goto LABEL_236;
        }

        goto LABEL_71;
      case 0x47u:
        if (v6 == 1)
        {
          goto LABEL_241;
        }

        goto LABEL_71;
      default:
        if (TagFallback >> 3 == 80 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_246;
        }

LABEL_71:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v6 == 6)
            {
              if (v7 == 2)
              {
                goto LABEL_110;
              }
            }

            else if (v6 == 7 && v7 == 2)
            {
              goto LABEL_124;
            }

            goto LABEL_42;
          }

          if (v6 == 8)
          {
            if (v7 == 2)
            {
              goto LABEL_138;
            }

            goto LABEL_42;
          }

          if (v6 == 9)
          {
            if (v7 != 2)
            {
              goto LABEL_42;
            }

LABEL_152:
            *(this + 23) |= 0x100u;
            v65 = *(this + 9);
            if (!v65)
            {
              operator new();
            }

            v79 = 0;
            v66 = *(a2 + 1);
            if (v66 >= *(a2 + 2) || *v66 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
              {
                return 0;
              }
            }

            else
            {
              v79 = *v66;
              *(a2 + 1) = v66 + 1;
            }

            v67 = *(a2 + 14);
            v68 = *(a2 + 15);
            *(a2 + 14) = v67 + 1;
            if (v67 >= v68)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::MergePartialFromCodedStream(v65, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v69 = *(a2 + 14);
            v13 = __OFSUB__(v69, 1);
            v70 = v69 - 1;
            if (v70 < 0 == v13)
            {
              *(a2 + 14) = v70;
            }

            v71 = *(a2 + 1);
            if (v71 < *(a2 + 2) && *v71 == 82)
            {
              *(a2 + 1) = v71 + 1;
              goto LABEL_166;
            }
          }

          else
          {
            if (v6 != 10 || v7 != 2)
            {
              goto LABEL_42;
            }

LABEL_166:
            *(this + 23) |= 0x200u;
            v72 = *(this + 10);
            if (!v72)
            {
              operator new();
            }

            v79 = 0;
            v73 = *(a2 + 1);
            if (v73 >= *(a2 + 2) || *v73 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
              {
                return 0;
              }
            }

            else
            {
              v79 = *v73;
              *(a2 + 1) = v73 + 1;
            }

            v74 = *(a2 + 14);
            v75 = *(a2 + 15);
            *(a2 + 14) = v74 + 1;
            if (v74 >= v75)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergePartialFromCodedStream(v72, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v76 = *(a2 + 14);
            v13 = __OFSUB__(v76, 1);
            v77 = v76 - 1;
            if (v77 < 0 == v13)
            {
              *(a2 + 14) = v77;
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

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 2)
          {
            goto LABEL_42;
          }

          goto LABEL_54;
        }

        if (v7 != 2)
        {
          goto LABEL_42;
        }

        *(this + 23) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v79 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
          {
            return 0;
          }
        }

        else
        {
          v79 = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v10 = *(a2 + 14);
        v11 = *(a2 + 15);
        *(a2 + 14) = v10 + 1;
        if (v10 >= v11)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v12 = *(a2 + 14);
        v13 = __OFSUB__(v12, 1);
        v14 = v12 - 1;
        if (v14 < 0 == v13)
        {
          *(a2 + 14) = v14;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
LABEL_54:
          *(this + 23) |= 2u;
          v16 = *(this + 2);
          if (!v16)
          {
            operator new();
          }

          v79 = 0;
          v17 = *(a2 + 1);
          if (v17 >= *(a2 + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
            {
              return 0;
            }
          }

          else
          {
            v79 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v18 = *(a2 + 14);
          v19 = *(a2 + 15);
          *(a2 + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v20 = *(a2 + 14);
          v13 = __OFSUB__(v20, 1);
          v21 = v20 - 1;
          if (v21 < 0 == v13)
          {
            *(a2 + 14) = v21;
          }

          v22 = *(a2 + 1);
          if (v22 < *(a2 + 2) && *v22 == 26)
          {
            *(a2 + 1) = v22 + 1;
LABEL_68:
            *(this + 23) |= 4u;
            v23 = *(this + 3);
            if (!v23)
            {
              operator new();
            }

            v79 = 0;
            v24 = *(a2 + 1);
            if (v24 >= *(a2 + 2) || *v24 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
              {
                return 0;
              }
            }

            else
            {
              v79 = *v24;
              *(a2 + 1) = v24 + 1;
            }

            v25 = *(a2 + 14);
            v26 = *(a2 + 15);
            *(a2 + 14) = v25 + 1;
            if (v25 >= v26)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v27 = *(a2 + 14);
            v13 = __OFSUB__(v27, 1);
            v28 = v27 - 1;
            if (v28 < 0 == v13)
            {
              *(a2 + 14) = v28;
            }

            v29 = *(a2 + 1);
            if (v29 < *(a2 + 2) && *v29 == 34)
            {
              *(a2 + 1) = v29 + 1;
              goto LABEL_82;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_68;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_42;
      }

LABEL_82:
      *(this + 23) |= 8u;
      v30 = *(this + 4);
      if (!v30)
      {
        operator new();
      }

      v79 = 0;
      v31 = *(a2 + 1);
      if (v31 >= *(a2 + 2) || *v31 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
        {
          return 0;
        }
      }

      else
      {
        v79 = *v31;
        *(a2 + 1) = v31 + 1;
      }

      v32 = *(a2 + 14);
      v33 = *(a2 + 15);
      *(a2 + 14) = v32 + 1;
      if (v32 >= v33)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v34 = *(a2 + 14);
      v13 = __OFSUB__(v34, 1);
      v35 = v34 - 1;
      if (v35 < 0 == v13)
      {
        *(a2 + 14) = v35;
      }

      v36 = *(a2 + 1);
      if (v36 < *(a2 + 2) && *v36 == 42)
      {
        *(a2 + 1) = v36 + 1;
LABEL_96:
        *(this + 23) |= 0x10u;
        v37 = *(this + 5);
        if (!v37)
        {
          operator new();
        }

        v79 = 0;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
          {
            return 0;
          }
        }

        else
        {
          v79 = *v38;
          *(a2 + 1) = v38 + 1;
        }

        v39 = *(a2 + 14);
        v40 = *(a2 + 15);
        *(a2 + 14) = v39 + 1;
        if (v39 >= v40)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v41 = *(a2 + 14);
        v13 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v13)
        {
          *(a2 + 14) = v42;
        }

        v43 = *(a2 + 1);
        if (v43 < *(a2 + 2) && *v43 == 50)
        {
          *(a2 + 1) = v43 + 1;
LABEL_110:
          *(this + 23) |= 0x20u;
          v44 = *(this + 6);
          if (!v44)
          {
            operator new();
          }

          v79 = 0;
          v45 = *(a2 + 1);
          if (v45 >= *(a2 + 2) || *v45 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
            {
              return 0;
            }
          }

          else
          {
            v79 = *v45;
            *(a2 + 1) = v45 + 1;
          }

          v46 = *(a2 + 14);
          v47 = *(a2 + 15);
          *(a2 + 14) = v46 + 1;
          if (v46 >= v47)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v48 = *(a2 + 14);
          v13 = __OFSUB__(v48, 1);
          v49 = v48 - 1;
          if (v49 < 0 == v13)
          {
            *(a2 + 14) = v49;
          }

          v50 = *(a2 + 1);
          if (v50 < *(a2 + 2) && *v50 == 58)
          {
            *(a2 + 1) = v50 + 1;
LABEL_124:
            *(this + 23) |= 0x40u;
            v51 = *(this + 7);
            if (!v51)
            {
              operator new();
            }

            v79 = 0;
            v52 = *(a2 + 1);
            if (v52 >= *(a2 + 2) || *v52 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
              {
                return 0;
              }
            }

            else
            {
              v79 = *v52;
              *(a2 + 1) = v52 + 1;
            }

            v53 = *(a2 + 14);
            v54 = *(a2 + 15);
            *(a2 + 14) = v53 + 1;
            if (v53 >= v54)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::MergePartialFromCodedStream(v51, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v55 = *(a2 + 14);
            v13 = __OFSUB__(v55, 1);
            v56 = v55 - 1;
            if (v56 < 0 == v13)
            {
              *(a2 + 14) = v56;
            }

            v57 = *(a2 + 1);
            if (v57 < *(a2 + 2) && *v57 == 66)
            {
              *(a2 + 1) = v57 + 1;
LABEL_138:
              *(this + 23) |= 0x80u;
              v58 = *(this + 8);
              if (!v58)
              {
                operator new();
              }

              v79 = 0;
              v59 = *(a2 + 1);
              if (v59 >= *(a2 + 2) || *v59 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v79))
                {
                  return 0;
                }
              }

              else
              {
                v79 = *v59;
                *(a2 + 1) = v59 + 1;
              }

              v60 = *(a2 + 14);
              v61 = *(a2 + 15);
              *(a2 + 14) = v60 + 1;
              if (v60 >= v61)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::MergePartialFromCodedStream(v58, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v62 = *(a2 + 14);
              v13 = __OFSUB__(v62, 1);
              v63 = v62 - 1;
              if (v63 < 0 == v13)
              {
                *(a2 + 14) = v63;
              }

              v64 = *(a2 + 1);
              if (v64 < *(a2 + 2) && *v64 == 74)
              {
                *(a2 + 1) = v64 + 1;
                goto LABEL_152;
              }
            }
          }
        }
      }
    }

    if (v6 == 5 && v7 == 2)
    {
      goto LABEL_96;
    }

LABEL_42:
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 7)
        {
          if (v6 == 6)
          {
            if (v7 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v6 == 7 && v7 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v6 == 8)
        {
          if (v7 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v6 == 9)
        {
          if (v7 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = *v25;
          *(this + 23) |= 0x100u;
          v23 = *(a2 + 1);
          if (v23 < *(a2 + 2) && *v23 == 81)
          {
            *(a2 + 1) = v23 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v6 != 10 || v7 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = *v25;
          *(this + 23) |= 0x200u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v6 == 3)
      {
        if (v7 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v6 == 4)
      {
        if (v7 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v25;
        *(this + 23) |= 8u;
        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 41)
        {
          *(a2 + 1) = v18 + 1;
LABEL_66:
          *v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v25;
          *(this + 23) |= 0x10u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 49)
          {
            *(a2 + 1) = v19 + 1;
LABEL_70:
            *v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = *v25;
            *(this + 23) |= 0x20u;
            v20 = *(a2 + 1);
            if (v20 < *(a2 + 2) && *v20 == 57)
            {
              *(a2 + 1) = v20 + 1;
LABEL_74:
              *v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = *v25;
              *(this + 23) |= 0x40u;
              v21 = *(a2 + 1);
              if (v21 < *(a2 + 2) && *v21 == 65)
              {
                *(a2 + 1) = v21 + 1;
LABEL_78:
                *v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = *v25;
                *(this + 23) |= 0x80u;
                v22 = *(a2 + 1);
                if (v22 < *(a2 + 2) && *v22 == 73)
                {
                  *(a2 + 1) = v22 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v6 == 5 && v7 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
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

    if (v6 != 1)
    {
      if (v6 != 2 || v7 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v7 != 2)
    {
      goto LABEL_42;
    }

    *(this + 23) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v25[0] = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25))
      {
        return 0;
      }
    }

    else
    {
      v25[0] = *v9;
      *(a2 + 1) = v9 + 1;
    }

    v10 = *(a2 + 14);
    v11 = *(a2 + 15);
    *(a2 + 14) = v10 + 1;
    if (v10 >= v11)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v12 = *(a2 + 14);
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (v14 < 0 == v13)
    {
      *(a2 + 14) = v14;
    }

    v15 = *(a2 + 1);
    if (v15 < *(a2 + 2) && *v15 == 17)
    {
      *(a2 + 1) = v15 + 1;
LABEL_54:
      *v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v25;
      *(this + 23) |= 2u;
      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 25)
      {
        *(a2 + 1) = v16 + 1;
LABEL_58:
        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v25;
        *(this + 23) |= 4u;
        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 33)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_40;
        }

        *(this + 33) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v29[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v29))
          {
            return 0;
          }
        }

        else
        {
          v29[0] = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v9 = *(a2 + 14);
        v10 = *(a2 + 15);
        *(a2 + 14) = v9 + 1;
        if (v9 >= v10)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v11 = *(a2 + 14);
        v12 = __OFSUB__(v11, 1);
        v13 = v11 - 1;
        if (v13 < 0 == v12)
        {
          *(a2 + 14) = v13;
        }

        v14 = *(a2 + 1);
        if (v14 >= *(a2 + 2) || *v14 != 17)
        {
          continue;
        }

        *(a2 + 1) = v14 + 1;
        goto LABEL_52;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_40;
        }

LABEL_52:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v29;
        *(this + 33) |= 2u;
        v15 = *(a2 + 1);
        if (v15 >= *(a2 + 2) || *v15 != 25)
        {
          continue;
        }

        *(a2 + 1) = v15 + 1;
LABEL_56:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v29;
        *(this + 33) |= 4u;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 != 33)
        {
          continue;
        }

        *(a2 + 1) = v16 + 1;
LABEL_60:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v29;
        *(this + 33) |= 8u;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 != 41)
        {
          continue;
        }

        *(a2 + 1) = v17 + 1;
LABEL_64:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v29;
        *(this + 33) |= 0x10u;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 != 49)
        {
          continue;
        }

        *(a2 + 1) = v18 + 1;
LABEL_68:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v29;
        *(this + 33) |= 0x20u;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 != 57)
        {
          continue;
        }

        *(a2 + 1) = v19 + 1;
LABEL_72:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v29;
        *(this + 33) |= 0x40u;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 != 65)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
LABEL_76:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v29;
        *(this + 33) |= 0x80u;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 73)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_80:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v29;
        *(this + 33) |= 0x100u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 81)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_84:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v29;
        *(this + 33) |= 0x200u;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 89)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_88:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v29;
        *(this + 33) |= 0x400u;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 != 97)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
LABEL_92:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v29;
        *(this + 33) |= 0x800u;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 != 105)
        {
          continue;
        }

        *(a2 + 1) = v25 + 1;
LABEL_96:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v29;
        *(this + 33) |= 0x1000u;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 113)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
LABEL_100:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = *v29;
        *(this + 33) |= 0x2000u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 != 121)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_104:
        *v29 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29))
        {
          *(this + 15) = *v29;
          *(this + 33) |= 0x4000u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if (v6 == 1)
        {
          goto LABEL_56;
        }

        goto LABEL_40;
      case 4u:
        if (v6 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_40;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_64;
        }

        goto LABEL_40;
      case 6u:
        if (v6 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_40;
      case 7u:
        if (v6 == 1)
        {
          goto LABEL_72;
        }

        goto LABEL_40;
      case 8u:
        if (v6 == 1)
        {
          goto LABEL_76;
        }

        goto LABEL_40;
      case 9u:
        if (v6 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_80;
      case 0xAu:
        if (v6 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_40;
      case 0xBu:
        if (v6 == 1)
        {
          goto LABEL_88;
        }

        goto LABEL_40;
      case 0xCu:
        if (v6 == 1)
        {
          goto LABEL_92;
        }

        goto LABEL_40;
      case 0xDu:
        if (v6 == 1)
        {
          goto LABEL_96;
        }

        goto LABEL_40;
      case 0xEu:
        if (v6 == 1)
        {
          goto LABEL_100;
        }

        goto LABEL_40;
      case 0xFu:
        if (v6 == 1)
        {
          goto LABEL_104;
        }

        goto LABEL_40;
      default:
LABEL_40:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 7)
        {
          if (v6 == 6)
          {
            if (v7 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v6 == 7 && v7 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v6 == 8)
        {
          if (v7 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v6 == 9)
        {
          if (v7 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = *v25;
          *(this + 23) |= 0x100u;
          v23 = *(a2 + 1);
          if (v23 < *(a2 + 2) && *v23 == 81)
          {
            *(a2 + 1) = v23 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v6 != 10 || v7 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = *v25;
          *(this + 23) |= 0x200u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v6 == 3)
      {
        if (v7 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v6 == 4)
      {
        if (v7 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v25;
        *(this + 23) |= 8u;
        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 41)
        {
          *(a2 + 1) = v18 + 1;
LABEL_66:
          *v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v25;
          *(this + 23) |= 0x10u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 49)
          {
            *(a2 + 1) = v19 + 1;
LABEL_70:
            *v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = *v25;
            *(this + 23) |= 0x20u;
            v20 = *(a2 + 1);
            if (v20 < *(a2 + 2) && *v20 == 57)
            {
              *(a2 + 1) = v20 + 1;
LABEL_74:
              *v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = *v25;
              *(this + 23) |= 0x40u;
              v21 = *(a2 + 1);
              if (v21 < *(a2 + 2) && *v21 == 65)
              {
                *(a2 + 1) = v21 + 1;
LABEL_78:
                *v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = *v25;
                *(this + 23) |= 0x80u;
                v22 = *(a2 + 1);
                if (v22 < *(a2 + 2) && *v22 == 73)
                {
                  *(a2 + 1) = v22 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v6 == 5 && v7 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
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

    if (v6 != 1)
    {
      if (v6 != 2 || v7 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v7 != 2)
    {
      goto LABEL_42;
    }

    *(this + 23) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v25[0] = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25))
      {
        return 0;
      }
    }

    else
    {
      v25[0] = *v9;
      *(a2 + 1) = v9 + 1;
    }

    v10 = *(a2 + 14);
    v11 = *(a2 + 15);
    *(a2 + 14) = v10 + 1;
    if (v10 >= v11)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v12 = *(a2 + 14);
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (v14 < 0 == v13)
    {
      *(a2 + 14) = v14;
    }

    v15 = *(a2 + 1);
    if (v15 < *(a2 + 2) && *v15 == 17)
    {
      *(a2 + 1) = v15 + 1;
LABEL_54:
      *v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v25;
      *(this + 23) |= 2u;
      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 25)
      {
        *(a2 + 1) = v16 + 1;
LABEL_58:
        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v25;
        *(this + 23) |= 4u;
        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 33)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::~ClientSatelliteInfo(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this)
{
  *this = &unk_1F4CD9A50;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::~ClientSatelliteInfo(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 7)
        {
          if (v6 == 6)
          {
            if (v7 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v6 == 7 && v7 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v6 == 8)
        {
          if (v7 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v6 == 9)
        {
          if (v7 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = *v25;
          *(this + 23) |= 0x100u;
          v23 = *(a2 + 1);
          if (v23 < *(a2 + 2) && *v23 == 81)
          {
            *(a2 + 1) = v23 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v6 != 10 || v7 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = *v25;
          *(this + 23) |= 0x200u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v6 == 3)
      {
        if (v7 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v6 == 4)
      {
        if (v7 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v25;
        *(this + 23) |= 8u;
        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 41)
        {
          *(a2 + 1) = v18 + 1;
LABEL_66:
          *v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v25;
          *(this + 23) |= 0x10u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 49)
          {
            *(a2 + 1) = v19 + 1;
LABEL_70:
            *v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = *v25;
            *(this + 23) |= 0x20u;
            v20 = *(a2 + 1);
            if (v20 < *(a2 + 2) && *v20 == 57)
            {
              *(a2 + 1) = v20 + 1;
LABEL_74:
              *v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = *v25;
              *(this + 23) |= 0x40u;
              v21 = *(a2 + 1);
              if (v21 < *(a2 + 2) && *v21 == 65)
              {
                *(a2 + 1) = v21 + 1;
LABEL_78:
                *v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = *v25;
                *(this + 23) |= 0x80u;
                v22 = *(a2 + 1);
                if (v22 < *(a2 + 2) && *v22 == 73)
                {
                  *(a2 + 1) = v22 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v6 == 5 && v7 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
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

    if (v6 != 1)
    {
      if (v6 != 2 || v7 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v7 != 2)
    {
      goto LABEL_42;
    }

    *(this + 23) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v25[0] = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25))
      {
        return 0;
      }
    }

    else
    {
      v25[0] = *v9;
      *(a2 + 1) = v9 + 1;
    }

    v10 = *(a2 + 14);
    v11 = *(a2 + 15);
    *(a2 + 14) = v10 + 1;
    if (v10 >= v11)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v12 = *(a2 + 14);
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (v14 < 0 == v13)
    {
      *(a2 + 14) = v14;
    }

    v15 = *(a2 + 1);
    if (v15 < *(a2 + 2) && *v15 == 17)
    {
      *(a2 + 1) = v15 + 1;
LABEL_54:
      *v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v25;
      *(this + 23) |= 2u;
      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 25)
      {
        *(a2 + 1) = v16 + 1;
LABEL_58:
        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v25;
        *(this + 23) |= 4u;
        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 33)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v6 == 7)
        {
          if (v7 == 1)
          {
            goto LABEL_48;
          }

          goto LABEL_28;
        }

        if (v6 == 8)
        {
          if (v7 != 1)
          {
            goto LABEL_28;
          }

LABEL_52:
          *v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v21;
          *(this + 15) |= 0x10u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 73)
          {
            *(a2 + 1) = v19 + 1;
            goto LABEL_56;
          }
        }

        else
        {
          if (v6 != 9 || v7 != 1)
          {
            goto LABEL_28;
          }

LABEL_56:
          *v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = *v21;
          *(this + 15) |= 0x20u;
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

      if (v6 == 2)
      {
        if (v7 != 1)
        {
          goto LABEL_28;
        }

LABEL_40:
        *v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v21;
        *(this + 15) |= 2u;
        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 49)
        {
          *(a2 + 1) = v16 + 1;
LABEL_44:
          *v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v21;
          *(this + 15) |= 4u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 57)
          {
            *(a2 + 1) = v17 + 1;
LABEL_48:
            *v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = *v21;
            *(this + 15) |= 8u;
            v18 = *(a2 + 1);
            if (v18 < *(a2 + 2) && *v18 == 65)
            {
              *(a2 + 1) = v18 + 1;
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        if (v6 == 6 && v7 == 1)
        {
          goto LABEL_44;
        }

LABEL_28:
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

    if (v7 != 2)
    {
      goto LABEL_28;
    }

    *(this + 15) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v21[0] = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v21))
      {
        return 0;
      }
    }

    else
    {
      v21[0] = *v9;
      *(a2 + 1) = v9 + 1;
    }

    v10 = *(a2 + 14);
    v11 = *(a2 + 15);
    *(a2 + 14) = v10 + 1;
    if (v10 >= v11)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v12 = *(a2 + 14);
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (v14 < 0 == v13)
    {
      *(a2 + 14) = v14;
    }

    v15 = *(a2 + 1);
    if (v15 < *(a2 + 2) && *v15 == 17)
    {
      *(a2 + 1) = v15 + 1;
      goto LABEL_40;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
    v4 = *(a2 + 1);
    if (v4 < *(a2 + 2))
    {
      TagFallback = *v4;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_40;
        }

        *(this + 42) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v71[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
          {
            return 0;
          }
        }

        else
        {
          v71[0] = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v20 = *(a2 + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a2 + 14) = v22;
        }

        v23 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v23 >= v13 || *v23 != 16)
        {
          continue;
        }

        v14 = v23 + 1;
        *(a2 + 1) = v14;
        goto LABEL_52;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
LABEL_52:
        v71[0] = 0;
        if (v14 >= v13 || (v24 = *v14, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v24 = v71[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v24 <= 3)
        {
          *(this + 42) |= 2u;
          *(this + 14) = v24;
        }

        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 25)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
LABEL_62:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v71;
        *(this + 42) |= 4u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 != 33)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_66:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v71;
        *(this + 42) |= 8u;
        v28 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v28 >= v9 || *v28 != 40)
        {
          continue;
        }

        v10 = v28 + 1;
        *(a2 + 1) = v10;
LABEL_70:
        if (v10 >= v9 || (v29 = *v10, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v29;
          v30 = v10 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 42) |= 0x10u;
        if (v30 >= v9 || *v30 != 48)
        {
          continue;
        }

        v15 = v30 + 1;
        *(a2 + 1) = v15;
LABEL_78:
        if (v15 >= v9 || (v31 = *v15, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v31;
          v32 = v15 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 42) |= 0x20u;
        if (v32 >= v9 || *v32 != 56)
        {
          continue;
        }

        v17 = v32 + 1;
        *(a2 + 1) = v17;
LABEL_86:
        if (v17 >= v9 || (v33 = *v17, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v33;
          v34 = v17 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 42) |= 0x40u;
        if (v34 >= v9 || *v34 != 66)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v34 + 1;
LABEL_94:
          v35 = *(this + 19);
          v36 = *(this + 18);
          if (v36 >= v35)
          {
            if (v35 == *(this + 20))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
              v35 = *(this + 19);
            }

            *(this + 19) = v35 + 1;
            operator new();
          }

          v37 = *(this + 8);
          *(this + 18) = v36 + 1;
          v38 = *(v37 + 8 * v36);
          v71[0] = 0;
          v39 = *(a2 + 1);
          if (v39 >= *(a2 + 2) || *v39 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
            {
              return 0;
            }
          }

          else
          {
            v71[0] = *v39;
            *(a2 + 1) = v39 + 1;
          }

          v40 = *(a2 + 14);
          v41 = *(a2 + 15);
          *(a2 + 14) = v40 + 1;
          if (v40 >= v41)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v38, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v42 = *(a2 + 14);
          v21 = __OFSUB__(v42, 1);
          v43 = v42 - 1;
          if (v43 < 0 == v21)
          {
            *(a2 + 14) = v43;
          }

          v34 = *(a2 + 1);
          if (v34 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v44 = *v34;
        }

        while (v44 == 66);
        if (v44 != 74)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v34 + 1;
LABEL_112:
          v45 = *(this + 25);
          v46 = *(this + 24);
          if (v46 >= v45)
          {
            if (v45 == *(this + 26))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
              v45 = *(this + 25);
            }

            *(this + 25) = v45 + 1;
            operator new();
          }

          v47 = *(this + 11);
          *(this + 24) = v46 + 1;
          v48 = *(v47 + 8 * v46);
          v71[0] = 0;
          v49 = *(a2 + 1);
          if (v49 >= *(a2 + 2) || *v49 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
            {
              return 0;
            }
          }

          else
          {
            v71[0] = *v49;
            *(a2 + 1) = v49 + 1;
          }

          v50 = *(a2 + 14);
          v51 = *(a2 + 15);
          *(a2 + 14) = v50 + 1;
          if (v50 >= v51)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v48, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v52 = *(a2 + 14);
          v21 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v21)
          {
            *(a2 + 14) = v53;
          }

          v34 = *(a2 + 1);
          if (v34 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v54 = *v34;
        }

        while (v54 == 74);
        if (v54 != 82)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v34 + 1;
LABEL_130:
          v55 = *(this + 31);
          v56 = *(this + 30);
          if (v56 >= v55)
          {
            if (v55 == *(this + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
              v55 = *(this + 31);
            }

            *(this + 31) = v55 + 1;
            operator new();
          }

          v57 = *(this + 14);
          *(this + 30) = v56 + 1;
          v58 = *(v57 + 8 * v56);
          v71[0] = 0;
          v59 = *(a2 + 1);
          if (v59 >= *(a2 + 2) || *v59 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
            {
              return 0;
            }
          }

          else
          {
            v71[0] = *v59;
            *(a2 + 1) = v59 + 1;
          }

          v60 = *(a2 + 14);
          v61 = *(a2 + 15);
          *(a2 + 14) = v60 + 1;
          if (v60 >= v61)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v58, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v62 = *(a2 + 14);
          v21 = __OFSUB__(v62, 1);
          v63 = v62 - 1;
          if (v63 < 0 == v21)
          {
            *(a2 + 14) = v63;
          }

          v34 = *(a2 + 1);
          if (v34 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v64 = *v34;
        }

        while (v64 == 82);
        if (v64 != 89)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_148:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = *v71;
        *(this + 42) |= 0x400u;
        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 != 97)
        {
          continue;
        }

        *(a2 + 1) = v65 + 1;
LABEL_152:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 18) = *v71;
        *(this + 42) |= 0x800u;
        v66 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v66 >= v11 || *v66 != 104)
        {
          continue;
        }

        v12 = v66 + 1;
        *(a2 + 1) = v12;
LABEL_156:
        v71[0] = 0;
        if (v12 >= v11 || (v67 = *v12, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v67 = v71[0];
          v68 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v68 = v12 + 1;
          *(a2 + 1) = v68;
        }

        *(this + 15) = v67;
        *(this + 42) |= 0x1000u;
        if (v68 >= v11 || *v68 != 112)
        {
          continue;
        }

        v16 = v68 + 1;
        *(a2 + 1) = v16;
LABEL_164:
        v71[0] = 0;
        if (v16 >= v11 || (v69 = *v16, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v69 = v71[0];
          v70 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v70 = v16 + 1;
          *(a2 + 1) = v70;
        }

        *(this + 40) = v69;
        *(this + 42) |= 0x2000u;
        if (v70 >= v11 || *v70 != 121)
        {
          continue;
        }

        *(a2 + 1) = v70 + 1;
LABEL_172:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 19) = *v71;
        *(this + 42) |= 0x4000u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if (v6 == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_40;
      case 4u:
        if (v6 == 1)
        {
          goto LABEL_66;
        }

        goto LABEL_40;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_70;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_78;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_86;
      case 8u:
        if (v6 == 2)
        {
          goto LABEL_94;
        }

        goto LABEL_40;
      case 9u:
        if (v6 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_112;
      case 0xAu:
        if (v6 == 2)
        {
          goto LABEL_130;
        }

        goto LABEL_40;
      case 0xBu:
        if (v6 == 1)
        {
          goto LABEL_148;
        }

        goto LABEL_40;
      case 0xCu:
        if (v6 == 1)
        {
          goto LABEL_152;
        }

        goto LABEL_40;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_156;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_164;
      case 0xFu:
        if (v6 == 1)
        {
          goto LABEL_172;
        }

        goto LABEL_40;
      default:
LABEL_40:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}