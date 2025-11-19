void sub_1D0BA68E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BA6924(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent(v8 + 288, v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0BA6A44(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2[209] != 2 || a2[208] == 0)
  {
    return 0;
  }

  if (!a2[1464] || a2[1544] == 0)
  {
    return 0;
  }

  if (*(a1 + 19888) == 1)
  {
    memcpy((a1 + 19904), a2 + 8, 0xA51uLL);
    return 0;
  }

  else
  {
    *(a1 + 19896) = &unk_1F4CEF7A8;
    memcpy((a1 + 19904), a2 + 8, 0xA51uLL);
    result = 0;
    *(a1 + 19888) = 1;
  }

  return result;
}

void *sub_1D0BA6B3C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1D0C54E78(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1D0B8BF18(a1, &v10);
}

void sub_1D0BA6CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void raven::RavenIonosphereEstimatorActiveObject::HandleEvent(const void **this, const raven::RavenSolutionEvent *a2)
{
  v2 = this;
  if ((this[28] & 1) == 0)
  {
    v52 = 12;
    v51 = 2;
    v6 = cnprint::CNLogFormatter::FormatGeneral(this + 239, "RavenIonosphereEstimatorActiveObject: not configured");
    goto LABEL_15;
  }

  if (*(a2 + 1464) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE054F70, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054F70);
      if (this)
      {
        qword_1EE054F68 = tan(1.30899694);
        __cxa_guard_release(&qword_1EE054F70);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054F80, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054F80);
      if (this)
      {
        *&qword_1EE054F78 = *&qword_1EE054F68 * *&qword_1EE054F68;
        __cxa_guard_release(&qword_1EE054F80);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054F90, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054F90);
      if (this)
      {
        qword_1EE054F88 = tan(1.30725161);
        __cxa_guard_release(&qword_1EE054F90);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FA0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FA0);
      if (this)
      {
        *&qword_1EE054F98 = *&qword_1EE054F88 * *&qword_1EE054F88;
        __cxa_guard_release(&qword_1EE054FA0);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FB0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FB0);
      if (this)
      {
        qword_1EE054FA8 = tan(1.04719755);
        __cxa_guard_release(&qword_1EE054FB0);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FC0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FC0);
      if (this)
      {
        *&qword_1EE054FB8 = *&qword_1EE054FA8 * *&qword_1EE054FA8;
        __cxa_guard_release(&qword_1EE054FC0);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FD0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FD0);
      if (this)
      {
        qword_1EE054FC8 = tan(1.04545222);
        __cxa_guard_release(&qword_1EE054FD0);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FE0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FE0);
      if (this)
      {
        *&qword_1EE054FD8 = *&qword_1EE054FC8 * *&qword_1EE054FC8;
        __cxa_guard_release(&qword_1EE054FE0);
      }
    }

    v4 = *(a2 + 186);
    v5 = *(a2 + 185) * *(a2 + 185) + *(a2 + 184) * *(a2 + 184);
    if (fabs(v5) >= 2.22044605e-16)
    {
      v13 = v4 * v4 / v5;
    }

    else
    {
      if (fabs(v4) < 2.22044605e-16)
      {
        v52 = 12;
        v51 = 2;
        v6 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "Warning: RavenIonosphereEstimatorActiveObject: Receiver location is at the center of the earth. Cannot handle RavenSolutionEvent");
LABEL_15:
        if (*(v2 + 1935) >= 0)
        {
          LOBYTE(v12) = v6;
        }

        else
        {
          v12 = v2[239];
        }

        cnprint::CNPrinter::Print(&v52, &v51, "%s", v7, v8, v9, v10, v11, v12);
        return;
      }

      v13 = INFINITY;
    }

    if (v13 <= *&qword_1EE054F78)
    {
      if (v13 > *&qword_1EE054FB8 && *(v2 + 225) == 1)
      {
        if (!cnprint::CNPrinter::GetLogLevel(this))
        {
          v52 = 12;
          v51 = 0;
          v21 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Receiver location is at a high latitude, but not too high to not run the estimator; run the estimator with an adjusted elevation mask,tanlat,%.3lf,latthresh,%.3lf,tan_of_abs_lat_thresh_to_use_adjusted_elev_mask_squared,%.3lf", v13, *&qword_1EE054FB8, *&qword_1EE054F78);
          if (*(v2 + 1935) >= 0)
          {
            LOBYTE(v27) = v21;
          }

          else
          {
            v27 = v2[239];
          }

          cnprint::CNPrinter::Print(&v52, &v51, "%s", v22, v23, v24, v25, v26, v27);
        }

        v28 = *(v2[245] + 388);
        if (v28 < 15.0)
        {
          v28 = 15.0;
        }

        *(v2 + 254) = v28;
      }

      else
      {
        if (v13 <= *&qword_1EE054FD8)
        {
          if (!cnprint::CNPrinter::GetLogLevel(this))
          {
            v52 = 12;
            v51 = 0;
            v36 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Receiver location is at a low enough latitude to run the estimator without an adjusted elevation mask,tanlat,%.3lf,latthresh,%.3lf", v13, *&qword_1EE054FD8);
            if (*(v2 + 1935) >= 0)
            {
              LOBYTE(v42) = v36;
            }

            else
            {
              v42 = v2[239];
            }

            cnprint::CNPrinter::Print(&v52, &v51, "%s", v37, v38, v39, v40, v41, v42);
          }

          v43 = *(v2[245] + 388);
        }

        else
        {
          if (v13 > *&qword_1EE054F98 || (*(v2 + 225) & 1) != 0)
          {
            if (!cnprint::CNPrinter::GetLogLevel(this))
            {
              v52 = 12;
              v51 = 0;
              v29 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Do nothing. Maintain the current state. This can happen if we are within the hysteresis region,tanlat,%.3lf,tan_of_abs_lat_minus_hysteresis_adjusted_elev_mask_thresh_squared,%.3lf,tan_of_abs_lat_thresh_squared,%.3lf", v13, *&qword_1EE054F98, *&qword_1EE054FB8);
              if (*(v2 + 1935) >= 0)
              {
                LOBYTE(v35) = v29;
              }

              else
              {
                v35 = v2[239];
              }

              cnprint::CNPrinter::Print(&v52, &v51, "%s", v30, v31, v32, v33, v34, v35);
            }

            goto LABEL_54;
          }

          if (!cnprint::CNPrinter::GetLogLevel(this))
          {
            v52 = 12;
            v51 = 0;
            v44 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Receiver location is at a high latitude, but no longer at a prohibitively high latitude; run the estimator with an adjusted elevation mask,tanlat,%.3lf,latthresh,%.3lf", v13, *&qword_1EE054F98);
            if (*(v2 + 1935) >= 0)
            {
              LOBYTE(v50) = v44;
            }

            else
            {
              v50 = v2[239];
            }

            cnprint::CNPrinter::Print(&v52, &v51, "%s", v45, v46, v47, v48, v49, v50);
          }

          v43 = *(v2[245] + 388);
          if (v43 < 15.0)
          {
            v43 = 15.0;
          }
        }

        *(v2 + 254) = v43;
        *(v2 + 225) = 1;
      }
    }

    else if (*(v2 + 225) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
      {
        v52 = 12;
        v51 = 1;
        v14 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Receiver location is at too high of a latitude to run the estimator, disabling the estimator,tanlat,%.3lf,latthresh,%.3lf", v13, *&qword_1EE054F78);
        if (*(v2 + 1935) >= 0)
        {
          LOBYTE(v20) = v14;
        }

        else
        {
          v20 = v2[239];
        }

        cnprint::CNPrinter::Print(&v52, &v51, "%s", v15, v16, v17, v18, v19, v20);
      }

      *(v2 + 225) = 0;
      raven::RavenIonosphereEstimator::Reset((v2 + 254));
    }
  }

LABEL_54:
  if (*(v2 + 225) == 1)
  {
    std::mutex::lock((v2 + 246));
    raven::RavenIonosphereEstimator::HandleEvent((v2 + 254), a2);

    std::mutex::unlock((v2 + 246));
  }
}

uint64_t raven::RavenIonosphereEstimator::HandleEvent(raven::RavenIonosphereEstimator *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 8))
  {
    if (*(a2 + 209) == 2 && *(a2 + 208) != 0 && *(this + 448) == 1)
    {
      if (*(a2 + 1464))
      {
        memcpy(this + 568, a2 + 8, 0xA51uLL);
        if ((*(this + 9) & 1) == 0)
        {
          if (*(this + 80) != 1)
          {
            goto LABEL_14;
          }

          v7 = CNTimeSpan::operator-(this + 58, this + 8, v5, v6);
          *&v63 = v7;
          *(&v63 + 1) = v8;
          if (v7 < 0 || (*v9.i64 = v8, v8 < 0.0))
          {
            v7 = CNTimeSpan::operator-(&v63, v9, v10);
            v9.i64[0] = v11;
          }

          if (*v9.i64 + v7 >= *(*(this + 504) + 3136))
          {
LABEL_14:
            updated = raven::RavenIonosphereEstimator::UpdateEstimatorParametersViaPolyfitToKlobucharModel(this);
            if (updated && cnprint::CNPrinter::GetLogLevel(updated) <= 1)
            {
              LOWORD(v63) = 12;
              LOBYTE(v58) = 1;
              v13 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "Warning: UpdateEstimatorParametersViaPolyfitToKlobucharModel failed, continuing without updating parameters");
              if (*(this + 4063) >= 0)
              {
                LOBYTE(v19) = v13;
              }

              else
              {
                v19 = *(this + 505);
              }

              cnprint::CNPrinter::Print(&v63, &v58, "%s", v14, v15, v16, v17, v18, v19);
            }
          }

          v63 = 0u;
          v64 = vdupq_n_s64(0x7FF8000000000000uLL);
          v65 = v64;
          v66 = v64;
          v67 = v64;
          v68 = v64;
          v71 = 0xA0000000ALL;
          v70 = xmmword_1D0E84630;
          v69 = &unk_1F4CE2180;
          v72 = &v73;
          v20 = *(this + 504);
          if (*(v20 + 2736) == 1)
          {
            *(v20 + 2728) = 0x3EB0C6F7A0B5ED8DLL;
          }

          if (*(v20 + 2656) > 0.0 && *(v20 + 2664) > 0.0 && *(v20 + 2672) > 0.0 && *(v20 + 2680) > 0.0 && *(v20 + 2688) > 0.0 && *(v20 + 2696) > 0.0 && *(v20 + 2704) > 0.0 && *(v20 + 2712) > 0.0 && *(v20 + 2720) > 0.0 && *(v20 + 2728) > 0.0)
          {
            v60 = 0xA0000000ALL;
            v58 = &unk_1F4CE2180;
            v59 = xmmword_1D0E84630;
            v61 = &v62;
            sub_1D0E156DC(v57);
            sub_1D0B894B0(&v58, v57);
            v21 = *(this + 504);
            v22 = v61;
            v23 = 1.0;
            *v61 = 1.0 / v21[332];
            v24 = SHIDWORD(v59);
            v22[SHIDWORD(v59) + 1] = 1.0 / v21[333];
            v22[2 * v24 + 2] = 1.0 / v21[334];
            v22[3 * v24 + 3] = 1.0 / v21[335];
            v22[4 * v24 + 4] = 1.0 / v21[336];
            v22[5 * v24 + 5] = 1.0 / v21[337];
            v22[6 * v24 + 6] = 1.0 / v21[338];
            v22[7 * v24 + 7] = 1.0 / v21[339];
            v22[8 * v24 + 8] = 1.0 / v21[340];
            v22[9 * v24 + 9] = 1.0 / v21[341];
            v25 = *(a2 + 146);
            v26 = *(a2 + 147);
            v54 = *(this + 12);
            v55 = *(this + 11);
            v27 = *(this + 14);
            v53 = *(this + 13);
            v28 = *(this + 15);
            v29 = *(this + 16);
            v30 = *(this + 17);
            v31 = *(this + 18);
            v32 = *(this + 19);
            v33 = *(this + 20);
            sub_1D0E1A968(v56, &v58);
            if (*(a2 + 209) != 2)
            {
              v23 = *(*(this + 504) + 2520);
            }

            raven::RavenIonosphereEstimatorInitArgs::Fill(&v63, v25, v26, v56, v55, v54, v53, v27, v28, v29, v30, v31, v34, v35, v36, v37, v32, v33, v23);
            v56[0] = &unk_1F4CD5E28;
            return raven::RavenIonosphereEstimator::Initialize(this, &v63);
          }

          LOWORD(v58) = 12;
          v57[0] = 4;
          v46 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "RavenIonosphereEstimator::HandleEvent(const RavenSolutionEvent& evt), One or more initial state standard deviation values are negative");
          if (*(this + 4063) >= 0)
          {
            LOBYTE(v52) = v46;
          }

          else
          {
            v52 = *(this + 505);
          }

          cnprint::CNPrinter::Print(&v58, v57, "%s", v47, v48, v49, v50, v51, v52);
        }
      }
    }

    return 0;
  }

  LOWORD(v63) = 12;
  LOBYTE(v58) = 2;
  v39 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenSolutionEvent received, but estimator is not configured");
  if (*(this + 4063) >= 0)
  {
    LOBYTE(v45) = v39;
  }

  else
  {
    v45 = *(this + 505);
  }

  cnprint::CNPrinter::Print(&v63, &v58, "%s", v40, v41, v42, v43, v44, v45);
  return 0xFFFFFFFFLL;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Accel::~Accel(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this)
{
  *this = &unk_1F4CD9618;
  CoreNavigation::CLP::LogEntry::PrivateData::Accel::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Accel::~Accel(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Accel::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Accel::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Gyro::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 11) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v26 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
        {
          return 0;
        }
      }

      else
      {
        v26 = *v8;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        do
        {
          *(a2 + 1) = v14 + 1;
LABEL_27:
          v15 = *(this + 7);
          v16 = *(this + 6);
          if (v16 >= v15)
          {
            if (v15 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v15 = *(this + 7);
            }

            *(this + 7) = v15 + 1;
            operator new();
          }

          v17 = *(this + 2);
          *(this + 6) = v16 + 1;
          v18 = *(v17 + 8 * v16);
          v27 = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
            {
              return 0;
            }
          }

          else
          {
            v27 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v20 = *(a2 + 14);
          v21 = *(a2 + 15);
          *(a2 + 14) = v20 + 1;
          if (v20 >= v21)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v22 = *(a2 + 14);
          v12 = __OFSUB__(v22, 1);
          v23 = v22 - 1;
          if (v23 < 0 == v12)
          {
            *(a2 + 14) = v23;
          }

          v14 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v14 < v24 && *v14 == 18);
        if (v14 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_38:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v19;
          *(this + 8) |= 4u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 37)
          {
            *(a2 + 1) = v17 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v19;
          *(this + 8) |= 8u;
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

      if (v6 == 2 && v7 == 5)
      {
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

    *(this + 8) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v19 = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
      {
        return 0;
      }
    }

    else
    {
      v19 = *v9;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
    if (v15 < *(a2 + 2) && *v15 == 21)
    {
      *(a2 + 1) = v15 + 1;
LABEL_34:
      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v19;
      *(this + 8) |= 2u;
      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 29)
      {
        *(a2 + 1) = v16 + 1;
        goto LABEL_38;
      }
    }
  }
}

int64x2_t sub_1D0BA7F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v31.__vftable) = 3;
    LOBYTE(v29) = 5;
    cnprint::CNPrinter::Print(&v31, &v29, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v27);
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

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEF208 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEF208 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v31.__vftable = 0;
        std::bad_cast::bad_cast(&v31);
        v31.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF1E0;
    *(a1 + 8) = *(v21 + 16);
    v22 = *(v21 + 64);
    v23 = *(v21 + 80);
    v24 = *(v21 + 48);
    *(a1 + 24) = *(v21 + 32);
    *(a1 + 72) = v23;
    *(a1 + 56) = v22;
    *(a1 + 40) = v24;
    v25 = *(v21 + 112);
    result = *(v21 + 128);
    v26 = *(v21 + 138);
    *(a1 + 88) = *(v21 + 96);
    *(a1 + 130) = v26;
    *(a1 + 120) = result;
    *(a1 + 104) = v25;
  }

  else
  {
    v29 = 3;
    v28 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v31.__vftable) = 3;
      v30 = 5;
      cnprint::CNPrinter::Print(&v31, &v30, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v27);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v29, &v28, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF1E0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    result = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 96) = result;
    *(a1 + 112) = result;
    *(a1 + 136) = 0x7FF8000000000000;
    *(a1 + 145) = 0;
  }

  return result;
}

void sub_1D0BA8170(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BA7F04(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0BA8290(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::RateGyroEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v23 = v2;
  v24 = v3;
  v19 = 0;
  v20 = 0;
  v18 = &unk_1F4CEF658;
  v21 = vdupq_n_s64(0x7FF8000000000000uLL);
  v22 = 0x7FF8000000000000;
  v19 = (*(*a2 + 16))(a2);
  v20 = v6;
  v21 = *(a2 + 104);
  v22 = *(a2 + 15);
  result = sub_1D0BA8400(this + 44888, &v18);
  if (result)
  {
    v17 = 12;
    v16 = 4;
    v15[0] = (*(*a2 + 16))(a2);
    v15[1] = v8;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, v15, "Could not add measurement - rotation rates");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v14) = this - 104;
    }

    else
    {
      v14 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v17, &v16, "%s", v9, v10, v11, v12, v13, v14);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1D0BA8400(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (v4 == 350 && sub_1D0BA862C(a1))
    {
      return 0xFFFFFFFFLL;
    }

    v6 = (*(*a2 + 16))(a2);
    v8 = v7;
    v9 = *(a1 + 44);
    v10 = a1 + 48;
    v26 = v6;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    v12 = !v11;
    while (1)
    {
      v13 = v10 + 48 * v9;
      v14 = (*(*v13 + 16))(v13);
      if (v12 || (!v14 ? (v16 = (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v16 = 1), !v16 || v26 == v14))
      {
        if (v8 >= v15)
        {
          goto LABEL_26;
        }
      }

      else if (v26 >= v14)
      {
LABEL_26:
        v20 = v10 + 48 * ((v9 + 1) % 0x15E) + 8;
        goto LABEL_29;
      }

      v17 = v10 + 48 * ((v9 + 1) % 0x15E);
      v18 = *(v13 + 8);
      v19 = *(v13 + 24);
      *(v17 + 40) = *(v13 + 40);
      *(v17 + 24) = v19;
      *(v17 + 8) = v18;
      if (v9 == *(a1 + 40))
      {
        break;
      }

      if (v9)
      {
        --v9;
      }

      else
      {
        v9 = 349;
      }

      if (v9 == *(a1 + 44))
      {
        goto LABEL_30;
      }
    }

    v20 = v13 + 8;
LABEL_29:
    v23 = *(a2 + 8);
    v24 = *(a2 + 24);
    *(v20 + 32) = *(a2 + 40);
    *v20 = v23;
    *(v20 + 16) = v24;
    v9 = *(a1 + 44);
LABEL_30:
    ++*(a1 + 8);
    if (v9 == 349)
    {
      v25 = 0;
    }

    else
    {
      v25 = v9 + 1;
    }

    *(a1 + 44) = v25;
  }

  else
  {
    *(a1 + 8) = 1;
    *(a1 + 40) = 0;
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    *(a1 + 88) = *(a2 + 40);
    *(a1 + 72) = v22;
    *(a1 + 56) = v21;
  }

  sub_1D0BA8678(a1);
  return 0;
}

uint64_t sub_1D0BA862C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v2 = *(a1 + 40);
  if (v2 == 349)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 + 1;
  }

  *(a1 + 40) = v3;
  sub_1D0BA8678(a1);
  return 0;
}

uint64_t sub_1D0BA8678(uint64_t result)
{
  v1 = result;
  v2 = 0.0;
  if (*(result + 8) >= 2u)
  {
    v3 = result + 48 + 48 * *(result + 44);
    v12[0] = (*(*v3 + 16))(v3);
    v12[1] = v4;
    v5 = v1 + 48 + 48 * *(v1 + 40);
    v11[0] = (*(*v5 + 16))(v5);
    v11[1] = v6;
    result = CNTimeSpan::operator-(v12, v11, v7, v8);
    v10 = v9 + result;
    if (fabs(v10) >= 2.22044605e-16)
    {
      v2 = (*(v1 + 8) - 1) / v10;
    }
  }

  *(v1 + 32) = v2;
  return result;
}

void sub_1D0BA8780(uint64_t a1, const void ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenIonosphereEstimatorActiveObject::HandleEvent(v8, v9);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::~AccelSample(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::~AccelSample(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD95A0;
  CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t raven::ConvertProtobufToRateGyroEvent(float32x2_t *this, const CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *a2, raven::RateGyroEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((this[4].i8[0] & 1) == 0)
  {
    return 0;
  }

  v13 = this[1];
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    *(a2 + 104) = vcvtq_f64_f32(this[2]);
    *(a2 + 15) = this[3].f32[0];
    return 1;
  }

  return result;
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Gyro *a2, raven::RateGyroEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  LODWORD(v10) = *(a2 + 6);
  if (v10 >= 1)
  {
    v12 = 0;
    v14 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v15[0] = &unk_1F4CEF1E0;
      v15[1] = 0;
      v15[2] = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v13 = v14;
      v25 = v14;
      v26 = v14;
      v27 = 0;
      v28 = 0x7FF8000000000000;
      v29 = 0;
      if (v12 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
      }

      if (raven::ConvertProtobufToRateGyroEvent(*(*(a2 + 2) + 8 * v12), v15, a3, a4, a5, a6, a7, a8, v13, a10))
      {
        sub_1D0BA8B4C();
      }

      ++v12;
      v10 = *(a2 + 6);
    }

    while (v12 < v10);
  }
}

void sub_1D0BA8BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0BA8BE4(uint64_t a1)
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
  sub_1D0BA8DD4();
}

void sub_1D0BA8D20(_Unwind_Exception *exception_object)
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

void sub_1D0BA8D78(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0BA8BE4((a1 + 3));
}

void sub_1D0BA8EEC(uint64_t a1, _BYTE **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BA7F04(v14, a3, a3, a4, a5, a6, a7, a8);
  if (v8[224] == 1)
  {
    v21 = &unk_1F4CEF658;
    v22 = 0;
    v24 = vdupq_n_s64(0x7FF8000000000000uLL);
    v23 = 0;
    v25 = 0x7FF8000000000000;
    v22 = (*(v14[0] + 16))(v14);
    v23 = v9;
    v24 = v15;
    v25 = v16;
    if (sub_1D0BA8400((v8 + 240), &v21))
    {
      (*(*v8 + 16))(v19, v8);
      v10 = v20;
      v11 = v19[0];
      (*(v14[0] + 24))(v17, v14);
      if (v10 >= 0)
      {
        v12 = v19;
      }

      else
      {
        v12 = v11;
      }

      if (v18 >= 0)
      {
        v13 = v17;
      }

      else
      {
        v13 = v17[0];
      }

      printf("Warning: %s failed to handle event of type %s.\n", v12, v13);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }
  }
}

void sub_1D0BA9074(_Unwind_Exception *exception_object)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BA9094(uint64_t a1, raven::RavenIMUPreprocessorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BA7F04(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenIMUPreprocessorActiveObject::HandleEvent(v8, v9);
}

void raven::RavenIMUPreprocessorActiveObject::HandleEvent(raven::RavenIMUPreprocessorActiveObject *this, const raven::RateGyroEvent *a2)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if (!*(this + 44))
  {
    goto LABEL_25;
  }

  __p = (*(*a2 + 16))(a2);
  *&v67 = v4;
  v5 = *(*(this + 40) + 8 * (*(this + 43) / 0x1AuLL)) + 152 * (*(this + 43) % 0x1AuLL);
  v77[0] = (*(*v5 + 16))(v5);
  v77[1] = v6;
  v9 = CNTimeSpan::operator-(&__p, v77, v7, v8);
  *&v78[0] = v9;
  v78[1] = v10;
  if (v9)
  {
    if (v9 < 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!sub_1D0B8E6A8(v78, this + 30))
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v11.n128_f64[0] = v10;
  if (v10 >= 0.0)
  {
    goto LABEL_7;
  }

LABEL_8:
  LOWORD(v77[0]) = 12;
  v76 = 3;
  v12 = (*(*a2 + 16))(a2, v11);
  v14 = v13 + v12;
  (*(*this + 16))(&__p, this);
  cnprint::CNPrinter::Print(v77, &v76, "Warning: time,%.3lf,%s emptying history,gyro,dt,%.3lf", v15, v16, v17, v18, v19, SLOBYTE(v14));
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p);
  }

  v20 = *(this + 40);
  v21 = *(this + 41);
  if (v21 == v20)
  {
    v21 = *(this + 40);
  }

  else
  {
    v22 = *(this + 43);
    v23 = &v20[v22 / 0x1A];
    v24 = v20[(*(this + 44) + v22) / 0x1A] + 152 * ((*(this + 44) + v22) % 0x1A);
    if (*v23 + 152 * (v22 % 0x1A) != v24)
    {
      v25 = (*v23 + 152 * (v22 % 0x1A));
      do
      {
        v26 = *v25;
        v25 += 19;
        (*v26)();
        if (v25 - *v23 == 3952)
        {
          v27 = v23[1];
          ++v23;
          v25 = v27;
        }
      }

      while (v25 != v24);
      v20 = *(this + 40);
      v21 = *(this + 41);
    }
  }

  *(this + 44) = 0;
  v28 = v21 - v20;
  if (v28 >= 3)
  {
    do
    {
      operator delete(*v20);
      v29 = *(this + 41);
      v20 = (*(this + 40) + 8);
      *(this + 40) = v20;
      v28 = (v29 - v20) >> 3;
    }

    while (v28 > 2);
  }

  if (v28 == 1)
  {
    v30 = 13;
  }

  else
  {
    if (v28 != 2)
    {
      goto LABEL_25;
    }

    v30 = 26;
  }

  *(this + 43) = v30;
