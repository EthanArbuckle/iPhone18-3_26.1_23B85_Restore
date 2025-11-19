uint64_t sub_245424E98(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 64);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_21:
  v7 = *(v5 + 32);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEBD0 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v7, a2, a4);
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 57), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 58), a2, a4);
    if ((*(v5 + 64) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_25:
  v8 = *(v5 + 40);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEBD0 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v8, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_29:
  v9 = *(v5 + 48);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEBD0 + 48);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v9, a2, a4);
}

uint64_t sub_24542505C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_44;
  }

  if (v2)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(a1 + 64);
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(a1 + 64);
  }

  else
  {
    v7 = 2;
  }

  v3 += v7;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(a1 + 64);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(a1 + 20);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(a1 + 64);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_27:
  v12 = *(a1 + 24);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(a1 + 64);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x20) != 0)
  {
LABEL_31:
    v14 = *(a1 + 28);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v2 = *(a1 + 64);
    }

    else
    {
      v15 = 2;
    }

    v3 += v15;
  }

LABEL_37:
  v4 = ((v2 >> 5) & 2) + v3;
  if ((v2 & 0x80) != 0)
  {
    v16 = *(a1 + 32);
    if (!v16)
    {
      sub_2453EB7EC();
      v16 = *(qword_2813CEBD0 + 32);
    }

    v17 = sub_24542357C(v16);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    }

    else
    {
      v19 = 1;
    }

    v4 = (v4 + v18 + v19 + 1);
    v2 = *(a1 + 64);
  }

LABEL_44:
  if ((v2 & 0xFF00) != 0)
  {
    v20 = ((v2 >> 7) & 2) + v4;
    if ((v2 & 0x200) != 0)
    {
      v21 = *(a1 + 40);
      if (!v21)
      {
        sub_2453EB7EC();
        v21 = *(qword_2813CEBD0 + 40);
      }

      v22 = sub_245423A90(v21);
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 += v23 + v24 + 1;
      v2 = *(a1 + 64);
    }

    v4 = ((v2 >> 9) & 2) + v20;
    if ((v2 & 0x800) != 0)
    {
      v25 = *(a1 + 48);
      if (!v25)
      {
        sub_2453EB7EC();
        v25 = *(qword_2813CEBD0 + 48);
      }

      v26 = sub_245423F7C(v25);
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      }

      else
      {
        v28 = 1;
      }

      v4 = (v4 + v27 + v28 + 1);
    }
  }

  *(a1 + 60) = v4;
  return v4;
}

void sub_2454252C4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858C10, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454240C8(a1, lpsrc);
}

void sub_245425380(uint64_t a1, uint64_t a2)
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
    v5 = *(a2 + 8);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 26232, "::CoreGem::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(a1 + 52) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 52);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 12);
    *(a1 + 52) |= 2u;
    *(a1 + 12) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(a1 + 52) |= 4u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEEE8 + 16);
  }

  sub_2453F8094(v8, v9);
  v4 = *(a2 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    *(a1 + 52) |= 0x10u;
    v12 = *(a1 + 32);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 32);
    if (!v13)
    {
      sub_2453EB7EC();
      v13 = *(qword_2813CEEE8 + 32);
    }

    sub_2454240C8(v12, v13);
    v4 = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_12:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_21:
  *(a1 + 52) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEEE8 + 24);
  }

  sub_24540DD64(v10, v11);
  v4 = *(a2 + 52);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_31:
  v14 = *(a2 + 40);
  if (v14 >= 4)
  {
    __assert_rtn("set_aflt_action", "GnssEmergencyTypes.pb.h", 26403, "::CoreGem::proto::gnss::Emergency::AfltAction_IsValid(value)");
  }

  *(a1 + 52) |= 0x20u;
  *(a1 + 40) = v14;
  if ((*(a2 + 52) & 0x40) != 0)
  {
LABEL_13:
    v6 = *(a2 + 44);
    *(a1 + 52) |= 0x40u;
    *(a1 + 44) = v6;
  }
}

