void sub_24554C730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectAssistanceTime::MergeFrom(proto::gpsd::InjectAssistanceTime *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v7;
    if ((*(a2 + 9) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = v5;
  }
}

void sub_24554C81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistancePressure::MergeFrom(proto::gpsd::SetAssistancePressure *this, const proto::gpsd::SetAssistancePressure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(this + 4);
  v5 = *(a2 + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v6) = *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      v8 = *(*(a2 + 1) + 8 * v7);
      v9 = *(this + 5);
      v10 = *(this + 4);
      if (v10 >= v9)
      {
        if (v9 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v9 = *(this + 5);
        }

        *(this + 5) = v9 + 1;
        operator new();
      }

      v11 = *(this + 1);
      *(this + 4) = v10 + 1;
      proto::gnss::RawPressureSample::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }
}

void sub_24554C9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceAccel::MergeFrom(proto::gpsd::SetAssistanceAccel *this, const proto::gpsd::SetAssistanceAccel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::SensorSample3Axis>::MergeFrom((this + 8), a2 + 8);
}

void sub_24554CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceGyro::MergeFrom(proto::gpsd::SetAssistanceGyro *this, const proto::gpsd::SetAssistanceGyro *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::SensorSample3Axis>::MergeFrom((this + 8), a2 + 8);
}

void sub_24554CB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gpsd::SetAssistanceDem::MergeFrom(proto::gpsd::SetAssistanceDem *this, const proto::gpsd::SetAssistanceDem *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_24554CC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMapVector::MergeFrom(proto::gpsd::SetAssistanceMapVector *this, const proto::gpsd::SetAssistanceMapVector *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 19);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 19) |= 2u;
  *(this + 2) = v8;
  v4 = *(a2 + 19);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 3);
  *(this + 19) |= 4u;
  *(this + 3) = v9;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 64);
  *(this + 19) |= 8u;
  *(this + 64) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v12 = *(a2 + 5);
    *(this + 19) |= 0x20u;
    *(this + 5) = v12;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v11 = *(a2 + 4);
  *(this + 19) |= 0x10u;
  *(this + 4) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v13 = *(a2 + 6);
  *(this + 19) |= 0x40u;
  *(this + 6) = v13;
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 7);
    *(this + 19) |= 0x80u;
    *(this + 7) = v5;
    v4 = *(a2 + 19);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 65);
    *(this + 19) |= 0x100u;
    *(this + 65) = v14;
    v4 = *(a2 + 19);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 66);
  *(this + 19) |= 0x200u;
  *(this + 66) = v15;
  v4 = *(a2 + 19);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 67);
  *(this + 19) |= 0x400u;
  *(this + 67) = v16;
  v4 = *(a2 + 19);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_32:
  v17 = *(a2 + 68);
  *(this + 19) |= 0x800u;
  *(this + 68) = v17;
  if ((*(a2 + 19) & 0x1000) == 0)
  {
    return;
  }

LABEL_19:
  v6 = *(a2 + 69);
  *(this + 19) |= 0x1000u;
  *(this + 69) = v6;
}

void sub_24554CE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(proto::gpsd::SetAssistanceMotionActivityContext *this, const proto::gpsd::SetAssistanceMotionActivityContext *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      if (v6 >= 0xA)
      {
        __assert_rtn("set_context", "GpsdProtocol.pb.h", 10092, "::proto::gnss::MotionActivityContext_IsValid(value)");
      }

      *(this + 8) |= 2u;
      *(this + 4) = v6;
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 5);
      if (v7 >= 5)
      {
        __assert_rtn("set_moving_state", "GpsdProtocol.pb.h", 10115, "::proto::gnss::MovingState_IsValid(value)");
      }

      *(this + 8) |= 4u;
      *(this + 5) = v7;
      v4 = *(a2 + 8);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 6);
      if (!proto::gnss::Reliability_IsValid(v8))
      {
        __assert_rtn("set_motion_reliability", "GpsdProtocol.pb.h", 10138, "::proto::gnss::Reliability_IsValid(value)");
      }

      *(this + 8) |= 8u;
      *(this + 6) = v8;
    }
  }
}

void sub_24554CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceMountState::MergeFrom(proto::gpsd::SetAssistanceMountState *this, const proto::gpsd::SetAssistanceMountState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      if ((v6 - 1) >= 4)
      {
        __assert_rtn("set_mount_state", "GpsdProtocol.pb.h", 10187, "::proto::gnss::DeviceMountState_IsValid(value)");
      }

      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_24554D0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(proto::gpsd::SetAssistanceSignalEnvironment *this, const proto::gpsd::SetAssistanceSignalEnvironment *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 >= 7 && v4 != 15)
    {
      __assert_rtn("set_signal_environment_type", "GpsdProtocol.pb.h", 10214, "::proto::gnss::SignalEnvironmentType_IsValid(value)");
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_24554D178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(proto::gpsd::SetAssistanceSpeedConstraint *this, const proto::gpsd::SetAssistanceSpeedConstraint *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_24554D284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(proto::gpsd::SetAssistanceAlongTrackVelocity *this, const proto::gpsd::SetAssistanceAlongTrackVelocity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_24554D370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectAssistanceFile::MergeFrom(proto::gpsd::InjectAssistanceFile *this, const proto::gpsd::InjectAssistanceFile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      v6 = *(this + 1);
      if (v6 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if (v7 >= 3)
      {
        __assert_rtn("set_compression_type", "GpsdProtocol.pb.h", 9161, "::proto::gpsd::CompressionType_IsValid(value)");
      }

      *(this + 7) |= 2u;
      *(this + 4) = v7;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 5);
      if (v8 >= 7)
      {
        __assert_rtn("set_assistance_file_type", "GpsdProtocol.pb.h", 9184, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
      }

      *(this + 7) |= 4u;
      *(this + 5) = v8;
    }
  }
}

void sub_24554D4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectRtiFile::MergeFrom(proto::gpsd::InjectRtiFile *this, const proto::gpsd::InjectRtiFile *a2)
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
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24554D5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectSvidBlocklist::MergeFrom(proto::gpsd::InjectSvidBlocklist *this, const proto::gpsd::InjectSvidBlocklist *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(this + 4);
  v5 = *(a2 + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v6) = *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      v8 = *(*(a2 + 1) + 8 * v7);
      v9 = *(this + 5);
      v10 = *(this + 4);
      if (v10 >= v9)
      {
        if (v9 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v9 = *(this + 5);
        }

        *(this + 5) = v9 + 1;
        operator new();
      }

      v11 = *(this + 1);
      *(this + 4) = v10 + 1;
      proto::gnss::SvId::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }
}

void sub_24554D790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::DeleteGnssData::MergeFrom(proto::gpsd::DeleteGnssData *this, const proto::gpsd::DeleteGnssData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_24554D83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetPvtmReport::MergeFrom(proto::gpsd::SetPvtmReport *this, const proto::gpsd::SetPvtmReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 8);
      *(this + 5) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 5);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 9);
    *(this + 5) |= 2u;
    *(this + 9) = v7;
    v4 = *(a2 + 5);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = *(a2 + 10);
    *(this + 5) |= 4u;
    *(this + 10) = v8;
    v4 = *(a2 + 5);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 11);
    *(this + 5) |= 8u;
    *(this + 11) = v9;
    v4 = *(a2 + 5);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = *(a2 + 12);
    *(this + 5) |= 0x10u;
    *(this + 12) = v10;
    if ((*(a2 + 5) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 13);
    *(this + 5) |= 0x20u;
    *(this + 13) = v5;
  }
}

void sub_24554D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetNmeaHandler::MergeFrom(proto::gpsd::SetNmeaHandler *this, const proto::gpsd::SetNmeaHandler *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_24554DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigSimulatorMode::MergeFrom(proto::gpsd::SetConfigSimulatorMode *this, const proto::gpsd::SetConfigSimulatorMode *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      *(this + 5) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_24554DAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(proto::gpsd::SetConfigEnableGnssConstellations *this, const proto::gpsd::SetConfigEnableGnssConstellations *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_24554DBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigDutyCycling::MergeFrom(proto::gpsd::SetConfigDutyCycling *this, const proto::gpsd::SetConfigDutyCycling *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(this + 4) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_24554DC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::TerminationImminent::MergeFrom(proto::gpsd::TerminationImminent *this, const proto::gpsd::TerminationImminent *a2)
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
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24554DD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::ExitMessage::MergeFrom(proto::gpsd::ExitMessage *this, const proto::gpsd::ExitMessage *a2)
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
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24554DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfo::MergeFrom(proto::gpsd::LtlInfo *this, const proto::gpsd::LtlInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 56))
  {
    v5 = *(a2 + 8);
    *(this + 14) |= 1u;
    *(this + 8) = v5;
    v4 = *(a2 + 14);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 3);
  *(this + 14) |= 2u;
  *(this + 3) = v6;
  v4 = *(a2 + 14);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  v7 = *(a2 + 12);
  if (v7 >= 5)
  {
    __assert_rtn("set_info_type", "GpsdProtocol.pb.h", 11634, "::proto::gpsd::LtlInfoType_IsValid(value)");
  }

  *(this + 14) |= 4u;
  *(this + 12) = v7;
  v4 = *(a2 + 14);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    *(this + 14) |= 0x10u;
    v10 = *(this + 3);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 3);
    if (!v11)
    {
      v11 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
    }

    proto::gpsd::LtlInfo_LtlLutParams::MergeFrom(v10, v11);
    v4 = *(a2 + 14);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_16:
  *(this + 14) |= 8u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  proto::gpsd::LtlInfo_LtlInitialParams::MergeFrom(v8, v9);
  v4 = *(a2 + 14);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_26:
  *(this + 14) |= 0x20u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    v13 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergeFrom(v12, v13);
  if ((*(a2 + 14) & 0x40) != 0)
  {
LABEL_31:
    *(this + 14) |= 0x40u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      v15 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergeFrom(v14, v15);
  }
}

void sub_24554E120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::StartContext::MergeFrom(proto::gpsd::StartContext *this, const proto::gpsd::StartContext *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 16);
      *(this + 6) |= 1u;
      *(this + 16) = v6;
      v4 = *(a2 + 6);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 17);
    *(this + 6) |= 2u;
    *(this + 17) = v7;
    v4 = *(a2 + 6);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 18);
    *(this + 6) |= 4u;
    *(this + 18) = v8;
    v4 = *(a2 + 6);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 1);
    *(this + 6) |= 8u;
    *(this + 1) = v9;
    if ((*(a2 + 6) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 19);
    *(this + 6) |= 0x10u;
    *(this + 19) = v5;
  }
}

void sub_24554E24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetThermalRiskState::MergeFrom(proto::gpsd::SetThermalRiskState *this, const proto::gpsd::SetThermalRiskState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_24554E310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetConfigRfBandEnable::MergeFrom(proto::gpsd::SetConfigRfBandEnable *this, const proto::gpsd::SetConfigRfBandEnable *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = *(a2 + 8);
      *(this + 4) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 4);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 9);
      *(this + 4) |= 2u;
      *(this + 9) = v6;
    }
  }
}

void sub_24554E3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectRavenOrbitFile::MergeFrom(proto::gpsd::InjectRavenOrbitFile *this, const proto::gpsd::InjectRavenOrbitFile *a2)
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
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24554E4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Request::CopyFrom(proto::gpsd::Request *this, const proto::gpsd::Request *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Request::MergeFrom(this, a2);
  }
}

