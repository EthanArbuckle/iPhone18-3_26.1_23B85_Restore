uint64_t sub_245409008(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
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
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 == 2)
        {
          goto LABEL_23;
        }

LABEL_13:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
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

      if (v8 <= 5)
      {
        *(a1 + 24) |= 1u;
        *(a1 + 16) = v8;
      }

      v10 = *(this + 1);
    }

    while (v10 >= *(this + 2) || *v10 != 18);
    *(this + 1) = v10 + 1;
LABEL_23:
    *(a1 + 24) |= 2u;
    v11 = *(a1 + 8);
    if (!v11)
    {
      operator new();
    }

    v19 = 0;
    v12 = *(this + 1);
    if (v12 >= *(this + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
      {
        return 0;
      }
    }

    else
    {
      v19 = *v12;
      *(this + 1) = v12 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2454084CC(v11, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
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

uint64_t sub_245409264(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF38 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2454092E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 24))
    {
      v4 = *(a1 + 16);
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
        if ((*(a1 + 24) & 2) == 0)
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
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453EB7EC();
      v5 = *(qword_2813CEF38 + 8);
    }

    v6 = sub_245408B10(v5);
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
  }

  else
  {
    v3 = 0;
  }

LABEL_19:
  *(a1 + 20) = v3;
  return v3;
}

void sub_2454093B0(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858820, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245408D48(a1, lpsrc);
}

void sub_24540946C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 8);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 19813, "::CoreGem::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(a1 + 64) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 64);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 12);
    *(a1 + 64) |= 2u;
    *(a1 + 12) = v7;
    v4 = *(a2 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(a1 + 64) |= 4u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEF60 + 16);
  }

  sub_2453F8094(v8, v9);
  v4 = *(a2 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_22:
  *(a1 + 64) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEF60 + 24);
  }

  sub_2453FC30C(v10, v11);
  v4 = *(a2 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_32:
    *(a1 + 64) |= 0x20u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 40);
    if (!v15)
    {
      sub_2453EB7EC();
      v15 = *(qword_2813CEF60 + 40);
    }

    sub_245405EDC(v14, v15);
    v4 = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_27:
  *(a1 + 64) |= 0x10u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    sub_2453EB7EC();
    v13 = *(qword_2813CEF60 + 32);
  }

  sub_245400728(v12, v13);
  v4 = *(a2 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_37:
  *(a1 + 64) |= 0x40u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 48);
  if (!v17)
  {
    sub_2453EB7EC();
    v17 = *(qword_2813CEF60 + 48);
  }

  sub_245408D48(v16, v17);
  if ((*(a2 + 64) & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 56);
    *(a1 + 64) |= 0x80u;
    *(a1 + 56) = v6;
  }
}

void sub_24540980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245409824(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856EE0;
  sub_2453EB7EC();
  if (qword_2813CEF60 != a1)
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

    v5 = *(a1 + 5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(a1 + 6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540996C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245409824(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245409A00(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 64);
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
        v2 = *(result + 64);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_2453FC610(result);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_245406164(result);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(v1 + 48);
      if (result)
      {
        result = sub_245408FC8(result);
      }
    }

    *(v1 + 56) = 0;
  }

  *(v1 + 64) = 0;
  return result;
}

uint64_t sub_245409AB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v6 == 5)
            {
              if (v7 == 2)
              {
                goto LABEL_80;
              }
            }

            else if (v6 == 6 && v7 == 2)
            {
              goto LABEL_94;
            }

            goto LABEL_34;
          }

          if (v6 != 7)
          {
            if (v6 == 8 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_122;
            }

            goto LABEL_34;
          }

          if (v7 != 2)
          {
            goto LABEL_34;
          }

LABEL_108:
          *(a1 + 64) |= 0x40u;
          v48 = *(a1 + 48);
          if (!v48)
          {
            operator new();
          }

          v57 = 0;
          v49 = *(this + 1);
          if (v49 >= *(this + 2) || *v49 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57))
            {
              return 0;
            }
          }

          else
          {
            v57 = *v49;
            *(this + 1) = v49 + 1;
          }

          v50 = *(this + 14);
          v51 = *(this + 15);
          *(this + 14) = v50 + 1;
          if (v50 >= v51)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245409008(v48, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v52 = *(this + 14);
          v24 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v24)
          {
            *(this + 14) = v53;
          }

          v54 = *(this + 1);
          v10 = *(this + 2);
          if (v54 < v10 && *v54 == 64)
          {
            v11 = v54 + 1;
            *(this + 1) = v11;
LABEL_122:
            v57 = 0;
            if (v11 >= v10 || (v55 = *v11, (v55 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57);
              if (!result)
              {
                return result;
              }

              v55 = v57;
              v56 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v56 = v11 + 1;
              *(this + 1) = v56;
            }

            *(a1 + 56) = v55;
            *(a1 + 64) |= 0x80u;
            if (v56 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 != 3)
        {
          if (v6 == 4 && v7 == 2)
          {
            goto LABEL_66;
          }

          goto LABEL_34;
        }

        if (v7 != 2)
        {
          goto LABEL_34;
        }

        v14 = *(a1 + 64);
LABEL_52:
        *(a1 + 64) = v14 | 4;
        v19 = *(a1 + 16);
        if (!v19)
        {
          operator new();
        }

        v57 = 0;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57))
          {
            return 0;
          }
        }

        else
        {
          v57 = *v20;
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
        if (!sub_2453F82C0(v19, this) || *(this + 36) != 1)
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
        if (v26 < *(this + 2) && *v26 == 34)
        {
          *(this + 1) = v26 + 1;
LABEL_66:
          *(a1 + 64) |= 8u;
          v27 = *(a1 + 24);
          if (!v27)
          {
            operator new();
          }

          v57 = 0;
          v28 = *(this + 1);
          if (v28 >= *(this + 2) || *v28 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57))
            {
              return 0;
            }
          }

          else
          {
            v57 = *v28;
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
          if (!sub_2453FC648(v27, this) || *(this + 36) != 1)
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

          v33 = *(this + 1);
          if (v33 < *(this + 2) && *v33 == 42)
          {
            *(this + 1) = v33 + 1;
LABEL_80:
            *(a1 + 64) |= 0x10u;
            v34 = *(a1 + 32);
            if (!v34)
            {
              operator new();
            }

            v57 = 0;
            v35 = *(this + 1);
            if (v35 >= *(this + 2) || *v35 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57))
              {
                return 0;
              }
            }

            else
            {
              v57 = *v35;
              *(this + 1) = v35 + 1;
            }

            v36 = *(this + 14);
            v37 = *(this + 15);
            *(this + 14) = v36 + 1;
            if (v36 >= v37)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2454009C0(v34, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v38 = *(this + 14);
            v24 = __OFSUB__(v38, 1);
            v39 = v38 - 1;
            if (v39 < 0 == v24)
            {
              *(this + 14) = v39;
            }

            v40 = *(this + 1);
            if (v40 < *(this + 2) && *v40 == 50)
            {
              *(this + 1) = v40 + 1;
LABEL_94:
              *(a1 + 64) |= 0x20u;
              v41 = *(a1 + 40);
              if (!v41)
              {
                operator new();
              }

              v57 = 0;
              v42 = *(this + 1);
              if (v42 >= *(this + 2) || *v42 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57))
                {
                  return 0;
                }
              }

              else
              {
                v57 = *v42;
                *(this + 1) = v42 + 1;
              }

              v43 = *(this + 14);
              v44 = *(this + 15);
              *(this + 14) = v43 + 1;
              if (v43 >= v44)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
              if (!sub_2454061A4(v41, this) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v45 = *(this + 14);
              v24 = __OFSUB__(v45, 1);
              v46 = v45 - 1;
              if (v46 < 0 == v24)
              {
                *(this + 14) = v46;
              }

              v47 = *(this + 1);
              if (v47 < *(this + 2) && *v47 == 58)
              {
                *(this + 1) = v47 + 1;
                goto LABEL_108;
              }
            }
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v57 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57);
        if (!result)
        {
          return result;
        }

        v13 = v57;
      }

      else
      {
        *(this + 1) = v12 + 1;
      }

      if (v13 <= 8)
      {
        *(a1 + 64) |= 1u;
        *(a1 + 8) = v13;
      }

      v16 = *(this + 1);
      v8 = *(this + 2);
      if (v16 < v8 && *v16 == 16)
      {
        v9 = v16 + 1;
        *(this + 1) = v9;
LABEL_44:
        v57 = 0;
        if (v9 >= v8 || (v17 = *v9, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57);
          if (!result)
          {
            return result;
          }

          v17 = v57;
          v18 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v18 = v9 + 1;
          *(this + 1) = v18;
        }

        *(a1 + 12) = v17;
        v14 = *(a1 + 64) | 2;
        *(a1 + 64) = v14;
        if (v18 < v8 && *v18 == 26)
        {
          *(this + 1) = v18 + 1;
          goto LABEL_52;
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_44;
    }

LABEL_34:
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

uint64_t sub_24540A2A4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 64);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 64);
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
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF60 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
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

LABEL_15:
  v8 = *(v5 + 24);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEF60 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 32);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEF60 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_21:
  v10 = *(v5 + 40);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEF60 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 48);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEF60 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  if ((*(v5 + 64) & 0x80) != 0)
  {
LABEL_27:
    v12 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v12, a2, a4);
  }

  return result;
}

