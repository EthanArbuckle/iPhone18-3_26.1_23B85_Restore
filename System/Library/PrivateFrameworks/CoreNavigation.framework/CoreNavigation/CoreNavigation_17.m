void sub_1D0C79AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v5 = *(a2 + 23);
  if (!v5)
  {
    goto LABEL_53;
  }

  if (v5)
  {
    *(this + 23) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 23);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 23) |= 2u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 16);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergeFrom(v8, v9);
  v5 = *(a2 + 23);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(this + 23) |= 4u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 24);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergeFrom(v10, v11);
  v5 = *(a2 + 23);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_28:
  *(this + 23) |= 8u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 32);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergeFrom(v12, v13);
  v5 = *(a2 + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    *(this + 23) |= 0x20u;
    v16 = *(this + 6);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 6);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 48);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::MergeFrom(v16, v17);
    v5 = *(a2 + 23);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_33:
  *(this + 23) |= 0x10u;
  v14 = *(this + 5);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 5);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 40);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergeFrom(v14, v15);
  v5 = *(a2 + 23);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_43:
  *(this + 23) |= 0x40u;
  v18 = *(this + 7);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 7);
  if (!v19)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v19 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 56);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::MergeFrom(v18, v19);
  v5 = *(a2 + 23);
  if ((v5 & 0x80) != 0)
  {
LABEL_48:
    *(this + 23) |= 0x80u;
    v20 = *(this + 8);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 8);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v21 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 64);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::MergeFrom(v20, v21);
    v5 = *(a2 + 23);
  }

LABEL_53:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(this + 23) |= 0x100u;
      v22 = *(this + 9);
      if (!v22)
      {
        operator new();
      }

      v23 = *(a2 + 9);
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
        v23 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 72);
      }

      result = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::MergeFrom(v22, v23);
      v5 = *(a2 + 23);
    }

    if ((v5 & 0x200) != 0)
    {
      *(this + 23) |= 0x200u;
      v24 = *(this + 10);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 10);
      if (!v25)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
        v25 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 80);
      }

      return CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergeFrom(v24, v25);
    }
  }

  return result;
}

void sub_1D0C7A15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this, const CoreNavigation::CLP::LogEntry::Raven::NrParameters *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 40) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 40) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 3);
  *(this + 40) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 4);
  *(this + 40) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_39:
    v9 = *(a2 + 153);
    *(this + 40) |= 0x20u;
    *(this + 153) = v9;
    v5 = *(a2 + 40);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_38:
  v8 = *(a2 + 152);
  *(this + 40) |= 0x10u;
  *(this + 152) = v8;
  v5 = *(a2 + 40);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_40:
  result = *(a2 + 5);
  *(this + 40) |= 0x40u;
  *(this + 5) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 6);
    *(this + 40) |= 0x80u;
    *(this + 6) = result;
    v5 = *(a2 + 40);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 7);
    *(this + 40) |= 0x100u;
    *(this + 7) = result;
    v5 = *(a2 + 40);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 8);
  *(this + 40) |= 0x200u;
  *(this + 8) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 9);
  *(this + 40) |= 0x400u;
  *(this + 9) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 10);
  *(this + 40) |= 0x800u;
  *(this + 10) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 11);
  *(this + 40) |= 0x1000u;
  *(this + 11) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 12);
  *(this + 40) |= 0x2000u;
  *(this + 12) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x4000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_48:
  result = *(a2 + 13);
  *(this + 40) |= 0x4000u;
  *(this + 13) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x8000) != 0)
  {
LABEL_22:
    result = *(a2 + 14);
    *(this + 40) |= 0x8000u;
    *(this + 14) = result;
    v5 = *(a2 + 40);
  }

LABEL_23:
  if ((v5 & 0xFF0000) == 0)
  {
    return result;
  }

  if ((v5 & 0x10000) != 0)
  {
    result = *(a2 + 15);
    *(this + 40) |= 0x10000u;
    *(this + 15) = result;
    v5 = *(a2 + 40);
    if ((v5 & 0x20000) == 0)
    {
LABEL_26:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_52;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  result = *(a2 + 16);
  *(this + 40) |= 0x20000u;
  *(this + 16) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x40000) == 0)
  {
LABEL_27:
    if ((v5 & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_28;
  }

LABEL_52:
  result = *(a2 + 17);
  *(this + 40) |= 0x40000u;
  *(this + 17) = result;
  if ((*(a2 + 40) & 0x80000) == 0)
  {
    return result;
  }

LABEL_28:
  result = *(a2 + 18);
  *(this + 40) |= 0x80000u;
  *(this + 18) = result;
  return result;
}

void sub_1D0C7A4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::NrBiases::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this, const CoreNavigation::CLP::LogEntry::Raven::NrBiases *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 24) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 24);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 88);
  *(this + 24) |= 2u;
  *(this + 88) = v8;
  v5 = *(a2 + 24);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a2 + 89);
  *(this + 24) |= 4u;
  *(this + 89) = v9;
  v5 = *(a2 + 24);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(a2 + 2);
  *(this + 24) |= 8u;
  *(this + 2) = result;
  v5 = *(a2 + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    result = *(a2 + 4);
    *(this + 24) |= 0x20u;
    *(this + 4) = result;
    v5 = *(a2 + 24);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_28:
  result = *(a2 + 3);
  *(this + 24) |= 0x10u;
  *(this + 3) = result;
  v5 = *(a2 + 24);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_30:
  result = *(a2 + 5);
  *(this + 24) |= 0x40u;
  *(this + 5) = result;
  v5 = *(a2 + 24);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 6);
    *(this + 24) |= 0x80u;
    *(this + 6) = result;
    v5 = *(a2 + 24);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 7);
    *(this + 24) |= 0x100u;
    *(this + 7) = result;
    v5 = *(a2 + 24);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 8);
  *(this + 24) |= 0x200u;
  *(this + 8) = result;
  v5 = *(a2 + 24);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_34:
  result = *(a2 + 9);
  *(this + 24) |= 0x400u;
  *(this + 9) = result;
  if ((*(a2 + 24) & 0x800) == 0)
  {
    return result;
  }

