uint64_t sub_245412274(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = sub_2453DC6D0(a1 + 24);
  *(a1 + 52) = 0;
  return result;
}

uint64_t sub_2454122AC(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_40;
        }

        if (v6 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(this + 1);
          v8 = *(this + 2);
LABEL_48:
          if (v11 >= v8 || (v20 = *v11, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
            if (!result)
            {
              return result;
            }

            v21 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[5] = v20;
            v21 = v11 + 1;
            *(this + 1) = v21;
          }

          a1[13] |= 8u;
          if (v21 < v8 && *v21 == 42)
          {
            goto LABEL_55;
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
            v22 = a1[9];
            v23 = a1[8];
            if (v23 >= v22)
            {
              if (v22 == a1[10])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6));
                v22 = a1[9];
              }

              a1[9] = v22 + 1;
              operator new();
            }

            v24 = *(a1 + 3);
            a1[8] = v23 + 1;
            v25 = *(v24 + 8 * v23);
            v33 = 0;
            v26 = *(this + 1);
            if (v26 >= *(this + 2) || *v26 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33))
              {
                return 0;
              }
            }

            else
            {
              v33 = *v26;
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
            if (!sub_245411B90(v25, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v29 = *(this + 14);
            v30 = __OFSUB__(v29, 1);
            v31 = v29 - 1;
            if (v31 < 0 == v30)
            {
              *(this + 14) = v31;
            }

            v21 = *(this + 1);
            v32 = *(this + 2);
            if (v21 >= v32 || *v21 != 42)
            {
              break;
            }

LABEL_55:
            *(this + 1) = v21 + 1;
          }

          if (v21 == v32 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
        goto LABEL_21;
      }

      v12 = *(this + 1);
      v8 = *(this + 2);
      if (v12 >= v8 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[2] = v13;
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      a1[13] |= 1u;
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(this + 1) = v9;
LABEL_32:
        if (v9 >= v8 || (v16 = *v9, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[3] = v16;
          v17 = v9 + 1;
          *(this + 1) = v17;
        }

        a1[13] |= 2u;
        if (v17 < v8 && *v17 == 24)
        {
          v10 = v17 + 1;
          *(this + 1) = v10;
LABEL_40:
          if (v10 >= v8 || (v18 = *v10, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[4] = v18;
            v19 = v10 + 1;
            *(this + 1) = v19;
          }

          a1[13] |= 4u;
          if (v19 < v8 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(this + 1) = v11;
            goto LABEL_48;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_32;
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

uint64_t sub_2454126A0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 52) & 8) != 0)
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

  return result;
}

uint64_t sub_245412770(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 52))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 52);
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
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_14;
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

  v3 += v6;
LABEL_14:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

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

  v3 += v8;
  if ((v2 & 8) != 0)
  {
LABEL_21:
    v9 = *(a1 + 20);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_25:
  v11 = *(a1 + 32);
  v12 = (v11 + v3);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_245411D78(*(*(a1 + 24) + 8 * v13));
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(a1 + 32));
  }

  *(a1 + 48) = v12;
  return v12;
}

void sub_2454128B4(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858958, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245411EC4(a1, lpsrc);
}

void sub_245412970(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
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
      v6 = *(a2 + 8);
      a1[7] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 28);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[7] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 16);
    a1[7] |= 4u;
    a1[4] = v8;
    if ((*(a2 + 28) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 20);
    a1[7] |= 8u;
    a1[5] = v5;
  }
}

void sub_245412A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245412A7C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858574F8;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245412AD8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245412A7C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245412B5C(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_245412B70(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

      v10 = *(this + 1);
      v7 = *(this + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[2] = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      a1[7] |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(this + 1) = v8;
LABEL_29:
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[3] = v14;
          v15 = v8 + 1;
          *(this + 1) = v15;
        }

        a1[7] |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(this + 1) = v13;
LABEL_37:
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            a1[4] = v16;
            v17 = v13 + 1;
            *(this + 1) = v17;
          }

          a1[7] |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(this + 1) = v9;
LABEL_45:
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
              if (!result)
              {
                return result;
              }

              v19 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              a1[5] = v18;
              v19 = v9 + 1;
              *(this + 1) = v19;
            }

            a1[7] |= 8u;
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

unsigned int *sub_245412DD4(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[7];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[7];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
      if ((v5[7] & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[7];
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
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t sub_245412E7C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 28))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 28);
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
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 28);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v7 = *(a1 + 16);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(a1 + 28);
  }

  else
  {
    v8 = 2;
  }

  v3 = (v8 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_21:
    v9 = *(a1 + 20);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v3 = (v10 + v3);
  }

LABEL_25:
  *(a1 + 24) = v3;
  return v3;
}

void sub_245412F64(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858970, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245412970(a1, lpsrc);
}

void sub_245413020(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
      }

      v8 = *(*(a2 + 16) + 8 * v7);
      v9 = *(a1 + 28);
      v10 = *(a1 + 24);
      if (v10 >= v9)
      {
        if (v9 == *(a1 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
          v9 = *(a1 + 28);
        }

        *(a1 + 28) = v9 + 1;
        operator new();
      }

      v11 = *(a1 + 16);
      *(a1 + 24) = v10 + 1;
      sub_245410AA0(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 24);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 72);
  if (!v12)
  {
    return;
  }

  if (*(a2 + 72))
  {
    v13 = *(a2 + 8);
    if (v13 >= 7)
    {
      __assert_rtn("set_ganss_id", "GnssEmergencyTypes.pb.h", 21957, "::CoreGem::proto::gnss::Emergency::LcsGanssId_IsValid(value)");
    }

    *(a1 + 72) |= 1u;
    *(a1 + 8) = v13;
    v12 = *(a2 + 72);
  }

  if ((v12 & 2) != 0)
  {
    v14 = *(a2 + 12);
    *(a1 + 72) |= 2u;
    *(a1 + 12) = v14;
    v12 = *(a2 + 72);
    if ((v12 & 4) == 0)
    {
LABEL_19:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_20;
      }

LABEL_25:
      *(a1 + 72) |= 0x10u;
      v16 = *(a1 + 40);
      if (!v16)
      {
        operator new();
      }

      v17 = *(a2 + 40);
      if (!v17)
      {
        sub_2453EB7EC();
        v17 = *(qword_2813CEB48 + 40);
      }

      sub_245410F8C(v16, v17);
      v12 = *(a2 + 72);
      if ((v12 & 0x20) == 0)
      {
LABEL_21:
        if ((v12 & 0x40) == 0)
        {
          return;
        }

        goto LABEL_35;
      }

      goto LABEL_30;
    }
  }

  else if ((v12 & 4) == 0)
  {
    goto LABEL_19;
  }

  v15 = *(a2 + 64);
  *(a1 + 72) |= 4u;
  *(a1 + 64) = v15;
  v12 = *(a2 + 72);
  if ((v12 & 0x10) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v12 & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_30:
  *(a1 + 72) |= 0x20u;
  v18 = *(a1 + 48);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 48);
  if (!v19)
  {
    sub_2453EB7EC();
    v19 = *(qword_2813CEB48 + 48);
  }

  sub_245411EC4(v18, v19);
  if ((*(a2 + 72) & 0x40) != 0)
  {
LABEL_35:
    *(a1 + 72) |= 0x40u;
    v20 = *(a1 + 56);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 56);
    if (!v21)
    {
      sub_2453EB7EC();
      v21 = *(qword_2813CEB48 + 56);
    }

    sub_245412970(v20, v21);
  }
}

void sub_2454133F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245413414(uint64_t a1)
{
  *a1 = &unk_285857570;
  sub_2453EB7EC();
  if (qword_2813CEB48 != a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = *(a1 + 28);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 16) + 8 * i);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(a1 + 28);
      }
    }
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    MEMORY[0x245D6A0A0](v8, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245413570(uint64_t a1)
{
  sub_245413414(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245413608(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 72);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 64) = 0;
    if ((v2 & 0x10) != 0)
    {
      v3 = *(result + 40);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 40) = 0;
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 32) = 0;
        *(v3 + 48) = 0;
        v2 = *(result + 72);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v4 = *(result + 48);
      if (v4)
      {
        if (*(v4 + 52))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        result = sub_2453DC6D0(v4 + 24);
        *(v4 + 52) = 0;
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = *(v1 + 56);
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
  }

  if (*(v1 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 16) + 8 * v6);
      result = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 72) = 0;
  return result;
}