uint64_t sub_24540A420(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 64);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_62;
  }

  if (*(a1 + 64))
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
      v2 = *(a1 + 64);
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
    if ((*(a1 + 64) & 2) == 0)
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
    v2 = *(a1 + 64);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF60 + 16);
    }

    v8 = sub_2453F8560(v7);
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
    v2 = *(a1 + 64);
    if ((v2 & 8) == 0)
    {
LABEL_21:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEF60 + 24);
  }

  v12 = sub_2453FCB5C(v11);
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
  v2 = *(a1 + 64);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_38:
  v15 = *(a1 + 32);
  if (!v15)
  {
    sub_2453EB7EC();
    v15 = *(qword_2813CEF60 + 32);
  }

  v16 = sub_245400E0C(v15);
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
  v2 = *(a1 + 64);
  if ((v2 & 0x20) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_44:
  v19 = *(a1 + 40);
  if (!v19)
  {
    sub_2453EB7EC();
    v19 = *(qword_2813CEF60 + 40);
  }

  v20 = sub_245406488(v19);
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
  v2 = *(a1 + 64);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_50:
  v23 = *(a1 + 48);
  if (!v23)
  {
    sub_2453EB7EC();
    v23 = *(qword_2813CEF60 + 48);
  }

  v24 = sub_2454092E4(v23);
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
  if ((*(a1 + 64) & 0x80) != 0)
  {
LABEL_56:
    v27 = *(a1 + 56);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    }

    else
    {
      v28 = 2;
    }

    v3 = (v28 + v3);
  }

LABEL_62:
  *(a1 + 60) = v3;
  return v3;
}

void sub_24540A69C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858838, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540946C(a1, lpsrc);
}

void sub_24540A758(_DWORD *a1, _DWORD *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = a2[12];
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = a2[2];
    a1[12] |= 1u;
    a1[2] = v7;
    v4 = a2[12];
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = a2[3];
  a1[12] |= 2u;
  a1[3] = v8;
  v4 = a2[12];
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = a2[4];
  a1[12] |= 4u;
  a1[4] = v9;
  v4 = a2[12];
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = a2[5];
  a1[12] |= 8u;
  a1[5] = v10;
  v4 = a2[12];
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    v12 = a2[7];
    a1[12] |= 0x20u;
    a1[7] = v12;
    v4 = a2[12];
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_20:
  v11 = a2[6];
  if (v11 >= 6)
  {
    __assert_rtn("set_multi_path", "GnssEmergencyTypes.pb.h", 20182, "::CoreGem::proto::gnss::Emergency::MultipathIndicator_IsValid(value)");
  }

  a1[12] |= 0x10u;
  a1[6] = v11;
  v4 = a2[12];
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_23:
  v13 = a2[8];
  a1[12] |= 0x40u;
  a1[8] = v13;
  v4 = a2[12];
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = a2[9];
    a1[12] |= 0x80u;
    a1[9] = v5;
    v4 = a2[12];
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = a2[10];
    a1[12] |= 0x100u;
    a1[10] = v6;
  }
}