LABEL_25:
  sub_1D0B93B8C((this + 312), a2);
  v31 = *(this + 44);
  if (v31 == *(this + 38))
  {
    v67 = 0uLL;
    __p = &unk_1F4CEF1E0;
    LOBYTE(v68) = 0;
    *(&v68 + 1) = 0;
    *&v69 = 0;
    BYTE8(v69) = 0;
    v70 = 0uLL;
    LOBYTE(v71) = 0;
    *(&v71 + 1) = 0;
    *v72 = 0;
    *&v72[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v72[24] = *&v72[8];
    v73 = 0;
    v74 = 0x7FF8000000000000;
    v75 = 0;
    v32 = *(this + 64);
    if (v31 > v32)
    {
      v33 = *(this + 43);
      v34 = v33 + v32;
      v35 = *(this + 40);
      v36 = *(v35 + 8 * (v34 / 0x1A)) + 152 * (v34 % 0x1A);
      v37 = *(v36 + 8);
      v68 = *(v36 + 24);
      v67 = v37;
      v38 = *(v36 + 40);
      v39 = *(v36 + 56);
      v40 = *(v36 + 72);
      *v72 = *(v36 + 88);
      v71 = v40;
      v70 = v39;
      v69 = v38;
      memset(&v72[16], 0, 24);
      v41 = *(this + 37);
      v42 = *(this + 34);
      v43 = *(this + 35);
      v44 = (v42 + 8 * (v41 >> 9));
      if (v43 == v42)
      {
        v45 = 0;
      }

      else
      {
        v45 = (*v44 + 8 * (*(this + 37) & 0x1FFLL));
      }

      v46 = (v35 + 8 * (v33 / 0x1A));
      v47 = *(this + 41);
      if (v47 == v35)
      {
        v48 = 0;
      }

      else
      {
        v48 = *v46 + 152 * (v33 % 0x1A);
      }

      v49 = (v33 + v31) % 0x1A;
      v50 = v41 + v31;
      v51 = (v41 + v31) >> 9;
      v52 = v50 & 0x1FF;
      v53 = 0uLL;
      v39.n128_u64[0] = 0;
      while (1)
      {
        v54 = v48 - 3952;
        do
        {
          if (v43 == v42)
          {
            v55 = 0;
          }

          else
          {
            v55 = *(v42 + 8 * v51) + 8 * v52;
          }

          if (v45 == v55 || (v47 == v35 ? (v56 = 0) : (v56 = *(v35 + 8 * ((v33 + v31) / 0x1A)) + 152 * v49), v48 == v56))
          {
            v60 = (*(v35 + 8 * ((v31 + v33 - 1) / 0x1A)) + 152 * ((v31 + v33 - 1) % 0x1A));
            (**v60)(v60, v49, v53, v39);
            v61 = *(this + 41);
            v62 = v61 == *(this + 40);
            v63 = 26 * ((v61 - *(this + 40)) >> 3) - 1;
            v65 = *(this + 43);
            v64 = *(this + 44);
            *(this + 44) = v64 - 1;
            if (v62)
            {
              v63 = 0;
            }

            if ((v63 - (v64 + v65) - 51) <= 0xFFFFFFFFFFFFFFCBLL)
            {
              operator delete(*(v61 - 8));
              *(this + 41) -= 8;
            }

            sub_1D0BA96A0();
          }

          v57 = *v45++;
          v53 = vmlaq_n_f64(v53, *(v48 + 104), v57);
          *&v72[16] = v53;
          v39.n128_f64[0] = v39.n128_f64[0] + v57 * *(v48 + 120);
          *&v72[32] = v39.n128_u64[0];
          if ((v45 - *v44) == 4096)
          {
            v58 = v44[1];
            ++v44;
            v45 = v58;
          }

          v54 += 152;
          v48 += 152;
        }

        while (*v46 != v54);
        v59 = v46[1];
        ++v46;
        v48 = v59;
      }
    }

    sub_1D0C543A8("deque");
  }
}

void sub_1D0BA9678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BA9734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0BA9758(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BA7F04(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v8, v9);
}