LABEL_18:
  result = *(a2 + 10);
  *(this + 24) |= 0x800u;
  *(this + 10) = result;
  return result;
}

void sub_1D0C7A77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this, const CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  sub_1D0C84594((this + 64), a2 + 64);
  sub_1D0C84594((this + 88), a2 + 88);
  sub_1D0C84594((this + 112), a2 + 112);
  v5 = *(a2 + 42);
  if (!v5)
  {
    goto LABEL_19;
  }

  if (v5)
  {
    *(this + 42) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v4);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 42);
  }

  if ((v5 & 2) != 0)
  {
    v8 = *(a2 + 14);
    if (v8 >= 4)
    {
      __assert_rtn("set_health", "CoreNavigationCLPRavenOutput.pb.h", 4798, "::CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth_NrEstimatorHealthType_IsValid(value)");
    }

    *(this + 42) |= 2u;
    *(this + 14) = v8;
    v5 = *(a2 + 42);
  }

  if ((v5 & 4) != 0)
  {
    v15 = *(a2 + 2);
    *(this + 42) |= 4u;
    *(this + 2) = v15;
    v5 = *(a2 + 42);
    if ((v5 & 8) == 0)
    {
LABEL_15:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_34:
      v17 = *(a2 + 4);
      *(this + 42) |= 0x10u;
      *(this + 4) = v17;
      v5 = *(a2 + 42);
      if ((v5 & 0x20) == 0)
      {
LABEL_17:
        if ((v5 & 0x40) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_15;
  }

  v16 = *(a2 + 3);
  *(this + 42) |= 8u;
  *(this + 3) = v16;
  v5 = *(a2 + 42);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_35:
  v18 = *(a2 + 5);
  *(this + 42) |= 0x20u;
  *(this + 5) = v18;
  v5 = *(a2 + 42);
  if ((v5 & 0x40) != 0)
  {
LABEL_18:
    v9 = *(a2 + 6);
    *(this + 42) |= 0x40u;
    *(this + 6) = v9;
    v5 = *(a2 + 42);
  }

LABEL_19:
  if ((v5 & 0x3FC00) == 0)
  {
    return;
  }

  if ((v5 & 0x400) != 0)
  {
    v11 = *(a2 + 17);
    *(this + 42) |= 0x400u;
    *(this + 17) = v11;
    v5 = *(a2 + 42);
    if ((v5 & 0x800) == 0)
    {
LABEL_22:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_22;
  }

  v12 = *(a2 + 18);
  *(this + 42) |= 0x800u;
  *(this + 18) = v12;
  v5 = *(a2 + 42);
  if ((v5 & 0x1000) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 15);
  *(this + 42) |= 0x1000u;
  *(this + 15) = v13;
  v5 = *(a2 + 42);
  if ((v5 & 0x2000) == 0)
  {
LABEL_24:
    if ((v5 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_30:
  v14 = *(a2 + 40);
  *(this + 42) |= 0x2000u;
  *(this + 40) = v14;
  if ((*(a2 + 42) & 0x4000) != 0)
  {
LABEL_25:
    v10 = *(a2 + 19);
    *(this + 42) |= 0x4000u;
    *(this + 19) = v10;
  }
}

void sub_1D0C7AA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::RavenOutput::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, const CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenOutput::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    LODWORD(v7) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v7;
    LODWORD(v7) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v7;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::Raven::TimeStruct::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::Raven::TimeStruct *CoreNavigation::CLP::LogEntry::Raven::TimeStruct::TimeStruct(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this, const CoreNavigation::CLP::LogEntry::Raven::TimeStruct *a2)
{
  *this = &unk_1F4CD6810;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this, const CoreNavigation::CLP::LogEntry::Raven::TimeStruct *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0C7ACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStruct::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStruct::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStruct::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this, const CoreNavigation::CLP::LogEntry::Raven::TimeStruct *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStruct::Swap(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this, CoreNavigation::CLP::LogEntry::Raven::TimeStruct *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStamp::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::TimeStamp *CoreNavigation::CLP::LogEntry::Raven::TimeStamp::TimeStamp(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this, const CoreNavigation::CLP::LogEntry::Raven::TimeStamp *a2)
{
  *this = &unk_1F4CD6888;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this, const CoreNavigation::CLP::LogEntry::Raven::TimeStamp *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 52))
  {
    *(this + 13) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(v6, v7);
    v5 = *(a2 + 13);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_21:
      *(this + 13) |= 4u;
      v10 = *(this + 3);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 3);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
        v11 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 24);
      }

      result = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(v10, v11);
      v5 = *(a2 + 13);
      if ((v5 & 8) == 0)
      {
LABEL_8:
        if ((v5 & 0x10) == 0)
        {
          return result;
        }

        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 13) |= 2u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(v8, v9);
  v5 = *(a2 + 13);
  if ((v5 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_26:
  *(this + 13) |= 8u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 32);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(v12, v13);
  if ((*(a2 + 13) & 0x10) != 0)
  {
LABEL_9:
    result = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = result;
  }

  return result;
}

void sub_1D0C7B214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 52);
  if (v1)
  {
    if (*(this + 52))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(this + 52);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v1 = *(this + 52);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 28))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 28) = 0;
        v1 = *(this + 52);
      }
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
      }
    }

    *(this + 40) = 0;
  }

  *(this + 52) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStamp::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this, const CoreNavigation::CLP::LogEntry::Raven::TimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Swap(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this, CoreNavigation::CLP::LogEntry::Raven::TimeStamp *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    LODWORD(v5) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this, const CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::NrEstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this, const CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *a2)
{
  *this = &unk_1F4CD6978;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 26) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergeFrom(this, a2);
  return this;
}

