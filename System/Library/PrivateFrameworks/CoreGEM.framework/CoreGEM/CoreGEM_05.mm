uint64_t sub_2453D419C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_23;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453BD76C();
      v5 = *(qword_2813CE940 + 8);
    }

    v6 = sub_2453D3244(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = (v3 + v7 + v8 + 1);
    v2 = *(a1 + 32);
    goto LABEL_16;
  }

  v4 = *(a1 + 24);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(a1 + 32);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v9 = *(a1 + 16);
    if (!v9)
    {
      sub_2453BD76C();
      v9 = *(qword_2813CE940 + 16);
    }

    v10 = sub_2453D38D8(v9);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v3 = (v3 + v11 + v12 + 1);
  }

LABEL_23:
  *(a1 + 28) = v3;
  return v3;
}

double sub_2453D42A4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854B90, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D3A08(a1, lpsrc);
}

double sub_2453D4360(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v6 = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 28) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_2453D440C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D4424(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854288;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D4480(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D4424(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D4504(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_2453D4518(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v4 + 1;
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

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 28) |= 1u;
      if (v10 < v7 && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_21:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v12;
        *(a1 + 28) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
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

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453D4684(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v7, a3);
  }

  return result;
}

uint64_t sub_2453D46F0(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 28);
  if (v2)
  {
    if (*(a1 + 28))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v2 = *(a1 + 28);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
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

  *(a1 + 24) = result;
  return result;
}

double sub_2453D474C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854BA8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D4360(a1, lpsrc);
}

double sub_2453D4808(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 40))
  {
    v6 = *(a2 + 8);
    *(a1 + 40) |= 1u;
    *(a1 + 8) = v6;
    v5 = *(a2 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v8 = *(a2 + 32);
      if (v8 >= 6)
      {
        __assert_rtn("set_leap_second_deprecated", "CLPGnssMeasApi.pb.h", 11972, "::CoreGem::CLP::LogEntry::PrivateData::GlonassLeapSecondDeprecated_IsValid(value)");
      }

      *(a1 + 40) |= 4u;
      *(a1 + 32) = v8;
      v5 = *(a2 + 40);
      if ((v5 & 8) == 0)
      {
LABEL_8:
        if ((v5 & 0x10) == 0)
        {
          return result;
        }

        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 12);
  *(a1 + 40) |= 2u;
  *(a1 + 12) = v7;
  v5 = *(a2 + 40);
  if ((v5 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  *(a1 + 40) |= 8u;
  v9 = *(a1 + 16);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    sub_2453BD76C();
    v10 = *(qword_2813CE950 + 16);
  }

  result = sub_2453D4360(v9, v10);
  if ((*(a2 + 40) & 0x10) != 0)
  {
LABEL_19:
    *(a1 + 40) |= 0x10u;
    v11 = *(a1 + 24);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 24);
    if (!v12)
    {
      sub_2453BD76C();
      v12 = *(qword_2813CE950 + 24);
    }

    return sub_2453D4360(v11, v12);
  }

  return result;
}

void sub_2453D4A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D4A24(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854300;
  sub_2453BD76C();
  if (qword_2813CE950 != a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D4AE8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D4A24(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D4B78(uint64_t result)
{
  LOBYTE(v1) = *(result + 40);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 32) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 16);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(result + 40);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v3 = *(result + 24);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
      }
    }
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_2453D4BCC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(this + 1);
          if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
            *(this + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
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

            v9 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(this + 1);
          v8 = *(this + 2);
          if (v11 >= v8 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v13 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v12;
            v13 = v11 + 1;
            *(this + 1) = v13;
          }

          *(a1 + 40) |= 1u;
          if (v13 < v8 && *v13 == 16)
          {
            v9 = v13 + 1;
            *(this + 1) = v9;
LABEL_32:
            if (v9 >= v8 || (v15 = *v9, v15 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
              if (!result)
              {
                return result;
              }

              v16 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 12) = v15;
              v16 = v9 + 1;
              *(this + 1) = v16;
            }

            *(a1 + 40) |= 2u;
            if (v16 < v8 && *v16 == 24)
            {
              v10 = v16 + 1;
              *(this + 1) = v10;
              goto LABEL_40;
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(this + 1);
        v8 = *(this + 2);
LABEL_40:
        v33 = 0;
        if (v10 >= v8 || (v17 = *v10, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
          if (!result)
          {
            return result;
          }

          v17 = v33;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v17 <= 5)
        {
          *(a1 + 40) |= 4u;
          *(a1 + 32) = v17;
        }

        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 34)
        {
          *(this + 1) = v18 + 1;
LABEL_50:
          *(a1 + 40) |= 8u;
          v19 = *(a1 + 16);
          if (!v19)
          {
            operator new();
          }

          v34 = 0;
          v20 = *(this + 1);
          if (v20 >= *(this + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
            {
              return 0;
            }
          }

          else
          {
            v34 = *v20;
            *(this + 1) = v20 + 1;
          }

          v21 = *(this + 14);
          v22 = *(this + 15);
          *(this + 14) = v21 + 1;
          if (v21 >= v22)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453D4518(v19, this) || *(this + 36) != 1)
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

          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 42)
          {
            *(this + 1) = v26 + 1;
            goto LABEL_64;
          }
        }
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 == 2)
      {
        goto LABEL_50;
      }

LABEL_21:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != 5 || v7 != 2)
    {
      goto LABEL_21;
    }

LABEL_64:
    *(a1 + 40) |= 0x10u;
    v27 = *(a1 + 24);
    if (!v27)
    {
      operator new();
    }

    v35 = 0;
    v28 = *(this + 1);
    if (v28 >= *(this + 2) || *v28 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
      {
        return 0;
      }
    }

    else
    {
      v35 = *v28;
      *(this + 1) = v28 + 1;
    }

    v29 = *(this + 14);
    v30 = *(this + 15);
    *(this + 14) = v29 + 1;
    if (v29 >= v30)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453D4518(v27, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v31 = *(this + 14);
    v24 = __OFSUB__(v31, 1);
    v32 = v31 - 1;
    if (v32 < 0 == v24)
    {
      *(this + 14) = v32;
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

uint64_t sub_2453D5018(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 40);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_10:
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453BD76C();
    v7 = *(qword_2813CE950 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  if ((*(v5 + 40) & 0x10) != 0)
  {
LABEL_13:
    v8 = *(v5 + 24);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CE950 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  }

  return result;
}

uint64_t sub_2453D5104(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_36;
  }

  if (*(a1 + 40))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 40);
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 40);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 32);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 40);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE950 + 16);
  }

  v10 = sub_2453D46F0(v9);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    v12 = 1;
  }

  v3 = (v3 + v11 + v12 + 1);
  if ((*(a1 + 40) & 0x10) != 0)
  {
LABEL_30:
    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_2453BD76C();
      v13 = *(qword_2813CE950 + 24);
    }

    v14 = sub_2453D46F0(v13);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v3 = (v3 + v15 + v16 + 1);
  }

LABEL_36:
  *(a1 + 36) = v3;
  return v3;
}

double sub_2453D5274(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854BC0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D4808(a1, lpsrc);
}

double sub_2453D5330(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v6 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 36);
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

    result = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 36) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_2453D5404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D541C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854378;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D5478(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D541C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D5504(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_2453D551C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 1)
        {
          goto LABEL_28;
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

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 36) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_24:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v14;
        *(a1 + 36) |= 2u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 25)
        {
          *(this + 1) = v13 + 1;
LABEL_28:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v14;
          *(a1 + 36) |= 4u;
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

    if (v7 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453D56E4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t sub_2453D5770(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 36);
  if (v2)
  {
    if (*(a1 + 36))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v2 = *(a1 + 36);
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

  *(a1 + 32) = result;
  return result;
}

double sub_2453D57D8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854BD8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D5330(a1, lpsrc);
}

double sub_2453D5894(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 56))
  {
    v6 = *(a2 + 48);
    *(a1 + 56) |= 1u;
    *(a1 + 48) = v6;
    v5 = *(a2 + 56);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 56) |= 2u;
  v7 = *(a1 + 8);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE960 + 8);
  }

  sub_2453D2C1C(v7, v8);
  v5 = *(a2 + 56);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    *(a1 + 56) |= 8u;
    v11 = *(a1 + 24);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 24);
    if (!v12)
    {
      sub_2453BD76C();
      v12 = *(qword_2813CE960 + 24);
    }

    result = sub_2453D5330(v11, v12);
    v5 = *(a2 + 56);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_17:
  *(a1 + 56) |= 4u;
  v9 = *(a1 + 16);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    sub_2453BD76C();
    v10 = *(qword_2813CE960 + 16);
  }

  result = sub_2453D5330(v9, v10);
  v5 = *(a2 + 56);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  *(a1 + 56) |= 0x10u;
  v13 = *(a1 + 32);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 32);
  if (!v14)
  {
    sub_2453BD76C();
    v14 = *(qword_2813CE960 + 32);
  }

  result = sub_2453D5330(v13, v14);
  if ((*(a2 + 56) & 0x20) != 0)
  {
LABEL_32:
    *(a1 + 56) |= 0x20u;
    v15 = *(a1 + 40);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 40);
    if (!v16)
    {
      sub_2453BD76C();
      v16 = *(qword_2813CE960 + 40);
    }

    return sub_2453D5330(v15, v16);
  }

  return result;
}

void sub_2453D5BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D5BE8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858543F0;
  sub_2453BD76C();
  if (qword_2813CE960 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(a1 + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D5D30(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D5BE8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D5DC4(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 56);
  if (v2)
  {
    *(result + 48) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453D2EAC(result);
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(v1 + 32);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v6 = *(v1 + 40);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
      }
    }
  }

  *(v1 + 56) = 0;
  return result;
}