uint64_t sub_1D0BA97B8(uint64_t a1, uint64_t a2, double *a3, unint64_t a4)
{
  v8 = sub_1D0B937E8(a1, a2);
  if (*(a1 + 40))
  {
    for (i = 1; ; i = 0)
    {
      v19[0] = (*(*a2 + 16))(a2, v8);
      v19[1] = v10;
      v11 = *(*(a1 + 8) + 8 * (*(a1 + 32) / 0x1AuLL)) + 152 * (*(a1 + 32) % 0x1AuLL);
      v18[0] = (*(*v11 + 16))(v11);
      v18[1] = v12;
      *&v20[0] = CNTimeSpan::operator-(v19, v18, v13, v14);
      v20[1] = v15;
      if (!sub_1D0B7CF88(v20, a3) && *(a1 + 40) <= a4)
      {
        break;
      }

      sub_1D0B9A458(a1);
      v16 = 0;
      if (!*(a1 + 40))
      {
        return v16 & 1;
      }
    }

    v16 = i;
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::RateGyroEvent *a2)
{
  if (*(this + 224))
  {
    __p = 2;
    v40 = 0;
    v4 = sub_1D0BA97B8(this + 7712, a2, &__p, *(this + 910));
    if ((v4 & 1) == 0 && !cnprint::CNPrinter::GetLogLevel(v4))
    {
      LOWORD(__p) = 12;
      LOBYTE(v43) = 0;
      v5 = (*(*a2 + 16))(a2);
      v37 = v6 + v5;
      cnprint::CNPrinter::Print(&__p, &v43, "DevAtt,Gyro stationary detection queue overflowed at %.3lf", v7, v8, v9, v10, v11, SLOBYTE(v37));
    }

    __p = 3;
    v40 = 0x3FE0000000000000;
    v12 = sub_1D0BA97B8(this + 7520, a2, &__p, *(this + 911));
    if ((v12 & 1) == 0)
    {
      if (!cnprint::CNPrinter::GetLogLevel(v12))
      {
        LOWORD(__p) = 12;
        LOBYTE(v43) = 0;
        v13 = (*(*a2 + 16))(a2);
        v38 = v14 + v13;
        cnprint::CNPrinter::Print(&__p, &v43, "DevAtt,Gyro down sampling queue overflowed at %.3lf", v15, v16, v17, v18, v19, SLOBYTE(v38));
      }

      v20 = *(this + 832);
      v21 = *(this + 833);
      if (v21 == v20)
      {
        v24 = (this + 6688);
        v21 = *(this + 832);
      }

      else
      {
        v22 = *(this + 835);
        v23 = &v20[v22 / 0x1A];
        v24 = (this + 6688);
        v25 = v20[(*(this + 836) + v22) / 0x1A] + 152 * ((*(this + 836) + v22) % 0x1A);
        if (*v23 + 152 * (v22 % 0x1A) != v25)
        {
          v26 = (*v23 + 152 * (v22 % 0x1A));
          do
          {
            v27 = *v26;
            v26 += 19;
            (*v27)();
            if (v26 - *v23 == 3952)
            {
              v28 = v23[1];
              ++v23;
              v26 = v28;
            }
          }

          while (v26 != v25);
          v21 = *(this + 833);
          v20 = *(this + 832);
        }
      }

      *v24 = 0;
      v35 = v21 - v20;
      if (v35 >= 3)
      {
        do
        {
          operator delete(*v20);
          v20 = (*(this + 832) + 8);
          *(this + 832) = v20;
          v35 = (*(this + 833) - v20) >> 3;
        }

        while (v35 > 2);
      }

      if (v35 == 1)
      {
        v36 = 13;
      }

      else
      {
        if (v35 != 2)
        {
          return;
        }

        v36 = 26;
      }

      *(this + 835) = v36;
    }
  }

  else
  {
    v43 = 12;
    v42 = 3;
    (*(*this + 16))(&__p, this, a2);
    if (v41 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      LOBYTE(p_p) = __p;
    }

    cnprint::CNPrinter::Print(&v43, &v42, "Warning: %s is not configured yet.", v29, v30, v31, v32, v33, p_p);
    if (v41 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1D0BA9BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BA9C08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BA7F04(v9, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  sub_1D0BA96A0();
}

void sub_1D0BA9C50(uint64_t a1, raven::RavenMapVectorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0BA7F04(v11, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenMapVectorActiveObject::HandleEvent(v8, v11, v9, v10);
}

void raven::RavenMapVectorActiveObject::HandleEvent(raven::RavenMapVectorActiveObject *this, const raven::RateGyroEvent *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 440))
  {
    v6 = CNTimeSpan::operator-(a2 + 1, this + 57, a3, a4);
    v126 = v6;
    *&v127 = v7;
    if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
    {
      v6 = CNTimeSpan::operator-(&v126, v8, v9);
      v8.i64[0] = v10;
    }

    if (*v8.i64 + v6 > 1.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v6) > 1)
      {
        goto LABEL_12;
      }

      LOWORD(v120) = 12;
      LOBYTE(v117[0]) = 1;
      v11 = (*(*a2 + 16))(a2);
      if (*(this + 440))
      {
        *v13.i64 = v12;
        *v14.i64 = v11;
        v15 = v12 + v11;
        v126 = CNTimeSpan::operator-(a2 + 1, this + 57, v13, v14);
        *&v127 = v16;
        if (v126 < 0 || (*v22.i64 = v16, v16 < 0.0))
        {
          CNTimeSpan::operator-(&v126, v22, v23);
        }

        cnprint::CNPrinter::Print(&v120, v117, "t,%.3lf,MapVectorAO: Time delta between RateGyroEvent and DecomposedAccelerationEvent is too large, %.2lf. Clearing map vector information, vertical rotation rate queue, and DecomposedAccelerationEvent,", v17, v18, v19, v20, v21, SLOBYTE(v15));
LABEL_12:
        v24 = *(this + 518);
        v25 = *(this + 519);
        *(this + 522) = 0;
        v26 = (v25 - v24) >> 3;
        if (v26 >= 3)
        {
          do
          {
            operator delete(*v24);
            v24 = (*(this + 518) + 8);
            *(this + 518) = v24;
            v26 = (*(this + 519) - v24) >> 3;
          }

          while (v26 > 2);
        }

        if (v26 == 1)
        {
          v27 = 256;
        }

        else
        {
          if (v26 != 2)
          {
            goto LABEL_35;
          }

          v27 = 512;
        }

        *(this + 521) = v27;
LABEL_35:
        *(this + 4184) = 0u;
        *(this + 525) = 0x7FF8000000000000;
        if (*(this + 440) == 1)
        {
          *(this + 440) = 0;
        }

        goto LABEL_38;
      }

LABEL_63:
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    if (*(this + 648) != 1)
    {
      goto LABEL_41;
    }

    v35 = *(this + 69);
    _Q3 = *(this + 35);
    _Q0 = vmulq_f64(_Q3, _Q3);
    _D11 = *(this + 71);
    __asm { FMLA            D0, D11, V3.D[1] }

    v43 = sqrt(*_Q0.i64);
    if (fabs(v43) <= 0.000000015 || (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v126) = 12;
      LOBYTE(v120) = 4;
      v62 = (*(*a2 + 16))(a2);
      v111 = v63 + v62;
      cnprint::CNPrinter::Print(&v126, &v120, "t,%.3lf,MapVectorAO: Gravity vector has invalid magnitude, %.3lf. Clearing cached map vector information.", v64, v65, v66, v67, v68, SLOBYTE(v111));
LABEL_38:
      if (*(this + 808) == 1)
      {
        *(this + 808) = 0;
      }

      *(this + 513) = 0x7FF0000000000000;
      *(this + 514) = 0;
      *(this + 515) = 0x7FF8000000000000;
      *(this + 4128) = 0;
      goto LABEL_41;
    }

    v9.i64[0] = *(a2 + 15);
    *_Q0.i64 = (_Q3.f64[0] * *(a2 + 14) + *(a2 + 13) * v35 + *v9.i64 * _D11) * 57.2957795;
    v44 = *_Q0.i64 / v43;
    if (*(this + 1272) != 1 || *(this + 3024) != 1)
    {
      goto LABEL_44;
    }

    v114 = *(this + 35);
    *&v115 = v43;
    v45 = CNTimeSpan::operator-(a2 + 1, this + 161, _Q0, v9);
    v126 = v45;
    *&v127 = v46;
    if (v45 < 0 || (*_Q0.i64 = v46, v46 < 0.0))
    {
      v45 = CNTimeSpan::operator-(&v126, _Q0, v9);
      _Q0.i64[0] = v47;
    }

    *_Q0.i64 = *_Q0.i64 + v45;
    v9.i64[0] = 10.0;
    if (*_Q0.i64 < 10.0)
    {
      v48 = (v114.f64[0] * *(this + 380) + *(this + 379) * v35 + *(this + 381) * _D11) * 57.2957795;
      v128 = 0x300000003;
      v127 = xmmword_1D0E76C10;
      v126 = &unk_1F4CD5DD0;
      v129 = v130;
      v122 = 0x100000003;
      v121 = xmmword_1D0E7DCC0;
      v120 = &unk_1F4CDEB28;
      v123 = &v124;
      v124 = v35 / *&v115;
      v125 = vdivq_f64(v114, vdupq_lane_s64(v115, 0));
      v50 = *(this + 384);
      v51 = *(this + 385);
      v130[0] = *(this + 191);
      *(&v49 + 1) = *(&v130[0] + 1);
      *&v49 = v50;
      v130[1] = v49;
      v52 = *(this + 193);
      v53 = v48 / *&v115;
      v131 = v51;
      v132 = v52;
      v133 = v50;
      v134 = v52;
      sub_1D0D4BC50(&v120, v116);
      sub_1D0BFB8FC(v116, &v126, v117);
      v54 = sub_1D0BFC678(v117, &v120, v118);
      *(this + 512) = sqrt(*v119) * 57.2957795;
      *(this + 4088) = 1;
      if (!cnprint::CNPrinter::GetLogLevel(v54))
      {
        LOWORD(v117[0]) = 12;
        v116[0] = 0;
        v55 = (*(*a2 + 16))(a2);
        if ((*(this + 4088) & 1) == 0)
        {
          __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
        }

        v113 = *(this + 512);
        v110 = v56 + v55;
        cnprint::CNPrinter::Print(v117, v116, "t,%.3lf,MapVectorAO: vertical_rotation_bias_dps,%.2lf,vertical_rotation_rate_bias_uncertainty_dps,%.2lf,vertical_rotation_rate_dps,%.2lf", v57, v58, v59, v60, v61, SLOBYTE(v110));
      }

      if ((*(this + 648) & 1) == 0)
      {
        goto LABEL_63;
      }

      v44 = v44 - v53;
    }

    else
    {
LABEL_44:
      *(this + 4088) = 0;
    }

    v81 = CNTimeSpan::operator-(a2 + 1, this + 83, _Q0, v9);
    v126 = v81;
    *&v127 = v82;
    if (v81 < 0 || (*v83.i64 = v82, v82 < 0.0))
    {
      v81 = CNTimeSpan::operator-(&v126, v83, v84);
      v83.i64[0] = v85;
    }

    v86 = *v83.i64 + v81;
    if (v86 <= 1.0)
    {
      *(this + 513) = *(this + 513) + v44 * v86;
      *(this + 514) = (*(*a2 + 16))(a2);
      *(this + 515) = v95;
      HIDWORD(v87) = 0;
      *(this + 4128) = 1;
    }

    else
    {
      if (*(this + 808) == 1)
      {
        *(this + 808) = 0;
      }

      *(this + 513) = 0x7FF0000000000000;
      *(this + 514) = 0;
      *(this + 515) = 0x7FF8000000000000;
      *(this + 4128) = 0;
      if (cnprint::CNPrinter::GetLogLevel(v81) <= 1)
      {
        LOWORD(v120) = 12;
        LOBYTE(v117[0]) = 1;
        v88 = (*(*a2 + 16))(a2);
        v112 = v89 + v88;
        cnprint::CNPrinter::Print(&v120, v117, "t,%.3lf,MapVectorAO: Too much time between rate gyro events, %.2lf. Cannot accumulate device rotation with high fidelity,", v90, v91, v92, v93, v94, SLOBYTE(v112));
      }
    }

    LODWORD(v87) = vcvtpd_u64_f64(*(*(this + 29) + 3248) / *(*(this + 29) + 656));
    *(this + 526) = v87;
    v96 = *(this + 522);
    if (v96)
    {
      while (v96 >= v87)
      {
        v97 = *(this + 521);
        *(this + 523) = *(this + 523) - *(*(*(this + 518) + ((v97 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v97 & 0x1FF));
        *(this + 522) = v96 - 1;
        *(this + 521) = v97 + 1;
        sub_1D0B90D48(this + 4136, 1);
        v96 = *(this + 522);
        if (!v96)
        {
          break;
        }

        v87 = *(this + 526);
      }
    }

    v98 = *(this + 259);
    v99 = *(this + 519);
    v100 = *(this + 518);
    v101 = ((v99 - v100) << 6) - 1;
    if (v99 == v100)
    {
      v101 = 0;
    }

    v102 = v96 + *(this + 521);
    if (v101 == v102)
    {
      sub_1D0C1245C(this + 517);
      v96 = *(this + 522);
      v100 = *(this + 518);
      v102 = *(this + 521) + v96;
    }

    *(*(v100 + ((v102 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v102 & 0x1FF)) = v44;
    *(this + 522) = v96 + 1;
    *(this + 523) = v44 + *(this + 523);
    v120 = (*(*a2 + 16))(a2);
    *&v121 = v103;
    v104.i64[0] = 0.5;
    *v105.i64 = *(*(this + 29) + 656) * *(this + 522) * 0.5;
    v117[0] = 0;
    v117[1] = 0;
    *v106.i64 = CNTimeSpan::SetTimeSpan(v117, 0, v105, v104);
    *(this + 524) = CNTimeSpan::operator-(&v120, v117, v106, v107);
    *(this + 525) = v108;
  }

  else if (!cnprint::CNPrinter::GetLogLevel(this))
  {
    LOWORD(v126) = 12;
    LOBYTE(v120) = 0;
    v28 = (*(*a2 + 16))(a2);
    v109 = v29 + v28;
    cnprint::CNPrinter::Print(&v126, &v120, "t,%.3lf,MapVectorAO: Waiting for decomposed acceleration event,", v30, v31, v32, v33, v34, SLOBYTE(v109));
  }

LABEL_41:
  if (*(this + 648) == 1)
  {
    *(this + 664) = *(a2 + 8);
    v69 = *(a2 + 24);
    v70 = *(a2 + 40);
    v71 = *(a2 + 72);
    *(this + 712) = *(a2 + 56);
    *(this + 728) = v71;
    *(this + 680) = v69;
    *(this + 696) = v70;
    v72 = *(a2 + 88);
    v73 = *(a2 + 104);
    v74 = *(a2 + 120);
    *(this + 786) = *(a2 + 130);
    *(this + 760) = v73;
    *(this + 776) = v74;
    *(this + 744) = v72;
  }

  else
  {
    *(this + 82) = &unk_1F4CEF1E0;
    *(this + 664) = *(a2 + 8);
    v75 = *(a2 + 24);
    v76 = *(a2 + 40);
    v77 = *(a2 + 72);
    *(this + 712) = *(a2 + 56);
    *(this + 728) = v77;
    *(this + 680) = v75;
    *(this + 696) = v76;
    v78 = *(a2 + 88);
    v79 = *(a2 + 104);
    v80 = *(a2 + 120);
    *(this + 786) = *(a2 + 130);
    *(this + 760) = v79;
    *(this + 776) = v80;
    *(this + 744) = v78;
    *(this + 648) = 1;
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Gyro::~Gyro(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::Gyro::~Gyro(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9708;
  CoreNavigation::CLP::LogEntry::PrivateData::Gyro::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Gyro::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Gyro::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::~GyroSample(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::~GyroSample(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9690;
  CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t sub_1D0BAA7A4(uint64_t a1, double *a2)
{
  v12 = *a2;
  if (*a2 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (fabs(v12) < 2.22044605e-16)
  {
    return 0;
  }

  v48[1] = v11;
  v48[2] = v10;
  v48[3] = v9;
  v48[4] = v8;
  v48[5] = v7;
  v48[6] = v6;
  v48[7] = v5;
  v48[8] = v4;
  v48[11] = v2;
  v48[12] = v3;
  v15 = *(a1 + 40);
  v16 = v12 / *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = 1.0 - v15;
  v19 = 1.0 - v17;
  v20 = sqrt((v17 * v15 - (1.0 - v15) * (1.0 - v17)) * -4.0 + (v17 + v15) * (v17 + v15));
  v21 = (v17 + v15 + v20) * 0.5;
  v22 = (v17 + v15 - v20) * 0.5;
  v23 = v17 + 1.0 - v15;
  v24 = 1.0 - v17 + v15;
  v25 = (1.0 - v17) / (v21 - v15);
  v26 = (v21 - v15) / (1.0 - v17);
  if (1.0 - v17 > vabdd_f64(v21, v15))
  {
    v25 = 1.0;
  }

  else
  {
    v26 = 1.0;
  }

  v27 = v22 - v15;
  v28 = v19 <= vabdd_f64(v22, v15);
  v29 = v19 / (v22 - v15);
  v30 = v27 / v19;
  if (v28)
  {
    v30 = 1.0;
  }

  else
  {
    v29 = 1.0;
  }

  v31 = v18 / (v21 - v17);
  v32 = (v21 - v17) / v18;
  if (v18 <= vabdd_f64(v21, v17))
  {
    v32 = 1.0;
  }

  else
  {
    v31 = 1.0;
  }

  v33 = v22 - v17;
  v28 = v18 <= vabdd_f64(v22, v17);
  v34 = v18 / (v22 - v17);
  v35 = v33 / v18;
  if (v28)
  {
    v35 = 1.0;
  }

  else
  {
    v34 = 1.0;
  }

  if (v23 <= v24)
  {
    v34 = v30;
    v36 = v26;
  }

  else
  {
    v29 = v35;
    v36 = v31;
  }

  if (v23 > v24)
  {
    v37 = v32;
  }

  else
  {
    v37 = v25;
  }

  v38 = sqrt(v37 * v37 + v36 * v36);
  v39 = v36 / v38;
  v40 = v37 / v38;
  v41 = sqrt(v29 * v29 + v34 * v34);
  v42 = v34 / v41;
  v43 = v29 / v41;
  v44 = v39 * (v29 / v41) - v37 / v38 * (v34 / v41);
  v45 = pow(v21, v16);
  v46 = pow(v22, v16) * v42;
  v47 = (v46 * v39 + -(v45 * v39) * v42) / v44;
  v48[0] = (v45 * v39 * v43 - v46 * v40) / v44;
  if (!*(a1 + 24))
  {
    *(a1 + 16) = *(a1 + 8);
  }

  return sub_1D0BAD938(a1 + 8, (a1 + 16), v48, &v47);
}

double sub_1D0BAA988(_BYTE *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1D0BAA9CC(a1, a2, a3, a4);
  *a1 = 0;

  *&result = sub_1D0BADC18(a1, a2, v6, v7, v8, v9, v10, v11).n128_u64[0];
  return result;
}

double sub_1D0BAA9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  if (*v4 == 1)
  {
    v7 = v5;
    v8 = v4;
    if (*(v4 + 1) == 1)
    {
      *(v4 + 1) = 0;
    }

    if (*(v4 + 5936))
    {
      if (!sub_1D0B9D420(v5, (v4 + 8)))
      {
        v9 = *(v8 + 5936);
        sub_1D0C01A20(v29, *(v8 + 5936), 1);
        v10 = 0;
        if (v9 >= 1)
        {
          v11 = *(v8 + 48);
          if (v11 != (v8 + 40))
          {
            v12 = 0;
            v10 = 0;
            v13 = 1;
            do
            {
              if (sub_1D0B7CF88((*(v8 + 96) + v12), v7->n128_f64))
              {
                *(v34 + 4 * v10) = v13 - 1;
                v11 = v11[1];
                ++v10;
              }

              else
              {
                v14 = *v11;
                v15 = v11[1];
                v14[1] = v15;
                *v15 = v14;
                --*(v8 + 56);
                sub_1D0B9FF7C(v11 + 2);
                operator delete(v11);
                v11 = v15;
              }

              if (v13 >= v9)
              {
                break;
              }

              ++v13;
              v12 += 16;
            }

            while (v11 != (v8 + 40));
          }
        }

        v30 = v10;
        v31 = 1;
        v32 = v10;
        v33 = v10;
        *(v8 + 5936) = v10;
        sub_1D0C01C70(&v28, v8 + 64, v29);
        sub_1D0BF181C(v8 + 64, &v28);
        sub_1D0C01E74(&v28, v8 + 2888, v29);
        sub_1D0B9F5D4(v8 + 2888, &v28);
        sub_1D0C01F50(&v28, v8 + 3624, v29);
        sub_1D0B894B0(v8 + 3624, &v28);
        sub_1D0C02030(&v28);
      }
    }

    else
    {
      v28 = *(v4 + 8);
      sub_1D0BAAEBC(v4);
      sub_1D0BADC18(v8, v7, v16, v17, v18, v19, v20, v21);
      *v8 = 0;
      *&result = sub_1D0BADC18(v8, &v28, v22, v23, v24, v25, v26, v27).n128_u64[0];
    }
  }

  return result;
}

double sub_1D0BAAEBC(uint64_t a1)
{
  *a1 = 0;
  sub_1D0BAAF58((a1 + 40));
  *(a1 + 5936) = 0;
  *(a1 + 11904) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 2896) = 0u;
  *(a1 + 3632) = 0u;
  *(a1 + 5064) = 0u;
  *(a1 + 5112) = 0u;
  *(a1 + 5848) = 0u;
  *(a1 + 5896) = 0u;
  *(a1 + 5952) = 0u;
  *(a1 + 7384) = 0u;
  *(a1 + 10248) = 0u;
  *(a1 + 8816) = 0u;
  *(a1 + 10640) = 0u;
  *(a1 + 11376) = 0u;
  *(a1 + 11816) = 0u;
  *(a1 + 11424) = 0u;
  *(a1 + 11864) = 0u;
  *(a1 + 11920) = 0u;
  *(a1 + 12656) = 0u;
  return result;
}

void sub_1D0BAAF58(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1D0B9FF7C(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_1D0BAAFCC(void *a1)
{
  if ((atomic_load_explicit(&qword_1EC5FB3D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EC5FB3D8))
  {
    sub_1D0D847D4(&qword_1EC5FB3D0, "11111111110101", 0xFFFFFFFFFFFFFFFFLL, 0x30u, 0x31u);
    __cxa_guard_release(&qword_1EC5FB3D8);
  }

  v2 = qword_1EC5FB3D0 & *a1;
  v4 = 0;
  v5 = v2;
  return sub_1D0BAED18(&v5, 0, &v5, 0xEu, &v4) ^ 1;
}

uint64_t raven::RavenConvergenceEstimator::GetRavenSolution@<X0>(raven::RavenConvergenceEstimator *this@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  v5 = (a2 + 264);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x7FF8000000000000;
  *(a2 + 96) = 0;
  v6 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a2 + 104) = v6;
  *(a2 + 120) = v6;
  *(a2 + 136) = v6;
  *(a2 + 152) = v6;
  *(a2 + 168) = 0x7FF8000000000000;
  *(a2 + 176) = 0;
  *(a2 + 184) = v6;
  *(a2 + 200) = v6;
  *(a2 + 216) = v6;
  *(a2 + 232) = v6;
  *(a2 + 248) = v6;
  *(a2 + 264) = v6;
  *(a2 + 280) = v6;
  *(a2 + 296) = 0;
  *(a2 + 304) = v6;
  *(a2 + 320) = v6;
  *(a2 + 336) = v6;
  *(a2 + 352) = v6;
  *(a2 + 368) = 0x7FF8000000000000;
  *(a2 + 376) = 0;
  *(a2 + 384) = v6;
  *(a2 + 400) = v6;
  *(a2 + 416) = v6;
  *(a2 + 432) = v6;
  *(a2 + 448) = 0x7FF8000000000000;
  *(a2 + 456) = 0;
  *(a2 + 464) = v6;
  *(a2 + 480) = v6;
  *(a2 + 496) = v6;
  *(a2 + 512) = v6;
  *(a2 + 528) = v6;
  *(a2 + 544) = v6;
  *(a2 + 560) = v6;
  *(a2 + 576) = 0;
  *(a2 + 584) = 0x7FF8000000000000;
  *(a2 + 592) = v6;
  *(a2 + 608) = v6;
  *(a2 + 624) = v6;
  *(a2 + 640) = v6;
  *(a2 + 656) = 0;
  *(a2 + 664) = 0x7FF8000000000000;
  *(a2 + 672) = v6;
  *(a2 + 688) = v6;
  *(a2 + 704) = v6;
  *(a2 + 720) = v6;
  *(a2 + 736) = 0;
  *(a2 + 744) = 0x7FF8000000000000;
  *(a2 + 752) = v6;
  *(a2 + 768) = v6;
  *(a2 + 784) = v6;
  *(a2 + 800) = v6;
  *(a2 + 816) = 0;
  *(a2 + 824) = v6;
  *(a2 + 840) = v6;
  *(a2 + 856) = 0x7FF8000000000000;
  if (*(this + 58) == 1 && (v64 = v6, v7 = (*(*this + 144))(this), v4 = 0uLL, v6 = v64, (v7 & 1) != 0))
  {
    v106 = 0x100000008;
    v104 = &unk_1F4CE4320;
    v105 = xmmword_1D0E84520;
    v107 = &v108;
    v8 = 768;
    if (!*(this + 1101))
    {
      v8 = 8;
    }

    sub_1D0B894B0(&v104, this + v8 + 2864);
    sub_1D0BA5FC4(this + 2864, v101);
    v15.i64[1] = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    v16 = *(this + 5);
    *a2 = v16;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0x7FF8000000000000;
    *(a2 + 96) = 1;
    v9 = v107;
    *(a2 + 104) = *v107;
    *(a2 + 112) = v9[1];
    *(a2 + 120) = v9[2];
    v10 = v103;
    *(a2 + 128) = *v103;
    v11 = v102;
    v12 = &v10[v102];
    *(a2 + 136) = *v12;
    v13 = 2 * v11;
    v14 = &v10[2 * v11];
    *(a2 + 144) = *v14;
    *(a2 + 152) = v12[1];
    *(a2 + 160) = v10[(v13 | 1)];
    *(a2 + 168) = v14[2];
    v15.i64[0] = v9[3];
    v16.i64[0] = v9[4];
    v17 = v9[5];
    v18 = sqrt(*v16.i64 * *v16.i64 + *v15.i64 * *v15.i64 + v17 * v17);
    if (fabs(v18) <= 0.000000015)
    {
      v41 = v11;
      v42 = (v13 | 1);
      *(a2 + 176) = 1;
      *(a2 + 184) = 0;
      v43 = 3 * v11;
      v44 = 4 * v11;
      v45 = 5 * v11;
      *(a2 + 216) = *&v10[3 * v11 + 3] + *&v10[4 * v11 + 4] + *&v10[5 * v11 + 5];
    }

    else
    {
      v19 = 1.0 / v18;
      v20 = *v15.i64 * (1.0 / v18);
      v21 = *v16.i64 * (1.0 / v18);
      v22 = v17 * (1.0 / v18);
      v98 = 0x300000001;
      v97 = xmmword_1D0E7F310;
      v96 = &unk_1F4CDF248;
      v99 = v100;
      v100[0] = v20;
      v100[1] = v21;
      v100[2] = v22;
      v89 = 0x400000003;
      v92 = 0x100000003;
      v90 = &unk_1F4CDEAA0;
      v93 = &v94;
      v91 = xmmword_1D0E7DCC0;
      v95 = 5;
      v94 = 0x400000003;
      sub_1D0BADC74(v88, v101, &v90, &v90);
      v80 = 0x300000001;
      v79 = xmmword_1D0E7F310;
      v78 = &unk_1F4CDF248;
      v81 = v82;
      sub_1D0B89390(&v96, v88, &v78);
      v23 = DWORD1(v97);
      v24 = v97;
      v85 = 0x100000003;
      v83 = &unk_1F4CDEB28;
      v86 = v87;
      *&v84 = __PAIR64__(v97, DWORD1(v97));
      DWORD2(v84) = v97 * DWORD1(v97);
      HIDWORD(v84) = DWORD1(v97);
      if (DWORD1(v97))
      {
        v25 = 0;
        v26 = 0;
        v27 = HIDWORD(v97);
        v28 = v99;
        do
        {
          v29 = v25;
          v30 = v26;
          for (i = v24; i; --i)
          {
            v87[v30] = *&v28[v29];
            v30 += v23;
            ++v29;
          }

          ++v26;
          v25 += v27;
        }

        while (v26 != v23);
      }

      v75 = 0x100000001;
      *&v32 = 0x100000001;
      *(&v32 + 1) = 0x100000001;
      v74 = v32;
      v73 = &unk_1F4CDF418;
      v76 = v77;
      v33 = sub_1D0B89390(&v78, &v83, &v73);
      v34 = *v76;
      if (*(this + 1208) == 1 && *(this + 1320) - 1 <= 6)
      {
        v35 = qword_1D0E9D630[(*(this + 1320) - 1)];
      }

      else
      {
        v35 = 928;
      }

      *v15.i64 = cnstatistics::InverseNormal(v33, 1.0 - *(*(this + 146) + v35), 0.0, sqrt(v34));
      *(a2 + 176) = 1;
      if (v18 >= *v15.i64)
      {
        *(a2 + 177) = 1;
        *(a2 + 184) = v18;
        *(a2 + 192) = v20;
        *(a2 + 200) = v21;
        *(a2 + 208) = v22;
        v85 = 0x300000004;
        v83 = &unk_1F4CDEC00;
        v86 = v87;
        v84 = xmmword_1D0E7DCF0;
        *v87 = v20;
        *&v87[1] = v19 * (1.0 - v20 * v20);
        *&v87[4] = v21;
        *&v87[5] = v19 * -(v20 * v21);
        *&v87[8] = v22;
        *&v87[9] = v19 * -(v20 * v22);
        *&v87[2] = v19 * -(v21 * v20);
        *&v87[3] = v19 * -(v22 * v20);
        *&v87[6] = v19 * (1.0 - v21 * v21);
        *&v87[7] = v19 * -(v22 * v21);
        *&v87[10] = v19 * -(v21 * v22);
        *&v87[11] = v19 * (1.0 - v22 * v22);
        sub_1D0BADC74(v88, v101, &v90, &v90);
        v75 = 0x300000004;
        v74 = xmmword_1D0E7DCF0;
        v73 = &unk_1F4CDEC00;
        v76 = v77;
        sub_1D0B89390(&v83, v88, &v73);
        v46 = DWORD1(v84);
        v47 = v84;
        v70 = 0x400000003;
        v65 = &unk_1F4CDEC48;
        v71 = v72;
        v66 = DWORD1(v84);
        v67 = v84;
        v68 = v84 * DWORD1(v84);
        v69 = DWORD1(v84);
        if (DWORD1(v84))
        {
          v48 = 0;
          v49 = 0;
          v50 = HIDWORD(v84);
          v51 = v86;
          do
          {
            v52 = v48;
            v53 = v49;
            for (j = v47; j; --j)
            {
              v72[v53] = v51[v52];
              v53 += v46;
              ++v52;
            }

            ++v49;
            v48 += v50;
          }

          while (v49 != v46);
        }

        v80 = 0x400000004;
        v79 = xmmword_1D0E7DCD0;
        v78 = &unk_1F4CDEB70;
        v81 = v82;
        sub_1D0B89390(&v73, &v65, &v78);
        v55 = v81;
        *(a2 + 216) = *v81;
        v56 = SHIDWORD(v79);
        v57 = &v55[SHIDWORD(v79)];
        *(a2 + 224) = *v57;
        v58 = &v55[2 * v56];
        *(a2 + 232) = *v58;
        v59 = &v55[3 * v56];
        *(a2 + 240) = *v59;
        *(a2 + 248) = v57[1];
        *(a2 + 256) = v55[((2 * v56) | 1)];
        *(a2 + 264) = v59[1];
        *(a2 + 272) = v58[2];
        *(a2 + 280) = v59[2];
        *(a2 + 288) = v59[3];
      }

      else
      {
        *(a2 + 184) = v18;
        *(a2 + 216) = v34;
      }

      v9 = v107;
      v11 = v102;
      v41 = v102;
      v13 = 2 * v102;
      v10 = v103;
      v42 = (v13 | 1);
      v43 = 3 * v102;
      v44 = 4 * v102;
      v45 = 5 * v102;
    }

    *(a2 + 296) = 1;
    *(a2 + 304) = *v9;
    *(a2 + 312) = v9[1];
    *(a2 + 320) = v9[2];
    *(a2 + 328) = *v10;
    v60 = &v10[v41];
    *(a2 + 336) = *v60;
    v61 = &v10[v13];
    *(a2 + 344) = *v61;
    *(a2 + 352) = v60[1];
    *(a2 + 360) = v10[v42];
    *(a2 + 368) = v61[2];
    *(a2 + 376) = 1;
    *(a2 + 384) = v9[3];
    *(a2 + 392) = v9[4];
    *(a2 + 400) = v9[5];
    *(a2 + 408) = v10[v43 + 3];
    *(a2 + 416) = v10[(v44 | 3)];
    v62 = &v10[v45];
    *(a2 + 424) = v62[3];
    *(a2 + 432) = v10[v44 + 4];
    *(a2 + 440) = v62[4];
    *(a2 + 448) = v62[5];
    *(a2 + 456) = 0;
    *(a2 + 816) = 1;
    *(a2 + 824) = v9[6] * 0.000001;
    *(a2 + 832) = v9[7] * 0.000001;
    v16.i64[0] = 0x3D719799812DEA11;
    *(a2 + 840) = *&v10[6 * v11 + 6] * 1.0e-12;
    v63 = &v10[7 * v11];
    *(a2 + 848) = v63[6] * 1.0e-12;
    *v15.i64 = v63[7] * 1.0e-12;
    *(a2 + 856) = v15.i64[0];
    *(a2 + 576) = 0;
    *(a2 + 656) = 0;
    *(a2 + 736) = 0;
    return raven::PopulateAllTimeFields(a2, this + 136, v15, v16);
  }

  else
  {
    *(a2 + 100) = 0;
    *(a2 + 97) = 0;
    *(a2 + 178) = 0;
    *(a2 + 182) = 0;
    *(a2 + 300) = 0;
    *(a2 + 297) = 0;
    *(a2 + 380) = 0;
    *(a2 + 377) = 0;
    *(a2 + 460) = 0;
    *(a2 + 457) = 0;
    *(a2 + 580) = 0;
    *(a2 + 577) = 0;
    *(a2 + 660) = 0;
    *(a2 + 657) = 0;
    *(a2 + 740) = 0;
    *(a2 + 737) = 0;
    *(a2 + 820) = 0;
    *(a2 + 817) = 0;
    *(a2 + 48) = v4;
    *(a2 + 64) = v4;
    *(a2 + 16) = v4;
    *(a2 + 32) = v4;
    *a2 = v4;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0x7FF8000000000000;
    *(a2 + 96) = 0;
    *(a2 + 104) = v6;
    *(a2 + 120) = v6;
    *(a2 + 136) = v6;
    *(a2 + 152) = v6;
    *(a2 + 168) = 0x7FF8000000000000;
    *(a2 + 176) = 0;
    *(a2 + 184) = v6;
    *(a2 + 200) = v6;
    *(a2 + 216) = v6;
    *(a2 + 232) = v6;
    *(a2 + 248) = v6;
    *v5 = v6;
    v5[1] = v6;
    *(a2 + 296) = 0;
    *(a2 + 304) = v6;
    *(a2 + 320) = v6;
    *(a2 + 336) = v6;
    *(a2 + 352) = v6;
    *(a2 + 368) = 0x7FF8000000000000;
    *(a2 + 376) = 0;
    *(a2 + 384) = v6;
    *(a2 + 400) = v6;
    *(a2 + 416) = v6;
    *(a2 + 432) = v6;
    *(a2 + 448) = 0x7FF8000000000000;
    *(a2 + 456) = 0;
    *(a2 + 464) = v6;
    *(a2 + 480) = v6;
    *(a2 + 496) = v6;
    *(a2 + 512) = v6;
    *(a2 + 528) = v6;
    *(a2 + 544) = v6;
    *(a2 + 560) = v6;
    *(a2 + 576) = 0;
    v5[20] = v6;
    v5[21] = v6;
    v5[22] = v6;
    v5[23] = v6;
    *(a2 + 648) = 0x7FF8000000000000;
    *(a2 + 656) = 0;
    v5[25] = v6;
    v5[26] = v6;
    v5[27] = v6;
    v5[28] = v6;
    *(a2 + 728) = 0x7FF8000000000000;
    *(a2 + 736) = 0;
    v5[30] = v6;
    v5[31] = v6;
    v5[32] = v6;
    v5[33] = v6;
    *(a2 + 808) = 0x7FF8000000000000;
    *(a2 + 816) = 0;
    v5[35] = v6;
    v5[36] = v6;
    *(a2 + 856) = 0x7FF8000000000000;
    v36 = *(this + 152);
    *a2 = *(this + 136);
    *(a2 + 16) = v36;
    v37 = *(this + 216);
    *(a2 + 64) = *(this + 200);
    *(a2 + 80) = v37;
    v38 = *(this + 184);
    v39 = *(this + 168);
    *(a2 + 32) = v39;
    *(a2 + 48) = v38;

    return raven::PopulateAllTimeFields(a2, this + 136, v38, v39);
  }
}

uint64_t raven::RavenConvergenceEstimator::IsObservable(raven::RavenConvergenceEstimator *this)
{
  if (*(this + 58))
  {
    v2 = this + 4096;
    v3 = *(this + 4400);
    if (v3 == 2)
    {
      return 1;
    }

    if (v3 != 1)
    {
      if (!*(this + 4400))
      {
        (*(*(this + 358) + 40))(v12);
        v29 = 0x800000008;
        v27 = &unk_1F4CE43B0;
        v28 = xmmword_1D0E84510;
        v30 = &v31;
        v24 = 0x800000008;
        v23 = xmmword_1D0E84510;
        v22 = &unk_1F4CE43B0;
        v25 = &v26;
        v19 = 0x100000008;
        v18 = xmmword_1D0E84520;
        v17 = &unk_1F4CE43F8;
        v20 = &v21;
        v14 = 0x100000650;
        v16 = 0;
        v12[82] = &unk_1F4CEBB00;
        v15 = 0;
        v13 = xmmword_1D0E9CC10;
        sub_1D0DFA500();
      }

      LOWORD(v27) = 2;
      LOBYTE(v22) = 5;
      v5 = cnprint::CNLogFormatter::FormatGeneral(this + 571, "LeastSquaresEstimator::IsObservable called with unexpected observability state %hhu", v3);
      if (v2[495] >= 0)
      {
        LOBYTE(v11) = v5;
      }

      else
      {
        v11 = *(this + 571);
      }

      cnprint::CNPrinter::Print(&v27, &v22, "%s", v6, v7, v8, v9, v10, v11);
    }
  }

  return 0;
}

double cnstatistics::InverseNormal(cnstatistics *this, double a2, double a3, double a4)
{
  if (a4 <= 0.0)
  {
    return NAN;
  }

  v4 = NAN;
  if (a2 >= 0.0 && a2 <= 1.0)
  {
    if (fabs(a2) < 2.22044605e-16)
    {
      v7 = a3 == INFINITY;
      v8 = -INFINITY;
      goto LABEL_9;
    }

    if (fabs(a2 + -1.0) < 2.22044605e-16)
    {
      v7 = a3 == -INFINITY;
      v8 = INFINITY;
LABEL_9:
      v4 = NAN;
      if (!v7)
      {
        return v8;
      }

      return v4;
    }

    v10 = fabs(a4);
    if (fabs(a3) != INFINITY || v10 != INFINITY)
    {
      v11 = 0x7FF0000000000000;
      if (v10 != INFINITY)
      {
        sub_1D0BABF68(a2 + a2);
        return a3 + a4 * (v12 * -1.41421356);
      }

      if (a2 >= 0.5)
      {
        if (a2 <= 0.5)
        {
LABEL_28:
          v11 = 0x7FF8000000000000;
        }

        return *&v11;
      }

LABEL_19:
      v11 = 0xFFF0000000000000;
      return *&v11;
    }

    if (a2 < 0.5)
    {
      if (a3 > 0.0)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    v13 = a3 < 0.0 || a2 <= 0.5;
    v4 = NAN;
    if (!v13)
    {
      return INFINITY;
    }
  }

  return v4;
}

void sub_1D0BABF68(double a1)
{
  v7 = a1;
  if (a1 < 0.0 || a1 > 2.0)
  {
    sub_1D0D26D6C(qword_1EC5FB3E0, "Argument outside range [0,2] in inverse erfc function (got p=%1%).", &v7);
  }

  if (a1 == 0.0)
  {
    sub_1D0D27B28(qword_1EC5FB3E0, "Overflow Error");
  }

  if (a1 == 2.0)
  {
    sub_1D0D27B28(qword_1EC5FB3E0, "Overflow Error");
  }

  v3 = 2.0 - a1;
  if (a1 <= 1.0)
  {
    v3 = a1;
  }

  v5 = v3;
  v6 = 1.0 - v3;
  sub_1D0BAC07C(&v6, &v5);
  if (fabs(v4) > 1.79769313e308)
  {
    sub_1D0D27B28(qword_1EC5FB3E0, "numeric overflow");
  }
}

void sub_1D0BAC07C(double *a1, long double *a2)
{
  if (*a1 > 0.5)
  {
    v2 = *a2;
    v3 = log(*a2);
    if (v2 < 0.25)
    {
      v4 = sqrt(-v3);
      if (v4 >= 3.0 && v4 >= 6.0 && v4 >= 18.0)
      {
        if (v4 >= 44.0)
        {
          v5 = v4 + -44.0;
          sub_1D0D283A4(xmmword_1D0E7E658, &v5);
          sub_1D0C4E35C(dbl_1D0E7E698, &v5);
        }

        else
        {
          v5 = v4 + -18.0;
          sub_1D0D283A4(xmmword_1D0E7E5E0, &v5);
          sub_1D0C4E35C(dbl_1D0E7E620, &v5);
        }
      }
    }
  }
}

uint64_t raven::RavenConvergenceEstimator::GetRavenStatus@<X0>(raven::RavenConvergenceEstimator *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 1056) = 0;
  *(a2 + 1040) = 0u;
  *(a2 + 1008) = 0u;
  *(a2 + 1024) = 0u;
  *(a2 + 992) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 960) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a2 + 976) = 0;
  *(a2 + 984) = 0x7FF8000000000000;
  v4 = a2 + 164;
  bzero((a2 + 164), 0x318uLL);
  *a2 = *(this + 280);
  v12 = *(this + 56);
  *(a2 + 104) = v12;
  if (*(this + 58) == 1)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *(a2 + 8) = *(this + 5);
    v13 = v57;
    *(a2 + 40) = v58;
    v14 = v60;
    *(a2 + 56) = v59;
    *(a2 + 72) = v14;
    *(a2 + 24) = v13;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x7FF8000000000000;
    sub_1D0BADDDC(a2, v12, 1.0, v5, v6, v7, v8, v9, v10);
    *(a2 + 136) = *(this + 16);
    *(a2 + 152) = *(this + 34);
    v15 = *(this + 440);
    *(v4 + 96) = *(this + 424);
    *(v4 + 112) = v15;
    *(v4 + 128) = *(this + 114);
    v16 = *(this + 376);
    *(v4 + 32) = *(this + 360);
    *(v4 + 48) = v16;
    v17 = *(this + 408);
    *(v4 + 64) = *(this + 392);
    *(v4 + 80) = v17;
    v18 = *(this + 344);
    *v4 = *(this + 328);
    *(v4 + 16) = v18;
    v19 = *(this + 572);
    *(a2 + 392) = *(this + 556);
    *(a2 + 408) = v19;
    *(a2 + 424) = *(this + 147);
    v20 = *(this + 508);
    *(a2 + 328) = *(this + 492);
    *(a2 + 344) = v20;
    v21 = *(this + 540);
    *(a2 + 360) = *(this + 524);
    *(a2 + 376) = v21;
    v22 = *(this + 476);
    *(a2 + 296) = *(this + 460);
    *(a2 + 312) = v22;
    v23 = *(this + 44);
    *(a2 + 524) = *(this + 43);
    *(a2 + 540) = v23;
    *(a2 + 556) = *(this + 180);
    v24 = *(this + 40);
    *(a2 + 460) = *(this + 39);
    *(a2 + 476) = v24;
    v25 = *(this + 42);
    *(a2 + 492) = *(this + 41);
    *(a2 + 508) = v25;
    v26 = *(this + 38);
    *(a2 + 428) = *(this + 37);
    *(a2 + 444) = v26;
    v27 = *(this + 836);
    *(a2 + 656) = *(this + 820);
    *(a2 + 672) = v27;
    *(a2 + 688) = *(this + 213);
    v28 = *(this + 772);
    *(a2 + 592) = *(this + 756);
    *(a2 + 608) = v28;
    v29 = *(this + 804);
    *(a2 + 624) = *(this + 788);
    *(a2 + 640) = v29;
    v30 = *(this + 740);
    *(a2 + 560) = *(this + 724);
    *(a2 + 576) = v30;
    v31 = *(this + 968);
    *(a2 + 788) = *(this + 952);
    *(a2 + 804) = v31;
    *(a2 + 820) = *(this + 246);
    v32 = *(this + 904);
    *(a2 + 724) = *(this + 888);
    *(a2 + 740) = v32;
    v33 = *(this + 936);
    *(a2 + 756) = *(this + 920);
    *(a2 + 772) = v33;
    v34 = *(this + 872);
    *(a2 + 692) = *(this + 856);
    *(a2 + 708) = v34;
    v35 = *(this + 1100);
    *(a2 + 920) = *(this + 1084);
    *(a2 + 936) = v35;
    *(a2 + 952) = *(this + 279);
    v36 = *(this + 1036);
    *(a2 + 856) = *(this + 1020);
    *(a2 + 872) = v36;
    v37 = *(this + 1068);
    *(a2 + 888) = *(this + 1052);
    *(a2 + 904) = v37;
    v39 = *(this + 988);
    v38 = *(this + 1004);
    *(a2 + 824) = v39;
    *(a2 + 840) = v38;
    *(a2 + 120) = CNTimeSpan::operator-(this + 10, this + 8, v38, v39);
    *(a2 + 128) = v40;
    v41 = (*(*this + 152))(this);
    v42 = (*(*this + 144))(this);
    v43 = (*(*this + 136))(this);
    v44 = v43;
    if (v42 && v41 && (v43 & 1) != 0)
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
      if (cnprint::CNPrinter::GetLogLevel(v43) <= 1)
      {
        v56[0] = 12;
        v55 = 1;
        v47 = cnprint::CNLogFormatter::FormatGeneral(this + 339, "Estimator unhealthy,observable,%d,sane,%d,consistent,%d", v42, v41, v44);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v53) = v47;
        }

        else
        {
          v53 = *(this + 339);
        }

        cnprint::CNPrinter::Print(v56, &v55, "%s", v48, v49, v50, v51, v52, v53);
      }
    }

    *(a2 + 105) = v45;
    *(a2 + 112) = 1.0 - (*(*this + 56))(this);
    *(a2 + 160) = 0;
    *(a2 + 992) = raven::RavenEstimator::GetPriorWeight(this);
    *(a2 + 1000) = raven::RavenEstimator::GetGNSSWeight(this);
    *(a2 + 1008) = raven::RavenEstimator::GetWiFiWeight(this);
    *(a2 + 1016) = raven::RavenEstimator::GetCellWeight(this);
    *(a2 + 1024) = raven::RavenEstimator::GetIndoorWeight(this);
    *(a2 + 1032) = raven::RavenEstimator::GetAccessoryWeight(this);
    v11.i64[0] = *(this + 40);
    *(a2 + 976) = *(this + 39);
    *(a2 + 968) = *(this + 1045);
    v46.i64[0] = *(this + 1047);
    *(a2 + 960) = v46.i64[0];
    *(a2 + 984) = v11.i64[0];
  }

  else
  {
    *(a2 + 40) = *(this + 168);
    *(a2 + 56) = *(this + 184);
    *(a2 + 72) = *(this + 200);
    *(a2 + 88) = *(this + 216);
    *(a2 + 8) = *(this + 136);
    v46 = *(this + 152);
    *(a2 + 24) = v46;
  }

  return raven::PopulateAllTimeFields(a2 + 8, this + 136, v46, v11);
}

uint64_t raven::RavenConvergenceEstimator::IsSane(raven::RavenConvergenceEstimator *this)
{
  v140 = *MEMORY[0x1E69E9840];
  if (!*(this + 58))
  {
    goto LABEL_24;
  }

  v2 = this + 80;
  v134 = *(this + 5);
  v3 = 768;
  if (!*(this + 1101))
  {
    v3 = 8;
  }

  v131 = 0x100000008;
  v129 = &unk_1F4CE4320;
  v130 = xmmword_1D0E84520;
  v132 = &v133;
  sub_1D0B894B0(&v129, this + v3 + 2864);
  v5 = v132[3];
  v6 = v132[4];
  v7 = v132[5];
  v8 = sqrt(v6 * v6 + v5 * v5 + v7 * v7);
  if (v8 > *(*(this + 146) + 1376))
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      v108 = 12;
      LOBYTE(v48[0]) = 1;
      v9 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v2, "Sanity failure,speed,%.1lf > %.1lf", v8, *(*(this + 146) + 1376));
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v15) = v9;
      }

      else
      {
        v15 = *v9;
      }

      cnprint::CNPrinter::Print(&v108, v48, "%s", v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_24;
  }

  v45 = *v132;
  v16 = *(v132 + 2);
  LOBYTE(v108) = 0;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0;
  v115 = 0x7FF8000000000000;
  v116 = 0;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0;
  v46 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v121[796] = v46;
  v122 = 0;
  v123 = 0x7FF8000000000000;
  bzero(v121, 0x318uLL);
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v50 = 0x7FF8000000000000;
  v51 = 0;
  v52 = v46;
  v53 = v46;
  v54 = v46;
  v55 = v46;
  v56 = 0x7FF8000000000000;
  v57 = 0;
  v58 = v46;
  v59 = v46;
  v60 = v46;
  v61 = v46;
  v62 = v46;
  v63 = 0x7FF8000000000000;
  v64 = v46;
  v65 = 0x7FF8000000000000;
  v66 = 0;
  v67 = v46;
  v68 = v46;
  v69 = v46;
  v70 = v46;
  v71 = 0x7FF8000000000000;
  v72 = 0;
  v73 = v46;
  v74 = v46;
  v75 = v46;
  v76 = v46;
  v77 = 0x7FF8000000000000;
  v78 = 0;
  v79 = v46;
  v80 = v46;
  v81 = v46;
  v82 = v46;
  v83 = v46;
  v84 = v46;
  v85 = v46;
  v86 = 0;
  v87 = 0x7FF8000000000000;
  v88 = v46;
  v89 = v46;
  v90 = v46;
  v91 = v46;
  v92 = 0;
  v93 = 0x7FF8000000000000;
  v94 = v46;
  v95 = v46;
  v96 = v46;
  v97 = v46;
  v98 = 0;
  v99 = 0x7FF8000000000000;
  v100 = v46;
  v101 = v46;
  v102 = v46;
  v103 = v46;
  v104 = 0;
  v105 = 0x7FF8000000000000;
  v106 = v46;
  v107 = v46;
  if (!raven::RavenEstimator::GetValidHistoricalSolution(this, &v108, v48, *v46.i64, v17) && HIBYTE(v116) == 2 && v72 == 1)
  {
    v19 = v48[0];
    v135[0] = v48[0];
    v20 = v73;
    v21 = *v74.i64;
    if (v134 || (v19.i64[0] = *(&v134 + 1), (*(&v134 + 1) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
    {
      if (!*&v135[0])
      {
        v19.i64[0] = *(&v135[0] + 1);
        if ((*(&v135[0] + 1) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v18.i64[0] = *(&v134 + 1);
          v22 = *(&v134 + 1) <= *(v135 + 1);
LABEL_21:
          if (!v22)
          {
            v23 = CNTimeSpan::operator-(&v134, v135, v19, v18);
            v25 = sqrt((v6 - *&v20.i64[1]) * (v6 - *&v20.i64[1]) + (v5 - *v20.i64) * (v5 - *v20.i64) + (v7 - v21) * (v7 - v21)) / (v24 + v23);
            if (v25 > *(*(this + 146) + 1384))
            {
              if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
              {
                LOWORD(v138.f64[0]) = 12;
                v136[0] = 1;
                v38 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v2, "Sanity failure,acceleration,%.1lf > %.1lf", v25, *(*(this + 146) + 1384));
                if (*(this + 2735) >= 0)
                {
                  LOBYTE(v44) = v38;
                }

                else
                {
                  v44 = *(this + 339);
                }

                cnprint::CNPrinter::Print(&v138, v136, "%s", v39, v40, v41, v42, v43, v44);
              }

              goto LABEL_24;
            }
          }

          goto LABEL_23;
        }
      }

      v22 = v134 <= *&v135[0];
      if (v134 != *&v135[0])
      {
        goto LABEL_21;
      }

      v19.i64[0] = *(&v134 + 1);
    }

    v18.i64[0] = *(&v135[0] + 1);
    v22 = *v19.i64 <= *(v135 + 1);
    goto LABEL_21;
  }

LABEL_23:
  v138 = v45;
  v139 = v16;
  v26 = cnnavigation::ECEFToLLA(&v138, 1, v136, 0, v135);
  if (v26)
  {
    goto LABEL_24;
  }

  v29 = v137;
  if (v137 > 18000.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v26) > 1)
    {
      goto LABEL_24;
    }

    LOWORD(v135[0]) = 12;
    v47 = 1;
    v30 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v2, "Sanity failure,altitude,%.1lf > %.1lf", v29, 18000.0);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v36) = v30;
    }

    else
    {
      v36 = *(this + 339);
    }

LABEL_31:
    cnprint::CNPrinter::Print(v135, &v47, "%s", v31, v32, v33, v34, v35, v36);
    goto LABEL_24;
  }

  if (v8 <= 600.0)
  {
    result = 1;
    goto LABEL_25;
  }

  if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
  {
    LOWORD(v135[0]) = 12;
    v47 = 1;
    v37 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v2, "Sanity failure,speed,%.1lf > %.1lf", v8, 600.0);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v36) = v37;
    }

    else
    {
      v36 = *(this + 339);
    }

    goto LABEL_31;
  }

