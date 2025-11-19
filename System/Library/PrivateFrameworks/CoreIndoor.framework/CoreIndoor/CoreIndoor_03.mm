wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A52FEC(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (v2)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if ((v2 & 0x10) != 0)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 16) = 0;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 5) = 0;
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
  *(result + 9) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A53068(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0;
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

uint64_t sub_245A53088(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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

            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_32;
          }

          if (v9 != 5)
          {
            goto LABEL_25;
          }

          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v25;
          *(a1 + 44) |= 1u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 21)
          {
            *(this + 1) = v11 + 1;
            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

LABEL_32:
            *(a1 + 20) = v25;
            *(a1 + 44) |= 2u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 29)
            {
              *(this + 1) = v12 + 1;
              v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
              {
                return 0;
              }

LABEL_35:
              *(a1 + 24) = v25;
              *(a1 + 44) |= 4u;
              v13 = *(this + 1);
              if (v13 < *(this + 2) && *v13 == 37)
              {
                *(this + 1) = v13 + 1;
                v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_38;
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

          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_35;
        }

        if (v8 == 4)
        {
          break;
        }

        if (v8 == 5 && v9 == 2)
        {
          *(a1 + 44) |= 0x10u;
          v10 = *(a1 + 32);
          if (!v10)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }

LABEL_25:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      if (v9 != 5)
      {
        goto LABEL_25;
      }

      v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      *(a1 + 28) = v25;
      v14 = *(a1 + 44) | 8;
      *(a1 + 44) = v14;
      v15 = *(this + 1);
    }

    while (v15 >= *(this + 2) || *v15 != 42);
    *(this + 1) = v15 + 1;
    *(a1 + 44) = v14 | 0x10;
    v10 = *(a1 + 32);
    if (!v10)
    {
LABEL_41:
      operator new();
    }

LABEL_42:
    v25 = 0;
    v16 = *(this + 1);
    if (v16 >= *(this + 2) || *v16 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v16;
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
    if (!sub_245A53D80(v10, this, v19, v20) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_245A5346C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  v5 = *(v4 + 44);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v4 + 28), a3);
  if ((*(v4 + 44) & 0x10) == 0)
  {
LABEL_6:
    v8 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_12:
  if (*(v4 + 32))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v9 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v9;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v10 = *(qword_28144B7E8 + 32);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v11 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v11;
    if (!v11)
    {
      return result;
    }
  }

LABEL_16:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A53584(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v4 = *(a1 + 16);
    *a2 = 13;
    *(a2 + 1) = v4;
    a2 += 5;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 20);
  *a2 = 21;
  *(a2 + 1) = v5;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v6 = *(a1 + 24);
  *a2 = 29;
  *(a2 + 1) = v6;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = *(a1 + 28);
  *a2 = 37;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((*(a1 + 44) & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  v8 = *(a1 + 32);
  if (v8)
  {
    *a2 = 42;
    v9 = a2 + 1;
    v10 = v8[6];
    if (v10 <= 0x7F)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(qword_28144B7E8 + 32);
    *a2 = 42;
    v9 = a2 + 1;
    v10 = v8[6];
    if (v10 <= 0x7F)
    {
LABEL_13:
      *(a2 + 1) = v10;
      a2 += 2;
      v11 = v8[7];
      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v12 = a1;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
  a1 = v12;
  v11 = v8[7];
  if (v11)
  {
LABEL_17:
    v13 = v8[4];
    *a2 = 13;
    *(a2 + 1) = v13;
    a2 += 5;
    v11 = v8[7];
  }

LABEL_18:
  if ((v11 & 2) != 0)
  {
    v17 = v8[5];
    *a2 = 21;
    *(a2 + 1) = v17;
    a2 += 5;
    v18 = *(v8 + 1);
    v15 = (v8 + 2);
    v14 = v18;
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v16 = *(v8 + 1);
    v15 = (v8 + 2);
    v14 = v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if (*v14 != v14[1])
  {
    v19 = a1;
    a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, a2, a3);
    a1 = v19;
  }

LABEL_24:
  v22 = *(a1 + 8);
  v20 = (a1 + 8);
  v21 = v22;
  if (!v22 || *v21 == v21[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v20, a2, a3);
}

uint64_t sub_245A537CC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v4 = (v3 << 31 >> 31) & 5;
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
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 = *(a1 + 32);
      if (!v6)
      {
        v6 = *(qword_28144B7E8 + 32);
      }

      v7 = *(v6 + 28);
      v8 = (v7 << 31 >> 31) & 5;
      if ((v7 & 2) != 0)
      {
        v8 += 5;
      }

      if (*(v6 + 28))
      {
        LODWORD(v9) = v8;
      }

      else
      {
        LODWORD(v9) = 0;
      }

      v10 = *(v6 + 8);
      if (!v10 || *v10 == v10[1])
      {
        *(v6 + 24) = v9;
        v11 = 1;
      }

      else
      {
        v9 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v6 + 8), a2) + v9);
        *(v6 + 24) = v9;
        if (v9 >= 0x80)
        {
          v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
        }

        else
        {
          v11 = 1;
        }
      }

      v5 = (v5 + v9 + v11 + 1);
      v12 = (a1 + 8);
      v13 = *(a1 + 8);
      if (!v13)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = (a1 + 8);
  v13 = *(a1 + 8);
  if (!v13)
  {
LABEL_23:
    *(a1 + 40) = v5;
    return v5;
  }

LABEL_27:
  if (*v13 == v13[1])
  {
    goto LABEL_23;
  }

  v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v12, a2) + v5;
  *(a1 + 40) = v15;
  return v15;
}