uint64_t sub_2454136F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          goto LABEL_30;
        }

        v50 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
          if (!result)
          {
            return result;
          }

          v11 = v50;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v11 <= 6)
        {
          *(a1 + 72) |= 1u;
          *(a1 + 8) = v11;
        }

        v14 = *(this + 1);
        v8 = *(this + 2);
        if (v14 < v8 && *v14 == 16)
        {
          v12 = v14 + 1;
          *(this + 1) = v12;
LABEL_41:
          if (v12 >= v8 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(this + 1) = v16;
          }

          *(a1 + 72) |= 2u;
          if (v16 < v8 && *v16 == 24)
          {
            v9 = v16 + 1;
            *(this + 1) = v9;
            goto LABEL_49;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v12 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_41;
        }

        if (v6 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_30;
        }

        v9 = *(this + 1);
        v8 = *(this + 2);
LABEL_49:
        if (v9 >= v8 || (v17 = *v9, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v18 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v17;
          v18 = v9 + 1;
          *(this + 1) = v18;
        }

        *(a1 + 72) |= 4u;
        if (v18 < v8 && *v18 == 34)
        {
          while (1)
          {
            *(this + 1) = v18 + 1;
LABEL_57:
            v19 = *(a1 + 28);
            v20 = *(a1 + 24);
            if (v20 >= v19)
            {
              if (v19 == *(a1 + 32))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
                v19 = *(a1 + 28);
              }

              *(a1 + 28) = v19 + 1;
              operator new();
            }

            v21 = *(a1 + 16);
            *(a1 + 24) = v20 + 1;
            v22 = *(v21 + 8 * v20);
            v50 = 0;
            v23 = *(this + 1);
            if (v23 >= *(this + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
              {
                return 0;
              }
            }

            else
            {
              v50 = *v23;
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
            if (!sub_245410C58(v22, this) || *(this + 36) != 1)
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
            if (v18 >= *(this + 2))
            {
              break;
            }

            v29 = *v18;
            if (v29 != 34)
            {
              if (v29 == 42)
              {
                *(this + 1) = v18 + 1;
LABEL_75:
                *(a1 + 72) |= 0x10u;
                v30 = *(a1 + 40);
                if (!v30)
                {
                  operator new();
                }

                v50 = 0;
                v31 = *(this + 1);
                if (v31 >= *(this + 2) || *v31 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
                  {
                    return 0;
                  }
                }

                else
                {
                  v50 = *v31;
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
                if (!sub_245411220(v30, this) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v34 = *(this + 14);
                v27 = __OFSUB__(v34, 1);
                v35 = v34 - 1;
                if (v35 < 0 == v27)
                {
                  *(this + 14) = v35;
                }

                v36 = *(this + 1);
                if (v36 < *(this + 2) && *v36 == 50)
                {
                  *(this + 1) = v36 + 1;
LABEL_89:
                  *(a1 + 72) |= 0x20u;
                  v37 = *(a1 + 48);
                  if (!v37)
                  {
                    operator new();
                  }

                  v50 = 0;
                  v38 = *(this + 1);
                  if (v38 >= *(this + 2) || *v38 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v50 = *v38;
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
                  if (!sub_2454122AC(v37, this) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                  v41 = *(this + 14);
                  v27 = __OFSUB__(v41, 1);
                  v42 = v41 - 1;
                  if (v42 < 0 == v27)
                  {
                    *(this + 14) = v42;
                  }

                  v43 = *(this + 1);
                  if (v43 < *(this + 2) && *v43 == 58)
                  {
                    *(this + 1) = v43 + 1;
LABEL_103:
                    *(a1 + 72) |= 0x40u;
                    v44 = *(a1 + 56);
                    if (!v44)
                    {
                      operator new();
                    }

                    v50 = 0;
                    v45 = *(this + 1);
                    if (v45 >= *(this + 2) || *v45 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v50 = *v45;
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
                    if (!sub_245412B70(v44, this) || *(this + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                    v48 = *(this + 14);
                    v27 = __OFSUB__(v48, 1);
                    v49 = v48 - 1;
                    if (v49 < 0 == v27)
                    {
                      *(this + 14) = v49;
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

              goto LABEL_1;
            }
          }
        }
      }
    }

    if (TagFallback >> 3 > 5)
    {
      if (v6 == 6)
      {
        if (v7 == 2)
        {
          goto LABEL_89;
        }
      }

      else if (v6 == 7 && v7 == 2)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (v6 == 4)
      {
        if (v7 != 2)
        {
          goto LABEL_30;
        }

        goto LABEL_57;
      }

      if (v6 == 5 && v7 == 2)
      {
        goto LABEL_75;
      }
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

uint64_t sub_245413E0C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 72);
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
  if ((*(v5 + 72) & 4) != 0)
  {
LABEL_4:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 64), a2, a4);
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

  v8 = *(v5 + 72);
  if ((v8 & 0x10) != 0)
  {
    v9 = *(v5 + 40);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEB48 + 40);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
    v8 = *(v5 + 72);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        return result;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  v10 = *(v5 + 48);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEB48 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  if ((*(v5 + 72) & 0x40) != 0)
  {
LABEL_21:
    v11 = *(v5 + 56);
    if (!v11)
    {
      sub_2453EB7EC();
      v11 = *(qword_2813CEB48 + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  }

  return result;
}

uint64_t sub_245413F68(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 72);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_44;
  }

  if (*(a1 + 72))
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
      v2 = *(a1 + 72);
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
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 72);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_17:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 64);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 72);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 0x10) == 0)
    {
LABEL_19:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_19;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEB48 + 40);
  }

  v10 = sub_2454117B0(v9);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    v12 = 1;
  }

  v3 += v11 + v12 + 1;
  v2 = *(a1 + 72);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_32:
  v13 = *(a1 + 48);
  if (!v13)
  {
    sub_2453EB7EC();
    v13 = *(qword_2813CEB48 + 48);
  }

  v14 = sub_245412770(v13);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
  }

  else
  {
    v16 = 1;
  }

  v3 += v15 + v16 + 1;
  if ((*(a1 + 72) & 0x40) != 0)
  {
LABEL_38:
    v17 = *(a1 + 56);
    if (!v17)
    {
      sub_2453EB7EC();
      v17 = *(qword_2813CEB48 + 56);
    }

    v18 = sub_245412E7C(v17);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v3 += v19 + v20 + 1;
  }

LABEL_44:
  v21 = *(a1 + 24);
  v22 = (v21 + v3);
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = sub_245410E40(*(*(a1 + 16) + 8 * v23));
      v25 = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
      }

      else
      {
        v26 = 1;
      }

      v22 = (v25 + v22 + v26);
      ++v23;
    }

    while (v23 < *(a1 + 24));
  }

  *(a1 + 68) = v22;
  return v22;
}

void sub_245414180(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858988, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245413020(a1, lpsrc);
}