void sub_245425670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245425688(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858290;
  sub_2453EB7EC();
  if (qword_2813CEEE8 != a1)
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

    v4 = *(a1 + 4);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245425778(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245425688(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24542580C(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 52);
  if (v2)
  {
    *(result + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v2 = *(result + 52);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_24540E2D0(result);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_2454245B8(result);
      }
    }

    *(v1 + 40) = 0;
    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_24542588C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v47 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47);
            if (!result)
            {
              return result;
            }

            v12 = v47;
          }

          else
          {
            *(this + 1) = v11 + 1;
          }

          if (v12 <= 8)
          {
            *(a1 + 52) |= 1u;
            *(a1 + 8) = v12;
          }

          v18 = *(this + 1);
          v15 = *(this + 2);
          if (v18 < v15 && *v18 == 16)
          {
            v16 = v18 + 1;
            *(this + 1) = v16;
            goto LABEL_41;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 != 3 || v7 != 2)
            {
              goto LABEL_30;
            }

            v8 = *(a1 + 52);
            goto LABEL_49;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(this + 1);
          v15 = *(this + 2);
LABEL_41:
          if (v16 >= v15 || (v19 = *v16, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
            if (!result)
            {
              return result;
            }

            v20 = *(this + 1);
            v15 = *(this + 2);
          }

          else
          {
            *(a1 + 12) = v19;
            v20 = v16 + 1;
            *(this + 1) = v20;
          }

          v8 = *(a1 + 52) | 2;
          *(a1 + 52) = v8;
          if (v20 < v15 && *v20 == 26)
          {
            *(this + 1) = v20 + 1;
LABEL_49:
            *(a1 + 52) = v8 | 4;
            v21 = *(a1 + 16);
            if (!v21)
            {
              operator new();
            }

            v47 = 0;
            v22 = *(this + 1);
            if (v22 >= *(this + 2) || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v22;
              *(this + 1) = v22 + 1;
            }

            v23 = *(this + 14);
            v24 = *(this + 15);
            *(this + 14) = v23 + 1;
            if (v23 >= v24)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453F82C0(v21, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v25 = *(this + 14);
            v26 = __OFSUB__(v25, 1);
            v27 = v25 - 1;
            if (v27 < 0 == v26)
            {
              *(this + 14) = v27;
            }

            v28 = *(this + 1);
            if (v28 < *(this + 2) && *v28 == 34)
            {
              *(this + 1) = v28 + 1;
              goto LABEL_63;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v6 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v13 = *(this + 2);
            goto LABEL_91;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_101;
        }

        goto LABEL_30;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_30;
      }

LABEL_63:
      *(a1 + 52) |= 8u;
      v29 = *(a1 + 24);
      if (!v29)
      {
        operator new();
      }

      v47 = 0;
      v30 = *(this + 1);
      if (v30 >= *(this + 2) || *v30 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
        {
          return 0;
        }
      }

      else
      {
        v47 = *v30;
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
      if (!sub_24540E344(v29, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v33 = *(this + 14);
      v26 = __OFSUB__(v33, 1);
      v34 = v33 - 1;
      if (v34 < 0 == v26)
      {
        *(this + 14) = v34;
      }

      v35 = *(this + 1);
      if (v35 < *(this + 2) && *v35 == 42)
      {
        *(this + 1) = v35 + 1;
LABEL_77:
        *(a1 + 52) |= 0x10u;
        v36 = *(a1 + 32);
        if (!v36)
        {
          operator new();
        }

        v47 = 0;
        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
          {
            return 0;
          }
        }

        else
        {
          v47 = *v37;
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
        if (!sub_245424648(v36, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v40 = *(this + 14);
        v26 = __OFSUB__(v40, 1);
        v41 = v40 - 1;
        if (v41 < 0 == v26)
        {
          *(this + 14) = v41;
        }

        v42 = *(this + 1);
        v13 = *(this + 2);
        if (v42 < v13 && *v42 == 48)
        {
          v14 = v42 + 1;
          *(this + 1) = v14;
LABEL_91:
          v47 = 0;
          if (v14 >= v13 || (v43 = *v14, (v43 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47);
            if (!result)
            {
              return result;
            }

            v43 = v47;
          }

          else
          {
            *(this + 1) = v14 + 1;
          }

          if (v43 <= 3)
          {
            *(a1 + 52) |= 0x20u;
            *(a1 + 40) = v43;
          }

          v44 = *(this + 1);
          v9 = *(this + 2);
          if (v44 < v9 && *v44 == 56)
          {
            v10 = v44 + 1;
            *(this + 1) = v10;
LABEL_101:
            v47 = 0;
            if (v10 >= v9 || (v45 = *v10, (v45 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47);
              if (!result)
              {
                return result;
              }

              v45 = v47;
              v46 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v46 = v10 + 1;
              *(this + 1) = v46;
            }

            *(a1 + 44) = v45 != 0;
            *(a1 + 52) |= 0x40u;
            if (v46 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v6 == 5 && v7 == 2)
    {
      goto LABEL_77;
    }

LABEL_30:
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

uint64_t sub_245425ED0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
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

LABEL_11:
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEEE8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  v8 = *(v5 + 24);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEEE8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_17:
  v9 = *(v5 + 32);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEEE8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return result;
  }

LABEL_21:
  v10 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, v10, a2, a4);
}

uint64_t sub_245426008(uint64_t a1)
{
  v2 = *(a1 + 52);
  if (v2)
  {
    if (v2)
    {
      v5 = *(a1 + 8);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(a1 + 52);
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v6 = *(a1 + 12);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(a1 + 52);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
LABEL_17:
    if ((v2 & 4) != 0)
    {
      v8 = *(a1 + 16);
      if (!v8)
      {
        sub_2453EB7EC();
        v8 = *(qword_2813CEEE8 + 16);
      }

      v9 = sub_2453F8560(v8);
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
      v2 = *(a1 + 52);
      if ((v2 & 8) == 0)
      {
LABEL_19:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

    else if ((v2 & 8) == 0)
    {
      goto LABEL_19;
    }

    v12 = *(a1 + 24);
    if (!v12)
    {
      sub_2453EB7EC();
      v12 = *(qword_2813CEEE8 + 24);
    }

    v13 = sub_24540EBF8(v12);
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
    v2 = *(a1 + 52);
    if ((v2 & 0x10) == 0)
    {
LABEL_20:
      if ((v2 & 0x20) == 0)
      {
LABEL_46:
        result = ((v2 >> 5) & 2) + v3;
        goto LABEL_47;
      }

LABEL_40:
      v20 = *(a1 + 40);
      if ((v20 & 0x80000000) != 0)
      {
        v21 = 11;
      }

      else if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
        v2 = *(a1 + 52);
      }

      else
      {
        v21 = 2;
      }

      v3 += v21;
      goto LABEL_46;
    }

LABEL_34:
    v16 = *(a1 + 32);
    if (!v16)
    {
      sub_2453EB7EC();
      v16 = *(qword_2813CEEE8 + 32);
    }

    v17 = sub_24542505C(v16);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    }

    else
    {
      v19 = 1;
    }

    v3 += v18 + v19 + 1;
    v2 = *(a1 + 52);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  result = 0;
LABEL_47:
  *(a1 + 48) = result;
  return result;
}

void sub_2454261E8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858C28, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245425380(a1, lpsrc);
}

void sub_2454262A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858308;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245426300(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454262A4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245426384(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v7 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_45;
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

      v21 = 0;
      v10 = *(this + 1);
      v7 = *(this + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 8) = v11 != 0;
      *(a1 + 16) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(this + 1) = v8;
LABEL_29:
        v21 = 0;
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
          if (!result)
          {
            return result;
          }

          v14 = v21;
          v15 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v15 = v8 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 9) = v14 != 0;
        *(a1 + 16) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(this + 1) = v13;
LABEL_37:
          v21 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
            if (!result)
            {
              return result;
            }

            v16 = v21;
            v17 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 10) = v16 != 0;
          *(a1 + 16) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(this + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(this + 1) = v19;
            }

            *(a1 + 11) = v18 != 0;
            *(a1 + 16) |= 8u;
            if (v19 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t sub_245426630(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
      if ((*(v5 + 16) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 16);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_2454266D8(uint64_t a1)
{
  LODWORD(v1) = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2) + ((*(a1 + 16) >> 2) & 2);
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

void sub_245426714(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858C40, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541EF18(a1, lpsrc);
}

void sub_245426AC8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_2453EDA24(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_245426C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245426C58(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_2453EE62C(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_245426DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245426DE4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_2453EEDB8(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_245426F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245426F74(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      sub_24541B620(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_245427104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24542711C()
{
  if (qword_2813CEEB8)
  {
    (*(*qword_2813CEEB8 + 8))(qword_2813CEEB8);
  }

  if (qword_2813CEBE0)
  {
    (*(*qword_2813CEBE0 + 8))(qword_2813CEBE0);
  }

  if (qword_2813CEEC8)
  {
    (*(*qword_2813CEEC8 + 8))(qword_2813CEEC8);
  }

  if (qword_2813CEBE8)
  {
    (*(*qword_2813CEBE8 + 8))(qword_2813CEBE8);
  }

  if (qword_2813CEBF0)
  {
    (*(*qword_2813CEBF0 + 8))(qword_2813CEBF0);
  }

  if (qword_2813CEBF8)
  {
    (*(*qword_2813CEBF8 + 8))(qword_2813CEBF8);
  }

  if (qword_2813CEC00)
  {
    (*(*qword_2813CEC00 + 8))(qword_2813CEC00);
  }

  if (qword_2813CEC08)
  {
    (*(*qword_2813CEC08 + 8))(qword_2813CEC08);
  }

  if (qword_2813CEC10)
  {
    (*(*qword_2813CEC10 + 8))(qword_2813CEC10);
  }

  if (qword_2813CEEC0)
  {
    (*(*qword_2813CEEC0 + 8))(qword_2813CEEC0);
  }

  if (qword_2813CEC18)
  {
    (*(*qword_2813CEC18 + 8))(qword_2813CEC18);
  }

  if (qword_2813CEC20)
  {
    (*(*qword_2813CEC20 + 8))(qword_2813CEC20);
  }

  if (qword_2813CEC28)
  {
    (*(*qword_2813CEC28 + 8))(qword_2813CEC28);
  }

  if (qword_2813CEC30)
  {
    (*(*qword_2813CEC30 + 8))(qword_2813CEC30);
  }

  if (qword_2813CEC38)
  {
    (*(*qword_2813CEC38 + 8))(qword_2813CEC38);
  }

  if (qword_2813CEC40)
  {
    (*(*qword_2813CEC40 + 8))(qword_2813CEC40);
  }

  if (qword_2813CEC48)
  {
    (*(*qword_2813CEC48 + 8))(qword_2813CEC48);
  }

  if (qword_2813CEC50)
  {
    (*(*qword_2813CEC50 + 8))(qword_2813CEC50);
  }

  if (qword_2813CEC58)
  {
    (*(*qword_2813CEC58 + 8))(qword_2813CEC58);
  }

  if (qword_2813CEC60)
  {
    (*(*qword_2813CEC60 + 8))(qword_2813CEC60);
  }

  if (qword_2813CEC68)
  {
    (*(*qword_2813CEC68 + 8))(qword_2813CEC68);
  }

  if (qword_2813CEC70)
  {
    (*(*qword_2813CEC70 + 8))(qword_2813CEC70);
  }

  if (qword_2813CEC78)
  {
    (*(*qword_2813CEC78 + 8))(qword_2813CEC78);
  }

  if (qword_2813CEC80)
  {
    (*(*qword_2813CEC80 + 8))(qword_2813CEC80);
  }

  if (qword_2813CEC88)
  {
    (*(*qword_2813CEC88 + 8))(qword_2813CEC88);
  }

  if (qword_2813CEC90)
  {
    (*(*qword_2813CEC90 + 8))(qword_2813CEC90);
  }

  if (qword_2813CEC98)
  {
    (*(*qword_2813CEC98 + 8))(qword_2813CEC98);
  }

  if (qword_2813CECA0)
  {
    (*(*qword_2813CECA0 + 8))(qword_2813CECA0);
  }

  if (qword_2813CECA8)
  {
    (*(*qword_2813CECA8 + 8))(qword_2813CECA8);
  }

  if (qword_2813CECB0)
  {
    (*(*qword_2813CECB0 + 8))(qword_2813CECB0);
  }

  if (qword_2813CECB8)
  {
    (*(*qword_2813CECB8 + 8))(qword_2813CECB8);
  }

  if (qword_2813CECC0)
  {
    (*(*qword_2813CECC0 + 8))(qword_2813CECC0);
  }

  if (qword_2813CECC8)
  {
    (*(*qword_2813CECC8 + 8))(qword_2813CECC8);
  }

  if (qword_2813CECD0)
  {
    (*(*qword_2813CECD0 + 8))(qword_2813CECD0);
  }

  if (qword_2813CECD8)
  {
    (*(*qword_2813CECD8 + 8))(qword_2813CECD8);
  }

  if (qword_2813CECE0)
  {
    (*(*qword_2813CECE0 + 8))(qword_2813CECE0);
  }

  if (qword_2813CECE8)
  {
    (*(*qword_2813CECE8 + 8))(qword_2813CECE8);
  }

  if (qword_2813CECF0)
  {
    (*(*qword_2813CECF0 + 8))(qword_2813CECF0);
  }

  if (qword_2813CECF8)
  {
    (*(*qword_2813CECF8 + 8))(qword_2813CECF8);
  }

  if (qword_2813CED00)
  {
    (*(*qword_2813CED00 + 8))(qword_2813CED00);
  }

  if (qword_2813CED08)
  {
    (*(*qword_2813CED08 + 8))(qword_2813CED08);
  }

  if (qword_2813CED10)
  {
    (*(*qword_2813CED10 + 8))(qword_2813CED10);
  }

  result = qword_2813CED18;
  if (qword_2813CED18)
  {
    v1 = *(*qword_2813CED18 + 8);

    return v1();
  }

  return result;
}

void sub_245427954(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Protobuf/Generated/GpsdProtocol.pb.cc", a4);
  sub_24539DF20();
  sub_2453EB7EC();
  sub_2453BD76C();
  operator new();
}

void sub_2454287A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v95);
  }

  v4 = *(a2 + 336);
  if (v4)
  {
    sub_2453B0370((a1 + 328), *(a1 + 336) + v4);
    memcpy((*(a1 + 328) + 4 * *(a1 + 336)), *(a2 + 328), 4 * *(a2 + 336));
    *(a1 + 336) += *(a2 + 336);
  }

  v5 = *(a2 + 360);
  if (v5)
  {
    sub_2453B0370((a1 + 352), *(a1 + 360) + v5);
    memcpy((*(a1 + 352) + 4 * *(a1 + 360)), *(a2 + 352), 4 * *(a2 + 360));
    *(a1 + 360) += *(a2 + 360);
  }

  v6 = *(a2 + 396);
  if (!v6)
  {
    goto LABEL_46;
  }

  if (v6)
  {
    v7 = *(a2 + 8);
    *(a1 + 396) |= 1u;
    *(a1 + 8) = v7;
    v6 = *(a2 + 396);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 16);
  *(a1 + 396) |= 2u;
  *(a1 + 16) = v8;
  v6 = *(a2 + 396);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_19:
  v9 = *(a2 + 20);
  if (!sub_24539CC90(v9))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5792, "::CoreGem::proto::gpsd::Request_Type_IsValid(value)");
  }

  *(a1 + 396) |= 4u;
  *(a1 + 20) = v9;
  v6 = *(a2 + 396);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_21:
  *(a1 + 396) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    sub_24539DA30();
    v11 = *(qword_2813CEEB8 + 24);
  }

  sub_24542BD3C(v10, v11);
  v6 = *(a2 + 396);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    *(a1 + 396) |= 0x20u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 40);
    if (!v15)
    {
      sub_24539DA30();
      v15 = *(qword_2813CEEB8 + 40);
    }

    sub_24542BFCC(v14, v15);
    v6 = *(a2 + 396);
    if ((v6 & 0x40) == 0)
    {
LABEL_15:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(a1 + 396) |= 0x10u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    sub_24539DA30();
    v13 = *(qword_2813CEEB8 + 32);
  }

  sub_24542BEE0(v12, v13);
  v6 = *(a2 + 396);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_36:
  *(a1 + 396) |= 0x40u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 48);
  if (!v17)
  {
    sub_24539DA30();
    v17 = *(qword_2813CEEB8 + 48);
  }

  sub_24542C1A0(v16, v17);
  v6 = *(a2 + 396);
  if ((v6 & 0x80) != 0)
  {
LABEL_41:
    *(a1 + 396) |= 0x80u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 56);
    if (!v19)
    {
      sub_24539DA30();
      v19 = *(qword_2813CEEB8 + 56);
    }

    sub_24542C234(v18, v19);
    v6 = *(a2 + 396);
  }

LABEL_46:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v6 & 0x100) != 0)
  {
    *(a1 + 396) |= 0x100u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 64);
    if (!v21)
    {
      sub_24539DA30();
      v21 = *(qword_2813CEEB8 + 64);
    }

    sub_24542C2C8(v20, v21);
    v6 = *(a2 + 396);
    if ((v6 & 0x200) == 0)
    {
LABEL_49:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  *(a1 + 396) |= 0x200u;
  v22 = *(a1 + 72);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 72);
  if (!v23)
  {
    sub_24539DA30();
    v23 = *(qword_2813CEEB8 + 72);
  }

  sub_24542C3B4(v22, v23);
  v6 = *(a2 + 396);
  if ((v6 & 0x400) == 0)
  {
LABEL_50:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(a1 + 396) |= 0x400u;
  v24 = *(a1 + 80);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 80);
  if (!v25)
  {
    sub_24539DA30();
    v25 = *(qword_2813CEEB8 + 80);
  }

  sub_24542C5EC(v24, v25);
  v6 = *(a2 + 396);
  if ((v6 & 0x800) == 0)
  {
LABEL_51:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(a1 + 396) |= 0x800u;
  v26 = *(a1 + 88);
  if (!v26)
  {
    operator new();
  }

  v27 = *(a2 + 88);
  if (!v27)
  {
    sub_24539DA30();
    v27 = *(qword_2813CEEB8 + 88);
  }

  sub_24542C764(v26, v27);
  v6 = *(a2 + 396);
  if ((v6 & 0x1000) == 0)
  {
LABEL_52:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_76:
  *(a1 + 396) |= 0x1000u;
  v28 = *(a1 + 96);
  if (!v28)
  {
    operator new();
  }

  v29 = *(a2 + 96);
  if (!v29)
  {
    sub_24539DA30();
    v29 = *(qword_2813CEEB8 + 96);
  }

  sub_24542C854(v28, v29);
  v6 = *(a2 + 396);
  if ((v6 & 0x2000) == 0)
  {
LABEL_53:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_86;
  }

LABEL_81:
  *(a1 + 396) |= 0x2000u;
  v30 = *(a1 + 104);
  if (!v30)
  {
    operator new();
  }

  v31 = *(a2 + 104);
  if (!v31)
  {
    sub_24539DA30();
    v31 = *(qword_2813CEEB8 + 104);
  }

  sub_24542C928(v30, v31);
  v6 = *(a2 + 396);
  if ((v6 & 0x4000) == 0)
  {
LABEL_54:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_91;
  }

LABEL_86:
  *(a1 + 396) |= 0x4000u;
  v32 = *(a1 + 112);
  if (!v32)
  {
    operator new();
  }

  v33 = *(a2 + 112);
  if (!v33)
  {
    sub_24539DA30();
    v33 = *(qword_2813CEEB8 + 112);
  }

  sub_24542CA34(v32, v33);
  v6 = *(a2 + 396);
  if ((v6 & 0x8000) != 0)
  {
LABEL_91:
    *(a1 + 396) |= 0x8000u;
    v34 = *(a1 + 120);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 120);
    if (!v35)
    {
      sub_24539DA30();
      v35 = *(qword_2813CEEB8 + 120);
    }

    sub_24542CB20(v34, v35);
    v6 = *(a2 + 396);
  }

LABEL_96:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v6 & 0x10000) != 0)
  {
    *(a1 + 396) |= 0x10000u;
    v36 = *(a1 + 128);
    if (!v36)
    {
      operator new();
    }

    v37 = *(a2 + 128);
    if (!v37)
    {
      sub_24539DA30();
      v37 = *(qword_2813CEEB8 + 128);
    }

    sub_24542CC50(v36, v37);
    v6 = *(a2 + 396);
    if ((v6 & 0x20000) == 0)
    {
LABEL_99:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_116;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

  *(a1 + 396) |= 0x20000u;
  v38 = *(a1 + 136);
  if (!v38)
  {
    operator new();
  }

  v39 = *(a2 + 136);
  if (!v39)
  {
    sub_24539DA30();
    v39 = *(qword_2813CEEB8 + 136);
  }

  sub_24542CD30(v38, v39);
  v6 = *(a2 + 396);
  if ((v6 & 0x40000) == 0)
  {
LABEL_100:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_121;
  }

LABEL_116:
  *(a1 + 396) |= 0x40000u;
  v40 = *(a1 + 144);
  if (!v40)
  {
    operator new();
  }

  v41 = *(a2 + 144);
  if (!v41)
  {
    sub_24539DA30();
    v41 = *(qword_2813CEEB8 + 144);
  }

  sub_24542CF04(v40, v41);
  v6 = *(a2 + 396);
  if ((v6 & 0x80000) == 0)
  {
LABEL_101:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_126;
  }

LABEL_121:
  *(a1 + 396) |= 0x80000u;
  v42 = *(a1 + 152);
  if (!v42)
  {
    operator new();
  }

  v43 = *(a2 + 152);
  if (!v43)
  {
    sub_24539DA30();
    v43 = *(qword_2813CEEB8 + 152);
  }

  sub_24542CFA8(v42, v43);
  v6 = *(a2 + 396);
  if ((v6 & 0x100000) == 0)
  {
LABEL_102:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_131;
  }

LABEL_126:
  *(a1 + 396) |= 0x100000u;
  v44 = *(a1 + 160);
  if (!v44)
  {
    operator new();
  }

  v45 = *(a2 + 160);
  if (!v45)
  {
    sub_24539DA30();
    v45 = *(qword_2813CEEB8 + 160);
  }

  sub_24542D0F4(v44, v45);
  v6 = *(a2 + 396);
  if ((v6 & 0x200000) == 0)
  {
LABEL_103:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_136;
  }

LABEL_131:
  *(a1 + 396) |= 0x200000u;
  v46 = *(a1 + 168);
  if (!v46)
  {
    operator new();
  }

  v47 = *(a2 + 168);
  if (!v47)
  {
    sub_24539DA30();
    v47 = *(qword_2813CEEB8 + 168);
  }

  sub_24542D198(v46, v47);
  v6 = *(a2 + 396);
  if ((v6 & 0x400000) == 0)
  {
LABEL_104:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_141;
  }

LABEL_136:
  *(a1 + 396) |= 0x400000u;
  v48 = *(a1 + 176);
  if (!v48)
  {
    operator new();
  }

  v49 = *(a2 + 176);
  if (!v49)
  {
    sub_24539DA30();
    v49 = *(qword_2813CEEB8 + 176);
  }

  sub_24542D25C(v48, v49);
  v6 = *(a2 + 396);
  if ((v6 & 0x800000) != 0)
  {
LABEL_141:
    *(a1 + 396) |= 0x800000u;
    v50 = *(a1 + 184);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 184);
    if (!v51)
    {
      sub_24539DA30();
      v51 = *(qword_2813CEEB8 + 184);
    }

    sub_24542D320(v50, v51);
    v6 = *(a2 + 396);
  }

LABEL_146:
  if (!HIBYTE(v6))
  {
    goto LABEL_196;
  }

  if ((v6 & 0x1000000) != 0)
  {
    *(a1 + 396) |= 0x1000000u;
    v52 = *(a1 + 192);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 192);
    if (!v53)
    {
      sub_24539DA30();
      v53 = *(qword_2813CEEB8 + 192);
    }

    sub_24542D3C4(v52, v53);
    v6 = *(a2 + 396);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_149:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_166;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_149;
  }

  *(a1 + 396) |= 0x2000000u;
  v54 = *(a1 + 200);
  if (!v54)
  {
    operator new();
  }

  v55 = *(a2 + 200);
  if (!v55)
  {
    sub_24539DA30();
    v55 = *(qword_2813CEEB8 + 200);
  }

  sub_24542D4A4(v54, v55);
  v6 = *(a2 + 396);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_150:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_171;
  }

LABEL_166:
  *(a1 + 396) |= 0x4000000u;
  v56 = *(a1 + 208);
  if (!v56)
  {
    operator new();
  }

  v57 = *(a2 + 208);
  if (!v57)
  {
    sub_24539DA30();
    v57 = *(qword_2813CEEB8 + 208);
  }

  sub_24542D584(v56, v57);
  v6 = *(a2 + 396);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_151:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_176;
  }

LABEL_171:
  *(a1 + 396) |= 0x8000000u;
  v58 = *(a1 + 216);
  if (!v58)
  {
    operator new();
  }

  v59 = *(a2 + 216);
  if (!v59)
  {
    sub_24539DA30();
    v59 = *(qword_2813CEEB8 + 216);
  }

  sub_24542D8C4(v58, v59);
  v6 = *(a2 + 396);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_152:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_181;
  }

LABEL_176:
  *(a1 + 396) |= 0x10000000u;
  v60 = *(a1 + 224);
  if (!v60)
  {
    operator new();
  }

  v61 = *(a2 + 224);
  if (!v61)
  {
    sub_24539DA30();
    v61 = *(qword_2813CEEB8 + 224);
  }

  sub_24542D9F0(v60, v61);
  v6 = *(a2 + 396);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_153:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_186;
  }

LABEL_181:
  *(a1 + 396) |= 0x20000000u;
  v62 = *(a1 + 232);
  if (!v62)
  {
    operator new();
  }

  v63 = *(a2 + 232);
  if (!v63)
  {
    sub_24539DA30();
    v63 = *(qword_2813CEEB8 + 232);
  }

  sub_24542DAB4(v62, v63);
  v6 = *(a2 + 396);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_154:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_191;
  }

LABEL_186:
  *(a1 + 396) |= 0x40000000u;
  v64 = *(a1 + 240);
  if (!v64)
  {
    operator new();
  }

  v65 = *(a2 + 240);
  if (!v65)
  {
    sub_24539DA30();
    v65 = *(qword_2813CEEB8 + 240);
  }

  sub_24542DB78(v64, v65);
  if ((*(a2 + 396) & 0x80000000) != 0)
  {
LABEL_191:
    *(a1 + 396) |= 0x80000000;
    v66 = *(a1 + 248);
    if (!v66)
    {
      operator new();
    }

    v67 = *(a2 + 248);
    if (!v67)
    {
      sub_24539DA30();
      v67 = *(qword_2813CEEB8 + 248);
    }

    sub_24541F03C(v66, v67);
  }

LABEL_196:
  v68 = *(a2 + 400);
  if (!v68)
  {
    goto LABEL_240;
  }

  if (v68)
  {
    v69 = *(a2 + 256);
    *(a1 + 400) |= 1u;
    v70 = *(a1 + 256);
    if (v70 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v70, v69);
    v68 = *(a2 + 400);
    if ((v68 & 2) == 0)
    {
LABEL_199:
      if ((v68 & 4) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_214;
    }
  }

  else if ((v68 & 2) == 0)
  {
    goto LABEL_199;
  }

  *(a1 + 400) |= 2u;
  v71 = *(a1 + 264);
  if (!v71)
  {
    operator new();
  }

  v72 = *(a2 + 264);
  if (!v72)
  {
    sub_24539DA30();
    v72 = *(qword_2813CEEB8 + 264);
  }

  sub_2453F86F0(v71, v72);
  v68 = *(a2 + 400);
  if ((v68 & 4) == 0)
  {
LABEL_200:
    if ((v68 & 8) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_215;
  }

LABEL_214:
  v73 = *(a2 + 304);
  *(a1 + 400) |= 4u;
  *(a1 + 304) = v73;
  v68 = *(a2 + 400);
  if ((v68 & 8) == 0)
  {
LABEL_201:
    if ((v68 & 0x10) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_220;
  }

LABEL_215:
  *(a1 + 400) |= 8u;
  v74 = *(a1 + 272);
  if (!v74)
  {
    operator new();
  }

  v75 = *(a2 + 272);
  if (!v75)
  {
    sub_24539DA30();
    v75 = *(qword_2813CEEB8 + 272);
  }

  sub_245419784(v74, v75);
  v68 = *(a2 + 400);
  if ((v68 & 0x10) == 0)
  {
LABEL_202:
    if ((v68 & 0x20) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_225;
  }

LABEL_220:
  *(a1 + 400) |= 0x10u;
  v76 = *(a1 + 280);
  if (!v76)
  {
    operator new();
  }

  v77 = *(a2 + 280);
  if (!v77)
  {
    sub_24539DA30();
    v77 = *(qword_2813CEEB8 + 280);
  }

  sub_24541A664(v76, v77);
  v68 = *(a2 + 400);
  if ((v68 & 0x20) == 0)
  {
LABEL_203:
    if ((v68 & 0x40) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_230;
  }

LABEL_225:
  *(a1 + 400) |= 0x20u;
  v78 = *(a1 + 288);
  if (!v78)
  {
    operator new();
  }

  v79 = *(a2 + 288);
  if (!v79)
  {
    sub_24539DA30();
    v79 = *(qword_2813CEEB8 + 288);
  }

  sub_24541D870(v78, v79);
  v68 = *(a2 + 400);
  if ((v68 & 0x40) == 0)
  {
LABEL_204:
    if ((v68 & 0x80) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_235;
  }

LABEL_230:
  *(a1 + 400) |= 0x40u;
  v80 = *(a1 + 296);
  if (!v80)
  {
    operator new();
  }

  v81 = *(a2 + 296);
  if (!v81)
  {
    sub_24539DA30();
    v81 = *(qword_2813CEEB8 + 296);
  }

  sub_2454209EC(v80, v81);
  v68 = *(a2 + 400);
  if ((v68 & 0x80) != 0)
  {
LABEL_235:
    *(a1 + 400) |= 0x80u;
    v82 = *(a1 + 312);
    if (!v82)
    {
      operator new();
    }

    v83 = *(a2 + 312);
    if (!v83)
    {
      sub_24539DA30();
      v83 = *(qword_2813CEEB8 + 312);
    }

    sub_245421D94(v82, v83);
    v68 = *(a2 + 400);
  }

LABEL_240:
  if ((v68 & 0xFF00) == 0)
  {
    goto LABEL_247;
  }

  if ((v68 & 0x100) != 0)
  {
    *(a1 + 400) |= 0x100u;
    v84 = *(a1 + 320);
    if (!v84)
    {
      operator new();
    }

    v85 = *(a2 + 320);
    if (!v85)
    {
      sub_24539DA30();
      v85 = *(qword_2813CEEB8 + 320);
    }

    sub_24541E688(v84, v85);
    v68 = *(a2 + 400);
    if ((v68 & 0x400) == 0)
    {
LABEL_243:
      if ((v68 & 0x800) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_259;
    }
  }

  else if ((v68 & 0x400) == 0)
  {
    goto LABEL_243;
  }

  *(a1 + 400) |= 0x400u;
  v86 = *(a1 + 344);
  if (!v86)
  {
    operator new();
  }

  v87 = *(a2 + 344);
  if (!v87)
  {
    sub_24539DA30();
    v87 = *(qword_2813CEEB8 + 344);
  }

  sub_2453EF82C(v86, v87);
  v68 = *(a2 + 400);
  if ((v68 & 0x800) == 0)
  {
LABEL_244:
    if ((v68 & 0x2000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_260;
  }

LABEL_259:
  v88 = *(a2 + 308);
  *(a1 + 400) |= 0x800u;
  *(a1 + 308) = v88;
  v68 = *(a2 + 400);
  if ((v68 & 0x2000) == 0)
  {
LABEL_245:
    if ((v68 & 0x4000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_261;
  }

LABEL_260:
  v89 = *(a2 + 368);
  *(a1 + 400) |= 0x2000u;
  *(a1 + 368) = v89;
  v68 = *(a2 + 400);
  if ((v68 & 0x4000) == 0)
  {
LABEL_246:
    if ((v68 & 0x8000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_262;
  }

LABEL_261:
  v90 = *(a2 + 372);
  *(a1 + 400) |= 0x4000u;
  *(a1 + 372) = v90;
  v68 = *(a2 + 400);
  if ((v68 & 0x8000) == 0)
  {
LABEL_247:
    if ((v68 & 0x10000) == 0)
    {
      return;
    }

    goto LABEL_267;
  }

LABEL_262:
  *(a1 + 400) |= 0x8000u;
  v91 = *(a1 + 376);
  if (!v91)
  {
    operator new();
  }

  v92 = *(a2 + 376);
  if (!v92)
  {
    sub_24539DA30();
    v92 = *(qword_2813CEEB8 + 376);
  }

  sub_2453F4688(v91, v92);
  if ((*(a2 + 400) & 0x10000) != 0)
  {
LABEL_267:
    *(a1 + 400) |= 0x10000u;
    v93 = *(a1 + 384);
    if (!v93)
    {
      operator new();
    }

    v94 = *(a2 + 384);
    if (!v94)
    {
      sub_24539DA30();
      v94 = *(qword_2813CEEB8 + 384);
    }

    sub_2453F11D8(v93, v94);
  }
}

void sub_245429F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24542A030(uint64_t result)
{
  if (*(result + 36))
  {
    if (*(result + 36))
    {
      v1 = *(result + 8);
      if (v1)
      {
        v2 = *(v1 + 96);
        if (v2)
        {
          *(v1 + 56) = 0u;
          *(v1 + 40) = 0u;
          *(v1 + 24) = 0u;
          *(v1 + 8) = 0u;
        }

        if ((v2 & 0xFF00) != 0)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 0;
          *(v1 + 88) = 0;
        }

        *(v1 + 96) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 20) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_24542A08C(uint64_t result)
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

uint64_t sub_24542A0A4(uint64_t a1)
{
  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_24542A0D0(uint64_t a1)
{
  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_24542A0FC(uint64_t a1)
{
  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_24542A128(uint64_t result)
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

uint64_t sub_24542A140(uint64_t result)
{
  v1 = *(result + 76);
  if (v1)
  {
    *(result + 49) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 69) = 0;
    *(result + 65) = 0;
  }

  *(result + 76) = 0;
  return result;
}

uint64_t sub_24542A178(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0x400000000;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_24542A19C(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 4;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542A1B8(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 15;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24542A1D0(uint64_t result)
{
  if (*(result + 44))
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_24542A1EC(uint64_t result)
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

uint64_t sub_24542A204(uint64_t result)
{
  if (*(result + 24))
  {
    if (*(result + 24))
    {
      v1 = *(result + 8);
      if (v1 != MEMORY[0x277D82C30])
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542A250(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = *(result + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A294(uint64_t a1)
{
  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_24542A2C0(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A2D4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 1;
    *(result + 9) = 0;
    *(result + 13) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A2F4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A308(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
    *(result + 12) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A320(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A334(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24542A348(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = *(result + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A38C(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = *(result + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A3D0(uint64_t result)
{
  LOBYTE(v1) = *(result + 56);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 12) = 0;
    *(result + 48) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 16);
      if (v2)
      {
        v3 = *(v2 + 56);
        if (v3)
        {
          *(v2 + 36) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
          *(v2 + 8) = 0;
          *(v2 + 32) = 0;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 40) = 0;
          *(v2 + 48) = 0;
        }

        *(v2 + 56) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v4 = *(result + 24);
      if (v4)
      {
        if (*(v4 + 52))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 24) = 0;
        *(v4 + 40) = 0;
        *(v4 + 52) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 0x20) != 0)
    {
      v5 = *(result + 32);
      if (v5)
      {
        if ((*(v5 + 36) & 0x1FE) != 0)
        {
          *(v5 + 24) = 0;
        }

        *(v5 + 16) = 0;
        *(v5 + 36) = 0;
        v1 = *(result + 56);
      }
    }

    if ((v1 & 0x40) != 0)
    {
      v6 = *(result + 40);
      if (v6)
      {
        if (*(v6 + 20))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 20) = 0;
      }
    }
  }

  *(result + 56) = 0;
  return result;
}

uint64_t sub_24542A498(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542A4B0(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542A4C8(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24542A4DC(uint64_t result)
{
  if (*(result + 20))
  {
    v1 = *(result + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_24542A520(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 396);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 396);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_37:
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_24539DA30();
    v7 = *(qword_2813CEEB8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_40:
  v8 = *(v5 + 32);
  if (!v8)
  {
    sub_24539DA30();
    v8 = *(qword_2813CEEB8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_43:
  v9 = *(v5 + 40);
  if (!v9)
  {
    sub_24539DA30();
    v9 = *(qword_2813CEEB8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_46:
  v10 = *(v5 + 48);
  if (!v10)
  {
    sub_24539DA30();
    v10 = *(qword_2813CEEB8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_49:
  v11 = *(v5 + 56);
  if (!v11)
  {
    sub_24539DA30();
    v11 = *(qword_2813CEEB8 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_52:
  v12 = *(v5 + 64);
  if (!v12)
  {
    sub_24539DA30();
    v12 = *(qword_2813CEEB8 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_55:
  v13 = *(v5 + 72);
  if (!v13)
  {
    sub_24539DA30();
    v13 = *(qword_2813CEEB8 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v13, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_58:
  v14 = *(v5 + 80);
  if (!v14)
  {
    sub_24539DA30();
    v14 = *(qword_2813CEEB8 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_61:
  v15 = *(v5 + 88);
  if (!v15)
  {
    sub_24539DA30();
    v15 = *(qword_2813CEEB8 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v15, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_64:
  v16 = *(v5 + 96);
  if (!v16)
  {
    sub_24539DA30();
    v16 = *(qword_2813CEEB8 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v16, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_67:
  v17 = *(v5 + 104);
  if (!v17)
  {
    sub_24539DA30();
    v17 = *(qword_2813CEEB8 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_73;
  }

LABEL_70:
  v18 = *(v5 + 112);
  if (!v18)
  {
    sub_24539DA30();
    v18 = *(qword_2813CEEB8 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_73:
  v19 = *(v5 + 120);
  if (!v19)
  {
    sub_24539DA30();
    v19 = *(qword_2813CEEB8 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v19, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_76:
  v20 = *(v5 + 128);
  if (!v20)
  {
    sub_24539DA30();
    v20 = *(qword_2813CEEB8 + 128);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v20, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_79:
  v21 = *(v5 + 136);
  if (!v21)
  {
    sub_24539DA30();
    v21 = *(qword_2813CEEB8 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v21, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_82:
  v22 = *(v5 + 144);
  if (!v22)
  {
    sub_24539DA30();
    v22 = *(qword_2813CEEB8 + 144);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v22, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_85:
  v23 = *(v5 + 152);
  if (!v23)
  {
    sub_24539DA30();
    v23 = *(qword_2813CEEB8 + 152);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v23, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_91;
  }

LABEL_88:
  v24 = *(v5 + 160);
  if (!v24)
  {
    sub_24539DA30();
    v24 = *(qword_2813CEEB8 + 160);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_94;
  }

LABEL_91:
  v25 = *(v5 + 168);
  if (!v25)
  {
    sub_24539DA30();
    v25 = *(qword_2813CEEB8 + 168);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_97;
  }

LABEL_94:
  v26 = *(v5 + 176);
  if (!v26)
  {
    sub_24539DA30();
    v26 = *(qword_2813CEEB8 + 176);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_97:
  v27 = *(v5 + 184);
  if (!v27)
  {
    sub_24539DA30();
    v27 = *(qword_2813CEEB8 + 184);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_100:
  v28 = *(v5 + 192);
  if (!v28)
  {
    sub_24539DA30();
    v28 = *(qword_2813CEEB8 + 192);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_103:
  v29 = *(v5 + 200);
  if (!v29)
  {
    sub_24539DA30();
    v29 = *(qword_2813CEEB8 + 200);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_106:
  v30 = *(v5 + 208);
  if (!v30)
  {
    sub_24539DA30();
    v30 = *(qword_2813CEEB8 + 208);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_109:
  v31 = *(v5 + 216);
  if (!v31)
  {
    sub_24539DA30();
    v31 = *(qword_2813CEEB8 + 216);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_112:
  v32 = *(v5 + 224);
  if (!v32)
  {
    sub_24539DA30();
    v32 = *(qword_2813CEEB8 + 224);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v32, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_118;
  }

LABEL_115:
  v33 = *(v5 + 232);
  if (!v33)
  {
    sub_24539DA30();
    v33 = *(qword_2813CEEB8 + 232);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v33, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

LABEL_118:
  v34 = *(v5 + 240);
  if (!v34)
  {
    sub_24539DA30();
    v34 = *(qword_2813CEEB8 + 240);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v34, a2, a4);
  if ((*(v5 + 396) & 0x80000000) != 0)
  {
LABEL_121:
    v35 = *(v5 + 248);
    if (!v35)
    {
      sub_24539DA30();
      v35 = *(qword_2813CEEB8 + 248);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v35, a2, a4);
  }

LABEL_124:
  v36 = *(v5 + 400);
  if (v36)
  {
    v37 = *(v5 + 256);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v36 = *(v5 + 400);
    if ((v36 & 2) == 0)
    {
LABEL_126:
      if ((v36 & 4) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_138;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_126;
  }

  v38 = *(v5 + 264);
  if (!v38)
  {
    sub_24539DA30();
    v38 = *(qword_2813CEEB8 + 264);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3C, v38, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 4) == 0)
  {
LABEL_127:
    if ((v36 & 8) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 304), a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 8) == 0)
  {
LABEL_128:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_142;
  }

LABEL_139:
  v39 = *(v5 + 272);
  if (!v39)
  {
    sub_24539DA30();
    v39 = *(qword_2813CEEB8 + 272);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E, v39, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x10) == 0)
  {
LABEL_129:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_145;
  }

LABEL_142:
  v40 = *(v5 + 280);
  if (!v40)
  {
    sub_24539DA30();
    v40 = *(qword_2813CEEB8 + 280);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, v40, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x20) == 0)
  {
LABEL_130:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_148;
  }

LABEL_145:
  v41 = *(v5 + 288);
  if (!v41)
  {
    sub_24539DA30();
    v41 = *(qword_2813CEEB8 + 288);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x40, v41, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x40) == 0)
  {
LABEL_131:
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_151;
  }

LABEL_148:
  v42 = *(v5 + 296);
  if (!v42)
  {
    sub_24539DA30();
    v42 = *(qword_2813CEEB8 + 296);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, v42, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x80) == 0)
  {
LABEL_132:
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_154;
  }

LABEL_151:
  v43 = *(v5 + 312);
  if (!v43)
  {
    sub_24539DA30();
    v43 = *(qword_2813CEEB8 + 312);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x42, v43, a2, a4);
  if ((*(v5 + 400) & 0x100) != 0)
  {
LABEL_154:
    v44 = *(v5 + 320);
    if (!v44)
    {
      sub_24539DA30();
      v44 = *(qword_2813CEEB8 + 320);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x43, v44, a2, a4);
  }

LABEL_157:
  if (*(v5 + 336) >= 1)
  {
    v45 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(*(v5 + 328) + 4 * v45++), a2, a4);
    }

    while (v45 < *(v5 + 336));
  }

  v46 = *(v5 + 400);
  if ((v46 & 0x400) != 0)
  {
    v47 = *(v5 + 344);
    if (!v47)
    {
      sub_24539DA30();
      v47 = *(qword_2813CEEB8 + 344);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x47, v47, a2, a4);
    v46 = *(v5 + 400);
  }

  if ((v46 & 0x800) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 308), a2, a4);
  }

  if (*(v5 + 360) >= 1)
  {
    v48 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(*(v5 + 352) + 4 * v48++), a2, a4);
    }

    while (v48 < *(v5 + 360));
  }

  v49 = *(v5 + 400);
  if ((v49 & 0x2000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4A, *(v5 + 368), a2, a4);
    v49 = *(v5 + 400);
    if ((v49 & 0x4000) == 0)
    {
LABEL_171:
      if ((v49 & 0x8000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_176;
    }
  }

  else if ((v49 & 0x4000) == 0)
  {
    goto LABEL_171;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 372), a2, a4);
  v49 = *(v5 + 400);
  if ((v49 & 0x8000) == 0)
  {
LABEL_172:
    if ((v49 & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_179;
  }

LABEL_176:
  v50 = *(v5 + 376);
  if (!v50)
  {
    sub_24539DA30();
    v50 = *(qword_2813CEEB8 + 376);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4C, v50, a2, a4);
  if ((*(v5 + 400) & 0x10000) != 0)
  {
LABEL_179:
    v51 = *(v5 + 384);
    if (!v51)
    {
      sub_24539DA30();
      v51 = *(qword_2813CEEB8 + 384);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4D, v51, a2, a4);
  }

  return result;
}

uint64_t sub_24542ADF4(uint64_t a1)
{
  v2 = *(a1 + 396);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_54;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v2 = *(a1 + 396);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(a1 + 16);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(a1 + 396);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 20);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(a1 + 396);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    sub_24539DA30();
    v8 = *(qword_2813CEEB8 + 24);
  }

  v9 = sub_245432684(v8);
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
  v2 = *(a1 + 396);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_30:
  v12 = *(a1 + 32);
  if (!v12)
  {
    sub_24539DA30();
    v12 = *(qword_2813CEEB8 + 32);
  }

  v13 = sub_245432908(v12);
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
  v2 = *(a1 + 396);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_36:
  v16 = *(a1 + 40);
  if (!v16)
  {
    sub_24539DA30();
    v16 = *(qword_2813CEEB8 + 40);
  }

  v17 = sub_245433418(v16);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v3 += v18 + v19 + 1;
  v2 = *(a1 + 396);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v20 = *(a1 + 48);
  if (!v20)
  {
    sub_24539DA30();
    v20 = *(qword_2813CEEB8 + 48);
  }

  v21 = sub_2454338D4(v20);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v3 += v22 + v23 + 1;
  v2 = *(a1 + 396);
  if ((v2 & 0x80) != 0)
  {
LABEL_48:
    v24 = *(a1 + 56);
    if (!v24)
    {
      sub_24539DA30();
      v24 = *(qword_2813CEEB8 + 56);
    }

    v25 = sub_245433F14(v24);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    }

    else
    {
      v27 = 1;
    }

    v3 += v26 + v27 + 1;
    v2 = *(a1 + 396);
  }

LABEL_54:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_112;
  }

  if ((v2 & 0x100) != 0)
  {
    v28 = *(a1 + 64);
    if (!v28)
    {
      sub_24539DA30();
      v28 = *(qword_2813CEEB8 + 64);
    }

    v29 = sub_245434134(v28);
    v30 = v29;
    if (v29 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    }

    else
    {
      v31 = 1;
    }

    v3 += v30 + v31 + 1;
    v2 = *(a1 + 396);
    if ((v2 & 0x200) == 0)
    {
LABEL_57:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_76;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v32 = *(a1 + 72);
  if (!v32)
  {
    sub_24539DA30();
    v32 = *(qword_2813CEEB8 + 72);
  }

  v33 = sub_245434AF0(v32);
  v34 = v33;
  if (v33 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
  }

  else
  {
    v35 = 1;
  }

  v3 += v34 + v35 + 1;
  v2 = *(a1 + 396);
  if ((v2 & 0x400) == 0)
  {
LABEL_58:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_82;
  }

LABEL_76:
  v36 = *(a1 + 80);
  if (!v36)
  {
    sub_24539DA30();
    v36 = *(qword_2813CEEB8 + 80);
  }

  v37 = sub_2454350CC(v36);
  v38 = v37;
  if (v37 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
  }

  else
  {
    v39 = 1;
  }

  v3 += v38 + v39 + 1;
  v2 = *(a1 + 396);
  if ((v2 & 0x800) == 0)
  {
LABEL_59:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_82:
  v40 = *(a1 + 88);
  if (!v40)
  {
    sub_24539DA30();
    v40 = *(qword_2813CEEB8 + 88);
  }

  v41 = sub_24543556C(v40);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
  }

  else
  {
    v43 = 1;
  }

  v3 += v42 + v43 + 1;
  v2 = *(a1 + 396);
  if ((v2 & 0x1000) == 0)
  {
LABEL_60:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_94;
  }

LABEL_88:
  v44 = *(a1 + 96);
  if (!v44)
  {
    sub_24539DA30();
    v44 = *(qword_2813CEEB8 + 96);
  }

  v45 = sub_2454358D4(v44);
  v46 = v45;
  if (v45 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
  }

  else
  {
    v47 = 1;
  }

  v3 += v46 + v47 + 1;
  v2 = *(a1 + 396);
  if ((v2 & 0x2000) == 0)
  {
LABEL_61:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_100;
  }

LABEL_94:
  v48 = *(a1 + 104);
  if (!v48)
  {
    sub_24539DA30();
    v48 = *(qword_2813CEEB8 + 104);
  }

  v49 = sub_245435DAC(v48);
  v50 = v49;
  if (v49 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
  }

  else
  {
    v51 = 1;
  }

  v3 += v50 + v51 + 1;
  v2 = *(a1 + 396);
  if ((v2 & 0x4000) == 0)
  {
LABEL_62:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_106;
  }

LABEL_100:
  v52 = *(a1 + 112);
  if (!v52)
  {
    sub_24539DA30();
    v52 = *(qword_2813CEEB8 + 112);
  }

  v53 = sub_245436218(v52);
  v54 = v53;
  if (v53 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
  }

  else
  {
    v55 = 1;
  }

  v3 += v54 + v55 + 1;
  v2 = *(a1 + 396);
  if ((v2 & 0x8000) != 0)
  {
LABEL_106:
    v56 = *(a1 + 120);
    if (!v56)
    {
      sub_24539DA30();
      v56 = *(qword_2813CEEB8 + 120);
    }

    v57 = sub_245431790(v56);
    v58 = v57;
    if (v57 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
    }

    else
    {
      v59 = 1;
    }

    v3 += v58 + v59 + 2;
    v2 = *(a1 + 396);
  }

LABEL_112:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_171;
  }

  if ((v2 & 0x10000) != 0)
  {
    v60 = *(a1 + 128);
    if (!v60)
    {
      sub_24539DA30();
      v60 = *(qword_2813CEEB8 + 128);
    }

    v61 = sub_245431B78(v60);
    v62 = v61;
    if (v61 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
    }

    else
    {
      v63 = 1;
    }

    v3 += v62 + v63 + 2;
    v2 = *(a1 + 396);
    if ((v2 & 0x20000) == 0)
    {
LABEL_115:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_134;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_115;
  }

  v64 = *(a1 + 136);
  if (!v64)
  {
    sub_24539DA30();
    v64 = *(qword_2813CEEB8 + 136);
  }

  v65 = sub_245432434(v64);
  v66 = v65;
  if (v65 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
  }

  else
  {
    v67 = 1;
  }

  v3 += v66 + v67 + 2;
  v2 = *(a1 + 396);
  if ((v2 & 0x40000) == 0)
  {
LABEL_116:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_142;
  }

LABEL_134:
  v68 = *(a1 + 144);
  if (!v68)
  {
    sub_24539DA30();
    v68 = *(qword_2813CEEB8 + 144);
  }

  if ((*(v68 + 20) & 1) == 0)
  {
    v69 = 0;
    *(v68 + 16) = 0;
LABEL_139:
    v71 = 1;
    goto LABEL_141;
  }

  v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v68 + 8));
  v69 = v70 + 1;
  *(v68 + 16) = v70 + 1;
  if ((v70 + 1) < 0x80)
  {
    goto LABEL_139;
  }

  v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v70 + 1));
LABEL_141:
  v3 += v71 + v69 + 2;
  v2 = *(a1 + 396);
  if ((v2 & 0x80000) == 0)
  {
LABEL_117:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_145;
  }

LABEL_142:
  v72 = *(a1 + 152);
  if (!v72)
  {
    sub_24539DA30();
    v72 = *(qword_2813CEEB8 + 152);
  }

  v3 += sub_245431334(v72) + 3;
  v2 = *(a1 + 396);
  if ((v2 & 0x100000) == 0)
  {
LABEL_118:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_153;
  }

LABEL_145:
  v73 = *(a1 + 160);
  if (!v73)
  {
    sub_24539DA30();
    v73 = *(qword_2813CEEB8 + 160);
  }

  if ((*(v73 + 20) & 1) == 0)
  {
    v74 = 0;
    *(v73 + 16) = 0;
LABEL_150:
    v76 = 1;
    goto LABEL_152;
  }

  v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v73 + 8));
  v74 = v75 + 1;
  *(v73 + 16) = v75 + 1;
  if ((v75 + 1) < 0x80)
  {
    goto LABEL_150;
  }

  v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v75 + 1));
LABEL_152:
  v3 += v76 + v74 + 2;
  v2 = *(a1 + 396);
  if ((v2 & 0x200000) == 0)
  {
LABEL_119:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_159;
  }

LABEL_153:
  v77 = *(a1 + 168);
  if (!v77)
  {
    sub_24539DA30();
    v77 = *(qword_2813CEEB8 + 168);
  }

  v78 = sub_245436A30(v77);
  v79 = v78;
  if (v78 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78);
  }

  else
  {
    v80 = 1;
  }

  v3 += v79 + v80 + 2;
  v2 = *(a1 + 396);
  if ((v2 & 0x400000) == 0)
  {
LABEL_120:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_165;
  }

LABEL_159:
  v81 = *(a1 + 176);
  if (!v81)
  {
    sub_24539DA30();
    v81 = *(qword_2813CEEB8 + 176);
  }

  v82 = sub_245436E24(v81);
  v83 = v82;
  if (v82 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82);
  }

  else
  {
    v84 = 1;
  }

  v3 += v83 + v84 + 2;
  v2 = *(a1 + 396);
  if ((v2 & 0x800000) != 0)
  {
LABEL_165:
    v85 = *(a1 + 184);
    if (!v85)
    {
      sub_24539DA30();
      v85 = *(qword_2813CEEB8 + 184);
    }

    if (*(v85 + 16))
    {
      v86 = 2 * (*(v85 + 16) & 1);
    }

    else
    {
      v86 = 0;
    }

    *(v85 + 12) = v86;
    v3 += v86 + 3;
    v2 = *(a1 + 396);
  }

LABEL_171:
  if (!HIBYTE(v2))
  {
    goto LABEL_229;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v87 = *(a1 + 192);
    if (!v87)
    {
      sub_24539DA30();
      v87 = *(qword_2813CEEB8 + 192);
    }

    v88 = sub_245437898(v87);
    v89 = v88;
    if (v88 >= 0x80)
    {
      v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88);
    }

    else
    {
      v90 = 1;
    }

    v3 += v89 + v90 + 2;
    v2 = *(a1 + 396);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_174:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_193;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_174;
  }

  v91 = *(a1 + 200);
  if (!v91)
  {
    sub_24539DA30();
    v91 = *(qword_2813CEEB8 + 200);
  }

  v92 = sub_245437C38(v91);
  v93 = v92;
  if (v92 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92);
  }

  else
  {
    v94 = 1;
  }

  v3 += v93 + v94 + 2;
  v2 = *(a1 + 396);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_175:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_199;
  }

LABEL_193:
  v95 = *(a1 + 208);
  if (!v95)
  {
    sub_24539DA30();
    v95 = *(qword_2813CEEB8 + 208);
  }

  v96 = sub_24543C5B8(v95);
  v97 = v96;
  if (v96 >= 0x80)
  {
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96);
  }

  else
  {
    v98 = 1;
  }

  v3 += v97 + v98 + 2;
  v2 = *(a1 + 396);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_176:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_205;
  }

LABEL_199:
  v99 = *(a1 + 216);
  if (!v99)
  {
    sub_24539DA30();
    v99 = *(qword_2813CEEB8 + 216);
  }

  v100 = sub_24543E644(v99);
  v101 = v100;
  if (v100 >= 0x80)
  {
    v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100);
  }

  else
  {
    v102 = 1;
  }

  v3 += v101 + v102 + 2;
  v2 = *(a1 + 396);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_177:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_211;
  }

LABEL_205:
  v103 = *(a1 + 224);
  if (!v103)
  {
    sub_24539DA30();
    v103 = *(qword_2813CEEB8 + 224);
  }

  v104 = sub_245436608(v103);
  v105 = v104;
  if (v104 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104);
  }

  else
  {
    v106 = 1;
  }

  v3 += v105 + v106 + 2;
  v2 = *(a1 + 396);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_178:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_217;
  }

LABEL_211:
  v107 = *(a1 + 232);
  if (!v107)
  {
    sub_24539DA30();
    v107 = *(qword_2813CEEB8 + 232);
  }

  if (*(v107 + 16))
  {
    v108 = 2 * (*(v107 + 16) & 1) + (*(v107 + 16) & 2);
  }

  else
  {
    v108 = 0;
  }

  *(v107 + 12) = v108;
  v3 += v108 + 3;
  v2 = *(a1 + 396);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_179:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_223;
  }

LABEL_217:
  v109 = *(a1 + 240);
  if (!v109)
  {
    sub_24539DA30();
    v109 = *(qword_2813CEEB8 + 240);
  }

  v110 = sub_245431F18(v109);
  v111 = v110;
  if (v110 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110);
  }

  else
  {
    v112 = 1;
  }

  v3 += v111 + v112 + 2;
  if ((*(a1 + 396) & 0x80000000) != 0)
  {
LABEL_223:
    v113 = *(a1 + 248);
    if (!v113)
    {
      sub_24539DA30();
      v113 = *(qword_2813CEEB8 + 248);
    }

    v114 = sub_24541F96C(v113);
    v115 = v114;
    if (v114 >= 0x80)
    {
      v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114);
    }

    else
    {
      v116 = 1;
    }

    v3 += v115 + v116 + 2;
  }

LABEL_229:
  v117 = *(a1 + 400);
  if (!v117)
  {
    goto LABEL_288;
  }

  if (v117)
  {
    v118 = *(a1 + 256);
    v119 = *(v118 + 23);
    v120 = v119;
    v121 = *(v118 + 8);
    if ((v119 & 0x80u) == 0)
    {
      v122 = *(v118 + 23);
    }

    else
    {
      v122 = v121;
    }

    if (v122 >= 0x80)
    {
      v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122);
      v119 = *(v118 + 23);
      v121 = *(v118 + 8);
      v117 = *(a1 + 400);
      v120 = *(v118 + 23);
    }

    else
    {
      v123 = 1;
    }

    if (v120 < 0)
    {
      v119 = v121;
    }

    v3 += v123 + v119 + 2;
    if ((v117 & 2) == 0)
    {
LABEL_232:
      if ((v117 & 4) == 0)
      {
        goto LABEL_233;
      }

      goto LABEL_254;
    }
  }

  else if ((v117 & 2) == 0)
  {
    goto LABEL_232;
  }

  v124 = *(a1 + 264);
  if (!v124)
  {
    sub_24539DA30();
    v124 = *(qword_2813CEEB8 + 264);
  }

  v125 = sub_2453F952C(v124);
  v126 = v125;
  if (v125 >= 0x80)
  {
    v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125);
  }

  else
  {
    v127 = 1;
  }

  v3 += v126 + v127 + 2;
  v117 = *(a1 + 400);
  if ((v117 & 4) == 0)
  {
LABEL_233:
    if ((v117 & 8) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_258;
  }

LABEL_254:
  v128 = *(a1 + 304);
  if (v128 >= 0x80)
  {
    v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128) + 2;
    v117 = *(a1 + 400);
  }

  else
  {
    v129 = 3;
  }

  v3 += v129;
  if ((v117 & 8) == 0)
  {
LABEL_234:
    if ((v117 & 0x10) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_264;
  }

LABEL_258:
  v130 = *(a1 + 272);
  if (!v130)
  {
    sub_24539DA30();
    v130 = *(qword_2813CEEB8 + 272);
  }

  v131 = sub_24541A394(v130);
  v132 = v131;
  if (v131 >= 0x80)
  {
    v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131);
  }

  else
  {
    v133 = 1;
  }

  v3 += v132 + v133 + 2;
  v117 = *(a1 + 400);
  if ((v117 & 0x10) == 0)
  {
LABEL_235:
    if ((v117 & 0x20) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_270;
  }

LABEL_264:
  v134 = *(a1 + 280);
  if (!v134)
  {
    sub_24539DA30();
    v134 = *(qword_2813CEEB8 + 280);
  }

  v135 = sub_24541B294(v134);
  v136 = v135;
  if (v135 >= 0x80)
  {
    v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135);
  }

  else
  {
    v137 = 1;
  }

  v3 += v136 + v137 + 2;
  v117 = *(a1 + 400);
  if ((v117 & 0x20) == 0)
  {
LABEL_236:
    if ((v117 & 0x40) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_276;
  }

LABEL_270:
  v138 = *(a1 + 288);
  if (!v138)
  {
    sub_24539DA30();
    v138 = *(qword_2813CEEB8 + 288);
  }

  v139 = sub_24541E06C(v138);
  v140 = v139;
  if (v139 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139);
  }

  else
  {
    v141 = 1;
  }

  v3 += v140 + v141 + 2;
  v117 = *(a1 + 400);
  if ((v117 & 0x40) == 0)
  {
LABEL_237:
    if ((v117 & 0x80) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_282;
  }

LABEL_276:
  v142 = *(a1 + 296);
  if (!v142)
  {
    sub_24539DA30();
    v142 = *(qword_2813CEEB8 + 296);
  }

  v143 = sub_2454216C8(v142);
  v144 = v143;
  if (v143 >= 0x80)
  {
    v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143);
  }

  else
  {
    v145 = 1;
  }

  v3 += v144 + v145 + 2;
  v117 = *(a1 + 400);
  if ((v117 & 0x80) != 0)
  {
LABEL_282:
    v146 = *(a1 + 312);
    if (!v146)
    {
      sub_24539DA30();
      v146 = *(qword_2813CEEB8 + 312);
    }

    v147 = sub_2454223F8(v146);
    v148 = v147;
    if (v147 >= 0x80)
    {
      v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147);
    }

    else
    {
      v149 = 1;
    }

    v3 += v148 + v149 + 2;
    v117 = *(a1 + 400);
  }

LABEL_288:
  if ((v117 & 0xFF00) == 0)
  {
    goto LABEL_323;
  }

  if ((v117 & 0x100) == 0)
  {
    if ((v117 & 0x400) == 0)
    {
      goto LABEL_291;
    }

LABEL_299:
    v154 = *(a1 + 344);
    if (!v154)
    {
      sub_24539DA30();
      v154 = *(qword_2813CEEB8 + 344);
    }

    v155 = sub_2453F0234(v154);
    v156 = v155;
    if (v155 >= 0x80)
    {
      v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155);
    }

    else
    {
      v157 = 1;
    }

    v3 += v156 + v157 + 2;
    v117 = *(a1 + 400);
    if ((v117 & 0x800) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_305;
  }

  v150 = *(a1 + 320);
  if (!v150)
  {
    sub_24539DA30();
    v150 = *(qword_2813CEEB8 + 320);
  }

  v151 = sub_24541ED88(v150);
  v152 = v151;
  if (v151 >= 0x80)
  {
    v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151);
  }

  else
  {
    v153 = 1;
  }

  v3 += v152 + v153 + 2;
  v117 = *(a1 + 400);
  if ((v117 & 0x400) != 0)
  {
    goto LABEL_299;
  }

LABEL_291:
  if ((v117 & 0x800) != 0)
  {
LABEL_305:
    v158 = *(a1 + 308);
    if (v158 >= 0x80)
    {
      v159 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v158) + 2;
      v117 = *(a1 + 400);
    }

    else
    {
      v159 = 3;
    }

    v3 += v159;
  }

LABEL_309:
  if ((v117 & 0x2000) != 0)
  {
    v3 += 3;
  }

  if ((v117 & 0x4000) != 0)
  {
    v160 = *(a1 + 372);
    if (v160 >= 0x80)
    {
      v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v160) + 2;
      v117 = *(a1 + 400);
    }

    else
    {
      v161 = 3;
    }

    v3 += v161;
  }

  if ((v117 & 0x8000) != 0)
  {
    v162 = *(a1 + 376);
    if (!v162)
    {
      sub_24539DA30();
      v162 = *(qword_2813CEEB8 + 376);
    }

    v163 = sub_2453F5368(v162);
    v164 = v163;
    if (v163 >= 0x80)
    {
      v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v163);
    }

    else
    {
      v165 = 1;
    }

    v3 += v164 + v165 + 2;
    v117 = *(a1 + 400);
  }

LABEL_323:
  if ((v117 & 0x10000) != 0)
  {
    v166 = *(a1 + 384);
    if (!v166)
    {
      sub_24539DA30();
      v166 = *(qword_2813CEEB8 + 384);
    }

    v167 = sub_2453F18C4(v166);
    v168 = v167;
    if (v167 >= 0x80)
    {
      v169 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167);
    }

    else
    {
      v169 = 1;
    }

    v3 += v168 + v169 + 2;
  }

  v170 = *(a1 + 336);
  if (v170 < 1)
  {
    v172 = 0;
  }

  else
  {
    v171 = 0;
    v172 = 0;
    do
    {
      v173 = *(*(a1 + 328) + 4 * v171);
      if (v173 >= 0x80)
      {
        v174 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v173);
        v170 = *(a1 + 336);
      }

      else
      {
        v174 = 1;
      }

      v172 += v174;
      ++v171;
    }

    while (v171 < v170);
  }

  v175 = *(a1 + 360);
  if (v175 < 1)
  {
    v177 = 0;
  }

  else
  {
    v176 = 0;
    v177 = 0;
    do
    {
      v178 = *(*(a1 + 352) + 4 * v176);
      if (v178 >= 0x80)
      {
        v179 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v178);
        v175 = *(a1 + 360);
      }

      else
      {
        v179 = 1;
      }

      v177 += v179;
      ++v176;
    }

    while (v176 < v175);
  }

  result = (v172 + v3 + v177 + 2 * (v175 + v170));
  *(a1 + 392) = result;
  return result;
}

void sub_24542BC98(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A080, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454287A4(a1, lpsrc);
}

void sub_24542BD3C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(a1 + 36) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        sub_24539DA30();
        v6 = *(qword_2813CEEC0 + 8);
      }

      sub_2453B6ED0(v5, v6);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      if (v7 >= 4)
      {
        __assert_rtn("set_position_assist_type", "GpsdProtocol.pb.h", 9398, "::CoreGem::proto::gnss::PositionAssistType_IsValid(value)");
      }

      *(a1 + 36) |= 2u;
      *(a1 + 16) = v7;
      v4 = *(a2 + 36);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 20);
      *(a1 + 36) |= 4u;
      *(a1 + 20) = v8;
      v4 = *(a2 + 36);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 24);
      *(a1 + 36) |= 8u;
      *(a1 + 24) = v9;
    }
  }
}

void sub_24542BEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542BEE0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v6 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 36);
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

    v7 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v7;
    if ((*(a2 + 36) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = v5;
  }
}

void sub_24542BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542BFCC(unsigned int *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = a1[4];
  v5 = *(a2 + 16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
  LODWORD(v6) = *(a2 + 16);
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

      v8 = *(*(a2 + 8) + 8 * v7);
      v9 = a1[5];
      v10 = a1[4];
      if (v10 >= v9)
      {
        if (v9 == a1[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
          v9 = a1[5];
        }

        a1[5] = v9 + 1;
        operator new();
      }

      v11 = *(a1 + 1);
      a1[4] = v10 + 1;
      sub_2453B9954(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 16);
    }

    while (v7 < v6);
  }
}

void sub_24542C180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C1A0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  sub_2454339F8((a1 + 8), a2 + 8);
}

void sub_24542C21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C234(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  sub_2454339F8((a1 + 8), a2 + 8);
}

void sub_24542C2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_24542C2C8(uint64_t a1, uint64_t a2)
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

void sub_24542C39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C3B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 76);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 76) |= 1u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 76);
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

  v8 = *(a2 + 16);
  *(a1 + 76) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 76);
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
  v9 = *(a2 + 24);
  *(a1 + 76) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 76);
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
  *(a1 + 76) |= 8u;
  *(a1 + 64) = v10;
  v4 = *(a2 + 76);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v12 = *(a2 + 40);
    *(a1 + 76) |= 0x20u;
    *(a1 + 40) = v12;
    v4 = *(a2 + 76);
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
  v11 = *(a2 + 32);
  *(a1 + 76) |= 0x10u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 76);
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
  v13 = *(a2 + 48);
  *(a1 + 76) |= 0x40u;
  *(a1 + 48) = v13;
  v4 = *(a2 + 76);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 76) |= 0x80u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 76);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 65);
    *(a1 + 76) |= 0x100u;
    *(a1 + 65) = v14;
    v4 = *(a2 + 76);
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
  *(a1 + 76) |= 0x200u;
  *(a1 + 66) = v15;
  v4 = *(a2 + 76);
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
  *(a1 + 76) |= 0x400u;
  *(a1 + 67) = v16;
  v4 = *(a2 + 76);
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
  *(a1 + 76) |= 0x800u;
  *(a1 + 68) = v17;
  if ((*(a2 + 76) & 0x1000) == 0)
  {
    return;
  }

LABEL_19:
  v6 = *(a2 + 69);
  *(a1 + 76) |= 0x1000u;
  *(a1 + 69) = v6;
}

void sub_24542C5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C5EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      if (v6 >= 0xA)
      {
        __assert_rtn("set_context", "GpsdProtocol.pb.h", 10060, "::CoreGem::proto::gnss::MotionActivityContext_IsValid(value)");
      }

      *(a1 + 32) |= 2u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 32);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 20);
      if (v7 >= 5)
      {
        __assert_rtn("set_moving_state", "GpsdProtocol.pb.h", 10083, "::CoreGem::proto::gnss::MovingState_IsValid(value)");
      }

      *(a1 + 32) |= 4u;
      *(a1 + 20) = v7;
      v4 = *(a2 + 32);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 24);
      if (!sub_24539CC50(v8))
      {
        __assert_rtn("set_motion_reliability", "GpsdProtocol.pb.h", 10106, "::CoreGem::proto::gnss::Reliability_IsValid(value)");
      }

      *(a1 + 32) |= 8u;
      *(a1 + 24) = v8;
    }
  }
}

void sub_24542C74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C764(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      if ((v6 - 1) >= 4)
      {
        __assert_rtn("set_mount_state", "GpsdProtocol.pb.h", 10155, "::CoreGem::proto::gnss::DeviceMountState_IsValid(value)");
      }

      *(a1 + 24) |= 2u;
      *(a1 + 16) = v6;
    }
  }
}

void sub_24542C83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542C854(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    if (v4 >= 7 && v4 != 15)
    {
      __assert_rtn("set_signal_environment_type", "GpsdProtocol.pb.h", 10182, "::CoreGem::proto::gnss::SignalEnvironmentType_IsValid(value)");
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_24542C910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_24542C928(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v6 = *(a2 + 8);
      *(a1 + 44) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 44);
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

    result = *(a2 + 16);
    *(a1 + 44) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 44);
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
    result = *(a2 + 24);
    *(a1 + 44) |= 4u;
    *(a1 + 24) = result;
    if ((*(a2 + 44) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 32);
    *(a1 + 44) |= 8u;
    *(a1 + 32) = result;
  }

  return result;
}

void sub_24542CA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_24542CA34(uint64_t a1, uint64_t a2)
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

void sub_24542CB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CB20(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      v6 = *(a1 + 8);
      if (v6 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      if (v7 >= 3)
      {
        __assert_rtn("set_compression_type", "GpsdProtocol.pb.h", 9152, "::CoreGem::proto::gpsd::CompressionType_IsValid(value)");
      }

      *(a1 + 24) |= 2u;
      *(a1 + 16) = v7;
    }
  }
}

void sub_24542CC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CC50(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24542CD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CD30(unsigned int *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = a1[4];
  v5 = *(a2 + 16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
  LODWORD(v6) = *(a2 + 16);
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

      v8 = *(*(a2 + 8) + 8 * v7);
      v9 = a1[5];
      v10 = a1[4];
      if (v10 >= v9)
      {
        if (v9 == a1[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
          v9 = a1[5];
        }

        a1[5] = v9 + 1;
        operator new();
      }

      v11 = *(a1 + 1);
      a1[4] = v10 + 1;
      sub_2453BA410(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 16);
    }

    while (v7 < v6);
  }
}

void sub_24542CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CF04(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_24542CF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542CFA8(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = a2[20];
  if (v4)
  {
    if (a2[20])
    {
      v6 = a2[8];
      *(a1 + 20) |= 1u;
      *(a1 + 8) = v6;
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

    else if ((a2[20] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 20) |= 2u;
    *(a1 + 9) = v7;
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
    v8 = a2[10];
    *(a1 + 20) |= 4u;
    *(a1 + 10) = v8;
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
    v9 = a2[11];
    *(a1 + 20) |= 8u;
    *(a1 + 11) = v9;
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
    v10 = a2[12];
    *(a1 + 20) |= 0x10u;
    *(a1 + 12) = v10;
    if ((*(a2 + 5) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = a2[13];
    *(a1 + 20) |= 0x20u;
    *(a1 + 13) = v5;
  }
}

void sub_24542D0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D0F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_24542D180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D198(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      *(a1 + 20) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(a1 + 20) |= 2u;
      *(a1 + 12) = v6;
    }
  }
}

void sub_24542D244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D25C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
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
      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_24542D308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D320(uint64_t a1, uint64_t a2)
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

void sub_24542D3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D3C4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24542D48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D4A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24542D56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D584(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
    *(a1 + 56) |= 1u;
    *(a1 + 8) = v5;
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

  v6 = *(a2 + 12);
  *(a1 + 56) |= 2u;
  *(a1 + 12) = v6;
  v4 = *(a2 + 56);
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
  v7 = *(a2 + 48);
  if (v7 >= 5)
  {
    __assert_rtn("set_info_type", "GpsdProtocol.pb.h", 11602, "::CoreGem::proto::gpsd::LtlInfoType_IsValid(value)");
  }

  *(a1 + 56) |= 4u;
  *(a1 + 48) = v7;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    *(a1 + 56) |= 0x10u;
    v10 = *(a1 + 24);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 24);
    if (!v11)
    {
      sub_24539DA30();
      v11 = *(qword_2813CECD8 + 24);
    }

    sub_245439648(v10, v11);
    v4 = *(a2 + 56);
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
  *(a1 + 56) |= 8u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    sub_24539DA30();
    v9 = *(qword_2813CECD8 + 16);
  }

  sub_24543AE60(v8, v9);
  v4 = *(a2 + 56);
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
  *(a1 + 56) |= 0x20u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    sub_24539DA30();
    v13 = *(qword_2813CECD8 + 32);
  }

  sub_24543A180(v12, v13);
  if ((*(a2 + 56) & 0x40) != 0)
  {
LABEL_31:
    *(a1 + 56) |= 0x40u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 40);
    if (!v15)
    {
      sub_24539DA30();
      v15 = *(qword_2813CECD8 + 40);
    }

    sub_24543A954(v14, v15);
  }
}

void sub_24542D8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D8C4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      *(a1 + 24) |= 1u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 24);
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
    *(a1 + 24) |= 2u;
    *(a1 + 17) = v7;
    v4 = *(a2 + 24);
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
    *(a1 + 24) |= 4u;
    *(a1 + 18) = v8;
    v4 = *(a2 + 24);
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
    v9 = *(a2 + 8);
    *(a1 + 24) |= 8u;
    *(a1 + 8) = v9;
    if ((*(a2 + 24) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 19);
    *(a1 + 24) |= 0x10u;
    *(a1 + 19) = v5;
  }
}

void sub_24542D9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542D9F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = v6;
    }
  }
}