LABEL_24:
  result = 0;
LABEL_25:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t raven::RavenConvergenceEstimator::IsConsistent(raven::RavenConvergenceEstimator *this)
{
  if (!*(this + 58))
  {
    return 1;
  }

  v2 = this + 8496;
  if (*(this + (*(this + 2128) != 0) + 1062) < *(*(this + 146) + 1464))
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v12 = 12;
    v11 = 1;
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "consistency failure,%.1lf > %.1lf", *&v2[8 * (*(this + 2128) != 0)], *(*(this + 146) + 1464));
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v10) = v4;
    }

    else
    {
      v10 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

double raven::RavenEstimator::GetGNSSWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 141);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (v2 + *(this + 140) + *(this + 142) + *(this + 143) + *(this + 144) + *(this + 145));
    }
  }

  return result;
}

double raven::RavenEstimator::GetWiFiWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 142);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (*(this + 145) + *(this + 144) + *(this + 143) + v2 + *(this + 140) + *(this + 141));
    }
  }

  return result;
}

uint64_t sub_1D0BAD0C8(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEF7A8;
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
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 1064) = 0x7FF8000000000000;
  *(a1 + 1072) = 0x7FF8000000000000;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = 0x7FF8000000000000;
  bzero((a1 + 268), 0x318uLL);
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1256) = 0x7FF8000000000000;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0x7FF8000000000000;
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 1280) = v2;
  *(a1 + 1296) = v2;
  *(a1 + 1312) = v2;
  *(a1 + 1328) = v2;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x7FF8000000000000;
  *(a1 + 1360) = v2;
  *(a1 + 1376) = v2;
  *(a1 + 1392) = v2;
  *(a1 + 1408) = v2;
  *(a1 + 1424) = v2;
  *(a1 + 1440) = v2;
  *(a1 + 1456) = 0x7FF8000000000000;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = v2;
  *(a1 + 1488) = v2;
  *(a1 + 1504) = v2;
  *(a1 + 1520) = v2;
  *(a1 + 1536) = 0x7FF8000000000000;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = v2;
  *(a1 + 1568) = v2;
  *(a1 + 1584) = v2;
  *(a1 + 1600) = v2;
  *(a1 + 1616) = 0x7FF8000000000000;
  *(a1 + 1624) = 0;
  *(a1 + 1632) = v2;
  *(a1 + 1648) = v2;
  *(a1 + 1664) = v2;
  *(a1 + 1680) = v2;
  *(a1 + 1696) = v2;
  *(a1 + 1712) = v2;
  *(a1 + 1728) = v2;
  *(a1 + 1744) = 0;
  *(a1 + 1752) = 0x7FF8000000000000;
  *(a1 + 1760) = v2;
  *(a1 + 1776) = v2;
  *(a1 + 1792) = v2;
  *(a1 + 1808) = v2;
  *(a1 + 1824) = 0;
  *(a1 + 1832) = 0x7FF8000000000000;
  *(a1 + 1840) = v2;
  *(a1 + 1856) = v2;
  *(a1 + 1872) = v2;
  *(a1 + 1888) = v2;
  *(a1 + 1904) = 0;
  *(a1 + 1912) = 0x7FF8000000000000;
  *(a1 + 1920) = v2;
  *(a1 + 1936) = v2;
  *(a1 + 1952) = v2;
  *(a1 + 1968) = v2;
  *(a1 + 1984) = 0;
  *(a1 + 1992) = 0x7FF8000000000000;
  *(a1 + 2000) = v2;
  *(a1 + 2016) = v2;
  *(a1 + 2112) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2120) = 0x7FF8000000000000;
  *(a1 + 2128) = 0;
  *(a1 + 2136) = 0x3FF0000000000000;
  *(a1 + 2544) = 0;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0u;
  *(a1 + 2400) = 0u;
  *(a1 + 2416) = 0u;
  *(a1 + 2432) = 0u;
  *(a1 + 2448) = 0u;
  *(a1 + 2464) = 0u;
  *(a1 + 2480) = 0u;
  *(a1 + 2496) = 0u;
  *(a1 + 2512) = 0u;
  *(a1 + 2521) = 0u;
  *(a1 + 2552) = 0x3FF0000000000000;
  *(a1 + 2560) = 0u;
  *(a1 + 2576) = 0u;
  *(a1 + 2592) = 0x3FF0000000000000;
  *(a1 + 2600) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0x3FE0000000000000;
  *(a1 + 2640) = 0x3FE0000000000000;
  *(a1 + 2648) = 0;
  sub_1D0BAE168(a1);
  return a1;
}

uint64_t raven::RavenEstimator::GetRavenActivity@<X0>(raven::RavenEstimator *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x3FF0000000000000;
  v4 = a2 + 96;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 489) = 0u;
  *(a2 + 512) = 0;
  *(a2 + 520) = 0x3FF0000000000000;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0u;
  *(a2 + 560) = 0x3FF0000000000000;
  *(a2 + 568) = 0u;
  *(a2 + 584) = 0u;
  *(a2 + 600) = 0x3FE0000000000000;
  *(a2 + 608) = 0x3FE0000000000000;
  *(a2 + 616) = 0;
  if (*(this + 58))
  {
    *(a2 + 32) = 0uLL;
    *(a2 + 48) = 0uLL;
    *(a2 + 64) = 0uLL;
    v5 = *(this + 5);
    *a2 = v5;
    *(a2 + 16) = 0uLL;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0x7FF8000000000000;
    result = raven::PopulateAllTimeFields(a2, this + 136, v5, 0);
    if (*(this + 1208) == 1)
    {
      *(v4 + 80) = *(this + 175);
      v7 = *(this + 1368);
      *(v4 + 32) = *(this + 1352);
      *(v4 + 48) = v7;
      *(v4 + 64) = *(this + 1384);
      v8 = *(this + 1336);
      *v4 = *(this + 1320);
      *(v4 + 16) = v8;
    }

    if (*(this + 1408) == 1)
    {
      result = memcpy((a2 + 184), this + 1520, 0x141uLL);
    }

    if (*(this + 2000) == 1)
    {
      v9 = *(this + 133);
      *(v4 + 416) = *(this + 132);
      *(v4 + 432) = v9;
      *(v4 + 448) = *(this + 268);
    }

    if (*(this + 1848) == 1)
    {
      *(a2 + 584) = *(this + 249);
      v10 = *(this + 1976);
      *(a2 + 552) = *(this + 1960);
      *(a2 + 568) = v10;
    }

    if (*(this + 2152) == 1)
    {
      *(a2 + 608) = *(this + 285);
      *(a2 + 592) = *(this + 2264);
    }

    if (*(this + 2592) == 1)
    {
      *(a2 + 616) = *(this + 2704);
    }
  }

  else
  {
    v11 = *(this + 184);
    *(a2 + 32) = *(this + 168);
    *(a2 + 48) = v11;
    v12 = *(this + 216);
    *(a2 + 64) = *(this + 200);
    *(a2 + 80) = v12;
    v13 = *(this + 136);
    v14 = *(this + 152);
    *a2 = v13;
    *(a2 + 16) = v14;

    return raven::PopulateAllTimeFields(a2, this + 136, v13, v14);
  }

  return result;
}

void raven::PopulateAllTimeFields(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  v28[0] = CNTimeSpan::operator-(a1, a2, a5, a6);
  v28[1] = v10;
  if (*(a2 + 16) == 1)
  {
    *(a1 + 24) = CNTimeSpan::operator+((a2 + 24), v28, v11, v12);
    *(a1 + 32) = v13;
    *(a1 + 16) = 1;
  }

  if (*(a2 + 40) == 1)
  {
    *(a1 + 48) = CNTimeSpan::operator+((a2 + 48), v28, v11, v12);
    *(a1 + 56) = v14;
    *(a1 + 40) = 1;
    if ((*a4 <= -1 || ((*a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*a4 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v27 = 12;
      v26 = 4;
      v25 = *(a1 + 8) + *a1;
      cnprint::CNPrinter::Print(&v27, &v26, "t,%.3lf,invalid clock uncertainty,%.3lf", v15, v16, v17, v18, v19, SLOBYTE(v25));
    }

    else
    {
      v20.i64[0] = *a4;
      *(a1 + 72) = CNTimeSpan::operator-((a1 + 48), a3, v20, v21);
      *(a1 + 80) = v24;
      *(a1 + 64) = 1;
      *(a1 + 88) = *a4;
    }
  }
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 224))
  {
    if (*(a2 + 209) == 2 && *(a2 + 1464) == 1 && *(a2 + 1544) == 1)
    {
      if (*(a2 + 208) == 3)
      {
        if (*(*(this + 29) + 3352) < *(a2 + 28) && *(a2 + 1624) == 1)
        {
          v3 = sub_1D0BAE770(this + 952, a2, this + 912, *(this + 914));
          if ((v3 & 1) == 0 && !cnprint::CNPrinter::GetLogLevel(v3))
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v30) = 0;
            v4 = (*(*a2 + 16))(a2);
            v25 = v5 + v4;
            cnprint::CNPrinter::Print(__p, &v30, "DevAtt, Raven pnt solution queue overflowed at %.3lf", v6, v7, v8, v9, v10, SLOBYTE(v25));
          }
        }
      }

      else
      {
        v17 = sub_1D0BAE770(this + 946, a2, this + 912, *(this + 914));
        if ((v17 & 1) == 0 && !cnprint::CNPrinter::GetLogLevel(v17))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v30) = 0;
          v18 = (*(*a2 + 16))(a2);
          v26 = v19 + v18;
          cnprint::CNPrinter::Print(__p, &v30, "DevAtt, Raven solution queue overflowed at %.3lf", v20, v21, v22, v23, v24, SLOBYTE(v26));
        }
      }
    }
  }

  else
  {
    v30 = 12;
    v29 = 3;
    (*(*this + 16))(__p, this, a2);
    if (v28 >= 0)
    {
      v16 = __p;
    }

    else
    {
      LOBYTE(v16) = __p[0];
    }

    cnprint::CNPrinter::Print(&v30, &v29, "Warning: %s is not configured yet.", v11, v12, v13, v14, v15, v16);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0BAD874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BAD890(uint64_t a1)
{
  v2 = (*(*(a1 + 8) + ((*(a1 + 32) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (*(a1 + 32) & 0xFLL));
  (**v2)(v2);
  v3 = vaddq_s64(*(a1 + 32), xmmword_1D0E76280);
  *(a1 + 32) = v3;
  if (v3.i64[0] >= 0x20uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 16;
  }
}

uint64_t sub_1D0BAD938(uint64_t a1, double *a2, long double *a3, double *a4)
{
  v5 = *a2;
  if (*a2 < 0.0 || v5 > 1.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v40 = 2;
      v39 = 1;
      cnprint::CNPrinter::Print(&v40, &v39, "WARNING: DiscreteEventDetector::Predict called with bad x %.3lf.", v7, v8, v9, v10, v11, *a2);
    }

    return 0xFFFFFFFFLL;
  }

  if (*a3 < 0.0 || *a3 > 1.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v38 = 2;
      v37 = 1;
      cnprint::CNPrinter::Print(&v38, &v37, "WARNING: DiscreteEventDetector::Predict called with bad pxbargx %.3lf.", v14, v15, v16, v17, v18, *a3);
    }

    return 0xFFFFFFFFLL;
  }

  if (*a4 < 0.0 || *a4 > 1.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v36 = 2;
      v35 = 1;
      cnprint::CNPrinter::Print(&v36, &v35, "WARNING: DiscreteEventDetector::Predict called with bad pxbargnx %.3lf.", v30, v31, v32, v33, v34, *a4);
    }

    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v5;
  v21 = 0.0;
  v22 = fmax(1.0 - v5, 0.0);
  *a1 = 0;
  if (fabs(v5) >= 2.22044605e-16 && fabs(*a3) >= 2.22044605e-16)
  {
    v23 = log(*a3);
    v24 = log(v5);
    v21 = exp(v24 + v23);
    *a1 = v21;
  }

  v25 = fabs(*a4);
  if (v22 >= 2.22044605e-16 && v25 >= 2.22044605e-16)
  {
    v27 = log(*a4);
    v28 = log(v22);
    v21 = v21 + exp(v28 + v27);
  }

  result = 0;
  *a1 = fmin(v21, 1.0);
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1D0BADB3C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1))
  {
    if (*(a1 + 11904))
    {
      sub_1D0C01910(v11);
      v15 = 0x100000057;
      v13 = &unk_1F4CE3308;
      v14 = xmmword_1D0E84400;
      v16 = &v17;
      sub_1D0BF0AB0(a1 + 8808, v11, &v13);
      result = 0;
      *a2 = *v12;
      return result;
    }
  }

  else
  {
    LOBYTE(v13) = 2;
    cnprint::CNPrinter::Print(v11, &v13, "WARNING: MeasurementAccumulator.LatestLockedMeasurementTime() called on unlocked accumulator.", a4, a5, a6, a7, a8, 2);
  }

  return 0xFFFFFFFFLL;
}

__n128 sub_1D0BADC18(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    v11 = 2;
    v10 = 2;
    cnprint::CNPrinter::Print(&v11, &v10, "WARNING: MeasurementAccumulator.InitializeTime() called twice.", a4, a5, a6, a7, a8, v9);
  }

  else
  {
    result = *a2;
    *(a1 + 8) = *a2;
    *a1 = 1;
  }

  return result;
}

uint64_t sub_1D0BADC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x300000003;
  *(a1 + 8) = xmmword_1D0E76C10;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CDF110;
  *(a1 + 112) = a2;
  *(a1 + 144) = 0x100000003;
  *(a1 + 120) = &unk_1F4CDEAA0;
  *(a1 + 128) = xmmword_1D0E7DCC0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 200) = 0x100000003;
  *(a1 + 176) = &unk_1F4CDEAA0;
  *(a1 + 184) = xmmword_1D0E7DCC0;
  *(a1 + 208) = a1 + 216;
  sub_1D0B9F5D4(a1 + 120, a3);
  sub_1D0B9F5D4(a1 + 176, a4);
  v7 = *(a1 + 136);
  v8 = *(a1 + 192);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 20);
    v12 = *(a2 + 32);
    do
    {
      if (v7)
      {
        v13 = *(a1 + 152);
        v14 = *(*(a1 + 208) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        v17 = v7;
        do
        {
          v18 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v18 + v14));
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return a1;
}

uint64_t sub_1D0BADDDC(double *a1, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  switch(a2)
  {
    case 3:
      result = 0;
      a1[132] = a3;
      break;
    case 2:
      result = 0;
      a1[131] = a3;
      break;
    case 1:
      result = 0;
      a1[130] = a3;
      break;
    default:
      v15 = v9;
      v16 = v10;
      v14 = 12;
      v13 = 4;
      cnprint::CNPrinter::Print(&v14, &v13, "Error: Invalid raven estimator type, %d", a5, a6, a7, a8, a9, a2);
      return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t raven::RavenEstimator::GetValidHistoricalSolution(uint64_t a1, void *a2, uint64_t a3, double a4, int8x16_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 57) != 1 || *(a1 + 58) != 1 || !*(a1 + 48))
  {
    goto LABEL_14;
  }

  __dst[0] = *(a1 + 80);
  v8.i64[1] = *(&__dst[0] + 1);
  v8.i64[0] = *(*(a1 + 1168) + 1416);
  v22[0] = 0;
  v22[1] = 0;
  *v9.i64 = CNTimeSpan::SetTimeSpan(v22, 0, v8, a5);
  v11 = CNTimeSpan::operator-(__dst, v22, v9, v10);
  v13 = v12;
  v14 = v12;
  v15 = *(*(a1 + 16) + ((*(a1 + 40) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1928 * (*(a1 + 40) & 0xFLL);
  v16 = *(v15 + 1064);
  v17 = *(v15 + 1072);
  memcpy(__dst, (v15 + 1080), sizeof(__dst));
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v18 || !v11 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v19 = v16 <= v11, v16 == v11))
  {
    v19 = v17 <= v14;
  }

  if (v19)
  {
    memmove(a2, v15, 0x428uLL);
    *a3 = v16;
    *(a3 + 8) = v17;
    memcpy((a3 + 16), __dst, 0x350uLL);
    result = 0;
  }

  else
  {
LABEL_14:
    result = 0xFFFFFFFFLL;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

double raven::RavenEstimator::GetPriorWeight(raven::RavenEstimator *this)
{
  result = 1.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 140);
    result = 0.0;
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (v2 + *(this + 141) + *(this + 142) + *(this + 143) + *(this + 144) + *(this + 145));
    }
  }

  return result;
}

double raven::RavenEstimator::GetCellWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 143);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (*(this + 145) + *(this + 144) + v2 + *(this + 140) + *(this + 141) + *(this + 142));
    }
  }

  return result;
}

double raven::RavenEstimator::GetIndoorWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 144);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (*(this + 145) + v2 + *(this + 140) + *(this + 141) + *(this + 142) + *(this + 143));
    }
  }

  return result;
}

double raven::RavenEstimator::GetAccessoryWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 145);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (v2 + *(this + 140) + *(this + 141) + *(this + 142) + *(this + 143) + *(this + 144));
    }
  }

  return result;
}

double sub_1D0BAE168(uint64_t a1)
{
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FF8000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 1064) = 0x7FF8000000000000;
  *(a1 + 1072) = 0x7FF8000000000000;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = 0x7FF8000000000000;
  bzero((a1 + 268), 0x318uLL);
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1256) = 0x7FF8000000000000;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0x7FF8000000000000;
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 1280) = v2;
  *(a1 + 1296) = v2;
  *(a1 + 1312) = v2;
  *(a1 + 1328) = v2;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x7FF8000000000000;
  *(a1 + 1360) = v2;
  *(a1 + 1376) = v2;
  *(a1 + 1392) = v2;
  *(a1 + 1408) = v2;
  *(a1 + 1424) = v2;
  *(a1 + 1440) = v2;
  *(a1 + 1456) = 0x7FF8000000000000;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = v2;
  *(a1 + 1488) = v2;
  *(a1 + 1504) = v2;
  *(a1 + 1520) = v2;
  *(a1 + 1536) = 0x7FF8000000000000;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = v2;
  *(a1 + 1568) = v2;
  *(a1 + 1584) = v2;
  *(a1 + 1600) = v2;
  *(a1 + 1616) = 0x7FF8000000000000;
  *(a1 + 1624) = 0;
  *(a1 + 1632) = v2;
  *(a1 + 1648) = v2;
  *(a1 + 1664) = v2;
  *(a1 + 1680) = v2;
  *(a1 + 1696) = v2;
  *(a1 + 1712) = v2;
  *(a1 + 1728) = v2;
  *(a1 + 1744) = 0;
  *(a1 + 1752) = 0x7FF8000000000000;
  *(a1 + 1760) = v2;
  *(a1 + 1776) = v2;
  *(a1 + 1792) = v2;
  *(a1 + 1808) = v2;
  *(a1 + 1824) = 0;
  *(a1 + 1832) = 0x7FF8000000000000;
  *(a1 + 1840) = v2;
  *(a1 + 1856) = v2;
  *(a1 + 1872) = v2;
  *(a1 + 1888) = v2;
  *(a1 + 1904) = 0;
  *(a1 + 1912) = 0x7FF8000000000000;
  *(a1 + 1920) = v2;
  *(a1 + 1936) = v2;
  *(a1 + 1952) = v2;
  *(a1 + 1968) = v2;
  *(a1 + 1984) = 0;
  *(a1 + 1992) = 0x7FF8000000000000;
  *(a1 + 2000) = v2;
  *(a1 + 2016) = v2;
  *(a1 + 2112) = 0;
  result = 0.0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2120) = 0x7FF8000000000000;
  *(a1 + 2128) = 0;
  *(a1 + 2136) = 0x3FF0000000000000;
  *(a1 + 2544) = 0;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0u;
  *(a1 + 2400) = 0u;
  *(a1 + 2416) = 0u;
  *(a1 + 2432) = 0u;
  *(a1 + 2448) = 0u;
  *(a1 + 2464) = 0u;
  *(a1 + 2480) = 0u;
  *(a1 + 2496) = 0u;
  *(a1 + 2512) = 0u;
  *(a1 + 2521) = 0u;
  *(a1 + 2552) = 0x3FF0000000000000;
  *(a1 + 2560) = 0u;
  *(a1 + 2576) = 0u;
  *(a1 + 2592) = 0x3FF0000000000000;
  *(a1 + 2600) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0x3FE0000000000000;
  *(a1 + 2640) = 0x3FE0000000000000;
  *(a1 + 2648) = 0;
  return result;
}