void sub_1D0C7B888(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_1D0B8CD0C(v4);
  sub_1D0B8CD0C(v2);
  sub_1D0B8CD0C(v1 + 8);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this, const CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::Swap(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this, CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v9;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v10 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v10;
    v11 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v11;
    v12 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v12;
    v13 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v13;
    result = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = result;
    v15 = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v15;
    v16 = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v16;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::EstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *a2)
{
  *this = &unk_1F4CD69F0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 27) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 30) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 70) = 0;
  *(this + 36) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergeFrom(this, a2);
  return this;
}

void sub_1D0C7BD48(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 33);
  sub_1D0B8CD0C(v5);
  sub_1D0B8CD0C(v3);
  sub_1D0B8CD0C(v4);
  sub_1D0B8CD0C(v2);
  sub_1D0B8CD0C(v1 + 14);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v10;
    v11 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v11;
    v12 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v12;
    v13 = *(this + 88);
    *(this + 88) = *(a2 + 11);
    *(a2 + 11) = v13;
    v14 = *(this + 96);
    *(this + 96) = *(a2 + 12);
    *(a2 + 12) = v14;
    v15 = *(this + 104);
    *(this + 104) = *(a2 + 13);
    *(a2 + 13) = v15;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v16 = *(v3 + 160);
    *(v3 + 160) = *(a2 + 20);
    *(a2 + 20) = v16;
    v17 = *(v3 + 168);
    *(v3 + 168) = *(a2 + 21);
    *(a2 + 21) = v17;
    v18 = *(v3 + 176);
    *(v3 + 176) = *(a2 + 22);
    *(a2 + 22) = v18;
    v19 = *(v3 + 184);
    *(v3 + 184) = *(a2 + 23);
    *(a2 + 23) = v19;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v20 = *(v3 + 292);
    *(v3 + 292) = *(a2 + 73);
    *(a2 + 73) = v20;
    v21 = *(v3 + 288);
    *(v3 + 288) = *(a2 + 72);
    *(a2 + 72) = v21;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this)
{
  result = 0.0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::EstimatorActivity(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *a2)
{
  *this = &unk_1F4CD6A68;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::Swap(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this, CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v2;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    v10 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v10;
    v11 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v11;
    v12 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v12;
    v13 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v13;
    v14 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v14;
    v15 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v15;
    v16 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v16;
    v17 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v17;
    v18 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v18;
    v19 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v19;
    v20 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v20;
    v21 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v21;
    v22 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v22;
    v23 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v23;
    v24 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v24;
    result = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = result;
    LODWORD(v2) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v2;
    LODWORD(v2) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrParameters::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this)
{
  *(this + 39) = 0;
  *(this + 40) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::NrParameters *CoreNavigation::CLP::LogEntry::Raven::NrParameters::NrParameters(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this, const CoreNavigation::CLP::LogEntry::Raven::NrParameters *a2)
{
  *this = &unk_1F4CD6AE0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 0;
  CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::NrParameters::~NrParameters(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this)
{
  *this = &unk_1F4CD6AE0;
  CoreNavigation::CLP::LogEntry::Raven::NrParameters::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::NrParameters::~NrParameters(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::NrParameters::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_50;
        }

        *(this + 40) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v39[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
          {
            return 0;
          }
        }

        else
        {
          v39[0] = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v14 = *(a2 + 14);
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v16 < 0 == v15)
        {
          *(a2 + 14) = v16;
        }

        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 != 17)
        {
          continue;
        }

        *(a2 + 1) = v17 + 1;
        goto LABEL_62;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_50;
        }

LABEL_62:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v39;
        *(this + 40) |= 2u;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 != 25)
        {
          continue;
        }

        *(a2 + 1) = v18 + 1;
LABEL_66:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v39;
        *(this + 40) |= 4u;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 != 33)
        {
          continue;
        }

        *(a2 + 1) = v19 + 1;
LABEL_70:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v39;
        *(this + 40) |= 8u;
        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v20 >= v9 || *v20 != 40)
        {
          continue;
        }

        v10 = v20 + 1;
        *(a2 + 1) = v10;
LABEL_74:
        v39[0] = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
          if (!result)
          {
            return result;
          }

          v21 = v39[0];
          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 152) = v21 != 0;
        *(this + 40) |= 0x10u;
        if (v22 >= v9 || *v22 != 48)
        {
          continue;
        }

        v11 = v22 + 1;
        *(a2 + 1) = v11;