void sub_24540A914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540A92C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856F58;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540A988(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540A92C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540AA18(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 40) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_24540AA44(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v6 != 3)
            {
              if (v6 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(this + 1);
            v9 = *(this + 2);
LABEL_54:
            if (v16 >= v9 || (v22 = *v16, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v23 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              a1[4] = v22;
              v23 = v16 + 1;
              *(this + 1) = v23;
            }

            a1[12] |= 4u;
            if (v23 < v9 && *v23 == 32)
            {
              v11 = v23 + 1;
              *(this + 1) = v11;
LABEL_62:
              if (v11 >= v9 || (v24 = *v11, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
                if (!result)
                {
                  return result;
                }

                v25 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                a1[5] = v24;
                v25 = v11 + 1;
                *(this + 1) = v25;
              }

              a1[12] |= 8u;
              if (v25 < v9 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(this + 1) = v18;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v37 = 0;
            v13 = *(this + 1);
            v9 = *(this + 2);
            if (v13 >= v9 || (v14 = *v13, (v14 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37);
              if (!result)
              {
                return result;
              }

              v14 = v37;
              v15 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v15 = v13 + 1;
              *(this + 1) = v15;
            }

            a1[2] = v14;
            a1[12] |= 1u;
            if (v15 < v9 && *v15 == 16)
            {
              v10 = v15 + 1;
              *(this + 1) = v10;
LABEL_46:
              if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
                if (!result)
                {
                  return result;
                }

                v21 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                a1[3] = v20;
                v21 = v10 + 1;
                *(this + 1) = v21;
              }

              a1[12] |= 2u;
              if (v21 < v9 && *v21 == 24)
              {
                v16 = v21 + 1;
                *(this + 1) = v16;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 != 5)
        {
          if (v6 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v12 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_80;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(this + 1);
        v9 = *(this + 2);
LABEL_70:
        v38 = 0;
        if (v18 >= v9 || (v26 = *v18, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38);
          if (!result)
          {
            return result;
          }

          v26 = v38;
        }

        else
        {
          *(this + 1) = v18 + 1;
        }

        if (v26 <= 5)
        {
          a1[12] |= 0x10u;
          a1[6] = v26;
        }

        v27 = *(this + 1);
        v7 = *(this + 2);
        if (v27 < v7 && *v27 == 48)
        {
          v12 = v27 + 1;
          *(this + 1) = v12;
LABEL_80:
          if (v12 >= v7 || (v28 = *v12, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
            if (!result)
            {
              return result;
            }

            v29 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            a1[7] = v28;
            v29 = v12 + 1;
            *(this + 1) = v29;
          }

          a1[12] |= 0x20u;
          if (v29 < v7 && *v29 == 56)
          {
            v17 = v29 + 1;
            *(this + 1) = v17;
LABEL_88:
            if (v17 >= v7 || (v30 = *v17, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
              if (!result)
              {
                return result;
              }

              v31 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              a1[8] = v30;
              v31 = v17 + 1;
              *(this + 1) = v31;
            }

            a1[12] |= 0x40u;
            if (v31 < v7 && *v31 == 64)
            {
              v19 = v31 + 1;
              *(this + 1) = v19;
              goto LABEL_96;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_88;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(this + 1);
      v7 = *(this + 2);
LABEL_96:
      if (v19 >= v7 || (v32 = *v19, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
        if (!result)
        {
          return result;
        }

        v33 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[9] = v32;
        v33 = v19 + 1;
        *(this + 1) = v33;
      }

      a1[12] |= 0x80u;
      if (v33 < v7 && *v33 == 72)
      {
        v8 = v33 + 1;
        *(this + 1) = v8;
LABEL_104:
        if (v8 >= v7 || (v34 = *v8, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[10] = v34;
          v35 = v8 + 1;
          *(this + 1) = v35;
        }

        a1[12] |= 0x100u;
        if (v35 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 9 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_104;
    }

LABEL_37:
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

unsigned int *sub_24540AF08(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[12];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, result[2], a2, a4);
    v6 = v5[12];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v5[6], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
    if ((v5[12] & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[12];
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
  v7 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t sub_24540B03C(unsigned int *a1)
{
  v2 = a1[12];
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (v2)
  {
    v4 = a1[2];
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = a1[12];
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v5 = a1[3];
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = a1[12];
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_18:
  if ((v2 & 4) != 0)
  {
    v7 = a1[4];
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = a1[12];
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v9 = a1[5];
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = a1[12];
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_34:
  v11 = a1[6];
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = a1[12];
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_40:
  v13 = a1[7];
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = a1[12];
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_44:
  v15 = a1[8];
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = a1[12];
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x80) == 0)
  {
LABEL_24:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v17 = a1[9];
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = a1[12];
  }

  else
  {
    v18 = 2;
  }

  v3 = (v18 + v3);
  if ((v2 & 0x100) != 0)
  {
LABEL_52:
    v19 = a1[10];
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    }

    else
    {
      v20 = 2;
    }

    v3 = (v20 + v3);
  }

LABEL_56:
  a1[11] = v3;
  return v3;
}

void sub_24540B224(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858850, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540A758(a1, lpsrc);
}

void sub_24540B2E0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = a1[6];
  v5 = *(a2 + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4));
  LODWORD(v6) = *(a2 + 24);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
      }

      v8 = *(*(a2 + 16) + 8 * v7);
      v9 = a1[7];
      v10 = a1[6];
      if (v10 >= v9)
      {
        if (v9 == a1[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4));
          v9 = a1[7];
        }

        a1[7] = v9 + 1;
        operator new();
      }

      v11 = *(a1 + 2);
      a1[6] = v10 + 1;
      sub_24540A758(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 24);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 48);
  if (v12)
  {
    if (*(a2 + 48))
    {
      v14 = *(a2 + 8);
      a1[12] |= 1u;
      a1[2] = v14;
      v12 = *(a2 + 48);
      if ((v12 & 2) == 0)
      {
LABEL_16:
        if ((v12 & 4) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_16;
    }

    v15 = *(a2 + 12);
    a1[12] |= 2u;
    a1[3] = v15;
    if ((*(a2 + 48) & 4) == 0)
    {
      return;
    }

LABEL_17:
    v13 = *(a2 + 40);
    a1[12] |= 4u;
    a1[10] = v13;
  }
}

void sub_24540B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540B520(uint64_t a1)
{
  *a1 = &unk_285856FD0;
  sub_2453EB7EC();
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    MEMORY[0x245D6A0A0](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540B5E8(uint64_t a1)
{
  sub_24540B520(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540B678(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 8) = 0;
    *(a1 + 40) = 0;
  }

  result = sub_2453DC6D0(a1 + 16);
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_24540B6B4(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }

          goto LABEL_20;
        }

        if (v6 != 4 || v7 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v19 = a1[7];
          v20 = a1[6];
          if (v20 >= v19)
          {
            if (v19 == a1[8])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4));
              v19 = a1[7];
            }

            a1[7] = v19 + 1;
            operator new();
          }

          v21 = *(a1 + 2);
          a1[6] = v20 + 1;
          v22 = *(v21 + 8 * v20);
          v30 = 0;
          v23 = *(this + 1);
          if (v23 >= *(this + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v23;
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
          if (!sub_24540AA44(v22, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v26 = *(this + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(this + 14) = v28;
          }

          v18 = *(this + 1);
          v29 = *(this + 2);
          if (v18 < v29 && *v18 == 34)
          {
LABEL_44:
            *(this + 1) = v18 + 1;
            continue;
          }

          break;
        }

        if (v18 == v29 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(this + 1);
      v8 = *(this + 2);
      if (v10 >= v8 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[2] = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      a1[12] |= 1u;
      if (v12 < v8 && *v12 == 16)
      {
        v9 = v12 + 1;
        *(this + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[3] = v15;
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        a1[12] |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(this + 1) = v13;
LABEL_37:
          if (v13 >= v8 || (v17 = *v13, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[10] = v17;
            v18 = v13 + 1;
            *(this + 1) = v18;
          }

          a1[12] |= 4u;
          if (v18 < v8 && *v18 == 34)
          {
            goto LABEL_44;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
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

uint64_t sub_24540BA44(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 48) & 4) != 0)
  {
LABEL_4:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  }

LABEL_5:
  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

uint64_t sub_24540BAF8(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 48);
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
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 48);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 40);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
  }

LABEL_19:
  v9 = *(a1 + 24);
  v10 = (v9 + v3);
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_24540B03C(*(*(a1 + 16) + 8 * v11));
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      }

      else
      {
        v14 = 1;
      }

      v10 = (v13 + v10 + v14);
      ++v11;
    }

    while (v11 < *(a1 + 24));
  }

  *(a1 + 44) = v10;
  return v10;
}

void sub_24540BC0C(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858868, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540B2E0(a1, lpsrc);
}

void sub_24540BCC8(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 16);
      if (v5 >= 7)
      {
        __assert_rtn("set_ganss_id", "GnssEmergencyTypes.pb.h", 20392, "::CoreGem::proto::gnss::Emergency::GanssId_IsValid(value)");
      }

      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 24) |= 2u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEAF8 + 8);
      }

      sub_24540B2E0(v6, v7);
    }
  }
}

void sub_24540BE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540BE28(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857048;
  sub_2453EB7EC();
  if (qword_2813CEAF8 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540BEC0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540BE28(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540BF48(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    *(result + 16) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 8) = 0;
          *(v3 + 40) = 0;
        }

        result = sub_2453DC6D0(v3 + 16);
        *(v3 + 48) = 0;
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_24540BFA0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
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
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 == 2)
        {
          goto LABEL_23;
        }

LABEL_13:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
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

      if (v8 <= 6)
      {
        *(a1 + 24) |= 1u;
        *(a1 + 16) = v8;
      }

      v10 = *(this + 1);
    }

    while (v10 >= *(this + 2) || *v10 != 18);
    *(this + 1) = v10 + 1;
LABEL_23:
    *(a1 + 24) |= 2u;
    v11 = *(a1 + 8);
    if (!v11)
    {
      operator new();
    }

    v19 = 0;
    v12 = *(this + 1);
    if (v12 >= *(this + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
      {
        return 0;
      }
    }

    else
    {
      v19 = *v12;
      *(this + 1) = v12 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_24540B6B4(v11, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
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

uint64_t sub_24540C1FC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEAF8 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_24540C27C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 24))
    {
      v4 = *(a1 + 16);
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
        if ((*(a1 + 24) & 2) == 0)
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
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453EB7EC();
      v5 = *(qword_2813CEAF8 + 8);
    }

    v6 = sub_24540BAF8(v5);
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
  }

  else
  {
    v3 = 0;
  }

LABEL_19:
  *(a1 + 20) = v3;
  return v3;
}

void sub_24540C348(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858880, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540BCC8(a1, lpsrc);
}

void sub_24540C404(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 8);
      if (v5 >= 6)
      {
        __assert_rtn("set_time_id", "GnssEmergencyTypes.pb.h", 20461, "::CoreGem::proto::gnss::Emergency::GnssTimeId_IsValid(value)");
      }

      *(a1 + 52) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 52);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(a1 + 52) |= 2u;
      *(a1 + 12) = v6;
      v4 = *(a2 + 52);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 16);
    *(a1 + 52) |= 4u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    v8 = *(a2 + 20);
    *(a1 + 52) |= 8u;
    *(a1 + 20) = v8;
    v4 = *(a2 + 52);
    if ((v4 & 0x10) == 0)
    {
LABEL_11:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = *(a2 + 32);
    *(a1 + 52) |= 0x10u;
    *(a1 + 32) = v9;
    v4 = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_12:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }

LABEL_19:
    *(a1 + 52) |= 0x20u;
    v10 = *(a1 + 24);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 24);
    if (!v11)
    {
      sub_2453EB7EC();
      v11 = *(qword_2813CEB00 + 24);
    }

    sub_24540000C(v10, v11);
    v4 = *(a2 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

LABEL_25:
      *(a1 + 52) |= 0x80u;
      v13 = *(a1 + 40);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 40);
      if (!v14)
      {
        sub_2453EB7EC();
        v14 = *(qword_2813CEB00 + 40);
      }

      sub_24540BCC8(v13, v14);
      return;
    }

LABEL_24:
    v12 = *(a2 + 36);
    *(a1 + 52) |= 0x40u;
    *(a1 + 36) = v12;
    if ((*(a2 + 52) & 0x80) == 0)
    {
      return;
    }

    goto LABEL_25;
  }
}

void sub_24540C66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540C684(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858570C0;
  sub_2453EB7EC();
  if (qword_2813CEB00 != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 5);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540C748(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540C684(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540C7D8(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 52);
  if (v2)
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 0x20) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_245400288(result);
        v2 = *(v1 + 52);
      }
    }

    *(v1 + 36) = 0;
    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_24540BF48(result);
      }
    }
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_24540C834(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
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
            if (v6 == 3)
            {
              if ((TagFallback & 7) == 0)
              {
                v16 = *(this + 1);
                v8 = *(this + 2);
                goto LABEL_53;
              }
            }

            else if (v6 == 4 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_61;
            }

            goto LABEL_34;
          }

          if (v6 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_34;
            }

            v45 = 0;
            v13 = *(this + 1);
            if (v13 >= *(this + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45);
              if (!result)
              {
                return result;
              }

              v14 = v45;
            }

            else
            {
              *(this + 1) = v13 + 1;
            }

            if (v14 <= 5)
            {
              *(a1 + 52) |= 1u;
              *(a1 + 8) = v14;
            }

            v20 = *(this + 1);
            v8 = *(this + 2);
            if (v20 < v8 && *v20 == 16)
            {
              v9 = v20 + 1;
              *(this + 1) = v9;
LABEL_45:
              if (v9 >= v8 || (v21 = *v9, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
                if (!result)
                {
                  return result;
                }

                v22 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                *(a1 + 12) = v21;
                v22 = v9 + 1;
                *(this + 1) = v22;
              }

              *(a1 + 52) |= 2u;
              if (v22 < v8 && *v22 == 24)
              {
                v16 = v22 + 1;
                *(this + 1) = v16;
LABEL_53:
                if (v16 >= v8 || (v23 = *v16, v23 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
                  if (!result)
                  {
                    return result;
                  }

                  v24 = *(this + 1);
                  v8 = *(this + 2);
                }

                else
                {
                  *(a1 + 16) = v23;
                  v24 = v16 + 1;
                  *(this + 1) = v24;
                }

                *(a1 + 52) |= 4u;
                if (v24 < v8 && *v24 == 32)
                {
                  v11 = v24 + 1;
                  *(this + 1) = v11;
LABEL_61:
                  if (v11 >= v8 || (v25 = *v11, v25 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
                    if (!result)
                    {
                      return result;
                    }

                    v26 = *(this + 1);
                    v8 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 20) = v25;
                    v26 = v11 + 1;
                    *(this + 1) = v26;
                  }

                  *(a1 + 52) |= 8u;
                  if (v26 < v8 && *v26 == 40)
                  {
                    v15 = v26 + 1;
                    *(this + 1) = v15;
LABEL_69:
                    if (v15 >= v8 || (v27 = *v15, v27 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                      if (!result)
                      {
                        return result;
                      }

                      v28 = *(this + 1);
                      v8 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 32) = v27;
                      v28 = v15 + 1;
                      *(this + 1) = v28;
                    }

                    v10 = *(a1 + 52) | 0x10;
                    *(a1 + 52) = v10;
                    if (v28 < v8 && *v28 == 50)
                    {
                      *(this + 1) = v28 + 1;
                      goto LABEL_77;
                    }
                  }
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
              goto LABEL_45;
            }

LABEL_34:
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

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_69;
          }

          goto LABEL_34;
        }

        if (v6 != 6 || v7 != 2)
        {
          goto LABEL_34;
        }

        v10 = *(a1 + 52);
LABEL_77:
        *(a1 + 52) = v10 | 0x20;
        v29 = *(a1 + 24);
        if (!v29)
        {
          operator new();
        }

        v46 = 0;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46))
          {
            return 0;
          }
        }

        else
        {
          v46 = *v30;
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
        if (!sub_2454002C8(v29, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v33 = *(this + 14);
        v34 = __OFSUB__(v33, 1);
        v35 = v33 - 1;
        if (v35 < 0 == v34)
        {
          *(this + 14) = v35;
        }

        v36 = *(this + 1);
        v17 = *(this + 2);
        if (v36 < v17 && *v36 == 56)
        {
          v18 = v36 + 1;
          *(this + 1) = v18;
          goto LABEL_91;
        }
      }

      if (v6 != 7)
      {
        if (v6 == 8 && v7 == 2)
        {
          v12 = *(a1 + 52);
          goto LABEL_99;
        }

        goto LABEL_34;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v18 = *(this + 1);
      v17 = *(this + 2);
LABEL_91:
      if (v18 >= v17 || (v37 = *v18, v37 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
        if (!result)
        {
          return result;
        }

        v38 = *(this + 1);
        v17 = *(this + 2);
      }

      else
      {
        *(a1 + 36) = v37;
        v38 = v18 + 1;
        *(this + 1) = v38;
      }

      v12 = *(a1 + 52) | 0x40;
      *(a1 + 52) = v12;
    }

    while (v38 >= v17 || *v38 != 66);
    *(this + 1) = v38 + 1;
LABEL_99:
    *(a1 + 52) = v12 | 0x80;
    v39 = *(a1 + 40);
    if (!v39)
    {
      operator new();
    }

    v47 = 0;
    v40 = *(this + 1);
    if (v40 >= *(this + 2) || *v40 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
      {
        return 0;
      }
    }

    else
    {
      v47 = *v40;
      *(this + 1) = v40 + 1;
    }

    v41 = *(this + 14);
    v42 = *(this + 15);
    *(this + 14) = v41 + 1;
    if (v41 >= v42)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_24540BFA0(v39, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v43 = *(this + 14);
    v34 = __OFSUB__(v43, 1);
    v44 = v43 - 1;
    if (v44 < 0 == v34)
    {
      *(this + 14) = v44;
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

uint64_t sub_24540CDE8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_12;
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

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
    if ((*(v5 + 52) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_15:
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEB00 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:
  v8 = *(v5 + 40);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEB00 + 40);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v8, a2, a4);
}

uint64_t sub_24540CF28(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_52;
  }

  if (*(a1 + 52))
  {
    v4 = *(a1 + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
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
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 52);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_17:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 52);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_19:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_19;
  }

  v9 = *(a1 + 20);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(a1 + 52);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_20:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_32:
  v11 = *(a1 + 32);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(a1 + 52);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_21:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_42:
    v17 = *(a1 + 36);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(a1 + 52);
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

LABEL_36:
  v13 = *(a1 + 24);
  if (!v13)
  {
    sub_2453EB7EC();
    v13 = *(qword_2813CEB00 + 24);
  }

  v14 = sub_2454005A0(v13);
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
  v2 = *(a1 + 52);
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_42;
  }

LABEL_22:
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_52;
  }

LABEL_46:
  v19 = *(a1 + 40);
  if (!v19)
  {
    sub_2453EB7EC();
    v19 = *(qword_2813CEB00 + 40);
  }

  v20 = sub_24540C27C(v19);
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
LABEL_52:
  *(a1 + 48) = v3;
  return v3;
}