uint64_t sub_245A5390C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F750, 0);
  if (v5)
  {
    return sub_245A52C34(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A539EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A53A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A53A14(_DWORD *a1, uint64_t a2)
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

void sub_245A53AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A53AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A53AFC(uint64_t result, uint64_t a2)
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

uint64_t sub_245A53B90()
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

  return qword_28144B480;
}

void sub_245A53C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A53C34(void *a1)
{
  *a1 = &unk_28589E0E8;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A53C88(void *a1)
{
  *a1 = &unk_28589E0E8;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A53D80(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_245A53EF8(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_245A53F94(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_245A5402C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_245A54094(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F768, 0);
  if (v5)
  {
    return sub_245A53A14(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A54174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A54188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5419C(uint64_t result, uint64_t a2)
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

uint64_t sub_245A54230()
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

  return qword_28144B490;
}

void sub_245A542C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A542D4(void *a1)
{
  *a1 = &unk_28589E198;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A543C0(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 29) = 0;
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

uint64_t sub_245A543E4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 44);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
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

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  if ((*(v5 + 44) & 0x20) == 0)
  {
LABEL_7:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 36), a2, a4);
  v10 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_15:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

uint64_t sub_245A544F0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 20);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = *(a1 + 24);
  *a2 = 29;
  *(a2 + 1) = v9;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = *(a1 + 28);
  *a2 = 37;
  *(a2 + 1) = v10;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = *(a1 + 36);
    *a2 = 48;
    *(a2 + 1) = v12;
    a2 += 2;
    v13 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v13;
    if (!v13)
    {
      return a2;
    }

    goto LABEL_15;
  }

LABEL_13:
  v11 = *(a1 + 32);
  *a2 = 45;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((*(a1 + 44) & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_15:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A54650(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[11];
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 5;
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
      v4 += 5;
    }

    v5 = v4 + ((v3 >> 4) & 2);
    v6 = (a1 + 2);
    v7 = *(a1 + 1);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 2);
    v7 = *(a1 + 1);
    if (!v7)
    {
LABEL_11:
      a1[10] = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_11;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  a1[10] = v9;
  return v9;
}

uint64_t sub_245A54710(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F780, 0);
  if (v5)
  {
    return sub_245A38350(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A547F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A54804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A54818(uint64_t result, uint64_t a2)
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

uint64_t sub_245A548AC()
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

  return qword_28144B4A0;
}

void sub_245A5493C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A54950(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 52);
    v7 = v5 + v4;
    v8 = *(a1 + 40);
    if (v6 < v7)
    {
      v9 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v9 = v7;
      }

      if (v9 <= 4)
      {
        v9 = 4;
      }

      *(a1 + 52) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 4 * v5), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v10 = *(a2 + 76);
  if (!v10)
  {
    goto LABEL_20;
  }

  if (v10)
  {
    v14 = *(a2 + 16);
    *(a1 + 76) |= 1u;
    *(a1 + 16) = v14;
    v10 = *(a2 + 76);
    if ((v10 & 2) == 0)
    {
LABEL_14:
      if ((v10 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a2 + 20);
  *(a1 + 76) |= 2u;
  *(a1 + 20) = v15;
  v10 = *(a2 + 76);
  if ((v10 & 4) == 0)
  {
LABEL_15:
    if ((v10 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(a2 + 24);
  *(a1 + 76) |= 4u;
  *(a1 + 24) = v16;
  v10 = *(a2 + 76);
  if ((v10 & 8) == 0)
  {
LABEL_16:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_30:
    v18 = *(a2 + 32);
    *(a1 + 76) |= 0x10u;
    *(a1 + 32) = v18;
    v10 = *(a2 + 76);
    if ((v10 & 0x20) == 0)
    {
LABEL_18:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_29:
  v17 = *(a2 + 28);
  *(a1 + 76) |= 8u;
  *(a1 + 28) = v17;
  v10 = *(a2 + 76);
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v10 & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_31:
  v19 = *(a2 + 36);
  *(a1 + 76) |= 0x20u;
  *(a1 + 36) = v19;
  v10 = *(a2 + 76);
  if ((v10 & 0x40) != 0)
  {
LABEL_19:
    v11 = *(a2 + 56);
    *(a1 + 76) |= 0x40u;
    *(a1 + 56) = v11;
    v10 = *(a2 + 76);
  }

LABEL_20:
  if ((v10 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v10 & 0x100) == 0)
  {
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_23;
    }

LABEL_34:
    v21 = *(a2 + 64);
    *(a1 + 76) |= 0x200u;
    *(a1 + 64) = v21;
    if ((*(a2 + 76) & 0x400) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_24;
  }

  v20 = *(a2 + 60);
  *(a1 + 76) |= 0x100u;
  *(a1 + 60) = v20;
  v10 = *(a2 + 76);
  if ((v10 & 0x200) != 0)
  {
    goto LABEL_34;
  }

LABEL_23:
  if ((v10 & 0x400) != 0)
  {
LABEL_24:
    v12 = *(a2 + 68);
    *(a1 + 76) |= 0x400u;
    *(a1 + 68) = v12;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A54BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A54BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A54BFC(void *a1)
{
  *a1 = &unk_28589E248;
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x245D78850](v2, 0x1000C8052888210);
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A54C70(void *a1)
{
  *a1 = &unk_28589E248;
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x245D78850](v2, 0x1000C8052888210);
  }

  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A54D90(uint64_t a1)
{
  v1 = *(a1 + 76);
  if (v1)
  {
    *(a1 + 56) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 60) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  *(result + 17) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A54DD0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
          if (v8 != 1)
          {
            if (v8 != 2 || v9 != 5)
            {
              goto LABEL_58;
            }

            v43 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_37;
          }

          if (v9 != 5)
          {
            goto LABEL_58;
          }

          v43 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v43;
          *(a1 + 76) |= 1u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 21)
          {
            *(this + 1) = v15 + 1;
            v43 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
            {
              return 0;
            }

LABEL_37:
            *(a1 + 20) = v43;
            *(a1 + 76) |= 2u;
            v17 = *(this + 1);
            v16 = *(this + 2);
            if (v17 < v16 && *v17 == 24)
            {
              v18 = v17 + 1;
              *(this + 1) = v18;
              goto LABEL_50;
            }
          }
        }

        else if (v8 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_58;
          }

          v18 = *(this + 1);
          v16 = *(this + 2);
LABEL_50:
          v43 = 0;
          if (v18 >= v16 || (v20 = *v18, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
            if (!result)
            {
              return result;
            }

            v20 = v43;
            if (v43 <= 2)
            {
LABEL_53:
              *(a1 + 76) |= 4u;
              *(a1 + 24) = v20;
              goto LABEL_66;
            }
          }

          else
          {
            *(this + 1) = v18 + 1;
            if (v20 <= 2)
            {
              goto LABEL_53;
            }
          }

          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
LABEL_66:
          v23 = *(this + 1);
          if (v23 < *(this + 2) && *v23 == 37)
          {
            *(this + 1) = v23 + 1;
            v43 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_69;
          }
        }

        else
        {
          if (v8 != 4)
          {
            if (v8 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_58;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
            v43 = 0;
            if (v12 >= v11)
            {
              goto LABEL_75;
            }

            goto LABEL_72;
          }

          if (v9 != 5)
          {
            goto LABEL_58;
          }

          v43 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
          {
            return 0;
          }

LABEL_69:
          *(a1 + 28) = v43;
          *(a1 + 76) |= 8u;
          v25 = *(this + 1);
          v24 = *(this + 2);
          if (v25 < v24 && *v25 == 40)
          {
            v12 = v25 + 1;
            *(this + 1) = v12;
            v43 = 0;
            if (v12 >= v24)
            {
              goto LABEL_75;
            }

LABEL_72:
            v26 = *v12;
            if ((v26 & 0x80000000) == 0)
            {
              *(this + 1) = v12 + 1;
              if (v26 <= 2)
              {
                goto LABEL_74;
              }

              goto LABEL_77;
            }

LABEL_75:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
            if (!result)
            {
              return result;
            }

            v26 = v43;
            if (v43 <= 2)
            {
LABEL_74:
              *(a1 + 76) |= 0x10u;
              *(a1 + 32) = v26;
              goto LABEL_78;
            }

LABEL_77:
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
LABEL_78:
            v27 = *(this + 1);
            if (v27 < *(this + 2) && *v27 == 53)
            {
              *(this + 1) = v27 + 1;
              v43 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
              {
                return 0;
              }

LABEL_81:
              *(a1 + 36) = v43;
              *(a1 + 76) |= 0x20u;
              v28 = *(this + 1);
              if (v28 < *(this + 2) && *v28 == 61)
              {
                *(this + 1) = v28 + 1;
                v43 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
                {
                  return 0;
                }

LABEL_84:
                *(a1 + 56) = v43;
                *(a1 + 76) |= 0x40u;
                v29 = *(this + 1);
                v13 = *(this + 2);
                if (v29 < v13)
                {
                  v30 = *v29;
                  while (1)
                  {
                    if (v30 != 64)
                    {
                      goto LABEL_1;
                    }

                    v22 = (v29 + 1);
                    *(this + 1) = v22;
LABEL_88:
                    v43 = 0;
                    if (v22 >= v13 || (v31 = *v22, (v31 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
                      if (!result)
                      {
                        return result;
                      }

                      v31 = v43;
                      if (v43 <= 9)
                      {
LABEL_91:
                        v32 = *(a1 + 48);
                        v33 = *(a1 + 40);
                        if (v32 == *(a1 + 52))
                        {
                          if (2 * v32 <= v32 + 1)
                          {
                            v34 = v32 + 1;
                          }

                          else
                          {
                            v34 = 2 * v32;
                          }

                          if (v34 <= 4)
                          {
                            v34 = 4;
                          }

                          *(a1 + 52) = v34;
                          operator new[]();
                        }

                        *(a1 + 48) = v32 + 1;
                        *(v33 + 4 * v32) = v31;
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      *(this + 1) = v22 + 1;
                      if (v31 <= 9)
                      {
                        goto LABEL_91;
                      }
                    }

                    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
LABEL_102:
                    v29 = *(this + 1);
                    v13 = *(this + 2);
                    if (v29 >= v13)
                    {
                      goto LABEL_1;
                    }

                    v30 = *v29;
                    if (v30 == 72)
                    {
                      v21 = (v29 + 1);
                      *(this + 1) = v21;
                      goto LABEL_105;
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (TagFallback >> 3 <= 8)
      {
        break;
      }

      if (v8 != 9)
      {
        if (v8 != 10)
        {
          if (v8 != 11 || (TagFallback & 7) != 0)
          {
            goto LABEL_58;
          }

          v14 = *(this + 1);
          v13 = *(this + 2);
          goto LABEL_121;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v19 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_113;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_58;
      }

      v21 = *(this + 1);
      v13 = *(this + 2);
LABEL_105:
      if (v21 >= v13 || (v35 = *v21, v35 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
        if (!result)
        {
          return result;
        }

        v36 = *(this + 1);
        v13 = *(this + 2);
        *(a1 + 76) |= 0x100u;
        if (v36 < v13)
        {
          goto LABEL_111;
        }
      }

      else
      {
        *(a1 + 60) = v35;
        v36 = v21 + 1;
        *(this + 1) = v36;
        *(a1 + 76) |= 0x100u;
        if (v36 < v13)
        {
LABEL_111:
          if (*v36 == 80)
          {
            v19 = v36 + 1;
            *(this + 1) = v19;
LABEL_113:
            if (v19 >= v13 || (v37 = *v19, v37 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
              if (!result)
              {
                return result;
              }

              v38 = *(this + 1);
              v13 = *(this + 2);
              *(a1 + 76) |= 0x200u;
              if (v38 < v13)
              {
                goto LABEL_119;
              }
            }

            else
            {
              *(a1 + 64) = v37;
              v38 = v19 + 1;
              *(this + 1) = v38;
              *(a1 + 76) |= 0x200u;
              if (v38 < v13)
              {
LABEL_119:
                if (*v38 == 88)
                {
                  v14 = v38 + 1;
                  *(this + 1) = v14;
LABEL_121:
                  if (v14 >= v13 || (v39 = *v14, v39 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
                    if (!result)
                    {
                      return result;
                    }

                    v42 = *(this + 1);
                    v41 = *(this + 2);
                    *(a1 + 76) |= 0x400u;
                    if (v42 == v41)
                    {
                      goto LABEL_127;
                    }
                  }

                  else
                  {
                    *(a1 + 68) = v39;
                    v40 = v14 + 1;
                    *(this + 1) = v40;
                    *(a1 + 76) |= 0x400u;
                    if (v40 == v13)
                    {
LABEL_127:
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
              }
            }
          }
        }
      }
    }

    if (v8 == 6)
    {
      if (v9 != 5)
      {
        goto LABEL_58;
      }

      v43 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_81;
    }

    if (v8 == 7)
    {
      if (v9 != 5)
      {
        goto LABEL_58;
      }

      v43 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v43) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_84;
    }

    if (v8 == 8)
    {
      if ((TagFallback & 7) == 0)
      {
        v22 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_88;
      }

      if (v9 == 2)
      {
        break;
      }
    }

LABEL_58:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
  if (result)
  {
    goto LABEL_102;
  }

  return result;
}

uint64_t sub_245A554F0(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 76);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 76);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 36), a3);
  if ((*(v5 + 76) & 0x40) == 0)
  {
LABEL_8:
    if (*(v5 + 48) < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 56), a3);
  if (*(v5 + 48) < 1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v7 = 0;
  do
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(*(v5 + 40) + 4 * v7++), a2, a4);
  }

  while (v7 < *(v5 + 48));
LABEL_19:
  v8 = *(v5 + 76);
  if ((v8 & 0x100) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 60), a2, a4);
    v8 = *(v5 + 76);
    if ((v8 & 0x200) == 0)
    {
LABEL_21:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 64), a2, a4);
  if ((*(v5 + 76) & 0x400) == 0)
  {
LABEL_22:
    v11 = *(v5 + 8);
    v10 = v5 + 8;
    v9 = v11;
    if (!v11)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 68), a2, a4);
  v12 = *(v5 + 8);
  v10 = v5 + 8;
  v9 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_27:
  if (*v9 != v9[1])
  {

    return MEMORY[0x2821F9DB8](v10, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A556B8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 19);
  if (v5)
  {
    v8 = *(this + 4);
    *a2 = 13;
    *(a2 + 1) = v8;
    v3 = (a2 + 5);
    v5 = *(this + 19);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v10 = *(this + 6);
      *v3 = 24;
      v11 = v3 + 1;
      if ((v10 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
        v6 = *(this + 19);
        if ((v6 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

      else if (v10 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
        v6 = *(this + 19);
        if ((v6 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(v3 + 1) = v10;
        v3 = (v3 + 2);
        v6 = *(this + 19);
        if ((v6 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_20:
      v13 = *(this + 8);
      *v3 = 40;
      v14 = v3 + 1;
      if ((v13 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v14, a3);
        v7 = *(this + 19);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_27;
        }
      }

      else if (v13 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v14, a3);
        v7 = *(this + 19);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *(v3 + 1) = v13;
        v3 = (v3 + 2);
        v7 = *(this + 19);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 5);
  *v3 = 21;
  *(v3 + 1) = v9;
  v3 = (v3 + 5);
  if ((*(this + 19) & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v6 = *(this + 19);
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v12 = *(this + 7);
  *v3 = 37;
  *(v3 + 1) = v12;
  v3 = (v3 + 5);
  if ((*(this + 19) & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  v7 = *(this + 19);
  if ((v7 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_27:
  v15 = *(this + 9);
  *v3 = 53;
  *(v3 + 1) = v15;
  v3 = (v3 + 5);
  if ((*(this + 19) & 0x40) == 0)
  {
LABEL_8:
    if (*(this + 12) < 1)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(this + 14);
  *v3 = 61;
  *(v3 + 1) = v16;
  v3 = (v3 + 5);
  if (*(this + 12) < 1)
  {
    goto LABEL_36;
  }

LABEL_29:
  v17 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v18 = *(*(this + 5) + 4 * v17);
        *v3 = 64;
        v19 = v3 + 1;
        if ((v18 & 0x80000000) == 0)
        {
          break;
        }

        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, v19, a3);
        if (++v17 >= *(this + 12))
        {
          goto LABEL_36;
        }
      }

      if (v18 > 0x7F)
      {
        break;
      }

      *(v3 + 1) = v18;
      v3 = (v3 + 2);
      if (++v17 >= *(this + 12))
      {
        goto LABEL_36;
      }
    }

    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v19, a3);
    ++v17;
  }

  while (v17 < *(this + 12));
LABEL_36:
  if (*(this + 77))
  {
    v24 = *(this + 15);
    *v3 = 72;
    if (v24 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v3 + 1, a3);
      if ((*(this + 77) & 2) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(v3 + 1) = v24;
      v3 = (v3 + 2);
      if ((*(this + 77) & 2) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_38:
    if ((*(this + 77) & 4) == 0)
    {
      goto LABEL_39;
    }

LABEL_52:
    v26 = *(this + 17);
    *v3 = 88;
    if (v26 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v3 + 1, a3);
      v28 = *(this + 1);
      v21 = (this + 8);
      v20 = v28;
      if (!v28)
      {
        return v3;
      }
    }

    else
    {
      *(v3 + 1) = v26;
      v3 = (v3 + 2);
      v27 = *(this + 1);
      v21 = (this + 8);
      v20 = v27;
      if (!v27)
      {
        return v3;
      }
    }

    goto LABEL_40;
  }

  if ((*(this + 77) & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_48:
  v25 = *(this + 16);
  *v3 = 80;
  if (v25 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v3 + 1, a3);
    if ((*(this + 77) & 4) != 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    *(v3 + 1) = v25;
    v3 = (v3 + 2);
    if ((*(this + 77) & 4) != 0)
    {
      goto LABEL_52;
    }
  }

LABEL_39:
  v22 = *(this + 1);
  v21 = (this + 8);
  v20 = v22;
  if (!v22)
  {
    return v3;
  }

LABEL_40:
  if (*v20 == v20[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, v3, a3);
}

uint64_t sub_245A55A4C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 76);
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = ((v3 << 31 >> 31) & 5) + 5;
    }

    else
    {
      v4 = (v3 << 31 >> 31) & 5;
    }

    if ((v3 & 4) != 0)
    {
      v5 = *(a1 + 24);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v3 = *(a1 + 76);
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v8 = *(a1 + 32);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
        v3 = *(a1 + 76);
      }

      else
      {
        v9 = 2;
      }

      v4 += v9;
    }

    v10 = v4 + 5;
    if ((v3 & 0x20) == 0)
    {
      v10 = v4;
    }

    if ((v3 & 0x40) != 0)
    {
      v7 = v10 + 5;
    }

    else
    {
      v7 = v10;
    }

    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  v16 = *(a1 + 60);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v3 = *(a1 + 76);
    v7 += v17 + 1;
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v7 += 2;
    if ((v3 & 0x200) != 0)
    {
LABEL_44:
      v18 = *(a1 + 64);
      if (v18 >= 0x80)
      {
        v7 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
        if ((*(a1 + 76) & 0x400) != 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v7 += 2;
        if ((v3 & 0x400) != 0)
        {
          goto LABEL_48;
        }
      }

LABEL_32:
      v11 = *(a1 + 48);
      if (v11 >= 1)
      {
        goto LABEL_33;
      }

LABEL_52:
      v13 = 0;
      goto LABEL_53;
    }
  }

LABEL_31:
  if ((v3 & 0x400) == 0)
  {
    goto LABEL_32;
  }

LABEL_48:
  v19 = *(a1 + 68);
  if (v19 >= 0x80)
  {
    v7 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v11 = *(a1 + 48);
    if (v11 < 1)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v7 += 2;
    v11 = *(a1 + 48);
    if (v11 < 1)
    {
      goto LABEL_52;
    }
  }

LABEL_33:
  v12 = 0;
  v13 = 0;
  do
  {
    v15 = *(*(a1 + 40) + 4 * v12);
    if ((v15 & 0x80000000) != 0)
    {
      v14 = 10;
    }

    else if (v15 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v11 = *(a1 + 48);
    }

    else
    {
      v14 = 1;
    }

    v13 += v14;
    ++v12;
  }

  while (v12 < v11);
LABEL_53:
  v20 = (v13 + v7 + v11);
  v21 = *(a1 + 8);
  if (v21 && *v21 != v21[1])
  {
    v20 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v20;
  }

  *(a1 + 72) = v20;
  return v20;
}

uint64_t sub_245A55C6C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F798, 0);
  if (v5)
  {
    return sub_245A54950(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A55D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A55D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A55D74(uint64_t result, uint64_t a2)
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

uint64_t sub_245A55E08()
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

  return qword_28144B4B0;
}

void sub_245A55E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A55EAC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v4 = a1;
    v5 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
    a2 = v5;
    a1 = v4;
    if ((*(v5 + 24) & 1) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_3;
  }

  if (*(a2 + 24))
  {
LABEL_3:
    v2 = *(a2 + 16);
    a1[6] |= 1u;
    a1[4] = v2;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A55F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A55F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A55F80(void *a1)
{
  *a1 = &unk_28589E2F8;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A55FD4(void *a1)
{
  *a1 = &unk_28589E2F8;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A560D0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A560F0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 < *(this + 2))
      {
        TagFallback = *v6;
        if ((TagFallback & 0x80000000) == 0)
        {
          break;
        }
      }

      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (TagFallback != 13)
      {
        goto LABEL_4;
      }

LABEL_9:
      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v9) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v9;
      *(a1 + 24) |= 1u;
      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    *(this + 8) = TagFallback;
    *(this + 1) = v6 + 1;
    if (TagFallback == 13)
    {
      goto LABEL_9;
    }

LABEL_4:
    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A56200(uint64_t a1, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    v4 = a2;
    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(a1 + 16), a3);
    a1 = v3;
    a2 = v4;
  }

  v7 = *(a1 + 8);
  result = a1 + 8;
  v6 = v7;
  if (v7 && *v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](result, a2);
  }

  return result;
}

uint64_t sub_245A56270(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    *a2 = 13;
    *(a2 + 1) = v3;
    a2 += 5;
  }

  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6 || *v5 == v5[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }
}

uint64_t sub_245A562C4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  v6 = (v3[16] << 31 >> 31) & 5;
  if (v5 && *v4 != v4[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2) + v6;
  }

  *(a1 + 20) = v6;
  return v6;
}

uint64_t sub_245A56318(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F7B0, 0);
  if (v5)
  {
    return sub_245A55EAC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A563F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5640C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A56420(uint64_t result, uint64_t a2)
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

uint64_t sub_245A564B4()
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

  return qword_28144B4C8;
}

void sub_245A56544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A56558(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 76);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 76))
  {
    v7 = *(a2 + 16);
    *(a1 + 76) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 76);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a2 + 76) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 76) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 76);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a2 + 32);
  *(a1 + 76) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a2 + 40);
  *(a1 + 76) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 76);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v12 = *(a2 + 56);
    *(a1 + 76) |= 0x20u;
    *(a1 + 56) = v12;
    if ((*(a2 + 76) & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_11;
  }

LABEL_17:
  v11 = *(a2 + 48);
  *(a1 + 76) |= 0x10u;
  *(a1 + 48) = v11;
  v4 = *(a2 + 76);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v4 & 0x40) != 0)
  {
LABEL_11:
    v5 = *(a2 + 64);
    *(a1 + 76) |= 0x40u;
    *(a1 + 64) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A566C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A566D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A566E8(void *a1)
{
  *a1 = &unk_28589E3A8;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A5673C(void *a1)
{
  *a1 = &unk_28589E3A8;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A5683C(uint64_t a1)
{
  if (*(a1 + 76))
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 17) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A56868(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 1)
            {
              goto LABEL_36;
            }

            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v17;
            *(a1 + 76) |= 1u;
            v10 = *(this + 1);
            if (v10 < *(this + 2) && *v10 == 17)
            {
              *(this + 1) = v10 + 1;
LABEL_39:
              v17 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = v17;
              *(a1 + 76) |= 2u;
              v11 = *(this + 1);
              if (v11 < *(this + 2) && *v11 == 25)
              {
                *(this + 1) = v11 + 1;
                v17 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_43;
              }
            }
          }

          else
          {
            if (v8 == 2)
            {
              if (v9 != 1)
              {
                goto LABEL_36;
              }

              goto LABEL_39;
            }

            if (v8 != 3 || v9 != 1)
            {
              goto LABEL_36;
            }

            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

LABEL_43:
            *(a1 + 32) = v17;
            *(a1 + 76) |= 4u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 33)
            {
              *(this + 1) = v12 + 1;
              v17 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_46;
            }
          }
        }

        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (v8 == 4)
        {
          if (v9 != 1)
          {
            goto LABEL_36;
          }

          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

LABEL_46:
          *(a1 + 40) = v17;
          *(a1 + 76) |= 8u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 41)
          {
            *(this + 1) = v13 + 1;
            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_49;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 1)
          {
            goto LABEL_36;
          }

          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

LABEL_49:
          *(a1 + 48) = v17;
          *(a1 + 76) |= 0x10u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 49)
          {
            *(this + 1) = v14 + 1;
            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_52;
          }
        }
      }

      if (v8 != 6)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_36;
      }

      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      *(a1 + 64) = v17;
      *(a1 + 76) |= 0x40u;
      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 57)
      {
        *(this + 1) = v15 + 1;
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
        {
          return 0;
        }

LABEL_55:
        *(a1 + 56) = v17;
        *(a1 + 76) |= 0x20u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 7 && v9 == 1)
    {
      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_55;
    }

LABEL_36:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A56C20(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 76);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 76);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 76);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 76);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 76);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  v5 = *(v4 + 76);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 64), a3);
  if ((*(v4 + 76) & 0x20) == 0)
  {
LABEL_8:
    v8 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v4 + 56), a3);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_17:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

uint64_t sub_245A56D48(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 76);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 76);
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

  v8 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = *(a1 + 48);
  *a2 = 41;
  *(a2 + 1) = v11;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v13 = *(a1 + 56);
    *a2 = 57;
    *(a2 + 1) = v13;
    a2 += 9;
    v14 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v14;
    if (!v14)
    {
      return a2;
    }

    goto LABEL_17;
  }

LABEL_15:
  v12 = *(a1 + 64);
  *a2 = 49;
  *(a2 + 1) = v12;
  a2 += 9;
  if ((*(a1 + 76) & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_17:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A56FD8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 76);
  if (*(a1 + 76))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_16:
      *(a1 + 72) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_16;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 72) = v9;
  return v9;
}

uint64_t sub_245A570A0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F7C8, 0);
  if (v5)
  {
    return sub_245A56558(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A57180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A57194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A571A8(uint64_t result, uint64_t a2)
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

uint64_t sub_245A5723C()
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

  return qword_28144B4D8;
}

void sub_245A572CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A572E0(uint64_t a1, uint64_t a2)
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

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 44))
  {
    v7 = *(a2 + 16);
    *(a1 + 44) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 44);
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

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  *(a1 + 44) |= 2u;
  *(a1 + 20) = v8;
  v4 = *(a2 + 44);
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
  *(a1 + 44) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 32);
    *(a1 + 44) |= 0x10u;
    *(a1 + 32) = v11;
    if ((*(a2 + 44) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 28);
  *(a1 + 44) |= 8u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 36);
    *(a1 + 44) |= 0x20u;
    *(a1 + 36) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A57428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5743C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A57450(void *a1)
{
  *a1 = &unk_28589E458;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A574A4(void *a1)
{
  *a1 = &unk_28589E458;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A575A4(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 29) = 0;
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

uint64_t sub_245A575C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 5)
            {
              goto LABEL_36;
            }

            v24 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v24;
            *(a1 + 44) |= 1u;
            v14 = *(this + 1);
            if (v14 < *(this + 2) && *v14 == 21)
            {
              *(this + 1) = v14 + 1;
              goto LABEL_28;
            }
          }

          else if (v8 == 2)
          {
            if (v9 != 5)
            {
              goto LABEL_36;
            }

LABEL_28:
            v24 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 20) = v24;
            *(a1 + 44) |= 2u;
            v15 = *(this + 1);
            v10 = *(this + 2);
            if (v15 < v10 && *v15 == 24)
            {
              v11 = v15 + 1;
              *(this + 1) = v11;
              if (v11 < v10)
              {
                goto LABEL_32;
              }

LABEL_39:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v19 = *(this + 2);
              *(a1 + 44) |= 4u;
              if (v17 < v19)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
            if (v8 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_36;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10)
            {
              goto LABEL_39;
            }

LABEL_32:
            v16 = *v11;
            if (v16 < 0)
            {
              goto LABEL_39;
            }

            *(a1 + 24) = v16;
            v17 = v11 + 1;
            *(this + 1) = v17;
            *(a1 + 44) |= 4u;
            if (v17 < v10)
            {
LABEL_41:
              if (*v17 == 37)
              {
                *(this + 1) = v17 + 1;
                v24 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_43;
              }
            }
          }
        }

        if (v8 != 4)
        {
          break;
        }

        if (v9 != 5)
        {
          goto LABEL_36;
        }

        v24 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
        {
          return 0;
        }