LABEL_82:
        v39[0] = 0;
        if (v11 >= v9 || (v24 = *v11, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
          if (!result)
          {
            return result;
          }

          v24 = v39[0];
          v25 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v25 = v11 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 153) = v24 != 0;
        *(this + 40) |= 0x20u;
        if (v25 >= v9 || *v25 != 57)
        {
          continue;
        }

        *(a2 + 1) = v25 + 1;
LABEL_90:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v39;
        *(this + 40) |= 0x40u;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 65)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
LABEL_94:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v39;
        *(this + 40) |= 0x80u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 != 73)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_98:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v39;
        *(this + 40) |= 0x100u;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 81)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_102:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v39;
        *(this + 40) |= 0x200u;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 89)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_106:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v39;
        *(this + 40) |= 0x400u;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 97)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_110:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v39;
        *(this + 40) |= 0x800u;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 105)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_114:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v39;
        *(this + 40) |= 0x1000u;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 113)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_118:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v39;
        *(this + 40) |= 0x2000u;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 121)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_122:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v39;
        *(this + 40) |= 0x4000u;
        v34 = *(a2 + 1);
        if (*(a2 + 4) - v34 < 2 || *v34 != 129 || v34[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v34 + 2;
LABEL_127:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = *v39;
        *(this + 40) |= 0x8000u;
        v35 = *(a2 + 1);
        if (*(a2 + 4) - v35 < 2 || *v35 != 137 || v35[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v35 + 2;
LABEL_132:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = *v39;
        *(this + 40) |= 0x10000u;
        v36 = *(a2 + 1);
        if (*(a2 + 4) - v36 < 2 || *v36 != 145 || v36[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v36 + 2;
LABEL_137:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 16) = *v39;
        *(this + 40) |= 0x20000u;
        v37 = *(a2 + 1);
        if (*(a2 + 4) - v37 < 2 || *v37 != 153 || v37[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v37 + 2;
LABEL_142:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = *v39;
        *(this + 40) |= 0x40000u;
        v38 = *(a2 + 1);
        if (*(a2 + 4) - v38 < 2 || *v38 != 161 || v38[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v38 + 2;
LABEL_147:
        *v39 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39))
        {
          *(this + 18) = *v39;
          *(this + 40) |= 0x80000u;
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
          goto LABEL_66;
        }

        goto LABEL_50;
      case 4u:
        if (v6 == 1)
        {
          goto LABEL_70;
        }

        goto LABEL_50;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_74;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_82;
      case 7u:
        if (v6 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_50;
      case 8u:
        if (v6 == 1)
        {
          goto LABEL_94;
        }

        goto LABEL_50;
      case 9u:
        if (v6 == 1)
        {
          goto LABEL_98;
        }

        goto LABEL_50;
      case 0xAu:
        if (v6 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_50;
      case 0xBu:
        if (v6 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_50;
      case 0xCu:
        if (v6 == 1)
        {
          goto LABEL_110;
        }

        goto LABEL_50;
      case 0xDu:
        if (v6 == 1)
        {
          goto LABEL_114;
        }

        goto LABEL_50;
      case 0xEu:
        if (v6 == 1)
        {
          goto LABEL_118;
        }

        goto LABEL_50;
      case 0xFu:
        if (v6 == 1)
        {
          goto LABEL_122;
        }

        goto LABEL_50;
      case 0x10u:
        if (v6 == 1)
        {
          goto LABEL_127;
        }

        goto LABEL_50;
      case 0x11u:
        if (v6 == 1)
        {
          goto LABEL_132;
        }

        goto LABEL_50;
      case 0x12u:
        if (v6 == 1)
        {
          goto LABEL_137;
        }

        goto LABEL_50;
      case 0x13u:
        if (v6 == 1)
        {
          goto LABEL_142;
        }

        goto LABEL_50;
      case 0x14u:
        if (v6 != 1)
        {
          goto LABEL_50;
        }

        goto LABEL_147;
      default:
LABEL_50:
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrParameters::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 160);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 160);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 160);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 160);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 152), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 153), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 80), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 88), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 96), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 104), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 112), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 120), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

LABEL_42:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 136), a3);
    if ((*(v5 + 160) & 0x80000) == 0)
    {
      return this;
    }

    goto LABEL_43;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 128), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_42;
  }

LABEL_20:
  if ((v6 & 0x80000) == 0)
  {
    return this;
  }