uint64_t sub_2453D5E94(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(this + 1);
          if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
            *(this + 1) = v4 + 1;
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
              goto LABEL_62;
            }

            goto LABEL_26;
          }

          if (v6 == 5)
          {
            if (v7 != 2)
            {
              goto LABEL_26;
            }

LABEL_76:
            *(a1 + 56) |= 0x10u;
            v36 = *(a1 + 32);
            if (!v36)
            {
              operator new();
            }

            v49 = 0;
            v37 = *(this + 1);
            if (v37 >= *(this + 2) || *v37 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v37;
              *(this + 1) = v37 + 1;
            }

            v38 = *(this + 14);
            v39 = *(this + 15);
            *(this + 14) = v38 + 1;
            if (v38 >= v39)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453D551C(v36, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v40 = *(this + 14);
            v19 = __OFSUB__(v40, 1);
            v41 = v40 - 1;
            if (v41 < 0 == v19)
            {
              *(this + 14) = v41;
            }

            v42 = *(this + 1);
            if (v42 < *(this + 2) && *v42 == 50)
            {
              *(this + 1) = v42 + 1;
              goto LABEL_90;
            }
          }

          else
          {
            if (v6 != 6 || v7 != 2)
            {
              goto LABEL_26;
            }

LABEL_90:
            *(a1 + 56) |= 0x20u;
            v43 = *(a1 + 40);
            if (!v43)
            {
              operator new();
            }

            v49 = 0;
            v44 = *(this + 1);
            if (v44 >= *(this + 2) || *v44 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v44;
              *(this + 1) = v44 + 1;
            }

            v45 = *(this + 14);
            v46 = *(this + 15);
            *(this + 14) = v45 + 1;
            if (v45 >= v46)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453D551C(v43, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v47 = *(this + 14);
            v19 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v19)
            {
              *(this + 14) = v48;
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

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v9 = *(this + 1);
        v8 = *(this + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v11 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v10;
          v11 = v9 + 1;
          *(this + 1) = v11;
        }

        v12 = *(a1 + 56) | 1;
        *(a1 + 56) = v12;
        if (v11 < v8 && *v11 == 18)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_34;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_26;
      }

      v12 = *(a1 + 56);
LABEL_34:
      *(a1 + 56) = v12 | 2;
      v14 = *(a1 + 8);
      if (!v14)
      {
        operator new();
      }

      v49 = 0;
      v15 = *(this + 1);
      if (v15 >= *(this + 2) || *v15 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
        {
          return 0;
        }
      }

      else
      {
        v49 = *v15;
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
      if (!sub_2453D2EE0(v14, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v18 = *(this + 14);
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v20 < 0 == v19)
      {
        *(this + 14) = v20;
      }

      v21 = *(this + 1);
      if (v21 < *(this + 2) && *v21 == 26)
      {
        *(this + 1) = v21 + 1;
LABEL_48:
        *(a1 + 56) |= 4u;
        v22 = *(a1 + 16);
        if (!v22)
        {
          operator new();
        }

        v49 = 0;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
          {
            return 0;
          }
        }

        else
        {
          v49 = *v23;
          *(this + 1) = v23 + 1;
        }

        v24 = *(this + 14);
        v25 = *(this + 15);
        *(this + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453D551C(v22, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v26 = *(this + 14);
        v19 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v27 < 0 == v19)
        {
          *(this + 14) = v27;
        }

        v28 = *(this + 1);
        if (v28 < *(this + 2) && *v28 == 34)
        {
          *(this + 1) = v28 + 1;
LABEL_62:
          *(a1 + 56) |= 8u;
          v29 = *(a1 + 24);
          if (!v29)
          {
            operator new();
          }

          v49 = 0;
          v30 = *(this + 1);
          if (v30 >= *(this + 2) || *v30 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
            {
              return 0;
            }
          }

          else
          {
            v49 = *v30;
            *(this + 1) = v30 + 1;
          }

          v31 = *(this + 14);
          v32 = *(this + 15);
          *(this + 14) = v31 + 1;
          if (v31 >= v32)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453D551C(v29, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v33 = *(this + 14);
          v19 = __OFSUB__(v33, 1);
          v34 = v33 - 1;
          if (v34 < 0 == v19)
          {
            *(this + 14) = v34;
          }

          v35 = *(this + 1);
          if (v35 < *(this + 2) && *v35 == 42)
          {
            *(this + 1) = v35 + 1;
            goto LABEL_76;
          }
        }
      }
    }

    if (v6 == 3 && v7 == 2)
    {
      goto LABEL_48;
    }

LABEL_26:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453D654C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 48), a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    sub_2453BD76C();
    v7 = *(qword_2813CE960 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE960 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE960 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(v5 + 32);
  if (!v10)
  {
    sub_2453BD76C();
    v10 = *(qword_2813CE960 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  if ((*(v5 + 56) & 0x20) != 0)
  {
LABEL_21:
    v11 = *(v5 + 40);
    if (!v11)
    {
      sub_2453BD76C();
      v11 = *(qword_2813CE960 + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  }

  return result;
}

uint64_t sub_2453D6690(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 56);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_45;
  }

  if (*(a1 + 56))
  {
    v4 = *(a1 + 48);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 56);
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 56) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453BD76C();
    v5 = *(qword_2813CE960 + 8);
  }

  v6 = sub_2453D3244(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v3 = (v3 + v7 + v8 + 1);
  v2 = *(a1 + 56);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v9 = *(a1 + 16);
    if (!v9)
    {
      sub_2453BD76C();
      v9 = *(qword_2813CE960 + 16);
    }

    v10 = sub_2453D5770(v9);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v3 = (v3 + v11 + v12 + 1);
    v2 = *(a1 + 56);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    sub_2453BD76C();
    v13 = *(qword_2813CE960 + 24);
  }

  v14 = sub_2453D5770(v13);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
  }

  else
  {
    v16 = 1;
  }

  v3 = (v3 + v15 + v16 + 1);
  v2 = *(a1 + 56);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_33:
  v17 = *(a1 + 32);
  if (!v17)
  {
    sub_2453BD76C();
    v17 = *(qword_2813CE960 + 32);
  }

  v18 = sub_2453D5770(v17);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v3 = (v3 + v19 + v20 + 1);
  if ((*(a1 + 56) & 0x20) != 0)
  {
LABEL_39:
    v21 = *(a1 + 40);
    if (!v21)
    {
      sub_2453BD76C();
      v21 = *(qword_2813CE960 + 40);
    }

    v22 = sub_2453D5770(v21);
    v23 = v22;
    if (v22 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    }

    else
    {
      v24 = 1;
    }

    v3 = (v3 + v23 + v24 + 1);
  }

LABEL_45:
  *(a1 + 52) = v3;
  return v3;
}

double sub_2453D688C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854BF0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D5894(a1, lpsrc);
}

double sub_2453D6948(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(a1 + 40) |= 2u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CE968 + 8);
    }

    sub_2453D2C1C(v7, v8);
    v5 = *(a2 + 40);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v6 = *(a2 + 32);
  *(a1 + 40) |= 1u;
  *(a1 + 32) = v6;
  v5 = *(a2 + 40);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(a1 + 40) |= 4u;
  v9 = *(a1 + 16);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    sub_2453BD76C();
    v10 = *(qword_2813CE968 + 16);
  }

  result = sub_2453D5330(v9, v10);
  if ((*(a2 + 40) & 8) != 0)
  {
LABEL_20:
    *(a1 + 40) |= 8u;
    v11 = *(a1 + 24);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 24);
    if (!v12)
    {
      sub_2453BD76C();
      v12 = *(qword_2813CE968 + 24);
    }

    return sub_2453D5330(v11, v12);
  }

  return result;
}