void sub_24540D120(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858898, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540C404(a1, lpsrc);
}

void sub_24540D1DC(_DWORD *a1, _DWORD *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = a2[12];
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = a2[2];
    a1[12] |= 1u;
    a1[2] = v7;
    v4 = a2[12];
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = a2[3];
  a1[12] |= 2u;
  a1[3] = v8;
  v4 = a2[12];
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = a2[4];
  a1[12] |= 4u;
  a1[4] = v9;
  v4 = a2[12];
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = a2[5];
  a1[12] |= 8u;
  a1[5] = v10;
  v4 = a2[12];
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = a2[7];
    a1[12] |= 0x20u;
    a1[7] = v12;
    v4 = a2[12];
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = a2[6];
  a1[12] |= 0x10u;
  a1[6] = v11;
  v4 = a2[12];
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = a2[8];
  if (v13 >= 6)
  {
    __assert_rtn("set_multi_path", "GnssEmergencyTypes.pb.h", 20814, "::CoreGem::proto::gnss::Emergency::MultipathIndicator_IsValid(value)");
  }

  a1[12] |= 0x40u;
  a1[8] = v13;
  v4 = a2[12];
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = a2[9];
    a1[12] |= 0x80u;
    a1[9] = v5;
    v4 = a2[12];
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = a2[10];
    a1[12] |= 0x100u;
    a1[10] = v6;
  }
}