double proto::gpsd::Request::Swap(proto::gpsd::Request *this, proto::gpsd::Request *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    v14 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v14;
    v15 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v15;
    v16 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v16;
    v17 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v18;
    v19 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v19;
    v20 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v20;
    v21 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v21;
    v22 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v22;
    v23 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v23;
    v24 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v24;
    v25 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v25;
    v26 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v26;
    v27 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v27;
    v28 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v28;
    v29 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v29;
    v30 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v30;
    v31 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v31;
    v32 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v32;
    v33 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v33;
    LODWORD(v33) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v33;
    v34 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v34;
    v35 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v35;
    v36 = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v36;
    v37 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v37;
    v38 = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v38;
    v39 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v39;
    v40 = *(this + 41);
    *(this + 41) = *(a2 + 41);
    v41 = *(a2 + 42);
    *(a2 + 41) = v40;
    v42 = *(this + 42);
    *(this + 42) = v41;
    *(a2 + 42) = v42;
    v43 = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v43;
    LODWORD(v43) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v43;
    v44 = *(this + 44);
    *(this + 44) = *(a2 + 44);
    result = *(a2 + 45);
    *(a2 + 44) = v44;
    v46 = *(this + 45);
    *(this + 45) = result;
    *(a2 + 45) = v46;
    LOBYTE(v44) = *(this + 368);
    *(this + 368) = *(a2 + 368);
    *(a2 + 368) = v44;
    LODWORD(v44) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v44;
    v47 = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v47;
    v48 = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v48;
    LODWORD(v48) = *(this + 99);
    *(this + 99) = *(a2 + 99);
    *(a2 + 99) = v48;
    LODWORD(v48) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v48;
    LODWORD(v48) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v48;
  }

  return result;
}

void *proto::gpsd::Response::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gpsd::Response *proto::gpsd::Response::Response(proto::gpsd::Response *this, const proto::gpsd::Response *a2)
{
  *this = &unk_285862100;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gpsd::Response::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Response::MergeFrom(proto::gpsd::Response *this, const proto::gpsd::Response *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 4);
      if (!proto::gpsd::Request_Type_IsValid(v5))
      {
        __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7674, "::proto::gpsd::Request_Type_IsValid(value)");
      }

      *(this + 7) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 2u;
      *(this + 1) = v6;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 5);
      if (v7 >= 0xA)
      {
        __assert_rtn("set_result_code", "GpsdProtocol.pb.h", 7719, "::proto::gnss::Result_IsValid(value)");
      }

      *(this + 7) |= 4u;
      *(this + 5) = v7;
    }
  }
}

void sub_24554EA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Response::~Response(proto::gpsd::Response *this)
{
  *this = &unk_285862100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::Response::default_instance(proto::gpsd::Response *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Response::default_instance_;
  if (!proto::gpsd::Response::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Response::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Response::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gpsd::Response::MergePartialFromCodedStream(proto::gpsd::Response *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_35;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v18 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
        if (!result)
        {
          return result;
        }

        v8 = v18;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (proto::gpsd::Request_Type_IsValid(v8))
      {
        *(this + 7) |= 1u;
        *(this + 4) = v8;
      }

      v12 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v12 < v9 && *v12 == 16)
      {
        v10 = v12 + 1;
        *(a2 + 1) = v10;
LABEL_27:
        if (v10 >= v9 || (v13 = *v10, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v10 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 7) |= 2u;
        if (v14 < v9 && *v14 == 24)
        {
          v11 = v14 + 1;
          *(a2 + 1) = v11;
LABEL_35:
          v17 = 0;
          if (v11 >= v9 || (v15 = *v11, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17);
            if (!result)
            {
              return result;
            }

            v15 = v17;
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v15 <= 9)
          {
            *(this + 7) |= 4u;
            *(this + 5) = v15;
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
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_27;
    }

LABEL_16:
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

uint64_t proto::gpsd::Response::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
}

uint64_t proto::gpsd::Response::ByteSize(proto::gpsd::Response *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 7);
    goto LABEL_12;
  }

  v4 = *(this + 4);
  if ((v4 & 0x80000000) != 0)
  {
    v3 = 11;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 7);
    if ((v2 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v5 = *(this + 5);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

LABEL_21:
  *(this + 6) = v3;
  return v3;
}

void proto::gpsd::Response::CheckTypeAndMergeFrom(proto::gpsd::Response *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Response::MergeFrom(this, lpsrc);
}

void proto::gpsd::Response::CopyFrom(proto::gpsd::Response *this, const proto::gpsd::Response *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Response::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::Response::Swap(uint64_t this, proto::gpsd::Response *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

double proto::gpsd::Indication::SharedCtor(proto::gpsd::Indication *this)
{
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 15) = 0;
  *(this + 16) = v2;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

uint64_t proto::gpsd::Status::default_instance(proto::gpsd::Status *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Status::default_instance_;
  if (!proto::gpsd::Status::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Status::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::RecoveryStatistics::default_instance(proto::gpsd::RecoveryStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::RecoveryStatistics::default_instance_;
  if (!proto::gpsd::RecoveryStatistics::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::RecoveryStatistics::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfoRequest::default_instance(proto::gpsd::LtlInfoRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfoRequest::default_instance_;
  if (!proto::gpsd::LtlInfoRequest::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfoRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Exception::default_instance(proto::gpsd::Exception *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Exception::default_instance_;
  if (!proto::gpsd::Exception::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Exception::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::AskBasebandReset::default_instance(proto::gpsd::AskBasebandReset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::AskBasebandReset::default_instance_;
  if (!proto::gpsd::AskBasebandReset::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::AskBasebandReset::default_instance_;
  }

  return result;
}

proto::gpsd::Indication *proto::gpsd::Indication::Indication(proto::gpsd::Indication *this, const proto::gpsd::Indication *a2)
{
  *this = &unk_285862178;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  v3 = MEMORY[0x277D82C30];
  *(this + 15) = 0;
  *(this + 16) = v3;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  proto::gpsd::Indication::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Indication::MergeFrom(proto::gpsd::Indication *this, const proto::gpsd::Indication *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v56);
  }

  v4 = *(a2 + 54);
  if (!v4)
  {
    goto LABEL_46;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    if (v5 > 0x1B || ((1 << v5) & 0xFDFFE3F) == 0)
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 7746, "::proto::gpsd::Indication_Type_IsValid(value)");
    }

    *(this + 54) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 54);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 3);
    if (!proto::gpsd::Request_Type_IsValid(v7))
    {
      __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7769, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    *(this + 54) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 54);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 54) |= 4u;
    *(this + 2) = v8;
    v4 = *(a2 + 54);
    if ((v4 & 8) == 0)
    {
LABEL_15:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(this + 54) |= 8u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(proto::gpsd::Indication::default_instance_ + 24);
  }

  proto::gnss::Fix::MergeFrom(v9, v10);
  v4 = *(a2 + 54);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_31:
    *(this + 54) |= 0x20u;
    v13 = *(this + 5);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 5);
    if (!v14)
    {
      v14 = *(proto::gpsd::Indication::default_instance_ + 40);
    }

    proto::gnss::PwrMeasurement::MergeFrom(v13, v14);
    v4 = *(a2 + 54);
    if ((v4 & 0x40) == 0)
    {
LABEL_18:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(this + 54) |= 0x10u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    v12 = *(proto::gpsd::Indication::default_instance_ + 32);
  }

  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(v11, v12);
  v4 = *(a2 + 54);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  *(this + 54) |= 0x40u;
  v15 = *(this + 6);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 6);
  if (!v16)
  {
    v16 = *(proto::gpsd::Indication::default_instance_ + 48);
  }

  proto::gpsd::Status::MergeFrom(v15, v16);
  v4 = *(a2 + 54);
  if ((v4 & 0x80) != 0)
  {
LABEL_41:
    *(this + 54) |= 0x80u;
    v17 = *(this + 7);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 7);
    if (!v18)
    {
      v18 = *(proto::gpsd::Indication::default_instance_ + 56);
    }

    proto::gnss::TimeTransferDataExtend::MergeFrom(v17, v18);
    v4 = *(a2 + 54);
  }

LABEL_46:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_90;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 54) |= 0x100u;
    v19 = *(this + 8);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 8);
    if (!v20)
    {
      v20 = *(proto::gpsd::Indication::default_instance_ + 64);
    }

    proto::gpsd::RecoveryStatistics::MergeFrom(v19, v20);
    v4 = *(a2 + 54);
    if ((v4 & 0x200) == 0)
    {
LABEL_49:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  *(this + 54) |= 0x200u;
  v21 = *(this + 9);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 9);
  if (!v22)
  {
    v22 = *(proto::gpsd::Indication::default_instance_ + 72);
  }

  proto::gpsd::LtlInfoRequest::MergeFrom(v21, v22);
  v4 = *(a2 + 54);
  if ((v4 & 0x400) == 0)
  {
LABEL_50:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(this + 54) |= 0x400u;
  v23 = *(this + 10);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 10);
  if (!v24)
  {
    v24 = *(proto::gpsd::Indication::default_instance_ + 80);
  }

  proto::gnss::DecodedExtendedEphemeris::MergeFrom(v23, v24);
  v4 = *(a2 + 54);
  if ((v4 & 0x800) == 0)
  {
LABEL_51:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(this + 54) |= 0x800u;
  v25 = *(this + 11);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 11);
  if (!v26)
  {
    v26 = *(proto::gpsd::Indication::default_instance_ + 88);
  }

  proto::gnss::DecodedRti::MergeFrom(v25, v26);
  v4 = *(a2 + 54);
  if ((v4 & 0x1000) == 0)
  {
LABEL_52:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_78;
  }

LABEL_76:
  v27 = *(a2 + 24);
  if (v27 >= 0xA)
  {
    __assert_rtn("set_start_status", "GpsdProtocol.pb.h", 0x2000, "::proto::gnss::Result_IsValid(value)");
  }

  *(this + 54) |= 0x1000u;
  *(this + 24) = v27;
  v4 = *(a2 + 54);
  if ((v4 & 0x2000) == 0)
  {
LABEL_53:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_80;
  }

LABEL_78:
  v28 = *(a2 + 25);
  if (v28 >= 0xA)
  {
    __assert_rtn("set_stop_status", "GpsdProtocol.pb.h", 8215, "::proto::gnss::Result_IsValid(value)");
  }

  *(this + 54) |= 0x2000u;
  *(this + 25) = v28;
  v4 = *(a2 + 54);
  if ((v4 & 0x4000) == 0)
  {
LABEL_54:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

LABEL_80:
  *(this + 54) |= 0x4000u;
  v29 = *(this + 13);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 13);
  if (!v30)
  {
    v30 = *(proto::gpsd::Indication::default_instance_ + 104);
  }

  proto::gpsd::Exception::MergeFrom(v29, v30);
  v4 = *(a2 + 54);
  if ((v4 & 0x8000) != 0)
  {
LABEL_85:
    *(this + 54) |= 0x8000u;
    v31 = *(this + 14);
    if (!v31)
    {
      operator new();
    }

    v32 = *(a2 + 14);
    if (!v32)
    {
      v32 = *(proto::gpsd::Indication::default_instance_ + 112);
    }

    proto::gpsd::AskBasebandReset::MergeFrom(v31, v32);
    v4 = *(a2 + 54);
  }

LABEL_90:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_138;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(this + 54) |= 0x10000u;
    v33 = *(this + 15);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 15);
    if (!v34)
    {
      v34 = *(proto::gpsd::Indication::default_instance_ + 120);
    }

    proto::gnss::Emergency::SummaryReport::MergeFrom(v33, v34);
    v4 = *(a2 + 54);
    if ((v4 & 0x20000) == 0)
    {
LABEL_93:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_108;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_93;
  }

  v35 = *(a2 + 16);
  *(this + 54) |= 0x20000u;
  v36 = *(this + 16);
  if (v36 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v36, v35);
  v4 = *(a2 + 54);
  if ((v4 & 0x40000) == 0)
  {
LABEL_94:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_113;
  }

LABEL_108:
  *(this + 54) |= 0x40000u;
  v37 = *(this + 17);
  if (!v37)
  {
    operator new();
  }

  v38 = *(a2 + 17);
  if (!v38)
  {
    v38 = *(proto::gpsd::Indication::default_instance_ + 136);
  }

  proto::gnss::Emergency::PositionReport::MergeFrom(v37, v38);
  v4 = *(a2 + 54);
  if ((v4 & 0x80000) == 0)
  {
LABEL_95:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_118;
  }

LABEL_113:
  *(this + 54) |= 0x80000u;
  v39 = *(this + 18);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 18);
  if (!v40)
  {
    v40 = *(proto::gpsd::Indication::default_instance_ + 144);
  }

  proto::gnss::Emergency::MeasurementReport::MergeFrom(v39, v40);
  v4 = *(a2 + 54);
  if ((v4 & 0x100000) == 0)
  {
LABEL_96:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_123;
  }

LABEL_118:
  *(this + 54) |= 0x100000u;
  v41 = *(this + 19);
  if (!v41)
  {
    operator new();
  }

  v42 = *(a2 + 19);
  if (!v42)
  {
    v42 = *(proto::gpsd::Indication::default_instance_ + 152);
  }

  proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(v41, v42);
  v4 = *(a2 + 54);
  if ((v4 & 0x200000) == 0)
  {
LABEL_97:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_128;
  }

LABEL_123:
  *(this + 54) |= 0x200000u;
  v43 = *(this + 20);
  if (!v43)
  {
    operator new();
  }

  v44 = *(a2 + 20);
  if (!v44)
  {
    v44 = *(proto::gpsd::Indication::default_instance_ + 160);
  }

  proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(v43, v44);
  v4 = *(a2 + 54);
  if ((v4 & 0x400000) == 0)
  {
LABEL_98:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_133;
  }

LABEL_128:
  *(this + 54) |= 0x400000u;
  v45 = *(this + 21);
  if (!v45)
  {
    operator new();
  }

  v46 = *(a2 + 21);
  if (!v46)
  {
    v46 = *(proto::gpsd::Indication::default_instance_ + 168);
  }

  proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(v45, v46);
  v4 = *(a2 + 54);
  if ((v4 & 0x800000) != 0)
  {
LABEL_133:
    *(this + 54) |= 0x800000u;
    v47 = *(this + 22);
    if (!v47)
    {
      operator new();
    }

    v48 = *(a2 + 22);
    if (!v48)
    {
      v48 = *(proto::gpsd::Indication::default_instance_ + 176);
    }

    proto::gnss::Emergency::SessionStatus::MergeFrom(v47, v48);
    v4 = *(a2 + 54);
  }

LABEL_138:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(this + 54) |= 0x1000000u;
    v52 = *(this + 23);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 23);
    if (!v53)
    {
      v53 = *(proto::gpsd::Indication::default_instance_ + 184);
    }

    proto::gnss::Emergency::Init::MergeFrom(v52, v53);
    v4 = *(a2 + 54);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_141:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_157;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_141;
  }

  v54 = *(a2 + 48);
  *(this + 54) |= 0x2000000u;
  *(this + 48) = v54;
  v4 = *(a2 + 54);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_142:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_157:
  v55 = *(a2 + 49);
  if (v55 >= 3 && v55 != 4)
  {
    __assert_rtn("set_supl_init_decode_result", "GpsdProtocol.pb.h", 8750, "::proto::gpsd::SuplInitDecodeResult_IsValid(value)");
  }

  *(this + 54) |= 0x4000000u;
  *(this + 49) = v55;
  v4 = *(a2 + 54);
  if ((v4 & 0x8000000) == 0)
  {
    goto LABEL_144;
  }

LABEL_143:
  v49 = *(a2 + 52);
  *(this + 54) |= 0x8000000u;
  *(this + 52) = v49;
  v4 = *(a2 + 54);
LABEL_144:
  if ((v4 & 0x10000000) != 0)
  {
    *(this + 54) |= 0x10000000u;
    v50 = *(this + 25);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 25);
    if (!v51)
    {
      v51 = *(proto::gpsd::Indication::default_instance_ + 200);
    }

    proto::gnss::Emergency::WlanMeasurementRequest::MergeFrom(v50, v51);
  }
}