LABEL_43:
  v8 = *(v5 + 144);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrParameters::ByteSize(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v3 = v7 + v8 + 1;
      v2 = *(this + 40);
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

    v9 = ((v2 >> 4) & 2) + ((v2 >> 3) & 2) + v3;
    if ((v2 & 0x40) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      result = v9 + 9;
    }

    else
    {
      result = v9;
    }
  }

  else
  {
    result = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    v10 = result + 9;
    if ((v2 & 0x100) == 0)
    {
      v10 = result;
    }

    if ((v2 & 0x200) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x400) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x800) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x2000) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x4000) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x8000) != 0)
    {
      result = v10 + 10;
    }

    else
    {
      result = v10;
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    v11 = result + 10;
    if ((v2 & 0x10000) == 0)
    {
      v11 = result;
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 += 10;
    }

    if ((v2 & 0x40000) != 0)
    {
      v11 += 10;
    }

    if ((v2 & 0x80000) != 0)
    {
      result = v11 + 10;
    }

    else
    {
      result = v11;
    }
  }

  *(this + 39) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrParameters::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::NrParameters::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this, const CoreNavigation::CLP::LogEntry::Raven::NrParameters *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrParameters::Swap(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this, CoreNavigation::CLP::LogEntry::Raven::NrParameters *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    LOBYTE(v2) = *(this + 152);
    *(this + 152) = *(a2 + 152);
    *(a2 + 152) = v2;
    LOBYTE(v2) = *(this + 153);
    *(this + 153) = *(a2 + 153);
    *(a2 + 153) = v2;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    v11 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v11;
    v12 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v12;
    v13 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v13;
    v14 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v14;
    v15 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v15;
    v16 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v16;
    v17 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v17;
    v18 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v18;
    result = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = result;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v2;
    LODWORD(v2) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrBiases::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this)
{
  *(this + 23) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 44) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::NrBiases *CoreNavigation::CLP::LogEntry::Raven::NrBiases::NrBiases(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this, const CoreNavigation::CLP::LogEntry::Raven::NrBiases *a2)
{
  *this = &unk_1F4CD6B58;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 44) = 0;
  CoreNavigation::CLP::LogEntry::Raven::NrBiases::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::NrBiases::~NrBiases(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this)
{
  *this = &unk_1F4CD6B58;
  CoreNavigation::CLP::LogEntry::Raven::NrBiases::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::NrBiases::~NrBiases(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::NrBiases::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrBiases::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (TagFallback >> 3 <= 9)
        {
          if (v6 == 7)
          {
            if (v7 == 1)
            {
              goto LABEL_88;
            }
          }

          else if (v6 == 8)
          {
            if (v7 == 1)
            {
              goto LABEL_92;
            }
          }

          else if (v6 == 9 && v7 == 1)
          {
            goto LABEL_96;
          }

          goto LABEL_48;
        }

        if (v6 == 10)
        {
          if (v7 == 1)
          {
            goto LABEL_100;
          }

          goto LABEL_48;
        }

        if (v6 == 11)
        {
          if (v7 != 1)
          {
            goto LABEL_48;
          }

LABEL_104:
          *v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = *v32;
          *(this + 24) |= 0x400u;
          v31 = *(a2 + 1);
          if (v31 < *(a2 + 2) && *v31 == 97)
          {
            *(a2 + 1) = v31 + 1;
            goto LABEL_108;
          }
        }

        else
        {
          if (v6 != 12 || v7 != 1)
          {
            goto LABEL_48;
          }

LABEL_108:
          *v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = *v32;
          *(this + 24) |= 0x800u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 3)
      {
        if (v6 == 4)
        {
          if (v7 == 1)
          {
            goto LABEL_76;
          }
        }

        else if (v6 == 5)
        {
          if (v7 == 1)
          {
            goto LABEL_80;
          }
        }

        else if (v6 == 6 && v7 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_48;
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_60:
        v32[0] = 0;
        if (v12 >= v8 || (v19 = *v12, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v32);
          if (!result)
          {
            return result;
          }

          v19 = v32[0];
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v20 = v12 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 88) = v19 != 0;
        *(this + 24) |= 2u;
        if (v20 < v8 && *v20 == 24)
        {
          v9 = v20 + 1;
          *(a2 + 1) = v9;
LABEL_68:
          v32[0] = 0;
          if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v32);
            if (!result)
            {
              return result;
            }

            v22 = v32[0];
            v23 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v23 = v9 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 89) = v22 != 0;
          *(this + 24) |= 4u;
          if (v23 < v8 && *v23 == 33)
          {
            *(a2 + 1) = v23 + 1;
LABEL_76:
            *v32 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
            {
              return 0;
            }

            *(this + 2) = *v32;
            *(this + 24) |= 8u;
            v24 = *(a2 + 1);
            if (v24 < *(a2 + 2) && *v24 == 41)
            {
              *(a2 + 1) = v24 + 1;
LABEL_80:
              *v32 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
              {
                return 0;
              }

              *(this + 3) = *v32;
              *(this + 24) |= 0x10u;
              v25 = *(a2 + 1);
              if (v25 < *(a2 + 2) && *v25 == 49)
              {
                *(a2 + 1) = v25 + 1;
LABEL_84:
                *v32 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
                {
                  return 0;
                }

                *(this + 4) = *v32;
                *(this + 24) |= 0x20u;
                v26 = *(a2 + 1);
                if (v26 < *(a2 + 2) && *v26 == 57)
                {
                  *(a2 + 1) = v26 + 1;
LABEL_88:
                  *v32 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 5) = *v32;
                  *(this + 24) |= 0x40u;
                  v27 = *(a2 + 1);
                  if (v27 < *(a2 + 2) && *v27 == 65)
                  {
                    *(a2 + 1) = v27 + 1;
LABEL_92:
                    *v32 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
                    {
                      return 0;
                    }

                    *(this + 6) = *v32;
                    *(this + 24) |= 0x80u;
                    v28 = *(a2 + 1);
                    if (v28 < *(a2 + 2) && *v28 == 73)
                    {
                      *(a2 + 1) = v28 + 1;
LABEL_96:
                      *v32 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
                      {
                        return 0;
                      }

                      *(this + 7) = *v32;
                      *(this + 24) |= 0x100u;
                      v29 = *(a2 + 1);
                      if (v29 < *(a2 + 2) && *v29 == 81)
                      {
                        *(a2 + 1) = v29 + 1;
LABEL_100:
                        *v32 = 0;
                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v32) & 1) == 0)
                        {
                          return 0;
                        }

                        *(this + 8) = *v32;
                        *(this + 24) |= 0x200u;
                        v30 = *(a2 + 1);
                        if (v30 < *(a2 + 2) && *v30 == 89)
                        {
                          *(a2 + 1) = v30 + 1;
                          goto LABEL_104;
                        }
                      }
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
        if (v6 == 3 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_68;
        }

LABEL_48:
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
      goto LABEL_48;
    }

    *(this + 24) |= 1u;
    v10 = *(this + 1);
    if (!v10)
    {
      operator new();
    }

    v32[0] = 0;
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v32))
      {
        return 0;
      }
    }

    else
    {
      v32[0] = *v11;
      *(a2 + 1) = v11 + 1;
    }

    v13 = *(a2 + 14);
    v14 = *(a2 + 15);
    *(a2 + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v15 = *(a2 + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(a2 + 14) = v17;
    }

    v18 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v18 < v8 && *v18 == 16)
    {
      v12 = v18 + 1;
      *(a2 + 1) = v12;
      goto LABEL_60;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrBiases::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 88), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 89), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
    if ((*(v5 + 96) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_27:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrBiases::ByteSize(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v3 = v7 + v8 + 1;
      v2 = *(this + 24);
    }

    else
    {
      v3 = 0;
    }

    v9 = (v2 & 2) + v3 + ((v2 >> 1) & 2);
    if ((v2 & 8) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      result = v9 + 9;
    }

    else
    {
      result = v9;
    }
  }

  else
  {
    result = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    v10 = result + 9;
    if ((v2 & 0x100) == 0)
    {
      v10 = result;
    }

    if ((v2 & 0x200) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x400) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x800) != 0)
    {
      result = v10 + 9;
    }

    else
    {
      result = v10;
    }
  }

  *(this + 23) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrBiases::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::NrBiases::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::NrBiases::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this, const CoreNavigation::CLP::LogEntry::Raven::NrBiases *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::NrBiases::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrBiases::Swap(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this, CoreNavigation::CLP::LogEntry::Raven::NrBiases *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v2;
    LOBYTE(v2) = *(this + 89);
    *(this + 89) = *(a2 + 89);
    *(a2 + 89) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v2;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorState::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this)
{
  *(this + 11) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::EstimatorState *CoreNavigation::CLP::LogEntry::Raven::EstimatorState::EstimatorState(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorState *a2)
{
  *this = &unk_1F4CD6BD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergeFrom(this, a2);
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserPosition::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserVelocity::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 132);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 132);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 104) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 72) = 0u;
  }

  *(v1 + 132) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DevicePosition::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 132);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 132);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 104) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 72) = 0u;
  }

  *(v1 + 132) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 60))
  {
    if (*(this + 60))
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
      }
    }

    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  *(v1 + 60) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this, const CoreNavigation::CLP::LogEntry::Raven::UserPosition *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 23);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 23) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 23);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 23) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 23);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 3);
  *(this + 23) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 23);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 4);
  *(this + 23) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 6);
    *(this + 23) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 23);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 5);
  *(this + 23) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 7);
  *(this + 23) |= 0x40u;
  *(this + 7) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 8);
    *(this + 23) |= 0x80u;
    *(this + 8) = result;
    v5 = *(a2 + 23);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 9);
      *(this + 23) |= 0x100u;
      *(this + 9) = result;
      v5 = *(a2 + 23);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 10);
      *(this + 23) |= 0x200u;
      *(this + 10) = result;
    }
  }

  return result;
}