void sub_24540D398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540D3B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857138;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540D40C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540D3B0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540D49C(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 40) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_24540D4C8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v6 != 3)
            {
              if (v6 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(this + 1);
            v9 = *(this + 2);
LABEL_54:
            if (v16 >= v9 || (v22 = *v16, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v23 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              a1[4] = v22;
              v23 = v16 + 1;
              *(this + 1) = v23;
            }

            a1[12] |= 4u;
            if (v23 < v9 && *v23 == 32)
            {
              v11 = v23 + 1;
              *(this + 1) = v11;
LABEL_62:
              if (v11 >= v9 || (v24 = *v11, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
                if (!result)
                {
                  return result;
                }

                v25 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                a1[5] = v24;
                v25 = v11 + 1;
                *(this + 1) = v25;
              }

              a1[12] |= 8u;
              if (v25 < v9 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(this + 1) = v18;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v37 = 0;
            v13 = *(this + 1);
            v9 = *(this + 2);
            if (v13 >= v9 || (v14 = *v13, (v14 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37);
              if (!result)
              {
                return result;
              }

              v14 = v37;
              v15 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v15 = v13 + 1;
              *(this + 1) = v15;
            }

            a1[2] = v14;
            a1[12] |= 1u;
            if (v15 < v9 && *v15 == 16)
            {
              v10 = v15 + 1;
              *(this + 1) = v10;
LABEL_46:
              if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
                if (!result)
                {
                  return result;
                }

                v21 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                a1[3] = v20;
                v21 = v10 + 1;
                *(this + 1) = v21;
              }

              a1[12] |= 2u;
              if (v21 < v9 && *v21 == 24)
              {
                v16 = v21 + 1;
                *(this + 1) = v16;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 != 5)
        {
          if (v6 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(this + 1);
        v9 = *(this + 2);
LABEL_70:
        if (v18 >= v9 || (v26 = *v18, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          a1[6] = v26;
          v27 = v18 + 1;
          *(this + 1) = v27;
        }

        a1[12] |= 0x10u;
        if (v27 < v9 && *v27 == 48)
        {
          v12 = v27 + 1;
          *(this + 1) = v12;
LABEL_78:
          if (v12 >= v9 || (v28 = *v12, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
            if (!result)
            {
              return result;
            }

            v29 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            a1[7] = v28;
            v29 = v12 + 1;
            *(this + 1) = v29;
          }

          a1[12] |= 0x20u;
          if (v29 < v9 && *v29 == 56)
          {
            v17 = v29 + 1;
            *(this + 1) = v17;
LABEL_86:
            v38 = 0;
            if (v17 >= v9 || (v30 = *v17, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38);
              if (!result)
              {
                return result;
              }

              v30 = v38;
            }

            else
            {
              *(this + 1) = v17 + 1;
            }

            if (v30 <= 5)
            {
              a1[12] |= 0x40u;
              a1[8] = v30;
            }

            v31 = *(this + 1);
            v7 = *(this + 2);
            if (v31 < v7 && *v31 == 64)
            {
              v19 = v31 + 1;
              *(this + 1) = v19;
              goto LABEL_96;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_86;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(this + 1);
      v7 = *(this + 2);
LABEL_96:
      if (v19 >= v7 || (v32 = *v19, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
        if (!result)
        {
          return result;
        }

        v33 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[9] = v32;
        v33 = v19 + 1;
        *(this + 1) = v33;
      }

      a1[12] |= 0x80u;
      if (v33 < v7 && *v33 == 72)
      {
        v8 = v33 + 1;
        *(this + 1) = v8;
LABEL_104:
        if (v8 >= v7 || (v34 = *v8, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[10] = v34;
          v35 = v8 + 1;
          *(this + 1) = v35;
        }

        a1[12] |= 0x100u;
        if (v35 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 9 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_104;
    }

LABEL_37:
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

unsigned int *sub_24540D98C(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[12];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, result[2], a2, a4);
    v6 = v5[12];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[12];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
    if ((v5[12] & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, v5[8], a2, a4);
  v6 = v5[12];
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
  v7 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t sub_24540DAC0(unsigned int *a1)
{
  v2 = a1[12];
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (v2)
  {
    v4 = a1[2];
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = a1[12];
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v5 = a1[3];
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = a1[12];
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_18:
  if ((v2 & 4) != 0)
  {
    v7 = a1[4];
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = a1[12];
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v9 = a1[5];
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = a1[12];
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_34:
  v11 = a1[6];
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = a1[12];
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_38:
  v13 = a1[7];
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = a1[12];
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_42:
  v15 = a1[8];
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = a1[12];
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x80) == 0)
  {
LABEL_24:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v17 = a1[9];
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = a1[12];
  }

  else
  {
    v18 = 2;
  }

  v3 = (v18 + v3);
  if ((v2 & 0x100) != 0)
  {
LABEL_52:
    v19 = a1[10];
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    }

    else
    {
      v20 = 2;
    }

    v3 = (v20 + v3);
  }

LABEL_56:
  a1[11] = v3;
  return v3;
}

void sub_24540DCA8(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858588B0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540D1DC(a1, lpsrc);
}

void sub_24540DD64(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
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
      sub_24540D1DC(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 32);
    }

    while (v7 < v6);
  }

  v12 = *(a2 + 76);
  if (!v12)
  {
    goto LABEL_22;
  }

  if (v12)
  {
    v16 = *(a2 + 8);
    *(a1 + 76) |= 1u;
    *(a1 + 8) = v16;
    v12 = *(a2 + 76);
    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 12);
  *(a1 + 76) |= 2u;
  *(a1 + 12) = v17;
  v12 = *(a2 + 76);
  if ((v12 & 4) == 0)
  {
LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = *(a2 + 16);
  *(a1 + 76) |= 4u;
  *(a1 + 16) = v18;
  v12 = *(a2 + 76);
  if ((v12 & 8) == 0)
  {
LABEL_18:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_33:
    *(a1 + 76) |= 0x20u;
    v20 = *(a1 + 48);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 48);
    if (!v21)
    {
      sub_2453EB7EC();
      v21 = *(qword_2813CEB10 + 48);
    }

    sub_2453FB61C(v20, v21);
    v12 = *(a2 + 76);
    if ((v12 & 0x40) == 0)
    {
LABEL_20:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_32:
  v19 = *(a2 + 20);
  *(a1 + 76) |= 8u;
  *(a1 + 20) = v19;
  v12 = *(a2 + 76);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_38:
  v22 = *(a2 + 56);
  *(a1 + 76) |= 0x40u;
  *(a1 + 56) = v22;
  v12 = *(a2 + 76);
  if ((v12 & 0x80) != 0)
  {
LABEL_21:
    v13 = *(a2 + 60);
    *(a1 + 76) |= 0x80u;
    *(a1 + 60) = v13;
    v12 = *(a2 + 76);
  }

LABEL_22:
  if ((v12 & 0x100) != 0)
  {
    *(a1 + 76) |= 0x100u;
    v14 = *(a1 + 64);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 64);
    if (!v15)
    {
      sub_2453EB7EC();
      v15 = *(qword_2813CEB10 + 64);
    }

    sub_2453FBD38(v14, v15);
  }
}

void sub_24540E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540E10C(uint64_t a1)
{
  *a1 = &unk_2858571B0;
  sub_2453EB7EC();
  if (qword_2813CEB10 != a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(a1 + 36);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 24) + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(a1 + 36);
      }
    }
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    MEMORY[0x245D6A0A0](v7, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24540E23C(uint64_t a1)
{
  sub_24540E10C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540E2D0(uint64_t a1)
{
  v2 = *(a1 + 76);
  if (v2)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        sub_2453FB898(v3);
        v2 = *(a1 + 76);
      }
    }

    *(a1 + 56) = 0;
  }

  if ((v2 & 0x100) != 0)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      if (*(v4 + 24))
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

      *(v4 + 24) = 0;
    }
  }

  result = sub_2453DC6D0(a1 + 24);
  *(a1 + 76) = 0;
  return result;
}

uint64_t sub_24540E344(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v15 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_54;
            }

            if (v6 != 4 || (TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v11 = *(this + 1);
            v9 = *(this + 2);
LABEL_62:
            if (v11 >= v9 || (v24 = *v11, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v25 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v24;
              v25 = v11 + 1;
              *(this + 1) = v25;
            }

            *(a1 + 76) |= 8u;
            if (v25 < v9 && *v25 == 42)
            {
              while (1)
              {
                *(this + 1) = v25 + 1;
LABEL_70:
                v26 = *(a1 + 36);
                v27 = *(a1 + 32);
                if (v27 >= v26)
                {
                  if (v26 == *(a1 + 40))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                    v26 = *(a1 + 36);
                  }

                  *(a1 + 36) = v26 + 1;
                  operator new();
                }

                v28 = *(a1 + 24);
                *(a1 + 32) = v27 + 1;
                v29 = *(v28 + 8 * v27);
                v54 = 0;
                v30 = *(this + 1);
                if (v30 >= *(this + 2) || *v30 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
                  {
                    return 0;
                  }
                }

                else
                {
                  v54 = *v30;
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
                if (!sub_24540D4C8(v29, this) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v33 = *(this + 14);
                v34 = __OFSUB__(v33, 1);
                v35 = v33 - 1;
                if (v35 < 0 == v34)
                {
                  *(this + 14) = v35;
                }

                v25 = *(this + 1);
                if (v25 >= *(this + 2))
                {
                  break;
                }

                v36 = *v25;
                if (v36 != 42)
                {
                  if (v36 != 50)
                  {
                    goto LABEL_1;
                  }

                  *(this + 1) = v25 + 1;
                  goto LABEL_88;
                }
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v12 = *(this + 1);
            v9 = *(this + 2);
            if (v12 >= v9 || (v13 = *v12, v13 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
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
              v14 = v12 + 1;
              *(this + 1) = v14;
            }

            *(a1 + 76) |= 1u;
            if (v14 < v9 && *v14 == 16)
            {
              v10 = v14 + 1;
              *(this + 1) = v10;
LABEL_46:
              if (v10 >= v9 || (v20 = *v10, v20 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
                if (!result)
                {
                  return result;
                }

                v21 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 12) = v20;
                v21 = v10 + 1;
                *(this + 1) = v21;
              }

              *(a1 + 76) |= 2u;
              if (v21 < v9 && *v21 == 24)
              {
                v15 = v21 + 1;
                *(this + 1) = v15;
LABEL_54:
                if (v15 >= v9 || (v22 = *v15, v22 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
                  if (!result)
                  {
                    return result;
                  }

                  v23 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 16) = v22;
                  v23 = v15 + 1;
                  *(this + 1) = v23;
                }

                *(a1 + 76) |= 4u;
                if (v23 < v9 && *v23 == 32)
                {
                  v11 = v23 + 1;
                  *(this + 1) = v11;
                  goto LABEL_62;
                }
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v17 = *(this + 1);
          v16 = *(this + 2);
          goto LABEL_102;
        }

        if (v6 == 8)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v18 = *(this + 1);
          v16 = *(this + 2);
LABEL_110:
          if (v18 >= v16 || (v46 = *v18, v46 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
            if (!result)
            {
              return result;
            }

            v47 = *(this + 1);
            v16 = *(this + 2);
          }

          else
          {
            *(a1 + 60) = v46;
            v47 = v18 + 1;
            *(this + 1) = v47;
          }

          v8 = *(a1 + 76) | 0x80;
          *(a1 + 76) = v8;
          if (v47 < v16 && *v47 == 74)
          {
            *(this + 1) = v47 + 1;
            goto LABEL_118;
          }
        }

        else
        {
          if (v6 != 9 || v7 != 2)
          {
            goto LABEL_37;
          }

          v8 = *(a1 + 76);
LABEL_118:
          *(a1 + 76) = v8 | 0x100;
          v48 = *(a1 + 64);
          if (!v48)
          {
            operator new();
          }

          v56 = 0;
          v49 = *(this + 1);
          if (v49 >= *(this + 2) || *v49 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v56))
            {
              return 0;
            }
          }

          else
          {
            v56 = *v49;
            *(this + 1) = v49 + 1;
          }

          v50 = *(this + 14);
          v51 = *(this + 15);
          *(this + 14) = v50 + 1;
          if (v50 >= v51)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453FBF20(v48, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v52 = *(this + 14);
          v34 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v34)
          {
            *(this + 14) = v53;
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

      if (v6 == 5)
      {
        if (v7 != 2)
        {
          break;
        }

        goto LABEL_70;
      }

      if (v6 != 6 || v7 != 2)
      {
        break;
      }

LABEL_88:
      *(a1 + 76) |= 0x20u;
      v37 = *(a1 + 48);
      if (!v37)
      {
        operator new();
      }

      v55 = 0;
      v38 = *(this + 1);
      if (v38 >= *(this + 2) || *v38 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
        {
          return 0;
        }
      }

      else
      {
        v55 = *v38;
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
      if (!sub_2453FB8D8(v37, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v41 = *(this + 14);
      v34 = __OFSUB__(v41, 1);
      v42 = v41 - 1;
      if (v42 < 0 == v34)
      {
        *(this + 14) = v42;
      }

      v43 = *(this + 1);
      v16 = *(this + 2);
      if (v43 < v16 && *v43 == 56)
      {
        v17 = v43 + 1;
        *(this + 1) = v17;
LABEL_102:
        if (v17 >= v16 || (v44 = *v17, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v45 = *(this + 1);
          v16 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v44;
          v45 = v17 + 1;
          *(this + 1) = v45;
        }

        *(a1 + 76) |= 0x40u;
        if (v45 < v16 && *v45 == 64)
        {
          v18 = v45 + 1;
          *(this + 1) = v18;
          goto LABEL_110;
        }
      }
    }

LABEL_37:
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

uint64_t sub_24540EA78(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 76);
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
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 76) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 76);
  if ((v8 & 0x20) != 0)
  {
    v9 = *(v5 + 48);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEB10 + 48);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
    v8 = *(v5 + 76);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_22:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 60), a2, a4);
      if ((*(v5 + 76) & 0x100) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 56), a2, a4);
  v8 = *(v5 + 76);
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v8 & 0x100) == 0)
  {
    return result;
  }

LABEL_23:
  v10 = *(v5 + 64);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEB10 + 64);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v10, a2, a4);
}

uint64_t sub_24540EBF8(uint64_t a1)
{
  v2 = *(a1 + 76);
  if (v2)
  {
    if (v2)
    {
      v4 = *(a1 + 8);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        v2 = *(a1 + 76);
        if ((v2 & 2) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    v5 = *(a1 + 12);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(a1 + 76);
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
LABEL_15:
    if ((v2 & 4) != 0)
    {
      v7 = *(a1 + 16);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
        v2 = *(a1 + 76);
      }

      else
      {
        v8 = 2;
      }

      v3 += v8;
      if ((v2 & 8) == 0)
      {
LABEL_17:
        if ((v2 & 0x20) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_30;
      }
    }

    else if ((v2 & 8) == 0)
    {
      goto LABEL_17;
    }

    v9 = *(a1 + 20);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(a1 + 76);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
    if ((v2 & 0x20) == 0)
    {
LABEL_18:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_36;
    }

LABEL_30:
    v11 = *(a1 + 48);
    if (!v11)
    {
      sub_2453EB7EC();
      v11 = *(qword_2813CEB10 + 48);
    }

    v12 = sub_2453FBBB0(v11);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v3 += v13 + v14 + 1;
    v2 = *(a1 + 76);
    if ((v2 & 0x40) == 0)
    {
LABEL_19:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }

LABEL_36:
    v15 = *(a1 + 56);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(a1 + 76);
    }

    else
    {
      v16 = 2;
    }

    v3 += v16;
    if ((v2 & 0x80) == 0)
    {
LABEL_20:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_44;
    }

LABEL_40:
    v17 = *(a1 + 60);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(a1 + 76);
    }

    else
    {
      v18 = 2;
    }

    v3 += v18;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  v3 = 0;
  if ((v2 & 0x100) == 0)
  {
    goto LABEL_50;
  }

LABEL_44:
  v19 = *(a1 + 64);
  if (!v19)
  {
    sub_2453EB7EC();
    v19 = *(qword_2813CEB10 + 64);
  }

  v20 = sub_2453FC198(v19);
  v21 = v20;
  if (v20 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
  }

  else
  {
    v22 = 1;
  }

  v3 += v21 + v22 + 1;
LABEL_50:
  v23 = *(a1 + 32);
  v24 = (v23 + v3);
  if (v23 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = sub_24540DAC0(*(*(a1 + 24) + 8 * v25));
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      }

      else
      {
        v28 = 1;
      }

      v24 = (v27 + v24 + v28);
      ++v25;
    }

    while (v25 < *(a1 + 32));
  }

  *(a1 + 72) = v24;
  return v24;
}

void sub_24540EE3C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858588C8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540DD64(a1, lpsrc);
}

void sub_24540EEF8(uint64_t a1, uint64_t a2)
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
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 21130, "::CoreGem::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
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
    v9 = *(qword_2813CEF30 + 16);
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
      v13 = *(qword_2813CEF30 + 32);
    }

    sub_24540C404(v12, v13);
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
    v11 = *(qword_2813CEF30 + 24);
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

void sub_24540F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540F1D0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857228;
  sub_2453EB7EC();
  if (qword_2813CEF30 != a1)
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

void sub_24540F2C0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540F1D0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24540F354(uint64_t result)
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
        result = sub_24540C7D8(result);
      }
    }

    *(v1 + 40) = 0;
    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_24540F3D4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

          v46 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46);
            if (!result)
            {
              return result;
            }

            v12 = v46;
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

          v17 = *(this + 1);
          v14 = *(this + 2);
          if (v17 < v14 && *v17 == 16)
          {
            v15 = v17 + 1;
            *(this + 1) = v15;
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

          v15 = *(this + 1);
          v14 = *(this + 2);
LABEL_41:
          if (v15 >= v14 || (v18 = *v15, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            v14 = *(this + 2);
          }

          else
          {
            *(a1 + 12) = v18;
            v19 = v15 + 1;
            *(this + 1) = v19;
          }

          v8 = *(a1 + 52) | 2;
          *(a1 + 52) = v8;
          if (v19 < v14 && *v19 == 26)
          {
            *(this + 1) = v19 + 1;
LABEL_49:
            *(a1 + 52) = v8 | 4;
            v20 = *(a1 + 16);
            if (!v20)
            {
              operator new();
            }

            v46 = 0;
            v21 = *(this + 1);
            if (v21 >= *(this + 2) || *v21 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46))
              {
                return 0;
              }
            }

            else
            {
              v46 = *v21;
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
            if (!sub_2453F82C0(v20, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v24 = *(this + 14);
            v25 = __OFSUB__(v24, 1);
            v26 = v24 - 1;
            if (v26 < 0 == v25)
            {
              *(this + 14) = v26;
            }

            v27 = *(this + 1);
            if (v27 < *(this + 2) && *v27 == 34)
            {
              *(this + 1) = v27 + 1;
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
            v13 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_91;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_99;
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
      v28 = *(a1 + 24);
      if (!v28)
      {
        operator new();
      }

      v46 = 0;
      v29 = *(this + 1);
      if (v29 >= *(this + 2) || *v29 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46))
        {
          return 0;
        }
      }

      else
      {
        v46 = *v29;
        *(this + 1) = v29 + 1;
      }

      v30 = *(this + 14);
      v31 = *(this + 15);
      *(this + 14) = v30 + 1;
      if (v30 >= v31)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_24540E344(v28, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v32 = *(this + 14);
      v25 = __OFSUB__(v32, 1);
      v33 = v32 - 1;
      if (v33 < 0 == v25)
      {
        *(this + 14) = v33;
      }

      v34 = *(this + 1);
      if (v34 < *(this + 2) && *v34 == 42)
      {
        *(this + 1) = v34 + 1;
LABEL_77:
        *(a1 + 52) |= 0x10u;
        v35 = *(a1 + 32);
        if (!v35)
        {
          operator new();
        }

        v46 = 0;
        v36 = *(this + 1);
        if (v36 >= *(this + 2) || *v36 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46))
          {
            return 0;
          }
        }

        else
        {
          v46 = *v36;
          *(this + 1) = v36 + 1;
        }

        v37 = *(this + 14);
        v38 = *(this + 15);
        *(this + 14) = v37 + 1;
        if (v37 >= v38)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24540C834(v35, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v39 = *(this + 14);
        v25 = __OFSUB__(v39, 1);
        v40 = v39 - 1;
        if (v40 < 0 == v25)
        {
          *(this + 14) = v40;
        }

        v41 = *(this + 1);
        v9 = *(this + 2);
        if (v41 < v9 && *v41 == 48)
        {
          v13 = v41 + 1;
          *(this + 1) = v13;
LABEL_91:
          if (v13 >= v9 || (v42 = *v13, v42 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
            if (!result)
            {
              return result;
            }

            v43 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 40) = v42;
            v43 = v13 + 1;
            *(this + 1) = v43;
          }

          *(a1 + 52) |= 0x20u;
          if (v43 < v9 && *v43 == 56)
          {
            v10 = v43 + 1;
            *(this + 1) = v10;
LABEL_99:
            v46 = 0;
            if (v10 >= v9 || (v44 = *v10, (v44 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v46);
              if (!result)
              {
                return result;
              }

              v44 = v46;
              v45 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v45 = v10 + 1;
              *(this + 1) = v45;
            }

            *(a1 + 44) = v44 != 0;
            *(a1 + 52) |= 0x40u;
            if (v45 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_24540FA00(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(qword_2813CEF30 + 16);
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
    v8 = *(qword_2813CEF30 + 24);
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
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
    v9 = *(qword_2813CEF30 + 32);
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

uint64_t sub_24540FB38(uint64_t a1)
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
        v8 = *(qword_2813CEF30 + 16);
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
      v12 = *(qword_2813CEF30 + 24);
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
LABEL_44:
        result = ((v2 >> 5) & 2) + v3;
        goto LABEL_45;
      }

LABEL_40:
      v20 = *(a1 + 40);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
        v2 = *(a1 + 52);
      }

      else
      {
        v21 = 2;
      }

      v3 += v21;
      goto LABEL_44;
    }

LABEL_34:
    v16 = *(a1 + 32);
    if (!v16)
    {
      sub_2453EB7EC();
      v16 = *(qword_2813CEF30 + 32);
    }

    v17 = sub_24540CF28(v16);
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
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  result = 0;
LABEL_45:
  *(a1 + 48) = result;
  return result;
}

void sub_24540FD0C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858588E0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540EEF8(a1, lpsrc);
}

void sub_24540FDC8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    sub_2453B0370((a1 + 24), *(a1 + 32) + v4);
    memcpy((*(a1 + 24) + 4 * *(a1 + 32)), *(a2 + 24), 4 * *(a2 + 32));
    *(a1 + 32) += *(a2 + 32);
  }

  v5 = *(a2 + 48);
  if (v5)
  {
    sub_2453B0370((a1 + 40), *(a1 + 48) + v5);
    memcpy((*(a1 + 40) + 4 * *(a1 + 48)), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  LOBYTE(v6) = *(a2 + 64);
  if (v6)
  {
    if (*(a2 + 64))
    {
      v8 = *(a2 + 8);
      *(a1 + 64) |= 1u;
      *(a1 + 8) = v8;
      v6 = *(a2 + 64);
      if ((v6 & 2) == 0)
      {
LABEL_10:
        if ((v6 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 64) & 2) == 0)
    {
      goto LABEL_10;
    }

    v9 = *(a2 + 12);
    *(a1 + 64) |= 2u;
    *(a1 + 12) = v9;
    v6 = *(a2 + 64);
    if ((v6 & 4) == 0)
    {
LABEL_11:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 16);
    *(a1 + 64) |= 4u;
    *(a1 + 16) = v10;
    v6 = *(a2 + 64);
    if ((v6 & 8) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

LABEL_18:
    v11 = *(a2 + 20);
    *(a1 + 64) |= 8u;
    *(a1 + 20) = v11;
    if ((*(a2 + 64) & 0x40) == 0)
    {
      return;
    }

LABEL_13:
    v7 = *(a2 + 56);
    *(a1 + 64) |= 0x40u;
    *(a1 + 56) = v7;
  }
}

void sub_24540FF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24540FF7C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858572A0;
  sub_2453EB7EC();
  v2 = *(a1 + 5);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8052888210);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    MEMORY[0x245D6A0A0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245410008(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24540FF7C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541009C(uint64_t result)
{
  if (*(result + 64))
  {
    *(result + 56) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 32) = 0;
  *(result + 48) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_2454100BC(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
LABEL_1:
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
                goto LABEL_34;
              }

              v12 = *(this + 1);
              v9 = *(this + 2);
              if (v12 >= v9 || (v13 = *v12, v13 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
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
                v14 = v12 + 1;
                *(this + 1) = v14;
              }

              *(a1 + 64) |= 1u;
              if (v14 < v9 && *v14 == 16)
              {
                v16 = v14 + 1;
                *(this + 1) = v16;
                goto LABEL_45;
              }
            }

            else
            {
              if (v6 != 2)
              {
                if (v6 != 3 || (TagFallback & 7) != 0)
                {
                  goto LABEL_34;
                }

                v10 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_53;
              }

              if ((TagFallback & 7) != 0)
              {
                goto LABEL_34;
              }

              v16 = *(this + 1);
              v9 = *(this + 2);
LABEL_45:
              if (v16 >= v9 || (v19 = *v16, v19 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
                if (!result)
                {
                  return result;
                }

                v20 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 12) = v19;
                v20 = v16 + 1;
                *(this + 1) = v20;
              }

              *(a1 + 64) |= 2u;
              if (v20 < v9 && *v20 == 24)
              {
                v10 = v20 + 1;
                *(this + 1) = v10;
LABEL_53:
                if (v10 >= v9 || (v21 = *v10, v21 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
                  if (!result)
                  {
                    return result;
                  }

                  v22 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 16) = v21;
                  v22 = v10 + 1;
                  *(this + 1) = v22;
                }

                *(a1 + 64) |= 4u;
                if (v22 < v9 && *v22 == 32)
                {
                  v15 = v22 + 1;
                  *(this + 1) = v15;
                  goto LABEL_61;
                }
              }
            }
          }

          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (v6 != 4)
          {
            if (v6 == 5)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_70;
              }

              if (v7 == 2)
              {
                result = sub_2453DD50C(this, a1 + 24);
                if (!result)
                {
                  return result;
                }

                goto LABEL_87;
              }
            }

            goto LABEL_34;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_34;
          }

          v15 = *(this + 1);
          v9 = *(this + 2);
LABEL_61:
          if (v15 >= v9 || (v23 = *v15, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
            if (!result)
            {
              return result;
            }

            v24 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 20) = v23;
            v24 = (v15 + 1);
            *(this + 1) = v24;
          }

          *(a1 + 64) |= 8u;
          if (v24 < v9)
          {
            v25 = *v24;
            while (v25 == 40)
            {
              v18 = (v24 + 1);
              *(this + 1) = v18;
LABEL_70:
              v49 = 0;
              if (v18 >= v9 || *v18 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
                {
                  return 0;
                }
              }

              else
              {
                v49 = *v18;
                *(this + 1) = v18 + 1;
              }

              v26 = *(a1 + 32);
              if (v26 == *(a1 + 36))
              {
                sub_2453B0370((a1 + 24), v26 + 1);
                v26 = *(a1 + 32);
              }

              v27 = v49;
              v28 = *(a1 + 24);
              *(a1 + 32) = v26 + 1;
              *(v28 + 4 * v26) = v27;
              v29 = *(a1 + 36) - *(a1 + 32);
              if (v29 >= 1)
              {
                v30 = v29 + 1;
                do
                {
                  v31 = *(this + 1);
                  v32 = *(this + 2);
                  if (v31 >= v32 || *v31 != 40)
                  {
                    break;
                  }

                  *(this + 1) = v31 + 1;
                  if ((v31 + 1) >= v32 || v31[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v49 = v31[1];
                    *(this + 1) = v31 + 2;
                  }

                  v33 = *(a1 + 32);
                  if (v33 >= *(a1 + 36))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
                    v33 = *(a1 + 32);
                  }

                  v34 = v49;
                  v35 = *(a1 + 24);
                  *(a1 + 32) = v33 + 1;
                  *(v35 + 4 * v33) = v34;
                  --v30;
                }

                while (v30 > 1);
              }

LABEL_87:
              v24 = *(this + 1);
              v9 = *(this + 2);
              if (v24 >= v9)
              {
                break;
              }

              v25 = *v24;
              if (v25 == 48)
              {
                goto LABEL_89;
              }
            }
          }
        }

        if (v6 == 6)
        {
          break;
        }

        if (v6 != 7 || (TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
LABEL_112:
        if (v11 >= v9 || (v47 = *v11, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v48 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v47;
          v48 = v11 + 1;
          *(this + 1) = v48;
        }

        *(a1 + 64) |= 0x40u;
        if (v48 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v17 = *(this + 1);
      v9 = *(this + 2);
      while (1)
      {
        v49 = 0;
        if (v17 >= v9 || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
          {
            return 0;
          }
        }

        else
        {
          v49 = *v17;
          *(this + 1) = v17 + 1;
        }

        v36 = *(a1 + 48);
        if (v36 == *(a1 + 52))
        {
          sub_2453B0370((a1 + 40), v36 + 1);
          v36 = *(a1 + 48);
        }

        v37 = v49;
        v38 = *(a1 + 40);
        *(a1 + 48) = v36 + 1;
        *(v38 + 4 * v36) = v37;
        v39 = *(a1 + 52) - *(a1 + 48);
        if (v39 >= 1)
        {
          v40 = v39 + 1;
          do
          {
            v41 = *(this + 1);
            v42 = *(this + 2);
            if (v41 >= v42 || *v41 != 48)
            {
              break;
            }

            *(this + 1) = v41 + 1;
            if ((v41 + 1) >= v42 || v41[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = v41[1];
              *(this + 1) = v41 + 2;
            }

            v43 = *(a1 + 48);
            if (v43 >= *(a1 + 52))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
              v43 = *(a1 + 48);
            }

            v44 = v49;
            v45 = *(a1 + 40);
            *(a1 + 48) = v43 + 1;
            *(v45 + 4 * v43) = v44;
            --v40;
          }

          while (v40 > 1);
        }

LABEL_107:
        v24 = *(this + 1);
        v9 = *(this + 2);
        if (v24 >= v9)
        {
          break;
        }

        v46 = *v24;
        if (v46 == 56)
        {
          v11 = (v24 + 1);
          *(this + 1) = v11;
          goto LABEL_112;
        }

        if (v46 != 48)
        {
          goto LABEL_1;
        }

LABEL_89:
        v17 = (v24 + 1);
        *(this + 1) = v17;
      }
    }

    if (v7 == 2)
    {
      result = sub_2453DD50C(this, a1 + 40);
      if (!result)
      {
        return result;
      }

      goto LABEL_107;
    }

LABEL_34:
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

void sub_2454106C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2454106E4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 64) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 24) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 40) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  if ((*(v5 + 64) & 0x40) != 0)
  {
    v9 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v9, a2, a4);
  }

  return result;
}

uint64_t sub_24541081C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 64);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 64))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
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
    if ((*(a1 + 64) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 64);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 64);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 20);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(a1 + 64);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x40) != 0)
  {
LABEL_26:
    v11 = *(a1 + 56);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

LABEL_30:
  v13 = *(a1 + 32);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 24) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(a1 + 32);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  v18 = *(a1 + 48);
  if (v18 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(a1 + 40) + 4 * v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(a1 + 48);
      }

      else
      {
        v22 = 1;
      }

      v20 += v22;
      ++v19;
    }

    while (v19 < v18);
  }

  result = (v15 + v3 + v13 + v20 + v18);
  *(a1 + 60) = result;
  return result;
}