void sub_24542DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542DAB4(uint64_t a1, _BYTE *a2)
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

void sub_24542DB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542DB78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 8);
    *(a1 + 20) |= 1u;
    v5 = *(a1 + 8);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_24542DC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542DC68(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v5 = *(a2 + 16);
      if (!sub_24539CC90(v5))
      {
        __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7665, "::CoreGem::proto::gpsd::Request_Type_IsValid(value)");
      }

      *(a1 + 28) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      *(a1 + 28) |= 2u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 28);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 20);
      if (v7 >= 0xA)
      {
        __assert_rtn("set_result_code", "GpsdProtocol.pb.h", 7710, "::CoreGem::proto::gnss::Result_IsValid(value)");
      }

      *(a1 + 28) |= 4u;
      *(a1 + 20) = v7;
    }
  }
}

void sub_24542DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24542DDA4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858CE0;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24542DE00(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24542DDA4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24542DE84(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_24542DE98(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          v11 = *(this + 1);
          v9 = *(this + 2);
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
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
        if (!result)
        {
          return result;
        }

        v8 = v18;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (sub_24539CC90(v8))
      {
        *(a1 + 28) |= 1u;
        *(a1 + 16) = v8;
      }

      v12 = *(this + 1);
      v9 = *(this + 2);
      if (v12 < v9 && *v12 == 16)
      {
        v10 = v12 + 1;
        *(this + 1) = v10;
LABEL_27:
        if (v10 >= v9 || (v13 = *v10, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v13;
          v14 = v10 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 28) |= 2u;
        if (v14 < v9 && *v14 == 24)
        {
          v11 = v14 + 1;
          *(this + 1) = v11;
LABEL_35:
          v17 = 0;
          if (v11 >= v9 || (v15 = *v11, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17);
            if (!result)
            {
              return result;
            }

            v15 = v17;
          }

          else
          {
            *(this + 1) = v11 + 1;
          }

          if (v15 <= 9)
          {
            *(a1 + 28) |= 4u;
            *(a1 + 20) = v15;
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

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_27;
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

uint64_t sub_24542E0B8(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
  v6 = *(v5 + 28);
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
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
}

uint64_t sub_24542E144(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v2 = *(a1 + 28);
    goto LABEL_12;
  }

  v4 = *(a1 + 16);
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
    v2 = *(a1 + 28);
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
    v5 = *(a1 + 20);
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
  *(a1 + 24) = v3;
  return v3;
}

void sub_24542E208(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_28585A098, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24542DC68(a1, lpsrc);
}

uint64_t sub_24542E2C4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285858D58;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v3 = MEMORY[0x277D82C30];
  *(a1 + 120) = 0;
  *(a1 + 128) = v3;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  sub_24542E360(a1, a2);
  return a1;
}

void sub_24542E360(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v56);
  }

  v4 = *(a2 + 216);
  if (!v4)
  {
    goto LABEL_46;
  }

  if (v4)
  {
    v5 = *(a2 + 8);
    if (v5 > 0x1B || ((1 << v5) & 0xFDFFE3F) == 0)
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 7737, "::CoreGem::proto::gpsd::Indication_Type_IsValid(value)");
    }

    *(a1 + 216) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 216);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 12);
    if (!sub_24539CC90(v7))
    {
      __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7760, "::CoreGem::proto::gpsd::Request_Type_IsValid(value)");
    }

    *(a1 + 216) |= 2u;
    *(a1 + 12) = v7;
    v4 = *(a2 + 216);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 16);
    *(a1 + 216) |= 4u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 216);
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

  *(a1 + 216) |= 8u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    sub_24539DA30();
    v10 = *(qword_2813CEEC8 + 24);
  }

  sub_2453B7E74(v9, v10);
  v4 = *(a2 + 216);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_31:
    *(a1 + 216) |= 0x20u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 40);
    if (!v14)
    {
      sub_24539DA30();
      v14 = *(qword_2813CEEC8 + 40);
    }

    sub_2453BABD8(v13, v14);
    v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x10u;
  v11 = *(a1 + 32);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 32);
  if (!v12)
  {
    sub_24539DA30();
    v12 = *(qword_2813CEEC8 + 32);
  }

  sub_2453DAA40(v11, v12);
  v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x40u;
  v15 = *(a1 + 48);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 48);
  if (!v16)
  {
    sub_24539DA30();
    v16 = *(qword_2813CEEC8 + 48);
  }

  sub_245430134(v15, v16);
  v4 = *(a2 + 216);
  if ((v4 & 0x80) != 0)
  {
LABEL_41:
    *(a1 + 216) |= 0x80u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 56);
    if (!v18)
    {
      sub_24539DA30();
      v18 = *(qword_2813CEEC8 + 56);
    }

    sub_2453B9018(v17, v18);
    v4 = *(a2 + 216);
  }