void sub_2453D6B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D6B8C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854468;
  sub_2453BD76C();
  if (qword_2813CE968 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D6C7C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D6B8C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D6D0C(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 40);
  if (v2)
  {
    *(result + 32) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453D2EAC(result);
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
      }
    }
  }

  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_2453D6D94(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(this + 1);
          if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
            *(this + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v6 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v10 = *(this + 1);
            v9 = *(this + 2);
            if (v10 >= v9 || (v11 = *v10, v11 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v12 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v11;
              v12 = v10 + 1;
              *(this + 1) = v12;
            }

            v8 = *(a1 + 40) | 1;
            *(a1 + 40) = v8;
            if (v12 < v9 && *v12 == 18)
            {
              *(this + 1) = v12 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v6 != 2 || v7 != 2)
            {
              goto LABEL_20;
            }

            v8 = *(a1 + 40);
LABEL_28:
            *(a1 + 40) = v8 | 2;
            v14 = *(a1 + 8);
            if (!v14)
            {
              operator new();
            }

            v35 = 0;
            v15 = *(this + 1);
            if (v15 >= *(this + 2) || *v15 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
              {
                return 0;
              }
            }

            else
            {
              v35 = *v15;
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
            if (!sub_2453D2EE0(v14, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v18 = *(this + 14);
            v19 = __OFSUB__(v18, 1);
            v20 = v18 - 1;
            if (v20 < 0 == v19)
            {
              *(this + 14) = v20;
            }

            v21 = *(this + 1);
            if (v21 < *(this + 2) && *v21 == 26)
            {
              *(this + 1) = v21 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(a1 + 40) |= 4u;
        v22 = *(a1 + 16);
        if (!v22)
        {
          operator new();
        }

        v36 = 0;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
          {
            return 0;
          }
        }

        else
        {
          v36 = *v23;
          *(this + 1) = v23 + 1;
        }

        v24 = *(this + 14);
        v25 = *(this + 15);
        *(this + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453D551C(v22, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v26 = *(this + 14);
        v19 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v27 < 0 == v19)
        {
          *(this + 14) = v27;
        }

        v28 = *(this + 1);
        if (v28 < *(this + 2) && *v28 == 34)
        {
          *(this + 1) = v28 + 1;
          goto LABEL_56;
        }
      }

      if (v6 != 4 || v7 != 2)
      {
        break;
      }

LABEL_56:
      *(a1 + 40) |= 8u;
      v29 = *(a1 + 24);
      if (!v29)
      {
        operator new();
      }

      v37 = 0;
      v30 = *(this + 1);
      if (v30 >= *(this + 2) || *v30 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
        {
          return 0;
        }
      }

      else
      {
        v37 = *v30;
        *(this + 1) = v30 + 1;
      }

      v31 = *(this + 14);
      v32 = *(this + 15);
      *(this + 14) = v31 + 1;
      if (v31 >= v32)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2453D551C(v29, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v33 = *(this + 14);
      v19 = __OFSUB__(v33, 1);
      v34 = v33 - 1;
      if (v34 < 0 == v19)
      {
        *(this + 14) = v34;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453D721C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 32), a2, a4);
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    sub_2453BD76C();
    v7 = *(qword_2813CE968 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE968 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 24);
    if (!v9)
    {
      sub_2453BD76C();
      v9 = *(qword_2813CE968 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return result;
}

uint64_t sub_2453D7300(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_31;
  }

  if (*(a1 + 40))
  {
    v4 = *(a1 + 32);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 40);
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453BD76C();
    v5 = *(qword_2813CE968 + 8);
  }

  v6 = sub_2453D3244(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v3 = (v3 + v7 + v8 + 1);
  v2 = *(a1 + 40);
LABEL_16:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE968 + 16);
  }

  v10 = sub_2453D5770(v9);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    v12 = 1;
  }

  v3 = (v3 + v11 + v12 + 1);
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_25:
    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_2453BD76C();
      v13 = *(qword_2813CE968 + 24);
    }

    v14 = sub_2453D5770(v13);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v3 = (v3 + v15 + v16 + 1);
  }

LABEL_31:
  *(a1 + 36) = v3;
  return v3;
}

double sub_2453D745C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854C08, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D6948(a1, lpsrc);
}

void sub_2453D7518(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      *(a1 + 24) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        sub_2453BD76C();
        v6 = *(qword_2813CE970 + 8);
      }

      sub_2453D5330(v5, v6);
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = v7;
    }
  }
}

void sub_2453D7634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D764C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858544E0;
  sub_2453BD76C();
  if (qword_2813CE970 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D76E4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D764C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D776C(uint64_t result)
{
  if (*(result + 24))
  {
    if (*(result + 24))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453D77A0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_28;
      }

LABEL_15:
      if (v6 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v6 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 24) |= 1u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v20 = 0;
    v8 = *(this + 1);
    if (v8 >= *(this + 2) || *v8 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v8;
      *(this + 1) = v8 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453D551C(v7, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v13 = *(this + 14);
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (v15 < 0 == v14)
    {
      *(this + 14) = v15;
    }

    v16 = *(this + 1);
    v9 = *(this + 2);
    if (v16 < v9 && *v16 == 16)
    {
      v10 = v16 + 1;
      *(this + 1) = v10;
LABEL_28:
      if (v10 >= v9 || (v17 = *v10, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v17;
        v18 = v10 + 1;
        *(this + 1) = v18;
      }

      *(a1 + 24) |= 2u;
      if (v18 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t sub_2453D79EC(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE970 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_2453D7A6C(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    v2 = 0;
    goto LABEL_16;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = 0;
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_2453BD76C();
    v3 = *(qword_2813CE970 + 8);
  }

  v4 = sub_2453D5770(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = (v5 + v6 + 1);
  if ((*(a1 + 24) & 2) != 0)
  {
LABEL_12:
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v2 = (v8 + v2);
  }

LABEL_16:
  *(a1 + 20) = v2;
  return v2;
}

void sub_2453D7B1C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854C20, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453D7518(a1, lpsrc);
}

void sub_2453D7BD8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    *(a1 + 52) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      sub_2453BD76C();
      v6 = *(qword_2813CE978 + 8);
    }

    sub_2453D3A08(v5, v6);
    v4 = *(a2 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_20:
      *(a1 + 52) |= 4u;
      v9 = *(a1 + 24);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 24);
      if (!v10)
      {
        sub_2453BD76C();
        v10 = *(qword_2813CE978 + 24);
      }

      sub_2453D5894(v9, v10);
      v4 = *(a2 + 52);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_30;
      }

      goto LABEL_25;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 52) |= 2u;
  v7 = *(a1 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE978 + 16);
  }

  sub_2453D4808(v7, v8);
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  *(a1 + 52) |= 8u;
  v11 = *(a1 + 32);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 32);
  if (!v12)
  {
    sub_2453BD76C();
    v12 = *(qword_2813CE978 + 32);
  }

  sub_2453D6948(v11, v12);
  if ((*(a2 + 52) & 0x10) != 0)
  {
LABEL_30:
    *(a1 + 52) |= 0x10u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 40);
    if (!v14)
    {
      sub_2453BD76C();
      v14 = *(qword_2813CE978 + 40);
    }

    sub_2453D7518(v13, v14);
  }
}