void sub_24541423C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    sub_2453B0370((a1 + 16), *(a1 + 24) + v4);
    memcpy((*(a1 + 16) + 4 * *(a1 + 24)), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
  LODWORD(v7) = *(a2 + 48);
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 >= v7)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
      }

      v9 = *(*(a2 + 40) + 8 * v8);
      v10 = *(a1 + 52);
      v11 = *(a1 + 48);
      if (v11 >= v10)
      {
        if (v10 == *(a1 + 56))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
          v10 = *(a1 + 52);
        }

        *(a1 + 52) = v10 + 1;
        operator new();
      }

      v12 = *(a1 + 40);
      *(a1 + 48) = v11 + 1;
      sub_245413020(*(v12 + 8 * v11), v9);
      ++v8;
      v7 = *(a2 + 48);
    }

    while (v8 < v7);
  }

  LOBYTE(v13) = *(a2 + 72);
  if (v13)
  {
    if (*(a2 + 72))
    {
      v15 = *(a2 + 8);
      *(a1 + 72) |= 1u;
      *(a1 + 8) = v15;
      v13 = *(a2 + 72);
      if ((v13 & 2) == 0)
      {
LABEL_18:
        if ((v13 & 8) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

    else if ((*(a2 + 72) & 2) == 0)
    {
      goto LABEL_18;
    }

    v16 = *(a2 + 12);
    *(a1 + 72) |= 2u;
    *(a1 + 12) = v16;
    v13 = *(a2 + 72);
    if ((v13 & 8) == 0)
    {
LABEL_19:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

LABEL_25:
    v17 = *(a2 + 32);
    *(a1 + 72) |= 8u;
    *(a1 + 32) = v17;
    v13 = *(a2 + 72);
    if ((v13 & 0x10) == 0)
    {
LABEL_20:
      if ((v13 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_26:
    v18 = *(a2 + 36);
    *(a1 + 72) |= 0x10u;
    *(a1 + 36) = v18;
    if ((*(a2 + 72) & 0x20) == 0)
    {
      return;
    }

LABEL_21:
    v14 = *(a2 + 64);
    *(a1 + 72) |= 0x20u;
    *(a1 + 64) = v14;
  }
}

void sub_2454144E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245414508(uint64_t a1)
{
  *a1 = &unk_2858575E8;
  sub_2453EB7EC();
  v2 = *(a1 + 52);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 40) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 52);
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    MEMORY[0x245D6A0A0](v5, 0x80C80B8603338);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    MEMORY[0x245D6A0A0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2454145EC(uint64_t a1)
{
  sub_245414508(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245414688(uint64_t a1)
{
  if (*(a1 + 72))
  {
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 24) = 0;
  result = sub_2453DC6D0(a1 + 40);
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_2454146D0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
            goto LABEL_32;
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

          *(a1 + 72) |= 1u;
          if (v13 < v8 && *v13 == 16)
          {
            v16 = v13 + 1;
            *(this + 1) = v16;
            goto LABEL_42;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 == 3)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(this + 1);
                v8 = *(this + 2);
                goto LABEL_51;
              }

              if (v7 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
                if (!result)
                {
                  return result;
                }

                goto LABEL_60;
              }
            }

            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
LABEL_42:
          if (v16 >= v8 || (v18 = *v16, v18 < 0))
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
            v19 = (v16 + 1);
            *(this + 1) = v19;
          }

          *(a1 + 72) |= 2u;
          if (v19 < v8)
          {
            v20 = *v19;
            while (v20 == 24)
            {
              v17 = (v19 + 1);
              *(this + 1) = v17;
LABEL_51:
              v41 = 0;
              if (v17 >= v8 || (v21 = *v17, (v21 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41);
                if (!result)
                {
                  return result;
                }

                v21 = v41;
              }

              else
              {
                *(this + 1) = v17 + 1;
              }

              if (v21 <= 6)
              {
                v22 = *(a1 + 24);
                if (v22 == *(a1 + 28))
                {
                  sub_2453B0370((a1 + 16), v22 + 1);
                  v22 = *(a1 + 24);
                }

                v23 = *(a1 + 16);
                *(a1 + 24) = v22 + 1;
                *(v23 + 4 * v22) = v21;
              }

LABEL_60:
              v19 = *(this + 1);
              v8 = *(this + 2);
              if (v19 >= v8)
              {
                break;
              }

              v20 = *v19;
              if (v20 == 32)
              {
                v14 = (v19 + 1);
                *(this + 1) = v14;
                goto LABEL_63;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        break;
      }

      if (v6 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_32;
        }

        v14 = *(this + 1);
        v8 = *(this + 2);
LABEL_63:
        if (v14 >= v8 || (v24 = *v14, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v25 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v24;
          v25 = v14 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 72) |= 8u;
        if (v25 < v8 && *v25 == 40)
        {
          v9 = v25 + 1;
          *(this + 1) = v9;
LABEL_71:
          if (v9 >= v8 || (v26 = *v9, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
            if (!result)
            {
              return result;
            }

            v27 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 36) = v26;
            v27 = v9 + 1;
            *(this + 1) = v27;
          }

          *(a1 + 72) |= 0x10u;
          if (v27 < v8 && *v27 == 48)
          {
            v15 = v27 + 1;
            *(this + 1) = v15;
LABEL_79:
            if (v15 >= v8 || (v28 = *v15, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
              if (!result)
              {
                return result;
              }

              v29 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 64) = v28;
              v29 = v15 + 1;
              *(this + 1) = v29;
            }

            *(a1 + 72) |= 0x20u;
            if (v29 < v8 && *v29 == 58)
            {
LABEL_86:
              *(this + 1) = v29 + 1;
              goto LABEL_87;
            }
          }
        }
      }

      else
      {
        if (v6 == 5 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_71;
        }

LABEL_32:
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

    if (v6 == 6)
    {
      if ((TagFallback & 7) == 0)
      {
        v15 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_79;
      }

      goto LABEL_32;
    }

    if (v6 != 7 || v7 != 2)
    {
      goto LABEL_32;
    }

LABEL_87:
    v30 = *(a1 + 52);
    v31 = *(a1 + 48);
    if (v31 >= v30)
    {
      if (v30 == *(a1 + 56))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
        v30 = *(a1 + 52);
      }

      *(a1 + 52) = v30 + 1;
      operator new();
    }

    v32 = *(a1 + 40);
    *(a1 + 48) = v31 + 1;
    v33 = *(v32 + 8 * v31);
    v42 = 0;
    v34 = *(this + 1);
    if (v34 >= *(this + 2) || *v34 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
      {
        return 0;
      }
    }

    else
    {
      v42 = *v34;
      *(this + 1) = v34 + 1;
    }

    v35 = *(this + 14);
    v36 = *(this + 15);
    *(this + 14) = v35 + 1;
    if (v35 >= v36)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2454136F8(v33, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v37 = *(this + 14);
    v38 = __OFSUB__(v37, 1);
    v39 = v37 - 1;
    if (v39 < 0 == v38)
    {
      *(this + 14) = v39;
    }

    v29 = *(this + 1);
    v40 = *(this + 2);
    if (v29 < v40 && *v29 == 58)
    {
      goto LABEL_86;
    }

    if (v29 == v40 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_245414C18(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 72);
  }

  if ((v6 & 2) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(*(v5 + 16) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  v8 = *(v5 + 72);
  if ((v8 & 8) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
    v8 = *(v5 + 72);
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  if ((*(v5 + 72) & 0x20) != 0)
  {
LABEL_11:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 64), a2, a4);
  }

LABEL_12:
  if (*(v5 + 48) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 40) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 48));
  }

  return result;
}

uint64_t sub_245414D30(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 72);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 72))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 72);
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
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 72);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 8) != 0)
  {
    v7 = *(a1 + 32);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 72);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 0x10) == 0)
    {
LABEL_16:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 36);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(a1 + 72);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x20) != 0)
  {
LABEL_26:
    v11 = *(a1 + 64);
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
  v13 = *(a1 + 24);
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
      v16 = *(*(a1 + 16) + 4 * v14);
      if ((v16 & 0x80000000) != 0)
      {
        v17 = 10;
      }

      else if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(a1 + 24);
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
  v19 = (v15 + v3 + v13 + v18);
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = sub_245413F68(*(*(a1 + 40) + 8 * v20));
      v22 = v21;
      if (v21 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      }

      else
      {
        v23 = 1;
      }

      v19 = (v22 + v19 + v23);
      ++v20;
    }

    while (v20 < *(a1 + 48));
  }

  *(a1 + 68) = v19;
  return v19;
}

void sub_245414F00(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858589A0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541423C(a1, lpsrc);
}

void sub_245414FBC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 44))
  {
    v5 = *(a2 + 8);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 22345, "::CoreGem::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(a1 + 44) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 44);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    *(a1 + 44) |= 4u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEF00 + 16);
    }

    sub_2453F8094(v7, v8);
    v4 = *(a2 + 44);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v6 = *(a2 + 12);
  *(a1 + 44) |= 2u;
  *(a1 + 12) = v6;
  v4 = *(a2 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  *(a1 + 44) |= 8u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    sub_2453EB7EC();
    v10 = *(qword_2813CEF00 + 24);
  }

  sub_24540FDC8(v9, v10);
  if ((*(a2 + 44) & 0x10) != 0)
  {
LABEL_23:
    *(a1 + 44) |= 0x10u;
    v11 = *(a1 + 32);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 32);
    if (!v12)
    {
      sub_2453EB7EC();
      v12 = *(qword_2813CEF00 + 32);
    }

    sub_24541423C(v11, v12);
  }
}