LABEL_46:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_90;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 216) |= 0x100u;
    v19 = *(a1 + 64);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 64);
    if (!v20)
    {
      sub_24539DA30();
      v20 = *(qword_2813CEEC8 + 64);
    }

    sub_245430260(v19, v20);
    v4 = *(a2 + 216);
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

  *(a1 + 216) |= 0x200u;
  v21 = *(a1 + 72);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 72);
  if (!v22)
  {
    sub_24539DA30();
    v22 = *(qword_2813CEEC8 + 72);
  }

  sub_2454304C0(v21, v22);
  v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x400u;
  v23 = *(a1 + 80);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 80);
  if (!v24)
  {
    sub_24539DA30();
    v24 = *(qword_2813CEEC8 + 80);
  }

  sub_2453BB7C0(v23, v24);
  v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x800u;
  v25 = *(a1 + 88);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 88);
  if (!v26)
  {
    sub_24539DA30();
    v26 = *(qword_2813CEEC8 + 88);
  }

  sub_2453BB2EC(v25, v26);
  v4 = *(a2 + 216);
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
  v27 = *(a2 + 96);
  if (v27 >= 0xA)
  {
    __assert_rtn("set_start_status", "GpsdProtocol.pb.h", 8183, "::CoreGem::proto::gnss::Result_IsValid(value)");
  }

  *(a1 + 216) |= 0x1000u;
  *(a1 + 96) = v27;
  v4 = *(a2 + 216);
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
  v28 = *(a2 + 100);
  if (v28 >= 0xA)
  {
    __assert_rtn("set_stop_status", "GpsdProtocol.pb.h", 8206, "::CoreGem::proto::gnss::Result_IsValid(value)");
  }

  *(a1 + 216) |= 0x2000u;
  *(a1 + 100) = v28;
  v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x4000u;
  v29 = *(a1 + 104);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 104);
  if (!v30)
  {
    sub_24539DA30();
    v30 = *(qword_2813CEEC8 + 104);
  }

  sub_24543058C(v29, v30);
  v4 = *(a2 + 216);
  if ((v4 & 0x8000) != 0)
  {
LABEL_85:
    *(a1 + 216) |= 0x8000u;
    v31 = *(a1 + 112);
    if (!v31)
    {
      operator new();
    }

    v32 = *(a2 + 112);
    if (!v32)
    {
      sub_24539DA30();
      v32 = *(qword_2813CEEC8 + 112);
    }

    sub_245430678(v31, v32);
    v4 = *(a2 + 216);
  }

