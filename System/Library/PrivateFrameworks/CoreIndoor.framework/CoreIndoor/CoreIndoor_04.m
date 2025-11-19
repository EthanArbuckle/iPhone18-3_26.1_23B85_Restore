void sub_245A5B254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5B268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5B27C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
    a2 = v3;
    a1 = v2;
  }

  v4 = *(a2 + 60);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 32);
    *(a1 + 60) |= 1u;
    *(a1 + 32) = v9;
    v4 = *(a2 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 16);
  *(a1 + 60) |= 2u;
  *(a1 + 16) = v10;
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 20);
  *(a1 + 60) |= 4u;
  *(a1 + 20) = v11;
  v4 = *(a2 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 24);
  *(a1 + 60) |= 8u;
  *(a1 + 24) = v12;
  v4 = *(a2 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v14 = *(a2 + 33);
    *(a1 + 60) |= 0x20u;
    *(a1 + 33) = v14;
    v4 = *(a2 + 60);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v13 = *(a2 + 36);
  *(a1 + 60) |= 0x10u;
  *(a1 + 36) = v13;
  v4 = *(a2 + 60);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v15 = *(a2 + 40);
  *(a1 + 60) |= 0x40u;
  *(a1 + 40) = v15;
  v4 = *(a2 + 60);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 44);
    *(a1 + 60) |= 0x80u;
    *(a1 + 44) = v5;
    v4 = *(a2 + 60);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 48);
      *(a1 + 60) |= 0x100u;
      *(a1 + 48) = v6;
      v4 = *(a2 + 60);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 52);
      *(a1 + 60) |= 0x200u;
      *(a1 + 52) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A5B448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5B45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5B470(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 36))
  {
    v7 = *(a2 + 16);
    a1[9] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      a1[9] |= 4u;
      a1[6] = v9;
      if ((*(a2 + 36) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 36) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[9] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 36);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 28);
    a1[9] |= 8u;
    a1[7] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A5B578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5B5A0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      *(a1 + 24) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A5B660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5B674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5B688(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 60))
  {
    v7 = *(a2 + 16);
    *(a1 + 60) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 60);
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

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 60) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 40);
    *(a1 + 60) |= 8u;
    *(a1 + 40) = v10;
    if ((*(a2 + 60) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_13:
  v9 = *(a2 + 32);
  *(a1 + 60) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 60);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 48);
    *(a1 + 60) |= 0x10u;
    *(a1 + 48) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A5B7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5B7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5B7D8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
    v4 = *(a2 + 44);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *(a2 + 44);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
    v9 = *(a2 + 24);
    *(a1 + 44) |= 1u;
    *(a1 + 24) = v9;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_22:
      *(a1 + 44) |= 4u;
      v11 = *(a1 + 16);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 16);
      if (v12)
      {
        sub_245A6F35C(v11, v12);
        v4 = *(a2 + 44);
        if ((v4 & 8) != 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_245A6F35C(v11, *(qword_28144B8E8 + 16));
        v4 = *(a2 + 44);
        if ((v4 & 8) != 0)
        {
          goto LABEL_28;
        }
      }

LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 25);
  *(a1 + 44) |= 2u;
  *(a1 + 25) = v10;
  v4 = *(a2 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  v13 = *(a2 + 26);
  *(a1 + 44) |= 8u;
  *(a1 + 26) = v13;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 27);
  *(a1 + 44) |= 0x10u;
  *(a1 + 27) = v14;
  v4 = *(a2 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 28);
  *(a1 + 44) |= 0x20u;
  *(a1 + 28) = v15;
  v4 = *(a2 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_31:
  v16 = *(a2 + 32);
  *(a1 + 44) |= 0x40u;
  *(a1 + 32) = v16;
  v4 = *(a2 + 44);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(a2 + 33);
    *(a1 + 44) |= 0x80u;
    *(a1 + 33) = v5;
    v4 = *(a2 + 44);
  }

LABEL_14:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 36);
      *(a1 + 44) |= 0x100u;
      *(a1 + 36) = v6;
      v4 = *(a2 + 44);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 34);
      *(a1 + 44) |= 0x200u;
      *(a1 + 34) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_245A5BA78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 48))
  {
    v7 = *(a2 + 16);
    *(a1 + 48) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      *(a1 + 48) |= 4u;
      *(a1 + 24) = v9;
      if ((*(a2 + 48) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 40);
  *(a1 + 48) |= 2u;
  *(a1 + 40) = v8;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A5BB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5BB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5BBA8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 56))
  {
    v7 = *(a2 + 16);
    *(a1 + 56) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 56);
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

  v8 = *(a2 + 48);
  *(a1 + 56) |= 2u;
  *(a1 + 48) = v8;
  v4 = *(a2 + 56);
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
  v9 = *(a2 + 24);
  *(a1 + 56) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 40);
    *(a1 + 56) |= 0x10u;
    *(a1 + 40) = v11;
    if ((*(a2 + 56) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 32);
  *(a1 + 56) |= 8u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 49);
    *(a1 + 56) |= 0x20u;
    *(a1 + 49) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A5BCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5BD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5BD18(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A5BDAC()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B4F8;
}