void sub_2453D7F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D7F1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854558;
  sub_2453BD76C();
  if (qword_2813CE978 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(a1 + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D8064(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D7F1C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D80F4(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 52);
  if (v2)
  {
    if (*(result + 52))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453D3D14(result);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = sub_2453D4B78(result);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_2453D5DC4(result);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_2453D6D0C(result);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_2453D776C(result);
      }
    }
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_2453D8180(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v4 + 1;
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
          *(a1 + 52) |= 8u;
          v30 = *(a1 + 32);
          if (!v30)
          {
            operator new();
          }

          v44 = 0;
          v31 = *(this + 1);
          if (v31 >= *(this + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v31;
            *(this + 1) = v31 + 1;
          }

          v32 = *(this + 14);
          v33 = *(this + 15);
          *(this + 14) = v32 + 1;
          if (v32 >= v33)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453D6D94(v30, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v34 = *(this + 14);
          v13 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v13)
          {
            *(this + 14) = v35;
          }

          v36 = *(this + 1);
          if (v36 < *(this + 2) && *v36 == 42)
          {
            *(this + 1) = v36 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_80:
          *(a1 + 52) |= 0x10u;
          v37 = *(a1 + 40);
          if (!v37)
          {
            operator new();
          }

          v44 = 0;
          v38 = *(this + 1);
          if (v38 >= *(this + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v38;
            *(this + 1) = v38 + 1;
          }

          v39 = *(this + 14);
          v40 = *(this + 15);
          *(this + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453D77A0(v37, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v41 = *(this + 14);
          v13 = __OFSUB__(v41, 1);
          v42 = v41 - 1;
          if (v42 < 0 == v13)
          {
            *(this + 14) = v42;
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

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_21;
      }

      *(a1 + 52) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v44 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2453D3D7C(v8, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v12 = *(this + 14);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v14 < 0 == v13)
      {
        *(this + 14) = v14;
      }

      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 18)
      {
        *(this + 1) = v15 + 1;
LABEL_38:
        *(a1 + 52) |= 2u;
        v16 = *(a1 + 16);
        if (!v16)
        {
          operator new();
        }

        v44 = 0;
        v17 = *(this + 1);
        if (v17 >= *(this + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
          {
            return 0;
          }
        }

        else
        {
          v44 = *v17;
          *(this + 1) = v17 + 1;
        }

        v18 = *(this + 14);
        v19 = *(this + 15);
        *(this + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453D4BCC(v16, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v20 = *(this + 14);
        v13 = __OFSUB__(v20, 1);
        v21 = v20 - 1;
        if (v21 < 0 == v13)
        {
          *(this + 14) = v21;
        }

        v22 = *(this + 1);
        if (v22 < *(this + 2) && *v22 == 26)
        {
          *(this + 1) = v22 + 1;
LABEL_52:
          *(a1 + 52) |= 4u;
          v23 = *(a1 + 24);
          if (!v23)
          {
            operator new();
          }

          v44 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453D5E94(v23, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v27 = *(this + 14);
          v13 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v13)
          {
            *(this + 14) = v28;
          }

          v29 = *(this + 1);
          if (v29 < *(this + 2) && *v29 == 34)
          {
            *(this + 1) = v29 + 1;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453D881C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE978 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE978 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_2453BD76C();
    v9 = *(qword_2813CE978 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(v5 + 32);
  if (!v10)
  {
    sub_2453BD76C();
    v10 = *(qword_2813CE978 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(v5 + 40);
    if (!v11)
    {
      sub_2453BD76C();
      v11 = *(qword_2813CE978 + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  }

  return result;
}

uint64_t sub_2453D8944(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_40;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_2453BD76C();
    v4 = *(qword_2813CE978 + 8);
  }

  v5 = sub_2453D419C(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  v2 = *(a1 + 52);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CE978 + 16);
    }

    v9 = sub_2453D5104(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
    v2 = *(a1 + 52);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(a1 + 24);
    if (!v12)
    {
      sub_2453BD76C();
      v12 = *(qword_2813CE978 + 24);
    }

    v13 = sub_2453D6690(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 = (v3 + v14 + v15 + 1);
    v2 = *(a1 + 52);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(a1 + 32);
  if (!v16)
  {
    sub_2453BD76C();
    v16 = *(qword_2813CE978 + 32);
  }

  v17 = sub_2453D7300(v16);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v3 = (v3 + v18 + v19 + 1);
  if ((*(a1 + 52) & 0x10) != 0)
  {
LABEL_34:
    v20 = *(a1 + 40);
    if (!v20)
    {
      sub_2453BD76C();
      v20 = *(qword_2813CE978 + 40);
    }

    v21 = sub_2453D7A6C(v20);
    v22 = v21;
    if (v21 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    }

    else
    {
      v23 = 1;
    }

    v3 = (v3 + v22 + v23 + 1);
  }

LABEL_40:
  *(a1 + 48) = v3;
  return v3;
}

void sub_2453D8B10(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854C38, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453D7BD8(a1, lpsrc);
}

float sub_2453D8BCC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  v5 = *(a2 + 52);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v6 = *(a2 + 8);
    *(a1 + 52) |= 1u;
    *(a1 + 8) = v6;
    v5 = *(a2 + 52);
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

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 16);
  *(a1 + 52) |= 2u;
  *(a1 + 16) = result;
  v5 = *(a2 + 52);
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
  result = *(a2 + 20);
  *(a1 + 52) |= 4u;
  *(a1 + 20) = result;
  v5 = *(a2 + 52);
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
  result = *(a2 + 24);
  *(a1 + 52) |= 8u;
  *(a1 + 24) = result;
  v5 = *(a2 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    result = *(a2 + 32);
    *(a1 + 52) |= 0x20u;
    *(a1 + 32) = result;
    v5 = *(a2 + 52);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  result = *(a2 + 28);
  *(a1 + 52) |= 0x10u;
  *(a1 + 28) = result;
  v5 = *(a2 + 52);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  result = *(a2 + 36);
  *(a1 + 52) |= 0x40u;
  *(a1 + 36) = result;
  v5 = *(a2 + 52);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 40);
    *(a1 + 52) |= 0x80u;
    *(a1 + 40) = result;
    v5 = *(a2 + 52);
  }

LABEL_13:
  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 44);
    *(a1 + 52) |= 0x100u;
    *(a1 + 44) = result;
  }

  return result;
}

void sub_2453D8D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D8D78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858545D0;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D8DD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D8D78(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D8E64(uint64_t result)
{
  v1 = *(result + 52);
  if (v1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 44) = 0;
  }

  *(result + 52) = 0;
  return result;
}

uint64_t sub_2453D8E94(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v6 != 3)
          {
            if (v6 != 4 || v7 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }

          if (v7 != 5)
          {
            goto LABEL_37;
          }

LABEL_49:
          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v20;
          *(a1 + 52) |= 4u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 37)
          {
            *(this + 1) = v14 + 1;
LABEL_53:
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = v20;
            *(a1 + 52) |= 8u;
            v15 = *(this + 1);
            if (v15 < *(this + 2) && *v15 == 45)
            {
              *(this + 1) = v15 + 1;
LABEL_57:
              v20 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 28) = v20;
              *(a1 + 52) |= 0x10u;
              v16 = *(this + 1);
              if (v16 < *(this + 2) && *v16 == 53)
              {
                *(this + 1) = v16 + 1;
LABEL_61:
                v20 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 32) = v20;
                *(a1 + 52) |= 0x20u;
                v17 = *(this + 1);
                if (v17 < *(this + 2) && *v17 == 61)
                {
                  *(this + 1) = v17 + 1;
LABEL_65:
                  v20 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 36) = v20;
                  *(a1 + 52) |= 0x40u;
                  v18 = *(this + 1);
                  if (v18 < *(this + 2) && *v18 == 69)
                  {
                    *(this + 1) = v18 + 1;
                    goto LABEL_69;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v6 != 1)
          {
            if (v6 != 2 || v7 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v9 = *(this + 1);
          v8 = *(this + 2);
          if (v9 >= v8 || (v10 = *v9, v10 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v11 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v10;
            v11 = v9 + 1;
            *(this + 1) = v11;
          }

          *(a1 + 52) |= 1u;
          if (v11 < v8 && *v11 == 21)
          {
            *(this + 1) = v11 + 1;
LABEL_45:
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v20;
            *(a1 + 52) |= 2u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 29)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_49;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v6 == 7)
      {
        if (v7 != 5)
        {
          goto LABEL_37;
        }

        goto LABEL_65;
      }

      if (v6 == 8)
      {
        if (v7 != 5)
        {
          goto LABEL_37;
        }

LABEL_69:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v20;
        *(a1 + 52) |= 0x80u;
        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 77)
        {
          *(this + 1) = v19 + 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (v6 != 9 || v7 != 5)
        {
          goto LABEL_37;
        }

LABEL_73:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 44) = v20;
        *(a1 + 52) |= 0x100u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5)
    {
      if (v7 != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }

    if (v6 == 6 && v7 == 5)
    {
      goto LABEL_61;
    }

LABEL_37:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453D929C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 28), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 40), a3);
    if ((*(v5 + 52) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 36), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, v7, a3);
}

uint64_t sub_2453D93D0(uint64_t a1)
{
  v2 = *(a1 + 52);
  if (v2)
  {
    if (v2)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v2 = *(a1 + 52);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x80) != 0)
    {
      v3 += 5;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x100) != 0)
  {
    result = v3 + 5;
  }

  else
  {
    result = v3;
  }

  *(a1 + 48) = result;
  return result;
}

float sub_2453D9484(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854C50, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D8BCC(a1, lpsrc);
}

double sub_2453D9540(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 36);
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

    result = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 36) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_2453D9614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D962C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854648;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D9688(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D962C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D9714(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_2453D972C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 1)
      {
        goto LABEL_20;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v11;
      *(a1 + 36) |= 1u;
      v8 = *(this + 1);
      if (v8 < *(this + 2) && *v8 == 17)
      {
        *(this + 1) = v8 + 1;
LABEL_15:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v11;
        *(a1 + 36) |= 2u;
        v9 = *(this + 1);
        if (v9 < *(this + 2) && *v9 == 25)
        {
          *(this + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453D98E4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t sub_2453D9970(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 32) = v1;
  return v1;
}

double sub_2453D99A8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854C68, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D9540(a1, lpsrc);
}

double sub_2453D9A64(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      *(a1 + 36) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453BD76C();
        v7 = *(qword_2813CE990 + 8);
      }

      sub_2453BEF44(v6, v7);
      v5 = *(a2 + 36);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 16);
      if (v8 >= 0xD)
      {
        __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 13137, "::CoreGem::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

      *(a1 + 36) |= 2u;
      *(a1 + 16) = v8;
      v5 = *(a2 + 36);
    }

    if ((v5 & 4) != 0)
    {
      v9 = *(a2 + 20);
      if (v9 >= 4)
      {
        __assert_rtn("set_sv_reference_point", "CLPGnssMeasApi.pb.h", 13160, "::CoreGem::CLP::LogEntry::PrivateData::SvReferencePoint_IsValid(value)");
      }

      *(a1 + 36) |= 4u;
      *(a1 + 20) = v9;
      v5 = *(a2 + 36);
    }

    if ((v5 & 8) != 0)
    {
      *(a1 + 36) |= 8u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 24);
      if (!v11)
      {
        sub_2453BD76C();
        v11 = *(qword_2813CE990 + 24);
      }

      return sub_2453D9540(v10, v11);
    }
  }

  return result;
}

void sub_2453D9C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453D9C84(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858546C0;
  sub_2453BD76C();
  if (qword_2813CE990 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453D9D48(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453D9C84(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453D9DD4(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 36);
  if (v2)
  {
    if (*(result + 36))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453BF19C(result);
        v2 = *(v1 + 36);
      }
    }

    *(v1 + 16) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(v1 + 24);
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
  }

  *(v1 + 36) = 0;
  return result;
}

uint64_t sub_2453D9E38(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v6 == 1)
      {
        if (v7 != 2)
        {
          goto LABEL_22;
        }

        *(a1 + 36) |= 1u;
        v10 = *(a1 + 8);
        if (!v10)
        {
          operator new();
        }

        v31 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v11;
          *(this + 1) = v11 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BF1DC(v10, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v16 = *(this + 14);
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v18 < 0 == v17)
        {
          *(this + 14) = v18;
        }

        v19 = *(this + 1);
        v8 = *(this + 2);
        if (v19 < v8 && *v19 == 16)
        {
          v9 = v19 + 1;
          *(this + 1) = v9;
LABEL_35:
          v31 = 0;
          if (v9 >= v8 || (v20 = *v9, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
            if (!result)
            {
              return result;
            }

            v20 = v31;
          }

          else
          {
            *(this + 1) = v9 + 1;
          }

          if (v20 <= 0xC)
          {
            *(a1 + 36) |= 2u;
            *(a1 + 16) = v20;
          }

          v22 = *(this + 1);
          v12 = *(this + 2);
          if (v22 < v12 && *v22 == 24)
          {
            v13 = v22 + 1;
            *(this + 1) = v13;
LABEL_45:
            v31 = 0;
            if (v13 >= v12 || (v23 = *v13, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
              if (!result)
              {
                return result;
              }

              v23 = v31;
            }

            else
            {
              *(this + 1) = v13 + 1;
            }

            if (v23 <= 3)
            {
              *(a1 + 36) |= 4u;
              *(a1 + 20) = v23;
            }

            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 34)
            {
              *(this + 1) = v24 + 1;
              goto LABEL_55;
            }
          }
        }
      }

      else
      {
        if (v6 == 2 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_35;
        }

LABEL_22:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v6 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_45;
      }

      goto LABEL_22;
    }

    if (v6 != 4 || v7 != 2)
    {
      goto LABEL_22;
    }

LABEL_55:
    *(a1 + 36) |= 8u;
    v25 = *(a1 + 24);
    if (!v25)
    {
      operator new();
    }

    v31 = 0;
    v26 = *(this + 1);
    if (v26 >= *(this + 2) || *v26 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
      {
        return 0;
      }
    }

    else
    {
      v31 = *v26;
      *(this + 1) = v26 + 1;
    }

    v27 = *(this + 14);
    v28 = *(this + 15);
    *(this + 14) = v27 + 1;
    if (v27 >= v28)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453D972C(v25, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v29 = *(this + 14);
    v17 = __OFSUB__(v29, 1);
    v30 = v29 - 1;
    if (v30 < 0 == v17)
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

uint64_t sub_2453DA240(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE990 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v5 + 24);
  if (!v8)
  {
    sub_2453BD76C();
    v8 = *(qword_2813CE990 + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
}

uint64_t sub_2453DA310(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_36;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_2453BD76C();
    v4 = *(qword_2813CE990 + 8);
  }

  v5 = sub_2453BF4AC(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  v2 = *(a1 + 36);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(a1 + 36);
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v10 = *(a1 + 20);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(a1 + 36);
    }

    else
    {
      v11 = 2;
    }

    v3 = (v11 + v3);
    if ((v2 & 8) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_36;
  }

  v12 = *(a1 + 24);
  if (!v12)
  {
    sub_2453BD76C();
    v12 = *(qword_2813CE990 + 24);
  }

  v13 = *(v12 + 36);
  if (*(v12 + 36))
  {
    v14 = (v13 << 31 >> 31) & 9;
    if ((v13 & 2) != 0)
    {
      v14 += 9;
    }

    if ((v13 & 4) != 0)
    {
      v13 = v14 + 9;
    }

    else
    {
      v13 = v14;
    }
  }

  *(v12 + 32) = v13;
  v3 = (v3 + v13 + 2);
LABEL_36:
  *(a1 + 32) = v3;
  return v3;
}

double sub_2453DA460(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854C80, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453D9A64(a1, lpsrc);
}

double sub_2453DA51C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 36);
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

    result = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 36) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_2453DA5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DA608(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854738;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DA664(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DA608(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DA6F0(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_2453DA708(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 1)
      {
        goto LABEL_20;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v11;
      *(a1 + 36) |= 1u;
      v8 = *(this + 1);
      if (v8 < *(this + 2) && *v8 == 17)
      {
        *(this + 1) = v8 + 1;
LABEL_15:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v11;
        *(a1 + 36) |= 2u;
        v9 = *(this + 1);
        if (v9 < *(this + 2) && *v9 == 25)
        {
          *(this + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453DA8C0(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t sub_2453DA94C(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 32) = v1;
  return v1;
}

double sub_2453DA984(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854C98, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453DA51C(a1, lpsrc);
}

float sub_2453DAA40(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
  LODWORD(v6) = *(a2 + 32);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
      }

      v8 = *(*(a2 + 24) + 8 * v7);
      v9 = *(a1 + 36);
      v10 = *(a1 + 32);
      if (v10 >= v9)
      {
        if (v9 == *(a1 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v9 = *(a1 + 36);
        }

        *(a1 + 36) = v9 + 1;
        operator new();
      }

      v11 = *(a1 + 24);
      *(a1 + 32) = v10 + 1;
      sub_2453CFE3C(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 32);
    }

    while (v7 < v6);
  }

  v12 = *(a1 + 56);
  v13 = *(a2 + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
  LODWORD(v14) = *(a2 + 56);
  if (v14 >= 1)
  {
    v15 = 0;
    do
    {
      if (v15 >= v14)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
      }

      v16 = *(*(a2 + 48) + 8 * v15);
      v17 = *(a1 + 60);
      v18 = *(a1 + 56);
      if (v18 >= v17)
      {
        if (v17 == *(a1 + 64))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v17 = *(a1 + 60);
        }

        *(a1 + 60) = v17 + 1;
        operator new();
      }

      v19 = *(a1 + 48);
      *(a1 + 56) = v18 + 1;
      sub_2453D20C4(*(v19 + 8 * v18), v16);
      ++v15;
      v14 = *(a2 + 56);
    }

    while (v15 < v14);
  }

  v20 = *(a1 + 112);
  v21 = *(a2 + 112);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104));
  LODWORD(v23) = *(a2 + 112);
  if (v23 >= 1)
  {
    v24 = 0;
    do
    {
      if (v24 >= v23)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
      }

      v25 = *(*(a2 + 104) + 8 * v24);
      v26 = *(a1 + 116);
      v27 = *(a1 + 112);
      if (v27 >= v26)
      {
        if (v26 == *(a1 + 120))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104));
          v26 = *(a1 + 116);
        }

        *(a1 + 116) = v26 + 1;
        operator new();
      }

      v28 = *(a1 + 104);
      *(a1 + 112) = v27 + 1;
      v22 = sub_2453D9A64(*(v28 + 8 * v27), v25);
      ++v24;
      v23 = *(a2 + 112);
    }

    while (v24 < v23);
  }

  LOBYTE(v29) = *(a2 + 132);
  if (v29)
  {
    if (*(a2 + 132))
    {
      *(a1 + 132) |= 1u;
      v30 = *(a1 + 8);
      if (!v30)
      {
        operator new();
      }

      v31 = *(a2 + 8);
      if (!v31)
      {
        sub_2453BD76C();
        v31 = *(qword_2813CEFF8 + 8);
      }

      v22 = sub_2453DA51C(v30, v31);
      v29 = *(a2 + 132);
      if ((v29 & 2) == 0)
      {
LABEL_36:
        if ((v29 & 0x10) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_51;
      }
    }

    else if ((*(a2 + 132) & 2) == 0)
    {
      goto LABEL_36;
    }

    *(a1 + 132) |= 2u;
    v32 = *(a1 + 16);
    if (!v32)
    {
      operator new();
    }

    v33 = *(a2 + 16);
    if (!v33)
    {
      sub_2453BD76C();
      v33 = *(qword_2813CEFF8 + 16);
    }

    v22 = sub_2453CD550(v32, v33);
    v29 = *(a2 + 132);
    if ((v29 & 0x10) == 0)
    {
LABEL_37:
      if ((v29 & 0x20) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_56;
    }

LABEL_51:
    *(a1 + 132) |= 0x10u;
    v34 = *(a1 + 72);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 72);
    if (!v35)
    {
      sub_2453BD76C();
      v35 = *(qword_2813CEFF8 + 72);
    }

    sub_2453D7BD8(v34, v35);
    v29 = *(a2 + 132);
    if ((v29 & 0x20) == 0)
    {
LABEL_38:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_57;
    }

LABEL_56:
    v22 = *(a2 + 80);
    *(a1 + 132) |= 0x20u;
    *(a1 + 80) = v22;
    v29 = *(a2 + 132);
    if ((v29 & 0x40) == 0)
    {
LABEL_39:
      if ((v29 & 0x80) == 0)
      {
        return *&v22;
      }

LABEL_58:
      *(a1 + 132) |= 0x80u;
      v36 = *(a1 + 96);
      if (!v36)
      {
        operator new();
      }

      v37 = *(a2 + 96);
      if (!v37)
      {
        sub_2453BD76C();
        v37 = *(qword_2813CEFF8 + 96);
      }

      *&v22 = sub_2453D8BCC(v36, v37);
      return *&v22;
    }

LABEL_57:
    v22 = *(a2 + 88);
    *(a1 + 132) |= 0x40u;
    *(a1 + 88) = v22;
    if ((*(a2 + 132) & 0x80) == 0)
    {
      return *&v22;
    }

    goto LABEL_58;
  }

  return *&v22;
}

void sub_2453DB0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DB108(uint64_t a1)
{
  *a1 = &unk_2858547B0;
  sub_2453BD76C();
  if (qword_2813CEFF8 != a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 96);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *(a1 + 116);
  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*(a1 + 104) + 8 * i);
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v6 = *(a1 + 116);
      }
    }
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    MEMORY[0x245D6A0A0](v9, 0x80C80B8603338);
  }

  v10 = *(a1 + 60);
  if (v10 >= 1)
  {
    for (j = 0; j < v10; ++j)
    {
      v12 = *(*(a1 + 48) + 8 * j);
      if (v12)
      {
        (*(*v12 + 8))(v12);
        v10 = *(a1 + 60);
      }
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    MEMORY[0x245D6A0A0](v13, 0x80C80B8603338);
  }

  v14 = *(a1 + 36);
  if (v14 >= 1)
  {
    for (k = 0; k < v14; ++k)
    {
      v16 = *(*(a1 + 24) + 8 * k);
      if (v16)
      {
        (*(*v16 + 8))(v16);
        v14 = *(a1 + 36);
      }
    }
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    MEMORY[0x245D6A0A0](v17, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DB35C(uint64_t a1)
{
  sub_2453DB108(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DB408(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 132);
  if (v2)
  {
    if (*(a1 + 132))
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(a1 + 132);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        sub_2453CD958(v4);
        v2 = *(a1 + 132);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(a1 + 72);
      if (v5)
      {
        sub_2453D80F4(v5);
        v2 = *(a1 + 132);
      }
    }

    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    if ((v2 & 0x80) != 0)
    {
      v6 = *(a1 + 96);
      if (v6)
      {
        v7 = *(v6 + 52);
        if (v7)
        {
          *(v6 + 40) = 0;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        if ((v7 & 0xFF00) != 0)
        {
          *(v6 + 44) = 0;
        }

        *(v6 + 52) = 0;
      }
    }
  }

  sub_2453DC6D0(a1 + 24);
  sub_2453DC6D0(a1 + 48);
  result = sub_2453DC6D0(a1 + 104);
  *(a1 + 132) = 0;
  return result;
}

uint64_t sub_2453DB4D4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v6 == 3)
          {
            if (v7 != 2)
            {
              goto LABEL_39;
            }

LABEL_66:
            v24 = *(a1 + 36);
            v25 = *(a1 + 32);
            if (v25 >= v24)
            {
              if (v24 == *(a1 + 40))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                v24 = *(a1 + 36);
              }

              *(a1 + 36) = v24 + 1;
              operator new();
            }

            v26 = *(a1 + 24);
            *(a1 + 32) = v25 + 1;
            v27 = *(v26 + 8 * v25);
            v71[0] = 0;
            v28 = *(this + 1);
            if (v28 >= *(this + 2) || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v71))
              {
                return 0;
              }
            }

            else
            {
              v71[0] = *v28;
              *(this + 1) = v28 + 1;
            }

            v29 = *(this + 14);
            v30 = *(this + 15);
            *(this + 14) = v29 + 1;
            if (v29 >= v30)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453D0A00(v27, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v31 = *(this + 14);
            v14 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v14)
            {
              *(this + 14) = v32;
            }

            v23 = *(this + 1);
            if (v23 < *(this + 2))
            {
              v33 = *v23;
              if (v33 == 26)
              {
                goto LABEL_65;
              }

              if (v33 == 34)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
            if (v6 != 4 || v7 != 2)
            {
              goto LABEL_39;
            }

            while (2)
            {
              v34 = *(a1 + 60);
              v35 = *(a1 + 56);
              if (v35 >= v34)
              {
                if (v34 == *(a1 + 64))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v34 = *(a1 + 60);
                }

                *(a1 + 60) = v34 + 1;
                operator new();
              }

              v36 = *(a1 + 48);
              *(a1 + 56) = v35 + 1;
              v37 = *(v36 + 8 * v35);
              v71[0] = 0;
              v38 = *(this + 1);
              if (v38 >= *(this + 2) || *v38 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v71))
                {
                  return 0;
                }
              }

              else
              {
                v71[0] = *v38;
                *(this + 1) = v38 + 1;
              }

              v39 = *(this + 14);
              v40 = *(this + 15);
              *(this + 14) = v39 + 1;
              if (v39 >= v40)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
              if (!sub_2453D22F0(v37, this) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v41 = *(this + 14);
              v14 = __OFSUB__(v41, 1);
              v42 = v41 - 1;
              if (v42 < 0 == v14)
              {
                *(this + 14) = v42;
              }

              v23 = *(this + 1);
              if (v23 < *(this + 2))
              {
                v43 = *v23;
                if (v43 == 34)
                {
LABEL_83:
                  *(this + 1) = v23 + 1;
                  continue;
                }

                if (v43 == 42)
                {
                  *(this + 1) = v23 + 1;
LABEL_102:
                  *(a1 + 132) |= 0x10u;
                  v44 = *(a1 + 72);
                  if (!v44)
                  {
                    operator new();
                  }

                  v71[0] = 0;
                  v45 = *(this + 1);
                  if (v45 >= *(this + 2) || *v45 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v71))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v71[0] = *v45;
                    *(this + 1) = v45 + 1;
                  }

                  v46 = *(this + 14);
                  v47 = *(this + 15);
                  *(this + 14) = v46 + 1;
                  if (v46 >= v47)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                  if (!sub_2453D8180(v44, this) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                  v48 = *(this + 14);
                  v14 = __OFSUB__(v48, 1);
                  v49 = v48 - 1;
                  if (v49 < 0 == v14)
                  {
                    *(this + 14) = v49;
                  }

                  v50 = *(this + 1);
                  if (v50 < *(this + 2) && *v50 == 49)
                  {
                    *(this + 1) = v50 + 1;
LABEL_116:
                    *v71 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v71) & 1) == 0)
                    {
                      return 0;
                    }

                    *(a1 + 80) = *v71;
                    *(a1 + 132) |= 0x20u;
                    v51 = *(this + 1);
                    if (v51 < *(this + 2) && *v51 == 57)
                    {
                      *(this + 1) = v51 + 1;
LABEL_120:
                      *v71 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v71) & 1) == 0)
                      {
                        return 0;
                      }

                      *(a1 + 88) = *v71;
                      v10 = *(a1 + 132) | 0x40;
                      *(a1 + 132) = v10;
                      v52 = *(this + 1);
                      if (v52 < *(this + 2) && *v52 == 66)
                      {
                        *(this + 1) = v52 + 1;
                        goto LABEL_124;
                      }
                    }
                  }
                }
              }

              break;
            }
          }
        }

        else
        {
          if (v6 != 1)
          {
            if (v6 != 2 || v7 != 2)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }

          if (v7 != 2)
          {
            goto LABEL_39;
          }

          *(a1 + 132) |= 1u;
          v8 = *(a1 + 8);
          if (!v8)
          {
            operator new();
          }

          v71[0] = 0;
          v9 = *(this + 1);
          if (v9 >= *(this + 2) || *v9 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v71))
            {
              return 0;
            }
          }

          else
          {
            v71[0] = *v9;
            *(this + 1) = v9 + 1;
          }

          v11 = *(this + 14);
          v12 = *(this + 15);
          *(this + 14) = v11 + 1;
          if (v11 >= v12)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453DA708(v8, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v13 = *(this + 14);
          v14 = __OFSUB__(v13, 1);
          v15 = v13 - 1;
          if (v15 < 0 == v14)
          {
            *(this + 14) = v15;
          }

          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 18)
          {
            *(this + 1) = v16 + 1;
LABEL_52:
            *(a1 + 132) |= 2u;
            v17 = *(a1 + 16);
            if (!v17)
            {
              operator new();
            }

            v71[0] = 0;
            v18 = *(this + 1);
            if (v18 >= *(this + 2) || *v18 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v71))
              {
                return 0;
              }
            }

            else
            {
              v71[0] = *v18;
              *(this + 1) = v18 + 1;
            }

            v19 = *(this + 14);
            v20 = *(this + 15);
            *(this + 14) = v19 + 1;
            if (v19 >= v20)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453CD998(v17, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v21 = *(this + 14);
            v14 = __OFSUB__(v21, 1);
            v22 = v21 - 1;
            if (v22 < 0 == v14)
            {
              *(this + 14) = v22;
            }

            v23 = *(this + 1);
            if (v23 < *(this + 2) && *v23 == 26)
            {
LABEL_65:
              *(this + 1) = v23 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v6 == 7)
      {
        if (v7 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_120;
      }

      if (v6 == 8)
      {
        if (v7 != 2)
        {
          goto LABEL_39;
        }

        v10 = *(a1 + 132);
LABEL_124:
        *(a1 + 132) = v10 | 0x80;
        v53 = *(a1 + 96);
        if (!v53)
        {
          operator new();
        }

        v71[0] = 0;
        v54 = *(this + 1);
        if (v54 >= *(this + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v71))
          {
            return 0;
          }
        }

        else
        {
          v71[0] = *v54;
          *(this + 1) = v54 + 1;
        }

        v55 = *(this + 14);
        v56 = *(this + 15);
        *(this + 14) = v55 + 1;
        if (v55 >= v56)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453D8E94(v53, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v57 = *(this + 14);
        v14 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v14)
        {
          *(this + 14) = v58;
        }

        v59 = *(this + 1);
        if (v59 < *(this + 2) && *v59 == 74)
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v6 != 9 || v7 != 2)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v60 = *(a1 + 116);
          v61 = *(a1 + 112);
          if (v61 >= v60)
          {
            if (v60 == *(a1 + 120))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104));
              v60 = *(a1 + 116);
            }

            *(a1 + 116) = v60 + 1;
            operator new();
          }

          v62 = *(a1 + 104);
          *(a1 + 112) = v61 + 1;
          v63 = *(v62 + 8 * v61);
          v71[0] = 0;
          v64 = *(this + 1);
          if (v64 >= *(this + 2) || *v64 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v71))
            {
              return 0;
            }
          }

          else
          {
            v71[0] = *v64;
            *(this + 1) = v64 + 1;
          }

          v65 = *(this + 14);
          v66 = *(this + 15);
          *(this + 14) = v65 + 1;
          if (v65 >= v66)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453D9E38(v63, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v67 = *(this + 14);
          v14 = __OFSUB__(v67, 1);
          v68 = v67 - 1;
          if (v68 < 0 == v14)
          {
            *(this + 14) = v68;
          }

          v59 = *(this + 1);
          v69 = *(this + 2);
          if (v59 >= v69 || *v59 != 74)
          {
            break;
          }

LABEL_137:
          *(this + 1) = v59 + 1;
        }

        if (v59 == v69 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5)
    {
      if (v7 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_102;
    }

    if (v6 == 6 && v7 == 1)
    {
      goto LABEL_116;
    }

LABEL_39:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453DBF88(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 132);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CEFF8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CEFF8 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  if (*(v5 + 56) >= 1)
  {
    v10 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 48) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 56));
  }

  v11 = *(v5 + 132);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(v5 + 72);
    if (!v12)
    {
      sub_2453BD76C();
      v12 = *(qword_2813CEFF8 + 72);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v12, a2, a4);
    v11 = *(v5 + 132);
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 80), a3);
  v11 = *(v5 + 132);
  if ((v11 & 0x40) == 0)
  {
LABEL_18:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 88), a3);
  if ((*(v5 + 132) & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v13 = *(v5 + 96);
  if (!v13)
  {
    sub_2453BD76C();
    v13 = *(qword_2813CEFF8 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
LABEL_28:
  if (*(v5 + 112) >= 1)
  {
    v14 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 104) + 8 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 112));
  }

  return result;
}