void sub_1D0C7EDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this, const CoreNavigation::CLP::LogEntry::Raven::UserVelocity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 33);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 33) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 33);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 33) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 33);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = *(a2 + 3);
  *(this + 33) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 33);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 4);
  *(this + 33) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    result = *(a2 + 6);
    *(this + 33) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 33);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = *(a2 + 5);
  *(this + 33) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_33:
  result = *(a2 + 7);
  *(this + 33) |= 0x40u;
  *(this + 7) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 8);
    *(this + 33) |= 0x80u;
    *(this + 8) = result;
    v5 = *(a2 + 33);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 9);
    *(this + 33) |= 0x100u;
    *(this + 9) = result;
    v5 = *(a2 + 33);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 10);
  *(this + 33) |= 0x200u;
  *(this + 10) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 11);
  *(this + 33) |= 0x400u;
  *(this + 11) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 12);
  *(this + 33) |= 0x800u;
  *(this + 12) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 13);
  *(this + 33) |= 0x1000u;
  *(this + 13) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_40:
  result = *(a2 + 14);
  *(this + 33) |= 0x2000u;
  *(this + 14) = result;
  if ((*(a2 + 33) & 0x4000) == 0)
  {
    return result;
  }

LABEL_21:
  result = *(a2 + 15);
  *(this + 33) |= 0x4000u;
  *(this + 15) = result;
  return result;
}

void sub_1D0C7F0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this, const CoreNavigation::CLP::LogEntry::Raven::DevicePosition *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 23);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 23) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 23);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 23) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 23);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 3);
  *(this + 23) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 23);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 4);
  *(this + 23) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 6);
    *(this + 23) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 23);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 5);
  *(this + 23) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 7);
  *(this + 23) |= 0x40u;
  *(this + 7) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 8);
    *(this + 23) |= 0x80u;
    *(this + 8) = result;
    v5 = *(a2 + 23);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 9);
      *(this + 23) |= 0x100u;
      *(this + 9) = result;
      v5 = *(a2 + 23);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 10);
      *(this + 23) |= 0x200u;
      *(this + 10) = result;
    }
  }

  return result;
}