LABEL_43:
        *(a1 + 28) = v24;
        *(a1 + 44) |= 8u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 45)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_46;
        }
      }

      if (v8 != 5)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_36;
      }

LABEL_46:
      v24 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = v24;
      *(a1 + 44) |= 0x10u;
      v21 = *(this + 1);
      v12 = *(this + 2);
      if (v21 < v12 && *v21 == 48)
      {
        v13 = v21 + 1;
        *(this + 1) = v13;
        v24 = 0;
        if (v13 >= v12)
        {
          goto LABEL_52;
        }

LABEL_50:
        v22 = *v13;
        if ((v22 & 0x80000000) != 0)
        {
LABEL_52:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
          if (!result)
          {
            return result;
          }

          v22 = v24;
          v23 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_54;
        }

        v23 = v13 + 1;
        *(this + 1) = v23;
LABEL_54:
        *(a1 + 36) = v22 != 0;
        *(a1 + 44) |= 0x20u;
        if (v23 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 6 && (TagFallback & 7) == 0)
    {
      v13 = *(this + 1);
      v12 = *(this + 2);
      v24 = 0;
      if (v13 >= v12)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

LABEL_36:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A57928(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 44);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
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

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  if ((*(v5 + 44) & 0x20) == 0)
  {
LABEL_7:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 36), a2, a4);
  v10 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_15:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

uint64_t sub_245A57A34(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v8 = *(a1 + 16);
    *a2 = 13;
    *(a2 + 1) = v8;
    a2 += 5;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = *(a1 + 24);
      *a2 = 24;
      if (v10 > 0x7F)
      {
        v11 = a1;
        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, a3);
        a1 = v11;
        v4 = *(v11 + 44);
        if ((v4 & 8) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 1) = v10;
        a2 += 2;
        v4 = *(a1 + 44);
        if ((v4 & 8) != 0)
        {
          goto LABEL_15;
        }
      }

LABEL_5:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 20);
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  if ((*(a1 + 44) & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = *(a1 + 44);
  if ((v4 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v12 = *(a1 + 28);
  *a2 = 37;
  *(a2 + 1) = v12;
  a2 += 5;
  v4 = *(a1 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v13 = *(a1 + 32);
  *a2 = 45;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((*(a1 + 44) & 0x20) == 0)
  {
LABEL_7:
    v7 = *(a1 + 8);
    v5 = (a1 + 8);
    v6 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = *(a1 + 36);
  *a2 = 48;
  *(a2 + 1) = v14;
  a2 += 2;
  v15 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v15;
  if (!v15)
  {
    return a2;
  }

LABEL_18:
  if (*v6 == v6[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
}

uint64_t sub_245A57BE0(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[11];
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = (((v3 << 31) >> 31) & 5) + 5;
    }

    else
    {
      v4 = ((v3 << 31) >> 31) & 5;
    }

    if ((v3 & 4) != 0)
    {
      v5 = a1[6];
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v3 = a1[11];
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    v11 = v4 + 5;
    if ((v3 & 8) == 0)
    {
      v11 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v11 += 5;
    }

    v7 = v11 + ((v3 >> 4) & 2);
    v8 = (a1 + 2);
    v9 = *(a1 + 1);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    v8 = (a1 + 2);
    v9 = *(a1 + 1);
    if (!v9)
    {
LABEL_9:
      a1[10] = v7;
      return v7;
    }
  }

  if (*v9 == v9[1])
  {
    goto LABEL_9;
  }

  v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v7;
  a1[10] = v12;
  return v12;
}

uint64_t sub_245A57CBC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F7E0, 0);
  if (v5)
  {
    return sub_245A572E0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A57D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A57DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A57DC4(uint64_t result, uint64_t a2)
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

uint64_t sub_245A57E58()
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

  return qword_28144B4E8;
}

void sub_245A57EE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A57F04(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_28144B8C0;
  if (!qword_28144B8C0)
  {
    sub_245A4C71C(0, a2, a3, a4);
    return qword_28144B8C0;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A58000(uint64_t a1)
{
  if (*(a1 + 56))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A58028(uint64_t a1)
{
  v1 = *(a1 + 60);
  if (v1)
  {
    *(a1 + 40) = 0;
    *(a1 + 36) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A58064(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A58084(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A580A4(uint64_t a1)
{
  if (*(a1 + 60))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A580CC(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (v2)
  {
    *(a1 + 24) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 7) = 0;
        if (v5)
        {
          v6 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
          a1 = v6;
        }
      }
    }

    *(a1 + 26) = 0;
    v2 = *(a1 + 44);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 36) = 0;
    *(a1 + 34) = 0;
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A58164(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A5818C(uint64_t a1)
{
  if (*(a1 + 56))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A581B4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 300);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 16), a2, a4);
    v6 = *(v5 + 300);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_61:
    if (*(v5 + 56))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 300);
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = *(qword_28144B8C0 + 56);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 300);
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_69:
    if (*(v5 + 72))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 300);
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v16 = *(qword_28144B8C0 + 72);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 300);
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_74:
    if (*(v5 + 80))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 300);
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v17 = *(qword_28144B8C0 + 80);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 300);
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_78;
      }
    }

LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_82:
    if (*(v5 + 104))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 300);
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v19 = *(qword_28144B8C0 + 104);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 300);
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_86;
      }
    }

LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_87;
  }

LABEL_57:
  if (*(v5 + 48))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v6 = *(v5 + 300);
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v13 = *(qword_28144B8C0 + 48);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v6 = *(v5 + 300);
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_61;
    }
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_11;
  }

LABEL_65:
  if (*(v5 + 64))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v6 = *(v5 + 300);
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v15 = *(qword_28144B8C0 + 64);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v6 = *(v5 + 300);
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_69;
    }
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_13;
  }

LABEL_73:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 96), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_74;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_15;
  }

LABEL_78:
  if (*(v5 + 88))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v6 = *(v5 + 300);
    if ((v6 & 0x4000) != 0)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v18 = *(qword_28144B8C0 + 88);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v6 = *(v5 + 300);
    if ((v6 & 0x4000) != 0)
    {
      goto LABEL_82;
    }
  }

LABEL_16:
  if ((v6 & 0x8000) == 0)
  {
    goto LABEL_17;
  }

LABEL_86:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 112), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 100), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x13, a2, *(v5 + 120), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x14, a2, *(v5 + 124), a3);
  if ((*(v5 + 300) & 0x80000) == 0)
  {
LABEL_21:
    if ((*(v5 + 305) & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x15, a2, *(v5 + 128), a3);
  if ((*(v5 + 305) & 1) == 0)
  {
LABEL_22:
    v7 = *(v5 + 300);
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x16, a2, *(v5 + 248), a3);
  v7 = *(v5 + 300);
  if ((v7 & 0x200000) == 0)
  {
LABEL_23:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_93:
    if (*(v5 + 144))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v7 = *(v5 + 300);
      if ((v7 & 0x800000) != 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v20 = *(qword_28144B8C0 + 144);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v7 = *(v5 + 300);
      if ((v7 & 0x800000) != 0)
      {
        goto LABEL_97;
      }
    }

LABEL_25:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_98;
  }

LABEL_92:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x17, a2, *(v5 + 136), a3);
  v7 = *(v5 + 300);
  if ((v7 & 0x400000) != 0)
  {
    goto LABEL_93;
  }

LABEL_24:
  if ((v7 & 0x800000) == 0)
  {
    goto LABEL_25;
  }

LABEL_97:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x19, *(v5 + 140), a2, a4);
  v7 = *(v5 + 300);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_99:
    if (*(v5 + 160))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v7 = *(v5 + 300);
      if ((v7 & 0x4000000) != 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v21 = *(qword_28144B8C0 + 160);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v7 = *(v5 + 300);
      if ((v7 & 0x4000000) != 0)
      {
        goto LABEL_103;
      }
    }