void sub_245A5BE3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A5BE50(void *a1)
{
  *a1 = &unk_28589E5B8;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A5BEA4(void *a1)
{
  *a1 = &unk_28589E5B8;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A5BFB0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v8 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_48;
              }

              v26[0] = 0;
              v11 = *(this + 1);
              v10 = *(this + 2);
              if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
                if (!result)
                {
                  return result;
                }

                v12 = v26[0];
                v13 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v13 = v11 + 1;
                *(this + 1) = v13;
              }

              *(a1 + 32) = v12 != 0;
              *(a1 + 60) |= 1u;
              if (v13 < v10 && *v13 == 21)
              {
                *(this + 1) = v13 + 1;
                v26[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_56;
              }
            }

            else
            {
              if (v8 != 2 || v9 != 5)
              {
                goto LABEL_48;
              }

              v26[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

LABEL_56:
              *(a1 + 16) = v26[0];
              *(a1 + 60) |= 2u;
              v17 = *(this + 1);
              if (v17 < *(this + 2) && *v17 == 29)
              {
                *(this + 1) = v17 + 1;
                v26[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
                {
                  return 0;
                }

LABEL_59:
                *(a1 + 20) = v26[0];
                *(a1 + 60) |= 4u;
                v18 = *(this + 1);
                if (v18 < *(this + 2) && *v18 == 33)
                {
                  *(this + 1) = v18 + 1;
                  *v26 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_62;
                }
              }
            }
          }

          else
          {
            if (v8 == 3)
            {
              if (v9 != 5)
              {
                goto LABEL_48;
              }

              v26[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_59;
            }

            if (v8 == 4)
            {
              if (v9 != 1)
              {
                goto LABEL_48;
              }

              *v26 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

LABEL_62:
              *(a1 + 24) = *v26;
              *(a1 + 60) |= 8u;
              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 45)
              {
                *(this + 1) = v19 + 1;
                v26[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_65;
              }
            }

            else
            {
              if (v8 != 5 || v9 != 5)
              {
                goto LABEL_48;
              }

              v26[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

LABEL_65:
              *(a1 + 36) = v26[0];
              *(a1 + 60) |= 0x10u;
              v20 = *(this + 1);
              v14 = *(this + 2);
              if (v20 < v14 && *v20 == 48)
              {
                v15 = v20 + 1;
                *(this + 1) = v15;
                v26[0] = 0;
                if (v15 >= v14)
                {
                  goto LABEL_70;
                }

LABEL_68:
                v21 = *v15;
                if ((v21 & 0x80000000) != 0)
                {
LABEL_70:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
                  if (!result)
                  {
                    return result;
                  }

                  v21 = v26[0];
                  v22 = *(this + 1);
                  v14 = *(this + 2);
                  goto LABEL_72;
                }

                v22 = v15 + 1;
                *(this + 1) = v22;
LABEL_72:
                *(a1 + 33) = v21 != 0;
                *(a1 + 60) |= 0x20u;
                if (v22 < v14 && *v22 == 61)
                {
                  *(this + 1) = v22 + 1;
                  v26[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_75;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 7)
        {
          break;
        }

        if (v8 == 8)
        {
          if (v9 != 5)
          {
            goto LABEL_48;
          }

          v26[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

LABEL_78:
          *(a1 + 44) = v26[0];
          *(a1 + 60) |= 0x80u;
          v24 = *(this + 1);
          if (v24 < *(this + 2) && *v24 == 77)
          {
            *(this + 1) = v24 + 1;
            goto LABEL_81;
          }
        }

        else
        {
          if (v8 != 9)
          {
            if (v8 == 10 && v9 == 5)
            {
              v26[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_85;
            }

            goto LABEL_48;
          }

          if (v9 != 5)
          {
            goto LABEL_48;
          }

LABEL_81:
          v26[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v26[0];
          *(a1 + 60) |= 0x100u;
          v25 = *(this + 1);
          if (v25 < *(this + 2) && *v25 == 85)
          {
            *(this + 1) = v25 + 1;
            v26[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
            {
              return 0;
            }

LABEL_85:
            *(a1 + 52) = v26[0];
            *(a1 + 60) |= 0x200u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }

      if (v8 == 6)
      {
        break;
      }

      if (v8 != 7 || v9 != 5)
      {
        goto LABEL_48;
      }

      v26[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      *(a1 + 40) = v26[0];
      *(a1 + 60) |= 0x40u;
      v23 = *(this + 1);
      if (v23 < *(this + 2) && *v23 == 69)
      {
        *(this + 1) = v23 + 1;
        v26[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_78;
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v15 = *(this + 1);
      v14 = *(this + 2);
      v26[0] = 0;
      if (v15 >= v14)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

LABEL_48:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A5C4FC(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 32), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 36), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 33), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
  if ((*(v5 + 60) & 0x200) == 0)
  {
LABEL_11:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 52), a3);
  v10 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_23:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

uint64_t sub_245A5C678(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 60);
  if (v3)
  {
    v7 = *(a1 + 32);
    *a2 = 8;
    a2[1] = v7;
    a2 += 2;
    v3 = *(a1 + 60);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a1 + 20);
  *a2 = 29;
  *(a2 + 1) = v9;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a1 + 24);
  *a2 = 33;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 60);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = *(a1 + 36);
  *a2 = 45;
  *(a2 + 1) = v11;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = *(a1 + 33);
  *a2 = 48;
  a2[1] = v12;
  a2 += 2;
  v3 = *(a1 + 60);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = *(a1 + 40);
  *a2 = 61;
  *(a2 + 1) = v13;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = *(a1 + 44);
  *a2 = 69;
  *(a2 + 1) = v14;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v16 = *(a1 + 52);
    *a2 = 85;
    *(a2 + 1) = v16;
    a2 += 5;
    v17 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v17;
    if (!v17)
    {
      return a2;
    }

    goto LABEL_23;
  }

LABEL_21:
  v15 = *(a1 + 48);
  *a2 = 77;
  *(a2 + 1) = v15;
  a2 += 5;
  if ((*(a1 + 60) & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_23:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A5C8C0(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[15];
  if (v3)
  {
    v4 = 2 * (v3 & 1);
    if ((v3 & 2) != 0)
    {
      v4 = (2 * (v3 & 1)) | 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    v5 = v4 + ((v3 >> 4) & 2);
    if ((v3 & 0x40) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 += 5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + 5;
  if ((v3 & 0x100) == 0)
  {
    v6 = v5;
  }

  if ((v3 & 0x200) != 0)
  {
    v6 += 5;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = (a1 + 2);
  v9 = *(a1 + 1);
  if (v9 && *v9 != v9[1])
  {
    v7 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v7;
  }

  a1[14] = v7;
  return v7;
}

uint64_t sub_245A5C998(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F810, 0);
  if (v5)
  {
    return sub_245A5B27C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A5CA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5CA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5CAA0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A5CB34()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B508;
}

void sub_245A5CBC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A5CBD8(void *a1)
{
  *a1 = &unk_28589E668;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A5CC2C(void *a1)
{
  *a1 = &unk_28589E668;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A5CD28(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 5)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          a1[4] = v20;
          a1[9] |= 1u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 21)
          {
            *(this + 1) = v12 + 1;
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_22;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 5)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

LABEL_22:
          a1[5] = v20;
          a1[9] |= 2u;
          v13 = *(this + 1);
          v10 = *(this + 2);
          if (v13 < v10 && *v13 == 24)
          {
            v14 = v13 + 1;
            *(this + 1) = v14;
            goto LABEL_30;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
LABEL_30:
      v20 = 0;
      if (v14 >= v10 || (v15 = *v14, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v15 = v20;
        v16 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v16 = v14 + 1;
        *(this + 1) = v16;
      }

      a1[6] = -(v15 & 1) ^ (v15 >> 1);
      a1[9] |= 4u;
      if (v16 < v10 && *v16 == 32)
      {
        v11 = v16 + 1;
        *(this + 1) = v16 + 1;
        v20 = 0;
        if ((v16 + 1) >= v10)
        {
          goto LABEL_40;
        }

LABEL_38:
        v18 = *v11;
        if ((v18 & 0x80000000) != 0)
        {
LABEL_40:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
          if (!result)
          {
            return result;
          }

          v18 = v20;
          v19 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_42;
        }

        v19 = v11 + 1;
        *(this + 1) = v19;
LABEL_42:
        a1[7] = -(v18 & 1) ^ (v18 >> 1);
        a1[9] |= 8u;
        if (v19 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 4 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      v20 = 0;
      if (v11 >= v10)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

LABEL_26:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A5CFD0(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 36);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(3, *(v5 + 24), a2, a4);
  if ((*(v5 + 36) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(4, *(v5 + 28), a2, a4);
  v10 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_11:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

uint64_t sub_245A5D0A4(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[9];
  if (v3)
  {
    v8 = a1[4];
    *a2 = 13;
    *(a2 + 1) = v8;
    a2 += 5;
    v3 = a1[9];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = a1[5];
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  if ((a1[9] & 4) == 0)
  {
LABEL_4:
    if ((a1[9] & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v13 = a1[7];
    *a2 = 32;
    v14 = ((2 * v13) ^ (v13 >> 31));
    if (v14 > 0x7F)
    {
      v16 = a1;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, a2 + 1, a3);
      v4 = (v16 + 2);
      v5 = *(v16 + 1);
      if (!v5)
      {
        return a2;
      }
    }

    else
    {
      *(a2 + 1) = v14;
      a2 += 2;
      v15 = *(a1 + 1);
      v4 = (a1 + 2);
      v5 = v15;
      if (!v15)
      {
        return a2;
      }
    }

    goto LABEL_6;
  }

LABEL_12:
  v10 = a1[6];
  *a2 = 24;
  v11 = ((2 * v10) ^ (v10 >> 31));
  if (v11 > 0x7F)
  {
    v12 = a1;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
    a1 = v12;
    if ((v12[9] & 8) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(a2 + 1) = v11;
    a2 += 2;
    if ((a1[9] & 8) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_6:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_245A5D21C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  if (!*(a1 + 36))
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v5 = v4 + 5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v10 = ((2 * *(a1 + 28)) ^ (*(a1 + 28) >> 31));
    if (v10 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1 + v5;
      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = (v5 + 2);
      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_19;
  }

  v9 = ((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31));
  if (v9 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1 + v5;
    if ((*(a1 + 36) & 8) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = (v5 + 2);
    if ((v3 & 8) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_7:
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_8:
    *(a1 + 32) = v5;
    return v5;
  }

LABEL_19:
  if (*v7 == v7[1])
  {
    goto LABEL_8;
  }

  v11 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 32) = v11;
  return v11;
}

uint64_t sub_245A5D330(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F828, 0);
  if (v5)
  {
    return sub_245A5B470(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A5D410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5D424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5D438(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A5D4CC()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B518;
}

void sub_245A5D55C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5D570(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 44) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A5D658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5D66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5D680(void *a1)
{
  *a1 = &unk_28589E718;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A5D6D4(void *a1)
{
  *a1 = &unk_28589E718;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A5D7E8(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = xmmword_245A99100;
    *(a1 + 32) = 0xC05390D4FDF3B646;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A5D824(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v13;
      *(a1 + 44) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v13;
        *(a1 + 44) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A5D9F8(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  if ((*(v4 + 44) & 4) == 0)
  {
LABEL_4:
    v8 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_9:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A5DAB0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = *(a1 + 32);
      *a2 = 25;
      *(a2 + 1) = v9;
      a2 += 9;
      v10 = *(a1 + 8);
      v4 = (a1 + 8);
      v5 = v10;
      if (!v10)
      {
        return a2;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  if ((*(a1 + 44) & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_9:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A5DBE0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 44))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_245A5DC54(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F840, 0);
  if (v5)
  {
    return sub_245A5D570(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A5DD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5DD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5DD5C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A5DDF0()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B528;
}

void sub_245A5DE80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5DE94(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A5DF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5DF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5DF7C(void *a1)
{
  *a1 = &unk_28589E7C8;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A5DFD0(void *a1)
{
  *a1 = &unk_28589E7C8;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A5E0D4(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0x42852A7F415A872BLL;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A5E0FC(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A5E274(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = v4 + 8;
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A5E310(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
    v9 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = a1[4];
  *a2 = 13;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((a1[7] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A5E3A8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_245A5E410(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F858, 0);
  if (v5)
  {
    return sub_245A5DE94(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A5E4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5E518(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A5E5AC()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B538;
}

void sub_245A5E63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5E650(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A5E710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5E724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5E738(void *a1)
{
  *a1 = &unk_28589E878;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A5E78C(void *a1)
{
  *a1 = &unk_28589E878;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A5E890(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0x4120000040200000;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A5E8B8(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A5EA30(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = v4 + 8;
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A5EACC(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
    v9 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = a1[4];
  *a2 = 13;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((a1[7] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A5EB64(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_245A5EBCC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F870, 0);
  if (v5)
  {
    return sub_245A5E650(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A5ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5ECC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5ECD4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A5ED68()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B548;
}

void sub_245A5EDF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5EE0C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A5EECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5EEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5EEF4(void *a1)
{
  *a1 = &unk_28589E928;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A5EF48(void *a1)
{
  *a1 = &unk_28589E928;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A5F04C(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0xC24800003FC00000;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A5F074(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A5F1EC(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = v4 + 8;
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A5F288(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
    v9 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = a1[4];
  *a2 = 13;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((a1[7] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A5F320(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_245A5F388(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F888, 0);
  if (v5)
  {
    return sub_245A5EE0C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A5F468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5F47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5F490(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A5F524()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B558;
}

void sub_245A5F5B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5F5C8(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A5F688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5F69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5F6B0(void *a1)
{
  *a1 = &unk_28589E9D8;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A5F704(void *a1)
{
  *a1 = &unk_28589E9D8;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A5F808(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0xC3C800003DCCCCCDLL;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A5F830(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A5F9A8(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = v4 + 8;
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A5FA44(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
    v9 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = a1[4];
  *a2 = 13;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((a1[7] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A5FADC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_245A5FB44(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F8A0, 0);
  if (v5)
  {
    return sub_245A5F5C8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A5FC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5FC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5FC4C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A5FCE0()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B568;
}

void sub_245A5FD70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5FD84(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 52) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_28144B888 + 16);
    }

    sub_245A5DE94(v5, v6);
    v4 = *(a2 + 52);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 52) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_28144B888 + 24);
    }

    sub_245A5E650(v7, v8);
    v4 = *(a2 + 52);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 52) |= 4u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_28144B888 + 32);
    }

    sub_245A5EE0C(v9, v10);
    v4 = *(a2 + 52);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 52) |= 8u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      v12 = *(qword_28144B888 + 40);
    }

    sub_245A5F5C8(v11, v12);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A60078(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

void sub_245A600A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A600B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A600C8(void *a1)
{
  *a1 = &unk_28589EA88;
  if (qword_28144B888 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A601E4(void *a1)
{
  sub_245A600C8(a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A602B4(uint64_t a1)
{
  if (*(a1 + 52))
  {
    if (*(a1 + 52))
    {
      v1 = *(a1 + 16);
      if (v1)
      {
        if (*(v1 + 28))
        {
          *(v1 + 16) = 0x42852A7F415A872BLL;
        }

        v3 = *(v1 + 8);
        v2 = (v1 + 8);
        *(v2 + 5) = 0;
        if (v3)
        {
          v4 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
          a1 = v4;
        }
      }
    }

    if ((*(a1 + 52) & 2) != 0)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 16) = 0x4120000040200000;
        }

        v7 = *(v5 + 8);
        v6 = (v5 + 8);
        *(v6 + 5) = 0;
        if (v7)
        {
          v8 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
          a1 = v8;
        }
      }
    }

    if ((*(a1 + 52) & 4) != 0)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        if (*(v9 + 28))
        {
          *(v9 + 16) = 0xC24800003FC00000;
        }

        v11 = *(v9 + 8);
        v10 = (v9 + 8);
        *(v10 + 5) = 0;
        if (v11)
        {
          v12 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v10);
          a1 = v12;
        }
      }
    }

    if ((*(a1 + 52) & 8) != 0)
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        if (*(v13 + 28))
        {
          *(v13 + 16) = 0xC3C800003DCCCCCDLL;
        }

        v15 = *(v13 + 8);
        v14 = (v13 + 8);
        *(v14 + 5) = 0;
        if (v15)
        {
          v16 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v14);
          a1 = v16;
        }
      }
    }
  }

  v18 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v18)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A603FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 2)
          {
            goto LABEL_26;
          }

          *(a1 + 52) |= 1u;
          v14 = *(a1 + 16);
          if (!v14)
          {
            operator new();
          }

          v47 = 0;
          v15 = *(this + 1);
          if (v15 >= *(this + 2) || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
            {
              return 0;
            }
          }

          else
          {
            v47 = *v15;
            *(this + 1) = v15 + 1;
          }

          v16 = *(this + 14);
          v17 = *(this + 15);
          *(this + 14) = v16 + 1;
          if (v16 >= v17)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245A5E0FC(v14, this, v18, v19) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v20 = *(this + 14);
          v21 = __OFSUB__(v20, 1);
          v22 = v20 - 1;
          if (v22 < 0 == v21)
          {
            *(this + 14) = v22;
          }

          v23 = *(this + 1);
          if (v23 < *(this + 2) && *v23 == 18)
          {
            *(this + 1) = v23 + 1;
            *(a1 + 52) |= 2u;
            v10 = *(a1 + 24);
            if (!v10)
            {
LABEL_38:
              operator new();
            }

            goto LABEL_11;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_26;
          }

          *(a1 + 52) |= 2u;
          v10 = *(a1 + 24);
          if (!v10)
          {
            goto LABEL_38;
          }

LABEL_11:
          v47 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || *v11 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
            {
              return 0;
            }
          }

          else
          {
            v47 = *v11;
            *(this + 1) = v11 + 1;
          }

          v24 = *(this + 14);
          v25 = *(this + 15);
          *(this + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245A5E8B8(v10, this, v26, v27) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v28 = *(this + 14);
          v21 = __OFSUB__(v28, 1);
          v29 = v28 - 1;
          if (v29 < 0 == v21)
          {
            *(this + 14) = v29;
          }

          v30 = *(this + 1);
          if (v30 < *(this + 2) && *v30 == 26)
          {
            *(this + 1) = v30 + 1;
            goto LABEL_50;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_26;
      }

LABEL_50:
      *(a1 + 52) |= 4u;
      v31 = *(a1 + 32);
      if (!v31)
      {
        operator new();
      }

      v47 = 0;
      v32 = *(this + 1);
      if (v32 >= *(this + 2) || *v32 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
        {
          return 0;
        }
      }

      else
      {
        v47 = *v32;
        *(this + 1) = v32 + 1;
      }

      v33 = *(this + 14);
      v34 = *(this + 15);
      *(this + 14) = v33 + 1;
      if (v33 >= v34)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_245A5F074(v31, this, v35, v36) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v37 = *(this + 14);
      v21 = __OFSUB__(v37, 1);
      v38 = v37 - 1;
      if (v38 < 0 == v21)
      {
        *(this + 14) = v38;
      }

      v39 = *(this + 1);
      if (v39 < *(this + 2) && *v39 == 34)
      {
        *(this + 1) = v39 + 1;
        *(a1 + 52) |= 8u;
        v12 = *(a1 + 40);
        if (!v12)
        {
LABEL_64:
          operator new();
        }

LABEL_17:
        v47 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
          {
            return 0;
          }
        }

        else
        {
          v47 = *v13;
          *(this + 1) = v13 + 1;
        }

        v40 = *(this + 14);
        v41 = *(this + 15);
        *(this + 14) = v40 + 1;
        if (v40 >= v41)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245A5F830(v12, this, v42, v43) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v44 = *(this + 14);
        v21 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (v45 < 0 == v21)
        {
          *(this + 14) = v45;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 4 && v9 == 2)
    {
      *(a1 + 52) |= 8u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        goto LABEL_64;
      }

      goto LABEL_17;
    }

LABEL_26:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_245A609A0(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A609C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 52);
  if (v4)
  {
    if (*(result + 16))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v4 = *(v3 + 52);
      if ((v4 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = *(qword_28144B888 + 16);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v4 = *(v3 + 52);
      if ((v4 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if ((v4 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    if (*(v3 + 32))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v3 + 52) & 8) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = *(qword_28144B888 + 32);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v3 + 52) & 8) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_5:
    v7 = *(v3 + 8);
    v6 = v3 + 8;
    v5 = v7;
    if (!v7)
    {
      return result;
    }

    goto LABEL_23;
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  if (*(v3 + 24))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v4 = *(v3 + 52);
    if ((v4 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = *(qword_28144B888 + 24);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v4 = *(v3 + 52);
    if ((v4 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  if (*(v3 + 40))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v11 = *(v3 + 8);
    v6 = v3 + 8;
    v5 = v11;
    if (!v11)
    {
      return result;
    }
  }

  else
  {
    v12 = *(qword_28144B888 + 40);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v13 = *(v3 + 8);
    v6 = v3 + 8;
    v5 = v13;
    if (!v13)
    {
      return result;
    }
  }

LABEL_23:
  if (*v5 != v5[1])
  {

    return MEMORY[0x2821F9DB8](v6, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A60B3C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if ((*(this + 52) & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(this + 2);
  if (v5)
  {
    *a2 = 10;
    v6 = a2 + 1;
    v7 = v5[6];
    if (v7 <= 0x7F)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *(qword_28144B888 + 16);
    *a2 = 10;
    v6 = a2 + 1;
    v7 = v5[6];
    if (v7 <= 0x7F)
    {
LABEL_4:
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
      v8 = v5[7];
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v6, a3);
  v8 = v5[7];
  if (v8)
  {
LABEL_8:
    v9 = v5[4];
    *v3 = 13;
    *(v3 + 1) = v9;
    v3 = (v3 + 5);
    v8 = v5[7];
  }

LABEL_9:
  if ((v8 & 2) != 0)
  {
    v13 = v5[5];
    *v3 = 21;
    *(v3 + 1) = v13;
    v3 = (v3 + 5);
    v14 = *(v5 + 1);
    v11 = (v5 + 2);
    v10 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = *(v5 + 1);
    v11 = (v5 + 2);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  if (*v10 != v10[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, v3, a3);
  }

LABEL_15:
  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_29;
  }

  v15 = *(this + 3);
  if (v15)
  {
    *v3 = 18;
    v16 = v3 + 1;
    v17 = v15[6];
    if (v17 <= 0x7F)
    {
      goto LABEL_18;
    }

LABEL_21:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v16, a3);
    v18 = v15[7];
    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v15 = *(qword_28144B888 + 24);
  *v3 = 18;
  v16 = v3 + 1;
  v17 = v15[6];
  if (v17 > 0x7F)
  {
    goto LABEL_21;
  }

LABEL_18:
  *(v3 + 1) = v17;
  v3 = (v3 + 2);
  v18 = v15[7];
  if (v18)
  {
LABEL_22:
    v19 = v15[4];
    *v3 = 13;
    *(v3 + 1) = v19;
    v3 = (v3 + 5);
    v18 = v15[7];
  }

LABEL_23:
  if ((v18 & 2) != 0)
  {
    v23 = v15[5];
    *v3 = 21;
    *(v3 + 1) = v23;
    v3 = (v3 + 5);
    v24 = *(v15 + 1);
    v21 = (v15 + 2);
    v20 = v24;
    if (!v24)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v22 = *(v15 + 1);
    v21 = (v15 + 2);
    v20 = v22;
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  if (*v20 != v20[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, v3, a3);
  }

LABEL_29:
  if ((*(this + 52) & 4) == 0)
  {
    goto LABEL_43;
  }

  v25 = *(this + 4);
  if (v25)
  {
    *v3 = 26;
    v26 = v3 + 1;
    v27 = v25[6];
    if (v27 <= 0x7F)
    {
      goto LABEL_32;
    }

LABEL_35:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v26, a3);
    v28 = v25[7];
    if ((v28 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v25 = *(qword_28144B888 + 32);
  *v3 = 26;
  v26 = v3 + 1;
  v27 = v25[6];
  if (v27 > 0x7F)
  {
    goto LABEL_35;
  }

LABEL_32:
  *(v3 + 1) = v27;
  v3 = (v3 + 2);
  v28 = v25[7];
  if (v28)
  {
LABEL_36:
    v29 = v25[4];
    *v3 = 13;
    *(v3 + 1) = v29;
    v3 = (v3 + 5);
    v28 = v25[7];
  }

LABEL_37:
  if ((v28 & 2) != 0)
  {
    v33 = v25[5];
    *v3 = 21;
    *(v3 + 1) = v33;
    v3 = (v3 + 5);
    v34 = *(v25 + 1);
    v31 = (v25 + 2);
    v30 = v34;
    if (!v34)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v32 = *(v25 + 1);
    v31 = (v25 + 2);
    v30 = v32;
    if (!v32)
    {
      goto LABEL_43;
    }
  }

  if (*v30 != v30[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v31, v3, a3);
  }

LABEL_43:
  if ((*(this + 52) & 8) == 0)
  {
    goto LABEL_57;
  }

  v35 = *(this + 5);
  if (v35)
  {
    *v3 = 34;
    v36 = v3 + 1;
    v37 = v35[6];
    if (v37 <= 0x7F)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v35 = *(qword_28144B888 + 40);
    *v3 = 34;
    v36 = v3 + 1;
    v37 = v35[6];
    if (v37 <= 0x7F)
    {
LABEL_46:
      *(v3 + 1) = v37;
      v3 = (v3 + 2);
      v38 = v35[7];
      if ((v38 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v36, a3);
  v38 = v35[7];
  if (v38)
  {
LABEL_50:
    v39 = v35[4];
    *v3 = 13;
    *(v3 + 1) = v39;
    v3 = (v3 + 5);
    v38 = v35[7];
  }

LABEL_51:
  if ((v38 & 2) != 0)
  {
    v43 = v35[5];
    *v3 = 21;
    *(v3 + 1) = v43;
    v3 = (v3 + 5);
    v44 = *(v35 + 1);
    v41 = (v35 + 2);
    v40 = v44;
    if (!v44)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v42 = *(v35 + 1);
    v41 = (v35 + 2);
    v40 = v42;
    if (!v42)
    {
      goto LABEL_57;
    }
  }

  if (*v40 != v40[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v41, v3, a3);
  }

LABEL_57:
  v47 = *(this + 1);
  v46 = (this + 8);
  v45 = v47;
  if (!v47 || *v45 == v45[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v46, v3, a3);
}

uint64_t sub_245A60F9C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

  if (*(a1 + 52))
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_28144B888 + 16);
    }

    v8 = *(v7 + 28);
    v9 = (v8 << 31 >> 31) & 5;
    if ((v8 & 2) != 0)
    {
      v9 += 5;
    }

    if (*(v7 + 28))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v7 + 8);
    if (!v11 || *v11 == v11[1])
    {
      *(v7 + 24) = v10;
      v4 = (v10 + 2);
      v3 = *(a1 + 52);
      if ((v3 & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v12 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v7 + 8), a2) + v10);
      *(v7 + 24) = v12;
      if (v12 >= 0x80)
      {
        v4 = v12 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
        v3 = *(a1 + 52);
        if ((v3 & 2) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v4 = (v12 + 2);
        v3 = *(a1 + 52);
        if ((v3 & 2) == 0)
        {
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    v13 = *(qword_28144B888 + 24);
  }

  v14 = *(v13 + 28);
  v15 = (v14 << 31 >> 31) & 5;
  if ((v14 & 2) != 0)
  {
    v15 += 5;
  }

  if (*(v13 + 28))
  {
    LODWORD(v16) = v15;
  }

  else
  {
    LODWORD(v16) = 0;
  }

  v17 = *(v13 + 8);
  if (!v17 || *v17 == v17[1])
  {
    *(v13 + 24) = v16;
    v18 = 1;
  }

  else
  {
    v16 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v13 + 8), a2) + v16);
    *(v13 + 24) = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    }

    else
    {
      v18 = 1;
    }
  }

  v4 = (v4 + v16 + v18 + 1);
  v3 = *(a1 + 52);
LABEL_36:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_38;
    }

LABEL_55:
    v26 = *(a1 + 40);
    if (!v26)
    {
      v26 = *(qword_28144B888 + 40);
    }

    v27 = *(v26 + 28);
    v28 = (v27 << 31 >> 31) & 5;
    if ((v27 & 2) != 0)
    {
      v28 += 5;
    }

    if (*(v26 + 28))
    {
      LODWORD(v29) = v28;
    }

    else
    {
      LODWORD(v29) = 0;
    }

    v30 = *(v26 + 8);
    if (!v30 || *v30 == v30[1])
    {
      *(v26 + 24) = v29;
      v31 = 1;
    }

    else
    {
      v29 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v26 + 8), a2) + v29);
      *(v26 + 24) = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
      }

      else
      {
        v31 = 1;
      }
    }

    v4 = (v4 + v29 + v31 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

  v20 = *(a1 + 32);
  if (!v20)
  {
    v20 = *(qword_28144B888 + 32);
  }

  v21 = *(v20 + 28);
  v22 = (v21 << 31 >> 31) & 5;
  if ((v21 & 2) != 0)
  {
    v22 += 5;
  }

  if (*(v20 + 28))
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v20 + 8);
  if (!v24 || *v24 == v24[1])
  {
    *(v20 + 24) = v23;
    v4 = (v4 + v23 + 2);
    if ((*(a1 + 52) & 8) != 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v25 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v20 + 8), a2) + v23);
    *(v20 + 24) = v25;
    if (v25 >= 0x80)
    {
      v4 = v4 + v25 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
      if ((*(a1 + 52) & 8) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v4 = (v4 + v25 + 2);
      if ((*(a1 + 52) & 8) != 0)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_38:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_39:
    *(a1 + 48) = v4;
    return v4;
  }

LABEL_69:
  if (*v6 == v6[1])
  {
    goto LABEL_39;
  }

  v32 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 48) = v32;
  return v32;
}

uint64_t sub_245A612CC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F8B8, 0);
  if (v5)
  {
    return sub_245A5FD84(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A613AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A613C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A613D4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A61468()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B578;
}

void sub_245A614F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A6150C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 52) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      *(a1 + 52) |= 4u;
      v7 = *(a1 + 32);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 32);
      if (v8)
      {
        sub_245A5D570(v7, v8);
        if ((*(a2 + 52) & 8) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }
      }

      else
      {
        sub_245A5D570(v7, *(qword_28144B828 + 32));
        if ((*(a2 + 52) & 8) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 52) |= 2u;
  *(a1 + 24) = v6;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_18:
  *(a1 + 52) |= 8u;
  v9 = *(a1 + 40);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 40);
  if (!v10)
  {
    v10 = *(qword_28144B828 + 40);
  }

  sub_245A5FD84(v9, v10);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A61730(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

void sub_245A61750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A61764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A61778(void *a1)
{
  *a1 = &unk_28589EB38;
  if (qword_28144B828 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A61838(void *a1)
{
  *a1 = &unk_28589EB38;
  if (qword_28144B828 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A619AC(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (v1)
  {
    *(a1 + 16) = xmmword_245A99110;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 32);
      if (v2)
      {
        if (*(v2 + 44))
        {
          *(v2 + 16) = xmmword_245A99100;
          *(v2 + 32) = 0xC05390D4FDF3B646;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 9) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
        }
      }
    }

    if ((*(a1 + 52) & 8) != 0 && *(a1 + 40))
    {
      v6 = a1;
      sub_245A602B4(*(a1 + 40));
      a1 = v6;
    }
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A61A74(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v8 == 1)
      {
        if (v9 != 1)
        {
          goto LABEL_28;
        }

        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v32;
        *(a1 + 52) |= 1u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 17)
        {
          *(this + 1) = v12 + 1;
          *v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_23;
        }
      }

      else
      {
        if (v8 != 2 || v9 != 1)
        {
          goto LABEL_28;
        }

        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

LABEL_23:
        *(a1 + 24) = *v32;
        v13 = *(a1 + 52) | 2;
        *(a1 + 52) = v13;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 26)
        {
          *(this + 1) = v14 + 1;
          *(a1 + 52) = v13 | 4;
          v15 = *(a1 + 32);
          if (!v15)
          {
            goto LABEL_32;
          }

LABEL_33:
          v32[0] = 0;
          v16 = *(this + 1);
          if (v16 >= *(this + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32))
            {
              return 0;
            }
          }

          else
          {
            v32[0] = *v16;
            *(this + 1) = v16 + 1;
          }

          v17 = *(this + 14);
          v18 = *(this + 15);
          *(this + 14) = v17 + 1;
          if (v17 >= v18)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245A5D824(v15, this, v19, v20) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v21 = *(this + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(this + 14) = v23;
          }

          v24 = *(this + 1);
          if (v24 < *(this + 2) && *v24 == 34)
          {
            *(this + 1) = v24 + 1;
            *(a1 + 52) |= 8u;
            v10 = *(a1 + 40);
            if (!v10)
            {
LABEL_45:
              operator new();
            }

LABEL_16:
            v32[0] = 0;
            v11 = *(this + 1);
            if (v11 >= *(this + 2) || *v11 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32))
              {
                return 0;
              }
            }

            else
            {
              v32[0] = *v11;
              *(this + 1) = v11 + 1;
            }

            v25 = *(this + 14);
            v26 = *(this + 15);
            *(this + 14) = v25 + 1;
            if (v25 >= v26)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_245A603FC(v10, this, v27, v28) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v29 = *(this + 14);
            v22 = __OFSUB__(v29, 1);
            v30 = v29 - 1;
            if (v30 < 0 == v22)
            {
              *(this + 14) = v30;
            }

            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v8 == 3)
    {
      if (v9 == 2)
      {
        *(a1 + 52) |= 4u;
        v15 = *(a1 + 32);
        if (!v15)
        {
LABEL_32:
          operator new();
        }

        goto LABEL_33;
      }
    }

    else if (v8 == 4 && v9 == 2)
    {
      *(a1 + 52) |= 8u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        goto LABEL_45;
      }

      goto LABEL_16;
    }

LABEL_28:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245A61EE8(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 52);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (*(v4 + 32))
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
        if ((*(v4 + 52) & 8) != 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = *(qword_28144B828 + 32);
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
        if ((*(v4 + 52) & 8) != 0)
        {
          goto LABEL_13;
        }
      }

LABEL_5:
      v8 = *(v4 + 8);
      v7 = v4 + 8;
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  if (*(v4 + 40))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v10 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v10;
    if (!v10)
    {
      return result;
    }
  }

  else
  {
    v11 = *(qword_28144B828 + 40);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v12 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_17:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A6200C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 13);
  if (v5)
  {
    v9 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v9;
    v3 = (a2 + 9);
    v5 = *(this + 13);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11 = *(this + 4);
      if (v11)
      {
        *v3 = 26;
        v12 = v3 + 1;
        v13 = *(v11 + 40);
        if (v13 <= 0x7F)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = *(qword_28144B828 + 32);
        *v3 = 26;
        v12 = v3 + 1;
        v13 = *(v11 + 40);
        if (v13 <= 0x7F)
        {
LABEL_11:
          *(v3 + 1) = v13;
          v3 = sub_245A5DAB0(v11, v3 + 2, a3);
          if ((*(this + 13) & 8) != 0)
          {
            goto LABEL_15;
          }

LABEL_5:
          v8 = *(this + 1);
          v7 = (this + 8);
          v6 = v8;
          if (!v8)
          {
            return v3;
          }

          goto LABEL_21;
        }
      }

      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
      v3 = sub_245A5DAB0(v11, v14, v15);
      if ((*(this + 13) & 8) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 3);
  *v3 = 17;
  *(v3 + 1) = v10;
  v3 = (v3 + 9);
  v5 = *(this + 13);
  if ((v5 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v16 = *(this + 5);
  if (v16)
  {
    *v3 = 34;
    v17 = v3 + 1;
    v18 = v16[12];
    if (v18 <= 0x7F)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = *(qword_28144B828 + 40);
    *v3 = 34;
    v17 = v3 + 1;
    v18 = v16[12];
    if (v18 <= 0x7F)
    {
LABEL_17:
      *(v3 + 1) = v18;
      v3 = sub_245A60B3C(v16, (v3 + 2), a3);
      v19 = *(this + 1);
      v7 = (this + 8);
      v6 = v19;
      if (!v19)
      {
        return v3;
      }

      goto LABEL_21;
    }
  }

  v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v17, a3);
  v3 = sub_245A60B3C(v16, v20, v21);
  v22 = *(this + 1);
  v7 = (this + 8);
  v6 = v22;
  if (!v22)
  {
    return v3;
  }

LABEL_21:
  if (*v6 == v6[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v3, a3);
}

uint64_t sub_245A6222C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (!*(a1 + 52))
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_28:
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = sub_245A60F9C(v15, a2);
      if (v16 < 0x80)
      {
LABEL_30:
        v17 = 1;
        goto LABEL_33;
      }
    }

    else
    {
      v16 = sub_245A60F9C(*(qword_28144B828 + 40), a2);
      if (v16 < 0x80)
      {
        goto LABEL_30;
      }
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
LABEL_33:
    v5 = (v5 + v16 + v17 + 1);
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    v9 = *(qword_28144B828 + 32);
  }

  v10 = *(v9 + 44);
  v11 = (v10 << 31 >> 31) & 9;
  if ((v10 & 2) != 0)
  {
    v11 += 9;
  }

  if ((v10 & 4) != 0)
  {
    v11 += 9;
  }

  if (*(v9 + 44))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v9 + 8);
  if (!v13 || *v13 == v13[1])
  {
    *(v9 + 40) = v12;
    v5 = (v5 + v12 + 1 + 1);
    if ((*(a1 + 52) & 8) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v14 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v9 + 8), a2) + v12);
    *(v9 + 40) = v14;
    if (v14 >= 0x80)
    {
      v5 = v5 + v14 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      if ((*(a1 + 52) & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v5 = (v5 + v14 + 1 + 1);
      if ((*(a1 + 52) & 8) != 0)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_7:
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_8:
    *(a1 + 48) = v5;
    return v5;
  }

LABEL_34:
  if (*v7 == v7[1])
  {
    goto LABEL_8;
  }

  v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 48) = v18;
  return v18;
}

uint64_t sub_245A623F4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F8D0, 0);
  if (v5)
  {
    return sub_245A6150C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A624D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A624E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A624FC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A62590()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B588;
}

void sub_245A62620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A62634(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 40))
  {
    v7 = *(a2 + 16);
    a1[10] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 40);
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

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[10] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 28);
    a1[10] |= 8u;
    a1[7] = v10;
    if ((*(a2 + 40) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_13:
  v9 = *(a2 + 24);
  a1[10] |= 4u;
  a1[6] = v9;
  v4 = *(a2 + 40);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 32);
    a1[10] |= 0x10u;
    a1[8] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A6275C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A62770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A62784(void *a1)
{
  *a1 = &unk_28589EBE8;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A627D8(void *a1)
{
  *a1 = &unk_28589EBE8;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A628E4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 16) = 10;
    *(a1 + 20) = xmmword_245A99120;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A62914(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 5)
          {
            goto LABEL_25;
          }

          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_36;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v15 = *(this + 2);
          a1[10] |= 1u;
          if (v13 < v15)
          {
            goto LABEL_34;
          }
        }

        else
        {
          a1[4] = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
          a1[10] |= 1u;
          if (v13 < v10)
          {
LABEL_34:
            if (*v13 == 21)
            {
              *(this + 1) = v13 + 1;
              v19 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
              {
                return 0;
              }

LABEL_36:
              a1[5] = v19;
              a1[10] |= 2u;
              v16 = *(this + 1);
              if (v16 < *(this + 2) && *v16 == 29)
              {
                *(this + 1) = v16 + 1;
                v19 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
                {
                  return 0;
                }

LABEL_39:
                a1[6] = v19;
                a1[10] |= 4u;
                v17 = *(this + 1);
                if (v17 < *(this + 2) && *v17 == 37)
                {
                  *(this + 1) = v17 + 1;
                  v19 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_42;
                }
              }
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 5)
        {
          goto LABEL_25;
        }

        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_39;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_25;
      }

      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      a1[7] = v19;
      a1[10] |= 8u;
      v18 = *(this + 1);
      if (v18 < *(this + 2) && *v18 == 45)
      {
        *(this + 1) = v18 + 1;
        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
        {
          return 0;
        }

LABEL_45:
        a1[8] = v19;
        a1[10] |= 0x10u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 5 && v9 == 5)
    {
      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_45;
    }

LABEL_25:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A62C20(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 40);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  if ((*(v5 + 40) & 0x10) == 0)
  {
LABEL_6:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v10 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_13:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

uint64_t sub_245A62D10(unsigned int *a1, _BYTE *a2, unsigned __int8 *a3)
{
  if (a1[10])
  {
    v7 = a1[4];
    *a2 = 8;
    if (v7 > 0x7F)
    {
      v8 = a1;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, (a2 + 1), a3);
      a1 = v8;
      v3 = v8[10];
      if ((v3 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      v3 = a1[10];
      if ((v3 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v3 = a1[10];
  if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v9 = a1[5];
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  v3 = a1[10];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = a1[6];
  *a2 = 29;
  *(a2 + 1) = v10;
  a2 += 5;
  v3 = a1[10];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = a1[7];
  *a2 = 37;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((a1[10] & 0x10) == 0)
  {
LABEL_6:
    v6 = *(a1 + 1);
    v4 = (a1 + 2);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  v12 = a1[8];
  *a2 = 45;
  *(a2 + 1) = v12;
  a2 += 5;
  v13 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v13;
  if (!v13)
  {
    return a2;
  }

LABEL_16:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_245A62E9C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v9 = *(a1 + 16);
      if (v9 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
        v3 = *(a1 + 40);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_5:
      *(a1 + 36) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v10 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 36) = v10;
  return v10;
}

uint64_t sub_245A62F6C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F8E8, 0);
  if (v5)
  {
    return sub_245A62634(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A6304C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A63060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A63074(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A63108()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B598;
}

void sub_245A63198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A631AC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 48) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v7 = *(a2 + 40);
      *(a1 + 48) |= 4u;
      *(a1 + 40) = v7;
      if ((*(a2 + 48) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 48) |= 2u;
  *(a1 + 24) = v6;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_13:
  *(a1 + 48) |= 8u;
  v8 = *(a1 + 32);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 32);
  if (!v9)
  {
    v9 = *(qword_28144B818 + 32);
  }

  sub_245A62634(v8, v9);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A63388(void *a1)
{
  *a1 = &unk_28589EC98;
  if (qword_28144B818 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A6341C(void *a1)
{
  *a1 = &unk_28589EC98;
  if (qword_28144B818 != a1)
  {
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A63568(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 16) = xmmword_245A99130;
    *(a1 + 40) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        if (*(v3 + 40))
        {
          *(v3 + 16) = 10;
          *(v3 + 20) = xmmword_245A99120;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 8) = 0;
        if (v5)
        {
          v6 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
          a1 = v6;
          v1 = vars8;
        }
      }
    }
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A63600(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v8 == 3)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v13 = *(this + 2);
              goto LABEL_31;
            }
          }

          else if (v8 == 4 && v9 == 2)
          {
            *(a1 + 48) |= 8u;
            v10 = *(a1 + 32);
            if (!v10)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          }

LABEL_27:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_27;
        }

        *v26 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v26;
        *(a1 + 48) |= 1u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 17)
        {
          *(this + 1) = v12 + 1;
          *v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_23;
        }
      }

      if (v8 != 2 || v9 != 1)
      {
        goto LABEL_27;
      }

      *v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      *(a1 + 24) = *v26;
      *(a1 + 48) |= 2u;
      v14 = *(this + 1);
      v13 = *(this + 2);
      if (v14 < v13 && *v14 == 24)
      {
        v15 = v14 + 1;
        *(this + 1) = v15;
LABEL_31:
        v26[0] = 0;
        if (v15 >= v13 || (v16 = *v15, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
          if (!result)
          {
            return result;
          }

          v16 = v26[0];
          if (v26[0] > 1)
          {
LABEL_37:
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
            goto LABEL_38;
          }
        }

        else
        {
          *(this + 1) = v15 + 1;
          if (v16 > 1)
          {
            goto LABEL_37;
          }
        }

        *(a1 + 48) |= 4u;
        *(a1 + 40) = v16;
LABEL_38:
        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 34)
        {
          break;
        }
      }
    }

    *(this + 1) = v18 + 1;
    *(a1 + 48) |= 8u;
    v10 = *(a1 + 32);
    if (!v10)
    {
LABEL_41:
      operator new();
    }

LABEL_16:
    v26[0] = 0;
    v11 = *(this + 1);
    if (v11 >= *(this + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26))
      {
        return 0;
      }
    }

    else
    {
      v26[0] = *v11;
      *(this + 1) = v11 + 1;
    }

    v19 = *(this + 14);
    v20 = *(this + 15);
    *(this + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_245A62914(v10, this, v21, v22) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v23 = *(this + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      *(this + 14) = v25;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_245A639CC(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 48);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 40), a2, a4);
  if ((*(v5 + 48) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (*(v5 + 32))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v10 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v10;
    if (!v10)
    {
      return result;
    }
  }

  else
  {
    v11 = *(qword_28144B818 + 32);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v12 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_14:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A63AC8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 12);
  if (v5)
  {
    v9 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v9;
    v3 = (a2 + 9);
    v5 = *(this + 12);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11 = *(this + 10);
      *v3 = 24;
      v12 = v3 + 1;
      if ((v11 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
        if ((*(this + 48) & 8) != 0)
        {
          goto LABEL_16;
        }
      }

      else if (v11 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
        if ((*(this + 48) & 8) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(v3 + 1) = v11;
        v3 = (v3 + 2);
        if ((*(this + 48) & 8) != 0)
        {
          goto LABEL_16;
        }
      }

LABEL_5:
      v8 = *(this + 1);
      v7 = (this + 8);
      v6 = v8;
      if (!v8)
      {
        return v3;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 3);
  *v3 = 17;
  *(v3 + 1) = v10;
  v3 = (v3 + 9);
  if ((*(this + 12) & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((*(this + 48) & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  v13 = *(this + 4);
  if (v13)
  {
    *v3 = 34;
    v14 = v3 + 1;
    v15 = v13[9];
    if (v15 <= 0x7F)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = *(qword_28144B818 + 32);
    *v3 = 34;
    v14 = v3 + 1;
    v15 = v13[9];
    if (v15 <= 0x7F)
    {
LABEL_18:
      *(v3 + 1) = v15;
      v3 = sub_245A62D10(v13, v3 + 2, a3);
      v16 = *(this + 1);
      v7 = (this + 8);
      v6 = v16;
      if (!v16)
      {
        return v3;
      }

      goto LABEL_22;
    }
  }

  v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v14, a3);
  v3 = sub_245A62D10(v13, v17, v18);
  v19 = *(this + 1);
  v7 = (this + 8);
  v6 = v19;
  if (!v19)
  {
    return v3;
  }

LABEL_22:
  if (*v6 == v6[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v3, a3);
}

uint64_t sub_245A63CC0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 48);
  if (!*(a1 + 48))
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    v10 = *(a1 + 32);
    if (v10)
    {
      LOBYTE(v11) = *(v10 + 40);
      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = *(qword_28144B818 + 32);
      LOBYTE(v11) = *(v10 + 40);
      if (v11)
      {
LABEL_20:
        if (v11)
        {
          v16 = *(v10 + 16);
          if (v16 >= 0x80)
          {
            v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
            v11 = *(v10 + 40);
          }

          else
          {
            v12 = 2;
          }
        }

        else
        {
          v12 = 0;
        }

        if ((v11 & 2) != 0)
        {
          v12 += 5;
        }

        if ((v11 & 4) != 0)
        {
          v12 += 5;
        }

        if ((v11 & 8) != 0)
        {
          v12 += 5;
        }

        if ((v11 & 0x10) != 0)
        {
          v13 = (v12 + 5);
        }

        else
        {
          v13 = v12;
        }

        v14 = (v10 + 8);
        v15 = *(v10 + 8);
        if (!v15)
        {
LABEL_40:
          *(v10 + 36) = v13;
          if (v13 >= 0x80)
          {
            v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
          }

          else
          {
            v17 = 1;
          }

          v5 = (v5 + v13 + v17 + 1);
          v6 = (a1 + 8);
          v7 = *(a1 + 8);
          if (!v7)
          {
            goto LABEL_8;
          }

          goto LABEL_44;
        }

LABEL_38:
        if (*v15 != v15[1])
        {
          v13 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v14, a2) + v13);
        }

        goto LABEL_40;
      }
    }

    v13 = 0;
    v14 = (v10 + 8);
    v15 = *(v10 + 8);
    if (!v15)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v9 = *(a1 + 40);
  if ((v9 & 0x80000000) != 0)
  {
    v5 = (v5 + 11);
    if ((v3 & 8) != 0)
    {
      goto LABEL_18;
    }
  }

  else if (v9 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1 + v5;
    if ((*(a1 + 48) & 8) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = (v5 + 2);
    if ((v3 & 8) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_7:
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_8:
    *(a1 + 44) = v5;
    return v5;
  }

LABEL_44:
  if (*v7 == v7[1])
  {
    goto LABEL_8;
  }

  v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 44) = v18;
  return v18;
}

uint64_t sub_245A63E90(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F900, 0);
  if (v5)
  {
    return sub_245A631AC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A63F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A63F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A63F98(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A6402C()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B5A8;
}

void sub_245A640BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A640D0(uint64_t a1)
{
  if (*(a1 + 12) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 12));
  }

  if (*a1)
  {
    MEMORY[0x245D78850](*a1, 0x80C80B8603338);
  }

  return a1;
}

uint64_t sub_245A64140(unsigned int *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = a1[6];
  v5 = *(a2 + 24);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4));
  if (*(a2 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v11 = *(*(a2 + 16) + 8 * v7);
        v12 = a1[7];
        v13 = a1[6];
        if (v13 >= v12)
        {
          break;
        }

        v14 = *(a1 + 2);
        a1[6] = v13 + 1;
        v6 = std::string::operator=(*(v14 + 8 * v13), v11);
        if (++v7 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v12 == a1[8])
      {
        v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4));
        v12 = a1[7];
      }

      a1[7] = v12 + 1;
      v8 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v6);
      v9 = *(a1 + 2);
      v10 = a1[6];
      a1[6] = v10 + 1;
      *(v9 + 8 * v10) = v8;
      v6 = std::string::operator=(v8, v11);
      ++v7;
    }

    while (v7 < *(a2 + 24));
  }

LABEL_11:
  v15 = a1[12];
  v16 = *(a2 + 48);
  v17 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 10));
  if (*(a2 + 48) >= 1)
  {
    v18 = 0;
    do
    {
      while (1)
      {
        v22 = *(*(a2 + 40) + 8 * v18);
        v23 = a1[13];
        v24 = a1[12];
        if (v24 >= v23)
        {
          break;
        }

        v25 = *(a1 + 5);
        a1[12] = v24 + 1;
        v17 = std::string::operator=(*(v25 + 8 * v24), v22);
        if (++v18 >= *(a2 + 48))
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
        }
      }

      if (v23 == a1[14])
      {
        v17 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 10));
        v23 = a1[13];
      }

      a1[13] = v23 + 1;
      v19 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v17);
      v20 = *(a1 + 5);
      v21 = a1[12];
      a1[12] = v21 + 1;
      *(v20 + 8 * v21) = v19;
      v17 = std::string::operator=(v19, v22);
      ++v18;
    }

    while (v18 < *(a2 + 48));
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A6434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A64360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A64374(uint64_t a1)
{
  *a1 = &unk_28589ED48;
  if (*(a1 + 52) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 40) + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 52));
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    MEMORY[0x245D78850](v4, 0x80C80B8603338);
  }

  if (*(a1 + 28) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 16) + 8 * v5);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v5;
    }

    while (v5 < *(a1 + 28));
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x245D78850](v7, 0x80C80B8603338);
  }

  MEMORY[0x245D78300](a1 + 8);

  JUMPOUT(0x245D78470);
}

void sub_245A64468(uint64_t a1)
{
  sub_245A64374(a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A64548(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v1 = 0;
    do
    {
      while (1)
      {
        v2 = *(*(a1 + 16) + 8 * v1);
        if (*(v2 + 23) < 0)
        {
          break;
        }

        *v2 = 0;
        *(v2 + 23) = 0;
        if (++v1 >= *(a1 + 24))
        {
          goto LABEL_6;
        }
      }

      **v2 = 0;
      *(v2 + 8) = 0;
      ++v1;
    }

    while (v1 < *(a1 + 24));
  }

LABEL_6:
  *(a1 + 24) = 0;
  if (*(a1 + 48) >= 1)
  {
    v3 = 0;
    do
    {
      while (1)
      {
        v4 = *(*(a1 + 40) + 8 * v3);
        if (*(v4 + 23) < 0)
        {
          break;
        }

        *v4 = 0;
        *(v4 + 23) = 0;
        if (++v3 >= *(a1 + 48))
        {
          goto LABEL_11;
        }
      }

      **v4 = 0;
      *(v4 + 8) = 0;
      ++v3;
    }

    while (v3 < *(a1 + 48));
  }

LABEL_11:
  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  *(result + 15) = 0;
  if (v6)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A64614(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  do
  {
    while (1)
    {
LABEL_2:
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v7 = result;
        *(this + 8) = result;
        if (!result)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = v7;
        *(this + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 & 7;
      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1 && v8 == 2)
      {
        while (1)
        {
          v9 = v5[7];
          v10 = v5[6];
          if (v10 >= v9)
          {
            if (v9 == v5[8])
            {
              result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 4));
              v9 = v5[7];
            }

            v5[7] = v9 + 1;
            v13 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
            v14 = *(v5 + 2);
            v15 = v5[6];
            v5[6] = v15 + 1;
            *(v14 + 8 * v15) = v13;
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }
          }

          else
          {
            v11 = *(v5 + 2);
            v5[6] = v10 + 1;
            v12 = *(v11 + 8 * v10);
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }
          }

          v16 = *(this + 1);
          if (v16 >= *(this + 2))
          {
            break;
          }

          v17 = *v16;
          if (v17 != 10)
          {
            if (v17 != 18)
            {
              goto LABEL_2;
            }

            goto LABEL_34;
          }

          *(this + 1) = v16 + 1;
        }
      }

      else
      {
LABEL_23:
        if (v8 == 4)
        {
          return 1;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, (v5 + 2), a4);
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v18 = v5[13];
      v19 = v5[12];
      if (v19 >= v18)
      {
        if (v18 == v5[14])
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 10));
          v18 = v5[13];
        }

        v5[13] = v18 + 1;
        v22 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v23 = *(v5 + 5);
        v24 = v5[12];
        v5[12] = v24 + 1;
        *(v23 + 8 * v24) = v22;
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v20 = *(v5 + 5);
        v5[12] = v19 + 1;
        v21 = *(v20 + 8 * v19);
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }
      }

      v16 = *(this + 1);
      v25 = *(this + 2);
      if (v16 >= v25 || *v16 != 18)
      {
        break;
      }

LABEL_34:
      *(this + 1) = v16 + 1;
    }
  }

  while (v16 != v25 || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_245A64850(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 16) + 8 * v4);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v4;
    }

    while (v4 < *(v3 + 24));
  }

  if (*(v3 + 48) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v3 + 40) + 8 * v6);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v6;
    }

    while (v6 < *(v3 + 48));
  }

  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return MEMORY[0x2821F9DB8](v9, a2);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A64920(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(a1 + 24) >= 1)
  {
    v5 = 0;
    result = a2;
    while (1)
    {
      v11 = *(*(a1 + 16) + 8 * v5);
      *result = 10;
      v12 = *(v11 + 23);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = *(v11 + 8);
        if (v12 <= 0x7F)
        {
LABEL_15:
          *(result + 1) = v12;
          v7 = result + 2;
          goto LABEL_4;
        }
      }

      else if (v12 <= 0x7F)
      {
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, result + 1, a3);
LABEL_4:
      v8 = *(v11 + 23);
      if (v8 >= 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = *v11;
      }

      if (v8 >= 0)
      {
        v10 = *(v11 + 23);
      }

      else
      {
        v10 = *(v11 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v9, v10, v7, a4);
      if (++v5 >= *(a1 + 24))
      {
        goto LABEL_17;
      }
    }
  }

  result = a2;
LABEL_17:
  if (*(a1 + 48) >= 1)
  {
    for (i = 0; i < *(a1 + 48); ++i)
    {
      v18 = *(*(a1 + 40) + 8 * i);
      *result = 18;
      v19 = *(v18 + 23);
      if ((v19 & 0x8000000000000000) != 0)
      {
        v19 = *(v18 + 8);
        if (v19 > 0x7F)
        {
LABEL_31:
          v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, result + 1, a3);
          goto LABEL_20;
        }
      }

      else if (v19 > 0x7F)
      {
        goto LABEL_31;
      }

      *(result + 1) = v19;
      v14 = result + 2;
LABEL_20:
      v15 = *(v18 + 23);
      if (v15 >= 0)
      {
        v16 = v18;
      }

      else
      {
        v16 = *v18;
      }

      if (v15 >= 0)
      {
        v17 = *(v18 + 23);
      }

      else
      {
        v17 = *(v18 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v16, v17, v14, a4);
    }
  }

  v22 = *(a1 + 8);
  v21 = (a1 + 8);
  v20 = v22;
  if (v22 && *v20 != v20[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, result, a3);
  }

  return result;
}

uint64_t sub_245A64AAC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 24);
    do
    {
      v10 = *(*(a1 + 16) + 8 * v4);
      v7 = *(v10 + 23);
      v9 = v7;
      v8 = *(v10 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v11 = *(v10 + 23);
      }

      else
      {
        v11 = v8;
      }

      if (v11 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v7 = *(v10 + 23);
        v8 = *(v10 + 8);
        v3 = *(a1 + 24);
        v9 = *(v10 + 23);
      }

      else
      {
        v6 = 1;
      }

      if (v9 < 0)
      {
        v7 = v8;
      }

      v5 += v6 + v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v12 = *(a1 + 48);
  v13 = (v12 + v5);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v17 = *(*(a1 + 40) + 8 * i);
      v16 = *(v17 + 23);
      v18 = v16;
      v19 = *(v17 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = v19;
      }

      if (v20 < 0x80)
      {
        v15 = 1;
      }

      else
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
        v16 = *(v17 + 23);
        v19 = *(v17 + 8);
        v12 = *(a1 + 48);
        v18 = *(v17 + 23);
      }

      if (v18 < 0)
      {
        v16 = v19;
      }

      v13 = (v15 + v13 + v16);
    }
  }

  v21 = *(a1 + 8);
  if (v21 && *v21 != v21[1])
  {
    v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v13;
  }

  *(a1 + 64) = v13;
  return v13;
}

uint64_t sub_245A64BF0(unsigned int *a1, unsigned int *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F918, 0);
  if (v5)
  {
    return sub_245A64140(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A64CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A64CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A64CF8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_245A64D8C()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4B3AC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B5B8;
}

void sub_245A64E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A64E30(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 44);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 44);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 44) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_28144B898 + 16);
    }

    sub_245A64140(v5, v6);
    v4 = *(a2 + 44);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v10;
    if ((*(a2 + 44) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_13;
  }

  v9 = *(a2 + 24);
  *(a1 + 44) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v4 & 8) != 0)
  {
LABEL_13:
    v7 = *(a2 + 36);
    *(a1 + 44) |= 8u;
    *(a1 + 36) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A6500C(void *a1)
{
  *a1 = &unk_28589EDF8;
  if (qword_28144B898 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A650A0(void *a1)
{
  *a1 = &unk_28589EDF8;
  if (qword_28144B898 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A651F4(uint64_t a1)
{
  if (*(a1 + 44))
  {
    if (*(a1 + 44))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 24) >= 1)
        {
          v3 = 0;
          do
          {
            while (1)
            {
              v4 = *(*(v2 + 16) + 8 * v3);
              if (*(v4 + 23) < 0)
              {
                break;
              }

              *v4 = 0;
              *(v4 + 23) = 0;
              if (++v3 >= *(v2 + 24))
              {
                goto LABEL_9;
              }
            }

            **v4 = 0;
            *(v4 + 8) = 0;
            ++v3;
          }

          while (v3 < *(v2 + 24));
        }

LABEL_9:
        *(v2 + 24) = 0;
        if (*(v2 + 48) >= 1)
        {
          v5 = 0;
          do
          {
            while (1)
            {
              v6 = *(*(v2 + 40) + 8 * v5);
              if (*(v6 + 23) < 0)
              {
                break;
              }

              *v6 = 0;
              *(v6 + 23) = 0;
              if (++v5 >= *(v2 + 48))
              {
                goto LABEL_14;
              }
            }

            **v6 = 0;
            *(v6 + 8) = 0;
            ++v5;
          }

          while (v5 < *(v2 + 48));
        }

LABEL_14:
        v8 = *(v2 + 8);
        v7 = (v2 + 8);
        *(v7 + 10) = 0;
        *(v7 + 15) = 0;
        if (v8)
        {
          v9 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
          a1 = v9;
        }

        v1 = vars8;
      }
    }

    *(a1 + 24) = 0x4049000000000000;
    *(a1 + 32) = 1;
    *(a1 + 36) = 307200;
  }

  v11 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A65334(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v10 = *(this + 2);
            v31[0] = 0;
            if (v14 >= v10)
            {
              goto LABEL_43;
            }

            goto LABEL_41;
          }

LABEL_24:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v8 != 4 || (TagFallback & 7) != 0)
          {
            goto LABEL_24;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10)
          {
            goto LABEL_51;
          }

LABEL_48:
          v27 = *v11;
          if (v27 < 0)
          {
            goto LABEL_51;
          }

          *(a1 + 36) = v27;
          v28 = v11 + 1;
          *(this + 1) = v28;
          *(a1 + 44) |= 8u;
          if (v28 == v10)
          {
LABEL_53:
            if (*(this + 11) || *(this + 6) == *(this + 10))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }

      if (v8 == 1)
      {
        break;
      }

      if (v8 != 2 || v9 != 1)
      {
        goto LABEL_24;
      }

      *v31 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      *(a1 + 24) = *v31;
      *(a1 + 44) |= 2u;
      v23 = *(this + 1);
      v10 = *(this + 2);
      if (v23 < v10 && *v23 == 24)
      {
        v14 = v23 + 1;
        *(this + 1) = v14;
        v31[0] = 0;
        if (v14 >= v10)
        {
          goto LABEL_43;
        }

LABEL_41:
        v24 = *v14;
        if ((v24 & 0x80000000) != 0)
        {
LABEL_43:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31);
          if (!result)
          {
            return result;
          }

          v24 = v31[0];
          v25 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_45;
        }

        v25 = v14 + 1;
        *(this + 1) = v25;
LABEL_45:
        *(a1 + 32) = v24 != 0;
        *(a1 + 44) |= 4u;
        if (v25 < v10 && *v25 == 32)
        {
          v11 = v25 + 1;
          *(this + 1) = v11;
          if (v11 < v10)
          {
            goto LABEL_48;
          }

LABEL_51:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v29 = *(this + 2);
          *(a1 + 44) |= 8u;
          if (v30 == v29)
          {
            goto LABEL_53;
          }
        }
      }
    }

    if (v9 != 2)
    {
      goto LABEL_24;
    }

    *(a1 + 44) |= 1u;
    v12 = *(a1 + 16);
    if (!v12)
    {
      operator new();
    }

    v31[0] = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31))
      {
        return 0;
      }
    }

    else
    {
      v31[0] = *v13;
      *(this + 1) = v13 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_245A64614(v12, this, v17, v18) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v19 = *(this + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(this + 14) = v21;
    }

    v22 = *(this + 1);
    if (v22 < *(this + 2) && *v22 == 17)
    {
      *(this + 1) = v22 + 1;
      *v31 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_38;
    }
  }
}

uint64_t sub_245A656FC(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    if (*(result + 16))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 44);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = *(qword_28144B898 + 16);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 44);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 32), a2, a4);
  if ((*(v5 + 44) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
  v11 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_14:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

_BYTE *sub_245A657F8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 11);
  if (v5)
  {
    v10 = *(this + 2);
    if (v10)
    {
      *a2 = 10;
      v11 = (a2 + 1);
      v12 = *(v10 + 64);
      if (v12 <= 0x7F)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = *(qword_28144B898 + 16);
      *a2 = 10;
      v11 = (a2 + 1);
      v12 = *(v10 + 64);
      if (v12 <= 0x7F)
      {
LABEL_12:
        a2[1] = v12;
        a2 = sub_245A64920(v10, (a2 + 2), a3, a4);
        v5 = *(this + 11);
        if ((v5 & 2) != 0)
        {
          goto LABEL_16;
        }

LABEL_3:
        if ((v5 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_17;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
    a2 = sub_245A64920(v10, v13, v14, v15);
    v5 = *(this + 11);
    if ((v5 & 2) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  v16 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v16;
  a2 += 9;
  v5 = *(this + 11);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v18 = *(this + 9);
    *a2 = 32;
    if (v18 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, (a2 + 1), a3);
      v20 = *(this + 1);
      v7 = (this + 8);
      v6 = v20;
      if (!v20)
      {
        return a2;
      }
    }

    else
    {
      a2[1] = v18;
      a2 += 2;
      v19 = *(this + 1);
      v7 = (this + 8);
      v6 = v19;
      if (!v19)
      {
        return a2;
      }
    }

    goto LABEL_6;
  }

LABEL_17:
  v17 = *(this + 32);
  *a2 = 24;
  a2[1] = v17;
  a2 += 2;
  if ((*(this + 11) & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  v8 = *(this + 1);
  v7 = (this + 8);
  v6 = v8;
  if (!v8)
  {
    return a2;
  }

LABEL_6:
  if (*v6 == v6[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, a2, a3);
}