void sub_1D0C7F318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 23);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 23) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 23);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 23) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 23);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 3);
  *(this + 23) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 23);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 4);
  *(this + 23) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 6);
    *(this + 23) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 23);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 5);
  *(this + 23) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 7);
  *(this + 23) |= 0x40u;
  *(this + 7) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 8);
    *(this + 23) |= 0x80u;
    *(this + 8) = result;
    v5 = *(a2 + 23);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 9);
      *(this + 23) |= 0x100u;
      *(this + 9) = result;
      v5 = *(a2 + 23);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 10);
      *(this + 23) |= 0x200u;
      *(this + 10) = result;
    }
  }

  return result;
}

void sub_1D0C7F55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 33);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 33) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 33);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 33) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 33);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = *(a2 + 3);
  *(this + 33) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 33);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 4);
  *(this + 33) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    result = *(a2 + 6);
    *(this + 33) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 33);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = *(a2 + 5);
  *(this + 33) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_33:
  result = *(a2 + 7);
  *(this + 33) |= 0x40u;
  *(this + 7) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 8);
    *(this + 33) |= 0x80u;
    *(this + 8) = result;
    v5 = *(a2 + 33);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 9);
    *(this + 33) |= 0x100u;
    *(this + 9) = result;
    v5 = *(a2 + 33);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 10);
  *(this + 33) |= 0x200u;
  *(this + 10) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 11);
  *(this + 33) |= 0x400u;
  *(this + 11) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 12);
  *(this + 33) |= 0x800u;
  *(this + 12) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 13);
  *(this + 33) |= 0x1000u;
  *(this + 13) = result;
  v5 = *(a2 + 33);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_40:
  result = *(a2 + 14);
  *(this + 33) |= 0x2000u;
  *(this + 14) = result;
  if ((*(a2 + 33) & 0x4000) == 0)
  {
    return result;
  }

LABEL_21:
  result = *(a2 + 15);
  *(this + 33) |= 0x4000u;
  *(this + 15) = result;
  return result;
}

void sub_1D0C7F848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 23);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 23) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 23);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 23) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 23);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 3);
  *(this + 23) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 23);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 4);
  *(this + 23) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 6);
    *(this + 23) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 23);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 5);
  *(this + 23) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 7);
  *(this + 23) |= 0x40u;
  *(this + 7) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 8);
    *(this + 23) |= 0x80u;
    *(this + 8) = result;
    v5 = *(a2 + 23);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 9);
      *(this + 23) |= 0x100u;
      *(this + 9) = result;
      v5 = *(a2 + 23);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 10);
      *(this + 23) |= 0x200u;
      *(this + 10) = result;
    }
  }

  return result;
}

void sub_1D0C7FA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 23);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 23) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 23);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 23) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 23);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 3);
  *(this + 23) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 23);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 4);
  *(this + 23) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 6);
    *(this + 23) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 23);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 5);
  *(this + 23) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 7);
  *(this + 23) |= 0x40u;
  *(this + 7) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 8);
    *(this + 23) |= 0x80u;
    *(this + 8) = result;
    v5 = *(a2 + 23);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 9);
      *(this + 23) |= 0x100u;
      *(this + 9) = result;
      v5 = *(a2 + 23);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 10);
      *(this + 23) |= 0x200u;
      *(this + 10) = result;
    }
  }

  return result;
}

void sub_1D0C7FCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 23);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 23) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 23);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 23) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 23);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 3);
  *(this + 23) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 23);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 4);
  *(this + 23) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 6);
    *(this + 23) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 23);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 5);
  *(this + 23) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 7);
  *(this + 23) |= 0x40u;
  *(this + 7) = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 8);
    *(this + 23) |= 0x80u;
    *(this + 8) = result;
    v5 = *(a2 + 23);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 9);
      *(this + 23) |= 0x100u;
      *(this + 9) = result;
      v5 = *(a2 + 23);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 10);
      *(this + 23) |= 0x200u;
      *(this + 10) = result;
    }
  }

  return result;
}

void sub_1D0C7FF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      *(this + 15) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
      v5 = *(a2 + 15);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 15) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    result = *(a2 + 3);
    *(this + 15) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    result = *(a2 + 4);
    *(this + 15) |= 8u;
    *(this + 4) = result;
    v5 = *(a2 + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_20:
    result = *(a2 + 5);
    *(this + 15) |= 0x10u;
    *(this + 5) = result;
    if ((*(a2 + 15) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 6);
    *(this + 15) |= 0x20u;
    *(this + 6) = result;
  }

  return result;
}