LABEL_28:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_107:
    if (*(v5 + 176))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v7 = *(v5 + 300);
      if ((v7 & 0x10000000) != 0)
      {
        goto LABEL_111;
      }
    }

    else
    {
      v23 = *(qword_28144B8C0 + 176);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v7 = *(v5 + 300);
      if ((v7 & 0x10000000) != 0)
      {
        goto LABEL_111;
      }
    }

LABEL_30:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_112;
  }

LABEL_98:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 152), a3);
  v7 = *(v5 + 300);
  if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_99;
  }

LABEL_27:
  if ((v7 & 0x4000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_103:
  if (*(v5 + 168))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v7 = *(v5 + 300);
    if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v22 = *(qword_28144B8C0 + 168);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v7 = *(v5 + 300);
    if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_107;
    }
  }

LABEL_29:
  if ((v7 & 0x10000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_111:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1E, *(v5 + 192), a2, a4);
  v7 = *(v5 + 300);
  if ((v7 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1F, a2, *(v5 + 184), a3);
  v7 = *(v5 + 300);
  if ((v7 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x20, *(v5 + 193), a2, a4);
  if ((*(v5 + 300) & 0x80000000) == 0)
  {
LABEL_33:
    v8 = *(v5 + 304);
    if ((v8 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_115:
    if (*(v5 + 200))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v8 = *(v5 + 304);
      if ((v8 & 2) != 0)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v24 = *(qword_28144B8C0 + 200);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v8 = *(v5 + 304);
      if ((v8 & 2) != 0)
      {
        goto LABEL_119;
      }
    }

LABEL_35:
    if ((v8 & 4) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

LABEL_114:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x21, a2, *(v5 + 196), a3);
  v8 = *(v5 + 304);
  if (v8)
  {
    goto LABEL_115;
  }

LABEL_34:
  if ((v8 & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_119:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x23, *(v5 + 194), a2, a4);
  v8 = *(v5 + 304);
  if ((v8 & 4) == 0)
  {
LABEL_36:
    if ((v8 & 8) == 0)
    {
      goto LABEL_37;
    }

LABEL_124:
    if (*(v5 + 216))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v5 + 302) & 0x10) != 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v26 = *(qword_28144B8C0 + 216);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v5 + 302) & 0x10) != 0)
      {
        goto LABEL_128;
      }
    }

LABEL_38:
    v9 = *(v5 + 304);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_129;
  }

LABEL_120:
  if (*(v5 + 208))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    if ((*(v5 + 304) & 8) != 0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v25 = *(qword_28144B8C0 + 208);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    if ((*(v5 + 304) & 8) != 0)
    {
      goto LABEL_124;
    }
  }

LABEL_37:
  if ((*(v5 + 302) & 0x10) == 0)
  {
    goto LABEL_38;
  }

LABEL_128:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x26, a2, *(v5 + 132), a3);
  v9 = *(v5 + 304);
  if ((v9 & 0x10) == 0)
  {
LABEL_39:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_40;
    }

LABEL_130:
    if (*(v5 + 232))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v9 = *(v5 + 304);
      if ((v9 & 0x40) != 0)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v27 = *(qword_28144B8C0 + 232);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v9 = *(v5 + 304);
      if ((v9 & 0x40) != 0)
      {
        goto LABEL_134;
      }
    }

LABEL_41:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_42;
    }

LABEL_135:
    if (*(v5 + 240))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v9 = *(v5 + 304);
      if ((v9 & 0x200) != 0)
      {
        goto LABEL_139;
      }
    }

    else
    {
      v28 = *(qword_28144B8C0 + 240);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v9 = *(v5 + 304);
      if ((v9 & 0x200) != 0)
      {
        goto LABEL_139;
      }
    }

LABEL_43:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_140;
  }

LABEL_129:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x27, a2, *(v5 + 224), a3);
  v9 = *(v5 + 304);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_130;
  }

LABEL_40:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_134:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x29, a2, *(v5 + 228), a3);
  v9 = *(v5 + 304);
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_135;
  }

LABEL_42:
  if ((v9 & 0x200) == 0)
  {
    goto LABEL_43;
  }

LABEL_139:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2B, a2, *(v5 + 252), a3);
  v9 = *(v5 + 304);
  if ((v9 & 0x400) == 0)
  {
LABEL_44:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_45;
    }

LABEL_144:
    if (*(v5 + 264))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v9 = *(v5 + 304);
      if ((v9 & 0x1000) != 0)
      {
        goto LABEL_148;
      }
    }

    else
    {
      v30 = *(qword_28144B8C0 + 264);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v9 = *(v5 + 304);
      if ((v9 & 0x1000) != 0)
      {
        goto LABEL_148;
      }
    }

LABEL_46:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

LABEL_152:
    if (*(v5 + 280))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v5 + 304) & 0x4000) != 0)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v32 = *(qword_28144B8C0 + 280);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v5 + 304) & 0x4000) != 0)
      {
        goto LABEL_156;
      }
    }

LABEL_48:
    v12 = *(v5 + 8);
    v11 = v5 + 8;
    v10 = v12;
    if (!v12)
    {
      return result;
    }

    goto LABEL_160;
  }

LABEL_140:
  if (*(v5 + 256))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v9 = *(v5 + 304);
    if ((v9 & 0x800) != 0)
    {
      goto LABEL_144;
    }
  }

  else
  {
    v29 = *(qword_28144B8C0 + 256);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v9 = *(v5 + 304);
    if ((v9 & 0x800) != 0)
    {
      goto LABEL_144;
    }
  }

LABEL_45:
  if ((v9 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

LABEL_148:
  if (*(v5 + 272))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v9 = *(v5 + 304);
    if ((v9 & 0x2000) != 0)
    {
      goto LABEL_152;
    }
  }

  else
  {
    v31 = *(qword_28144B8C0 + 272);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v9 = *(v5 + 304);
    if ((v9 & 0x2000) != 0)
    {
      goto LABEL_152;
    }
  }

LABEL_47:
  if ((v9 & 0x4000) == 0)
  {
    goto LABEL_48;
  }

LABEL_156:
  if (*(v5 + 288))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v33 = *(v5 + 8);
    v11 = v5 + 8;
    v10 = v33;
    if (!v33)
    {
      return result;
    }
  }

  else
  {
    v34 = *(qword_28144B8C0 + 288);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v35 = *(v5 + 8);
    v11 = v5 + 8;
    v10 = v35;
    if (!v35)
    {
      return result;
    }
  }