void sub_24554FFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Indication::~Indication(proto::gpsd::Indication *this)
{
  *this = &unk_285862178;
  proto::gpsd::Indication::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862178;
  proto::gpsd::Indication::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862178;
  proto::gpsd::Indication::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::Indication::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[16];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x245D6AEE0](v2, 0x1012C40EC159624);
  }

  if (proto::gpsd::Indication::default_instance_ != v1)
  {
    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[13];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[14];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[15];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[17];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[18];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[19];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[20];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[21];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[22];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[23];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    this = v1[25];
    if (this)
    {
      v23 = *(*this + 8);

      return v23();
    }
  }

  return this;
}

uint64_t proto::gpsd::Indication::default_instance(proto::gpsd::Indication *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Indication::default_instance_;
  if (!proto::gpsd::Indication::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Indication::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Indication::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 216);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Fix::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 48) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 23) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = proto::gnss::TimeTransferDataExtend::Clear(this);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = proto::gpsd::RecoveryStatistics::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v5 = *(v1 + 72);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      v6 = *(v1 + 80);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 28) = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      v7 = *(v1 + 88);
      if (v7)
      {
        if (*(v7 + 24))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        *(v7 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 96) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v8 = *(v1 + 104);
      if (v8)
      {
        if (*(v8 + 24))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
        }

        *(v8 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = proto::gpsd::AskBasebandReset::Clear(this);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v9 = *(v1 + 120);
      if (v9)
      {
        v10 = *(v9 + 124);
        if (v10)
        {
          *(v9 + 56) = 0;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 89) = 0u;
          *(v9 + 64) = 0u;
          *(v9 + 80) = 0u;
        }

        if ((v10 & 0xFF0000) != 0)
        {
          *(v9 + 105) = 0;
          *(v9 + 112) = 0;
          *(v9 + 108) = 0;
        }

        *(v9 + 124) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 = *(v1 + 128);
      if (v11 != MEMORY[0x277D82C30])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    v2 = *(v1 + 216);
    if ((v2 & 0x40000) != 0)
    {
      this = *(v1 + 136);
      if (this)
      {
        this = proto::gnss::Emergency::PositionReport::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      this = *(v1 + 144);
      if (this)
      {
        this = proto::gnss::Emergency::MeasurementReport::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      this = *(v1 + 152);
      if (this)
      {
        this = proto::gnss::Emergency::AssistanceNeededReport::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      v12 = *(v1 + 160);
      if (v12)
      {
        if (*(v12 + 16))
        {
          *(v12 + 8) = 0;
        }

        *(v12 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      this = *(v1 + 168);
      if (this)
      {
        this = proto::gnss::Emergency::MeasurementReportWithEstimate::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      this = *(v1 + 176);
      if (this)
      {
        this = proto::gnss::Emergency::SessionStatus::Clear(this);
        v2 = *(v1 + 216);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      this = *(v1 + 184);
      if (this)
      {
        this = proto::gnss::Emergency::Init::Clear(this);
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 192) = 0;
    *(v1 + 208) = 0;
    if ((v2 & 0x10000000) != 0)
    {
      v13 = *(v1 + 200);
      if (v13)
      {
        if (*(v13 + 20))
        {
          *(v13 + 8) = 0;
          *(v13 + 12) = 0;
        }

        *(v13 + 20) = 0;
      }
    }
  }

  *(v1 + 216) = 0;
  return this;
}

uint64_t proto::gpsd::Status::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 23) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::Clear(uint64_t this)
{
  v1 = this;
  if ((*(this + 44) & 2) != 0)
  {
    v2 = *(this + 32);
    if (v2)
    {
      if (*(v2 + 20))
      {
        *(v2 + 11) = 0;
        *(v2 + 8) = 0;
      }

      *(v2 + 20) = 0;
    }
  }

  if (*(this + 16) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 8) + 8 * v3);
      this = (*(*v4 + 32))(v4);
      ++v3;
    }

    while (v3 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::Exception::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::AskBasebandReset::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 24);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::Indication::MergePartialFromCodedStream(proto::gpsd::Indication *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v183 = 0;
        v7 = *(a2 + 1);
        if (v7 < *(a2 + 2))
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            *(a2 + 1) = v7 + 1;
            goto LABEL_72;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183);
        if (result)
        {
          v8 = v183;
LABEL_72:
          if (v8 <= 0x1B && ((1 << v8) & 0xFDFFE3F) != 0)
          {
            if (v8 > 0x1B || ((1 << v8) & 0xFDFFE3F) == 0)
            {
              __assert_rtn("set_type", "GpsdProtocol.pb.h", 7746, "::proto::gpsd::Indication_Type_IsValid(value)");
            }

            *(this + 54) |= 1u;
            *(this + 2) = v8;
          }

          v26 = *(a2 + 1);
          v18 = *(a2 + 2);
          if (v26 < v18 && *v26 == 16)
          {
            v19 = v26 + 1;
            *(a2 + 1) = v19;
            goto LABEL_82;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
LABEL_82:
        v183 = 0;
        if (v19 >= v18 || (v27 = *v19, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183);
          if (!result)
          {
            return result;
          }

          v27 = v183;
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (proto::gpsd::Request_Type_IsValid(v27))
        {
          *(this + 54) |= 2u;
          *(this + 3) = v27;
        }

        v28 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v28 >= v16 || *v28 != 24)
        {
          continue;
        }

        v17 = v28 + 1;
        *(a2 + 1) = v17;
LABEL_92:
        if (v17 >= v16 || (v29 = *v17, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v29;
          v30 = v17 + 1;
          *(a2 + 1) = v30;
        }

        v20 = *(this + 54) | 4;
        *(this + 54) = v20;
        if (v30 >= v16 || *v30 != 34)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_100:
        *(this + 54) = v20 | 8;
        v31 = *(this + 3);
        if (!v31)
        {
          operator new();
        }

        v183 = 0;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v32;
          *(a2 + 1) = v32 + 1;
        }

        v33 = *(a2 + 14);
        v34 = *(a2 + 15);
        *(a2 + 14) = v33 + 1;
        if (v33 >= v34)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Fix::MergePartialFromCodedStream(v31, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v35 = *(a2 + 14);
        v36 = __OFSUB__(v35, 1);
        v37 = v35 - 1;
        if (v37 < 0 == v36)
        {
          *(a2 + 14) = v37;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 42)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_114:
        *(this + 54) |= 0x10u;
        v39 = *(this + 4);
        if (!v39)
        {
          operator new();
        }

        v183 = 0;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v40;
          *(a2 + 1) = v40 + 1;
        }

        v41 = *(a2 + 14);
        v42 = *(a2 + 15);
        *(a2 + 14) = v41 + 1;
        if (v41 >= v42)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(v39, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v43 = *(a2 + 14);
        v36 = __OFSUB__(v43, 1);
        v44 = v43 - 1;
        if (v44 < 0 == v36)
        {
          *(a2 + 14) = v44;
        }

        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 != 50)
        {
          continue;
        }

        *(a2 + 1) = v45 + 1;
LABEL_128:
        *(this + 54) |= 0x20u;
        v46 = *(this + 5);
        if (!v46)
        {
          operator new();
        }

        v183 = 0;
        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v47;
          *(a2 + 1) = v47 + 1;
        }

        v48 = *(a2 + 14);
        v49 = *(a2 + 15);
        *(a2 + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::PwrMeasurement::MergePartialFromCodedStream(v46, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v50 = *(a2 + 14);
        v36 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v36)
        {
          *(a2 + 14) = v51;
        }

        v52 = *(a2 + 1);
        if (v52 >= *(a2 + 2) || *v52 != 74)
        {
          continue;
        }

        *(a2 + 1) = v52 + 1;
LABEL_142:
        *(this + 54) |= 0x40u;
        v53 = *(this + 6);
        if (!v53)
        {
          operator new();
        }

        v183 = 0;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v54;
          *(a2 + 1) = v54 + 1;
        }

        v55 = *(a2 + 14);
        v56 = *(a2 + 15);
        *(a2 + 14) = v55 + 1;
        if (v55 >= v56)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::Status::MergePartialFromCodedStream(v53, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v57 = *(a2 + 14);
        v36 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v36)
        {
          *(a2 + 14) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 82)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_156:
        *(this + 54) |= 0x80u;
        v60 = *(this + 7);
        if (!v60)
        {
          operator new();
        }

        v183 = 0;
        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v61;
          *(a2 + 1) = v61 + 1;
        }

        v62 = *(a2 + 14);
        v63 = *(a2 + 15);
        *(a2 + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::TimeTransferDataExtend::MergePartialFromCodedStream(v60, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v64 = *(a2 + 14);
        v36 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v36)
        {
          *(a2 + 14) = v65;
        }

        v66 = *(a2 + 1);
        if (*(a2 + 4) - v66 <= 1 || *v66 != 130 || v66[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v66 + 2;
LABEL_171:
        *(this + 54) |= 0x100u;
        v67 = *(this + 8);
        if (!v67)
        {
          operator new();
        }

        v183 = 0;
        v68 = *(a2 + 1);
        if (v68 >= *(a2 + 2) || *v68 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v68;
          *(a2 + 1) = v68 + 1;
        }

        v69 = *(a2 + 14);
        v70 = *(a2 + 15);
        *(a2 + 14) = v69 + 1;
        if (v69 >= v70)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::RecoveryStatistics::MergePartialFromCodedStream(v67, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v71 = *(a2 + 14);
        v36 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v36)
        {
          *(a2 + 14) = v72;
        }

        v73 = *(a2 + 1);
        if (*(a2 + 4) - v73 <= 1 || *v73 != 138 || v73[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v73 + 2;
LABEL_186:
        *(this + 54) |= 0x200u;
        v74 = *(this + 9);
        if (!v74)
        {
          operator new();
        }

        v183 = 0;
        v75 = *(a2 + 1);
        if (v75 >= *(a2 + 2) || *v75 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v75;
          *(a2 + 1) = v75 + 1;
        }

        v76 = *(a2 + 14);
        v77 = *(a2 + 15);
        *(a2 + 14) = v76 + 1;
        if (v76 >= v77)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::LtlInfoRequest::MergePartialFromCodedStream(v74, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v78 = *(a2 + 14);
        v36 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v36)
        {
          *(a2 + 14) = v79;
        }

        v80 = *(a2 + 1);
        if (*(a2 + 4) - v80 <= 1 || *v80 != 146 || v80[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v80 + 2;
LABEL_201:
        *(this + 54) |= 0x400u;
        v81 = *(this + 10);
        if (!v81)
        {
          operator new();
        }

        v183 = 0;
        v82 = *(a2 + 1);
        if (v82 >= *(a2 + 2) || *v82 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v82;
          *(a2 + 1) = v82 + 1;
        }

        v83 = *(a2 + 14);
        v84 = *(a2 + 15);
        *(a2 + 14) = v83 + 1;
        if (v83 >= v84)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::DecodedExtendedEphemeris::MergePartialFromCodedStream(v81, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v85 = *(a2 + 14);
        v36 = __OFSUB__(v85, 1);
        v86 = v85 - 1;
        if (v86 < 0 == v36)
        {
          *(a2 + 14) = v86;
        }

        v87 = *(a2 + 1);
        if (*(a2 + 4) - v87 <= 1 || *v87 != 154 || v87[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v87 + 2;
LABEL_216:
        *(this + 54) |= 0x800u;
        v88 = *(this + 11);
        if (!v88)
        {
          operator new();
        }

        v183 = 0;
        v89 = *(a2 + 1);
        if (v89 >= *(a2 + 2) || *v89 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v89;
          *(a2 + 1) = v89 + 1;
        }

        v90 = *(a2 + 14);
        v91 = *(a2 + 15);
        *(a2 + 14) = v90 + 1;
        if (v90 >= v91)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::DecodedRti::MergePartialFromCodedStream(v88, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v92 = *(a2 + 14);
        v36 = __OFSUB__(v92, 1);
        v93 = v92 - 1;
        if (v93 < 0 == v36)
        {
          *(a2 + 14) = v93;
        }

        v94 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v14 - v94 <= 1 || *v94 != 160 || v94[1] != 1)
        {
          continue;
        }

        v15 = (v94 + 2);
        *(a2 + 1) = v15;
LABEL_231:
        v183 = 0;
        if (v15 >= v14 || (v95 = *v15, (v95 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183);
          if (!result)
          {
            return result;
          }

          v95 = v183;
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v95 <= 9)
        {
          *(this + 54) |= 0x2000u;
          *(this + 25) = v95;
        }

        v96 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v9 - v96 < 2 || *v96 != 176 || v96[1] != 1)
        {
          continue;
        }

        v10 = (v96 + 2);
        *(a2 + 1) = v10;
LABEL_242:
        v183 = 0;
        if (v10 >= v9 || (v97 = *v10, (v97 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183);
          if (!result)
          {
            return result;
          }

          v97 = v183;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v97 <= 9)
        {
          *(this + 54) |= 0x1000u;
          *(this + 24) = v97;
        }

        v98 = *(a2 + 1);
        if (*(a2 + 4) - v98 < 2 || *v98 != 186 || v98[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v98 + 2;
LABEL_253:
        *(this + 54) |= 0x4000u;
        v99 = *(this + 13);
        if (!v99)
        {
          operator new();
        }

        v183 = 0;
        v100 = *(a2 + 1);
        if (v100 >= *(a2 + 2) || *v100 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v100;
          *(a2 + 1) = v100 + 1;
        }

        v101 = *(a2 + 14);
        v102 = *(a2 + 15);
        *(a2 + 14) = v101 + 1;
        if (v101 >= v102)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::Exception::MergePartialFromCodedStream(v99, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v103 = *(a2 + 14);
        v36 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v36)
        {
          *(a2 + 14) = v104;
        }

        v105 = *(a2 + 1);
        if (*(a2 + 4) - v105 <= 1 || *v105 != 202 || v105[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v105 + 2;
LABEL_268:
        *(this + 54) |= 0x8000u;
        v106 = *(this + 14);
        if (!v106)
        {
          operator new();
        }

        v183 = 0;
        v107 = *(a2 + 1);
        if (v107 >= *(a2 + 2) || *v107 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v107;
          *(a2 + 1) = v107 + 1;
        }

        v108 = *(a2 + 14);
        v109 = *(a2 + 15);
        *(a2 + 14) = v108 + 1;
        if (v108 >= v109)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::AskBasebandReset::MergePartialFromCodedStream(v106, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v110 = *(a2 + 14);
        v36 = __OFSUB__(v110, 1);
        v111 = v110 - 1;
        if (v111 < 0 == v36)
        {
          *(a2 + 14) = v111;
        }

        v112 = *(a2 + 1);
        if (*(a2 + 4) - v112 <= 1 || *v112 != 242 || v112[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v112 + 2;
LABEL_283:
        *(this + 54) |= 0x10000u;
        v113 = *(this + 15);
        if (!v113)
        {
          operator new();
        }

        v183 = 0;
        v114 = *(a2 + 1);
        if (v114 >= *(a2 + 2) || *v114 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v114;
          *(a2 + 1) = v114 + 1;
        }

        v115 = *(a2 + 14);
        v116 = *(a2 + 15);
        *(a2 + 14) = v115 + 1;
        if (v115 >= v116)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::SummaryReport::MergePartialFromCodedStream(v113, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v117 = *(a2 + 14);
        v36 = __OFSUB__(v117, 1);
        v118 = v117 - 1;
        if (v118 < 0 == v36)
        {
          *(a2 + 14) = v118;
        }

        v119 = *(a2 + 1);
        if (*(a2 + 4) - v119 <= 1 || *v119 != 250 || v119[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v119 + 2;
LABEL_298:
        *(this + 54) |= 0x20000u;
        if (*(this + 16) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v120 = *(a2 + 1);
        if (*(a2 + 4) - v120 < 2 || *v120 != 194 || v120[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v120 + 2;
LABEL_305:
        *(this + 54) |= 0x40000u;
        v121 = *(this + 17);
        if (!v121)
        {
          operator new();
        }

        v183 = 0;
        v122 = *(a2 + 1);
        if (v122 >= *(a2 + 2) || *v122 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v122;
          *(a2 + 1) = v122 + 1;
        }

        v123 = *(a2 + 14);
        v124 = *(a2 + 15);
        *(a2 + 14) = v123 + 1;
        if (v123 >= v124)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::PositionReport::MergePartialFromCodedStream(v121, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v125 = *(a2 + 14);
        v36 = __OFSUB__(v125, 1);
        v126 = v125 - 1;
        if (v126 < 0 == v36)
        {
          *(a2 + 14) = v126;
        }

        v127 = *(a2 + 1);
        if (*(a2 + 4) - v127 <= 1 || *v127 != 202 || v127[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v127 + 2;
LABEL_320:
        *(this + 54) |= 0x80000u;
        v128 = *(this + 18);
        if (!v128)
        {
          operator new();
        }

        v183 = 0;
        v129 = *(a2 + 1);
        if (v129 >= *(a2 + 2) || *v129 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v129;
          *(a2 + 1) = v129 + 1;
        }

        v130 = *(a2 + 14);
        v131 = *(a2 + 15);
        *(a2 + 14) = v130 + 1;
        if (v130 >= v131)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::MeasurementReport::MergePartialFromCodedStream(v128, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v132 = *(a2 + 14);
        v36 = __OFSUB__(v132, 1);
        v133 = v132 - 1;
        if (v133 < 0 == v36)
        {
          *(a2 + 14) = v133;
        }

        v134 = *(a2 + 1);
        if (*(a2 + 4) - v134 <= 1 || *v134 != 210 || v134[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v134 + 2;
LABEL_335:
        *(this + 54) |= 0x100000u;
        v135 = *(this + 19);
        if (!v135)
        {
          operator new();
        }

        v183 = 0;
        v136 = *(a2 + 1);
        if (v136 >= *(a2 + 2) || *v136 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v136;
          *(a2 + 1) = v136 + 1;
        }

        v137 = *(a2 + 14);
        v138 = *(a2 + 15);
        *(a2 + 14) = v137 + 1;
        if (v137 >= v138)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::AssistanceNeededReport::MergePartialFromCodedStream(v135, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v139 = *(a2 + 14);
        v36 = __OFSUB__(v139, 1);
        v140 = v139 - 1;
        if (v140 < 0 == v36)
        {
          *(a2 + 14) = v140;
        }

        v141 = *(a2 + 1);
        if (*(a2 + 4) - v141 <= 1 || *v141 != 218 || v141[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v141 + 2;
LABEL_350:
        *(this + 54) |= 0x200000u;
        v142 = *(this + 20);
        if (!v142)
        {
          operator new();
        }

        v183 = 0;
        v143 = *(a2 + 1);
        if (v143 >= *(a2 + 2) || *v143 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v143;
          *(a2 + 1) = v143 + 1;
        }

        v144 = *(a2 + 14);
        v145 = *(a2 + 15);
        *(a2 + 14) = v144 + 1;
        if (v144 >= v145)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::CellFTAssistanceRequest::MergePartialFromCodedStream(v142, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v146 = *(a2 + 14);
        v36 = __OFSUB__(v146, 1);
        v147 = v146 - 1;
        if (v147 < 0 == v36)
        {
          *(a2 + 14) = v147;
        }

        v148 = *(a2 + 1);
        if (*(a2 + 4) - v148 <= 1 || *v148 != 226 || v148[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v148 + 2;
LABEL_365:
        *(this + 54) |= 0x400000u;
        v149 = *(this + 21);
        if (!v149)
        {
          operator new();
        }

        v183 = 0;
        v150 = *(a2 + 1);
        if (v150 >= *(a2 + 2) || *v150 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v150;
          *(a2 + 1) = v150 + 1;
        }

        v151 = *(a2 + 14);
        v152 = *(a2 + 15);
        *(a2 + 14) = v151 + 1;
        if (v151 >= v152)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::MeasurementReportWithEstimate::MergePartialFromCodedStream(v149, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v153 = *(a2 + 14);
        v36 = __OFSUB__(v153, 1);
        v154 = v153 - 1;
        if (v154 < 0 == v36)
        {
          *(a2 + 14) = v154;
        }

        v155 = *(a2 + 1);
        if (*(a2 + 4) - v155 <= 1 || *v155 != 146 || v155[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v155 + 2;
LABEL_380:
        *(this + 54) |= 0x800000u;
        v156 = *(this + 22);
        if (!v156)
        {
          operator new();
        }

        v183 = 0;
        v157 = *(a2 + 1);
        if (v157 >= *(a2 + 2) || *v157 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v157;
          *(a2 + 1) = v157 + 1;
        }

        v158 = *(a2 + 14);
        v159 = *(a2 + 15);
        *(a2 + 14) = v158 + 1;
        if (v158 >= v159)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::SessionStatus::MergePartialFromCodedStream(v156, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v160 = *(a2 + 14);
        v36 = __OFSUB__(v160, 1);
        v161 = v160 - 1;
        if (v161 < 0 == v36)
        {
          *(a2 + 14) = v161;
        }

        v162 = *(a2 + 1);
        if (*(a2 + 4) - v162 <= 1 || *v162 != 154 || v162[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v162 + 2;
LABEL_395:
        *(this + 54) |= 0x1000000u;
        v163 = *(this + 23);
        if (!v163)
        {
          operator new();
        }

        v183 = 0;
        v164 = *(a2 + 1);
        if (v164 >= *(a2 + 2) || *v164 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v164;
          *(a2 + 1) = v164 + 1;
        }

        v165 = *(a2 + 14);
        v166 = *(a2 + 15);
        *(a2 + 14) = v165 + 1;
        if (v165 >= v166)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::Init::MergePartialFromCodedStream(v163, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v167 = *(a2 + 14);
        v36 = __OFSUB__(v167, 1);
        v168 = v167 - 1;
        if (v168 < 0 == v36)
        {
          *(a2 + 14) = v168;
        }

        v169 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v11 - v169 <= 1 || *v169 != 160 || v169[1] != 3)
        {
          continue;
        }

        v12 = (v169 + 2);
        *(a2 + 1) = v12;
LABEL_410:
        if (v12 >= v11 || (v170 = *v12, v170 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v171 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v170;
          v171 = (v12 + 1);
          *(a2 + 1) = v171;
        }

        *(this + 54) |= 0x2000000u;
        if (v11 - v171 < 2 || *v171 != 168 || v171[1] != 3)
        {
          continue;
        }

        v23 = (v171 + 2);
        *(a2 + 1) = v23;
LABEL_419:
        v183 = 0;
        if (v23 >= v11 || (v172 = *v23, (v172 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183);
          if (!result)
          {
            return result;
          }

          v172 = v183;
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v172 <= 4 && v172 != 3)
        {
          *(this + 54) |= 0x4000000u;
          *(this + 49) = v172;
        }

        v174 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v21 - v174 < 2 || *v174 != 176 || v174[1] != 3)
        {
          continue;
        }

        v22 = (v174 + 2);
        *(a2 + 1) = v22;
LABEL_433:
        if (v22 >= v21 || (v175 = *v22, v175 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v176 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v175;
          v176 = (v22 + 1);
          *(a2 + 1) = v176;
        }

        v13 = *(this + 54) | 0x8000000;
        *(this + 54) = v13;
        if (v21 - v176 < 2 || *v176 != 186 || v176[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v176 + 2;
LABEL_442:
        *(this + 54) = v13 | 0x10000000;
        v177 = *(this + 25);
        if (!v177)
        {
          operator new();
        }

        v183 = 0;
        v178 = *(a2 + 1);
        if (v178 >= *(a2 + 2) || *v178 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v183))
          {
            return 0;
          }
        }

        else
        {
          v183 = *v178;
          *(a2 + 1) = v178 + 1;
        }

        v179 = *(a2 + 14);
        v180 = *(a2 + 15);
        *(a2 + 14) = v179 + 1;
        if (v179 >= v180)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::WlanMeasurementRequest::MergePartialFromCodedStream(v177, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v181 = *(a2 + 14);
        v36 = __OFSUB__(v181, 1);
        v182 = v181 - 1;
        if (v182 < 0 == v36)
        {
          *(a2 + 14) = v182;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_92;
      case 4u:
        if (v6 != 2)
        {
          goto LABEL_66;
        }

        v20 = *(this + 54);
        goto LABEL_100;
      case 5u:
        if (v6 == 2)
        {
          goto LABEL_114;
        }

        goto LABEL_66;
      case 6u:
        if (v6 == 2)
        {
          goto LABEL_128;
        }

        goto LABEL_66;
      case 9u:
        if (v6 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_66;
      case 0xAu:
        if (v6 == 2)
        {
          goto LABEL_156;
        }

        goto LABEL_66;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_66;
      case 0x11u:
        if (v6 == 2)
        {
          goto LABEL_186;
        }

        goto LABEL_66;
      case 0x12u:
        if (v6 == 2)
        {
          goto LABEL_201;
        }

        goto LABEL_66;
      case 0x13u:
        if (v6 == 2)
        {
          goto LABEL_216;
        }

        goto LABEL_66;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_231;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_242;
      case 0x17u:
        if (v6 == 2)
        {
          goto LABEL_253;
        }

        goto LABEL_66;
      case 0x19u:
        if (v6 == 2)
        {
          goto LABEL_268;
        }

        goto LABEL_66;
      case 0x1Eu:
        if (v6 == 2)
        {
          goto LABEL_283;
        }

        goto LABEL_66;
      case 0x1Fu:
        if (v6 == 2)
        {
          goto LABEL_298;
        }

        goto LABEL_66;
      case 0x28u:
        if (v6 == 2)
        {
          goto LABEL_305;
        }

        goto LABEL_66;
      case 0x29u:
        if (v6 == 2)
        {
          goto LABEL_320;
        }

        goto LABEL_66;
      case 0x2Au:
        if (v6 == 2)
        {
          goto LABEL_335;
        }

        goto LABEL_66;
      case 0x2Bu:
        if (v6 == 2)
        {
          goto LABEL_350;
        }

        goto LABEL_66;
      case 0x2Cu:
        if (v6 == 2)
        {
          goto LABEL_365;
        }

        goto LABEL_66;
      case 0x32u:
        if (v6 == 2)
        {
          goto LABEL_380;
        }

        goto LABEL_66;
      case 0x33u:
        if (v6 == 2)
        {
          goto LABEL_395;
        }

        goto LABEL_66;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_410;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v23 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_419;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_433;
      case 0x37u:
        if (v6 != 2)
        {
          goto LABEL_66;
        }

        v13 = *(this + 54);
        goto LABEL_442;
      default:
LABEL_66:
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

    return result;
  }
}

uint64_t proto::gpsd::Indication::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 216);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 216);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_34:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gpsd::Indication::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_37:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(proto::gpsd::Indication::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(proto::gpsd::Indication::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(proto::gpsd::Indication::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v10, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(proto::gpsd::Indication::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v11, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_49:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(proto::gpsd::Indication::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v12, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_52:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(proto::gpsd::Indication::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v13, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_55:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(proto::gpsd::Indication::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v14, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_58:
  v15 = *(v5 + 88);
  if (!v15)
  {
    v15 = *(proto::gpsd::Indication::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v15, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 100), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x1000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 96), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_63:
  v16 = *(v5 + 104);
  if (!v16)
  {
    v16 = *(proto::gpsd::Indication::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v16, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_66:
  v17 = *(v5 + 112);
  if (!v17)
  {
    v17 = *(proto::gpsd::Indication::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v17, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_69:
  v18 = *(v5 + 120);
  if (!v18)
  {
    v18 = *(proto::gpsd::Indication::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v18, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_73;
  }

LABEL_72:
  v19 = *(v5 + 128);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 216);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_73:
  v20 = *(v5 + 136);
  if (!v20)
  {
    v20 = *(proto::gpsd::Indication::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x28, v20, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_79;
  }

LABEL_76:
  v21 = *(v5 + 144);
  if (!v21)
  {
    v21 = *(proto::gpsd::Indication::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x29, v21, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_82;
  }

LABEL_79:
  v22 = *(v5 + 152);
  if (!v22)
  {
    v22 = *(proto::gpsd::Indication::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2A, v22, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_85;
  }

LABEL_82:
  v23 = *(v5 + 160);
  if (!v23)
  {
    v23 = *(proto::gpsd::Indication::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2B, v23, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_88;
  }

LABEL_85:
  v24 = *(v5 + 168);
  if (!v24)
  {
    v24 = *(proto::gpsd::Indication::default_instance_ + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2C, v24, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_91;
  }

LABEL_88:
  v25 = *(v5 + 176);
  if (!v25)
  {
    v25 = *(proto::gpsd::Indication::default_instance_ + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v25, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_94;
  }

LABEL_91:
  v26 = *(v5 + 184);
  if (!v26)
  {
    v26 = *(proto::gpsd::Indication::default_instance_ + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x33, v26, a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 192), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_96:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 208), a2, a4);
    if ((*(v5 + 216) & 0x10000000) == 0)
    {
      return this;
    }

    goto LABEL_97;
  }

LABEL_95:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x35, *(v5 + 196), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_96;
  }

LABEL_29:
  if ((v6 & 0x10000000) == 0)
  {
    return this;
  }

LABEL_97:
  v27 = *(v5 + 200);
  if (!v27)
  {
    v27 = *(proto::gpsd::Indication::default_instance_ + 200);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x37, v27, a2, a4);
}

uint64_t proto::gpsd::Indication::ByteSize(proto::gpsd::Indication *this)
{
  v2 = *(this + 54);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_57;
  }

  if (v2)
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 54);
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(this + 3);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 54);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 54);
    if ((v2 & 8) == 0)
    {
LABEL_21:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

  v7 = *(this + 3);
  if (!v7)
  {
    v7 = *(proto::gpsd::Indication::default_instance_ + 24);
  }

  v8 = proto::gnss::Fix::ByteSize(v7);
  v9 = v8;
  if (v8 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
  }

  else
  {
    v10 = 1;
  }

  v3 = (v3 + v9 + v10 + 1);
  v2 = *(this + 54);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_33:
  v11 = *(this + 4);
  if (!v11)
  {
    v11 = *(proto::gpsd::Indication::default_instance_ + 32);
  }

  v12 = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::ByteSize(v11);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
  }

  else
  {
    v14 = 1;
  }

  v3 = (v3 + v13 + v14 + 1);
  v2 = *(this + 54);
  if ((v2 & 0x20) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_39:
  v15 = *(this + 5);
  if (!v15)
  {
    v15 = *(proto::gpsd::Indication::default_instance_ + 40);
  }

  v16 = proto::gnss::PwrMeasurement::ByteSize(v15);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
  }

  else
  {
    v18 = 1;
  }

  v3 = (v3 + v17 + v18 + 1);
  v2 = *(this + 54);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_45:
  v19 = *(this + 6);
  if (!v19)
  {
    v19 = *(proto::gpsd::Indication::default_instance_ + 48);
  }

  v20 = proto::gpsd::Status::ByteSize(v19);
  v21 = v20;
  if (v20 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
  }

  else
  {
    v22 = 1;
  }

  v3 = (v3 + v21 + v22 + 1);
  v2 = *(this + 54);
  if ((v2 & 0x80) != 0)
  {
LABEL_51:
    v23 = *(this + 7);
    if (!v23)
    {
      v23 = *(proto::gpsd::Indication::default_instance_ + 56);
    }

    v24 = proto::gnss::TimeTransferDataExtend::ByteSize(v23);
    v25 = v24;
    if (v24 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
    }

    else
    {
      v26 = 1;
    }

    v3 = (v3 + v25 + v26 + 1);
    v2 = *(this + 54);
  }

LABEL_57:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_115;
  }

  if ((v2 & 0x100) != 0)
  {
    v27 = *(this + 8);
    if (!v27)
    {
      v27 = *(proto::gpsd::Indication::default_instance_ + 64);
    }

    v28 = proto::gpsd::RecoveryStatistics::ByteSize(v27);
    v29 = v28;
    if (v28 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
    }

    else
    {
      v30 = 1;
    }

    v3 = (v3 + v29 + v30 + 2);
    v2 = *(this + 54);
    if ((v2 & 0x200) == 0)
    {
LABEL_60:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_79;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_60;
  }

  v31 = *(this + 9);
  if (!v31)
  {
    v31 = *(proto::gpsd::Indication::default_instance_ + 72);
  }

  v32 = proto::gpsd::LtlInfoRequest::ByteSize(v31);
  v33 = v32;
  if (v32 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
  }

  else
  {
    v34 = 1;
  }

  v3 = (v3 + v33 + v34 + 2);
  v2 = *(this + 54);
  if ((v2 & 0x400) == 0)
  {
LABEL_61:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_85;
  }

LABEL_79:
  v35 = *(this + 10);
  if (!v35)
  {
    v35 = *(proto::gpsd::Indication::default_instance_ + 80);
  }

  v36 = proto::gnss::DecodedExtendedEphemeris::ByteSize(v35);
  v37 = v36;
  if (v36 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
  }

  else
  {
    v38 = 1;
  }

  v3 = (v3 + v37 + v38 + 2);
  v2 = *(this + 54);
  if ((v2 & 0x800) == 0)
  {
LABEL_62:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

LABEL_85:
  v39 = *(this + 11);
  if (!v39)
  {
    v39 = *(proto::gpsd::Indication::default_instance_ + 88);
  }

  v40 = proto::gnss::DecodedRti::ByteSize(v39);
  v41 = v40;
  if (v40 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
  }

  else
  {
    v42 = 1;
  }

  v3 = (v3 + v41 + v42 + 2);
  v2 = *(this + 54);
  if ((v2 & 0x1000) == 0)
  {
LABEL_63:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_97;
  }

LABEL_91:
  v43 = *(this + 24);
  if ((v43 & 0x80000000) != 0)
  {
    v44 = 12;
  }

  else if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v44 = 3;
  }

  v3 = (v44 + v3);
  if ((v2 & 0x2000) == 0)
  {
LABEL_64:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_103;
  }

LABEL_97:
  v45 = *(this + 25);
  if ((v45 & 0x80000000) != 0)
  {
    v46 = 12;
  }

  else if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v46 = 3;
  }

  v3 = (v46 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_65:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_109;
  }

LABEL_103:
  v47 = *(this + 13);
  if (!v47)
  {
    v47 = *(proto::gpsd::Indication::default_instance_ + 104);
  }

  v48 = proto::gpsd::Exception::ByteSize(v47);
  v49 = v48;
  if (v48 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
  }

  else
  {
    v50 = 1;
  }

  v3 = (v3 + v49 + v50 + 2);
  v2 = *(this + 54);
  if ((v2 & 0x8000) != 0)
  {
LABEL_109:
    v51 = *(this + 14);
    if (!v51)
    {
      v51 = *(proto::gpsd::Indication::default_instance_ + 112);
    }

    v52 = proto::gpsd::AskBasebandReset::ByteSize(v51);
    v53 = v52;
    if (v52 >= 0x80)
    {
      v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
    }

    else
    {
      v54 = 1;
    }

    v3 = (v3 + v53 + v54 + 2);
    v2 = *(this + 54);
  }

LABEL_115:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_176;
  }

  if ((v2 & 0x10000) != 0)
  {
    v55 = *(this + 15);
    if (!v55)
    {
      v55 = *(proto::gpsd::Indication::default_instance_ + 120);
    }

    v56 = proto::gnss::Emergency::SummaryReport::ByteSize(v55);
    v57 = v56;
    if (v56 >= 0x80)
    {
      v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
    }

    else
    {
      v58 = 1;
    }

    v3 = (v3 + v57 + v58 + 2);
    v2 = *(this + 54);
    if ((v2 & 0x20000) == 0)
    {
LABEL_118:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_140;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_118;
  }

  v59 = *(this + 16);
  v60 = *(v59 + 23);
  v61 = v60;
  v62 = *(v59 + 8);
  if ((v60 & 0x80u) == 0)
  {
    v63 = *(v59 + 23);
  }

  else
  {
    v63 = v62;
  }

  if (v63 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63);
    v60 = *(v59 + 23);
    v62 = *(v59 + 8);
    v2 = *(this + 54);
    v61 = *(v59 + 23);
  }

  else
  {
    v64 = 1;
  }

  if (v61 < 0)
  {
    v60 = v62;
  }

  v3 = (v3 + v64 + v60 + 2);
  if ((v2 & 0x40000) == 0)
  {
LABEL_119:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_146;
  }

LABEL_140:
  v65 = *(this + 17);
  if (!v65)
  {
    v65 = *(proto::gpsd::Indication::default_instance_ + 136);
  }

  v66 = proto::gnss::Emergency::PositionReport::ByteSize(v65);
  v67 = v66;
  if (v66 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
  }

  else
  {
    v68 = 1;
  }

  v3 = (v3 + v67 + v68 + 2);
  v2 = *(this + 54);
  if ((v2 & 0x80000) == 0)
  {
LABEL_120:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_152;
  }

LABEL_146:
  v69 = *(this + 18);
  if (!v69)
  {
    v69 = *(proto::gpsd::Indication::default_instance_ + 144);
  }

  v70 = proto::gnss::Emergency::MeasurementReport::ByteSize(v69);
  v71 = v70;
  if (v70 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
  }

  else
  {
    v72 = 1;
  }

  v3 = (v3 + v71 + v72 + 2);
  v2 = *(this + 54);
  if ((v2 & 0x100000) == 0)
  {
LABEL_121:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_158;
  }

LABEL_152:
  v73 = *(this + 19);
  if (!v73)
  {
    v73 = *(proto::gpsd::Indication::default_instance_ + 152);
  }

  v74 = proto::gnss::Emergency::AssistanceNeededReport::ByteSize(v73);
  v75 = v74;
  if (v74 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74);
  }

  else
  {
    v76 = 1;
  }

  v3 = (v3 + v75 + v76 + 2);
  v2 = *(this + 54);
  if ((v2 & 0x200000) == 0)
  {
LABEL_122:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_164;
  }

LABEL_158:
  v77 = *(this + 20);
  if (!v77)
  {
    v77 = *(proto::gpsd::Indication::default_instance_ + 160);
  }

  v78 = proto::gnss::Emergency::CellFTAssistanceRequest::ByteSize(v77);
  v79 = v78;
  if (v78 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78);
  }

  else
  {
    v80 = 1;
  }

  v3 = (v3 + v79 + v80 + 2);
  v2 = *(this + 54);
  if ((v2 & 0x400000) == 0)
  {
LABEL_123:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_170;
  }

LABEL_164:
  v81 = *(this + 21);
  if (!v81)
  {
    v81 = *(proto::gpsd::Indication::default_instance_ + 168);
  }

  v82 = proto::gnss::Emergency::MeasurementReportWithEstimate::ByteSize(v81);
  v83 = v82;
  if (v82 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82);
  }

  else
  {
    v84 = 1;
  }

  v3 = (v3 + v83 + v84 + 2);
  v2 = *(this + 54);
  if ((v2 & 0x800000) != 0)
  {
LABEL_170:
    v85 = *(this + 22);
    if (!v85)
    {
      v85 = *(proto::gpsd::Indication::default_instance_ + 176);
    }

    v86 = proto::gnss::Emergency::SessionStatus::ByteSize(v85);
    v87 = v86;
    if (v86 >= 0x80)
    {
      v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86);
    }

    else
    {
      v88 = 1;
    }

    v3 = (v3 + v87 + v88 + 2);
    v2 = *(this + 54);
  }

LABEL_176:
  if (!HIBYTE(v2))
  {
    goto LABEL_209;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v89 = *(this + 23);
    if (!v89)
    {
      v89 = *(proto::gpsd::Indication::default_instance_ + 184);
    }

    v90 = proto::gnss::Emergency::Init::ByteSize(v89);
    v91 = v90;
    if (v90 >= 0x80)
    {
      v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90);
    }

    else
    {
      v92 = 1;
    }

    v3 = (v3 + v91 + v92 + 2);
    v2 = *(this + 54);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_179:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_193;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_179;
  }

  v93 = *(this + 48);
  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v94 = 3;
  }

  v3 = (v94 + v3);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_180:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_181;
    }

LABEL_199:
    v97 = *(this + 52);
    if (v97 >= 0x80)
    {
      v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
      v2 = *(this + 54);
    }

    else
    {
      v98 = 3;
    }

    v3 = (v98 + v3);
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_203;
  }

LABEL_193:
  v95 = *(this + 49);
  if ((v95 & 0x80000000) != 0)
  {
    v96 = 12;
  }

  else if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v96 = 3;
  }

  v3 = (v96 + v3);
  if ((v2 & 0x8000000) != 0)
  {
    goto LABEL_199;
  }

LABEL_181:
  if ((v2 & 0x10000000) == 0)
  {
    goto LABEL_209;
  }

LABEL_203:
  v99 = *(this + 25);
  if (!v99)
  {
    v99 = *(proto::gpsd::Indication::default_instance_ + 200);
  }

  v100 = proto::gnss::Emergency::WlanMeasurementRequest::ByteSize(v99);
  v101 = v100;
  if (v100 >= 0x80)
  {
    v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100);
  }

  else
  {
    v102 = 1;
  }

  v3 = (v3 + v101 + v102 + 2);
LABEL_209:
  *(this + 53) = v3;
  return v3;
}

void proto::gpsd::Indication::CheckTypeAndMergeFrom(proto::gpsd::Indication *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Indication::MergeFrom(this, lpsrc);
}

void proto::gpsd::Status::MergeFrom(proto::gpsd::Status *this, const proto::gpsd::Status *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 8);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v8;
    v4 = *(a2 + 8);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 25);
    *(this + 8) |= 8u;
    *(this + 25) = v9;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 26);
    *(this + 8) |= 0x10u;
    *(this + 26) = v5;
  }
}

void sub_2455536CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::RecoveryStatistics::MergeFrom(proto::gpsd::RecoveryStatistics *this, const proto::gpsd::RecoveryStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(this + 4);
  v5 = *(a2 + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v6) = *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v8 = *(*(a2 + 1) + 8 * v7);
      v9 = *(this + 5);
      v10 = *(this + 4);
      if (v10 >= v9)
      {
        if (v9 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v9 = *(this + 5);
        }

        *(this + 5) = v9 + 1;
        operator new();
      }

      v11 = *(this + 1);
      *(this + 4) = v10 + 1;
      proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }

  if ((*(a2 + 44) & 2) != 0)
  {
    *(this + 11) |= 2u;
    v12 = *(this + 4);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 4);
    if (!v13)
    {
      v13 = *(proto::gpsd::RecoveryStatistics::default_instance_ + 32);
    }

    proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(v12, v13);
  }
}

void sub_245553918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfoRequest::MergeFrom(proto::gpsd::LtlInfoRequest *this, const proto::gpsd::LtlInfoRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 >= 5)
    {
      __assert_rtn("set_info_type", "GpsdProtocol.pb.h", 11098, "::proto::gpsd::LtlInfoType_IsValid(value)");
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2455539EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Exception::MergeFrom(proto::gpsd::Exception *this, const proto::gpsd::Exception *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 6);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = v5;
  }
}

void sub_245553AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::AskBasebandReset::MergeFrom(proto::gpsd::AskBasebandReset *this, const proto::gpsd::AskBasebandReset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v6;
    if ((*(a2 + 9) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 3);
    *(this + 9) |= 4u;
    v8 = *(this + 3);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_245553C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Indication::CopyFrom(proto::gpsd::Indication *this, const proto::gpsd::Indication *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Indication::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::Indication::Swap(uint64_t this, proto::gpsd::Indication *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    v5 = *(this + 24);
    v6 = *(a2 + 3);
    *(this + 16) = *(a2 + 2);
    *(this + 24) = v6;
    *(a2 + 2) = v4;
    *(a2 + 3) = v5;
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v9;
    v10 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v11;
    v12 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v12;
    v13 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v13;
    v14 = *(this + 88);
    *(this + 88) = *(a2 + 11);
    *(a2 + 11) = v14;
    LODWORD(v14) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v14;
    LODWORD(v14) = *(this + 100);
    *(this + 100) = *(a2 + 25);
    *(a2 + 25) = v14;
    v15 = *(this + 104);
    *(this + 104) = *(a2 + 13);
    *(a2 + 13) = v15;
    v16 = *(this + 112);
    *(this + 112) = *(a2 + 14);
    *(a2 + 14) = v16;
    v17 = *(this + 120);
    *(this + 120) = *(a2 + 15);
    *(a2 + 15) = v17;
    v18 = *(this + 128);
    *(this + 128) = *(a2 + 16);
    *(a2 + 16) = v18;
    v19 = *(this + 136);
    *(this + 136) = *(a2 + 17);
    *(a2 + 17) = v19;
    v20 = *(this + 144);
    *(this + 144) = *(a2 + 18);
    *(a2 + 18) = v20;
    v21 = *(this + 152);
    *(this + 152) = *(a2 + 19);
    *(a2 + 19) = v21;
    v22 = *(this + 160);
    *(this + 160) = *(a2 + 20);
    *(a2 + 20) = v22;
    v23 = *(this + 168);
    *(this + 168) = *(a2 + 21);
    *(a2 + 21) = v23;
    v24 = *(this + 176);
    *(this + 176) = *(a2 + 22);
    *(a2 + 22) = v24;
    v25 = *(this + 184);
    *(this + 184) = *(a2 + 23);
    *(a2 + 23) = v25;
    LODWORD(v25) = *(this + 192);
    *(this + 192) = *(a2 + 48);
    *(a2 + 48) = v25;
    LODWORD(v25) = *(this + 196);
    *(this + 196) = *(a2 + 49);
    *(a2 + 49) = v25;
    LODWORD(v25) = *(this + 208);
    *(this + 208) = *(a2 + 52);
    *(a2 + 52) = v25;
    v26 = *(this + 200);
    *(this + 200) = *(a2 + 25);
    *(a2 + 25) = v26;
    LODWORD(v26) = *(this + 216);
    *(this + 216) = *(a2 + 54);
    *(a2 + 54) = v26;
    LODWORD(v26) = *(this + 212);
    *(this + 212) = *(a2 + 53);
    *(a2 + 53) = v26;
  }

  return this;
}

uint64_t proto::gpsd::Status::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 23) = 0;
  return this;
}

proto::gpsd::Status *proto::gpsd::Status::Status(proto::gpsd::Status *this, const proto::gpsd::Status *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2858621F0;
  *(this + 23) = 0;
  proto::gpsd::Status::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Status::~Status(proto::gpsd::Status *this)
{
  *this = &unk_2858621F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858621F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858621F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::Status::MergePartialFromCodedStream(proto::gpsd::Status *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, v15 < 0))
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
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            v26 = 0;
            if (v10 >= v7 || (v17 = *v10, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
              if (!result)
              {
                return result;
              }

              v17 = v26;
              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 24) = v17 != 0;
            *(this + 8) |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_48:
      v25 = 0;
      if (v11 >= v7 || (v19 = *v11, (v19 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v19 = v25;
        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 25) = v19 != 0;
      *(this + 8) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        v24 = 0;
        if (v8 >= v7 || (v21 = *v8, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v21 = v24;
          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 26) = v21 != 0;
        *(this + 8) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t proto::gpsd::Status::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 25), a2, a4);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 26);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t proto::gpsd::Status::ByteSize(proto::gpsd::Status *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    if (v2)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
LABEL_8:
        result = ((v2 >> 1) & 2) + v3 + ((v2 >> 2) & 2) + ((v2 >> 3) & 2);
        goto LABEL_9;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 8);
    goto LABEL_8;
  }

  result = 0;
LABEL_9:
  *(this + 7) = result;
  return result;
}

void proto::gpsd::Status::CheckTypeAndMergeFrom(proto::gpsd::Status *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Status::MergeFrom(this, lpsrc);
}

void proto::gpsd::Status::CopyFrom(proto::gpsd::Status *this, const proto::gpsd::Status *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Status::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::Status::Swap(uint64_t this, proto::gpsd::Status *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v3;
    LOBYTE(v3) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v3;
    LOBYTE(v3) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

uint64_t proto::gpsd::SetPvtmReport::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  return this;
}

proto::gpsd::SetPvtmReport *proto::gpsd::SetPvtmReport::SetPvtmReport(proto::gpsd::SetPvtmReport *this, const proto::gpsd::SetPvtmReport *a2)
{
  *this = &unk_285862268;
  *(this + 2) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  proto::gpsd::SetPvtmReport::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetPvtmReport::~SetPvtmReport(proto::gpsd::SetPvtmReport *this)
{
  *this = &unk_285862268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::SetPvtmReport::MergePartialFromCodedStream(proto::gpsd::SetPvtmReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_51;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_67;
          }

          goto LABEL_26;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v27 = 0;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
          if (!result)
          {
            return result;
          }

          v11 = v27;
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) = v11 != 0;
        *(this + 5) |= 1u;
        if (v12 < v7 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_35;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v14 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_35:
      v27 = 0;
      if (v14 >= v7 || (v16 = *v14, (v16 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
        if (!result)
        {
          return result;
        }

        v16 = v27;
        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v17 = v14 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 9) = v16 != 0;
      *(this + 5) |= 2u;
      if (v17 < v7 && *v17 == 24)
      {
        v8 = v17 + 1;
        *(a2 + 1) = v8;
LABEL_43:
        v27 = 0;
        if (v8 >= v7 || (v18 = *v8, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
          if (!result)
          {
            return result;
          }

          v18 = v27;
          v19 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v19 = v8 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 10) = v18 != 0;
        *(this + 5) |= 4u;
        if (v19 < v7 && *v19 == 32)
        {
          v13 = v19 + 1;
          *(a2 + 1) = v13;
LABEL_51:
          v27 = 0;
          if (v13 >= v7 || (v20 = *v13, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
            if (!result)
            {
              return result;
            }

            v20 = v27;
            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v21 = v13 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 11) = v20 != 0;
          *(this + 5) |= 8u;
          if (v21 < v7 && *v21 == 40)
          {
            v15 = v21 + 1;
            *(a2 + 1) = v15;
LABEL_59:
            v27 = 0;
            if (v15 >= v7 || (v22 = *v15, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
              if (!result)
              {
                return result;
              }

              v22 = v27;
              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v23 = v15 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 12) = v22 != 0;
            *(this + 5) |= 0x10u;
            if (v23 < v7 && *v23 == 48)
            {
              v9 = v23 + 1;
              *(a2 + 1) = v9;
LABEL_67:
              v27 = 0;
              if (v9 >= v7 || (v24 = *v9, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
                if (!result)
                {
                  return result;
                }

                v24 = v27;
                v25 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                v25 = v9 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 13) = v24 != 0;
              *(this + 5) |= 0x20u;
              if (v25 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 3 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_26:
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

uint64_t proto::gpsd::SetPvtmReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), a2, a4);
    if ((*(v5 + 20) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = *(v5 + 13);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v7, a2, a4);
}

uint64_t proto::gpsd::SetPvtmReport::ByteSize(proto::gpsd::SetPvtmReport *this)
{
  if (*(this + 5))
  {
    v1.i64[0] = 0x200000002;
    v1.i64[1] = 0x200000002;
    v2 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(*(this + 5)), xmmword_2455824F0), v1)) + 2 * (*(this + 5) & 1) + (*(this + 5) & 2u);
  }

  else
  {
    v2 = 0;
  }

  *(this + 4) = v2;
  return v2;
}

void proto::gpsd::SetPvtmReport::CheckTypeAndMergeFrom(proto::gpsd::SetPvtmReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetPvtmReport::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetPvtmReport::CopyFrom(proto::gpsd::SetPvtmReport *this, const proto::gpsd::SetPvtmReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetPvtmReport::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetPvtmReport::Swap(uint64_t this, proto::gpsd::SetPvtmReport *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    v5 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    v8 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v9;
  }

  return this;
}

void *proto::gpsd::InjectAssistanceFile::SharedCtor(void *this)
{
  this[1] = MEMORY[0x277D82C30];
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gpsd::InjectAssistanceFile *proto::gpsd::InjectAssistanceFile::InjectAssistanceFile(proto::gpsd::InjectAssistanceFile *this, const proto::gpsd::InjectAssistanceFile *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_2858622E0;
  *(this + 1) = v3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gpsd::InjectAssistanceFile::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectAssistanceFile::~InjectAssistanceFile(proto::gpsd::InjectAssistanceFile *this)
{
  *this = &unk_2858622E0;
  proto::gpsd::InjectAssistanceFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858622E0;
  proto::gpsd::InjectAssistanceFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858622E0;
  proto::gpsd::InjectAssistanceFile::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectAssistanceFile::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::InjectAssistanceFile::MergePartialFromCodedStream(proto::gpsd::InjectAssistanceFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v7 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_23;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_19:
        v19 = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
          if (!result)
          {
            return result;
          }

          v13 = v19;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v13 <= 2)
        {
          *(this + 7) |= 2u;
          *(this + 4) = v13;
        }

        v16 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v16 < v14 && *v16 == 24)
        {
          v15 = v16 + 1;
          *(a2 + 1) = v15;
LABEL_34:
          v18 = 0;
          if (v15 >= v14 || (v17 = *v15, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
            if (!result)
            {
              return result;
            }

            v17 = v18;
          }

          else
          {
            *(a2 + 1) = v15 + 1;
          }

          if (v17 <= 6)
          {
            *(this + 7) |= 4u;
            *(this + 5) = v17;
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

      else
      {
        if (v7 != 1 || v8 != 2)
        {
          goto LABEL_23;
        }

        *(this + 7) |= 1u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 < v10 && *v11 == 16)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_19;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
      goto LABEL_34;
    }

LABEL_23:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gpsd::InjectAssistanceFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v7 = *(this + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v8 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v8, a2, a4);
}

uint64_t proto::gpsd::InjectAssistanceFile::ByteSize(proto::gpsd::InjectAssistanceFile *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_28;
  }

  if (*(this + 28))
  {
    v4 = *(this + 1);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v2 = *(this + 7);
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = (v9 + v5);
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v11 = *(this + 4);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
LABEL_21:
  if ((v2 & 4) != 0)
  {
    v13 = *(this + 5);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    }

    else
    {
      v14 = 2;
    }

    v3 = (v14 + v3);
  }

LABEL_28:
  *(this + 6) = v3;
  return v3;
}

void proto::gpsd::InjectAssistanceFile::CheckTypeAndMergeFrom(proto::gpsd::InjectAssistanceFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectAssistanceFile::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistanceFile::CopyFrom(proto::gpsd::InjectAssistanceFile *this, const proto::gpsd::InjectAssistanceFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectAssistanceFile::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectAssistanceFile::Swap(uint64_t this, proto::gpsd::InjectAssistanceFile *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

uint64_t proto::gpsd::InjectRtiFile::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  return this;
}

proto::gpsd::InjectRtiFile *proto::gpsd::InjectRtiFile::InjectRtiFile(proto::gpsd::InjectRtiFile *this, const proto::gpsd::InjectRtiFile *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_285862358;
  *(this + 1) = v3;
  *(this + 2) = 0;
  proto::gpsd::InjectRtiFile::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectRtiFile::~InjectRtiFile(proto::gpsd::InjectRtiFile *this)
{
  *this = &unk_285862358;
  proto::gpsd::InjectRtiFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862358;
  proto::gpsd::InjectRtiFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862358;
  proto::gpsd::InjectRtiFile::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectRtiFile::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::InjectRtiFile::MergePartialFromCodedStream(proto::gpsd::InjectRtiFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
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

uint64_t proto::gpsd::InjectRtiFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    v2 = *(this + 8);
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t proto::gpsd::InjectRtiFile::ByteSize(proto::gpsd::InjectRtiFile *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 8);
      v8 = v9 + 1;
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 2;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    result = (v8 + v4);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::InjectRtiFile::CheckTypeAndMergeFrom(proto::gpsd::InjectRtiFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectRtiFile::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectRtiFile::CopyFrom(proto::gpsd::InjectRtiFile *this, const proto::gpsd::InjectRtiFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectRtiFile::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectRtiFile::Swap(uint64_t this, proto::gpsd::InjectRtiFile *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  return this;
}

proto::gpsd::InjectRavenOrbitFile *proto::gpsd::InjectRavenOrbitFile::InjectRavenOrbitFile(proto::gpsd::InjectRavenOrbitFile *this, const proto::gpsd::InjectRavenOrbitFile *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_2858623D0;
  *(this + 1) = v3;
  *(this + 2) = 0;
  proto::gpsd::InjectRavenOrbitFile::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectRavenOrbitFile::~InjectRavenOrbitFile(proto::gpsd::InjectRavenOrbitFile *this)
{
  *this = &unk_2858623D0;
  proto::gpsd::InjectRavenOrbitFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858623D0;
  proto::gpsd::InjectRavenOrbitFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858623D0;
  proto::gpsd::InjectRavenOrbitFile::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectRavenOrbitFile::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::MergePartialFromCodedStream(proto::gpsd::InjectRavenOrbitFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
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

uint64_t proto::gpsd::InjectRavenOrbitFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    v2 = *(this + 8);
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::ByteSize(proto::gpsd::InjectRavenOrbitFile *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 8);
      v8 = v9 + 1;
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 2;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    result = (v8 + v4);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::InjectRavenOrbitFile::CheckTypeAndMergeFrom(proto::gpsd::InjectRavenOrbitFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectRavenOrbitFile::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectRavenOrbitFile::CopyFrom(proto::gpsd::InjectRavenOrbitFile *this, const proto::gpsd::InjectRavenOrbitFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectRavenOrbitFile::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectRavenOrbitFile::Swap(uint64_t this, proto::gpsd::InjectRavenOrbitFile *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

proto::gpsd::InjectSvidBlocklist *proto::gpsd::InjectSvidBlocklist::InjectSvidBlocklist(proto::gpsd::InjectSvidBlocklist *this, const proto::gpsd::InjectSvidBlocklist *a2)
{
  *this = &unk_285862448;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gpsd::InjectSvidBlocklist::MergeFrom(this, a2);
  return this;
}

void sub_245556218(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectSvidBlocklist::~InjectSvidBlocklist(proto::gpsd::InjectSvidBlocklist *this)
{
  *this = &unk_285862448;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::InjectSvidBlocklist::~InjectSvidBlocklist(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectSvidBlocklist::MergePartialFromCodedStream(proto::gpsd::InjectSvidBlocklist *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
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

    if (TagFallback == 10)
    {
      while (1)
      {
        v6 = *(this + 5);
        v7 = *(this + 4);
        if (v7 >= v6)
        {
          if (v6 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v6 = *(this + 5);
          }

          *(this + 5) = v6 + 1;
          operator new();
        }

        v8 = *(this + 1);
        *(this + 4) = v7 + 1;
        v9 = *(v8 + 8 * v7);
        v19 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
          {
            return 0;
          }
        }

        else
        {
          v19 = *v10;
          *(a2 + 1) = v10 + 1;
        }

        v11 = *(a2 + 14);
        v12 = *(a2 + 15);
        *(a2 + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::SvId::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v13 = *(a2 + 14);
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v15 < 0 == v14)
        {
          *(a2 + 14) = v15;
        }

        v16 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v16 >= v17 || *v16 != 10)
        {
          if (v16 == v17 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v16 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gpsd::InjectSvidBlocklist::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t proto::gpsd::InjectSvidBlocklist::ByteSize(proto::gpsd::InjectSvidBlocklist *this)
{
  v2 = *(this + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = proto::gnss::SvId::ByteSize(*(*(this + 1) + 8 * v3));
      v5 = v4;
      if (v4 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
      }

      else
      {
        v6 = 1;
      }

      v2 = (v5 + v2 + v6);
      ++v3;
    }

    while (v3 < *(this + 4));
  }

  *(this + 8) = v2;
  return v2;
}

void proto::gpsd::InjectSvidBlocklist::CheckTypeAndMergeFrom(proto::gpsd::InjectSvidBlocklist *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectSvidBlocklist::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectSvidBlocklist::CopyFrom(proto::gpsd::InjectSvidBlocklist *this, const proto::gpsd::InjectSvidBlocklist *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectSvidBlocklist::MergeFrom(this, a2);
  }
}

proto::gpsd::InjectSvidBlocklist *proto::gpsd::InjectSvidBlocklist::Swap(proto::gpsd::InjectSvidBlocklist *this, proto::gpsd::InjectSvidBlocklist *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

proto::gpsd::InjectAssistancePosition *proto::gpsd::InjectAssistancePosition::InjectAssistancePosition(proto::gpsd::InjectAssistancePosition *this, const proto::gpsd::InjectAssistancePosition *a2)
{
  *this = &unk_2858624C0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  proto::gpsd::InjectAssistancePosition::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectAssistancePosition::~InjectAssistancePosition(proto::gpsd::InjectAssistancePosition *this)
{
  *this = &unk_2858624C0;
  if (proto::gpsd::InjectAssistancePosition::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::InjectAssistancePosition::~InjectAssistancePosition(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::InjectAssistancePosition::SharedDtor(void *this)
{
  if (proto::gpsd::InjectAssistancePosition::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::MergePartialFromCodedStream(proto::gpsd::InjectAssistancePosition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_45;
          }
        }

        else if (v6 == 10 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_53;
        }

        goto LABEL_22;
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && (TagFallback & 7) == 0)
      {
        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_35;
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

    v30 = 0;
    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v13;
      *(a2 + 1) = v13 + 1;
    }

    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    *(a2 + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Position::MergePartialFromCodedStream(v12, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v17 = *(a2 + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(a2 + 14) = v19;
    }

    v20 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v20 < v8 && *v20 == 16)
    {
      v9 = v20 + 1;
      *(a2 + 1) = v9;
LABEL_35:
      v28 = 0;
      if (v9 >= v8 || (v21 = *v9, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
        if (!result)
        {
          return result;
        }

        v21 = v28;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v21 <= 3)
      {
        *(this + 9) |= 2u;
        *(this + 4) = v21;
      }

      v23 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v23 < v10 && *v23 == 24)
      {
        v14 = v23 + 1;
        *(a2 + 1) = v14;
LABEL_45:
        v29 = 0;
        if (v14 >= v10 || (v24 = *v14, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v24 = v29;
          v25 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v25 = v14 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 20) = v24 != 0;
        *(this + 9) |= 4u;
        if (v25 < v10 && *v25 == 80)
        {
          v11 = v25 + 1;
          *(a2 + 1) = v11;
LABEL_53:
          if (v11 >= v10 || (v26 = *v11, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v26;
            v27 = v11 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 9) |= 8u;
          if (v27 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gpsd::InjectAssistancePosition::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, v8, a2, a4);
}

uint64_t proto::gpsd::InjectAssistancePosition::ByteSize(proto::gpsd::InjectAssistancePosition *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_20;
  }

  if (v2)
  {
    v5 = *(this + 1);
    if (!v5)
    {
      v5 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
    }

    v6 = proto::gnss::Position::ByteSize(v5);
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
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 4);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_18:
  v4 = ((v2 >> 1) & 2) + v3;
  if ((v2 & 8) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_20:
  *(this + 8) = v4;
  return v4;
}

void proto::gpsd::InjectAssistancePosition::CheckTypeAndMergeFrom(proto::gpsd::InjectAssistancePosition *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectAssistancePosition::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistancePosition::CopyFrom(proto::gpsd::InjectAssistancePosition *this, const proto::gpsd::InjectAssistancePosition *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectAssistancePosition::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectAssistancePosition::Swap(uint64_t this, proto::gpsd::InjectAssistancePosition *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

double proto::gpsd::InjectAssistanceTime::SharedCtor(proto::gpsd::InjectAssistanceTime *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gpsd::InjectAssistanceTime *proto::gpsd::InjectAssistanceTime::InjectAssistanceTime(proto::gpsd::InjectAssistanceTime *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  *this = &unk_285862538;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gpsd::InjectAssistanceTime::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectAssistanceTime::~InjectAssistanceTime(proto::gpsd::InjectAssistanceTime *this)
{
  *this = &unk_285862538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285862538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::InjectAssistanceTime::MergePartialFromCodedStream(proto::gpsd::InjectAssistanceTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 9) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 9) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 9) |= 4u;
          if (v16 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
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

uint64_t proto::gpsd::InjectAssistanceTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t proto::gpsd::InjectAssistanceTime::ByteSize(proto::gpsd::InjectAssistanceTime *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_7:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 9);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_10:
  *(this + 8) = v3;
  return v3;
}

void proto::gpsd::InjectAssistanceTime::CheckTypeAndMergeFrom(proto::gpsd::InjectAssistanceTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectAssistanceTime::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistanceTime::CopyFrom(proto::gpsd::InjectAssistanceTime *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectAssistanceTime::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectAssistanceTime::Swap(uint64_t this, proto::gpsd::InjectAssistanceTime *a2)
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
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return this;
}

uint64_t proto::gpsd::DeleteGnssData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::DeleteGnssData *proto::gpsd::DeleteGnssData::DeleteGnssData(proto::gpsd::DeleteGnssData *this, const proto::gpsd::DeleteGnssData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2858625B0;
  proto::gpsd::DeleteGnssData::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::DeleteGnssData::~DeleteGnssData(proto::gpsd::DeleteGnssData *this)
{
  *this = &unk_2858625B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858625B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858625B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}