uint64_t sub_2453DC140(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 132);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (*(a1 + 132))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453BD76C();
      v5 = *(qword_2813CEFF8 + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v3 = v6 + 2;
    v2 = *(a1 + 132);
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v3 = 0;
  if ((*(a1 + 132) & 2) != 0)
  {
LABEL_15:
    v8 = *(a1 + 16);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CEFF8 + 16);
    }

    v9 = sub_2453CDDA0(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
    v2 = *(a1 + 132);
  }

LABEL_21:
  if ((v2 & 0x10) != 0)
  {
    v12 = *(a1 + 72);
    if (!v12)
    {
      sub_2453BD76C();
      v12 = *(qword_2813CEFF8 + 72);
    }

    v13 = sub_2453D8944(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 += v14 + v15 + 1;
    v2 = *(a1 + 132);
  }

  v16 = v3 + 9;
  if ((v2 & 0x20) == 0)
  {
    v16 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v4 = v16 + 9;
  }

  else
  {
    v4 = v16;
  }

  if ((v2 & 0x80) != 0)
  {
    v17 = *(a1 + 96);
    if (!v17)
    {
      sub_2453BD76C();
      v17 = *(qword_2813CEFF8 + 96);
    }

    v18 = sub_2453D93D0(v17);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v4 += v19 + v20 + 1;
  }

LABEL_40:
  v21 = *(a1 + 32);
  v22 = v21 + v4;
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = sub_2453D1BA0(*(*(a1 + 24) + 8 * v23));
      v25 = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
      }

      else
      {
        v26 = 1;
      }

      v22 += v25 + v26;
      ++v23;
    }

    while (v23 < *(a1 + 32));
  }

  v27 = *(a1 + 56);
  v28 = v27 + v22;
  if (v27 >= 1)
  {
    v29 = 0;
    do
    {
      v30 = sub_2453D25D4(*(*(a1 + 48) + 8 * v29));
      v31 = v30;
      if (v30 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
      }

      else
      {
        v32 = 1;
      }

      v28 += v31 + v32;
      ++v29;
    }

    while (v29 < *(a1 + 56));
  }

  v33 = *(a1 + 112);
  v34 = (v33 + v28);
  if (v33 >= 1)
  {
    v35 = 0;
    do
    {
      v36 = sub_2453DA310(*(*(a1 + 104) + 8 * v35));
      v37 = v36;
      if (v36 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
      }

      else
      {
        v38 = 1;
      }

      v34 = (v37 + v34 + v38);
      ++v35;
    }

    while (v35 < *(a1 + 112));
  }

  *(a1 + 128) = v34;
  return v34;
}