void sub_245415248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245415260(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857660;
  sub_2453EB7EC();
  if (qword_2813CEF00 != a1)
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

void sub_245415350(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245415260(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454153E0(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 44);
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
        v2 = *(result + 44);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(result + 24);
      if (v4)
      {
        if (*(v4 + 64))
        {
          *(v4 + 56) = 0;
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 32) = 0;
        *(v4 + 48) = 0;
        *(v4 + 64) = 0;
        v2 = *(result + 44);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(result + 32);
      if (result)
      {
        result = sub_245414688(result);
      }
    }
  }

  *(v1 + 44) = 0;
  return result;
}

uint64_t sub_245415470(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

          v10 = *(a1 + 44);
          goto LABEL_42;
        }

        if (v6 == 4)
        {
          if (v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_56:
          *(a1 + 44) |= 8u;
          v25 = *(a1 + 24);
          if (!v25)
          {
            operator new();
          }

          v38 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
            {
              return 0;
            }
          }

          else
          {
            v38 = *v26;
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
          if (!sub_2454100BC(v25, this) || *(this + 36) != 1)
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

          v31 = *(this + 1);
          if (v31 < *(this + 2) && *v31 == 42)
          {
            *(this + 1) = v31 + 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_70:
          *(a1 + 44) |= 0x10u;
          v32 = *(a1 + 32);
          if (!v32)
          {
            operator new();
          }

          v38 = 0;
          v33 = *(this + 1);
          if (v33 >= *(this + 2) || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
            {
              return 0;
            }
          }

          else
          {
            v38 = *v33;
            *(this + 1) = v33 + 1;
          }

          v34 = *(this + 14);
          v35 = *(this + 15);
          *(this + 14) = v34 + 1;
          if (v34 >= v35)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2454146D0(v32, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v36 = *(this + 14);
          v22 = __OFSUB__(v36, 1);
          v37 = v36 - 1;
          if (v37 < 0 == v22)
          {
            *(this + 14) = v37;
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
        goto LABEL_21;
      }

      v38 = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38);
        if (!result)
        {
          return result;
        }

        v12 = v38;
      }

      else
      {
        *(this + 1) = v11 + 1;
      }

      if (v12 <= 8)
      {
        *(a1 + 44) |= 1u;
        *(a1 + 8) = v12;
      }

      v14 = *(this + 1);
      v8 = *(this + 2);
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(this + 1) = v9;
LABEL_34:
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

        v10 = *(a1 + 44) | 2;
        *(a1 + 44) = v10;
        if (v16 < v8 && *v16 == 26)
        {
          *(this + 1) = v16 + 1;
LABEL_42:
          *(a1 + 44) = v10 | 4;
          v17 = *(a1 + 16);
          if (!v17)
          {
            operator new();
          }

          v38 = 0;
          v18 = *(this + 1);
          if (v18 >= *(this + 2) || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
            {
              return 0;
            }
          }

          else
          {
            v38 = *v18;
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
          if (!sub_2453F82C0(v17, this) || *(this + 36) != 1)
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
            goto LABEL_56;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_34;
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

uint64_t sub_2454159B0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 44);
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
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_9:
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF00 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 24);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEF00 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  if ((*(v5 + 44) & 0x10) != 0)
  {
LABEL_15:
    v9 = *(v5 + 32);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEF00 + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  }

  return result;
}

uint64_t sub_245415AB0(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
  }

  if (*(a1 + 44))
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
      v2 = *(a1 + 44);
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
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 44);
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
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEF00 + 16);
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
    v2 = *(a1 + 44);
    if ((v2 & 8) == 0)
    {
LABEL_19:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_19;
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEF00 + 24);
  }

  v12 = sub_24541081C(v11);
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
  if ((*(a1 + 44) & 0x10) != 0)
  {
LABEL_33:
    v15 = *(a1 + 32);
    if (!v15)
    {
      sub_2453EB7EC();
      v15 = *(qword_2813CEF00 + 32);
    }

    v16 = sub_245414D30(v15);
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
  }

LABEL_39:
  *(a1 + 40) = v3;
  return v3;
}

void sub_245415C48(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858589B8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245414FBC(a1, lpsrc);
}

void sub_245415D04(uint64_t a1)
{
  *a1 = &unk_2858576D8;
  sub_2453EB7EC();
  v2 = *(a1 + 20);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 8) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 20);
      }
    }
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    MEMORY[0x245D6A0A0](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245415DCC(uint64_t a1)
{
  sub_245415D04(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245415E5C(uint64_t result)
{
  v1 = result;
  if (*(result + 40))
  {
    *(result + 32) = 0;
  }

  if (*(result + 16) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 8) + 8 * v2);
      result = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_245415EDC(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        goto LABEL_13;
      }

      v7 = *(this + 1);
      v8 = *(this + 2);
      if (v7 >= v8 || (v9 = *v7, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        a1[8] = v9;
        v10 = v7 + 1;
        *(this + 1) = v10;
      }

      a1[10] |= 1u;
      if (v10 < v8 && *v10 == 18)
      {
        do
        {
          *(this + 1) = v10 + 1;
LABEL_21:
          v12 = a1[5];
          v13 = a1[4];
          if (v13 >= v12)
          {
            if (v12 == a1[6])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
              v12 = a1[5];
            }

            a1[5] = v12 + 1;
            operator new();
          }

          v14 = *(a1 + 1);
          a1[4] = v13 + 1;
          v15 = *(v14 + 8 * v13);
          v23 = 0;
          v16 = *(this + 1);
          if (v16 >= *(this + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
            {
              return 0;
            }
          }

          else
          {
            v23 = *v16;
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
          if (!sub_2453FEA30(v15, this) || *(this + 36) != 1)
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

          v10 = *(this + 1);
          v22 = *(this + 2);
        }

        while (v10 < v22 && *v10 == 18);
        if (v10 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 2)
    {
      goto LABEL_21;
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
}

uint64_t sub_24541618C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 40))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 32), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_245416204(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
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
  v5 = (v4 + v2);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sub_2453FF208(*(*(a1 + 8) + 8 * v6));
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v8 + v5 + v9);
      ++v6;
    }

    while (v6 < *(a1 + 16));
  }

  *(a1 + 36) = v5;
  return v5;
}

void sub_2454162B4(unsigned int *a1, unsigned int *lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858589D0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v5 = a1[4];
  v6 = lpsrc[4];
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
  LODWORD(v7) = lpsrc[4];
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 >= v7)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v9 = *(*(lpsrc + 1) + 8 * v8);
      v10 = a1[5];
      v11 = a1[4];
      if (v11 >= v10)
      {
        if (v10 == a1[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
          v10 = a1[5];
        }

        a1[5] = v10 + 1;
        operator new();
      }

      v12 = *(a1 + 1);
      a1[4] = v11 + 1;
      sub_2453FE64C(*(v12 + 8 * v11), v9);
      ++v8;
      v7 = lpsrc[4];
    }

    while (v8 < v7);
  }

  if (lpsrc[10])
  {
    v13 = lpsrc[8];
    a1[10] |= 1u;
    a1[8] = v13;
  }
}