void sub_2454109E4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858588F8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24540FDC8(a1, lpsrc);
}

void sub_245410AA0(_DWORD *a1, uint64_t a2)
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

void sub_245410B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245410B64(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857318;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245410BC0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245410B64(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245410C44(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_245410C58(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        a1[2] = v8;
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      a1[5] |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(this + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[3] = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        a1[5] |= 2u;
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

uint64_t sub_245410DD4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245410E40(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    if (*(a1 + 20))
    {
      v4 = *(a1 + 8);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(a1 + 20) & 2) == 0)
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
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v5 = *(a1 + 12);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_14:
  *(a1 + 16) = v3;
  return v3;
}

void sub_245410ED0(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858910, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245410AA0(a1, lpsrc);
}

void sub_245410F8C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    sub_2453B0370((a1 + 24), *(a1 + 32) + v4);
    memcpy((*(a1 + 24) + 4 * *(a1 + 32)), *(a2 + 24), 4 * *(a2 + 32));
    *(a1 + 32) += *(a2 + 32);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v7 = *(a2 + 8);
      *(a1 + 48) |= 1u;
      *(a1 + 8) = v7;
      v5 = *(a2 + 48);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 12);
    *(a1 + 48) |= 2u;
    *(a1 + 12) = v8;
    v5 = *(a2 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 16);
    *(a1 + 48) |= 4u;
    *(a1 + 16) = v9;
    v5 = *(a2 + 48);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_16:
    v10 = *(a2 + 20);
    *(a1 + 48) |= 8u;
    *(a1 + 20) = v10;
    if ((*(a2 + 48) & 0x10) == 0)
    {
      return;
    }

LABEL_11:
    v6 = *(a2 + 40);
    *(a1 + 48) |= 0x10u;
    *(a1 + 40) = v6;
  }
}

void sub_2454110E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2454110FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857390;
  sub_2453EB7EC();
  v2 = *(a1 + 3);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245411174(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2454110FC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245411204(uint64_t result)
{
  if (*(result + 48))
  {
    *(result + 40) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 32) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_245411220(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
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
          goto LABEL_28;
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

        *(a1 + 48) |= 1u;
        if (v13 < v8 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
          goto LABEL_38;
        }
      }

      else if (v6 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_28;
        }

        v15 = *(this + 1);
        v8 = *(this + 2);
LABEL_38:
        if (v15 >= v8 || (v18 = *v15, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v19 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v18;
          v19 = v15 + 1;
          *(this + 1) = v19;
        }

        *(a1 + 48) |= 2u;
        if (v19 < v8 && *v19 == 24)
        {
          v9 = v19 + 1;
          *(this + 1) = v9;
LABEL_46:
          if (v9 >= v8 || (v20 = *v9, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v21 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v20;
            v21 = v9 + 1;
            *(this + 1) = v21;
          }

          *(a1 + 48) |= 4u;
          if (v21 < v8 && *v21 == 32)
          {
            v14 = v21 + 1;
            *(this + 1) = v14;
LABEL_54:
            if (v14 >= v8 || (v22 = *v14, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v23 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v22;
              v23 = v14 + 1;
              *(this + 1) = v23;
            }

            *(a1 + 48) |= 8u;
            if (v23 < v8 && *v23 == 40)
            {
              v16 = v23 + 1;
              *(this + 1) = v16;
LABEL_62:
              if (v16 >= v8 || (v24 = *v16, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
                if (!result)
                {
                  return result;
                }

                v25 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                *(a1 + 40) = v24;
                v25 = v16 + 1;
                *(this + 1) = v25;
              }

              *(a1 + 48) |= 0x10u;
              if (v25 < v8 && *v25 == 48)
              {
                goto LABEL_69;
              }
            }
          }
        }
      }

      else
      {
        if (v6 == 3 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_46;
        }

LABEL_28:
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

    if (v6 == 4)
    {
      if ((TagFallback & 7) == 0)
      {
        v14 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v6 == 5)
    {
      if ((TagFallback & 7) == 0)
      {
        v16 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_62;
      }

      goto LABEL_28;
    }

    if (v6 != 6)
    {
      goto LABEL_28;
    }

    if ((TagFallback & 7) == 0)
    {
      v17 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_70;
    }

    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = sub_2453DD50C(this, a1 + 24);
    if (!result)
    {
      return result;
    }

LABEL_87:
    v25 = *(this + 1);
    v8 = *(this + 2);
    if (v25 < v8 && *v25 == 48)
    {
      break;
    }

    if (v25 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }

LABEL_69:
  v17 = v25 + 1;
  *(this + 1) = v17;
LABEL_70:
  v36 = 0;
  if (v17 < v8 && (*v17 & 0x80000000) == 0)
  {
    v36 = *v17;
    *(this + 1) = v17 + 1;
    goto LABEL_74;
  }

  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
  {
LABEL_74:
    v26 = *(a1 + 32);
    if (v26 == *(a1 + 36))
    {
      sub_2453B0370((a1 + 24), v26 + 1);
      v26 = *(a1 + 32);
    }

    v27 = v36;
    v28 = *(a1 + 24);
    *(a1 + 32) = v26 + 1;
    *(v28 + 4 * v26) = v27;
    v29 = *(a1 + 36) - *(a1 + 32);
    if (v29 >= 1)
    {
      v30 = v29 + 1;
      do
      {
        v31 = *(this + 1);
        v32 = *(this + 2);
        if (v31 >= v32 || *v31 != 48)
        {
          break;
        }

        *(this + 1) = v31 + 1;
        if ((v31 + 1) >= v32 || v31[1] < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
          {
            return 0;
          }
        }

        else
        {
          v36 = v31[1];
          *(this + 1) = v31 + 2;
        }

        v33 = *(a1 + 32);
        if (v33 >= *(a1 + 36))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v37);
          v33 = *(a1 + 32);
        }

        v34 = v36;
        v35 = *(a1 + 24);
        *(a1 + 32) = v33 + 1;
        *(v35 + 4 * v33) = v34;
        --v30;
      }

      while (v30 > 1);
    }

    goto LABEL_87;
  }

  return 0;
}

void sub_2454116AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2454116C4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 48);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
  }

LABEL_7:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 24) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return result;
}

uint64_t sub_2454117B0(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 48);
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
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 48);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 48);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 20);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(a1 + 48);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x10) != 0)
  {
LABEL_26:
    v11 = *(a1 + 40);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

LABEL_30:
  v13 = *(a1 + 32);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 24) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(a1 + 32);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  result = (v15 + v3 + v13);
  *(a1 + 44) = result;
  return result;
}