void sub_1D0BAE3C4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  raven::PopulateAllTimeFields(a1 + 8, a2, a3, a4, a5, a6);
  raven::PopulateAllTimeFields(a1 + 1168, a2, a3, a4, v10, v11);
  raven::PopulateAllTimeFields(a1 + 112, a2, a3, a4, v12, v13);

  raven::PopulateAllTimeFields(a1 + 2032, a2, a3, a4, v14, v15);
}

void sub_1D0BAE6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

void sub_1D0BAE730(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v8, v9);
}

uint64_t sub_1D0BAE770(void *a1, uint64_t a2, double *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2 * (v9 - v8) - 1;
  }

  v11 = a1[4];
  if (v10 == a1[5] + v11)
  {
    v12 = v11 >= 0x10;
    v13 = v11 - 16;
    if (!v12)
    {
      v14 = a1[3];
      v15 = v14 - *a1;
      if (v9 - v8 < v15)
      {
        operator new();
      }

      v16 = v15 >> 2;
      if (v14 == *a1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      sub_1D0C4E87C(v17);
    }

    a1[4] = v13;
    v32[0] = *v8;
    a1[1] = v8 + 1;
    sub_1D0C149C4(a1, v32);
    v8 = a1[1];
    v9 = a1[2];
  }

  if (v9 == v8)
  {
    v19 = 0;
  }

  else
  {
    v18 = a1[5] + a1[4];
    v19 = (*(v8 + ((v18 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v18 & 0xF));
  }

  *v19 = &unk_1F4CEF7A8;
  memcpy(v19 + 1, (a2 + 8), 0xA51uLL);
  v20 = a1[5];
  a1[5] = v20 + 1;
  if (v20 == -1)
  {
    v21 = 1;
  }

  else
  {
    for (i = 1; ; i = 0)
    {
      v31[0] = (*(*a2 + 16))(a2);
      v31[1] = v23;
      v24 = *(a1[1] + ((a1[4] >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (a1[4] & 0xFLL);
      v30[0] = (*(*v24 + 16))(v24);
      v30[1] = v25;
      *&v32[0] = CNTimeSpan::operator-(v31, v30, v26, v27);
      v32[1] = v28;
      if (!sub_1D0B7CF88(v32, a3) && a1[5] <= a4)
      {
        break;
      }

      sub_1D0BAD890(a1);
      v21 = 0;
      if (!a1[5])
      {
        return v21 & 1;
      }
    }

    v21 = i;
  }

  return v21 & 1;
}

void sub_1D0BAECE8(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0BAED18(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

void raven::RavenEstimator::StoreHistoricalSolution(raven::RavenEstimator *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  v51[106] = *MEMORY[0x1E69E9840];
  if (v4[57] == 1)
  {
    v6 = v4;
    if (v4[58] == 1)
    {
      (*(*v4 + 40))(v49, v4, v5);
      (*(*v6 + 48))(v48, v6);
      if (BYTE1(v48[13]) == 2 && LOBYTE(v48[13]) != 0)
      {
        v8 = *(v6 + 6);
        if (!v8)
        {
          v22 = 0;
          goto LABEL_50;
        }

        if (!sub_1D0B7C8AC(v49, (*(*(v6 + 2) + (((v8 + *(v6 + 5) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1928 * ((v8 + *(v6 + 10) - 1) & 0xF) + 1064)))
        {
          __dst[0] = *(v6 + 5);
          v10.i64[1] = *(&__dst[0] + 1);
          v10.i64[0] = *(*(v6 + 146) + 1416);
          v51[1] = 0;
          v51[0] = 0;
          *v11.i64 = CNTimeSpan::SetTimeSpan(v51, 0, v10, v9);
          v46 = CNTimeSpan::operator-(__dst, v51, v11, v12);
          v47 = v13;
          v14 = (*(*(v6 + 2) + ((*(v6 + 5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1928 * (*(v6 + 5) & 0xFLL));
          memcpy(__dst, v14, 0x428uLL);
          while (1)
          {
            v15 = *(v14 + 133);
            v16 = v14[134];
            memcpy(v51, v14 + 135, 0x350uLL);
            if (!v15 && (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (!v46)
            {
              v18 = v47;
              if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
              {
                goto LABEL_19;
              }
            }

            if (v15 == v46)
            {
              break;
            }

            if (v15 >= v46)
            {
LABEL_29:
              v22 = *(v6 + 6);
              goto LABEL_50;
            }

LABEL_22:
            v19 = vaddq_s64(*(v6 + 40), xmmword_1D0E76280);
            *(v6 + 40) = v19;
            v20 = v19.i64[0];
            if (v19.i64[0] < 0x20uLL)
            {
              v21 = v19.i64[1];
            }

            else
            {
              operator delete(**(v6 + 2));
              *(v6 + 2) += 8;
              v21 = *(v6 + 6);
              v20 = *(v6 + 5) - 16;
              *(v6 + 5) = v20;
            }

            if (!v21)
            {
              goto LABEL_31;
            }

            v14 = (*(*(v6 + 2) + ((v20 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1928 * (v20 & 0xF));
            if (sub_1D0B7CF88(v14 + 133, &v46))
            {
              v20 = *(v6 + 5);
LABEL_31:
              v23 = *(v6 + 2);
              if (!v20)
              {
                v24 = *(v6 + 3);
                v25 = 2 * (v24 - v23) - 1;
                v26 = v24 - v23;
                if (v24 == v23)
                {
                  v25 = 0;
                }

                if ((v25 - *(v6 + 6)) < 0x10)
                {
                  v27 = *(v6 + 4);
                  v28 = *(v6 + 1);
                  if (v26 < v27 - v28)
                  {
                    if (v23 != v28)
                    {
                      operator new();
                    }

                    operator new();
                  }

                  if (v27 == v28)
                  {
                    v29 = 1;
                  }

                  else
                  {
                    v29 = (v27 - v28) >> 2;
                  }

                  v50[4] = v6 + 8;
                  sub_1D0C4E87C(v29);
                }

                *(v6 + 5) = 16;
                v50[0] = *(v24 - 8);
                *(v6 + 3) = v24 - 8;
                sub_1D0C15D70(v6 + 1, v50);
                v20 = *(v6 + 5);
                v23 = *(v6 + 2);
              }

              v30 = (v23 + 8 * (v20 >> 4));
              v31 = *v30 + 1928 * (v20 & 0xF);
              if (*(v6 + 3) == v23)
              {
                v32 = 0;
              }

              else
              {
                v32 = v31;
              }

              if (v32 == *v30)
              {
                v32 = *(v30 - 1) + 30848;
              }

              memcpy((v32 - 1928), __dst, 0x428uLL);
              *(v32 - 864) = v15;
              *(v32 - 856) = v16;
              memcpy((v32 - 848), v51, 0x350uLL);
              v33 = vaddq_s64(*(v6 + 40), xmmword_1D0E82EC0);
              *(v6 + 40) = v33;
              v22 = v33.i64[1];
LABEL_50:
              memcpy(__dst, v48, 0x428uLL);
              memcpy(&__dst[66] + 8, v49, 0x360uLL);
              v34 = *(v6 + 1);
              v35 = *(v6 + 3);
              v36 = *(v6 + 2);
              v37 = v35 - v36;
              if (v35 == v36)
              {
                v38 = 0;
              }

              else
              {
                v38 = 2 * (v35 - v36) - 1;
              }

              v39 = *(v6 + 5);
              v40 = v22 + v39;
              if (v38 == v22 + v39)
              {
                if (v39 < 0x10)
                {
                  v41 = *(v6 + 4);
                  v42 = *(v6 + 1);
                  if (v37 < v41 - v42)
                  {
                    if (v41 != v35)
                    {
                      operator new();
                    }

                    operator new();
                  }

                  if (v41 == v42)
                  {
                    v43 = 1;
                  }

                  else
                  {
                    v43 = (v41 - v42) >> 2;
                  }

                  v51[4] = v6 + 8;
                  sub_1D0C4E87C(v43);
                }

                *(v6 + 5) = v39 - 16;
                v51[0] = *v36;
                *(v6 + 2) = v36 + 8;
                sub_1D0C149C4(v6 + 1, v51);
                v36 = *(v6 + 2);
                v40 = *(v6 + 6) + *(v6 + 5);
              }

              memcpy((*&v36[(v40 >> 1) & 0x7FFFFFFFFFFFFFF8] + 1928 * (v40 & 0xF)), __dst, 0x788uLL);
              ++*(v6 + 6);
              goto LABEL_65;
            }

            memcpy(__dst, v14, 0x428uLL);
          }

          v18 = v47;
LABEL_19:
          if (v16 > v18)
          {
            goto LABEL_29;
          }

          goto LABEL_22;
        }
      }
    }
  }

LABEL_65:
  v44 = *MEMORY[0x1E69E9840];
}

void sub_1D0BAF678(_Unwind_Exception *a1)
{
  operator delete(v1);
  if (STACK[0xF40])
  {
    operator delete(STACK[0xF40]);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BAF6FC(uint64_t a1, int8x16_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B92680(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent(v8 + 18, v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8[15].i64, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (v8[16].i8[7] >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = v8[15].i64[0];
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0BAF81C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0BAF858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v34.__vftable) = 3;
    LOBYTE(v32) = 5;
    cnprint::CNPrinter::Print(&v34, &v32, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v30);
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

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEE8F8 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEE8F8 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v34.__vftable = 0;
        std::bad_cast::bad_cast(&v34);
        v34.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEE8D0;
    *(a1 + 8) = *(v21 + 16);
    v22 = *(v21 + 64);
    v23 = *(v21 + 80);
    v24 = *(v21 + 48);
    *(a1 + 24) = *(v21 + 32);
    *(a1 + 72) = v23;
    *(a1 + 56) = v22;
    *(a1 + 40) = v24;
    v25 = *(v21 + 128);
    v26 = *(v21 + 144);
    v27 = *(v21 + 112);
    *(a1 + 88) = *(v21 + 96);
    *(a1 + 136) = v26;
    *(a1 + 120) = v25;
    *(a1 + 104) = v27;
    result = *(v21 + 192);
    v28 = *(v21 + 208);
    v29 = *(v21 + 176);
    *(a1 + 152) = *(v21 + 160);
    *(a1 + 200) = v28;
    *(a1 + 184) = result;
    *(a1 + 168) = v29;
  }

  else
  {
    v32 = 3;
    v31 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v34.__vftable) = 3;
      v33 = 5;
      cnprint::CNPrinter::Print(&v34, &v33, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v30);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v32, &v31, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE8D0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0BAFAFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0BAF858(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    v10 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v31);
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

void sub_1D0BAFCA0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::AltitudeChangeEvent *a2)
{
  v80[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1)
  {
    if (*(this + 58) == 1)
    {
      v69 = 0x100000003;
      *&v67[9] = &unk_1F4CDEB28;
      *&v4 = 0x100000001;
      *(&v4 + 1) = 0x100000001;
      v68 = v4;
      v70 = &v71;
      v71 = *(a2 + 25);
      v65 = 0x300000003;
      v63 = &unk_1F4CD5DD0;
      v64 = v4;
      v66 = v67;
      v67[0] = *(a2 + 26) * *(a2 + 26);
      sub_1D0BA002C(v56, 3);
      v56[0] = &unk_1F4CEB860;
      v58 = (*(*a2 + 16))(a2);
      v59 = v5;
      v72 = (*(*a2 + 16))(a2);
      v73 = v6;
      v9 = CNTimeSpan::operator-(&v72, a2 + 13, v7, v8);
      v10 = *(*(this + 146) + 104);
      v60 = v11 + v9;
      v61 = v10;
      v62 = v10;
      v17 = (*(*a2 + 16))(a2);
      v19 = v18;
      v54 = v17;
      v55 = v18;
      if ((v64 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v76 = 0x100000003;
      v72 = &unk_1F4CDEB28;
      v20 = v78;
      v77 = v78;
      v73 = v64 | 0x100000000;
      v74 = v64;
      v75 = v64;
      if (v64 > 3)
      {
        v22 = &v78[v64];
        bzero(v78, 16 * ((v64 - 1) >> 1));
        *(v22 - 2) = 0;
        *(v22 - 1) = 0;
      }

      else if (v64)
      {
        bzero(v78, 8 * v64);
      }

      if (*(this + 8560))
      {
        if (*(this + 3624) == 174)
        {
          LOWORD(v80[0]) = 2;
          v79 = 2;
          v49 = v19 + v17;
          cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v12, v13, v14, v15, v16, SLOBYTE(v49));
        }

        else if (*(this + 8561) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
          {
            LOWORD(v80[0]) = 2;
            v79 = 1;
            v51 = v19 + v17;
            cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v28, v29, v30, v31, v32, SLOBYTE(v51));
          }
        }

        else
        {
          v33 = sub_1D0B7C8AC(&v54, this + 1071);
          if (!v33)
          {
            v80[0] = 0;
            v80[1] = 0;
            sub_1D0BB03E0();
          }

          if (cnprint::CNPrinter::GetLogLevel(v33) <= 1)
          {
            LOWORD(v80[0]) = 2;
            v79 = 1;
            v52 = v55 + v54;
            v53 = *(this + 1072) + *(this + 1071);
            cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v34, v35, v36, v37, v38, SLOBYTE(v52));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
      {
        LOWORD(v80[0]) = 2;
        v79 = 1;
        v50 = v19 + v17;
        cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v23, v24, v25, v26, v27, SLOBYTE(v50));
      }

      LOWORD(v80[0]) = 12;
      v79 = 4;
      v72 = (*(*a2 + 16))(a2);
      v73 = v39;
      v40 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v72, "Could not add measurement - altitude change");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v46) = v40;
      }

      else
      {
        v46 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v80, &v79, "%s", v41, v42, v43, v44, v45, v46);
      v21 = 0xFFFFFFFFLL;
      v56[0] = &unk_1F4CE4300;
      if (v57 < 0)
      {
        operator delete(v56[2]);
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1D0BB0364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0BB04CC(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0BB03E0(a3, a2[1]);
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
    *a3 = sub_1D0BB04CC;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB7A8;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB7A8);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_AltitudeChangeArgs_RavenConvergence<double>>::__id;
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

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AltitudeChangeEvent *a2)
{
  v80[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1)
  {
    if (*(this + 58) == 1)
    {
      v69 = 0x100000003;
      *&v4 = 0x100000001;
      *(&v4 + 1) = 0x100000001;
      v68 = v4;
      *&v67[9] = &unk_1F4CDEB28;
      v70 = &v71;
      v71 = *(a2 + 25);
      v65 = 0x300000003;
      v64 = v4;
      v63 = &unk_1F4CD5DD0;
      v66 = v67;
      v67[0] = *(a2 + 26) * *(a2 + 26);
      sub_1D0BA002C(v55, 4);
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v55[0] = &unk_1F4CE10D8;
      v57 = (*(*a2 + 16))(a2);
      v58 = v5;
      v72 = (*(*a2 + 16))(a2);
      v73 = v6;
      v9 = CNTimeSpan::operator-(&v72, a2 + 13, v7, v8);
      v62 = v10 + v9;
      *&v59 = this + 2920;
      *(&v59 + 1) = this + 14824;
      *&v60 = this + 14840;
      *(&v60 + 1) = this + 2760;
      v61 = this + 2800;
      v16 = (*(*a2 + 16))(a2);
      v18 = v17;
      v53 = v16;
      v54 = v17;
      if ((v64 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v76 = 0x100000003;
      v72 = &unk_1F4CDEB28;
      v19 = v78;
      v77 = v78;
      v73 = v64 | 0x100000000;
      v74 = v64;
      v75 = v64;
      if (v64 > 3)
      {
        v21 = &v78[v64];
        bzero(v78, 16 * ((v64 - 1) >> 1));
        *(v21 - 2) = 0;
        *(v21 - 1) = 0;
      }

      else if (v64)
      {
        bzero(v78, 8 * v64);
      }

      if (*(this + 61736))
      {
        if (*(this + 16918) == 174)
        {
          LOWORD(v80[0]) = 2;
          v79 = 2;
          v48 = v18 + v16;
          cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v11, v12, v13, v14, v15, SLOBYTE(v48));
        }

        else if (*(this + 61737) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
          {
            LOWORD(v80[0]) = 2;
            v79 = 1;
            v50 = v18 + v16;
            cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v27, v28, v29, v30, v31, SLOBYTE(v50));
          }
        }

        else
        {
          v32 = sub_1D0B7C8AC(&v53, this + 7718);
          if (!v32)
          {
            v80[0] = 0;
            v80[1] = 0;
            sub_1D0D8B214();
          }

          if (cnprint::CNPrinter::GetLogLevel(v32) <= 1)
          {
            LOWORD(v80[0]) = 2;
            v79 = 1;
            v51 = v54 + v53;
            v52 = *(this + 7719) + *(this + 7718);
            cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v33, v34, v35, v36, v37, SLOBYTE(v51));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
      {
        LOWORD(v80[0]) = 2;
        v79 = 1;
        v49 = v18 + v16;
        cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v22, v23, v24, v25, v26, SLOBYTE(v49));
      }

      LOWORD(v80[0]) = 12;
      v79 = 4;
      v72 = (*(*a2 + 16))(a2);
      v73 = v38;
      v39 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v72, "Could not add measurement - device attitude change");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v45) = v39;
      }

      else
      {
        v45 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v80, &v79, "%s", v40, v41, v42, v43, v44, v45);
      v20 = 0xFFFFFFFFLL;
      v55[0] = &unk_1F4CE4300;
      if (v56 < 0)
      {
        operator delete(v55[2]);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0xFFFFFFFFLL;
  }

  v46 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1D0BB0C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Baro::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 11) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v26 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
        {
          return 0;
        }
      }

      else
      {
        v26 = *v8;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        do
        {
          *(a2 + 1) = v14 + 1;
LABEL_27:
          v15 = *(this + 7);
          v16 = *(this + 6);
          if (v16 >= v15)
          {
            if (v15 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v15 = *(this + 7);
            }

            *(this + 7) = v15 + 1;
            operator new();
          }

          v17 = *(this + 2);
          *(this + 6) = v16 + 1;
          v18 = *(v17 + 8 * v16);
          v27 = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
            {
              return 0;
            }
          }

          else
          {
            v27 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v20 = *(a2 + 14);
          v21 = *(a2 + 15);
          *(a2 + 14) = v20 + 1;
          if (v20 >= v21)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v22 = *(a2 + 14);
          v12 = __OFSUB__(v22, 1);
          v23 = v22 - 1;
          if (v23 < 0 == v12)
          {
            *(a2 + 14) = v23;
          }

          v14 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v14 < v24 && *v14 == 18);
        if (v14 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 5)
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 == 5)
      {
        goto LABEL_30;
      }

LABEL_18:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != 1 || v7 != 2)
    {
      goto LABEL_18;
    }

    *(this + 7) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v20 = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v9;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
    if (v15 < *(a2 + 2) && *v15 == 21)
    {
      *(a2 + 1) = v15 + 1;
LABEL_30:
      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v19;
      *(this + 7) |= 2u;
      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 29)
      {
        *(a2 + 1) = v16 + 1;
LABEL_34:
        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v18;
        *(this + 7) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Baro *a2, raven::BarometerEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  LODWORD(v10) = *(a2 + 6);
  if (v10 >= 1)
  {
    v12 = 0;
    v15 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v16[0] = &unk_1F4CEEFA0;
      v16[1] = 0;
      v16[2] = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v13 = v15;
      v26 = v15;
      v27 = 0;
      v28 = 0x7FF8000000000000;
      v29 = 0;
      if (v12 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v30);
      }

      raven::ConvertProtobufToBarometerEvent(*(*(a2 + 2) + 8 * v12), v16, a3, a4, a5, a6, a7, a8, v13, a10);
      if (v14)
      {
        operator new();
      }

      ++v12;
      v10 = *(a2 + 6);
    }

    while (v12 < v10);
  }
}

double raven::ConvertProtobufToBarometerEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *a2, raven::BarometerEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if (*(this + 28))
  {
    v12 = *(this + 1);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_ + 8);
    }

    if (raven::ConvertProtobufToRavenTime(v12, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10))
    {
      v13 = *(this + 5);
      *(a2 + 13) = *(this + 4);
      *(a2 + 112) = 1;
      *a9.i64 = v13;
      *(a2 + 15) = v13;
      *(a2 + 64) = 257;
    }
  }

  return *a9.i64;
}

void sub_1D0BB17A0(uint64_t a1, raven::RavenPressurePrefilterActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v28.__vftable) = 3;
    LOBYTE(v36) = 5;
    cnprint::CNPrinter::Print(&v28, &v36, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v27);
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
    if (v19 != (off_1F4CEEFC8 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEEFC8 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v28.__vftable = 0;
      std::bad_cast::bad_cast(&v28);
      v28.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v28.__vftable = &unk_1F4CEEFA0;
    v21 = v20[3];
    v22 = v20[4];
    v23 = v20[2];
    v29 = v20[1];
    v32 = v22;
    v31 = v21;
    v30 = v23;
    v25 = v20[6];
    v24 = v20[7];
    v26 = *(v20 + 122);
    v33 = v20[5];
    *&v34[26] = v26;
    *&v34[16] = v24;
    *v34 = v25;
  }

  else
  {
    v36 = 3;
    v35 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v28.__vftable) = 3;
      v37 = 5;
      cnprint::CNPrinter::Print(&v28, &v37, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v27);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v36, &v35, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v30 = 0uLL;
    v33 = 0uLL;
    *&v34[24] = 0;
    v29 = 0uLL;
    v28.__vftable = &unk_1F4CEEFA0;
    v31 = 0uLL;
    v32 = 0uLL;
    *v34 = 0;
    *&v34[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v34[32] = 0x7FF8000000000000uLL;
  }

  raven::RavenPressurePrefilterActiveObject::HandleEvent(v9, &v28);
}

void raven::RavenPressurePrefilterActiveObject::HandleEvent(raven::RavenPressurePrefilterActiveObject *this, const raven::BarometerEvent *a2)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if (*(a2 + 128))
  {
    v3 = *(a2 + 129) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(__p) = 12;
      LOBYTE(v118[0]) = 1;
      v4 = (*(*a2 + 16))(a2);
      v101 = *(a2 + 128);
      v103 = *(a2 + 129);
      v99 = v5 + v4;
      cnprint::CNPrinter::Print(&__p, v118, "t,%.3lf,Invalid barometer state,valid,%d,state,%d", v6, v7, v8, v9, v10, SLOBYTE(v99));
    }
  }

  else
  {
    v11 = *(a2 + 13);
    if (v11 >= 30.0 && v11 <= 110.0)
    {
      if (!*(this + 43))
      {
        goto LABEL_42;
      }

      __p = (*(*a2 + 16))(a2);
      *&v105 = v13;
      v14 = *(*(this + 39) + 8 * (*(this + 42) / 0x1EuLL)) + 136 * (*(this + 42) % 0x1EuLL);
      v118[0] = (*(*v14 + 16))(v14);
      v118[1] = v15;
      v18 = CNTimeSpan::operator-(&__p, v118, v16, v17);
      *&v117[0] = v18;
      v117[1] = v19;
      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_19;
        }
      }

      else if (v19 < 0.0)
      {
LABEL_19:
        if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
        {
          v116 = 12;
          v115 = 1;
          (*(*this + 16))(&__p, this);
          v27 = SHIBYTE(v105);
          v28 = __p;
          (*(*a2 + 24))(v118, a2);
          if (v27 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            LOBYTE(p_p) = v28;
          }

          cnprint::CNPrinter::Print(&v116, &v115, "WARNING: %s emptying event history of type %s", v29, v30, v31, v32, v33, p_p);
          if (v119 < 0)
          {
            operator delete(v118[0]);
          }

          if (SHIBYTE(v105) < 0)
          {
            operator delete(__p);
          }
        }

        v35 = *(this + 39);
        v36 = *(this + 40);
        if (v36 == v35)
        {
          v36 = *(this + 39);
        }

        else
        {
          v37 = *(this + 42);
          v38 = &v35[v37 / 0x1E];
          v39 = v35[(*(this + 43) + v37) / 0x1E] + 136 * ((*(this + 43) + v37) % 0x1E);
          if (*v38 + 136 * (v37 % 0x1E) != v39)
          {
            v40 = (*v38 + 136 * (v37 % 0x1E));
            do
            {
              v41 = *v40;
              v40 += 17;
              (*v41)();
              if (v40 - *v38 == 4080)
              {
                v42 = v38[1];
                ++v38;
                v40 = v42;
              }
            }

            while (v40 != v39);
            v35 = *(this + 39);
            v36 = *(this + 40);
          }
        }

        *(this + 43) = 0;
        v43 = v36 - v35;
        if (v43 >= 3)
        {
          do
          {
            operator delete(*v35);
            v44 = *(this + 40);
            v35 = (*(this + 39) + 8);
            *(this + 39) = v35;
            v43 = (v44 - v35) >> 3;
          }

          while (v43 > 2);
        }

        if (v43 == 1)
        {
          v45 = 15;
          goto LABEL_41;
        }

        if (v43 == 2)
        {
          v45 = 30;
LABEL_41:
          *(this + 42) = v45;
        }

LABEL_42:
        v46 = *(this + 42);
        if (!v46)
        {
          v48 = *(this + 39);
          v47 = *(this + 40);
          v49 = 30 * ((v47 - v48) >> 3) - 1;
          v50 = v47 - v48;
          if (v47 == v48)
          {
            v49 = 0;
          }

          if ((v49 - *(this + 43)) < 0x1E)
          {
            v51 = *(this + 41);
            v52 = *(this + 38);
            if (v50 < v51 - v52)
            {
              operator new();
            }

            if (v51 == v52)
            {
              v53 = 1;
            }

            else
            {
              v53 = (v51 - v52) >> 2;
            }

            sub_1D0C4E87C(v53);
          }

          *(this + 42) = 30;
          __p = *(v47 - 8);
          *(this + 40) = v47 - 8;
          sub_1D0C15D70(this + 38, &__p);
          v46 = *(this + 42);
        }

        v54 = *(this + 39);
        v55 = (v54 + 8 * (v46 / 0x1E));
        v56 = *v55 + 136 * (v46 % 0x1E);
        if (*(this + 40) == v54)
        {
          v56 = 0;
        }

        if (v56 == *v55)
        {
          v56 = *(v55 - 1) + 4080;
        }

        *(v56 - 136) = &unk_1F4CEEFA0;
        v57 = *(a2 + 8);
        v58 = *(a2 + 24);
        v59 = *(a2 + 56);
        *(v56 - 96) = *(a2 + 40);
        *(v56 - 80) = v59;
        *(v56 - 128) = v57;
        *(v56 - 112) = v58;
        v60 = *(a2 + 72);
        v61 = *(a2 + 88);
        v62 = *(a2 + 104);
        *(v56 - 22) = *(a2 + 114);
        *(v56 - 48) = v61;
        *(v56 - 32) = v62;
        *(v56 - 64) = v60;
        v63 = *(this + 42);
        v64 = *(this + 43);
        v65 = v63 - 1;
        v66 = v64 + 1;
        *(this + 42) = v63 - 1;
        *(this + 43) = v64 + 1;
        if (v64 + 1 == *(this + 37))
        {
          v67 = *(*(this + 29) + 1312);
          if (v66 > v67)
          {
            v68 = v65 + v67;
            v69 = *(this + 39);
            v70 = *(v69 + 8 * (v68 / 0x1E)) + 136 * (v68 % 0x1E);
            v105 = 0uLL;
            LOBYTE(v106) = 0;
            *(&v106 + 1) = 0;
            v107.n128_u64[0] = 0;
            v107.n128_u8[8] = 0;
            v108 = 0uLL;
            LOBYTE(v109) = 0;
            *(&v109 + 1) = 0;
            *v110 = 0;
            v71 = vdupq_n_s64(0x7FF8000000000000uLL);
            *&v110[8] = v71;
            v111 = 0;
            v112 = 0x7FF8000000000000;
            v113 = 0;
            __p = &unk_1F4CEF150;
            if (&__p != v70)
            {
              v72 = *(v70 + 8);
              v106 = *(v70 + 24);
              v105 = v72;
              v71 = *(v70 + 40);
              v73 = *(v70 + 56);
              v74 = *(v70 + 72);
              *v110 = *(v70 + 88);
              v109 = v74;
              v108 = v73;
              v107 = v71;
              *&v110[16] = *(v70 + 104);
              v111 = *(v70 + 112);
              v112 = *(v70 + 120);
              v113 = *(v70 + 128);
            }

            v114 = 0;
            v75 = *(this + 36);
            v76 = *(this + 33);
            v77 = *(this + 34);
            v78 = (v76 + 8 * (v75 >> 9));
            if (v77 == v76)
            {
              v79 = 0;
            }

            else
            {
              v79 = (*v78 + 8 * (*(this + 36) & 0x1FFLL));
            }

            v80 = (v69 + 8 * (v65 / 0x1E));
            v81 = *(this + 40);
            if (v81 == v69)
            {
              v82 = 0;
            }

            else
            {
              v82 = *v80 + 136 * (v65 % 0x1E);
            }

            v83 = v75 + v66;
            v84 = v83 >> 9;
            v85 = v83 & 0x1FF;
            v86 = v63 + v64;
            v87 = (v63 + v64) / 0x1EuLL;
            v71.n128_u64[0] = 0;
            while (1)
            {
              v88 = v82 - 4080;
              do
              {
                if (v77 == v76)
                {
                  v89 = 0;
                }

                else
                {
                  v89 = *(v76 + 8 * v84) + 8 * v85;
                }

                if (v79 == v89 || (v81 == v69 ? (v90 = 0) : (v90 = *(v69 + 8 * v87) + 136 * (v86 - 30 * v87)), v82 == v90))
                {
                  v94 = (*(v69 + 8 * ((v65 + v64) / 0x1E)) + 136 * ((v65 + v64) % 0x1E));
                  (**v94)(v94, v71);
                  v95 = *(this + 40);
                  v3 = v95 == *(this + 39);
                  v96 = 30 * ((v95 - *(this + 39)) >> 3) - 1;
                  v98 = *(this + 42);
                  v97 = *(this + 43);
                  *(this + 43) = v97 - 1;
                  if (v3)
                  {
                    v96 = 0;
                  }

                  if ((v96 - (v97 + v98) - 59) <= 0xFFFFFFFFFFFFFFC3)
                  {
                    operator delete(*(v95 - 8));
                    *(this + 40) -= 8;
                  }

                  operator new();
                }

                v91 = *v79++;
                v71.n128_f64[0] = v71.n128_f64[0] + v91 * *(v82 + 104);
                v114 = v71.n128_u64[0];
                if ((v79 - *v78) == 4096)
                {
                  v92 = v78[1];
                  ++v78;
                  v79 = v92;
                }

                v88 += 136;
                v82 += 136;
              }

              while (*v80 != v88);
              v93 = v80[1];
              ++v80;
              v82 = v93;
            }
          }

          sub_1D0C543A8("deque");
        }

        return;
      }

      v18 = sub_1D0B7CF88(v117, this + 30);
      if (!v18)
      {
        goto LABEL_42;
      }

      goto LABEL_19;
    }

    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(__p) = 12;
      LOBYTE(v118[0]) = 1;
      v20 = (*(*a2 + 16))(a2);
      v100 = v21 + v20;
      v102 = *(a2 + 13);
      cnprint::CNPrinter::Print(&__p, v118, "t,%.3lf,Invalid barometer data,%.6lf", v22, v23, v24, v25, v26, SLOBYTE(v100));
    }
  }
}

void sub_1D0BB27C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  operator delete(v19);
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BB28EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BAF858(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0BB2A0C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB2A5C(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BB2F1C(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v8, v9);
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::SignalEnvironmentEvent *a2)
{
  if (*(this + 224))
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 40);
    *(this + 33) = *(a2 + 24);
    *(this + 34) = v4;
    *(this + 32) = v3;
    v5 = *(a2 + 56);
    v6 = *(a2 + 72);
    v7 = *(a2 + 88);
    *(this + 608) = *(a2 + 104);
    *(this + 36) = v6;
    *(this + 37) = v7;
    *(this + 35) = v5;
  }

  else
  {
    v17 = 12;
    v16 = 2;
    v15[0] = (*(*a2 + 16))(a2);
    v15[1] = v8;
    cnprint::CNLogFormatter::FormatGeneral(this + 264, v15, "RavenPositionContextEstimatorActiveObject is not configured.");
    if (*(this + 287) >= 0)
    {
      LOBYTE(v14) = this + 8;
    }

    else
    {
      v14 = *(this + 33);
    }

    cnprint::CNPrinter::Print(&v17, &v16, "%s", v9, v10, v11, v12, v13, v14);
  }
}

void sub_1D0BB2C98(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0BB2D88((a1 + 3));
}

void sub_1D0BB2D88(uint64_t a1)
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
  sub_1D0BB2BBC();
}

void sub_1D0BB2EC4(_Unwind_Exception *exception_object)
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

__n128 sub_1D0BB2F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v30.__vftable) = 3;
    LOBYTE(v28) = 5;
    cnprint::CNPrinter::Print(&v30, &v28, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v26);
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

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEF298 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEF298 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v30.__vftable = 0;
        std::bad_cast::bad_cast(&v30);
        v30.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF5C8;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 24) = v23;
    *(a1 + 40) = v22;
    v24 = *(v21 + 80);
    result = *(v21 + 96);
    v25 = *(v21 + 112);
    *(a1 + 56) = *(v21 + 64);
    *(a1 + 104) = v25;
    *(a1 + 88) = result;
    *(a1 + 72) = v24;
  }

  else
  {
    v28 = 3;
    v27 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v30.__vftable) = 3;
      v29 = 5;
      cnprint::CNPrinter::Print(&v30, &v29, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v26);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF5C8;
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
  }

  return result;
}

void sub_1D0BB3184(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(&v70, a3, a3, a4, a5, a6, a7, a8);
  v86 = raven::RavenPNTEstimator::HandleTimeMarkEvent((v8 + 288), &v70);
  v9 = sub_1D0BAAFCC(&v86);
  if (v9)
  {
    if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      LOWORD(v72) = 12;
      LOBYTE(v73) = 1;
      *__src = (*(v70 + 16))(&v70);
      *&__src[8] = v10;
      (*(v70 + 24))(&__p, &v70);
      v16 = v76 >= 0 ? &__p : __p;
      v17 = cnprint::CNLogFormatter::FormatWarning(v8 + 240, __src, "Error handling event of type %s,code,%d", v11, v12, v13, v14, v15, v16);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v23) = v17;
      }

      else
      {
        v23 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v72, &v73, "%s", v18, v19, v20, v21, v22, v23);
      if (SHIBYTE(v76) < 0)
      {
        operator delete(__p);
      }
    }

    v24 = v86;
    v25 = v86;
    if ((v86 & 4) != 0)
    {
      *__src = 12;
      LOBYTE(v72) = 2;
      __p = (*(v70 + 16))(&v70);
      *&v76 = v26;
      cnprint::CNLogFormatter::FormatWarning(v8 + 240, &__p, "Resetting filter due to prediction error", v27, v28, v29, v30, v31, v69);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v37) = v8 - 16;
      }

      else
      {
        v37 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(__src, &v72, "%s", v32, v33, v34, v35, v36, v37);
      v25 = v86;
    }

    if ((v25 & 0x1C00) != 0)
    {
      *__src = 12;
      LOBYTE(v72) = 2;
      __p = (*(v70 + 16))(&v70);
      *&v76 = v38;
      cnprint::CNLogFormatter::FormatWarning(v8 + 240, &__p, "Resetting filter due to FSDI error", v39, v40, v41, v42, v43, v69);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v49) = v8 - 16;
      }

      else
      {
        v49 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(__src, &v72, "%s", v44, v45, v46, v47, v48, v49);
      LODWORD(v50) = 1;
    }

    else
    {
      v50 = (v24 >> 2) & 1;
    }
  }

  else
  {
    LODWORD(v50) = 0;
  }

  if (*(v8 + 346) == 1 && (v86 & 2) == 0)
  {
    if (v50)
    {
      raven::RavenPNTEstimator::Reset((v8 + 288));
    }

    return;
  }

  sub_1D0BAD0C8(&__p);
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = *(v8 + 112);
  v81 = 0;
  v82 = 0x7FF8000000000000;
  raven::RavenPNTEstimator::GetRavenStatus((v8 + 288), __src);
  memcpy(v83, __src, sizeof(v83));
  if (v83[104] == *(v8 + 344))
  {
    raven::RavenPNTEstimator::GetRavenSolution((v8 + 288), __src);
    memcpy(v84, __src, sizeof(v84));
    raven::RavenEstimator::GetRavenActivity((v8 + 288), __src);
    memcpy(v85, __src, sizeof(v85));
    if (v83[105] == 1)
    {
      LOWORD(v72) = 12;
      LOBYTE(v73) = 2;
      *__src = (*(v70 + 16))(&v70);
      *&__src[8] = v53;
      v59 = cnprint::CNLogFormatter::FormatWarning(v8 + 240, __src, "Estimator unhealthy; resetting...", v54, v55, v56, v57, v58, v69);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v65) = v59;
      }

      else
      {
        v65 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v72, &v73, "%s", v60, v61, v62, v63, v64, v65);
    }

    else if ((v50 & 1) == 0)
    {
      if (LOBYTE(v84[102]) == 1)
      {
        v67 = v84[105];
        if (v84[105] > 0.0)
        {
          *v51.i64 = v84[103];
          *__src = 0uLL;
          CNTimeSpan::SetTimeSpan(__src, 0, v51, v52);
          v73 = sqrt(v67);
          v72 = *__src;
          sub_1D0BAE3C4(&__p, v71, &v72, &v73, *__src, v68);
          goto LABEL_43;
        }
      }

      v66 = 0;
LABEL_41:
      sub_1D0BE3854(&__p, v71, v51, v52);
      if (v66)
      {
        v83[105] = 1;
        raven::RavenPNTEstimator::Reset((v8 + 288));
      }

LABEL_43:
      sub_1D0BAE448();
    }

    v66 = 1;
    goto LABEL_41;
  }

  if (v50)
  {
    raven::RavenPNTEstimator::Reset((v8 + 288));
  }
}