float sub_2453DC3D4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854CB0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453DAA40(a1, lpsrc);
}

uint64_t *sub_2453DC620(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t sub_2453DC6D0(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_2453DC740()
{
  if (qword_27EE134C0)
  {
    (*(*qword_27EE134C0 + 8))(qword_27EE134C0);
  }

  if (qword_27EE134C8)
  {
    (*(*qword_27EE134C8 + 8))(qword_27EE134C8);
  }

  if (qword_27EE134D0)
  {
    (*(*qword_27EE134D0 + 8))(qword_27EE134D0);
  }

  if (qword_27EE134D8)
  {
    (*(*qword_27EE134D8 + 8))(qword_27EE134D8);
  }

  if (qword_2813CE9A0)
  {
    (*(*qword_2813CE9A0 + 8))(qword_2813CE9A0);
  }

  if (qword_2813CE9A8)
  {
    (*(*qword_2813CE9A8 + 8))(qword_2813CE9A8);
  }

  if (qword_27EE134E0)
  {
    (*(*qword_27EE134E0 + 8))(qword_27EE134E0);
  }

  if (qword_2813CE9B0)
  {
    (*(*qword_2813CE9B0 + 8))(qword_2813CE9B0);
  }

  if (qword_2813CE9B8)
  {
    (*(*qword_2813CE9B8 + 8))(qword_2813CE9B8);
  }

  if (qword_2813CE9C0)
  {
    (*(*qword_2813CE9C0 + 8))(qword_2813CE9C0);
  }

  if (qword_27EE134E8)
  {
    (*(*qword_27EE134E8 + 8))(qword_27EE134E8);
  }

  if (qword_27EE134F0)
  {
    (*(*qword_27EE134F0 + 8))(qword_27EE134F0);
  }

  if (qword_2813CE9C8)
  {
    (*(*qword_2813CE9C8 + 8))(qword_2813CE9C8);
  }

  if (qword_27EE134F8)
  {
    (*(*qword_27EE134F8 + 8))(qword_27EE134F8);
  }

  result = qword_27EE13500;
  if (qword_27EE13500)
  {
    v1 = *(*qword_27EE13500 + 8);

    return v1();
  }

  return result;
}

void sub_2453DCA38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Protobuf/Generated/CLPGnssEmergencyLppTypes.pb.cc", a4);
  sub_24539DF20();
  operator new();
}

void sub_2453DCF08()
{
  v0 = qword_27EE14518;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_2453DCA38;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_2453DCF8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453DCFA0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285854CD8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_2453DD028(a1, a2);
  return a1;
}

void sub_2453DCFF4(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x245D6A0A0](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void sub_2453DD028(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  v4 = *(a2 + 16);
  if (v4)
  {
    sub_2453B0370((a1 + 8), *(a1 + 16) + v4);
    memcpy((*(a1 + 8) + 4 * *(a1 + 16)), *(a2 + 8), 4 * *(a2 + 16));
    *(a1 + 16) += *(a2 + 16);
  }

  if (*(a2 + 32))
  {
    v5 = *(a2 + 24);
    *(a1 + 32) |= 1u;
    *(a1 + 24) = v5;
  }
}

void sub_2453DD0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DD110(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854CD8;
  sub_2453DCF08();
  v2 = *(a1 + 1);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DD188(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DD110(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DD210(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 24) = 0;
  }

  *(result + 16) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453DD228(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v4 + 1;
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
        goto LABEL_14;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 24) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 32) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        do
        {
          v12 = v10 + 1;
          *(this + 1) = v12;
LABEL_25:
          v23 = 0;
          if (v12 >= v7 || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
            {
              return 0;
            }
          }

          else
          {
            v23 = *v12;
            *(this + 1) = v12 + 1;
          }

          v13 = *(a1 + 16);
          if (v13 == *(a1 + 20))
          {
            sub_2453B0370((a1 + 8), v13 + 1);
            v13 = *(a1 + 16);
          }

          v14 = v23;
          v15 = *(a1 + 8);
          *(a1 + 16) = v13 + 1;
          *(v15 + 4 * v13) = v14;
          v16 = *(a1 + 20) - *(a1 + 16);
          if (v16 >= 1)
          {
            v17 = v16 + 1;
            do
            {
              v18 = *(this + 1);
              v19 = *(this + 2);
              if (v18 >= v19 || *v18 != 16)
              {
                break;
              }

              *(this + 1) = v18 + 1;
              if ((v18 + 1) >= v19 || v18[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
                {
                  return 0;
                }
              }

              else
              {
                v23 = v18[1];
                *(this + 1) = v18 + 2;
              }

              v20 = *(a1 + 16);
              if (v20 >= *(a1 + 20))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
                v20 = *(a1 + 16);
              }

              v21 = v23;
              v22 = *(a1 + 8);
              *(a1 + 16) = v20 + 1;
              *(v22 + 4 * v20) = v21;
              --v17;
            }

            while (v17 > 1);
          }

LABEL_42:
          v10 = *(this + 1);
          v7 = *(this + 2);
        }

        while (v10 < v7 && *v10 == 16);
        if (v10 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_25;
    }

    if (v6 == 2)
    {
      result = sub_2453DD50C(this, a1 + 8);
      if (!result)
      {
        return result;
      }

      goto LABEL_42;
    }

LABEL_14:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_2453DD4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453DD50C(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v10 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || *v6 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v10 = *v6;
        *(this + 1) = v6 + 1;
      }

      v7 = *(a2 + 8);
      if (v7 == *(a2 + 12))
      {
        sub_2453B0370(a2, v7 + 1);
        v7 = *(a2 + 8);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 8) = v7 + 1;
      *(v9 + 4 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t sub_2453DD620(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 32))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 24), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 8) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_2453DD698(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 24);
    if (v3 >= 0x80)
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 16);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 8) + 4 * v5);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
        v4 = *(a1 + 16);
      }

      else
      {
        v8 = 1;
      }

      v6 += v8;
      ++v5;
    }

    while (v5 < v4);
  }

  result = (v6 + v2 + v4);
  *(a1 + 28) = result;
  return result;
}