LABEL_160:
  if (*v10 != v10[1])
  {

    return MEMORY[0x2821F9DB8](v11, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A58A98(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 75);
  if (v5)
  {
    v7 = *(this + 2);
    *a2 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v7, a2 + 1, a3);
    if ((*(this + 75) & 2) == 0)
    {
LABEL_3:
      if ((*(this + 300) & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v9 = *(this + 7);
      *v3 = 24;
      v10 = v3 + 1;
      if ((v9 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, v10, a3);
        if ((*(this + 300) & 8) != 0)
        {
          goto LABEL_22;
        }
      }

      else if (v9 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v10, a3);
        if ((*(this + 300) & 8) != 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *(v3 + 1) = v9;
        v3 = (v3 + 2);
        if ((*(this + 300) & 8) != 0)
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      if ((*(this + 300) & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_29:
      v13 = *(this + 9);
      *v3 = 40;
      v14 = v3 + 1;
      if ((v13 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v14, a3);
        v6 = *(this + 75);
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_36;
        }
      }

      else if (v13 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v14, a3);
        v6 = *(this + 75);
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        *(v3 + 1) = v13;
        v3 = (v3 + 2);
        v6 = *(this + 75);
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_36;
        }
      }

LABEL_7:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_8;
      }

LABEL_37:
      v16 = *(this + 11);
      *v3 = 69;
      *(v3 + 1) = v16;
      v3 = (v3 + 5);
      if ((*(this + 75) & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 6);
  *v3 = 16;
  if (v8 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
    if ((*(this + 300) & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(v3 + 1) = v8;
    v3 = (v3 + 2);
    if ((*(this + 300) & 4) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((*(this + 300) & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v11 = *(this + 8);
  *v3 = 32;
  v12 = v3 + 1;
  if ((v11 & 0x80000000) != 0)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
    if ((*(this + 300) & 0x10) != 0)
    {
      goto LABEL_29;
    }
  }

  else if (v11 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    if ((*(this + 300) & 0x10) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(v3 + 1) = v11;
    v3 = (v3 + 2);
    if ((*(this + 300) & 0x10) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_6:
  v6 = *(this + 75);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_36:
  v15 = *(this + 10);
  *v3 = 61;
  *(v3 + 1) = v15;
  v3 = (v3 + 5);
  v6 = *(this + 75);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_37;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_53;
  }

LABEL_38:
  v17 = *(this + 6);
  if (v17)
  {
    *v3 = 74;
    v18 = v3 + 1;
    v19 = v17[7];
    if (v19 <= 0x7F)
    {
      goto LABEL_40;
    }

LABEL_43:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v18, a3);
    v20 = v17[8];
    if ((v20 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v17 = *(qword_28144B8C0 + 48);
  *v3 = 74;
  v18 = v3 + 1;
  v19 = v17[7];
  if (v19 > 0x7F)
  {
    goto LABEL_43;
  }

LABEL_40:
  *(v3 + 1) = v19;
  v3 = (v3 + 2);
  v20 = v17[8];
  if (v20)
  {
LABEL_44:
    v21 = v17[4];
    *v3 = 13;
    *(v3 + 1) = v21;
    v3 = (v3 + 5);
    v20 = v17[8];
  }

LABEL_45:
  if ((v20 & 2) != 0)
  {
    v25 = v17[5];
    *v3 = 21;
    *(v3 + 1) = v25;
    v3 = (v3 + 5);
    if ((v17[8] & 4) == 0)
    {
LABEL_47:
      v24 = *(v17 + 1);
      v23 = (v17 + 2);
      v22 = v24;
      if (!v24)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }
  }

  else if ((v20 & 4) == 0)
  {
    goto LABEL_47;
  }

  v26 = v17[6];
  *v3 = 29;
  *(v3 + 1) = v26;
  v3 = (v3 + 5);
  v27 = *(v17 + 1);
  v23 = (v17 + 2);
  v22 = v27;
  if (!v27)
  {
    goto LABEL_53;
  }

LABEL_51:
  if (*v22 != v22[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v23, v3, a3);
  }

LABEL_53:
  v28 = *(this + 75);
  if ((v28 & 0x100) != 0)
  {
    v29 = *(this + 7);
    if (v29)
    {
      *v3 = 82;
      v30 = v3 + 1;
      v31 = v29[10];
      if (v31 <= 0x7F)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v29 = *(qword_28144B8C0 + 56);
      *v3 = 82;
      v30 = v3 + 1;
      v31 = v29[10];
      if (v31 <= 0x7F)
      {
LABEL_63:
        *(v3 + 1) = v31;
        v3 = sub_245A526E4(v29, v3 + 2, a3);
        v28 = *(this + 75);
        if ((v28 & 0x200) != 0)
        {
          goto LABEL_67;
        }

LABEL_55:
        if ((v28 & 0x400) == 0)
        {
          goto LABEL_56;
        }

LABEL_73:
        v39 = *(this + 9);
        if (v39)
        {
          *v3 = 98;
          v40 = v3 + 1;
          v41 = v39[11];
          if (v41 <= 0x7F)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v39 = *(qword_28144B8C0 + 72);
          *v3 = 98;
          v40 = v3 + 1;
          v41 = v39[11];
          if (v41 <= 0x7F)
          {
LABEL_75:
            *(v3 + 1) = v41;
            v3 = sub_245A51128(v39, v3 + 2, a3);
            v28 = *(this + 75);
            if ((v28 & 0x800) != 0)
            {
              goto LABEL_79;
            }

LABEL_57:
            if ((v28 & 0x1000) == 0)
            {
              goto LABEL_58;
            }

LABEL_80:
            v45 = *(this + 10);
            if (v45)
            {
              *v3 = 114;
              v46 = v3 + 1;
              v47 = *(v45 + 40);
              if (v47 <= 0x7F)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v45 = *(qword_28144B8C0 + 80);
              *v3 = 114;
              v46 = v3 + 1;
              v47 = *(v45 + 40);
              if (v47 <= 0x7F)
              {
LABEL_82:
                *(v3 + 1) = v47;
                v3 = sub_245A544F0(v45, v3 + 2, a3);
                v28 = *(this + 75);
                if ((v28 & 0x2000) != 0)
                {
                  goto LABEL_86;
                }

LABEL_59:
                if ((v28 & 0x4000) == 0)
                {
                  goto LABEL_107;
                }

                goto LABEL_92;
              }
            }

            v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, v46, a3);
            v3 = sub_245A544F0(v45, v48, v49);
            v28 = *(this + 75);
            if ((v28 & 0x2000) != 0)
            {
              goto LABEL_86;
            }

            goto LABEL_59;
          }
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v40, a3);
        v3 = sub_245A51128(v39, v42, v43);
        v28 = *(this + 75);
        if ((v28 & 0x800) != 0)
        {
          goto LABEL_79;
        }

        goto LABEL_57;
      }
    }

    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v30, a3);
    v3 = sub_245A526E4(v29, v32, v33);
    v28 = *(this + 75);
    if ((v28 & 0x200) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_55;
  }

  if ((v28 & 0x200) == 0)
  {
    goto LABEL_55;
  }

LABEL_67:
  v34 = *(this + 8);
  if (v34)
  {
    *v3 = 90;
    v35 = v3 + 1;
    v36 = *(v34 + 40);
    if (v36 <= 0x7F)
    {
      goto LABEL_69;
    }

LABEL_72:
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v35, a3);
    v3 = sub_245A53584(v34, v37, v38);
    v28 = *(this + 75);
    if ((v28 & 0x400) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  v34 = *(qword_28144B8C0 + 64);
  *v3 = 90;
  v35 = v3 + 1;
  v36 = *(v34 + 40);
  if (v36 > 0x7F)
  {
    goto LABEL_72;
  }

LABEL_69:
  *(v3 + 1) = v36;
  v3 = sub_245A53584(v34, v3 + 2, a3);
  v28 = *(this + 75);
  if ((v28 & 0x400) != 0)
  {
    goto LABEL_73;
  }

LABEL_56:
  if ((v28 & 0x800) == 0)
  {
    goto LABEL_57;
  }

LABEL_79:
  v44 = *(this + 24);
  *v3 = 109;
  *(v3 + 1) = v44;
  v3 = (v3 + 5);
  v28 = *(this + 75);
  if ((v28 & 0x1000) != 0)
  {
    goto LABEL_80;
  }

LABEL_58:
  if ((v28 & 0x2000) == 0)
  {
    goto LABEL_59;
  }

LABEL_86:
  v50 = *(this + 11);
  if (v50)
  {
    *v3 = 122;
    v51 = v3 + 1;
    v52 = v50[18];
    if (v52 <= 0x7F)
    {
      goto LABEL_88;
    }

LABEL_91:
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v52, v51, a3);
    v3 = sub_245A556B8(v50, v53, v54);
    if ((*(this + 75) & 0x4000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_92;
  }

  v50 = *(qword_28144B8C0 + 88);
  *v3 = 122;
  v51 = v3 + 1;
  v52 = v50[18];
  if (v52 > 0x7F)
  {
    goto LABEL_91;
  }

LABEL_88:
  *(v3 + 1) = v52;
  v3 = sub_245A556B8(v50, (v3 + 2), a3);
  if ((*(this + 75) & 0x4000) == 0)
  {
    goto LABEL_107;
  }

LABEL_92:
  v55 = *(this + 13);
  if (v55)
  {
    *v3 = 386;
    v56 = v3 + 2;
    v57 = *(v55 + 36);
    if (v57 <= 0x7F)
    {
      goto LABEL_94;
    }

LABEL_97:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v57, v56, a3);
    v58 = *(v55 + 40);
    if ((v58 & 1) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v55 = *(qword_28144B8C0 + 104);
  *v3 = 386;
  v56 = v3 + 2;
  v57 = *(v55 + 36);
  if (v57 > 0x7F)
  {
    goto LABEL_97;
  }

LABEL_94:
  *(v3 + 2) = v57;
  v3 = (v3 + 3);
  v58 = *(v55 + 40);
  if (v58)
  {
LABEL_98:
    v59 = *(v55 + 16);
    *v3 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v59, v3 + 1, a3);
    v58 = *(v55 + 40);
  }

LABEL_99:
  if ((v58 & 2) != 0)
  {
    v63 = *(v55 + 24);
    *v3 = 16;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v63, v3 + 1, a3);
    if ((*(v55 + 40) & 4) == 0)
    {
LABEL_101:
      v62 = *(v55 + 8);
      v61 = (v55 + 8);
      v60 = v62;
      if (!v62)
      {
        goto LABEL_107;
      }

      goto LABEL_105;
    }
  }

  else if ((v58 & 4) == 0)
  {
    goto LABEL_101;
  }

  v64 = *(v55 + 32);
  *v3 = 29;
  *(v3 + 1) = v64;
  v3 = (v3 + 5);
  v65 = *(v55 + 8);
  v61 = (v55 + 8);
  v60 = v65;
  if (!v65)
  {
    goto LABEL_107;
  }

LABEL_105:
  if (*v60 != v60[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v61, v3, a3);
  }

LABEL_107:
  v66 = *(this + 75);
  if ((v66 & 0x8000) == 0)
  {
    if ((v66 & 0x10000) == 0)
    {
      goto LABEL_109;
    }

LABEL_117:
    v70 = *(this + 25);
    *v3 = 400;
    v71 = v3 + 2;
    if ((v70 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v70, v71, a3);
      v67 = *(this + 75);
      if ((v67 & 0x20000) != 0)
      {
        goto LABEL_124;
      }
    }

    else if (v70 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v70, v71, a3);
      v67 = *(this + 75);
      if ((v67 & 0x20000) != 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      *(v3 + 2) = v70;
      v3 = (v3 + 3);
      v67 = *(this + 75);
      if ((v67 & 0x20000) != 0)
      {
        goto LABEL_124;
      }
    }

LABEL_110:
    if ((v67 & 0x40000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_125;
  }

  v69 = *(this + 14);
  *v3 = 393;
  *(v3 + 2) = v69;
  v3 = (v3 + 10);
  if ((*(this + 75) & 0x10000) != 0)
  {
    goto LABEL_117;
  }

LABEL_109:
  v67 = *(this + 75);
  if ((v67 & 0x20000) == 0)
  {
    goto LABEL_110;
  }

LABEL_124:
  v72 = *(this + 30);
  *v3 = 413;
  *(v3 + 2) = v72;
  v3 = (v3 + 6);
  v67 = *(this + 75);
  if ((v67 & 0x40000) == 0)
  {
LABEL_111:
    if ((v67 & 0x80000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

LABEL_125:
  v73 = *(this + 31);
  *v3 = 421;
  *(v3 + 2) = v73;
  v3 = (v3 + 6);
  if ((*(this + 75) & 0x80000) == 0)
  {
LABEL_112:
    if ((*(this + 305) & 1) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_127;
  }

LABEL_126:
  v74 = *(this + 32);
  *v3 = 429;
  *(v3 + 2) = v74;
  v3 = (v3 + 6);
  if ((*(this + 305) & 1) == 0)
  {
LABEL_113:
    v68 = *(this + 75);
    if ((v68 & 0x200000) == 0)
    {
      goto LABEL_114;
    }

LABEL_128:
    v76 = *(this + 34);
    *v3 = 445;
    *(v3 + 2) = v76;
    v3 = (v3 + 6);
    if ((*(this + 75) & 0x400000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_129;
  }

LABEL_127:
  v75 = *(this + 62);
  *v3 = 437;
  *(v3 + 2) = v75;
  v3 = (v3 + 6);
  v68 = *(this + 75);
  if ((v68 & 0x200000) != 0)
  {
    goto LABEL_128;
  }

LABEL_114:
  if ((v68 & 0x400000) == 0)
  {
    goto LABEL_139;
  }

LABEL_129:
  v77 = *(this + 18);
  if (v77)
  {
    *v3 = 450;
    v78 = v3 + 2;
    v79 = *(v77 + 20);
    if (v79 <= 0x7F)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v77 = *(qword_28144B8C0 + 144);
    *v3 = 450;
    v78 = v3 + 2;
    v79 = *(v77 + 20);
    if (v79 <= 0x7F)
    {
LABEL_131:
      *(v3 + 2) = v79;
      v3 = (v3 + 3);
      if ((*(v77 + 24) & 1) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_135;
    }
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v79, v78, a3);
  if (*(v77 + 24))
  {
LABEL_135:
    v80 = *(v77 + 16);
    *v3 = 13;
    *(v3 + 1) = v80;
    v3 = (v3 + 5);
  }

LABEL_136:
  v83 = *(v77 + 8);
  v82 = (v77 + 8);
  v81 = v83;
  if (v83 && *v81 != v81[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v82, v3, a3);
  }

LABEL_139:
  if ((*(this + 302) & 0x80) != 0)
  {
    v87 = *(this + 35);
    *v3 = 456;
    v88 = v3 + 2;
    if ((v87 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v87, v88, a3);
      v84 = *(this + 75);
      if ((v84 & 0x1000000) != 0)
      {
        goto LABEL_167;
      }
    }

    else if (v87 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v87, v88, a3);
      v84 = *(this + 75);
      if ((v84 & 0x1000000) != 0)
      {
        goto LABEL_167;
      }
    }

    else
    {
      *(v3 + 2) = v87;
      v3 = (v3 + 3);
      v84 = *(this + 75);
      if ((v84 & 0x1000000) != 0)
      {
        goto LABEL_167;
      }
    }

LABEL_141:
    if ((v84 & 0x2000000) == 0)
    {
      goto LABEL_142;
    }

LABEL_168:
    v90 = *(this + 20);
    if (v90)
    {
      *v3 = 474;
      v91 = v3 + 2;
      v92 = *(v90 + 40);
      if (v92 <= 0x7F)
      {
        goto LABEL_170;
      }
    }

    else
    {
      v90 = *(qword_28144B8C0 + 160);
      *v3 = 474;
      v91 = v3 + 2;
      v92 = *(v90 + 40);
      if (v92 <= 0x7F)
      {
LABEL_170:
        *(v3 + 2) = v92;
        v3 = sub_245A57A34(v90, v3 + 3, a3);
        v84 = *(this + 75);
        if ((v84 & 0x4000000) != 0)
        {
          goto LABEL_174;
        }

LABEL_143:
        if ((v84 & 0x8000000) == 0)
        {
          goto LABEL_144;
        }

LABEL_180:
        v100 = *(this + 22);
        if (v100)
        {
          *v3 = 490;
          v101 = v3 + 2;
          v102 = *(v100 + 72);
          if (v102 <= 0x7F)
          {
            goto LABEL_182;
          }
        }

        else
        {
          v100 = *(qword_28144B8C0 + 176);
          *v3 = 490;
          v101 = v3 + 2;
          v102 = *(v100 + 72);
          if (v102 <= 0x7F)
          {
LABEL_182:
            *(v3 + 2) = v102;
            v3 = sub_245A56D48(v100, v3 + 3, a3);
            v84 = *(this + 75);
            if ((v84 & 0x10000000) != 0)
            {
              goto LABEL_186;
            }

LABEL_145:
            if ((v84 & 0x20000000) == 0)
            {
              goto LABEL_146;
            }

            goto LABEL_187;
          }
        }

        v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v102, v101, a3);
        v3 = sub_245A56D48(v100, v103, v104);
        v84 = *(this + 75);
        if ((v84 & 0x10000000) != 0)
        {
          goto LABEL_186;
        }

        goto LABEL_145;
      }
    }

    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v92, v91, a3);
    v3 = sub_245A57A34(v90, v93, v94);
    v84 = *(this + 75);
    if ((v84 & 0x4000000) != 0)
    {
      goto LABEL_174;
    }

    goto LABEL_143;
  }

  v84 = *(this + 75);
  if ((v84 & 0x1000000) == 0)
  {
    goto LABEL_141;
  }

LABEL_167:
  v89 = *(this + 19);
  *v3 = 465;
  *(v3 + 2) = v89;
  v3 = (v3 + 10);
  v84 = *(this + 75);
  if ((v84 & 0x2000000) != 0)
  {
    goto LABEL_168;
  }

LABEL_142:
  if ((v84 & 0x4000000) == 0)
  {
    goto LABEL_143;
  }

LABEL_174:
  v95 = *(this + 21);
  if (v95)
  {
    *v3 = 482;
    v96 = v3 + 2;
    v97 = *(v95 + 52);
    if (v97 <= 0x7F)
    {
      goto LABEL_176;
    }

LABEL_179:
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v97, v96, a3);
    v3 = sub_245A6CAA4(v95, v98, v99);
    v84 = *(this + 75);
    if ((v84 & 0x8000000) != 0)
    {
      goto LABEL_180;
    }

    goto LABEL_144;
  }

  v95 = *(qword_28144B8C0 + 168);
  *v3 = 482;
  v96 = v3 + 2;
  v97 = *(v95 + 52);
  if (v97 > 0x7F)
  {
    goto LABEL_179;
  }

LABEL_176:
  *(v3 + 2) = v97;
  v3 = sub_245A6CAA4(v95, v3 + 3, a3);
  v84 = *(this + 75);
  if ((v84 & 0x8000000) != 0)
  {
    goto LABEL_180;
  }

LABEL_144:
  if ((v84 & 0x10000000) == 0)
  {
    goto LABEL_145;
  }

LABEL_186:
  v105 = *(this + 192);
  *v3 = 496;
  *(v3 + 2) = v105;
  v3 = (v3 + 3);
  v84 = *(this + 75);
  if ((v84 & 0x20000000) == 0)
  {
LABEL_146:
    if ((v84 & 0x40000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_188;
  }

LABEL_187:
  v106 = *(this + 23);
  *v3 = 505;
  *(v3 + 2) = v106;
  v3 = (v3 + 10);
  v84 = *(this + 75);
  if ((v84 & 0x40000000) == 0)
  {
LABEL_147:
    if ((v84 & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_189;
  }

LABEL_188:
  v107 = *(this + 193);
  *v3 = 640;
  *(v3 + 2) = v107;
  v3 = (v3 + 3);
  if ((*(this + 75) & 0x80000000) == 0)
  {
LABEL_148:
    v85 = *(this + 76);
    if ((v85 & 1) == 0)
    {
      goto LABEL_149;
    }

LABEL_190:
    v109 = *(this + 25);
    if (v109)
    {
      *v3 = 658;
      v110 = v3 + 2;
      v111 = *(v109 + 40);
      if (v111 <= 0x7F)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v109 = *(qword_28144B8C0 + 200);
      *v3 = 658;
      v110 = v3 + 2;
      v111 = *(v109 + 40);
      if (v111 <= 0x7F)
      {
LABEL_192:
        *(v3 + 2) = v111;
        v3 = sub_245A50404(v109, v3 + 3, a3);
        v85 = *(this + 76);
        if ((v85 & 2) != 0)
        {
          goto LABEL_196;
        }

LABEL_150:
        if ((v85 & 4) == 0)
        {
          goto LABEL_151;
        }

        goto LABEL_197;
      }
    }

    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v111, v110, a3);
    v3 = sub_245A50404(v109, v112, v113);
    v85 = *(this + 76);
    if ((v85 & 2) != 0)
    {
      goto LABEL_196;
    }

    goto LABEL_150;
  }

LABEL_189:
  v108 = *(this + 49);
  *v3 = 653;
  *(v3 + 2) = v108;
  v3 = (v3 + 6);
  v85 = *(this + 76);
  if (v85)
  {
    goto LABEL_190;
  }

LABEL_149:
  if ((v85 & 2) == 0)
  {
    goto LABEL_150;
  }

LABEL_196:
  v114 = *(this + 194);
  *v3 = 664;
  *(v3 + 2) = v114;
  v3 = (v3 + 3);
  v85 = *(this + 76);
  if ((v85 & 4) == 0)
  {
LABEL_151:
    if ((v85 & 8) == 0)
    {
      goto LABEL_152;
    }

LABEL_203:
    v120 = *(this + 27);
    if (v120)
    {
      *v3 = 682;
      v121 = v3 + 2;
      v122 = v120[8];
      if (v122 <= 0x7F)
      {
        goto LABEL_205;
      }
    }

    else
    {
      v120 = *(qword_28144B8C0 + 216);
      *v3 = 682;
      v121 = v3 + 2;
      v122 = v120[8];
      if (v122 <= 0x7F)
      {
LABEL_205:
        *(v3 + 2) = v122;
        v3 = sub_245A5D0A4(v120, v3 + 3, a3);
        if ((*(this + 302) & 0x10) != 0)
        {
          goto LABEL_209;
        }

LABEL_153:
        v86 = *(this + 76);
        if ((v86 & 0x10) == 0)
        {
          goto LABEL_154;
        }

        goto LABEL_210;
      }
    }

    v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v122, v121, a3);
    v3 = sub_245A5D0A4(v120, v123, v124);
    if ((*(this + 302) & 0x10) != 0)
    {
      goto LABEL_209;
    }

    goto LABEL_153;
  }

LABEL_197:
  v115 = *(this + 26);
  if (v115)
  {
    *v3 = 674;
    v116 = v3 + 2;
    v117 = *(v115 + 56);
    if (v117 <= 0x7F)
    {
      goto LABEL_199;
    }

LABEL_202:
    v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v117, v116, a3);
    v3 = sub_245A5C678(v115, v118, v119);
    if ((*(this + 76) & 8) != 0)
    {
      goto LABEL_203;
    }

    goto LABEL_152;
  }

  v115 = *(qword_28144B8C0 + 208);
  *v3 = 674;
  v116 = v3 + 2;
  v117 = *(v115 + 56);
  if (v117 > 0x7F)
  {
    goto LABEL_202;
  }

LABEL_199:
  *(v3 + 2) = v117;
  v3 = sub_245A5C678(v115, v3 + 3, a3);
  if ((*(this + 76) & 8) != 0)
  {
    goto LABEL_203;
  }

LABEL_152:
  if ((*(this + 302) & 0x10) == 0)
  {
    goto LABEL_153;
  }

LABEL_209:
  v125 = *(this + 33);
  *v3 = 693;
  *(v3 + 2) = v125;
  v3 = (v3 + 6);
  v86 = *(this + 76);
  if ((v86 & 0x10) == 0)
  {
LABEL_154:
    if ((v86 & 0x20) == 0)
    {
      goto LABEL_155;
    }

LABEL_211:
    v127 = *(this + 29);
    if (v127)
    {
      *v3 = 706;
      v128 = v3 + 2;
      v129 = *(v127 + 40);
      if (v129 <= 0x7F)
      {
        goto LABEL_213;
      }
    }

    else
    {
      v127 = *(qword_28144B8C0 + 232);
      *v3 = 706;
      v128 = v3 + 2;
      v129 = *(v127 + 40);
      if (v129 <= 0x7F)
      {
LABEL_213:
        *(v3 + 2) = v129;
        v3 = sub_245A50404(v127, v3 + 3, a3);
        v86 = *(this + 76);
        if ((v86 & 0x40) != 0)
        {
          goto LABEL_217;
        }

LABEL_156:
        if ((v86 & 0x80) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_218;
      }
    }

    v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v129, v128, a3);
    v3 = sub_245A50404(v127, v130, v131);
    v86 = *(this + 76);
    if ((v86 & 0x40) != 0)
    {
      goto LABEL_217;
    }

    goto LABEL_156;
  }

LABEL_210:
  v126 = *(this + 56);
  *v3 = 701;
  *(v3 + 2) = v126;
  v3 = (v3 + 6);
  v86 = *(this + 76);
  if ((v86 & 0x20) != 0)
  {
    goto LABEL_211;
  }

LABEL_155:
  if ((v86 & 0x40) == 0)
  {
    goto LABEL_156;
  }

LABEL_217:
  v132 = *(this + 57);
  *v3 = 717;
  *(v3 + 2) = v132;
  v3 = (v3 + 6);
  v86 = *(this + 76);
  if ((v86 & 0x80) == 0)
  {
LABEL_157:
    if ((v86 & 0x200) == 0)
    {
      goto LABEL_158;
    }

LABEL_224:
    v138 = *(this + 63);
    *v3 = 733;
    *(v3 + 2) = v138;
    v3 = (v3 + 6);
    if ((*(this + 76) & 0x400) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_225;
  }

LABEL_218:
  v133 = *(this + 30);
  if (v133)
  {
    *v3 = 722;
    v134 = v3 + 2;
    v135 = *(v133 + 40);
    if (v135 <= 0x7F)
    {
      goto LABEL_220;
    }

LABEL_223:
    v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v135, v134, a3);
    v3 = sub_245A53584(v133, v136, v137);
    v86 = *(this + 76);
    if ((v86 & 0x200) != 0)
    {
      goto LABEL_224;
    }

    goto LABEL_158;
  }

  v133 = *(qword_28144B8C0 + 240);
  *v3 = 722;
  v134 = v3 + 2;
  v135 = *(v133 + 40);
  if (v135 > 0x7F)
  {
    goto LABEL_223;
  }

LABEL_220:
  *(v3 + 2) = v135;
  v3 = sub_245A53584(v133, v3 + 3, a3);
  v86 = *(this + 76);
  if ((v86 & 0x200) != 0)
  {
    goto LABEL_224;
  }

LABEL_158:
  if ((v86 & 0x400) == 0)
  {
    goto LABEL_238;
  }

LABEL_225:
  v139 = *(this + 32);
  if (v139)
  {
    *v3 = 738;
    v140 = v3 + 2;
    v141 = *(v139 + 32);
    if (v141 <= 0x7F)
    {
      goto LABEL_227;
    }

LABEL_230:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v141, v140, a3);
    v142 = *(v139 + 36);
    if ((v142 & 1) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_231;
  }

  v139 = *(qword_28144B8C0 + 256);
  *v3 = 738;
  v140 = v3 + 2;
  v141 = *(v139 + 32);
  if (v141 > 0x7F)
  {
    goto LABEL_230;
  }

LABEL_227:
  *(v3 + 2) = v141;
  v3 = (v3 + 3);
  v142 = *(v139 + 36);
  if (v142)
  {
LABEL_231:
    v143 = *(v139 + 16);
    *v3 = 9;
    *(v3 + 1) = v143;
    v3 = (v3 + 9);
    v142 = *(v139 + 36);
  }

LABEL_232:
  if ((v142 & 2) != 0)
  {
    v147 = *(v139 + 24);
    *v3 = 17;
    *(v3 + 1) = v147;
    v3 = (v3 + 9);
    v148 = *(v139 + 8);
    v145 = (v139 + 8);
    v144 = v148;
    if (!v148)
    {
      goto LABEL_238;
    }
  }

  else
  {
    v146 = *(v139 + 8);
    v145 = (v139 + 8);
    v144 = v146;
    if (!v146)
    {
      goto LABEL_238;
    }
  }

  if (*v144 != v144[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v145, v3, a3);
  }

LABEL_238:
  v149 = *(this + 76);
  if ((v149 & 0x800) != 0)
  {
    v153 = *(this + 33);
    if (v153)
    {
      *v3 = 746;
      v154 = v3 + 2;
      v155 = v153[14];
      if (v155 <= 0x7F)
      {
        goto LABEL_246;
      }
    }

    else
    {
      v153 = *(qword_28144B8C0 + 264);
      *v3 = 746;
      v154 = v3 + 2;
      v155 = v153[14];
      if (v155 <= 0x7F)
      {
LABEL_246:
        *(v3 + 2) = v155;
        v3 = sub_245A6EF14(v153, (v3 + 3), a3);
        v149 = *(this + 76);
        if ((v149 & 0x1000) != 0)
        {
          goto LABEL_250;
        }

LABEL_240:
        if ((v149 & 0x2000) == 0)
        {
          goto LABEL_241;
        }

LABEL_256:
        v163 = *(this + 35);
        if (v163)
        {
          *v3 = 762;
          v164 = v3 + 2;
          v165 = *(v163 + 44);
          if (v165 <= 0x7F)
          {
            goto LABEL_258;
          }
        }

        else
        {
          v163 = *(qword_28144B8C0 + 280);
          *v3 = 762;
          v164 = v3 + 2;
          v165 = *(v163 + 44);
          if (v165 <= 0x7F)
          {
LABEL_258:
            *(v3 + 2) = v165;
            v3 = sub_245A6DAC8(v163, v3 + 3, a3);
            if ((*(this + 76) & 0x4000) != 0)
            {
              goto LABEL_262;
            }

LABEL_242:
            v152 = *(this + 1);
            v151 = (this + 8);
            v150 = v152;
            if (!v152)
            {
              return v3;
            }

            goto LABEL_268;
          }
        }

        v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v165, v164, a3);
        v3 = sub_245A6DAC8(v163, v166, v167);
        if ((*(this + 76) & 0x4000) != 0)
        {
          goto LABEL_262;
        }

        goto LABEL_242;
      }
    }

    v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v155, v154, a3);
    v3 = sub_245A6EF14(v153, v156, v157);
    v149 = *(this + 76);
    if ((v149 & 0x1000) != 0)
    {
      goto LABEL_250;
    }

    goto LABEL_240;
  }

  if ((v149 & 0x1000) == 0)
  {
    goto LABEL_240;
  }

LABEL_250:
  v158 = *(this + 34);
  if (v158)
  {
    *v3 = 754;
    v159 = v3 + 2;
    v160 = *(v158 + 40);
    if (v160 <= 0x7F)
    {
      goto LABEL_252;
    }

LABEL_255:
    v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v160, v159, a3);
    v3 = sub_245A70964(v158, v161, v162);
    v149 = *(this + 76);
    if ((v149 & 0x2000) != 0)
    {
      goto LABEL_256;
    }

    goto LABEL_241;
  }

  v158 = *(qword_28144B8C0 + 272);
  *v3 = 754;
  v159 = v3 + 2;
  v160 = *(v158 + 40);
  if (v160 > 0x7F)
  {
    goto LABEL_255;
  }

LABEL_252:
  *(v3 + 2) = v160;
  v3 = sub_245A70964(v158, v3 + 3, a3);
  v149 = *(this + 76);
  if ((v149 & 0x2000) != 0)
  {
    goto LABEL_256;
  }

LABEL_241:
  if ((v149 & 0x4000) == 0)
  {
    goto LABEL_242;
  }

LABEL_262:
  v168 = *(this + 36);
  if (v168)
  {
    *v3 = 898;
    v169 = v3 + 2;
    v170 = *(v168 + 52);
    if (v170 <= 0x7F)
    {
      goto LABEL_264;
    }
  }

  else
  {
    v168 = *(qword_28144B8C0 + 288);
    *v3 = 898;
    v169 = v3 + 2;
    v170 = *(v168 + 52);
    if (v170 <= 0x7F)
    {
LABEL_264:
      *(v3 + 2) = v170;
      v3 = sub_245A6E4A0(v168, v3 + 3, a3);
      v171 = *(this + 1);
      v151 = (this + 8);
      v150 = v171;
      if (!v171)
      {
        return v3;
      }

      goto LABEL_268;
    }
  }

  v172 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v170, v169, a3);
  v3 = sub_245A6E4A0(v168, v172, v173);
  v174 = *(this + 1);
  v151 = (this + 8);
  v150 = v174;
  if (!v174)
  {
    return v3;
  }

LABEL_268:
  if (*v150 == v150[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v151, v3, a3);
}

uint64_t sub_245A59EA4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 300);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_57;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
    v3 = *(a1 + 300);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = *(a1 + 24);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(a1 + 300);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 28);
    if ((v8 & 0x80000000) != 0)
    {
      v4 += 11;
      if ((v3 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v3 = *(a1 + 300);
      v4 += v9 + 1;
      if ((v3 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 += 2;
      if ((v3 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_13:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }

LABEL_29:
    v12 = *(a1 + 36);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(a1 + 300);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
    goto LABEL_35;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  v10 = *(a1 + 32);
  if ((v10 & 0x80000000) != 0)
  {
    v4 += 11;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  if (v10 < 0x80)
  {
    v4 += 2;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  v3 = *(a1 + 300);
  v4 += v11 + 1;
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_35:
  v14 = v4 + 5;
  if ((v3 & 0x20) == 0)
  {
    v14 = v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = v14 + 5;
  }

  else
  {
    v5 = v14;
  }

  if ((v3 & 0x80) != 0)
  {
    v15 = *(a1 + 48);
    if (!v15)
    {
      v15 = *(qword_28144B8C0 + 48);
    }

    v16 = *(v15 + 32);
    v17 = (v16 << 31 >> 31) & 5;
    if ((v16 & 2) != 0)
    {
      v17 += 5;
    }

    if ((v16 & 4) != 0)
    {
      v17 += 5;
    }

    if (*(v15 + 32))
    {
      LODWORD(v18) = v17;
    }

    else
    {
      LODWORD(v18) = 0;
    }

    v19 = *(v15 + 8);
    if (!v19 || *v19 == v19[1])
    {
      *(v15 + 28) = v18;
      v20 = 1;
    }

    else
    {
      v18 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v15 + 8), a2) + v18);
      *(v15 + 28) = v18;
      if (v18 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
      }

      else
      {
        v20 = 1;
      }
    }

    v5 = (v5 + v18 + v20 + 1);
    v3 = *(a1 + 300);
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_139;
  }

  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_74:
    v24 = *(a1 + 64);
    if (v24)
    {
      v25 = sub_245A537CC(v24, a2);
      if (v25 < 0x80)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v25 = sub_245A537CC(*(qword_28144B8C0 + 64), a2);
      if (v25 < 0x80)
      {
LABEL_76:
        LODWORD(v5) = v5 + v25 + 2;
        v3 = *(a1 + 300);
        if ((v3 & 0x400) != 0)
        {
          goto LABEL_80;
        }

LABEL_61:
        if ((v3 & 0x800) != 0)
        {
          v21 = v5 + 5;
        }

        else
        {
          v21 = v5;
        }

        if ((v3 & 0x1000) == 0)
        {
          goto LABEL_65;
        }

LABEL_89:
        v30 = *(a1 + 80);
        if (v30)
        {
          v31 = v30[11];
          if (v31)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v30 = *(qword_28144B8C0 + 80);
          v31 = v30[11];
          if (v31)
          {
LABEL_91:
            v32 = ((v31 << 31) >> 31) & 5;
            if ((v31 & 2) != 0)
            {
              v32 += 5;
            }

            if ((v31 & 4) != 0)
            {
              v32 += 5;
            }

            if ((v31 & 8) != 0)
            {
              v32 += 5;
            }

            if ((v31 & 0x10) != 0)
            {
              v32 += 5;
            }

            v33 = v32 + ((v31 >> 4) & 2);
            v34 = (v30 + 2);
            v35 = *(v30 + 1);
            if (!v35)
            {
              goto LABEL_107;
            }

            goto LABEL_103;
          }
        }

        v33 = 0;
        v34 = (v30 + 2);
        v35 = *(v30 + 1);
        if (!v35)
        {
          goto LABEL_107;
        }

LABEL_103:
        if (*v35 != v35[1])
        {
          v36 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v34, a2) + v33);
          v30[10] = v36;
          if (v36 >= 0x80)
          {
            v21 += v36 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 1;
            v3 = *(a1 + 300);
            if ((v3 & 0x2000) != 0)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v21 += v36 + 1 + 1;
            v3 = *(a1 + 300);
            if ((v3 & 0x2000) != 0)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_66;
        }

LABEL_107:
        v30[10] = v33;
        v21 += v33 + 1 + 1;
        v3 = *(a1 + 300);
        if ((v3 & 0x2000) != 0)
        {
          goto LABEL_110;
        }

LABEL_66:
        if ((v3 & 0x4000) == 0)
        {
          goto LABEL_136;
        }

LABEL_116:
        v39 = *(a1 + 104);
        if (v39)
        {
          LOBYTE(v40) = *(v39 + 40);
          if (v40)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v39 = *(qword_28144B8C0 + 104);
          LOBYTE(v40) = *(v39 + 40);
          if (v40)
          {
LABEL_118:
            if (v40)
            {
              LODWORD(v41) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v39 + 16)) + 1;
              v40 = *(v39 + 40);
              if ((v40 & 2) == 0)
              {
                goto LABEL_126;
              }
            }

            else
            {
              LODWORD(v41) = 0;
              if ((v40 & 2) == 0)
              {
LABEL_126:
                if ((v40 & 4) != 0)
                {
                  v41 = (v41 + 5);
                }

                else
                {
                  v41 = v41;
                }

                v42 = (v39 + 8);
                v43 = *(v39 + 8);
                if (v43)
                {
LABEL_130:
                  if (*v43 != v43[1])
                  {
                    v41 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v42, a2) + v41;
                  }
                }

LABEL_132:
                *(v39 + 36) = v41;
                if (v41 >= 0x80)
                {
                  v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
                }

                else
                {
                  v44 = 1;
                }

                v21 += v41 + v44 + 2;
                v3 = *(a1 + 300);
                goto LABEL_136;
              }
            }

            LODWORD(v41) = v41 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v39 + 24)) + 1;
            v40 = *(v39 + 40);
            goto LABEL_126;
          }
        }

        v41 = 0;
        v42 = (v39 + 8);
        v43 = *(v39 + 8);
        if (v43)
        {
          goto LABEL_130;
        }

        goto LABEL_132;
      }
    }

    LODWORD(v5) = v5 + v25 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(a1 + 300);
    if ((v3 & 0x400) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_61;
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    v23 = sub_245A528E8(v22, a2);
    if (v23 < 0x80)
    {
      goto LABEL_70;
    }

LABEL_73:
    LODWORD(v5) = v5 + v23 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(a1 + 300);
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  v23 = sub_245A528E8(*(qword_28144B8C0 + 56), a2);
  if (v23 >= 0x80)
  {
    goto LABEL_73;
  }

LABEL_70:
  LODWORD(v5) = v5 + v23 + 2;
  v3 = *(a1 + 300);
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_74;
  }

LABEL_60:
  if ((v3 & 0x400) == 0)
  {
    goto LABEL_61;
  }

LABEL_80:
  v26 = *(a1 + 72);
  if (v26)
  {
    v27 = sub_245A51340(v26, a2);
    if (v27 < 0x80)
    {
LABEL_82:
      v28 = 1;
      goto LABEL_85;
    }
  }

  else
  {
    v27 = sub_245A51340(*(qword_28144B8C0 + 72), a2);
    if (v27 < 0x80)
    {
      goto LABEL_82;
    }
  }

  v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
LABEL_85:
  v29 = v5 + v27 + v28 + 1;
  v3 = *(a1 + 300);
  if ((v3 & 0x800) != 0)
  {
    v21 = v29 + 5;
  }

  else
  {
    v21 = v29;
  }

  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_89;
  }

LABEL_65:
  if ((v3 & 0x2000) == 0)
  {
    goto LABEL_66;
  }

LABEL_110:
  v37 = *(a1 + 88);
  if (v37)
  {
    v38 = sub_245A55A4C(v37, a2);
    if (v38 < 0x80)
    {
      goto LABEL_112;
    }

LABEL_115:
    v21 += v38 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 1;
    v3 = *(a1 + 300);
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_116;
  }

  v38 = sub_245A55A4C(*(qword_28144B8C0 + 88), a2);
  if (v38 >= 0x80)
  {
    goto LABEL_115;
  }

LABEL_112:
  v21 += v38 + 2;
  v3 = *(a1 + 300);
  if ((v3 & 0x4000) != 0)
  {
    goto LABEL_116;
  }

LABEL_136:
  if ((v3 & 0x8000) != 0)
  {
    v5 = v21 + 10;
  }

  else
  {
    v5 = v21;
  }

LABEL_139:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v45 = *(a1 + 100);
      if ((v45 & 0x80000000) != 0)
      {
        v46 = 12;
      }

      else if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
        v3 = *(a1 + 300);
      }

      else
      {
        v46 = 3;
      }

      LODWORD(v5) = v46 + v5;
    }

    v47 = v5 + 6;
    if ((v3 & 0x20000) == 0)
    {
      v47 = v5;
    }

    if ((v3 & 0x40000) != 0)
    {
      v47 += 6;
    }

    if ((v3 & 0x80000) != 0)
    {
      v47 += 6;
    }

    if ((v3 & 0x100000) != 0)
    {
      v47 += 6;
    }

    if ((v3 & 0x200000) != 0)
    {
      v5 = v47 + 6;
    }

    else
    {
      v5 = v47;
    }

    if ((v3 & 0x400000) != 0)
    {
      v48 = *(a1 + 144);
      if (!v48)
      {
        v48 = *(qword_28144B8C0 + 144);
      }

      v49 = *(v48 + 8);
      LODWORD(v50) = (*(v48 + 24) << 31 >> 31) & 5;
      if (!v49 || *v49 == v49[1])
      {
        *(v48 + 20) = v50;
        v51 = 1;
      }

      else
      {
        v50 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v48 + 8), a2) + v50);
        *(v48 + 20) = v50;
        if (v50 >= 0x80)
        {
          v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
        }

        else
        {
          v51 = 1;
        }
      }

      v5 = (v5 + v50 + v51 + 2);
      v3 = *(a1 + 300);
    }

    if ((v3 & 0x800000) != 0)
    {
      v52 = *(a1 + 140);
      if ((v52 & 0x80000000) != 0)
      {
        v53 = 12;
      }

      else if (v52 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
        v3 = *(a1 + 300);
      }

      else
      {
        v53 = 3;
      }

      v5 = (v53 + v5);
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v54 = v5 + 10;
    }

    else
    {
      v54 = v5;
    }

    if ((v3 & 0x2000000) == 0)
    {
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_181;
      }

LABEL_207:
      v64 = *(a1 + 168);
      if (v64)
      {
        v65 = v64[14];
        if (v65)
        {
          goto LABEL_209;
        }
      }

      else
      {
        v64 = *(qword_28144B8C0 + 168);
        v65 = v64[14];
        if (v65)
        {
LABEL_209:
          v66 = ((v65 << 31) >> 31) & 9;
          if ((v65 & 2) != 0)
          {
            v66 += 9;
          }

          if ((v65 & 4) != 0)
          {
            v66 += 9;
          }

          if ((v65 & 8) != 0)
          {
            v66 += 9;
          }

          v67 = v66 + ((v65 >> 3) & 2);
          v68 = (v64 + 2);
          v69 = *(v64 + 1);
          if (!v69)
          {
            goto LABEL_223;
          }

          goto LABEL_219;
        }
      }

      v67 = 0;
      v68 = (v64 + 2);
      v69 = *(v64 + 1);
      if (!v69)
      {
        goto LABEL_223;
      }

LABEL_219:
      if (*v69 != v69[1])
      {
        v70 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v68, a2) + v67);
        v64[13] = v70;
        if (v70 >= 0x80)
        {
          v54 += v70 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
          v3 = *(a1 + 300);
          if ((v3 & 0x8000000) == 0)
          {
LABEL_251:
            v78 = v54 + 3;
            if ((v3 & 0x10000000) == 0)
            {
              v78 = v54;
            }

            if ((v3 & 0x20000000) != 0)
            {
              v78 += 10;
            }

            if ((v3 & 0x40000000) != 0)
            {
              v78 += 3;
            }

            if (v3 >= 0)
            {
              v5 = v78;
            }

            else
            {
              v5 = v78 + 6;
            }

            goto LABEL_260;
          }
        }

        else
        {
          v54 += v70 + 1 + 2;
          v3 = *(a1 + 300);
          if ((v3 & 0x8000000) == 0)
          {
            goto LABEL_251;
          }
        }

LABEL_226:
        v71 = *(a1 + 176);
        if (v71)
        {
          v72 = *(v71 + 76);
          if (*(v71 + 76))
          {
            goto LABEL_228;
          }
        }

        else
        {
          v71 = *(qword_28144B8C0 + 176);
          v72 = *(v71 + 76);
          if (*(v71 + 76))
          {
LABEL_228:
            v73 = (v72 << 31 >> 31) & 9;
            if ((v72 & 2) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 4) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 8) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 0x10) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 0x20) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 0x40) != 0)
            {
              LODWORD(v74) = v73 + 9;
            }

            else
            {
              LODWORD(v74) = v73;
            }

            v75 = (v71 + 8);
            v76 = *(v71 + 8);
            if (!v76)
            {
              goto LABEL_248;
            }

LABEL_245:
            if (*v76 != v76[1])
            {
              v74 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v75, a2) + v74);
              *(v71 + 72) = v74;
              if (v74 >= 0x80)
              {
                v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74);
              }

              else
              {
                v77 = 1;
              }

              goto LABEL_250;
            }