uint64_t raven::RavenPNTEstimator::HandleTimeMarkEvent(raven::RavenPNTEstimator *this, const raven::TimeMarkEvent *a2)
{
  v420 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  *(this + 152) = *(a2 + 24);
  *(this + 136) = v2;
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  *(this + 216) = *(a2 + 88);
  *(this + 200) = v5;
  *(this + 184) = v4;
  *(this + 168) = v3;
  if (*(this + 57) != 1)
  {
    v8 = 32;
    goto LABEL_112;
  }

  if (*(this + 58))
  {
    v8 = 0;
  }

  else
  {
    __p[0] = (*(*a2 + 16))(a2);
    __p[1] = v9;
    raven::RavenPNTEstimator::GetInitializationArgs(this, __p, v405, v10);
    if (v418 == 1)
    {
      if (raven::RavenPNTEstimator::Initialize(this, v405))
      {
        LOWORD(v395) = 12;
        LOBYTE(v374) = 4;
        __p[0] = (*(*a2 + 16))(a2);
        __p[1] = v11;
        v12 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, __p, "Failed to initialize");
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v18) = v12;
        }

        else
        {
          v18 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v395, &v374, "%s", v13, v14, v15, v16, v17, v18);
        v19 = 0;
        v8 = 32;
      }

      else
      {
        if ((*(this + 19656) & 1) == 0)
        {
          __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
        }

        if ((*(this + 19880) & 1) == 0)
        {
          raven::RavenPNTEstimator::InflateDevicePositionUncertainty(this, *(*(this + 146) + 1440));
          raven::RavenPNTEstimator::InflateDeviceVelocityUncertainty(this, *(*(this + 146) + 1448));
          if (raven::RavenPNTEstimator::UpdateFullStateEstimate(this, v29, v30, v31))
          {
            LOWORD(v395) = 12;
            LOBYTE(v374) = 4;
            __p[0] = (*(*a2 + 16))(a2);
            __p[1] = v32;
            v33 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, __p, "Could not update full states upon receipt of unreliable attitude event");
            if (*(this + 2735) >= 0)
            {
              LOBYTE(v39) = v33;
            }

            else
            {
              v39 = *(this + 339);
            }

            cnprint::CNPrinter::Print(&v395, &v374, "%s", v34, v35, v36, v37, v38, v39);
            raven::RavenPNTEstimator::Reset(this);
          }
        }

        LOWORD(v374) = 12;
        v419[0].i8[0] = 3;
        v395 = (*(*a2 + 16))(a2);
        *&v396 = v20;
        sub_1D0B751F4(__p, off_1E83D7F78[v417]);
        if (SHIBYTE(v336) >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        v22 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v395, "Estimator initialized from %s solution with validity time %.3lf", v21, *&v405[8] + *v405);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v28) = v22;
        }

        else
        {
          v28 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v374, v419, "%s", v23, v24, v25, v26, v27, v28);
        if (SHIBYTE(v336) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = 0;
        v19 = 1;
      }
    }

    else
    {
      v8 = 0;
      v19 = 0;
    }

    if (v418 == 1)
    {
      sub_1D0D857FC(v416);
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_112;
    }
  }

  v376 = 0x100000003;
  v374 = &unk_1F4CDEB28;
  v377 = &v378;
  v375 = xmmword_1D0E7DCC0;
  v379 = 0;
  v378 = 0uLL;
  v406.i64[0] = 0x300000003;
  *v405 = &unk_1F4CD5DD0;
  v406.i64[1] = &v407;
  *&v405[8] = xmmword_1D0E76C10;
  v407 = 0u;
  v408 = 0u;
  v409 = 0u;
  v410 = 0u;
  v411.i64[0] = 0;
  v40 = 72;
  if (*(this + 2760) == 1)
  {
    v40 = 1368;
  }

  *v407.i64 = *(*(this + 146) + v40) * *(*(this + 146) + v40);
  v409.i64[0] = v407.i64[0];
  v411.i64[0] = v407.i64[0];
  sub_1D0BA002C(__p, 8);
  v342 = 0;
  v341 = 0u;
  v340 = 0u;
  __p[0] = &unk_1F4CE1D10;
  v41 = this + 2760;
  v338 = (*(*a2 + 16))(a2);
  v339 = v42;
  *&v340 = this + 2920;
  *(&v340 + 1) = this + 14824;
  *&v341 = this + 14840;
  *(&v341 + 1) = this + 2760;
  v342 = this + 2800;
  v372 = (*(*a2 + 16))(a2);
  v373 = v48;
  if (*(this + 2760) != 1 || (v49 = *(this + 1859), sqrt(v49[22] * v49[22] + v49[21] * v49[21] + v49[23] * v49[23]) > *(*(this + 146) + 1360)) && !raven::RavenPNTEstimator::IsUserStationary(this))
  {
    if ((*&v405[8] & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v397 = 0x100000003;
    v395 = &unk_1F4CDEB28;
    v50 = v399;
    v398 = v399;
    *&v396 = *&v405[8] | 0x100000000;
    DWORD2(v396) = *&v405[8];
    HIDWORD(v396) = *&v405[8];
    if (*&v405[8] > 3u)
    {
      v51 = &v399[*&v405[8]];
      bzero(v399, 16 * ((*&v405[8] - 1) >> 1));
      *(v51 - 2) = 0;
      *(v51 - 1) = 0;
    }

    else if (*&v405[8])
    {
      bzero(v399, 8 * *&v405[8]);
    }

    if (*(this + 61736))
    {
      if (*(this + 16918) == 174)
      {
        v419[0].i16[0] = 2;
        v343[0] = 2;
        v327 = v373 + v372;
        cnprint::CNPrinter::Print(v419, v343, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v43, v44, v45, v46, v47, SLOBYTE(v327));
      }

      else if (*(this + 61737) == 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v50) <= 1)
        {
          v419[0].i16[0] = 2;
          v343[0] = 1;
          v329 = v373 + v372;
          cnprint::CNPrinter::Print(v419, v343, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v57, v58, v59, v60, v61, SLOBYTE(v329));
        }
      }

      else
      {
        v62 = sub_1D0B7C8AC(&v372, this + 7718);
        if (!v62)
        {
          v419[0] = 0uLL;
          sub_1D0D93494();
        }

        if (cnprint::CNPrinter::GetLogLevel(v62) <= 1)
        {
          v419[0].i16[0] = 2;
          v343[0] = 1;
          v330 = v373 + v372;
          v331 = *(this + 7719) + *(this + 7718);
          cnprint::CNPrinter::Print(v419, v343, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v63, v64, v65, v66, v67, SLOBYTE(v330));
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v50) <= 1)
    {
      v419[0].i16[0] = 2;
      v343[0] = 1;
      v328 = v373 + v372;
      cnprint::CNPrinter::Print(v419, v343, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v52, v53, v54, v55, v56, SLOBYTE(v328));
    }

    v419[0].i16[0] = 12;
    v343[0] = 4;
    v395 = (*(*a2 + 16))(a2);
    *&v396 = v68;
    v69 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v395, "Could not add measurement - device-to-user position");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v75) = v69;
    }

    else
    {
      v75 = *(this + 339);
    }

    cnprint::CNPrinter::Print(v419, v343, "%s", v70, v71, v72, v73, v74, v75);
  }

  __p[0] = &unk_1F4CE4300;
  if (SHIBYTE(v337) < 0)
  {
    operator delete(v336);
  }

  if (*(this + 1848) == 1)
  {
    v76 = *(this + 1960);
    if ((v76 > 3 || v76 == 1) && *(this + 1208) == 1 && ((*(this + 1320) - 4) & 0xFA) == 0)
    {
      *v405 = (*(*a2 + 16))(a2);
      *&v405[8] = v122;
      *__p = *(this + 5);
      v124 = CNTimeSpan::operator-(v405, __p, *__p, v123);
      v332 = v126;
      v333 = v124;
      v402 = 0x100000003;
      v400 = &unk_1F4CDEB28;
      v403 = v404;
      v401 = xmmword_1D0E7DCC0;
      memset(v404, 0, sizeof(v404));
      v397 = 0x300000003;
      v395 = &unk_1F4CD5DD0;
      v398 = v399;
      v396 = xmmword_1D0E76C10;
      v127 = 0uLL;
      memset(v399, 0, sizeof(v399));
      if ((*(this + 1208) & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }

      if (*(this + 1320) != 5 || *(this + 2592) != 1 || *(this + 2704) - 3 > 1)
      {
        goto LABEL_102;
      }

      if (*v41 == 1)
      {
        goto LABEL_113;
      }

      if (raven::RavenPNTEstimator::IsUserStationary(this))
      {
LABEL_102:
        v128 = *v41;
        v129 = sub_1D0D6F66C;
        if (!*v41)
        {
          v141 = *(*(this + 1859) + 192);
          MaximumComfortableTurningRate = raven::RavenPNTEstimator::GetMaximumComfortableTurningRate(this, v127, v125);
          v143 = *(this + 146);
          v144 = *(v143 + 304) / fmax(fabs(v141), 0.000000015);
          if (v144 < MaximumComfortableTurningRate)
          {
            MaximumComfortableTurningRate = v144;
          }

          v145 = MaximumComfortableTurningRate * *(v143 + 72) * (MaximumComfortableTurningRate * *(v143 + 72));
          v146 = v398;
          *v398 = v145;
          v147 = SHIDWORD(v396);
          v146[SHIDWORD(v396) + 1] = v145;
          v146[2 * v147 + 2] = v145;
          goto LABEL_162;
        }

        if (v128 != 1)
        {
          if (v128 == 2)
          {
            __assert_rtn("HandleTimeMarkEvent", "ravenpntestimator.cpp", 4381, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
          }

          v130 = 1;
LABEL_159:
          v210 = v129;
          goto LABEL_163;
        }

LABEL_113:
        v140 = *(this + 2000) != 1 || *(this + 2112) - 3 < 0xFFFFFFFE;
        v391 = 0x100000003;
        v390 = xmmword_1D0E7DCC0;
        v389 = &unk_1F4CDEB28;
        v392 = &v393;
        v148 = *(this + 1859);
        v393 = *(v148 + 24);
        v394 = *(v148 + 40);
        v149 = *(v148 + 48);
        v150 = *(v148 + 56);
        v151 = *(v148 + 64);
        v152 = *(v148 + 72);
        v153 = sqrt(v150 * v150 + v149 * v149 + v151 * v151 + v152 * v152);
        v154 = 1.0;
        v155 = 0.0;
        v156 = 0.0;
        v157 = 0.0;
        v158 = 0.0;
        v159 = 1.0;
        if (fabs(v153) >= 2.22044605e-16)
        {
          v156 = v149 / v153;
          v157 = v150 / v153;
          v158 = v151 / v153;
          v159 = v152 / v153;
        }

        *v371 = v156;
        *&v371[1] = v157;
        *&v371[2] = v158;
        *&v371[3] = v159;
        v160 = sqrt(v157 * v157 + v156 * v156 + v158 * v158 + v159 * v159);
        v161 = 0.0;
        v162 = 0.0;
        if (fabs(v160) >= 2.22044605e-16)
        {
          v155 = -v156 / v160;
          v161 = -v157 / v160;
          v162 = -v158 / v160;
          v154 = v159 / v160;
        }

        *v370 = v155;
        *&v370[1] = v161;
        *&v370[2] = v162;
        *&v370[3] = v154;
        cnrotation::CNRotation::RotationMatrix(v371, v405);
        cnrotation::CNRotation::RotationMatrix(v370, __p);
        v385 = 0x100000003;
        v384 = xmmword_1D0E7DCC0;
        v383 = &unk_1F4CDEB28;
        v386 = &v387;
        v163 = *(this + 1859);
        v387 = *(v163 + 200);
        v164.f64[1] = *(&v387 + 1);
        v388 = *(v163 + 216);
        v164.f64[0] = *(v163 + 192);
        sub_1D0C51FB4(&v383, v380, v164);
        sub_1D0C51578(3, 1, v366);
        v363[0] = &unk_1F4CEF658;
        v363[1] = 0;
        v364 = vdupq_n_s64(0x7FF8000000000000uLL);
        v363[2] = 0;
        v365 = 0x7FF8000000000000;
        v374 = (*(*a2 + 16))(a2);
        *&v375 = v165;
        if (!sub_1D0B87CF0(this + 44888, &v374, v363, v166, v167))
        {
          v168 = v368.i64[1];
          *v368.i64[1] = v364;
          *(v168 + 16) = v365;
        }

        v359 = 0x100000003;
        v358 = xmmword_1D0E7DCC0;
        v357 = &unk_1F4CDEB28;
        v360 = &v361;
        v169 = *(this + 1859);
        v361 = *(v169 + 168);
        v362 = *(v169 + 184);
        sub_1D0D5625C(v405, &v389, v356);
        sub_1D0D562E0(v366, &v357, v355);
        sub_1D0D6F584(v380, v355, v354);
        sub_1D0C4E2D8(v356, v355, v351);
        sub_1D0C4E2D8(v356, v354, v350);
        sub_1D0D6F608(v348, v350);
        v170 = *(this + 146);
        v171 = v367;
        v172 = 0.0;
        v173 = 0.0;
        if (v367 >= 1)
        {
          v174 = v368.i64[1];
          do
          {
            v175 = *v174++;
            v173 = v173 + v175 * v175;
            --v171;
          }

          while (v171);
        }

        v176 = DWORD2(v358);
        if (SDWORD2(v358) >= 1)
        {
          v172 = 0.0;
          v177 = v360;
          do
          {
            v178 = *v177++;
            v172 = v172 + v178 * v178;
            --v176;
          }

          while (v176);
        }

        v179 = v170[45] * v170[45] + v170[46] * *(*(this + 1859) + 192) * (v170[46] * *(*(this + 1859) + 192)) + v173 * v172;
        if (v179 <= v170[47] * v170[47])
        {
          v179 = v170[47] * v170[47];
        }

        v180 = v179;
        sub_1D0BFA9C4(3, 3, &v374);
        v181 = v349;
        v182 = v377;
        *v377 = *v349 * *v349;
        v183 = SHIDWORD(v375);
        v184 = &v182[SHIDWORD(v375)];
        v184[1] = v181[1] * v181[1];
        v185 = v181[2] * v181[2];
        v186 = &v182[2 * v183];
        v186[2] = v185;
        v187 = *v182;
        if (*v182 <= v180)
        {
          v187 = v180;
        }

        *v182 = v187;
        v188 = v184[1];
        if (v188 <= v180)
        {
          v188 = v180;
        }

        v184[1] = v188;
        v189 = v186[2];
        if (v189 <= v180)
        {
          v189 = v180;
        }

        v186[2] = v189;
        sub_1D0C1B688(__p, &v374, &v372);
        sub_1D0C1B708(__p, v343);
        sub_1D0C1B688(&v372, v343, v419);
        sub_1D0B894B0(&v395, v419);
        sub_1D0BFA800(v351);
        v190 = v193.f64[0];
        v191 = *(*(this + 1859) + 192);
        v192 = vabdd_f64(v193.f64[0], v191);
        v193.f64[0] = (v192 + v192) * (v192 / fmax(v193.f64[0], 0.5)) * 10.0;
        v194 = 0.1;
        if (v193.f64[0] >= 0.1)
        {
          v194 = v193.f64[0];
        }

        if (v193.f64[0] <= 10.0)
        {
          v195 = v194;
        }

        else
        {
          v195 = 10.0;
        }

        *(this + 348) = v195;
        v196 = v352;
        if (v352 < 1)
        {
          v193.f64[0] = 0.0;
        }

        else
        {
          v197 = v353;
          v193.f64[0] = 0.0;
          v198 = v386;
          do
          {
            v199 = *v197++;
            v200 = v199;
            v201 = *v198++;
            v193.f64[0] = v193.f64[0] + v200 * v201;
            --v196;
          }

          while (v196);
        }

        sub_1D0C51FB4(&v383, &v372, v193);
        sub_1D0C4E2D8(v351, &v372, v419);
        sub_1D0BFA800(v419);
        v203 = v202;
        v204 = fmax(v190, 0.625);
        v205 = fmax(v190, 20.0);
        if ((atomic_load_explicit(&qword_1EE053A88, memory_order_acquire) & 1) == 0)
        {
          v325 = __cxa_guard_acquire(&qword_1EE053A88);
          if (v325)
          {
            cnstatistics::InverseGamma(v325, 0.95, 0.5, 2.0);
            qword_1EE053A80 = v326;
            __cxa_guard_release(&qword_1EE053A88);
          }
        }

        if (!v140)
        {
          *&v208 = 0x100000001;
          *(&v208 + 1) = 0x100000001;
          v401 = v208;
          if (*(this + 2000) != 1 || (v209 = 0.0, *(this + 2112) - 1 >= 2))
          {
            v209 = v190;
          }

          v130 = 0;
          *v403 = v209;
          v396 = v208;
          *v398 = fmax((v209 - v191) * (v209 - v191), 1.0);
          v129 = sub_1D0D6B8A0;
          goto LABEL_159;
        }

        v206 = *(this + 349);
        if (v203 * v203 / v180 >= *&qword_1EE053A80 || v203 / v204 >= 0.0874886635 || v192 / v205 >= 0.363970234)
        {
          v207 = fmin(v206 * 1.25892541, 100.0);
        }

        else
        {
          v207 = fmax(v206 * 0.977237221, 0.01);
        }

        *(this + 349) = v207;
LABEL_162:
        v210 = sub_1D0D6F66C;
        v130 = 1;
LABEL_163:
        sub_1D0D947B8(v405);
        v413.i32[2] = 0;
        if (v130)
        {
          sub_1D0D947B8(__p);
          sub_1D0D84320(v405, v405, __p);
          sub_1D0D70D1C(__p);
          if (v413.i32[2])
          {
            sub_1D0D845F0();
          }

          v407.i64[0] = (*(*a2 + 16))(a2);
          v407.i64[1] = v211;
          v408.i64[0] = this + 2920;
          v408.i64[1] = this + 14824;
          v409.i64[0] = this + 14840;
          v409.i64[1] = this + 2760;
          v410.i64[0] = this + 2800;
          __p[0] = (*(*a2 + 16))(a2);
          __p[1] = v212;
          v215 = sub_1D0B87CF0(this + 44888, __p, &v410.i64[1], v213, v214);
          if (v215)
          {
            if (cnprint::CNPrinter::GetLogLevel(v215) <= 1)
            {
              LOWORD(v374) = 12;
              v419[0].i8[0] = 1;
              __p[0] = (*(*a2 + 16))(a2);
              __p[1] = v216;
              v217 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, __p, "Could not get rate gyro measurements for device-user %s measurement", "velocity");
              if (*(this + 2735) >= 0)
              {
                LOBYTE(v223) = v217;
              }

              else
              {
                v223 = *(this + 339);
              }

              cnprint::CNPrinter::Print(&v374, v419, "%s", v218, v219, v220, v221, v222, v223);
            }

            sub_1D0D84488(v405);
            goto LABEL_112;
          }
        }

        else
        {
          sub_1D0BA002C(__p, 26);
          v342 = 0;
          v341 = 0u;
          v340 = 0u;
          __p[0] = &unk_1F4CE09C0;
          v224 = sub_1D0D84640(v405, v405, __p);
          __p[0] = &unk_1F4CE4300;
          if (SHIBYTE(v337) < 0)
          {
            operator delete(v336);
          }

          if (v413.i32[2] != 1)
          {
            sub_1D0D845F0();
          }

          v407.i64[0] = (*(*a2 + 16))(a2, v224);
          v407.i64[1] = v225;
          v408.i64[0] = this + 2920;
          v408.i64[1] = this + 14824;
          v409.i64[0] = this + 14840;
          v409.i64[1] = this + 2760;
          v410.i64[0] = this + 2800;
        }

        __p[0] = (*(*a2 + 16))(a2);
        __p[1] = v226;
        if (v130)
        {
          if (v413.i32[2])
          {
            sub_1D0D845F0();
          }

          if (!sub_1D0D70D8C(this + 61736, __p, &v400, &v395, v210, v405, v227, v228))
          {
            goto LABEL_188;
          }

          v419[0].i16[0] = 12;
          LOBYTE(v372) = 4;
          v374 = (*(*a2 + 16))(a2);
          *&v375 = v229;
          v230 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v374, "Could not add measurement - device-to-user velocity");
          if (*(this + 2735) >= 0)
          {
            LOBYTE(v236) = v230;
          }

          else
          {
            v236 = *(this + 339);
          }
        }

        else
        {
          if (v413.i32[2] != 1)
          {
            sub_1D0D845F0();
          }

          if (!sub_1D0D6BF40(this + 61736, __p, &v400, &v395, v210, v405, v227, v228))
          {
            goto LABEL_188;
          }

          v419[0].i16[0] = 12;
          LOBYTE(v372) = 4;
          v374 = (*(*a2 + 16))(a2);
          *&v375 = v237;
          v238 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v374, "Could not add measurement - user speed from device");
          if (*(this + 2735) >= 0)
          {
            LOBYTE(v236) = v238;
          }

          else
          {
            v236 = *(this + 339);
          }
        }

        cnprint::CNPrinter::Print(v419, &v372, "%s", v231, v232, v233, v234, v235, v236);
LABEL_188:
        sub_1D0D84488(v405);
        goto LABEL_62;
      }

      sub_1D0BFA9C4(3, 3, __p);
      v344 = 0x100000003;
      *&v343[8] = xmmword_1D0E7DCC0;
      *v343 = &unk_1F4CDEB28;
      v345 = &v346;
      v239 = *(this + 1859);
      v346 = *(v239 + 200);
      v347 = *(v239 + 216);
      v406.i64[0] = 0x100000003;
      *&v405[8] = xmmword_1D0E7DCC0;
      *v405 = &unk_1F4CDEB28;
      v406.i64[1] = &v407;
      v376 = 0x100000003;
      v375 = xmmword_1D0E7DCC0;
      v374 = &unk_1F4CDEB28;
      v377 = &v378;
      sub_1D0C51578(3, 1, v419);
      sub_1D0B894B0(&v374, v419);
      *v377 = sqrt(*(*(this + 1892) + 200 * *(this + 3781) + 200));
      sub_1D0D562E0(v343, &v374, v419);
      sub_1D0B894B0(v405, v419);
      v240 = *&v405[16];
      v241 = 0.0;
      if (*&v405[16] >= 1)
      {
        v242 = v406.i64[1];
        do
        {
          v243 = *v242++;
          v241 = v241 + v243 * v243;
          --v240;
        }

        while (v240);
      }

      sub_1D0C51578(3, 1, v419);
      sub_1D0B894B0(&v374, v419);
      v377[1] = sqrt(*(*(this + 1892) + 208 * *(this + 3781) + 208));
      sub_1D0D562E0(v343, &v374, v419);
      sub_1D0B894B0(v405, v419);
      v244 = *&v405[16];
      v245 = 0.0;
      if (*&v405[16] >= 1)
      {
        v246 = v406.i64[1];
        do
        {
          v247 = *v246++;
          v245 = v245 + v247 * v247;
          --v244;
        }

        while (v244);
      }

      sub_1D0C51578(3, 1, v419);
      sub_1D0B894B0(&v374, v419);
      v377[2] = sqrt(*(*(this + 1892) + 216 * *(this + 3781) + 216));
      sub_1D0D562E0(v343, &v374, v419);
      v248 = v241 + v245;
      v250 = sub_1D0B894B0(v405, v419);
      v249 = *&v405[16];
      v250.n128_u64[0] = 0;
      if (*&v405[16] >= 1)
      {
        v251 = v406.i64[1];
        do
        {
          v252 = *v251++;
          v250.n128_f64[0] = v250.n128_f64[0] + v252 * v252;
          --v249;
        }

        while (v249);
      }

      v253 = fmin(sqrt(v248 + v250.n128_f64[0]), 1.57079633);
      v254 = *(this + 1859);
      v255 = *(v254 + 168);
      v250.n128_u64[0] = *(v254 + 184);
      v256 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v255, v255).f64[1]) + v255.f64[0] * v255.f64[0] + v250.n128_f64[0] * v250.n128_f64[0]);
      if (fabs(v256) < 2.22044605e-16)
      {
        LOWORD(v374) = 12;
        v419[0].i8[0] = 4;
        *v405 = (*(*a2 + 16))(a2);
        *&v405[8] = v257;
        v258 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v405, "Position vector has zero magnitude");
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v264) = v258;
        }

        else
        {
          v264 = *(this + 339);
        }