LABEL_90:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_138;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 216) |= 0x10000u;
    v33 = *(a1 + 120);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 120);
    if (!v34)
    {
      sub_24539DA30();
      v34 = *(qword_2813CEEC8 + 120);
    }

    sub_2453EBDF0(v33, v34);
    v4 = *(a2 + 216);
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

  v35 = *(a2 + 128);
  *(a1 + 216) |= 0x20000u;
  v36 = *(a1 + 128);
  if (v36 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v36, v35);
  v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x40000u;
  v37 = *(a1 + 136);
  if (!v37)
  {
    operator new();
  }

  v38 = *(a2 + 136);
  if (!v38)
  {
    sub_24539DA30();
    v38 = *(qword_2813CEEC8 + 136);
  }

  sub_24540946C(v37, v38);
  v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x80000u;
  v39 = *(a1 + 144);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 144);
  if (!v40)
  {
    sub_24539DA30();
    v40 = *(qword_2813CEEC8 + 144);
  }

  sub_24540EEF8(v39, v40);
  v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x100000u;
  v41 = *(a1 + 152);
  if (!v41)
  {
    operator new();
  }

  v42 = *(a2 + 152);
  if (!v42)
  {
    sub_24539DA30();
    v42 = *(qword_2813CEEC8 + 152);
  }

  sub_245414FBC(v41, v42);
  v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x200000u;
  v43 = *(a1 + 160);
  if (!v43)
  {
    operator new();
  }

  v44 = *(a2 + 160);
  if (!v44)
  {
    sub_24539DA30();
    v44 = *(qword_2813CEEC8 + 160);
  }

  sub_245421988(v43, v44);
  v4 = *(a2 + 216);
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
  *(a1 + 216) |= 0x400000u;
  v45 = *(a1 + 168);
  if (!v45)
  {
    operator new();
  }

  v46 = *(a2 + 168);
  if (!v46)
  {
    sub_24539DA30();
    v46 = *(qword_2813CEEC8 + 168);
  }

  sub_245425380(v45, v46);
  v4 = *(a2 + 216);
  if ((v4 & 0x800000) != 0)
  {
LABEL_133:
    *(a1 + 216) |= 0x800000u;
    v47 = *(a1 + 176);
    if (!v47)
    {
      operator new();
    }

    v48 = *(a2 + 176);
    if (!v48)
    {
      sub_24539DA30();
      v48 = *(qword_2813CEEC8 + 176);
    }

    sub_2453F5638(v47, v48);
    v4 = *(a2 + 216);
  }