LABEL_248:
            *(v71 + 72) = v74;
            v77 = 1;
LABEL_250:
            v54 += v74 + v77 + 2;
            v3 = *(a1 + 300);
            goto LABEL_251;
          }
        }

        LODWORD(v74) = 0;
        v75 = (v71 + 8);
        v76 = *(v71 + 8);
        if (!v76)
        {
          goto LABEL_248;
        }

        goto LABEL_245;
      }

LABEL_223:
      v64[13] = v67;
      v54 += v67 + 1 + 2;
      v3 = *(a1 + 300);
      if ((v3 & 0x8000000) == 0)
      {
        goto LABEL_251;
      }

      goto LABEL_226;
    }

    v55 = *(a1 + 160);
    if (v55)
    {
      v56 = v55[11];
      if (v56)
      {
        goto LABEL_185;
      }
    }

    else
    {
      v55 = *(qword_28144B8C0 + 160);
      v56 = v55[11];
      if (v56)
      {
LABEL_185:
        if ((v56 & 2) != 0)
        {
          v57 = (((v56 << 31) >> 31) & 5) + 5;
        }

        else
        {
          v57 = ((v56 << 31) >> 31) & 5;
        }

        if ((v56 & 4) != 0)
        {
          v58 = v55[6];
          if (v58 >= 0x80)
          {
            v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 1;
            v56 = v55[11];
          }

          else
          {
            v59 = 2;
          }

          v57 += v59;
        }

        v63 = v57 + 5;
        if ((v56 & 8) == 0)
        {
          v63 = v57;
        }

        if ((v56 & 0x10) != 0)
        {
          v63 += 5;
        }

        v60 = (v63 + ((v56 >> 4) & 2));
        v61 = (v55 + 2);
        v62 = *(v55 + 1);
        if (!v62)
        {
LABEL_203:
          v55[10] = v60;
          if (v60 >= 0x80)
          {
            v54 += v60 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
            v3 = *(a1 + 300);
            if ((v3 & 0x4000000) != 0)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v54 += v60 + 3;
            v3 = *(a1 + 300);
            if ((v3 & 0x4000000) != 0)
            {
              goto LABEL_207;
            }
          }

LABEL_181:
          if ((v3 & 0x8000000) == 0)
          {
            goto LABEL_251;
          }

          goto LABEL_226;
        }

LABEL_201:
        if (*v62 != v62[1])
        {
          v60 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v61, a2) + v60);
        }

        goto LABEL_203;
      }
    }

    v60 = 0;
    v61 = (v55 + 2);
    v62 = *(v55 + 1);
    if (!v62)
    {
      goto LABEL_203;
    }

    goto LABEL_201;
  }