LABEL_232:
        cnprint::CNPrinter::Print(&v374, v419, "%s", v259, v260, v261, v262, v263, v264);
        v8 |= 1uLL;
        goto LABEL_112;
      }

      v391 = 0x100000003;
      v390 = xmmword_1D0E7DCC0;
      v389 = &unk_1F4CDEB28;
      v392 = &v393;
      v393 = vdivq_f64(v255, vdupq_lane_s64(*&v256, 0));
      v250.n128_f64[0] = v250.n128_f64[0] / v256;
      v394 = v250.n128_u64[0];
      v265 = raven::RavenPNTEstimator::GetMaximumComfortableTurningRate(this, v250, v393);
      v366[0] = &unk_1F4CEF658;
      v366[1] = 0;
      v368 = vdupq_n_s64(0x7FF8000000000000uLL);
      v367 = 0;
      v369 = 0x7FF8000000000000;
      *v405 = (*(*a2 + 16))(a2);
      *&v405[8] = v266;
      if (!sub_1D0B87CF0(this + 44888, v405, v366, v267, v268))
      {
        v376 = 0x100000003;
        v375 = xmmword_1D0E7DCC0;
        v374 = &unk_1F4CDEB28;
        v377 = &v378;
        v378 = v368;
        v379 = v369;
        v271 = *(this + 1859);
        _Q1 = v271[4];
        _D3 = _Q1.f64[1];
        __asm { FMLA            D2, D3, V1.D[1] }

        v279 = sqrt(_D2);
        if (fabs(v279) >= 2.22044605e-16)
        {
          v282 = vdupq_lane_s64(*&v279, 0);
          v280 = vdivq_f64(_Q1, v282);
          v281 = vdivq_f64(v271[3], v282);
        }

        else
        {
          v280 = xmmword_1D0E7DCB0;
          v281 = 0uLL;
        }

        v419[0] = v281;
        v419[1] = v280;
        sub_1D0B88A54(v419, &v389, v405);
        v283 = DWORD2(v375);
        if (SDWORD2(v375) < 1)
        {
          v265 = 0.0;
        }

        else
        {
          v284 = v377;
          v265 = 0.0;
          v285 = v406.i64[1];
          do
          {
            v286 = *v284++;
            v287 = v286;
            v288 = *v285++;
            v265 = v265 + v287 * v288;
            --v283;
          }

          while (v283);
        }
      }

      *v269.i64 = fabs(v265) * 3.28425;
      v270.i64[0] = 0x3FA999999999999ALL;
      v289 = fmax(*v269.i64, 0.05);
      v290 = v332 + v333;
      v291 = v290 * raven::RavenPNTEstimator::GetComfortableAcceleration(this, v269, v270);
      v292 = v253 * v291 * (v253 * v291);
      v293 = v337;
      *v337 = v292 + 0.0025 + v289 * v289;
      v294 = SHIDWORD(v336);
      v293[SHIDWORD(v336) + 1] = v291 * v291 + 0.0025;
      v293[2 * v294 + 2] = v292 * 0.0025 + 0.0025;
      if (!cnprint::CNPrinter::GetLogLevel(v295))
      {
        LOWORD(v374) = 12;
        v419[0].i8[0] = 0;
        *v405 = (*(*a2 + 16))(a2);
        *&v405[8] = v296;
        v297 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v405, "uesr-device vel,speed,%.3lf,dt,%.2f,across,%.3lf,along,%.3lf,up,%.3lf,omega,%.3lf,acc,%.2lf,vib,%.2lf,dot,%.2lf,turn,%.2lf", *(*(this + 1859) + 192), v290, sqrt(*v337), sqrt(v337[SHIDWORD(v336) + 1]), sqrt(v337[2 * SHIDWORD(v336) + 2]), v265 * 57.2957795, v291, 0.05, sqrt(v292), v289);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v303) = v297;
        }

        else
        {
          v303 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v374, v419, "%s", v298, v299, v300, v301, v302, v303);
      }

      sub_1D0BBA094(&v383, v343);
      sub_1D0D562E0(&v383, &v389, v380);
      v304 = v381;
      v305 = 0.0;
      if (v381 >= 1)
      {
        v306 = v382;
        do
        {
          v307 = *v306++;
          v305 = v305 + v307 * v307;
          --v304;
        }

        while (v304);
      }

      v308 = sqrt(v305);
      if (v308 < 0.000000015)
      {
        LOWORD(v374) = 12;
        v419[0].i8[0] = 4;
        *v405 = (*(*a2 + 16))(a2);
        *&v405[8] = v323;
        v324 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v405, "Cross product has zero magnitude");
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v264) = v324;
        }

        else
        {
          v264 = *(this + 339);
        }

        goto LABEL_232;
      }

      v309 = v382;
      *v382 = vdivq_f64(*v382, vdupq_lane_s64(*&v308, 0));
      v309[1].f64[0] = v309[1].f64[0] / v308;
      v376 = 0x300000003;
      v375 = xmmword_1D0E76C10;
      v374 = &unk_1F4CD5DD0;
      v377 = &v378;
      sub_1D0C51CC8(&v374, ":", 0, v405);
      sub_1D0D2D13C(v405, v380);
      sub_1D0C51CC8(&v374, ":", 1, v405);
      sub_1D0D2D13C(v405, &v383);
      sub_1D0C51CC8(&v374, ":", 2, v405);
      sub_1D0D2D13C(v405, &v389);
      sub_1D0C1B688(&v374, __p, v419);
      sub_1D0C1B708(&v374, &v372);
      sub_1D0C1B688(v419, &v372, v405);
      sub_1D0B894B0(&v395, v405);
      sub_1D0BA002C(v405, 11);
      v410 = 0uLL;
      v409 = 0u;
      v408 = 0u;
      *v405 = &unk_1F4CE1E00;
      v407.i64[0] = (*(*a2 + 16))(a2);
      v407.i64[1] = v310;
      v408.i64[0] = this + 2920;
      v408.i64[1] = this + 14824;
      v409.i64[0] = this + 14840;
      v409.i64[1] = this + 2760;
      v410.i64[0] = this + 2800;
      v419[0].i64[0] = (*(*a2 + 16))(a2);
      v419[0].i64[1] = v311;
      *&v410.i64[1] = v332 + v333;
      if (sub_1D0D6F0B8(this + 61736, v419[0].i64, &v400, &v395, v405, v312, v313, v314))
      {
        LOWORD(v357) = 12;
        v356[0] = 4;
        v372 = (*(*a2 + 16))(a2);
        v373 = v315;
        v316 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v372, "Could not add measurement - device-to-user velocity");
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v322) = v316;
        }

        else
        {
          v322 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v357, v356, "%s", v317, v318, v319, v320, v321, v322);
      }

      *v405 = &unk_1F4CE4300;
      if (v406.i8[15] < 0)
      {
        operator delete(*&v405[16]);
      }
    }
  }

LABEL_62:
  v77 = (*(*a2 + 16))(a2);
  v79 = *&v78;
  __p[0] = v77;
  __p[1] = v78;
  *v405 = *(this + 5);
  v81 = CNTimeSpan::operator-(__p, v405, *v405, v80);
  v84 = v83 + v81;
  if (v84 >= 0.0)
  {
    v97 = *(this + 146);
    v82.i64[0] = *(v97 + 872);
    v98 = vcvtpd_s64_f64(v84 / *v82.i64);
    *(this + 328) = 0u;
    *(this + 344) = 0u;
    *(this + 360) = 0u;
    *(this + 376) = 0u;
    *(this + 392) = 0u;
    *(this + 408) = 0u;
    *(this + 424) = 0u;
    *(this + 440) = 0u;
    *(this + 456) = 0u;
    *(this + 472) = 0u;
    *(this + 488) = 0u;
    *(this + 504) = 0u;
    *(this + 520) = 0u;
    *(this + 536) = 0u;
    *(this + 552) = 0u;
    *(this + 568) = 0u;
    *(this + 584) = 0u;
    *(this + 600) = 0u;
    *(this + 616) = 0u;
    *(this + 632) = 0u;
    *(this + 648) = 0u;
    *(this + 664) = 0u;
    *(this + 680) = 0u;
    *(this + 696) = 0u;
    *(this + 708) = 0u;
    v99 = *(v97 + 872);
    *&v396 = 0;
    v395 = 0;
    CNTimeSpan::SetTimeSpan(&v395, 0, v99, v82);
    v100.i64[0] = *(v97 + 880);
    *&v375 = 0;
    v374 = 0;
    CNTimeSpan::SetTimeSpan(&v374, 0, v100, v101);
    v106 = v98 - 1;
    if (v98 >= 1)
    {
      v107 = v79;
      if (v77)
      {
        v108 = 1;
      }

      else
      {
        v108 = (*&v79 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      }

      v109 = v108;
      v334 = vdupq_n_s64(0x7FF8000000000000uLL);
      while (1)
      {
        if ((v419[0] = *(this + 5), v372 = CNTimeSpan::operator+(v419, &v395, v419[0], v105), v373 = v110, (v113 = CNTimeSpan::operator+(&v372, &v374, v111, v112)) != 0) || (*&v114 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v109)
        {
          v116 = v113 == v77 ? v107 <= v114 : v113 > v77;
        }

        else
        {
          v116 = v107 <= v114;
        }

        v117 = v116 ? __p : &v372;
        *v343 = *v117;
        *v405 = 0uLL;
        v406 = v334;
        v407 = v334;
        v408 = v334;
        v409 = v334;
        v410 = v334;
        v411 = v334;
        v412 = v334;
        v413 = v334;
        v414 = v334;
        v415 = v334;
        EstimatorPredictAndUpdateArguments = raven::RavenPNTEstimator::GetEstimatorPredictAndUpdateArguments(this, v419, v343, v405, *v334.i64, v115);
        if (!EstimatorPredictAndUpdateArguments)
        {
          break;
        }

        v400 = raven::RavenPNTEstimator::PredictAndUpdate(this, v405, v119, v120);
        v8 |= v400;
        if (sub_1D0BAAFCC(&v400))
        {
          goto LABEL_112;
        }

        if (v106)
        {
          v121 = v116;
        }

        else
        {
          v121 = 1;
        }

        --v106;
        if (v121)
        {
          goto LABEL_111;
        }
      }

      if (cnprint::CNPrinter::GetLogLevel(EstimatorPredictAndUpdateArguments) <= 1)
      {
        LOWORD(v400) = 12;
        LOBYTE(v389) = 1;
        v131 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, __p, "Could not get predict and update arguments");
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v137) = v131;
        }

        else
        {
          v137 = *v131;
        }

        cnprint::CNPrinter::Print(&v400, &v389, "%s", v132, v133, v134, v135, v136, v137);
      }
    }

LABEL_111:
    raven::RavenEstimator::StoreHistoricalSolution(this, v102, v103, v104);
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(v81) <= 1)
    {
      LOWORD(v395) = 12;
      LOBYTE(v374) = 1;
      *v405 = (*(*a2 + 16))(a2);
      *&v405[8] = v85;
      v87 = *(this + 10);
      v86 = *(this + 11);
      v88 = (*(*a2 + 16))(a2);
      v90 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v405, "Estimator time is greater than event time,%.3lf > %.3lf", v86 + v87, v89 + v88);
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v96) = v90;
      }

      else
      {
        v96 = *v90;
      }

      cnprint::CNPrinter::Print(&v395, &v374, "%s", v91, v92, v93, v94, v95, v96);
    }

    v8 |= 0x40uLL;
  }

LABEL_112:
  v138 = *MEMORY[0x1E69E9840];
  return v8;
}

void raven::RavenSolutionActiveObject::HandleEvent(raven::RavenSolutionActiveObject *this, const raven::RavenSolutionEvent *a2)
{
  raven::RavenSolutionActiveObject::WriteRavenSolutionToProtobuf(this, a2);
  if (*(a2 + 208) == 4)
  {
    sub_1D0BAD0C8(v11);
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v17 = 0;
    v18 = 0x7FF8000000000000;
    v19 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    v26 = 0x7FF8000000000000;
    v27 = 0;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
    v31 = 0;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    *&v32[796] = 0x7FF8000000000000;
    v33 = 0x7FF8000000000000;
    v34 = 0;
    v35 = 0x7FF8000000000000;
    bzero(v32, 0x318uLL);
    v46 = 0;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v47 = 0x7FF8000000000000;
    v48 = 0;
    v49 = 0x7FF8000000000000;
    v50 = vdupq_n_s64(0x7FF8000000000000uLL);
    v51 = v50;
    v52 = v50;
    v53 = v50;
    v54 = 0;
    v55 = 0x7FF8000000000000;
    v56 = v50;
    v57 = v50;
    v58 = v50;
    v59 = v50;
    v60 = v50;
    v61 = v50;
    v62 = 0x7FF8000000000000;
    v63 = 0;
    v64 = v50;
    v65 = v50;
    v66 = v50;
    v67 = v50;
    v68 = 0x7FF8000000000000;
    v69 = 0;
    v70 = v50;
    v71 = v50;
    v72 = v50;
    v73 = v50;
    v74 = 0x7FF8000000000000;
    v75 = 0;
    v76 = v50;
    v77 = v50;
    v78 = v50;
    v79 = v50;
    v80 = v50;
    v81 = v50;
    v82 = v50;
    v83 = 0;
    v84 = 0x7FF8000000000000;
    v85 = v50;
    v86 = v50;
    v87 = v50;
    v88 = v50;
    v89 = 0;
    v90 = 0x7FF8000000000000;
    v91 = v50;
    v92 = v50;
    v93 = v50;
    v94 = v50;
    v95 = 0;
    v96 = 0x7FF8000000000000;
    v97 = v50;
    v98 = v50;
    v99 = v50;
    v100 = v50;
    v101 = 0;
    v102 = 0x7FF8000000000000;
    v103 = v50;
    v104 = v50;
    v110 = 0;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v111 = 0x7FF8000000000000;
    v112 = 0;
    v113 = 0x3FF0000000000000;
    v138 = 0;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    memset(v137, 0, sizeof(v137));
    v139 = 0x3FF0000000000000;
    v140 = 0u;
    v141 = 0u;
    v142 = 0x3FF0000000000000;
    v143 = 0u;
    v144 = 0u;
    v145 = 0x3FE0000000000000;
    v146 = 0x3FE0000000000000;
    v147 = 0;
    if (*(*(this + 42) + 3736) == 1)
    {
      v10 = *(this + 7);
      raven::RavenSolutionActiveObject::GetRavenSolution(this, &v10, v11);
    }

    std::mutex::lock((this + 11320));
    if (*(a2 + 209) == 2)
    {
      if (!*(this + 344) || sub_1D0B8E6A8(a2 + 146, this + 190))
      {
        memcpy(this + 360, a2 + 8, 0xA51uLL);
      }

      *(this + 344) = 1;
    }

    raven::RavenPredictor::HandleEvent((this + 3008), a2, v4, v5, v6, v7, v8, v9);
    std::mutex::unlock((this + 11320));
  }
}

void raven::RavenSolutionActiveObject::WriteRavenSolutionToProtobuf(cnlogging::ProtobufOutputStream **this, const raven::RavenSolutionEvent *a2)
{
  if (*(this[42] + 3708) == 1 && this[1406])
  {
    CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v11);
    v14 |= 1u;
    v5 = v12;
    if (!v12)
    {
      operator new();
    }

    v6 = *(v12 + 44);
    *(v12 + 8) = *(a2 + 5) + *(a2 + 4);
    v7 = *(a2 + 2) + *(a2 + 1);
    *(v5 + 44) = v6 | 5;
    *(v5 + 24) = v7;
    v14 |= 2u;
    v8 = v13;
    if (!v13)
    {
      operator new();
    }

    *(v13 + 320) |= 2u;
    v9 = *(v8 + 272);
    if (!v9)
    {
      operator new();
    }

    v10 = *(v9 + 8);
    *(v9 + 28) |= 1u;
    if (!v10)
    {
      operator new();
    }

    raven::ConvertRavenSolutionEventToProtobuf(a2, v10, v4);
    cnlogging::ProtobufOutputStream::append(this[1406], v11);
    cnlogging::ProtobufOutputStream::flush(this[1406]);
    CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v11);
  }
}