void sub_1D0C800D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorState::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Raven::EstimatorState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v10;
    v11 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v11;
    LODWORD(v11) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v11;
    LODWORD(v11) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v11;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::UserPosition::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this)
{
  *(this + 11) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::UserPosition *CoreNavigation::CLP::LogEntry::Raven::UserPosition::UserPosition(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this, const CoreNavigation::CLP::LogEntry::Raven::UserPosition *a2)
{
  *this = &unk_1F4CD6C48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::UserPosition::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::UserPosition::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this, const CoreNavigation::CLP::LogEntry::Raven::UserPosition *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::UserPosition::Swap(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this, CoreNavigation::CLP::LogEntry::Raven::UserPosition *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::UserVelocity::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this)
{
  result = 0.0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::UserVelocity *CoreNavigation::CLP::LogEntry::Raven::UserVelocity::UserVelocity(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this, const CoreNavigation::CLP::LogEntry::Raven::UserVelocity *a2)
{
  *this = &unk_1F4CD6CC0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::UserVelocity::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::UserVelocity::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this, const CoreNavigation::CLP::LogEntry::Raven::UserVelocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::UserVelocity::Swap(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this, CoreNavigation::CLP::LogEntry::Raven::UserVelocity *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    v11 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v11;
    v12 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v12;
    v13 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v13;
    v14 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v14;
    v15 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v15;
    result = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = result;
    LODWORD(v2) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DevicePosition::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this)
{
  *(this + 11) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::DevicePosition *CoreNavigation::CLP::LogEntry::Raven::DevicePosition::DevicePosition(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this, const CoreNavigation::CLP::LogEntry::Raven::DevicePosition *a2)
{
  *this = &unk_1F4CD6D38;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::DevicePosition::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::DevicePosition::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this, const CoreNavigation::CLP::LogEntry::Raven::DevicePosition *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DevicePosition::Swap(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this, CoreNavigation::CLP::LogEntry::Raven::DevicePosition *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this)
{
  *(this + 11) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::DeviceVelocity(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *a2)
{
  *this = &unk_1F4CD6DB0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::Swap(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this, CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this)
{
  result = 0.0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::DeviceAttitude(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *a2)
{
  *this = &unk_1F4CD6E28;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::~DeviceAttitude(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this)
{
  *this = &unk_1F4CD6E28;
  CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::~DeviceAttitude(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 132);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 132);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 112), a3);
    if ((*(v5 + 132) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return this;
  }

LABEL_33:
  v8 = *(v5 + 120);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v3 = v7 + v8 + 1;
      v2 = *(this + 33);
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
      result = v3 + 9;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    v9 = result + 9;
    if ((v2 & 0x100) == 0)
    {
      v9 = result;
    }

    if ((v2 & 0x200) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x400) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x800) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x2000) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x4000) != 0)
    {
      result = v9 + 9;
    }

    else
    {
      result = v9;
    }
  }

  *(this + 32) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::Swap(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this, CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    v11 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v11;
    v12 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v12;
    v13 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v13;
    v14 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v14;
    v15 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v15;
    result = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = result;
    LODWORD(v2) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this)
{
  *(this + 11) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::DeviceRateGyroBias(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *a2)
{
  *this = &unk_1F4CD6EA0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::~DeviceRateGyroBias(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this)
{
  *this = &unk_1F4CD6EA0;
  CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::~DeviceRateGyroBias(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this)
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
        v4 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_ + 8);
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

double CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::Swap(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this, CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this)
{
  *(this + 11) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::DeviceAccelerometerBias(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *a2)
{
  *this = &unk_1F4CD6F18;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::~DeviceAccelerometerBias(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this)
{
  *this = &unk_1F4CD6F18;
  CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::~DeviceAccelerometerBias(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this)
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
        v4 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_ + 8);
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

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::Swap(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this, CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this)
{
  *(this + 11) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::DeviceAccelerometerScaleFactor(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *a2)
{
  *this = &unk_1F4CD6F90;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::~DeviceAccelerometerScaleFactor(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this)
{
  *this = &unk_1F4CD6F90;
  CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::~DeviceAccelerometerScaleFactor(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this)
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
        v4 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_ + 8);
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

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::Swap(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this, CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::DeviceReceiverClockDiscrepancy(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *a2)
{
  *this = &unk_1F4CD7008;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this, const CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::Swap(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this, CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
  }

  return result;
}

void sub_1D0C84594(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0C84708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_ShutdownFile_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(CoreNavigation::CLP::LogEntry::TropicalSavanna *this)
{
  if (CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_;
  if (CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ + 8);

    return v2();
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::LogEntry(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD7248;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD7248;
  return this;
}

double CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::TimeStamp(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this)
{
  *this = &unk_1F4CD72C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD72C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::TropicalSavannaHint(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this)
{
  *this = &unk_1F4CD7338;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD7338;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(CoreNavigation::CLP::LogEntry::TropicalSavanna *this)
{
  v1 = CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C84A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD7248;
  CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::MergeFrom(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    *(this + 5) |= 1u;
    v4 = *(this + 1);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::MergeFrom(v4, v5);
  }
}

void sub_1D0C84BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::~LogEntry(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *this)
{
  *this = &unk_1F4CD7248;
  CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::~LogEntry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::SharedDtor(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 20))
  {
    this = *(this + 8);
    if (this)
    {
      this = CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::Clear(this);
    }
  }

  *(v1 + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 36);
  if (v1)
  {
    if (*(this + 36))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 36);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }

    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v14 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || *v7 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14))
        {
          return 0;
        }
      }

      else
      {
        v14 = *v7;
        *(a2 + 1) = v7 + 1;
      }

      v8 = *(a2 + 14);
      v9 = *(a2 + 15);
      *(a2 + 14) = v8 + 1;
      if (v8 >= v9)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::MergePartialFromCodedStream(v6, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v10 = *(a2 + 14);
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v12 < 0 == v11)
      {
        *(a2 + 14) = v12;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}