LABEL_260:
  v79 = *(a1 + 304);
  if (!v79)
  {
    goto LABEL_274;
  }

  if ((v79 & 1) == 0)
  {
    if ((v79 & 2) != 0)
    {
      v80 = v5 + 3;
    }

    else
    {
      v80 = v5;
    }

    if ((v79 & 4) == 0)
    {
      goto LABEL_266;
    }

LABEL_305:
    v90 = *(a1 + 208);
    if (v90)
    {
      v91 = sub_245A5C8C0(v90, a2);
      if (v91 < 0x80)
      {
        goto LABEL_307;
      }
    }

    else
    {
      v91 = sub_245A5C8C0(*(qword_28144B8C0 + 208), a2);
      if (v91 < 0x80)
      {
LABEL_307:
        v80 += v91 + 3;
        v79 = *(a1 + 304);
        if ((v79 & 8) != 0)
        {
          goto LABEL_311;
        }

LABEL_267:
        if ((v79 & 0x10) != 0)
        {
          v80 += 6;
        }

        if ((v79 & 0x20) == 0)
        {
          goto LABEL_270;
        }

        goto LABEL_319;
      }
    }

    v80 += v91 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91) + 2;
    v79 = *(a1 + 304);
    if ((v79 & 8) != 0)
    {
      goto LABEL_311;
    }

    goto LABEL_267;
  }

  v81 = *(a1 + 200);
  if (v81)
  {
    v82 = v81[11];
    if (v82)
    {
      goto LABEL_278;
    }

LABEL_292:
    if ((v82 & 0x100) != 0)
    {
      LODWORD(v85) = 5;
    }

    else
    {
      LODWORD(v85) = 0;
    }

    v86 = (v81 + 2);
    v87 = *(v81 + 1);
    if (!v87)
    {
      goto LABEL_299;
    }

    goto LABEL_296;
  }

  v81 = *(qword_28144B8C0 + 200);
  v82 = v81[11];
  if (!v82)
  {
    goto LABEL_292;
  }