void sub_1D0BB6330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(int8x16_t *this, const raven::MovingStateEvent *a2)
{
  if (this[3].i8[9] != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (this[3].i8[10] != 1)
  {
    return 0;
  }

  raven::RavenEstimator::HandleMovingStateEvent(this, a2);
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 104) != 1 || *(a2 + 15) < *(this[73].i64[0] + 248))
  {
    v6 = 0;
    if (this[1409].i8[8] == 1)
    {
      this[1409].i8[8] = 0;
    }

    goto LABEL_9;
  }

  if ((this[1409].i8[8] & 1) == 0)
  {
    v25 = (*(*a2 + 16))(a2);
    v26 = this[1409].i8[8];
    this[1410].i64[0] = v25;
    this[1410].i64[1] = v27;
    v6 = 1;
    if ((v26 & 1) == 0)
    {
      this[1409].i8[8] = 1;
    }

    goto LABEL_9;
  }

  v84 = (*(*a2 + 16))(a2);
  v85 = v7;
  if ((this[1409].i8[8] & 1) == 0)
  {
    __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
  }

  v10 = CNTimeSpan::operator-(&v84, this[1410].i64, v8, v9);
  v12 = v11;
  v13 = v11;
  v14.i64[0] = *(this[73].i64[0] + 280);
  v123 = 0;
  v124 = 0.0;
  CNTimeSpan::SetTimeSpan(&v123, 0, v14, v15);
  if (!v10 && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (!v123)
  {
    v16 = v124;
    if ((*&v124 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_21:
      if (v16 > v13)
      {
        goto LABEL_65;
      }

LABEL_40:
      v133.i64[0] = (*(*a2 + 16))(a2);
      v133.i64[1] = v47;
      sub_1D0C51578(3, 1, v132);
      sub_1D0BFA9C4(3, 3, &v84);
      v48 = *(this[73].i64[0] + 288) * 0.00872664626;
      v49 = v48 * v48;
      v50 = v88;
      *v88 = v49;
      v51 = SHIDWORD(v86);
      v50[SHIDWORD(v86) + 1] = v49;
      v50[2 * v51 + 2] = v49;
      sub_1D0BA002C(&v123, 13);
      v130 = 0;
      v131 = 0.0;
      v129 = 0u;
      v128 = 0u;
      v123 = &unk_1F4CE1A08;
      v127 = v133;
      if ((this[1409].i8[8] & 1) == 0)
      {
        __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
      }

      v53 = CNTimeSpan::operator-(&v133, this[1410].i64, v133, v52);
      v131 = v54 + v53;
      *&v128 = this + 2920;
      *(&v128 + 1) = this + 14824;
      *&v129 = this + 14840;
      *(&v129 + 1) = this + 2760;
      v130 = this + 175;
      v58 = this[73].i64[0];
      v59 = 350.0 / *(v58 + 648);
      if (v59 >= 350.0 / *(v58 + 656))
      {
        v59 = 350.0 / *(v58 + 656);
      }

      if (v54 + v53 <= v59)
      {
        v72 = sub_1D0D654BC(&this[3858].i64[1], v133.i64, v132, &v84, &v123, v55, v56, v57);
        if (!v72)
        {
          if (cnprint::CNPrinter::GetLogLevel(v72) <= 1)
          {
            v122 = 12;
            v121 = 1;
            if ((this[1409].i8[8] & 1) == 0)
            {
              __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
            }

            v74 = cnprint::CNLogFormatter::FormatGeneral(&this[169].i64[1], &v133, "Added ZARU measurement,t_start,%.3lf,t_end,%.3lf", *&v133.i64[1] + v133.i64[0], *&this[1410].i64[1] + this[1410].i64[0]);
            if (this[170].i8[15] >= 0)
            {
              LOBYTE(v80) = v74;
            }

            else
            {
              v80 = this[169].i64[1];
            }

            cnprint::CNPrinter::Print(&v122, &v121, "%s", v75, v76, v77, v78, v79, v80);
          }

          v81 = this[1409].i8[8];
          this[1410] = v133;
          if ((v81 & 1) == 0)
          {
            this[1409].i8[8] = 1;
          }

          v123 = &unk_1F4CE4300;
          if (v126 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_65;
        }

        v122 = 12;
        v121 = 4;
        v73 = cnprint::CNLogFormatter::FormatGeneral(&this[169].i64[1], &v133, "Could not add measurement - device ZARU");
        if (this[170].i8[15] >= 0)
        {
          LOBYTE(v71) = v73;
        }

        else
        {
          v71 = this[169].i64[1];
        }
      }

      else
      {
        if (cnprint::CNPrinter::GetLogLevel(v53) > 1)
        {
          goto LABEL_53;
        }

        v122 = 12;
        v121 = 1;
        v65 = cnprint::CNLogFormatter::FormatWarning(&this[169].i64[1], &v133, "ZARU time interval too large, %.3lf", v60, v61, v62, v63, v64, *&v131);
        if (this[170].i8[15] >= 0)
        {
          LOBYTE(v71) = v65;
        }

        else
        {
          v71 = this[169].i64[1];
        }
      }

      cnprint::CNPrinter::Print(&v122, &v121, "%s", v66, v67, v68, v69, v70, v71);
LABEL_53:
      v123 = &unk_1F4CE4300;
      if (v126 < 0)
      {
        operator delete(__p);
      }

      return 0xFFFFFFFFLL;
    }
  }

  if (v10 == v123)
  {
LABEL_20:
    v16 = v124;
    goto LABEL_21;
  }

  if (v10 > v123)
  {
    goto LABEL_40;
  }

LABEL_65:
  v6 = 1;
LABEL_9:
  result = raven::RavenEstimator::IsZUPTAppropriate(this, a2);
  if (!result)
  {
    return result;
  }

  v85 = 0;
  v86 = 0;
  v84 = &unk_1F4CEF6E8;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v97 = 0;
  v98 = 0;
  v96 = 0x7FF8000000000000;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0x7FF8000000000000;
  v109 = 0;
  v110 = vdupq_n_s64(0x7FF8000000000000uLL);
  v111 = v110;
  v112 = v110;
  v113 = v110;
  v114 = 0x7FF8000000000000;
  v115 = 0;
  v116 = v110;
  v117 = v110;
  v118 = v110;
  v119 = v110;
  v120 = 0x7FF8000000000000;
  if (!(*(this->i64[0] + 184))(this, a2, &v84))
  {
    if (v6)
    {
      v17 = raven::RavenPNTEstimator::AddDeviceVelocityMeasurement(this, &v84);
      if (v17)
      {
        if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
        {
          LOWORD(v123) = 12;
          LOBYTE(v132[0]) = 1;
          v18 = (*(*a2 + 16))(a2);
          v82 = v19 + v18;
          cnprint::CNPrinter::Print(&v123, v132, "t,%.3lf, Could not add ZUPT measurement 1", v20, v21, v22, v23, v24, SLOBYTE(v82));
        }

        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v28 = raven::RavenPNTEstimator::AddUserVelocityMeasurement(this, &v84);
      if (v28)
      {
        if (cnprint::CNPrinter::GetLogLevel(v28) <= 1)
        {
          LOWORD(v123) = 12;
          LOBYTE(v132[0]) = 1;
          v29 = (*(*a2 + 16))(a2);
          v83 = v30 + v29;
          cnprint::CNPrinter::Print(&v123, v132, "t,%.3lf, Could not add ZUPT measurement 2", v31, v32, v33, v34, v35, SLOBYTE(v83));
        }

        return 0xFFFFFFFFLL;
      }
    }

    v36 = (*(*a2 + 16))(a2);
    v37 = this[14].i8[8];
    this[15].i64[0] = v36;
    this[15].i64[1] = v38;
    if ((v37 & 1) == 0)
    {
      this[14].i8[8] = 1;
    }

    if (cnprint::CNPrinter::GetLogLevel(v36) <= 1)
    {
      v132[0] = 12;
      v133.i8[0] = 1;
      v123 = (*(*a2 + 16))(a2);
      v124 = v39;
      v40 = cnprint::CNLogFormatter::FormatGeneral(&this[169].i64[1], &v123, "Raising ZUPT velocity event");
      if (this[170].i8[15] >= 0)
      {
        LOBYTE(v46) = v40;
      }

      else
      {
        v46 = this[169].i64[1];
      }

      cnprint::CNPrinter::Print(v132, &v133, "%s", v41, v42, v43, v44, v45, v46);
    }
  }

  return 0;
}

void sub_1D0BB6B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_1D0BB6BCC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0BB2F1C(v17, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 1720))
  {
    if (*(v8 + 1600) == 1)
    {
      *(v8 + 1664) = v21;
      *(v8 + 1680) = v22;
      *(v8 + 1696) = v23;
      *(v8 + 1712) = v24;
      *(v8 + 1616) = v18;
      *(v8 + 1632) = v19;
      result = *&v20;
      *(v8 + 1648) = v20;
    }

    else
    {
      *(v8 + 1608) = &unk_1F4CEF5C8;
      *(v8 + 1664) = v21;
      *(v8 + 1680) = v22;
      *(v8 + 1696) = v23;
      *(v8 + 1712) = v24;
      *(v8 + 1616) = v18;
      *(v8 + 1632) = v19;
      result = *&v20;
      *(v8 + 1648) = v20;
      *(v8 + 1600) = 1;
    }
  }

  else
  {
    v28 = 12;
    v27 = 2;
    (*(*v8 + 16))(v25, v8, v9);
    if (v26 >= 0)
    {
      v16 = v25;
    }

    else
    {
      LOBYTE(v16) = v25[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Warning: %s Active Object not configured", v11, v12, v13, v14, v15, v16);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  return result;
}

void sub_1D0BB6D2C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB6D48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B92680(v23, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenEstimator::HandleMovingStateEvent((v8 + 288), v23);
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

void sub_1D0BB6E74(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB6E94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(&v25, a3, a3, a4, a5, a6, a7, a8);
  v9 = raven::RavenPassThroughEstimator::HandleEvent(v8 + 288, &v25);
  if (v9 && cnprint::CNPrinter::GetLogLevel(v9) <= 1)
  {
    v33 = 12;
    v32 = 1;
    __src[0] = (*(v25 + 16))(&v25);
    __src[1] = v10;
    (*(v25 + 24))(__p, &v25);
    v16 = __p[23] >= 0 ? __p : *__p;
    cnprint::CNLogFormatter::FormatWarning(v8 + 240, __src, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v22) = v8 - 16;
    }

    else
    {
      v22 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v33, &v32, "%s", v17, v18, v19, v20, v21, v22);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  if (*(v8 + 3792))
  {
    *__p = *(v8 + 3152);
    if (sub_1D0B7CF88(__p, (v8 + 3776)))
    {
      sub_1D0BAD0C8(__p);
      *&__p[8] = *(v8 + 112);
      raven::PopulateAllTimeFields(&__p[8], &v26, *&__p[8], v23);
      raven::RavenPassThroughEstimator::GetRavenSolution((v8 + 288), __src);
      memcpy(v30, __src, sizeof(v30));
      raven::RavenPassThroughEstimator::GetRavenStatus((v8 + 288), __src);
      memcpy(v29, __src, sizeof(v29));
      raven::RavenEstimator::GetRavenActivity((v8 + 288), __src);
      memcpy(v31, __src, sizeof(v31));
      *(v8 + 3776) = (*(v25 + 16))(&v25);
      *(v8 + 3784) = v24;
      sub_1D0BAE448();
    }
  }
}

void sub_1D0BB70C0()
{
  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  JUMPOUT(0x1D0BB70B8);
}

uint64_t raven::RavenPassThroughEstimator::HandleEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(a1 + 152) = *(a2 + 24);
  *(a1 + 136) = v3;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(a1 + 216) = *(a2 + 88);
  *(a1 + 200) = v6;
  *(a1 + 184) = v5;
  *(a1 + 168) = v4;
  if (*(a1 + 3504) == 1)
  {
    v8 = *(a1 + 2768);
    if (sub_1D0B7CF88(&v8, (a1 + 80)))
    {
      *(a1 + 80) = *(a1 + 2768);
    }
  }

  if ((*(a1 + 58) & 1) == 0)
  {
    *(a1 + 58) = *(a1 + 3504);
  }

  return 0;
}

void sub_1D0BB7194(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(v23, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenEstimator::HandleActivityStateEvent((v8 + 288), v23);
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

void sub_1D0BB72C0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB72E0(uint64_t a1, raven::RavenSolutionActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenSolutionActiveObject::HandleEvent(v8, v9);
}

void sub_1D0BB7340(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B9356C(v28, a3, a3, a4, a5, a6, a7, a8);
  v13 = raven::RavenPNTEstimator::HandleEvent((v8 + 288), v28, v10, v11, v9, v12);
  if (v14)
  {
    v33 = 12;
    v32 = 2;
    v31[0] = (*(v28[0] + 16))(v28, v13);
    v31[1] = v15;
    (*(v28[0] + 24))(v29, v28);
    if (v30 >= 0)
    {
      v21 = v29;
    }

    else
    {
      v21 = v29[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v31, "Failed to handle event - %s.", v16, v17, v18, v19, v20, v21);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v27) = v8 - 16;
    }

    else
    {
      v27 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v33, &v32, "%s", v22, v23, v24, v25, v26, v27);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }
}

void sub_1D0BB7460(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB7480(uint64_t a1, raven::RavenMovingStateEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenMovingStateEstimatorActiveObject::HandleEvent(v8, v9);
}

uint64_t raven::RavenMovingStateEstimator::HandleEvent(raven::RavenMovingStateEstimator *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 217) == 1)
  {
    if (*(this + 216) == 1 || (*&v34 = (*(*a2 + 16))(a2), *(&v34 + 1) = v4, !raven::RavenMovingStateEstimator::Initialize(this, &v34)))
    {
      v6 = (*(*a2 + 16))(a2);
      v9 = v5;
      if (v6)
      {
        v10 = 1;
      }

      else
      {
        v10 = (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      v11 = !v10;
      while (1)
      {
        if ((*&v34 = 0, *(&v34 + 1) = 0x3FA999999999999ALL, v12 = CNTimeSpan::operator+(this + 546, &v34, v7, v8), *v15.i64 = v13, v11) || !v12 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v6 == v12)
        {
          if (v9 <= v13)
          {
            return 0;
          }
        }

        else if (v6 <= v12)
        {
          return 0;
        }

        v32 = 0;
        v33 = 0x3FB999999999999ALL;
        *&v34 = CNTimeSpan::operator+(this + 546, &v32, v15, v14);
        *(&v34 + 1) = v16;
        v17 = raven::RavenMovingStateEstimator::Predict(this, &v34);
        if (v17)
        {
          break;
        }

        if (*(this + 136) == 1)
        {
          if ((*(this + 1544) & 1) == 0)
          {
            sub_1D0C42F28();
          }

          if (*(this + 1504))
          {
            sub_1D0BBA5C4(this + 4216, *(this + 9), this + 80);
          }
        }

        if (*(this + 4208) == 1)
        {
          v32 = (*(*(this + 194) + 16))(this + 1552);
          v33 = v18;
          *v8.i64 = CNTimeSpan::operator-(&v34, &v32, v19, v20);
          *v7.i64 = v21 + *v8.i64;
          if (v21 + *v8.i64 >= 1.25)
          {
            if (*(this + 4208) == 1)
            {
              *(this + 4208) = 0;
            }

            if (*(this + 208) == 1)
            {
              *(this + 208) = 0;
            }
          }

          else if (*(this + 208) == 1)
          {
            sub_1D0BBA5C4(this + 4216, *(this + 18), this + 152);
          }
        }

        if (*(this + 64) == 1)
        {
          *v8.i64 = CNTimeSpan::operator-(&v34, this + 6, v7, v8);
          *v7.i64 = v22 + *v8.i64;
          if (v22 + *v8.i64 >= 0.5)
          {
            *(this + 64) = 0;
          }

          else
          {
            sub_1D0BBA5C4(this + 4216, *this, this + 8);
          }
        }
      }

      if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
      {
        LOWORD(v32) = 12;
        v31 = 1;
        v24 = cnprint::CNLogFormatter::FormatGeneral(this + 4384, &v34, "RavenMovingStateEstimator,failed to predict");
        if (*(this + 4407) >= 0)
        {
          LOBYTE(v30) = v24;
        }

        else
        {
          v30 = *(this + 548);
        }

        cnprint::CNPrinter::Print(&v32, &v31, "%s", v25, v26, v27, v28, v29, v30);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

double sub_1D0BB77E0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = dword_1EE053968;
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = v3;
  *(a1 + 12) = 1;
  *(a1 + 16) = v3;
  *(a1 + 20) = v3;
  *(a1 + 32) = a1 + 40;
  if (v3)
  {
    v5 = 0;
    v6 = qword_1EE053978;
    v7 = *(a2 + 20) * a3;
    v8 = *(a2 + 32);
    do
    {
      result = *(v8 + 8 * (*(v6 + 4 * v5) + v7));
      *(a1 + 40 + 8 * v5++) = result;
    }

    while (v3 != v5);
  }

  return result;
}

uint64_t sub_1D0BB7860(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v4 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v4;
    *(a3 + 16) = v4;
    *(a3 + 20) = 1;
    *(a4 + 8) = 1;
    *(a4 + 12) = v4;
    *(a4 + 16) = v4;
    *(a4 + 20) = 1;
    if (v4)
    {
      v5 = 0;
      v6 = *(result + 32);
      v7 = *(a3 + 32);
      v8 = *(a4 + 32);
      do
      {
        v9 = *(result + 8);
        v10 = *(v6 + 8 * (v9 * v5));
        if (v9 < 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v12 = v9 * v5;
          for (i = 1; i != v9; ++i)
          {
            if (*(v6 + 8 * (v12 + i)) > v10)
            {
              v11 = i;
              v10 = *(v6 + 8 * (v12 + i));
            }
          }
        }

        *(v7 + 8 * v5) = v10;
        *(v8 + 4 * v5++) = v11;
      }

      while (v5 < *(result + 12));
    }
  }

  else
  {
    v14 = *(result + 8);
    *(a3 + 8) = v14;
    *(a3 + 12) = 1;
    *(a3 + 16) = v14;
    *(a3 + 20) = v14;
    *(a4 + 8) = v14;
    *(a4 + 12) = 1;
    *(a4 + 16) = v14;
    *(a4 + 20) = v14;
    if (v14)
    {
      v15 = 0;
      v16 = *(result + 32);
      v17 = *(a3 + 32);
      v18 = *(a4 + 32);
      do
      {
        *(v17 + 8 * v15) = *(v16 + 8 * v15);
        *(v18 + 4 * v15++) = 0;
      }

      while (v15 < *(result + 8));
    }

    v19 = *(result + 12);
    if (v19 >= 2)
    {
      v20 = *(result + 32);
      v21 = *(a3 + 32);
      v22 = *(result + 8);
      v23 = 1;
      v24 = v22;
      do
      {
        if (v24)
        {
          v25 = 0;
          v26 = *(a4 + 32);
          v27 = v24 * v23;
          do
          {
            v28 = *(v20 + 8 * (v27 + v25));
            if (v28 > *(v21 + 8 * v25))
            {
              *(v21 + 8 * v25) = v28;
              *(v26 + 4 * v25) = v23;
              v22 = *(result + 8);
            }

            ++v25;
          }

          while (v25 < v22);
          v19 = *(result + 12);
          v24 = v22;
        }

        ++v23;
      }

      while (v23 < v19);
    }
  }

  return result;
}

void sub_1D0BB7AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0BB7AD8(uint64_t a1)
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
  sub_1D0BB7CC8();
}

void sub_1D0BB7C14(_Unwind_Exception *exception_object)
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

void sub_1D0BB7C6C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0BB7AD8((a1 + 3));
}

void sub_1D0BB7DC0(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v8, v9);
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 224))
  {
    raven::RavenPositionContextEstimator::HandleEvent((this + 320), a2);
    v6 = CNTimeSpan::operator-(a2 + 1, this + 29, v4, v5);
    v34[0] = v6;
    *&v34[1] = v7;
    if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
    {
      v6 = CNTimeSpan::operator-(v34, v8, v9);
    }

    v25 = v6;
    *&v26 = v7;
    if (sub_1D0B8E6A8(&v25, this + 31))
    {
      v25 = &unk_1F4CEF568;
      v32 = 0;
      __asm { FMOV            V0.2D, #0.5 }

      v33 = _Q0;
      v15 = *(a2 + 56);
      v28 = *(a2 + 40);
      v29 = v15;
      v16 = *(a2 + 88);
      v30 = *(a2 + 72);
      v31 = v16;
      v17 = *(a2 + 24);
      v26 = *(a2 + 8);
      v27 = v17;
      if (!raven::RavenPositionContextEstimator::PopulateEvent((this + 320), &v25))
      {
        operator new();
      }

      *(this + 232) = *(a2 + 8);
    }
  }

  else
  {
    LOWORD(v35) = 12;
    LOBYTE(v34[0]) = 2;
    v25 = (*(*a2 + 16))(a2);
    *&v26 = v18;
    cnprint::CNLogFormatter::FormatGeneral(this + 264, &v25, "RavenPositionContextEstimatorActiveObject is not configured.");
    if (*(this + 287) >= 0)
    {
      LOBYTE(v24) = this + 8;
    }

    else
    {
      v24 = *(this + 33);
    }

    cnprint::CNPrinter::Print(&v35, v34, "%s", v19, v20, v21, v22, v23, v24);
  }
}

void sub_1D0BB81D8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenPositionContextEstimator::HandleEvent(raven::RavenPositionContextEstimator *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 1) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7[4] = v2;
  v7[5] = v3;
  if (*this)
  {
    return 0;
  }

  v7[0] = (*(*a2 + 16))(a2);
  v7[1] = v5;
  if (!raven::RavenPositionContextEstimator::Initialize(this, v7))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0BB82E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(v10, a3, a3, a4, a5, a6, a7, a8);
  return raven::RavenSignalEnvironmentActiveObject::HandleEvent(v8, v10);
}

uint64_t raven::RavenSignalEnvironmentActiveObject::HandleEvent(uint64_t this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 352) == 1)
  {
    v3 = this;
    v4 = (this + 360);
    v5 = *(this + 376);
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v6 = *(*(this + 232) + 3168);
    v30 = (*(*a2 + 16))(a2);
    *&v31 = v7;
    if ((*(v3 + 376) & 1) == 0)
    {
LABEL_27:
      sub_1D0C42F28();
    }

    this = CNTimeSpan::operator-(&v30, v4, v8, v9);
    if (v10 + this >= v6)
    {
      if (*(v3 + 352))
      {
LABEL_6:
        v31 = *(v3 + 248);
        v11 = *(v3 + 312);
        v34 = *(v3 + 296);
        v35 = v11;
        v36 = *(v3 + 328);
        v12 = *(v3 + 280);
        v32 = *(v3 + 264);
        v30 = &unk_1F4CEF5C8;
        v37 = *(v3 + 344);
        v33 = v12;
        if (v37 <= 6u && ((1 << v37) & 0x59) != 0 || (*(v3 + 472) != 1 ? (v13 = 0) : (v13 = *(v3 + 464) < *(*(v3 + 232) + 3176)), *(v3 + 456) != 1 ? (v14 = 0) : (v14 = *(v3 + 448) < *(*(v3 + 232) + 3184)), !v13 && !v14))
        {
          v33 = *(a2 + 40);
          v34 = *(a2 + 56);
          v35 = *(a2 + 72);
          v36 = *(a2 + 88);
          v31 = *(a2 + 8);
          v32 = *(a2 + 24);
          *v4 = v31;
          if (v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          LOWORD(v38) = 12;
          v29 = 2;
          v15 = (*(*a2 + 16))(a2);
          v17 = v16;
          sub_1D0B751F4(&__p, off_1E83D7D98[v37]);
          if (*(v3 + 472) == 1)
          {
            v23 = *(v3 + 464);
          }

          if (*(v3 + 456) == 1)
          {
            v25 = *(v3 + 448);
          }

          v24 = v17 + v15;
          cnprint::CNPrinter::Print(&v38, &v29, "SE hysteresis,t,%.1f,promoting from %s to DenseUrban,distance from DUC,%.1f,DU,%.1f", v18, v19, v20, v21, v22, SLOBYTE(v24));
          if (v28 < 0)
          {
            operator delete(__p);
          }

          v37 = 3;
          v26 = *(v3 + 376);
          v33 = *(a2 + 40);
          v34 = *(a2 + 56);
          v35 = *(a2 + 72);
          v36 = *(a2 + 88);
          v31 = *(a2 + 8);
          v32 = *(a2 + 24);
          *v4 = v31;
          if (v26)
          {
LABEL_10:
            sub_1D0BB2D1C();
          }
        }

        *(v3 + 376) = 1;
        goto LABEL_10;
      }

      goto LABEL_27;
    }
  }

  return this;
}

void sub_1D0BB86A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1D0BB8710(uint64_t a1, raven::RavenSolutionActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(v10, a3, a3, a4, a5, a6, a7, a8);
  *&result = raven::RavenSolutionActiveObject::HandleEvent(v8, v10).n128_u64[0];
  return result;
}

__n128 raven::RavenSolutionActiveObject::HandleEvent(raven::RavenSolutionActiveObject *this, const raven::TimeMarkEvent *a2)
{
  std::mutex::lock((this + 11320));
  if (raven::RavenPredictor::HandleEvent((this + 3008), a2, v4, v5, v6, v7, v8, v9))
  {
    v28 = 12;
    v27 = 2;
    (*(*this + 16))(v25, this);
    v10 = v26;
    v11 = v25[0];
    (*(*a2 + 24))(&__p, a2);
    v17 = v25;
    if (v10 < 0)
    {
      LOBYTE(v17) = v11;
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Warning: %s failed to handle event of type %s.", v12, v13, v14, v15, v16, v17);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  v18 = *(a2 + 24);
  *(this + 15) = *(a2 + 8);
  *(this + 16) = v18;
  v19 = *(a2 + 40);
  v20 = *(a2 + 56);
  v21 = *(a2 + 88);
  *(this + 19) = *(a2 + 72);
  *(this + 20) = v21;
  *(this + 17) = v19;
  *(this + 18) = v20;
  std::mutex::unlock((this + 11320));
  return result;
}

void sub_1D0BB889C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  std::mutex::unlock((v23 + v24));
  _Unwind_Resume(a1);
}