LABEL_138:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(a1 + 216) |= 0x1000000u;
    v52 = *(a1 + 184);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 184);
    if (!v53)
    {
      sub_24539DA30();
      v53 = *(qword_2813CEEC8 + 184);
    }

    sub_2453F375C(v52, v53);
    v4 = *(a2 + 216);
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

  v54 = *(a2 + 192);
  *(a1 + 216) |= 0x2000000u;
  *(a1 + 192) = v54;
  v4 = *(a2 + 216);
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
  v55 = *(a2 + 196);
  if (v55 >= 3 && v55 != 4)
  {
    __assert_rtn("set_supl_init_decode_result", "GpsdProtocol.pb.h", 8741, "::CoreGem::proto::gpsd::SuplInitDecodeResult_IsValid(value)");
  }

  *(a1 + 216) |= 0x4000000u;
  *(a1 + 196) = v55;
  v4 = *(a2 + 216);
  if ((v4 & 0x8000000) == 0)
  {
    goto LABEL_144;
  }

LABEL_143:
  v49 = *(a2 + 208);
  *(a1 + 216) |= 0x8000000u;
  *(a1 + 208) = v49;
  v4 = *(a2 + 216);
LABEL_144:
  if ((v4 & 0x10000000) != 0)
  {
    *(a1 + 216) |= 0x10000000u;
    v50 = *(a1 + 200);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 200);
    if (!v51)
    {
      sub_24539DA30();
      v51 = *(qword_2813CEEC8 + 200);
    }

    sub_2453F0454(v50, v51);
  }
}