LABEL_278:
  v83 = 2 * (v82 & 1) + (v82 & 2);
  if ((v82 & 4) != 0)
  {
    v83 += 5;
  }

  if ((v82 & 8) != 0)
  {
    v83 += 5;
  }

  if ((v82 & 0x10) != 0)
  {
    v83 += 5;
  }

  v84 = ((v82 >> 5) & 2) + ((v82 >> 4) & 2) + v83;
  if ((v82 & 0x80) != 0)
  {
    v84 += 5;
  }

  if ((v82 & 0x100) != 0)
  {
    LODWORD(v85) = v84 + 5;
  }

  else
  {
    LODWORD(v85) = v84;
  }

  v86 = (v81 + 2);
  v87 = *(v81 + 1);
  if (!v87)
  {
    goto LABEL_299;
  }

LABEL_296:
  if (*v87 != v87[1])
  {
    v85 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v86, a2) + v85);
    v81[10] = v85;
    if (v85 >= 0x80)
    {
      v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85);
    }

    else
    {
      v88 = 1;
    }

    goto LABEL_301;
  }

LABEL_299:
  v81[10] = v85;
  v88 = 1;
LABEL_301:
  v89 = v5 + v88 + v85 + 2;
  v79 = *(a1 + 304);
  if ((v79 & 2) != 0)
  {
    v80 = v89 + 3;
  }

  else
  {
    v80 = v89;
  }

  if ((v79 & 4) != 0)
  {
    goto LABEL_305;
  }

LABEL_266:
  if ((v79 & 8) == 0)
  {
    goto LABEL_267;
  }

LABEL_311:
  v92 = *(a1 + 216);
  if (v92)
  {
    v93 = sub_245A5D21C(v92, a2);
    if (v93 < 0x80)
    {
LABEL_313:
      v94 = 1;
      goto LABEL_316;
    }
  }

  else
  {
    v93 = sub_245A5D21C(*(qword_28144B8C0 + 216), a2);
    if (v93 < 0x80)
    {
      goto LABEL_313;
    }
  }

  v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93);
LABEL_316:
  v80 += v93 + v94 + 2;
  v79 = *(a1 + 304);
  if ((v79 & 0x10) != 0)
  {
    v80 += 6;
  }

  if ((v79 & 0x20) == 0)
  {
LABEL_270:
    if ((v79 & 0x40) != 0)
    {
      v5 = v80 + 6;
    }

    else
    {
      v5 = v80;
    }

    if ((v79 & 0x80) == 0)
    {
      goto LABEL_274;
    }

LABEL_348:
    v104 = *(a1 + 240);
    if (v104)
    {
      v105 = sub_245A537CC(v104, a2);
      if (v105 < 0x80)
      {
LABEL_350:
        v106 = 1;
        goto LABEL_353;
      }
    }

    else
    {
      v105 = sub_245A537CC(*(qword_28144B8C0 + 240), a2);
      if (v105 < 0x80)
      {
        goto LABEL_350;
      }
    }

    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105);
LABEL_353:
    v5 = (v5 + v105 + v106 + 2);
    v79 = *(a1 + 304);
    if ((v79 & 0xFF00) == 0)
    {
      goto LABEL_364;
    }

LABEL_354:
    v107 = v5 + 6;
    if ((v79 & 0x100) == 0)
    {
      v107 = v5;
    }

    if ((v79 & 0x200) != 0)
    {
      v5 = v107 + 6;
    }

    else
    {
      v5 = v107;
    }

    if ((v79 & 0x400) == 0)
    {
      if ((v79 & 0x800) == 0)
      {
        goto LABEL_361;
      }

LABEL_381:
      v117 = *(a1 + 264);
      if (v117)
      {
        v118 = sub_245A6F014(v117, a2);
        if (v118 < 0x80)
        {
          goto LABEL_383;
        }
      }

      else
      {
        v118 = sub_245A6F014(*(qword_28144B8C0 + 264), a2);
        if (v118 < 0x80)
        {
LABEL_383:
          v5 = (v5 + v118 + 3);
          v79 = *(a1 + 304);
          if ((v79 & 0x1000) != 0)
          {
            goto LABEL_387;
          }

LABEL_362:
          if ((v79 & 0x2000) == 0)
          {
            goto LABEL_363;
          }

LABEL_393:
          v121 = *(a1 + 280);
          if (!v121)
          {
            v121 = *(qword_28144B8C0 + 280);
          }

          v122 = *(v121 + 48);
          v123 = (v122 << 31 >> 31) & 9 | v122 & 2;
          if ((v122 & 4) != 0)
          {
            v123 += 9;
          }

          if ((v122 & 8) != 0)
          {
            v123 += 9;
          }

          if (*(v121 + 48))
          {
            v124 = v123;
          }

          else
          {
            v124 = 0;
          }

          v125 = *(v121 + 8);
          if (!v125 || *v125 == v125[1])
          {
            *(v121 + 44) = v124;
            v5 = (v5 + v124 + 1 + 2);
            if ((*(a1 + 304) & 0x4000) == 0)
            {
              goto LABEL_364;
            }
          }

          else
          {
            v126 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v121 + 8), a2) + v124);
            *(v121 + 44) = v126;
            if (v126 >= 0x80)
            {
              v5 = v5 + v126 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126) + 2;
              if ((*(a1 + 304) & 0x4000) == 0)
              {
                goto LABEL_364;
              }
            }

            else
            {
              v5 = (v5 + v126 + 1 + 2);
              if ((*(a1 + 304) & 0x4000) == 0)
              {
                goto LABEL_364;
              }
            }
          }

LABEL_410:
          v127 = *(a1 + 288);
          if (v127)
          {
            v128 = v127[14];
            if (v128)
            {
              goto LABEL_412;
            }
          }

          else
          {
            v127 = *(qword_28144B8C0 + 288);
            v128 = v127[14];
            if (v128)
            {
LABEL_412:
              v129 = ((v128 << 31) >> 31) & 9 | v128 & 2;
              if ((v128 & 4) != 0)
              {
                v129 += 9;
              }

              if ((v128 & 8) != 0)
              {
                v129 += 9;
              }

              if ((v128 & 0x10) != 0)
              {
                v129 += 9;
              }

              LODWORD(v130) = v129 + ((v128 >> 4) & 2);
              v131 = (v127 + 2);
              v132 = *(v127 + 1);
              if (!v132)
              {
                goto LABEL_425;
              }

LABEL_422:
              if (*v132 != v132[1])
              {
                v130 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v131, a2) + v130);
                v127[13] = v130;
                if (v130 >= 0x80)
                {
                  v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130);
                }

                else
                {
                  v133 = 1;
                }

LABEL_427:
                v5 = (v5 + v130 + v133 + 2);
                v108 = (a1 + 8);
                v109 = *(a1 + 8);
                if (!v109)
                {
                  goto LABEL_365;
                }

                goto LABEL_428;
              }

LABEL_425:
              v127[13] = v130;
              v133 = 1;
              goto LABEL_427;
            }
          }

          LODWORD(v130) = 0;
          v131 = (v127 + 2);
          v132 = *(v127 + 1);
          if (!v132)
          {
            goto LABEL_425;
          }

          goto LABEL_422;
        }
      }

      v5 = v5 + v118 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
      v79 = *(a1 + 304);
      if ((v79 & 0x1000) != 0)
      {
        goto LABEL_387;
      }

      goto LABEL_362;
    }

    v111 = *(a1 + 256);
    if (!v111)
    {
      v111 = *(qword_28144B8C0 + 256);
    }

    v112 = *(v111 + 36);
    v113 = (v112 << 31 >> 31) & 9;
    if ((v112 & 2) != 0)
    {
      v113 += 9;
    }

    if (*(v111 + 36))
    {
      v114 = v113;
    }

    else
    {
      v114 = 0;
    }

    v115 = *(v111 + 8);
    if (!v115 || *v115 == v115[1])
    {
      *(v111 + 32) = v114;
      v5 = (v5 + v114 + 1 + 2);
      v79 = *(a1 + 304);
      if ((v79 & 0x800) != 0)
      {
        goto LABEL_381;
      }
    }

    else
    {
      v116 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v111 + 8), a2) + v114);
      *(v111 + 32) = v116;
      if (v116 >= 0x80)
      {
        v5 = v5 + v116 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116) + 2;
        v79 = *(a1 + 304);
        if ((v79 & 0x800) != 0)
        {
          goto LABEL_381;
        }
      }

      else
      {
        v5 = (v5 + v116 + 1 + 2);
        v79 = *(a1 + 304);
        if ((v79 & 0x800) != 0)
        {
          goto LABEL_381;
        }
      }
    }

LABEL_361:
    if ((v79 & 0x1000) == 0)
    {
      goto LABEL_362;
    }

LABEL_387:
    v119 = *(a1 + 272);
    if (v119)
    {
      v120 = sub_245A70B70(v119, a2);
      if (v120 < 0x80)
      {
        goto LABEL_389;
      }
    }

    else
    {
      v120 = sub_245A70B70(*(qword_28144B8C0 + 272), a2);
      if (v120 < 0x80)
      {
LABEL_389:
        v5 = (v5 + v120 + 3);
        v79 = *(a1 + 304);
        if ((v79 & 0x2000) != 0)
        {
          goto LABEL_393;
        }

LABEL_363:
        if ((v79 & 0x4000) == 0)
        {
          goto LABEL_364;
        }

        goto LABEL_410;
      }
    }

    v5 = v5 + v120 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
    v79 = *(a1 + 304);
    if ((v79 & 0x2000) != 0)
    {
      goto LABEL_393;
    }

    goto LABEL_363;
  }

LABEL_319:
  v95 = *(a1 + 232);
  if (v95)
  {
    v96 = v95[11];
    if (v96)
    {
      goto LABEL_321;
    }

LABEL_335:
    if ((v96 & 0x100) != 0)
    {
      LODWORD(v99) = 5;
    }

    else
    {
      LODWORD(v99) = 0;
    }

    v100 = (v95 + 2);
    v101 = *(v95 + 1);
    if (!v101)
    {
      goto LABEL_342;
    }

    goto LABEL_339;
  }

  v95 = *(qword_28144B8C0 + 232);
  v96 = v95[11];
  if (!v96)
  {
    goto LABEL_335;
  }

LABEL_321:
  v97 = 2 * (v96 & 1) + (v96 & 2);
  if ((v96 & 4) != 0)
  {
    v97 += 5;
  }

  if ((v96 & 8) != 0)
  {
    v97 += 5;
  }

  if ((v96 & 0x10) != 0)
  {
    v97 += 5;
  }

  v98 = ((v96 >> 5) & 2) + ((v96 >> 4) & 2) + v97;
  if ((v96 & 0x80) != 0)
  {
    v98 += 5;
  }

  if ((v96 & 0x100) != 0)
  {
    LODWORD(v99) = v98 + 5;
  }

  else
  {
    LODWORD(v99) = v98;
  }

  v100 = (v95 + 2);
  v101 = *(v95 + 1);
  if (!v101)
  {
    goto LABEL_342;
  }

LABEL_339:
  if (*v101 != v101[1])
  {
    v99 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v100, a2) + v99);
    v95[10] = v99;
    if (v99 >= 0x80)
    {
      v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99);
    }

    else
    {
      v102 = 1;
    }

    goto LABEL_344;
  }

LABEL_342:
  v95[10] = v99;
  v102 = 1;
LABEL_344:
  v103 = v80 + v102 + v99 + 2;
  v79 = *(a1 + 304);
  if ((v79 & 0x40) != 0)
  {
    v5 = v103 + 6;
  }

  else
  {
    v5 = v103;
  }

  if ((v79 & 0x80) != 0)
  {
    goto LABEL_348;
  }

LABEL_274:
  if ((v79 & 0xFF00) != 0)
  {
    goto LABEL_354;
  }

LABEL_364:
  v108 = (a1 + 8);
  v109 = *(a1 + 8);
  if (!v109)
  {
LABEL_365:
    *(a1 + 296) = v5;
    return v5;
  }

LABEL_428:
  if (*v109 == v109[1])
  {
    goto LABEL_365;
  }

  v134 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v108, a2) + v5;
  *(a1 + 296) = v134;
  return v134;
}

uint64_t sub_245A5B024(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F7F8, 0);
  if (v5)
  {
    return sub_245A36BD0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A5B104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5B118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A5B12C(uint64_t a1, uint64_t a2)
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

      goto LABEL_13;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 56) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 40);
    *(a1 + 56) |= 8u;
    *(a1 + 40) = v10;
    if ((*(a2 + 56) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_13:
  v9 = *(a2 + 32);
  *(a1 + 56) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 48);
    *(a1 + 56) |= 0x10u;
    *(a1 + 48) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}