void sub_2454164F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245416530(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857750;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541658C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245416530(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541661C(uint64_t result)
{
  if (*(result + 40))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_245416638(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

          v11 = *(this + 1);
          v7 = *(this + 2);
          if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
            if (!result)
            {
              return result;
            }

            v13 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            a1[2] = v12;
            v13 = v11 + 1;
            *(this + 1) = v13;
          }

          a1[10] |= 1u;
          if (v13 < v7 && *v13 == 16)
          {
            v16 = v13 + 1;
            *(this + 1) = v16;
            goto LABEL_39;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v9 = *(this + 1);
            v7 = *(this + 2);
            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(this + 1);
          v7 = *(this + 2);
LABEL_39:
          if (v16 >= v7 || (v17 = *v16, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            a1[3] = v17;
            v18 = v16 + 1;
            *(this + 1) = v18;
          }

          a1[10] |= 2u;
          if (v18 < v7 && *v18 == 24)
          {
            v9 = v18 + 1;
            *(this + 1) = v9;
LABEL_47:
            if (v9 >= v7 || (v19 = *v9, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v20 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              a1[4] = v19;
              v20 = v9 + 1;
              *(this + 1) = v20;
            }

            a1[10] |= 4u;
            if (v20 < v7 && *v20 == 32)
            {
              v14 = v20 + 1;
              *(this + 1) = v14;
              goto LABEL_55;
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
            v15 = *(this + 1);
            v7 = *(this + 2);
            goto LABEL_71;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_79;
        }

        goto LABEL_30;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(this + 1);
      v7 = *(this + 2);
LABEL_55:
      if (v14 >= v7 || (v21 = *v14, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
        if (!result)
        {
          return result;
        }

        v22 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[5] = v21;
        v22 = v14 + 1;
        *(this + 1) = v22;
      }

      a1[10] |= 8u;
      if (v22 < v7 && *v22 == 40)
      {
        v8 = v22 + 1;
        *(this + 1) = v8;
LABEL_63:
        if (v8 >= v7 || (v23 = *v8, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
          if (!result)
          {
            return result;
          }

          v24 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[6] = v23;
          v24 = v8 + 1;
          *(this + 1) = v24;
        }

        a1[10] |= 0x10u;
        if (v24 < v7 && *v24 == 48)
        {
          v15 = v24 + 1;
          *(this + 1) = v15;
LABEL_71:
          if (v15 >= v7 || (v25 = *v15, (v25 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
            if (!result)
            {
              return result;
            }

            v26 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            a1[7] = v25;
            v26 = v15 + 1;
            *(this + 1) = v26;
          }

          a1[10] |= 0x20u;
          if (v26 < v7 && *v26 == 56)
          {
            v10 = v26 + 1;
            *(this + 1) = v10;
LABEL_79:
            if (v10 >= v7 || (v27 = *v10, (v27 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
              if (!result)
              {
                return result;
              }

              v28 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              a1[8] = v27;
              v28 = v10 + 1;
              *(this + 1) = v28;
            }

            a1[10] |= 0x40u;
            if (v28 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_63;
    }

LABEL_30:
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

unsigned int *sub_2454169F4(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[10];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[10];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[10];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[10];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[10];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
    if ((v5[10] & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[10];
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return result;
  }

LABEL_15:
  v7 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v7, a2, a4);
}

uint64_t sub_245416AF0(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_40;
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
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
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
        goto LABEL_17;
      }

      goto LABEL_28;
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
    v2 = *(a1 + 40);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_28:
  v11 = *(a1 + 24);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(a1 + 40);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_32:
  v13 = *(a1 + 28);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(a1 + 40);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) != 0)
  {
LABEL_36:
    v15 = *(a1 + 32);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    }

    else
    {
      v16 = 2;
    }

    v3 = (v16 + v3);
  }

LABEL_40:
  *(a1 + 36) = v3;
  return v3;
}

void sub_245416C5C(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858589E8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(lpsrc + 40);
  if (!v5)
  {
    return;
  }

  if (lpsrc[5])
  {
    v7 = *(lpsrc + 2);
    *(a1 + 10) |= 1u;
    *(a1 + 2) = v7;
    v5 = *(lpsrc + 10);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((lpsrc[5] & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 3);
  *(a1 + 10) |= 2u;
  *(a1 + 3) = v8;
  v5 = *(lpsrc + 10);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(lpsrc + 4);
  *(a1 + 10) |= 4u;
  *(a1 + 4) = v9;
  v5 = *(lpsrc + 10);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v11 = *(lpsrc + 6);
    *(a1 + 10) |= 0x10u;
    *(a1 + 6) = v11;
    v5 = *(lpsrc + 10);
    if ((v5 & 0x20) == 0)
    {
LABEL_11:
      if ((v5 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_17:
  v10 = *(lpsrc + 5);
  *(a1 + 10) |= 8u;
  *(a1 + 5) = v10;
  v5 = *(lpsrc + 10);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  v12 = *(lpsrc + 7);
  *(a1 + 10) |= 0x20u;
  *(a1 + 7) = v12;
  if ((lpsrc[5] & 0x40) != 0)
  {
LABEL_12:
    v6 = *(lpsrc + 8);
    *(a1 + 10) |= 0x40u;
    *(a1 + 8) = v6;
  }
}

void sub_245416E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245416E48(_DWORD *a1, uint64_t a2)
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

void sub_245416EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245416F0C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858577C8;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245416F68(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245416F0C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245416FEC(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_245417000(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

uint64_t sub_24541717C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2454171E8(uint64_t a1)
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

void sub_245417278(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858A00, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245416E48(a1, lpsrc);
}

void sub_245417334(_DWORD *a1, uint64_t a2)
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
      v6 = *(a2 + 8);
      a1[6] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 24);
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

    v7 = *(a2 + 12);
    a1[6] |= 2u;
    a1[3] = v7;
    if ((*(a2 + 24) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 16);
    a1[6] |= 4u;
    a1[4] = v5;
  }
}

void sub_245417408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245417420(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857840;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541747C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245417420(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245417504(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_24541751C(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[2] = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      a1[6] |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[3] = v13;
          v14 = v11 + 1;
          *(this + 1) = v14;
        }

        a1[6] |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(this + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            a1[4] = v15;
            v16 = v12 + 1;
            *(this + 1) = v16;
          }

          a1[6] |= 4u;
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

unsigned int *sub_245417708(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
  v6 = v5[6];
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
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t sub_245417794(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(a1 + 24))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 24);
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
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 24);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
  }

LABEL_19:
  *(a1 + 20) = v3;
  return v3;
}

void sub_24541784C(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858A18, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245417334(a1, lpsrc);
}

void sub_245417908(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      *(a1 + 28) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEB78 + 8);
      }

      sub_245416E48(v6, v7);
      v4 = *(a2 + 28);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 28) |= 2u;
    *(a1 + 16) = v8;
    if ((*(a2 + 28) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 20);
    *(a1 + 28) |= 4u;
    *(a1 + 20) = v5;
  }
}

void sub_245417A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245417A5C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858578B8;
  sub_2453EB7EC();
  if (qword_2813CEB78 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245417AF4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245417A5C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245417B78(uint64_t result)
{
  if (*(result + 28))
  {
    if (*(result + 28))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_245417BA8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        if ((TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_31;
      }

LABEL_18:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != 1 || v7 != 2)
    {
      goto LABEL_18;
    }

    *(a1 + 28) |= 1u;
    v8 = *(a1 + 8);
    if (!v8)
    {
      operator new();
    }

    v24 = 0;
    v9 = *(this + 1);
    if (v9 >= *(this + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v9;
      *(this + 1) = v9 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_245417000(v8, this) || *(this + 36) != 1)
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

    v18 = *(this + 1);
    v10 = *(this + 2);
    if (v18 < v10 && *v18 == 16)
    {
      v11 = v18 + 1;
      *(this + 1) = v11;
LABEL_31:
      if (v11 >= v10 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v19;
        v20 = v11 + 1;
        *(this + 1) = v20;
      }

      *(a1 + 28) |= 2u;
      if (v20 < v10 && *v20 == 24)
      {
        v12 = v20 + 1;
        *(this + 1) = v12;
LABEL_39:
        if (v12 >= v10 || (v22 = *v12, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v23 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v22;
          v23 = v12 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 28) |= 4u;
        if (v23 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_245417E5C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEB78 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v8, a2, a4);
}

uint64_t sub_245417EFC(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if (*(a1 + 28))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      sub_2453EB7EC();
      v4 = *(qword_2813CEB78 + 8);
    }

    v5 = sub_2454171E8(v4);
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
    v2 = *(a1 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v8 = *(a1 + 16);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(a1 + 28);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(a1 + 20);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v3 = (v11 + v3);
  }

LABEL_21:
  *(a1 + 24) = v3;
  return v3;
}

void sub_245417FD4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858A30, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245417908(a1, lpsrc);
}

void sub_245418090(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      *(a1 + 28) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        sub_2453EB7EC();
        v6 = *(qword_2813CEFA0 + 8);
      }

      sub_245417334(v5, v6);
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 28) |= 2u;
      v7 = *(a1 + 16);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (!v8)
      {
        sub_2453EB7EC();
        v8 = *(qword_2813CEFA0 + 16);
      }

      sub_245417908(v7, v8);
    }
  }
}

void sub_245418208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245418220(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857930;
  sub_2453EB7EC();
  if (qword_2813CEFA0 != a1)
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

void sub_2454182E4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245418220(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245418368(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 28);
  if (v2)
  {
    if (*(result + 28))
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v2 = *(result + 28);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_245417B78(result);
      }
    }
  }

  *(v1 + 28) = 0;
  return result;
}

uint64_t sub_2454183C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

      if (TagFallback >> 3 != 1 || v6 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 28) |= 1u;
      v7 = *(a1 + 8);
      if (!v7)
      {
        operator new();
      }

      v22 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
        {
          return 0;
        }
      }

      else
      {
        v22 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(this + 14);
      v10 = *(this + 15);
      *(this + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_24541751C(v7, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v11 = *(this + 14);
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v13 < 0 == v12)
      {
        *(this + 14) = v13;
      }

      v14 = *(this + 1);
      if (v14 < *(this + 2) && *v14 == 18)
      {
        *(this + 1) = v14 + 1;
LABEL_27:
        *(a1 + 28) |= 2u;
        v15 = *(a1 + 16);
        if (!v15)
        {
          operator new();
        }

        v23 = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
          {
            return 0;
          }
        }

        else
        {
          v23 = *v16;
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
        if (!sub_245417BA8(v15, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v19 = *(this + 14);
        v12 = __OFSUB__(v19, 1);
        v20 = v19 - 1;
        if (v20 < 0 == v12)
        {
          *(this + 14) = v20;
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

    if (v6 == 2)
    {
      goto LABEL_27;
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
}

uint64_t sub_2454186BC(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEFA0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEFA0 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_245418750(uint64_t a1)
{
  if (!*(a1 + 28))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_2453EB7EC();
    v3 = *(qword_2813CEFA0 + 8);
  }

  v4 = sub_245417794(v3);
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
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_12:
    v7 = *(a1 + 16);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEFA0 + 16);
    }

    v8 = sub_245417EFC(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 = (v2 + v9 + v10 + 1);
  }

LABEL_18:
  *(a1 + 24) = v2;
  return v2;
}

void sub_24541882C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858A48, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245418090(a1, lpsrc);
}

void sub_2454188E8(uint64_t a1, uint64_t a2)
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
      if (v5 >= 6)
      {
        __assert_rtn("set_cell_time_assistance_type", "GnssEmergencyTypes.pb.h", 23025, "::CoreGem::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
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
        v7 = *(qword_2813CEB80 + 8);
      }

      sub_245418090(v6, v7);
    }
  }
}

void sub_245418A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245418A3C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858579A8;
  sub_2453EB7EC();
  if (qword_2813CEB80 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_245418AD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245418A3C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245418B5C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    *(result + 16) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_245418368(result);
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_245418B9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
    if (!sub_2454183C8(v11, this) || *(this + 36) != 1)
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

uint64_t sub_245418DEC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(qword_2813CEB80 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_245418E6C(uint64_t a1)
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
      v5 = *(qword_2813CEB80 + 8);
    }

    v6 = sub_245418750(v5);
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

void sub_245418F38(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858A60, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2454188E8(a1, lpsrc);
}

void sub_245418FF4(_DWORD *a1, uint64_t a2)
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
      v6 = *(a2 + 8);
      a1[8] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 32);
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

    v7 = *(a2 + 12);
    a1[8] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 32);
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
    v8 = *(a2 + 16);
    a1[8] |= 4u;
    a1[4] = v8;
    v4 = *(a2 + 32);
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
    v9 = *(a2 + 20);
    a1[8] |= 8u;
    a1[5] = v9;
    if ((*(a2 + 32) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 24);
    a1[8] |= 0x10u;
    a1[6] = v5;
  }
}

void sub_245419108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245419120(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857A20;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541917C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_245419120(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245419204(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_24541921C(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          v7 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v7 = *(this + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[2] = v13;
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        a1[8] |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(this + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            a1[3] = v15;
            v16 = v9 + 1;
            *(this + 1) = v16;
          }

          a1[8] |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(this + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              a1[4] = v17;
              v18 = v10 + 1;
              *(this + 1) = v18;
            }

            a1[8] |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(this + 1) = v11;
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

        v10 = *(this + 1);
        v7 = *(this + 2);
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

      v11 = *(this + 1);
      v7 = *(this + 2);
LABEL_48:
      if (v11 >= v7 || (v19 = *v11, (v19 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[5] = v19;
        v20 = v11 + 1;
        *(this + 1) = v20;
      }

      a1[8] |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(this + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
          if (!result)
          {
            return result;
          }

          v22 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[6] = v21;
          v22 = v8 + 1;
          *(this + 1) = v22;
        }

        a1[8] |= 0x10u;
        if (v22 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_56;
    }

LABEL_21:
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

unsigned int *sub_2454194F0(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[8];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[8];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t sub_2454195B4(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 32))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 32);
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
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 32);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 32);
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
    v2 = *(a1 + 32);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_26:
    v11 = *(a1 + 24);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_30:
  *(a1 + 28) = v3;
  return v3;
}

void sub_2454196C8(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858A78, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245418FF4(a1, lpsrc);
}

void sub_245419784(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
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
      sub_245418FF4(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 32);
    }

    while (v7 < v6);
  }

  v12 = *(a2 + 68);
  if (!v12)
  {
    goto LABEL_21;
  }

  if (v12)
  {
    v14 = *(a2 + 8);
    a1[17] |= 1u;
    a1[2] = v14;
    v12 = *(a2 + 68);
    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  a1[17] |= 2u;
  a1[3] = v15;
  v12 = *(a2 + 68);
  if ((v12 & 4) == 0)
  {
LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = *(a2 + 16);
  a1[17] |= 4u;
  a1[4] = v16;
  v12 = *(a2 + 68);
  if ((v12 & 8) == 0)
  {
LABEL_18:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = *(a2 + 20);
  a1[17] |= 8u;
  a1[5] = v17;
  v12 = *(a2 + 68);
  if ((v12 & 0x20) == 0)
  {
LABEL_19:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = *(a2 + 48);
  a1[17] |= 0x20u;
  a1[12] = v18;
  v12 = *(a2 + 68);
  if ((v12 & 0x40) != 0)
  {
LABEL_29:
    v19 = *(a2 + 52);
    if (v19 >= 6)
    {
      __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 23343, "::CoreGem::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
    }

    a1[17] |= 0x40u;
    a1[13] = v19;
    v12 = *(a2 + 68);
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_31;
    }

LABEL_21:
    if ((v12 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_20:
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_31:
  v20 = *(a2 + 56);
  if (v20 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 23366, "::CoreGem::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  a1[17] |= 0x80u;
  a1[14] = v20;
  if ((*(a2 + 68) & 0x100) != 0)
  {
LABEL_22:
    v13 = *(a2 + 60);
    a1[17] |= 0x100u;
    a1[15] = v13;
  }
}

void sub_245419A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245419AB0(uint64_t a1)
{
  *a1 = &unk_285857A98;
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

void sub_245419B78(uint64_t a1)
{
  sub_245419AB0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_245419C10(uint64_t a1)
{
  v2 = *(a1 + 68);
  if (v2)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 60) = 0;
  }

  result = sub_2453DC6D0(a1 + 24);
  *(a1 + 68) = 0;
  return result;
}

uint64_t sub_245419C60(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

              v18 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_54;
            }

            if (v6 != 4 || (TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v12 = *(this + 1);
            v10 = *(this + 2);
LABEL_62:
            if (v12 >= v10 || (v27 = *v12, v27 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
              if (!result)
              {
                return result;
              }

              v28 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              a1[5] = v27;
              v28 = v12 + 1;
              *(this + 1) = v28;
            }

            a1[17] |= 8u;
            if (v28 < v10 && *v28 == 42)
            {
              while (1)
              {
                *(this + 1) = v28 + 1;
LABEL_70:
                v29 = a1[9];
                v30 = a1[8];
                if (v30 >= v29)
                {
                  if (v29 == a1[10])
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6));
                    v29 = a1[9];
                  }

                  a1[9] = v29 + 1;
                  operator new();
                }

                v31 = *(a1 + 3);
                a1[8] = v30 + 1;
                v32 = *(v31 + 8 * v30);
                v50 = 0;
                v33 = *(this + 1);
                if (v33 >= *(this + 2) || *v33 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
                  {
                    return 0;
                  }
                }

                else
                {
                  v50 = *v33;
                  *(this + 1) = v33 + 1;
                }

                v34 = *(this + 14);
                v35 = *(this + 15);
                *(this + 14) = v34 + 1;
                if (v34 >= v35)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                if (!sub_24541921C(v32, this) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v36 = *(this + 14);
                v37 = __OFSUB__(v36, 1);
                v38 = v36 - 1;
                if (v38 < 0 == v37)
                {
                  *(this + 14) = v38;
                }

                v28 = *(this + 1);
                v13 = *(this + 2);
                if (v28 >= v13)
                {
                  break;
                }

                v39 = *v28;
                if (v39 != 42)
                {
                  if (v39 != 48)
                  {
                    goto LABEL_1;
                  }

                  v14 = v28 + 1;
                  *(this + 1) = v14;
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

              v11 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v15 = *(this + 1);
            v10 = *(this + 2);
            if (v15 >= v10 || (v16 = *v15, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              a1[2] = v16;
              v17 = v15 + 1;
              *(this + 1) = v17;
            }

            a1[17] |= 1u;
            if (v17 < v10 && *v17 == 16)
            {
              v11 = v17 + 1;
              *(this + 1) = v11;
LABEL_46:
              if (v11 >= v10 || (v23 = *v11, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
                if (!result)
                {
                  return result;
                }

                v24 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                a1[3] = v23;
                v24 = v11 + 1;
                *(this + 1) = v24;
              }

              a1[17] |= 2u;
              if (v24 < v10 && *v24 == 24)
              {
                v18 = v24 + 1;
                *(this + 1) = v18;
LABEL_54:
                if (v18 >= v10 || (v25 = *v18, v25 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  a1[4] = v25;
                  v26 = v18 + 1;
                  *(this + 1) = v26;
                }

                a1[17] |= 4u;
                if (v26 < v10 && *v26 == 32)
                {
                  v12 = v26 + 1;
                  *(this + 1) = v12;
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

          v19 = *(this + 1);
          v13 = *(this + 2);
          goto LABEL_96;
        }

        if (v6 != 8)
        {
          if (v6 == 9 && (TagFallback & 7) == 0)
          {
            v9 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_116;
          }

          goto LABEL_37;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
LABEL_106:
        v48 = 0;
        if (v21 >= v20 || (v44 = *v21, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v48);
          if (!result)
          {
            return result;
          }

          v44 = v48;
        }

        else
        {
          *(this + 1) = v21 + 1;
        }

        if (v44 <= 6)
        {
          a1[17] |= 0x80u;
          a1[14] = v44;
        }

        v45 = *(this + 1);
        v8 = *(this + 2);
        if (v45 < v8 && *v45 == 72)
        {
          v9 = v45 + 1;
          *(this + 1) = v9;
LABEL_116:
          if (v9 >= v8 || (v46 = *v9, v46 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 15);
            if (!result)
            {
              return result;
            }

            v47 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            a1[15] = v46;
            v47 = v9 + 1;
            *(this + 1) = v47;
          }

          a1[17] |= 0x100u;
          if (v47 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

      if (v6 != 6 || (TagFallback & 7) != 0)
      {
        break;
      }

      v14 = *(this + 1);
      v13 = *(this + 2);
LABEL_88:
      if (v14 >= v13 || (v40 = *v14, v40 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 12);
        if (!result)
        {
          return result;
        }

        v41 = *(this + 1);
        v13 = *(this + 2);
      }

      else
      {
        a1[12] = v40;
        v41 = v14 + 1;
        *(this + 1) = v41;
      }

      a1[17] |= 0x20u;
      if (v41 < v13 && *v41 == 56)
      {
        v19 = v41 + 1;
        *(this + 1) = v19;
LABEL_96:
        v49 = 0;
        if (v19 >= v13 || (v42 = *v19, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
          if (!result)
          {
            return result;
          }

          v42 = v49;
        }

        else
        {
          *(this + 1) = v19 + 1;
        }

        if (v42 <= 5)
        {
          a1[17] |= 0x40u;
          a1[13] = v42;
        }

        v43 = *(this + 1);
        v20 = *(this + 2);
        if (v43 < v20 && *v43 == 64)
        {
          v21 = v43 + 1;
          *(this + 1) = v21;
          goto LABEL_106;
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

uint64_t sub_24541A23C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 68);
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
  v6 = *(v5 + 68);
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
  if ((*(v5 + 68) & 8) != 0)
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

  v8 = *(v5 + 68);
  if ((v8 & 0x20) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 48), a2, a4);
    v8 = *(v5 + 68);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 56), a2, a4);
      if ((*(v5 + 68) & 0x100) == 0)
      {
        return result;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 52), a2, a4);
  v8 = *(v5 + 68);
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v8 & 0x100) == 0)
  {
    return result;
  }

LABEL_21:
  v9 = *(v5 + 60);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v9, a2, a4);
}

uint64_t sub_24541A394(uint64_t a1)
{
  v2 = *(a1 + 68);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 68);
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
    v2 = *(a1 + 68);
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
      v2 = *(a1 + 68);
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
    v2 = *(a1 + 68);
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

    goto LABEL_34;
  }

LABEL_30:
  v11 = *(a1 + 48);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(a1 + 68);
  }

  else
  {
    v12 = 2;
  }

  v3 += v12;
  if ((v2 & 0x40) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_34:
  v13 = *(a1 + 52);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(a1 + 68);
  }

  else
  {
    v14 = 2;
  }

  v3 += v14;
  if ((v2 & 0x80) == 0)
  {
LABEL_20:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

LABEL_40:
  v15 = *(a1 + 56);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(a1 + 68);
  }

  else
  {
    v16 = 2;
  }

  v3 += v16;
  if ((v2 & 0x100) != 0)
  {
LABEL_46:
    v17 = *(a1 + 60);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v3 += v18;
  }

LABEL_50:
  v19 = *(a1 + 32);
  v20 = (v19 + v3);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = sub_2454195B4(*(*(a1 + 24) + 8 * v21));
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(a1 + 32));
  }

  *(a1 + 64) = v20;
  return v20;
}

void sub_24541A5A8(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858A90, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_245419784(a1, lpsrc);
}

void sub_24541A664(_DWORD *a1, _DWORD *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = a2[17];
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = a2[2];
    a1[17] |= 1u;
    a1[2] = v7;
    v4 = a2[17];
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = a2[3];
  a1[17] |= 2u;
  a1[3] = v8;
  v4 = a2[17];
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = a2[4];
  a1[17] |= 4u;
  a1[4] = v9;
  v4 = a2[17];
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = a2[5];
  a1[17] |= 8u;
  a1[5] = v10;
  v4 = a2[17];
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    v12 = a2[7];
    a1[17] |= 0x20u;
    a1[7] = v12;
    v4 = a2[17];
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_26:
  v11 = a2[6];
  a1[17] |= 0x10u;
  a1[6] = v11;
  v4 = a2[17];
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  v13 = a2[8];
  a1[17] |= 0x40u;
  a1[8] = v13;
  v4 = a2[17];
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = a2[9];
    a1[17] |= 0x80u;
    a1[9] = v5;
    v4 = a2[17];
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = a2[10];
    a1[17] |= 0x100u;
    a1[10] = v14;
    v4 = a2[17];
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = a2[11];
  a1[17] |= 0x200u;
  a1[11] = v15;
  v4 = a2[17];
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = a2[12];
  a1[17] |= 0x400u;
  a1[12] = v16;
  v4 = a2[17];
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_33:
  v17 = a2[13];
  if (v17 >= 6)
  {
    __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 23657, "::CoreGem::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
  }

  a1[17] |= 0x800u;
  a1[13] = v17;
  v4 = a2[17];
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_35:
  v18 = a2[14];
  if (v18 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 23680, "::CoreGem::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  a1[17] |= 0x1000u;
  a1[14] = v18;
  if ((a2[17] & 0x2000) != 0)
  {
LABEL_20:
    v6 = a2[15];
    a1[17] |= 0x2000u;
    a1[15] = v6;
  }
}

void sub_24541A8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_24541A90C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285857B10;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24541A968(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24541A90C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_24541A9FC(uint64_t result)
{
  v1 = *(result + 68);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
  }

  *(result + 68) = 0;
  return result;
}

uint64_t sub_24541AA2C(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (2)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v7 = *(this + 1);
        v6 = *(this + 2);
        if (v7 < v6)
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            a1[2] = v8;
            v9 = v7 + 1;
            *(this + 1) = v9;
LABEL_42:
            a1[17] |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v18 = v9 + 1;
              *(this + 1) = v18;
              goto LABEL_45;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (result)
        {
          v9 = *(this + 1);
          v6 = *(this + 2);
          goto LABEL_42;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(this + 1);
        v6 = *(this + 2);
LABEL_45:
        if (v18 >= v6 || (v25 = *v18, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v26 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[3] = v25;
          v26 = v18 + 1;
          *(this + 1) = v26;
        }

        a1[17] |= 2u;
        if (v26 >= v6 || *v26 != 24)
        {
          continue;
        }

        v15 = v26 + 1;
        *(this + 1) = v15;
LABEL_53:
        if (v15 >= v6 || (v27 = *v15, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
          if (!result)
          {
            return result;
          }

          v28 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[4] = v27;
          v28 = v15 + 1;
          *(this + 1) = v28;
        }

        a1[17] |= 4u;
        if (v28 >= v6 || *v28 != 32)
        {
          continue;
        }

        v16 = v28 + 1;
        *(this + 1) = v16;
LABEL_61:
        if (v16 >= v6 || (v29 = *v16, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[5] = v29;
          v30 = v16 + 1;
          *(this + 1) = v30;
        }

        a1[17] |= 8u;
        if (v30 >= v6 || *v30 != 40)
        {
          continue;
        }

        v11 = v30 + 1;
        *(this + 1) = v11;
LABEL_69:
        v52 = 0;
        if (v11 >= v6 || (v31 = *v11, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v52);
          if (!result)
          {
            return result;
          }

          v31 = v52;
          v32 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v32 = v11 + 1;
          *(this + 1) = v32;
        }

        a1[6] = v31;
        a1[17] |= 0x10u;
        if (v32 >= v6 || *v32 != 48)
        {
          continue;
        }

        v19 = v32 + 1;
        *(this + 1) = v19;
LABEL_77:
        if (v19 >= v6 || (v33 = *v19, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[7] = v33;
          v34 = v19 + 1;
          *(this + 1) = v34;
        }

        a1[17] |= 0x20u;
        if (v34 >= v6 || *v34 != 56)
        {
          continue;
        }

        v22 = v34 + 1;
        *(this + 1) = v22;
LABEL_85:
        if (v22 >= v6 || (v35 = *v22, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[8] = v35;
          v36 = v22 + 1;
          *(this + 1) = v36;
        }

        a1[17] |= 0x40u;
        if (v36 >= v6 || *v36 != 64)
        {
          continue;
        }

        v17 = v36 + 1;
        *(this + 1) = v17;
LABEL_93:
        if (v17 >= v6 || (v37 = *v17, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
          if (!result)
          {
            return result;
          }

          v38 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[9] = v37;
          v38 = v17 + 1;
          *(this + 1) = v38;
        }

        a1[17] |= 0x80u;
        if (v38 >= v6 || *v38 != 72)
        {
          continue;
        }

        v24 = v38 + 1;
        *(this + 1) = v24;
LABEL_101:
        if (v24 >= v6 || (v39 = *v24, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
          if (!result)
          {
            return result;
          }

          v40 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[10] = v39;
          v40 = v24 + 1;
          *(this + 1) = v40;
        }

        a1[17] |= 0x100u;
        if (v40 >= v6 || *v40 != 80)
        {
          continue;
        }

        v14 = v40 + 1;
        *(this + 1) = v14;
LABEL_109:
        if (v14 >= v6 || (v41 = *v14, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 11);
          if (!result)
          {
            return result;
          }

          v42 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[11] = v41;
          v42 = v14 + 1;
          *(this + 1) = v42;
        }

        a1[17] |= 0x200u;
        if (v42 >= v6 || *v42 != 88)
        {
          continue;
        }

        v23 = v42 + 1;
        *(this + 1) = v23;
LABEL_117:
        if (v23 >= v6 || (v43 = *v23, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 12);
          if (!result)
          {
            return result;
          }

          v44 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          a1[12] = v43;
          v44 = v23 + 1;
          *(this + 1) = v44;
        }

        a1[17] |= 0x400u;
        if (v44 >= v6 || *v44 != 96)
        {
          continue;
        }

        v10 = v44 + 1;
        *(this + 1) = v10;
LABEL_125:
        v54 = 0;
        if (v10 >= v6 || (v45 = *v10, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54);
          if (!result)
          {
            return result;
          }

          v45 = v54;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v45 <= 5)
        {
          a1[17] |= 0x800u;
          a1[13] = v45;
        }

        v46 = *(this + 1);
        v12 = *(this + 2);
        if (v46 >= v12 || *v46 != 104)
        {
          continue;
        }

        v13 = v46 + 1;
        *(this + 1) = v13;
LABEL_135:
        v53 = 0;
        if (v13 >= v12 || (v47 = *v13, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v53);
          if (!result)
          {
            return result;
          }

          v47 = v53;
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v47 <= 6)
        {
          a1[17] |= 0x1000u;
          a1[14] = v47;
        }

        v48 = *(this + 1);
        v20 = *(this + 2);
        if (v48 >= v20 || *v48 != 112)
        {
          continue;
        }

        v21 = v48 + 1;
        *(this + 1) = v21;
LABEL_145:
        if (v21 >= v20 || (v49 = *v21, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 15);
          if (!result)
          {
            return result;
          }

          v50 = *(this + 1);
          v20 = *(this + 2);
        }

        else
        {
          a1[15] = v49;
          v50 = v21 + 1;
          *(this + 1) = v50;
        }

        a1[17] |= 0x2000u;
        if (v50 != v20 || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v15 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_53;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v16 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_61;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v11 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_69;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v19 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_77;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v22 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_85;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_93;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v24 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_101;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v14 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_109;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v23 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_117;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v10 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_125;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_135;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_145;
      default:
LABEL_36:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

unsigned int *sub_24541B0D4(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[17];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[17];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[17];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[17];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[17];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[6], a2, a4);
  v6 = v5[17];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[17];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[17];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[17];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, v5[14], a2, a4);
    if ((v5[17] & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, v5[13], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return result;
  }

LABEL_29:
  v7 = v5[15];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v7, a2, a4);
}

uint64_t sub_24541B294(unsigned int *a1)
{
  v2 = a1[17];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if (v2)
  {
    v4 = a1[2];
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = a1[17];
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

  v5 = a1[3];
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = a1[17];
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = a1[4];
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = a1[17];
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
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = a1[5];
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = a1[17];
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_29:
  v11 = a1[6];
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = a1[17];
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_35:
  v13 = a1[7];
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = a1[17];
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v15 = a1[8];
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = a1[17];
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_43:
    v17 = a1[9];
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = a1[17];
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
  }

LABEL_47:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_83;
  }

  if ((v2 & 0x100) != 0)
  {
    v19 = a1[10];
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = a1[17];
    }

    else
    {
      v20 = 2;
    }

    v3 = (v20 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_50:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_63;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v21 = a1[11];
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = a1[17];
  }

  else
  {
    v22 = 2;
  }

  v3 = (v22 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_51:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

LABEL_63:
  v23 = a1[12];
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = a1[17];
  }

  else
  {
    v24 = 2;
  }

  v3 = (v24 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_52:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_73;
  }

LABEL_67:
  v25 = a1[13];
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = a1[17];
  }

  else
  {
    v26 = 2;
  }

  v3 = (v26 + v3);
  if ((v2 & 0x1000) == 0)
  {
LABEL_53:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_79;
  }

LABEL_73:
  v27 = a1[14];
  if ((v27 & 0x80000000) != 0)
  {
    v28 = 11;
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = a1[17];
  }

  else
  {
    v28 = 2;
  }

  v3 = (v28 + v3);
  if ((v2 & 0x2000) != 0)
  {
LABEL_79:
    v29 = a1[15];
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    }

    else
    {
      v30 = 2;
    }

    v3 = (v30 + v3);
  }

LABEL_83:
  a1[16] = v3;
  return v3;
}

void sub_24541B564(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858AA8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_24541A664(a1, lpsrc);
}

void sub_24541B620(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
  }

  v4 = *(a2 + 148);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v11 = *(a2 + 8);
    a1[37] |= 1u;
    a1[2] = v11;
    v4 = *(a2 + 148);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(a2 + 12);
  a1[37] |= 2u;
  a1[3] = v12;
  v4 = *(a2 + 148);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = *(a2 + 16);
  a1[37] |= 4u;
  a1[4] = v13;
  v4 = *(a2 + 148);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  v14 = *(a2 + 20);
  a1[37] |= 8u;
  a1[5] = v14;
  v4 = *(a2 + 148);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    v16 = *(a2 + 28);
    a1[37] |= 0x20u;
    a1[7] = v16;
    v4 = *(a2 + 148);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_52:
  v15 = *(a2 + 24);
  a1[37] |= 0x10u;
  a1[6] = v15;
  v4 = *(a2 + 148);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_54:
  v17 = *(a2 + 32);
  a1[37] |= 0x40u;
  a1[8] = v17;
  v4 = *(a2 + 148);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 36);
    a1[37] |= 0x80u;
    a1[9] = v5;
    v4 = *(a2 + 148);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v18 = *(a2 + 40);
    a1[37] |= 0x100u;
    a1[10] = v18;
    v4 = *(a2 + 148);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_58;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(a2 + 44);
  a1[37] |= 0x200u;
  a1[11] = v19;
  v4 = *(a2 + 148);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = *(a2 + 48);
  a1[37] |= 0x400u;
  a1[12] = v20;
  v4 = *(a2 + 148);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  v21 = *(a2 + 52);
  a1[37] |= 0x800u;
  a1[13] = v21;
  v4 = *(a2 + 148);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = *(a2 + 56);
  a1[37] |= 0x1000u;
  a1[14] = v22;
  v4 = *(a2 + 148);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = *(a2 + 60);
  a1[37] |= 0x2000u;
  a1[15] = v23;
  v4 = *(a2 + 148);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_62:
  v24 = *(a2 + 64);
  a1[37] |= 0x4000u;
  a1[16] = v24;
  v4 = *(a2 + 148);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 68);
    a1[37] |= 0x8000u;
    a1[17] = v6;
    v4 = *(a2 + 148);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v4 & 0x10000) != 0)
  {
    v25 = *(a2 + 72);
    a1[37] |= 0x10000u;
    a1[18] = v25;
    v4 = *(a2 + 148);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v26 = *(a2 + 76);
  a1[37] |= 0x20000u;
  a1[19] = v26;
  v4 = *(a2 + 148);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27 = *(a2 + 80);
  a1[37] |= 0x40000u;
  a1[20] = v27;
  v4 = *(a2 + 148);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28 = *(a2 + 84);
  a1[37] |= 0x80000u;
  a1[21] = v28;
  v4 = *(a2 + 148);
  if ((v4 & 0x100000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = *(a2 + 88);
  a1[37] |= 0x100000u;
  a1[22] = v29;
  v4 = *(a2 + 148);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = *(a2 + 92);
  a1[37] |= 0x200000u;
  a1[23] = v30;
  v4 = *(a2 + 148);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_70:
  v31 = *(a2 + 96);
  a1[37] |= 0x400000u;
  a1[24] = v31;
  v4 = *(a2 + 148);
  if ((v4 & 0x800000) != 0)
  {
LABEL_32:
    v7 = *(a2 + 100);
    a1[37] |= 0x800000u;
    a1[25] = v7;
    v4 = *(a2 + 148);
  }

LABEL_33:
  if (!HIBYTE(v4))
  {
    goto LABEL_42;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v32 = *(a2 + 104);
    a1[37] |= 0x1000000u;
    a1[26] = v32;
    v4 = *(a2 + 148);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_74;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v33 = *(a2 + 108);
  a1[37] |= 0x2000000u;
  a1[27] = v33;
  v4 = *(a2 + 148);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_75;
  }

LABEL_74:
  v34 = *(a2 + 112);
  a1[37] |= 0x4000000u;
  a1[28] = v34;
  v4 = *(a2 + 148);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_76;
  }

LABEL_75:
  v35 = *(a2 + 116);
  a1[37] |= 0x8000000u;
  a1[29] = v35;
  v4 = *(a2 + 148);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_77;
  }

LABEL_76:
  v36 = *(a2 + 120);
  a1[37] |= 0x10000000u;
  a1[30] = v36;
  v4 = *(a2 + 148);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_78:
    v38 = *(a2 + 128);
    a1[37] |= 0x40000000u;
    a1[32] = v38;
    if ((*(a2 + 148) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_79;
  }

LABEL_77:
  v37 = *(a2 + 124);
  a1[37] |= 0x20000000u;
  a1[31] = v37;
  v4 = *(a2 + 148);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_78;
  }

LABEL_41:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_79:
  v39 = *(a2 + 132);
  a1[37] |= 0x80000000;
  a1[33] = v39;
LABEL_42:
  LOBYTE(v8) = *(a2 + 152);
  if (v8)
  {
    if (*(a2 + 152))
    {
      v9 = *(a2 + 136);
      a1[38] |= 1u;
      a1[34] = v9;
      v8 = *(a2 + 152);
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a2 + 140);
      a1[38] |= 2u;
      a1[35] = v10;
    }
  }
}