void sub_24542F144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24542F1EC(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 23) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_24542F204(uint64_t result)
{
  v1 = result;
  if ((*(result + 44) & 2) != 0)
  {
    v2 = *(result + 32);
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

  if (*(result + 16) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 8) + 8 * v3);
      result = (*(*v4 + 32))(v4);
      ++v3;
    }

    while (v3 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  *(v1 + 44) = 0;
  return result;
}

uint64_t sub_24542F29C(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_24542F2B0(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24542F2C8(uint64_t result)
{
  v1 = *(result + 36);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(result + 24);
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

  *(result + 36) = 0;
  return result;
}

uint64_t sub_24542F314(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 216);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
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
    sub_24539DA30();
    v7 = *(qword_2813CEEC8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
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
    sub_24539DA30();
    v8 = *(qword_2813CEEC8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
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
    sub_24539DA30();
    v9 = *(qword_2813CEEC8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
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
    sub_24539DA30();
    v10 = *(qword_2813CEEC8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v10, a2, a4);
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
    sub_24539DA30();
    v11 = *(qword_2813CEEC8 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v11, a2, a4);
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
    sub_24539DA30();
    v12 = *(qword_2813CEEC8 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v12, a2, a4);
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
    sub_24539DA30();
    v13 = *(qword_2813CEEC8 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v13, a2, a4);
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
    sub_24539DA30();
    v14 = *(qword_2813CEEC8 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v14, a2, a4);
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
    sub_24539DA30();
    v15 = *(qword_2813CEEC8 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v15, a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 100), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 96), a2, a4);
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
    sub_24539DA30();
    v16 = *(qword_2813CEEC8 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v16, a2, a4);
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
    sub_24539DA30();
    v17 = *(qword_2813CEEC8 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v17, a2, a4);
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
    sub_24539DA30();
    v18 = *(qword_2813CEEC8 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v18, a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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
    sub_24539DA30();
    v20 = *(qword_2813CEEC8 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x28, v20, a2, a4);
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
    sub_24539DA30();
    v21 = *(qword_2813CEEC8 + 144);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x29, v21, a2, a4);
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
    sub_24539DA30();
    v22 = *(qword_2813CEEC8 + 152);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2A, v22, a2, a4);
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
    sub_24539DA30();
    v23 = *(qword_2813CEEC8 + 160);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2B, v23, a2, a4);
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
    sub_24539DA30();
    v24 = *(qword_2813CEEC8 + 168);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2C, v24, a2, a4);
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
    sub_24539DA30();
    v25 = *(qword_2813CEEC8 + 176);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v25, a2, a4);
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
    sub_24539DA30();
    v26 = *(qword_2813CEEC8 + 184);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x33, v26, a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 192), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_96:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 208), a2, a4);
    if ((*(v5 + 216) & 0x10000000) == 0)
    {
      return result;
    }

    goto LABEL_97;
  }