void sub_2453DD744(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858553D0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453DD028(a1, lpsrc);
}

uint64_t sub_2453DD800(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285854D50;
  *(a1 + 12) = 0;
  *(a1 + 8) = 0;
  sub_2453DD860(a1, a2);
  return a1;
}

void sub_2453DD860(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_2453DD8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DD904(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854D50;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DD960(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DD904(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DD9E8(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453DD9FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v8 = v11;
        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      *(a1 + 8) = v8 != 0;
      *(a1 + 16) |= 1u;
      if (v9 == v6 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2453DDB14(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_2453DDB30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = 2 * (*(a1 + 16) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_2453DDB4C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858553E8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453DD860(a1, lpsrc);
}

void sub_2453DDC08(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_2453DDC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DDCAC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854DC8;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DDD08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DDCAC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DDD90(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453DDDA4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v8 = v11;
        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      *(a1 + 8) = v8 != 0;
      *(a1 + 16) |= 1u;
      if (v9 == v6 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2453DDEBC(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_2453DDED8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = 2 * (*(a1 + 16) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_2453DDEF4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855400, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453DDC08(a1, lpsrc);
}

uint64_t sub_2453DDFB0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285854E40;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2453DE00C(a1, a2);
  return a1;
}

void sub_2453DE00C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    if (v4 >= 3)
    {
      __assert_rtn("set_rat_type", "CLPGnssEmergencyLppTypes.pb.h", 2034, "::CoreGem::proto::gnss::Emergency::RatType_IsValid(value)");
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_2453DE0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DE0D8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854E40;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DE134(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DE0D8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DE1B8(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453DE1CC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v9 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
        if (!result)
        {
          return result;
        }

        v7 = v9;
      }

      else
      {
        *(this + 1) = v6 + 1;
      }

      if (v7 <= 2)
      {
        *(a1 + 16) |= 1u;
        *(a1 + 8) = v7;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2453DE2E4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

uint64_t sub_2453DE300(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 8);
    if ((v3 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v3 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 12) = result;
  return result;
}

void sub_2453DE35C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855418, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453DE00C(a1, lpsrc);
}

void sub_2453DE418(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v6 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 4);
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

    else if ((a2[16] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 16) |= 2u;
    *(a1 + 9) = v7;
    if ((*(a2 + 4) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = a2[10];
    *(a1 + 16) |= 4u;
    *(a1 + 10) = v5;
  }
}

void sub_2453DE4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DE504(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854EB8;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DE560(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DE504(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DE5EC(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
    *(result + 10) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453DE604(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v4 + 1;
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
          v12 = *(this + 1);
          v7 = *(this + 2);
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

      v20 = 0;
      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v9 = v20;
        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 8) = v9 != 0;
      *(a1 + 16) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_25:
        v19 = 0;
        if (v11 >= v7 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19);
          if (!result)
          {
            return result;
          }

          v13 = v19;
          v14 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v14 = v11 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 9) = v13 != 0;
        *(a1 + 16) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(this + 1) = v12;
LABEL_33:
          v18 = 0;
          if (v12 >= v7 || (v15 = *v12, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
            if (!result)
            {
              return result;
            }

            v15 = v18;
            v16 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            v16 = v12 + 1;
            *(this + 1) = v16;
          }

          *(a1 + 10) = v15 != 0;
          *(a1 + 16) |= 4u;
          if (v16 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453DE828(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
    if ((*(v5 + 16) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
  v6 = *(v5 + 16);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 10);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t sub_2453DE8B4(uint64_t a1)
{
  LODWORD(v1) = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2);
  if (*(a1 + 16))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_2453DE8E4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855430, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453DE418(a1, lpsrc);
}

void sub_2453DE9A0(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v5 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 4);
    }

    if ((v4 & 2) != 0)
    {
      v6 = a2[9];
      *(a1 + 16) |= 2u;
      *(a1 + 9) = v6;
    }
  }
}

void sub_2453DEA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DEA64(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854F30;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DEAC0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DEA64(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DEB48(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453DEB5C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      *(a1 + 8) = v8 != 0;
      *(a1 + 16) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(this + 1) = v10;
LABEL_22:
        v14 = 0;
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
          if (!result)
          {
            return result;
          }

          v11 = v14;
          v12 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        *(a1 + 9) = v11 != 0;
        *(a1 + 16) |= 2u;
        if (v12 == v6 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v6 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453DED00(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 9);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453DED6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2u);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 12) = v1;
  return v1;
}

void sub_2453DED90(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855448, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453DE9A0(a1, lpsrc);
}

void sub_2453DEE4C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 24);
      if (v5 >= 3)
      {
        __assert_rtn("set_rat_type", "CLPGnssEmergencyLppTypes.pb.h", 2179, "::CoreGem::proto::gnss::Emergency::RatType_IsValid(value)");
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) |= 2u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453DCF08();
        v7 = *(qword_27EE134E0 + 8);
      }

      sub_2453DE418(v6, v7);
      v4 = *(a2 + 32);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 32) |= 4u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 16);
      if (!v9)
      {
        sub_2453DCF08();
        v9 = *(qword_27EE134E0 + 16);
      }

      sub_2453DE9A0(v8, v9);
    }
  }
}

void sub_2453DF010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DF028(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285854FA8;
  sub_2453DCF08();
  if (qword_27EE134E0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DF0EC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DF028(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DF174(uint64_t result)
{
  LOBYTE(v1) = *(result + 32);
  if (v1)
  {
    *(result + 24) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 16))
        {
          *(v2 + 8) = 0;
          *(v2 + 10) = 0;
        }

        *(v2 + 16) = 0;
        v1 = *(result + 32);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 16))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 16) = 0;
      }
    }
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453DF1C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 2)
        {
          goto LABEL_40;
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

      v26 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
        if (!result)
        {
          return result;
        }

        v9 = v26;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 <= 2)
      {
        *(a1 + 32) |= 1u;
        *(a1 + 24) = v9;
      }

      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
LABEL_26:
        *(a1 + 32) |= 2u;
        v12 = *(a1 + 8);
        if (!v12)
        {
          operator new();
        }

        v27 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
          {
            return 0;
          }
        }

        else
        {
          v27 = *v13;
          *(this + 1) = v13 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453DE604(v12, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v16 = *(this + 14);
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v18 < 0 == v17)
        {
          *(this + 14) = v18;
        }

        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 26)
        {
          *(this + 1) = v19 + 1;
LABEL_40:
          *(a1 + 32) |= 4u;
          v20 = *(a1 + 16);
          if (!v20)
          {
            operator new();
          }

          v28 = 0;
          v21 = *(this + 1);
          if (v21 >= *(this + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
            {
              return 0;
            }
          }

          else
          {
            v28 = *v21;
            *(this + 1) = v21 + 1;
          }

          v22 = *(this + 14);
          v23 = *(this + 15);
          *(this + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453DEB5C(v20, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v24 = *(this + 14);
          v17 = __OFSUB__(v24, 1);
          v25 = v24 - 1;
          if (v25 < 0 == v17)
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
    }

    if (v7 == 2)
    {
      goto LABEL_26;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453DF544(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    sub_2453DCF08();
    v7 = *(qword_27EE134E0 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 16);
    if (!v8)
    {
      sub_2453DCF08();
      v8 = *(qword_27EE134E0 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

  return result;
}

uint64_t sub_2453DF5F8(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

LABEL_13:
    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453DCF08();
      v5 = *(qword_27EE134E0 + 8);
    }

    v6 = 2 * (*(v5 + 16) & 1) + (*(v5 + 16) & 2) + ((*(v5 + 16) >> 1) & 2);
    if (!*(v5 + 16))
    {
      v6 = 0;
    }

    *(v5 + 12) = v6;
    v3 = (v3 + v6 + 2);
    v2 = *(a1 + 32);
    goto LABEL_18;
  }

  v4 = *(a1 + 24);
  if ((v4 & 0x80000000) != 0)
  {
    v3 = 11;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 32);
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      sub_2453DCF08();
      v7 = *(qword_27EE134E0 + 16);
    }

    if (*(v7 + 16))
    {
      v8 = 2 * (*(v7 + 16) & 1) + (*(v7 + 16) & 2);
    }

    else
    {
      v8 = 0;
    }

    *(v7 + 12) = v8;
    v3 = (v3 + v8 + 2);
  }

LABEL_25:
  *(a1 + 28) = v3;
  return v3;
}

void sub_2453DF704(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855460, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453DEE4C(a1, lpsrc);
}

uint64_t sub_2453DF7C0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285855020;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_2453DF82C(a1, a2);
  return a1;
}

void sub_2453DF82C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 68);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 40);
    *(a1 + 68) |= 1u;
    *(a1 + 40) = v8;
    v4 = *(a2 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 8);
  *(a1 + 68) |= 2u;
  *(a1 + 8) = v9;
  v4 = *(a2 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = *(a2 + 12);
  *(a1 + 68) |= 4u;
  *(a1 + 12) = v10;
  v4 = *(a2 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = *(a2 + 16);
  *(a1 + 68) |= 8u;
  *(a1 + 16) = v11;
  v4 = *(a2 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_31:
    v13 = *(a2 + 24);
    *(a1 + 68) |= 0x20u;
    *(a1 + 24) = v13;
    v4 = *(a2 + 68);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_30:
  v12 = *(a2 + 20);
  *(a1 + 68) |= 0x10u;
  *(a1 + 20) = v12;
  v4 = *(a2 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_32:
  v14 = *(a2 + 28);
  *(a1 + 68) |= 0x40u;
  *(a1 + 28) = v14;
  v4 = *(a2 + 68);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 32);
    *(a1 + 68) |= 0x80u;
    *(a1 + 32) = v5;
    v4 = *(a2 + 68);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 36);
    *(a1 + 68) |= 0x100u;
    *(a1 + 36) = v15;
    v4 = *(a2 + 68);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 41);
  *(a1 + 68) |= 0x200u;
  *(a1 + 41) = v16;
  v4 = *(a2 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = *(a2 + 44);
  *(a1 + 68) |= 0x400u;
  *(a1 + 44) = v17;
  v4 = *(a2 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = *(a2 + 42);
  *(a1 + 68) |= 0x800u;
  *(a1 + 42) = v18;
  v4 = *(a2 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = *(a2 + 48);
  *(a1 + 68) |= 0x1000u;
  *(a1 + 48) = v19;
  v4 = *(a2 + 68);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = *(a2 + 52);
  *(a1 + 68) |= 0x2000u;
  *(a1 + 52) = v20;
  v4 = *(a2 + 68);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_40:
  v21 = *(a2 + 56);
  *(a1 + 68) |= 0x4000u;
  *(a1 + 56) = v21;
  v4 = *(a2 + 68);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 60);
    *(a1 + 68) |= 0x8000u;
    *(a1 + 60) = v6;
    v4 = *(a2 + 68);
  }

LABEL_23:
  if ((v4 & 0x10000) != 0)
  {
    v7 = *(a2 + 43);
    *(a1 + 68) |= 0x10000u;
    *(a1 + 43) = v7;
  }
}