void sub_24541191C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858928, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245410F8C(a1, lpsrc);
}

void sub_2454119D8(_DWORD *a1, uint64_t a2)
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

void sub_245411A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245411A9C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857408;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245411AF8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245411A9C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245411B7C(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_245411B90(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        a1[2] = v8;
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      a1[5] |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(this + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[3] = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        a1[5] |= 2u;
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

uint64_t sub_245411D0C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245411D78(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    if (*(a1 + 20))
    {
      v4 = *(a1 + 8);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(a1 + 20) & 2) == 0)
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
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v5 = *(a1 + 12);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_14:
  *(a1 + 16) = v3;
  return v3;
}

void sub_245411E08(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858940, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454119D8(a1, lpsrc);
}

void sub_245411EC4(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = a1[8];
  v5 = *(a2 + 32);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6));
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
      }

      v8 = *(*(a2 + 24) + 8 * v7);
      v9 = a1[9];
      v10 = a1[8];
      if (v10 >= v9)
      {
        if (v9 == a1[10])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6));
          v9 = a1[9];
        }

        a1[9] = v9 + 1;
        operator new();
      }

      v11 = *(a1 + 3);
      a1[8] = v10 + 1;
      sub_2454119D8(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 32);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 52);
  if (v12)
  {
    if (*(a2 + 52))
    {
      v14 = *(a2 + 8);
      a1[13] |= 1u;
      a1[2] = v14;
      v12 = *(a2 + 52);
      if ((v12 & 2) == 0)
      {
LABEL_16:
        if ((v12 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

    v15 = *(a2 + 12);
    a1[13] |= 2u;
    a1[3] = v15;
    v12 = *(a2 + 52);
    if ((v12 & 4) == 0)
    {
LABEL_17:
      if ((v12 & 8) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

LABEL_22:
    v16 = *(a2 + 16);
    a1[13] |= 4u;
    a1[4] = v16;
    if ((*(a2 + 52) & 8) == 0)
    {
      return;
    }

LABEL_18:
    v13 = *(a2 + 20);
    a1[13] |= 8u;
    a1[5] = v13;
  }
}

void sub_2454120F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245412118(uint64_t a1)
{
  *a1 = &unk_285857480;
  sub_2453EB7EC();
  v2 = *(a1 + 36);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 24) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 36);
      }
    }
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    MEMORY[0x245D6A0A0](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454121E0(uint64_t a1)
{
  sub_245412118(a1);

  JUMPOUT(0x245D6A0D0);
}