LABEL_95:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x35, *(v5 + 196), a2, a4);
  v6 = *(v5 + 216);
  if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_96;
  }

LABEL_29:
  if ((v6 & 0x10000000) == 0)
  {
    return result;
  }

LABEL_97:
  v27 = *(v5 + 200);
  if (!v27)
  {
    sub_24539DA30();
    v27 = *(qword_2813CEEC8 + 200);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x37, v27, a2, a4);
}

uint64_t sub_24542F808(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_57;
  }

  if (v2)
  {
    v4 = *(a1 + 8);
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
      v2 = *(a1 + 216);
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

  v5 = *(a1 + 12);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 216);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
    v2 = *(a1 + 216);
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

  v7 = *(a1 + 24);
  if (!v7)
  {
    sub_24539DA30();
    v7 = *(qword_2813CEEC8 + 24);
  }

  v8 = sub_2453B8358(v7);
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
  v2 = *(a1 + 216);
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
  v11 = *(a1 + 32);
  if (!v11)
  {
    sub_24539DA30();
    v11 = *(qword_2813CEEC8 + 32);
  }

  v12 = sub_2453DC140(v11);
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
  v2 = *(a1 + 216);
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
  v15 = *(a1 + 40);
  if (!v15)
  {
    sub_24539DA30();
    v15 = *(qword_2813CEEC8 + 40);
  }

  v16 = sub_2453BB198(v15);
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
  v2 = *(a1 + 216);
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
  v19 = *(a1 + 48);
  if (!v19)
  {
    sub_24539DA30();
    v19 = *(qword_2813CEEC8 + 48);
  }

  v20 = sub_245430C68(v19);
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
  v2 = *(a1 + 216);
  if ((v2 & 0x80) != 0)
  {
LABEL_51:
    v23 = *(a1 + 56);
    if (!v23)
    {
      sub_24539DA30();
      v23 = *(qword_2813CEEC8 + 56);
    }

    v24 = sub_2453B97A4(v23);
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
    v2 = *(a1 + 216);
  }

LABEL_57:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_115;
  }

  if ((v2 & 0x100) != 0)
  {
    v27 = *(a1 + 64);
    if (!v27)
    {
      sub_24539DA30();
      v27 = *(qword_2813CEEC8 + 64);
    }

    v28 = sub_24543918C(v27);
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
    v2 = *(a1 + 216);
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

  v31 = *(a1 + 72);
  if (!v31)
  {
    sub_24539DA30();
    v31 = *(qword_2813CEEC8 + 72);
  }

  v32 = sub_245439530(v31);
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
  v2 = *(a1 + 216);
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
  v35 = *(a1 + 80);
  if (!v35)
  {
    sub_24539DA30();
    v35 = *(qword_2813CEEC8 + 80);
  }

  v36 = sub_2453BBD30(v35);
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
  v2 = *(a1 + 216);
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
  v39 = *(a1 + 88);
  if (!v39)
  {
    sub_24539DA30();
    v39 = *(qword_2813CEEC8 + 88);
  }

  v40 = sub_2453BB6AC(v39);
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
  v2 = *(a1 + 216);
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
  v43 = *(a1 + 96);
  if ((v43 & 0x80000000) != 0)
  {
    v44 = 12;
  }

  else if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v2 = *(a1 + 216);
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
  v45 = *(a1 + 100);
  if ((v45 & 0x80000000) != 0)
  {
    v46 = 12;
  }

  else if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v2 = *(a1 + 216);
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
  v47 = *(a1 + 104);
  if (!v47)
  {
    sub_24539DA30();
    v47 = *(qword_2813CEEC8 + 104);
  }

  v48 = sub_24543CBE4(v47);
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
  v2 = *(a1 + 216);
  if ((v2 & 0x8000) != 0)
  {
LABEL_109:
    v51 = *(a1 + 112);
    if (!v51)
    {
      sub_24539DA30();
      v51 = *(qword_2813CEEC8 + 112);
    }

    v52 = sub_24543D144(v51);
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
    v2 = *(a1 + 216);
  }

LABEL_115:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_176;
  }

  if ((v2 & 0x10000) != 0)
  {
    v55 = *(a1 + 120);
    if (!v55)
    {
      sub_24539DA30();
      v55 = *(qword_2813CEEC8 + 120);
    }

    v56 = sub_2453ECDE0(v55);
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
    v2 = *(a1 + 216);
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

  v59 = *(a1 + 128);
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
    v2 = *(a1 + 216);
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
  v65 = *(a1 + 136);
  if (!v65)
  {
    sub_24539DA30();
    v65 = *(qword_2813CEEC8 + 136);
  }

  v66 = sub_24540A420(v65);
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
  v2 = *(a1 + 216);
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
  v69 = *(a1 + 144);
  if (!v69)
  {
    sub_24539DA30();
    v69 = *(qword_2813CEEC8 + 144);
  }

  v70 = sub_24540FB38(v69);
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
  v2 = *(a1 + 216);
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
  v73 = *(a1 + 152);
  if (!v73)
  {
    sub_24539DA30();
    v73 = *(qword_2813CEEC8 + 152);
  }

  v74 = sub_245415AB0(v73);
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
  v2 = *(a1 + 216);
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
  v77 = *(a1 + 160);
  if (!v77)
  {
    sub_24539DA30();
    v77 = *(qword_2813CEEC8 + 160);
  }

  v78 = sub_245421C7C(v77);
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
  v2 = *(a1 + 216);
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
  v81 = *(a1 + 168);
  if (!v81)
  {
    sub_24539DA30();
    v81 = *(qword_2813CEEC8 + 168);
  }

  v82 = sub_245426008(v81);
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
  v2 = *(a1 + 216);
  if ((v2 & 0x800000) != 0)
  {
LABEL_170:
    v85 = *(a1 + 176);
    if (!v85)
    {
      sub_24539DA30();
      v85 = *(qword_2813CEEC8 + 176);
    }

    v86 = sub_2453F6700(v85);
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
    v2 = *(a1 + 216);
  }

LABEL_176:
  if (!HIBYTE(v2))
  {
    goto LABEL_209;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v89 = *(a1 + 184);
    if (!v89)
    {
      sub_24539DA30();
      v89 = *(qword_2813CEEC8 + 184);
    }

    v90 = sub_2453F43AC(v89);
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
    v2 = *(a1 + 216);
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

  v93 = *(a1 + 192);
  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
    v2 = *(a1 + 216);
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
    v97 = *(a1 + 208);
    if (v97 >= 0x80)
    {
      v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
      v2 = *(a1 + 216);
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
  v95 = *(a1 + 196);
  if ((v95 & 0x80000000) != 0)
  {
    v96 = 12;
  }

  else if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
    v2 = *(a1 + 216);
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
  v99 = *(a1 + 200);
  if (!v99)
  {
    sub_24539DA30();
    v99 = *(qword_2813CEEC8 + 200);
  }

  v100 = sub_2453F0818(v99);
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
  *(a1 + 212) = v3;
  return v3;
}