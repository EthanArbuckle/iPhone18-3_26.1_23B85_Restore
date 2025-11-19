uint64_t sub_245A458B0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589D8A0, 0);
  if (v5)
  {
    return sub_245A42354(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A45990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A459A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A459B8(uint64_t result, uint64_t a2)
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

uint64_t sub_245A45A44(uint64_t a1)
{
  if ((~*(a1 + 200) & 0x7D) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    result = (*(*v2 + 40))(v2);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = (*(**(qword_28144B930 + 32) + 40))(*(qword_28144B930 + 32));
    if (!result)
    {
      return result;
    }
  }

  v4 = *(a1 + 200);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = *(qword_28144B930 + 40);
    }

    result = (*(*v5 + 40))(v5);
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 200);
  }

  if ((v4 & 0x20) != 0)
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      v6 = *(qword_28144B930 + 48);
    }

    result = (*(*v6 + 40))(v6);
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 200);
  }

  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x80) == 0)
    {
      return 1;
    }

    v8 = *(a1 + 72);
    if (!v8)
    {
      v8 = *(qword_28144B930 + 72);
    }

    result = (*(*v8 + 40))(v8);
    if (result)
    {
      return 1;
    }

    return result;
  }

  v7 = *(a1 + 64);
  if (!v7)
  {
    v7 = *(qword_28144B930 + 64);
  }

  result = (*(*v7 + 40))(v7);
  if (result)
  {
    v4 = *(a1 + 200);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_245A45C08()
{
  v0 = qword_28144B3B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A3EFD8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B370;
}

void sub_245A45C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A45CAC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 40);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 40);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_28144B910 + 16);
    }

    sub_245A49444(v5, v6);
    v4 = *(a2 + 40);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 40) |= 2u;
    v8 = *(a1 + 24);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 40);
  }

  if ((v4 & 4) != 0)
  {
    v9 = *(a2 + 32);
    *(a1 + 40) |= 4u;
    *(a1 + 32) = v9;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A45E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A45E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A45E60(void *a1)
{
  *a1 = &unk_28589D7B8;
  v2 = a1[3];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D78870](v2, 0x1012C40EC159624);
  }

  if (qword_28144B910 != a1)
  {
    v4 = a1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A45F34(void *a1)
{
  *a1 = &unk_28589D7B8;
  v2 = a1[3];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D78870](v2, 0x1012C40EC159624);
  }

  if (qword_28144B910 != a1)
  {
    v4 = a1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A460C4(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 40);
  if (v2)
  {
    if ((*(a1 + 40) & 1) != 0 && *(a1 + 16))
    {
      v3 = a1;
      sub_245A49804(*(a1 + 16));
      a1 = v3;
      v2 = *(v3 + 40);
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 24);
      if (v4 != MEMORY[0x277D82C30])
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(a1 + 32) = 1;
    v1 = vars8;
  }

  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A46168(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x277D82C30];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v7 = *(this + 1);
            if (v7 >= *(this + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
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
              *(this + 1) = v7 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v9 = TagFallback >> 3;
            v10 = TagFallback & 7;
            if (TagFallback >> 3 != 3)
            {
              break;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v16 = *(this + 1);
            v17 = *(this + 2);
            v27 = 0;
            if (v16 >= v17)
            {
              goto LABEL_33;
            }

LABEL_29:
            v18 = *v16;
            if ((v18 & 0x80000000) != 0)
            {
              goto LABEL_33;
            }

            *(this + 1) = v16 + 1;
            if (v18 - 1 > 1)
            {
              goto LABEL_35;
            }

LABEL_31:
            *(a1 + 40) |= 4u;
            *(a1 + 32) = v18;
            if (*(this + 1) == *(this + 2))
            {
              goto LABEL_36;
            }
          }

          if (v9 == 2)
          {
            break;
          }

          if (v9 != 1 || v10 != 2)
          {
            goto LABEL_25;
          }

          *(a1 + 40) |= 1u;
          v11 = *(a1 + 16);
          if (!v11)
          {
            operator new();
          }

          v28 = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
            {
              return 0;
            }
          }

          else
          {
            v28 = *v12;
            *(this + 1) = v12 + 1;
          }

          v19 = *(this + 14);
          v20 = *(this + 15);
          *(this + 14) = v19 + 1;
          if (v19 >= v20)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_245A498C0(v11, this, v21, v22) || *(this + 36) != 1)
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
          if (v26 < *(this + 2) && *v26 == 18)
          {
            *(this + 1) = v26 + 1;
            *(a1 + 40) |= 2u;
            if (*(a1 + 24) == v6)
            {
LABEL_18:
              operator new();
            }

            goto LABEL_19;
          }
        }

        if (v10 == 2)
        {
          break;
        }

LABEL_25:
        if (v10 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      *(a1 + 40) |= 2u;
      if (*(a1 + 24) == v6)
      {
        goto LABEL_18;
      }

LABEL_19:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v15 = *(this + 1);
      v14 = *(this + 2);
      if (v15 < v14 && *v15 == 24)
      {
        v16 = v15 + 1;
        *(this + 1) = v16;
        v27 = 0;
        if (v16 < v14)
        {
          goto LABEL_29;
        }

LABEL_33:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
        if (!result)
        {
          return result;
        }

        v18 = v27;
        if (v27 - 1 <= 1)
        {
          goto LABEL_31;
        }

LABEL_35:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
        if (*(this + 1) == *(this + 2))
        {
          break;
        }
      }
    }

LABEL_36:
    ;
  }

  while (!*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_245A464A4(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    if (*(result + 16))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 40);
      if ((v6 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *(qword_28144B910 + 16);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 40);
      if ((v6 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  v11 = *(v5 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 40) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v12 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_12:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A46584(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v10 = *(this + 2);
    if (v10)
    {
      *a2 = 10;
      v11 = a2 + 1;
      v12 = v10[8];
      if (v12 <= 0x7F)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = *(qword_28144B910 + 16);
      *a2 = 10;
      v11 = a2 + 1;
      v12 = v10[8];
      if (v12 <= 0x7F)
      {
LABEL_8:
        *(v4 + 1) = v12;
        v4 = sub_245A49CEC(v10, (v4 + 2), a3);
        v6 = *(this + 10);
        if ((v6 & 2) != 0)
        {
          goto LABEL_12;
        }

LABEL_3:
        if ((v6 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
    v4 = sub_245A49CEC(v10, v13, v14);
    v6 = *(this + 10);
    if ((v6 & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v15 = *(this + 3);
  *v4 = 18;
  v16 = *(v15 + 23);
  if ((v16 & 0x8000000000000000) != 0)
  {
    v16 = *(v15 + 8);
    if (v16 <= 0x7F)
    {
      goto LABEL_14;
    }
  }

  else if (v16 <= 0x7F)
  {
LABEL_14:
    *(v4 + 1) = v16;
    v17 = v4 + 2;
    goto LABEL_17;
  }

  v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
LABEL_17:
  v18 = *(v15 + 23);
  if (v18 >= 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = *v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v15 + 23);
  }

  else
  {
    v20 = *(v15 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v19, v20, v17, a4);
  if ((*(this + 10) & 4) == 0)
  {
LABEL_4:
    v9 = *(this + 1);
    v8 = (this + 8);
    v7 = v9;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_31;
  }

LABEL_24:
  v21 = *(this + 8);
  *v4 = 24;
  v22 = v4 + 1;
  if ((v21 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v21, v22, a3);
    v24 = *(this + 1);
    v8 = (this + 8);
    v7 = v24;
    if (!v24)
    {
      return v4;
    }
  }

  else if (v21 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v22, a3);
    v25 = *(this + 1);
    v8 = (this + 8);
    v7 = v25;
    if (!v25)
    {
      return v4;
    }
  }

  else
  {
    *(v4 + 1) = v21;
    v4 = (v4 + 2);
    v23 = *(this + 1);
    v8 = (this + 8);
    v7 = v23;
    if (!v23)
    {
      return v4;
    }
  }

LABEL_31:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_245A46738(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_245A49E60(v7, a2);
    if (v8 < 0x80)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = sub_245A49E60(*(qword_28144B910 + 16), a2);
    if (v8 < 0x80)
    {
LABEL_9:
      v4 = (v8 + 2);
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }
  }

  v4 = v8 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
  v3 = *(a1 + 40);
  if ((v3 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v9 = *(a1 + 24);
  v10 = *(v9 + 23);
  v11 = v10;
  v12 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    v10 = *(v9 + 23);
    v12 = *(v9 + 8);
    v3 = *(a1 + 40);
    v11 = *(v9 + 23);
  }

  else
  {
    v14 = 1;
  }

  if (v11 < 0)
  {
    v10 = v12;
  }

  v4 = (v4 + v14 + v10 + 1);
LABEL_22:
  if ((v3 & 4) != 0)
  {
    v16 = *(a1 + 32);
    if ((v16 & 0x80000000) != 0)
    {
      v4 = (v4 + 11);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else if (v16 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1 + v4;
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4 = (v4 + 2);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
LABEL_24:
      *(a1 + 36) = v4;
      return v4;
    }
  }

LABEL_32:
  if (*v6 == v6[1])
  {
    goto LABEL_24;
  }

  v17 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 36) = v17;
  return v17;
}

uint64_t sub_245A468E0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589D8B8, 0);
  if (v5)
  {
    return sub_245A45CAC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A469C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A469D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A469E8(uint64_t result, uint64_t a2)
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

uint64_t sub_245A46A74(uint64_t a1)
{
  if ((~*(a1 + 40) & 3) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return (*(**(qword_28144B910 + 16) + 40))();
  }
}

uint64_t sub_245A46AE8()
{
  v0 = qword_28144B3B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A3EFD8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B380;
}

void sub_245A46B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A46BB8()
{
  v0 = sub_245A46EDC();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_245A46E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A46E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A46E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A46EDC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_28144B7A0 & 1) == 0)
  {
    byte_28144B7A0 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/coordinates.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1Eprotobuf/gen/coordinates.proto\x12\x11proto.coordinates\n\x06LatLon\x12\v\n\x03lat\x18\x01 \x02(\x01\x12\v\n\x03lon\x18\x02 \x02(\x01#\n\vUniversal2d\x12\t\n\x01x\x18\x01 \x02(\x01\x12\t\n\x01y\x18\x02 \x02(\x01\x84\x02\n\x1EHomogeneousOrthonormalMatrix2d\x12P\n(universalLocationOfCoordinateFrameOrigin\x18\x01 \x02(\v2\x1E.proto.coordinates.Universal2d\x122\n*universalLengthOfCoordinateFrameUnitVector\x18\x02 \x02(\x01\x12)\n!localCoordinateFrameIsRightHanded\x18\x03 \x02(\b\x121\n&universalOrientationOfCoordinateFrameX\x18\x04 \x02(\x01:\x010~\n\x1ABoundedCellCoordinateFrame\x12\f\n\x04rows\x18\x01 \x02(\r\x12\f\n\x04cols\x18\x02 \x02(\r\x12D\n\ttransform\x18\x03 \x02(\v21.proto.coordinates.HomogeneousOrthonormalMatrix2dB'\n%com.apple.indoor.proto.javacommon.api", 0x22C);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

void sub_245A47110(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = MEMORY[0x245D78470](v1);
  MEMORY[0x245D78870](v5, v3);
  _Unwind_Resume(a1);
}

void sub_245A47130(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A47154()
{
  if (qword_28144B980)
  {
    (*(*qword_28144B980 + 8))(qword_28144B980);
  }

  if (qword_28144B3C8)
  {
    (*(*qword_28144B3C8 + 8))(qword_28144B3C8);
  }

  if (qword_28144B998)
  {
    (*(*qword_28144B998 + 8))(qword_28144B998);
  }

  if (qword_28144B3D8)
  {
    (*(*qword_28144B3D8 + 8))(qword_28144B3D8);
  }

  if (qword_28144B988)
  {
    (*(*qword_28144B988 + 8))(qword_28144B988);
  }

  if (qword_28144B3E8)
  {
    (*(*qword_28144B3E8 + 8))(qword_28144B3E8);
  }

  if (qword_28144B990)
  {
    (*(*qword_28144B990 + 8))(qword_28144B990);
  }

  result = qword_28144B3F8;
  if (qword_28144B3F8)
  {
    v1 = *(*qword_28144B3F8 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_245A472FC()
{
  v0 = qword_28144B400;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v5[0] = MEMORY[0x277D82C40] + 16;
    v5[1] = sub_245A46BB8;
    v6 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v5);
  }

  if (!qword_28144B980)
  {
    (sub_245A46EDC)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B998)
  {
    sub_245A46EDC(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B988)
  {
    sub_245A46EDC(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B990)
  {
    sub_245A46EDC(v3);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_245A47428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_245A4743C(void *a1)
{
  *a1 = &unk_28589D8E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

void *sub_245A4749C(void *a1)
{
  *a1 = &unk_28589DAF0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_245A474FC(uint64_t a1, uint64_t a2)
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

void sub_245A475BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A475D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A475E4(void *a1)
{
  *a1 = &unk_28589D8E0;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A47638(void *a1)
{
  *a1 = &unk_28589D8E0;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A476A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_28144B980;
  if (!qword_28144B980)
  {
    sub_245A46EDC(0, a2, a3, a4);
    return qword_28144B980;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A47770(uint64_t a1)
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

uint64_t sub_245A47790(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        break;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v11;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
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

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A47908(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    if ((*(v4 + 36) & 2) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
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

uint64_t sub_245A479A4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
    v9 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((*(a1 + 36) & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
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

uint64_t sub_245A47A7C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 36))
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

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_245A47AE4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589DB90, 0);
  if (v5)
  {
    return sub_245A474FC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A47BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A47BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A47BEC(uint64_t result, uint64_t a2)
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

uint64_t sub_245A47C8C()
{
  v0 = qword_28144B400;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A46BB8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B3C0;
}

void sub_245A47D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A47D30(uint64_t a1, uint64_t a2)
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

void sub_245A47DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A47E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A47E18(void *a1)
{
  *a1 = &unk_28589D990;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A47E6C(void *a1)
{
  *a1 = &unk_28589D990;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A47F68(uint64_t a1)
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

uint64_t sub_245A47F88(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        break;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v11;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
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

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A48100(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    if ((*(v4 + 36) & 2) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
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

uint64_t sub_245A4819C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
    v9 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((*(a1 + 36) & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
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

uint64_t sub_245A48274(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 36))
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

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_245A482DC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589DBA8, 0);
  if (v5)
  {
    return sub_245A47D30(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A483BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A483D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A483E4(uint64_t result, uint64_t a2)
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

uint64_t sub_245A48484()
{
  v0 = qword_28144B400;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A46BB8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B3D0;
}

void sub_245A48514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A48528(uint64_t a1, uint64_t a2)
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
    *(a1 + 48) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_28144B988 + 16);
    }

    sub_245A47D30(v5, v6);
    v4 = *(a2 + 48);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = *(a2 + 40);
    *(a1 + 48) |= 4u;
    *(a1 + 40) = v10;
    if ((*(a2 + 48) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_13;
  }

  v9 = *(a2 + 24);
  *(a1 + 48) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v4 & 8) != 0)
  {
LABEL_13:
    v7 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A486F0(void *a1)
{
  *a1 = &unk_28589DA40;
  if (qword_28144B988 != a1)
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

void sub_245A48784(void *a1)
{
  *a1 = &unk_28589DA40;
  if (qword_28144B988 != a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A488C8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 48))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 7) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
          v1 = vars8;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A48948(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            v13 = *(this + 1);
            v12 = *(this + 2);
            v26[0] = 0;
            if (v13 >= v12)
            {
              goto LABEL_43;
            }

            goto LABEL_41;
          }
        }

        else if (v8 == 4 && v9 == 1)
        {
          *v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_48;
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

      if (v8 == 1)
      {
        break;
      }

      if (v8 != 2 || v9 != 1)
      {
        goto LABEL_24;
      }

      *v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      *(a1 + 24) = *v26;
      *(a1 + 48) |= 2u;
      v22 = *(this + 1);
      v12 = *(this + 2);
      if (v22 < v12 && *v22 == 24)
      {
        v13 = v22 + 1;
        *(this + 1) = v13;
        v26[0] = 0;
        if (v13 >= v12)
        {
          goto LABEL_43;
        }

LABEL_41:
        v23 = *v13;
        if ((v23 & 0x80000000) != 0)
        {
LABEL_43:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
          if (!result)
          {
            return result;
          }

          v23 = v26[0];
          v24 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_45;
        }

        v24 = v13 + 1;
        *(this + 1) = v24;
LABEL_45:
        *(a1 + 40) = v23 != 0;
        *(a1 + 48) |= 4u;
        if (v24 < v12 && *v24 == 33)
        {
          *(this + 1) = v24 + 1;
          *v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

LABEL_48:
          *(a1 + 32) = *v26;
          *(a1 + 48) |= 8u;
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

    if (v9 != 2)
    {
      goto LABEL_24;
    }

    *(a1 + 48) |= 1u;
    v10 = *(a1 + 16);
    if (!v10)
    {
      operator new();
    }

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

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_245A47F88(v10, this, v16, v17) || *(this + 36) != 1)
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
    if (v21 < *(this + 2) && *v21 == 17)
    {
      *(this + 1) = v21 + 1;
      *v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_38;
    }
  }
}

uint64_t sub_245A48CE0(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    if (*(result + 16))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 48);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = *(qword_28144B988 + 16);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v6 = *(v5 + 48);
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
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 40), a2, a4);
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

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
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

uint64_t sub_245A48DDC(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    goto LABEL_15;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *a2 = 10;
    v4 = (a2 + 1);
    v5 = *(v3 + 32);
    if (v5 <= 0x7F)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = *(qword_28144B988 + 16);
    *a2 = 10;
    v4 = (a2 + 1);
    v5 = *(v3 + 32);
    if (v5 <= 0x7F)
    {
LABEL_4:
      a2[1] = v5;
      a2 += 2;
      v6 = *(v3 + 36);
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v7 = a1;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v4, a3);
  a1 = v7;
  v6 = *(v3 + 36);
  if (v6)
  {
LABEL_8:
    v8 = *(v3 + 16);
    *a2 = 9;
    *(a2 + 1) = v8;
    a2 += 9;
    v6 = *(v3 + 36);
  }

LABEL_9:
  if ((v6 & 2) != 0)
  {
    v12 = *(v3 + 24);
    *a2 = 17;
    *(a2 + 1) = v12;
    a2 += 9;
    v13 = *(v3 + 8);
    v10 = (v3 + 8);
    v9 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = *(v3 + 8);
    v10 = (v3 + 8);
    v9 = v11;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  if (*v9 != v9[1])
  {
    v14 = a1;
    a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
    a1 = v14;
  }

LABEL_15:
  v15 = *(a1 + 48);
  if ((v15 & 2) != 0)
  {
    v19 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v19;
    a2 += 9;
    v15 = *(a1 + 48);
    if ((v15 & 4) == 0)
    {
LABEL_17:
      if ((v15 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v15 & 4) == 0)
  {
    goto LABEL_17;
  }

  v20 = *(a1 + 40);
  *a2 = 24;
  a2[1] = v20;
  a2 += 2;
  if ((*(a1 + 48) & 8) == 0)
  {
LABEL_18:
    v18 = *(a1 + 8);
    v16 = (a1 + 8);
    v17 = v18;
    if (!v18)
    {
      return a2;
    }

    goto LABEL_23;
  }

LABEL_22:
  v21 = *(a1 + 32);
  *a2 = 33;
  *(a2 + 1) = v21;
  a2 += 9;
  v22 = *(a1 + 8);
  v16 = (a1 + 8);
  v17 = v22;
  if (!v22)
  {
    return a2;
  }

LABEL_23:
  if (*v17 == v17[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, a2, a3);
}

uint64_t sub_245A49058(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    if (v3)
    {
      v9 = *(a1 + 16);
      if (!v9)
      {
        v9 = *(qword_28144B988 + 16);
      }

      v10 = *(v9 + 36);
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if (*(v9 + 36))
      {
        LODWORD(v12) = v11;
      }

      else
      {
        LODWORD(v12) = 0;
      }

      v13 = *(v9 + 8);
      if (!v13 || *v13 == v13[1])
      {
        *(v9 + 32) = v12;
        v14 = 1;
      }

      else
      {
        v12 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v9 + 8), a2) + v12);
        *(v9 + 32) = v12;
        if (v12 >= 0x80)
        {
          v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
        }

        else
        {
          v14 = 1;
        }
      }

      v4 = v12 + v14 + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v15 = v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v5 = v15 + 9;
    }

    else
    {
      v5 = v15;
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
      *(a1 + 44) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 44) = v16;
  return v16;
}

uint64_t sub_245A49198(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589DBC0, 0);
  if (v5)
  {
    return sub_245A48528(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A49278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4928C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A492A0(uint64_t result, uint64_t a2)
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

uint64_t sub_245A4932C(uint64_t a1)
{
  if ((~*(a1 + 48) & 0xF) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return (*(**(qword_28144B988 + 16) + 40))();
  }
}

uint64_t sub_245A493A0()
{
  v0 = qword_28144B400;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A46BB8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B3E0;
}

void sub_245A49430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A49444(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v6 = *(a2 + 20);
    *(a1 + 36) |= 2u;
    *(a1 + 20) = v6;
    if ((*(a2 + 36) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_11;
  }

  v5 = *(a2 + 16);
  *(a1 + 36) |= 1u;
  *(a1 + 16) = v5;
  v4 = *(a2 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v4 & 4) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_11:
  *(a1 + 36) |= 4u;
  v7 = *(a1 + 24);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    v8 = *(qword_28144B990 + 24);
  }

  sub_245A48528(v7, v8);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A495F8(void *a1)
{
  *a1 = &unk_28589DAF0;
  if (qword_28144B990 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A4968C(void *a1)
{
  *a1 = &unk_28589DAF0;
  if (qword_28144B990 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A4973C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_28144B990;
  if (!qword_28144B990)
  {
    sub_245A46EDC(0, a2, a3, a4);
    return qword_28144B990;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A49804(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (v1)
  {
    *(a1 + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        if (*(v2 + 48))
        {
          if (*(v2 + 48))
          {
            v3 = *(v2 + 16);
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

          *(v2 + 24) = 0;
          *(v2 + 32) = 0;
          *(v2 + 40) = 0;
        }

        v8 = *(v2 + 8);
        v7 = (v2 + 8);
        *(v7 + 10) = 0;
        if (v8)
        {
          v9 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
          a1 = v9;
        }
      }
    }
  }

  v11 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A498C0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    do
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

            if (v9 == 2)
            {
              *(a1 + 36) |= 4u;
              v15 = *(a1 + 24);
              if (!v15)
              {
                goto LABEL_34;
              }

              goto LABEL_35;
            }

LABEL_18:
            if (v9 == 4)
            {
              return 1;
            }

            if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
            {
              return 0;
            }
          }

          if (v8 == 2)
          {
            break;
          }

          if (v8 != 1 || (TagFallback & 7) != 0)
          {
            goto LABEL_18;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v13 = *(this + 1);
            v10 = *(this + 2);
            *(a1 + 36) |= 1u;
            if (v13 < v10)
            {
              goto LABEL_25;
            }
          }

          else
          {
            *(a1 + 16) = v12;
            v13 = v11 + 1;
            *(this + 1) = v13;
            *(a1 + 36) |= 1u;
            if (v13 < v10)
            {
LABEL_25:
              if (*v13 == 16)
              {
                v14 = v13 + 1;
                *(this + 1) = v14;
                if (v14 >= v10)
                {
                  goto LABEL_30;
                }

LABEL_27:
                v17 = *v14;
                if (v17 < 0)
                {
                  goto LABEL_30;
                }

                *(a1 + 20) = v17;
                v18 = v14 + 1;
                *(this + 1) = v18;
                v19 = *(a1 + 36) | 2;
                *(a1 + 36) = v19;
                if (v18 < v10)
                {
                  goto LABEL_32;
                }
              }
            }
          }
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        if (v14 < v10)
        {
          goto LABEL_27;
        }

LABEL_30:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        v20 = *(this + 2);
        v19 = *(a1 + 36) | 2;
        *(a1 + 36) = v19;
      }

      while (v18 >= v20);
LABEL_32:
      ;
    }

    while (*v18 != 26);
    *(this + 1) = v18 + 1;
    *(a1 + 36) = v19 | 4;
    v15 = *(a1 + 24);
    if (!v15)
    {
LABEL_34:
      operator new();
    }

LABEL_35:
    v29 = 0;
    v21 = *(this + 1);
    if (v21 >= *(this + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
      {
        return 0;
      }
    }

    else
    {
      v29 = *v21;
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
    if (!sub_245A48948(v15, this, v24, v25) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_245A49C0C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  if ((*(v5 + 36) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_8:
  if (*(v5 + 24))
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
    v11 = *(qword_28144B990 + 24);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v12 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_12:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A49CEC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if ((*(this + 36) & 1) == 0)
  {
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(this + 5);
    *v3 = 16;
    if (v10 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v3 + 1) = v10;
      v3 = (v3 + 2);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_4:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return v3;
    }

    goto LABEL_20;
  }

  v8 = *(this + 4);
  *a2 = 8;
  v9 = a2 + 1;
  if (v8 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(v3 + 1) = v8;
    v3 = (v3 + 2);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_3:
  if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v11 = *(this + 3);
  if (v11)
  {
    *v3 = 26;
    v12 = v3 + 1;
    v13 = *(v11 + 44);
    if (v13 <= 0x7F)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = *(qword_28144B990 + 24);
    *v3 = 26;
    v12 = v3 + 1;
    v13 = *(v11 + 44);
    if (v13 <= 0x7F)
    {
LABEL_16:
      *(v3 + 1) = v13;
      v3 = sub_245A48DDC(v11, v3 + 2, a3);
      v14 = *(this + 1);
      v6 = (this + 8);
      v5 = v14;
      if (!v14)
      {
        return v3;
      }

      goto LABEL_20;
    }
  }

  v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
  v3 = sub_245A48DDC(v11, v15, v16);
  v17 = *(this + 1);
  v6 = (this + 8);
  v5 = v17;
  if (!v17)
  {
    return v3;
  }

LABEL_20:
  if (*v5 == v5[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, v3, a3);
}

uint64_t sub_245A49E60(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (*(a1 + 36))
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = *(a1 + 20);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_15:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = sub_245A49058(v11, a2);
      if (v12 < 0x80)
      {
LABEL_20:
        v13 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v12 = sub_245A49058(*(qword_28144B990 + 24), a2);
      if (v12 < 0x80)
      {
        goto LABEL_20;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
LABEL_23:
    v4 = (v4 + v12 + v13 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_17:
    *(a1 + 32) = v4;
    return v4;
  }

LABEL_24:
  if (*v6 == v6[1])
  {
    goto LABEL_17;
  }

  v14 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 32) = v14;
  return v14;
}

uint64_t sub_245A49FA0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589DBD8, 0);
  if (v5)
  {
    return sub_245A49444(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A4A080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4A094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A4A0A8(uint64_t result, uint64_t a2)
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

uint64_t sub_245A4A134(uint64_t a1)
{
  if ((~*(a1 + 36) & 7) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return (*(**(qword_28144B990 + 24) + 40))();
  }
}

uint64_t sub_245A4A1A8()
{
  v0 = qword_28144B400;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A46BB8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B3F0;
}

void sub_245A4A238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A4A270(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_245A4A438(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_245A4A3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4A3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4A404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A4A438(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_28144B778 & 1) == 0)
  {
    byte_28144B778 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/locationd_parameters.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n'protobuf/gen/locationd_parameters.proto\x12\x0Fproto.locationd\xB2\x01\n MotionActivityDebounceParameters\x12\n\x1AnonFitnessToCyclingSeconds\x18\x01 \x01(\r\x12\n\x1AnonFitnessToRunningSeconds\x18\x02 \x01(\r\x12\n\x1ArunningToNonFitnessSeconds\x18\x03 \x01(\r\x12\n\x1AcyclingToNonFitnessSeconds\x18\x04 \x01(\rB\n com.apple.indoor.proto.locationd", 0x113);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_245A4A554()
{
  if (qword_28144B7D8)
  {
    (*(*qword_28144B7D8 + 8))(qword_28144B7D8);
  }

  result = qword_28144B418;
  if (qword_28144B418)
  {
    v1 = *(*qword_28144B418 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_245A4A5DC()
{
  v0 = qword_28144B420;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4A270;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  if (!qword_28144B7D8)
  {
    sub_245A4A438();
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_245A4A69C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_245A4A6B0(void *a1)
{
  *a1 = &unk_28589DC00;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_245A4A710(_DWORD *a1, uint64_t a2)
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

void sub_245A4A818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4A82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A4A840(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28589DC00;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_245A4A710(a1, a2);
  return a1;
}

void sub_245A4A8DC(void *a1)
{
  *a1 = &unk_28589DC00;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A4A930(void *a1)
{
  *a1 = &unk_28589DC00;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A4A9A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_28144B7D8;
  if (!qword_28144B7D8)
  {
    sub_245A4A438(0, a2, a3, a4);
    return qword_28144B7D8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A4AA68(uint64_t a1)
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

uint64_t sub_245A4AA88(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v8 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v12 = *(this + 1);
            v9 = *(this + 2);
            if (v12 >= v9 || (v13 = *v12, (v13 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v14 = *(this + 1);
              v9 = *(this + 2);
              a1[9] |= 1u;
              if (v14 < v9)
              {
                goto LABEL_30;
              }
            }

            else
            {
              a1[4] = v13;
              v14 = v12 + 1;
              *(this + 1) = v14;
              a1[9] |= 1u;
              if (v14 < v9)
              {
LABEL_30:
                if (*v14 == 16)
                {
                  v10 = v14 + 1;
                  *(this + 1) = v10;
                  if (v10 < v9)
                  {
                    goto LABEL_32;
                  }

LABEL_35:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v17 = *(this + 1);
                  v9 = *(this + 2);
                  a1[9] |= 2u;
                  if (v17 < v9)
                  {
                    goto LABEL_37;
                  }
                }
              }
            }
          }

          else
          {
            if (v8 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v10 = *(this + 1);
            v9 = *(this + 2);
            if (v10 >= v9)
            {
              goto LABEL_35;
            }

LABEL_32:
            v16 = *v10;
            if ((v16 & 0x80000000) != 0)
            {
              goto LABEL_35;
            }

            a1[5] = v16;
            v17 = v10 + 1;
            *(this + 1) = v17;
            a1[9] |= 2u;
            if (v17 < v9)
            {
LABEL_37:
              if (*v17 == 24)
              {
                v15 = v17 + 1;
                *(this + 1) = v15;
                if (v15 < v9)
                {
                  goto LABEL_39;
                }

LABEL_42:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
                if (!result)
                {
                  return result;
                }

                v19 = *(this + 1);
                v9 = *(this + 2);
                a1[9] |= 4u;
                if (v19 < v9)
                {
                  goto LABEL_44;
                }
              }
            }
          }
        }

        if (v8 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_23;
        }

        v15 = *(this + 1);
        v9 = *(this + 2);
        if (v15 >= v9)
        {
          goto LABEL_42;
        }

LABEL_39:
        v18 = *v15;
        if ((v18 & 0x80000000) != 0)
        {
          goto LABEL_42;
        }

        a1[6] = v18;
        v19 = v15 + 1;
        *(this + 1) = v19;
        a1[9] |= 4u;
        if (v19 < v9)
        {
LABEL_44:
          if (*v19 == 32)
          {
            v11 = v19 + 1;
            *(this + 1) = v11;
            if (v11 < v9)
            {
              goto LABEL_46;
            }

LABEL_49:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
            if (!result)
            {
              return result;
            }

            v23 = *(this + 1);
            v22 = *(this + 2);
            a1[9] |= 8u;
            if (v23 == v22)
            {
              goto LABEL_51;
            }
          }
        }
      }

      if (v8 != 4 || (TagFallback & 7) != 0)
      {
        break;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 >= v9)
      {
        goto LABEL_49;
      }

LABEL_46:
      v20 = *v11;
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_49;
      }

      a1[7] = v20;
      v21 = v11 + 1;
      *(this + 1) = v21;
      a1[9] |= 8u;
      if (v21 == v9)
      {
LABEL_51:
        if (*(this + 11) || *(this + 6) == *(this + 10))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

LABEL_23:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245A4AD68(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A4AE3C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if ((*(this + 36) & 1) == 0)
  {
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v11 = *(this + 5);
    *v3 = 16;
    if (v11 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(v3 + 1) = v11;
      v3 = (v3 + 2);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if ((*(this + 36) & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_22:
    v13 = *(this + 7);
    *v3 = 32;
    if (v13 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
      v15 = *(this + 1);
      v6 = (this + 8);
      v5 = v15;
      if (!v15)
      {
        return v3;
      }
    }

    else
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
      v14 = *(this + 1);
      v6 = (this + 8);
      v5 = v14;
      if (!v14)
      {
        return v3;
      }
    }

    goto LABEL_6;
  }

  v9 = *(this + 4);
  *a2 = 8;
  v10 = a2 + 1;
  if (v9 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v10, a3);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v3 + 1) = v9;
    v3 = (v3 + 2);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  v12 = *(this + 6);
  *v3 = 24;
  if (v12 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v3 + 1) = v12;
    v3 = (v3 + 2);
    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_5:
  v7 = *(this + 1);
  v6 = (this + 8);
  v5 = v7;
  if (!v7)
  {
    return v3;
  }

LABEL_6:
  if (*v5 == v5[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, v3, a3);
}

uint64_t sub_245A4AFAC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (*(a1 + 36))
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = *(a1 + 20);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_15:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v12 = *(a1 + 28);
    if (v12 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1 + v4;
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v4 = (v4 + 2);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_27;
  }

  v11 = *(a1 + 24);
  if (v11 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1 + v4;
    if ((*(a1 + 36) & 8) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_17:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_18:
    *(a1 + 32) = v4;
    return v4;
  }

LABEL_27:
  if (*v6 == v6[1])
  {
    goto LABEL_18;
  }

  v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 32) = v13;
  return v13;
}

uint64_t sub_245A4B0F4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589DCA0, 0);
  if (v5)
  {
    return sub_245A4A710(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A4B1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4B1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A4B1FC(uint64_t result, uint64_t a2)
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

uint64_t sub_245A4B288(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_245A4A710(v4, a2);
  }

  return result;
}

uint64_t sub_245A4B2FC()
{
  v0 = qword_28144B420;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A4A270;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B410;
}

void sub_245A4B38C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A4B3AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_245A4C71C(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_245A4C62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4C640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4C654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A4C71C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_28144B780 & 1) == 0)
  {
    byte_28144B780 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/parameters.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_245A995B8, 0x3104);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

void sub_245A4D7CC(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A4D924()
{
  if (qword_28144B810)
  {
    (*(*qword_28144B810 + 8))(qword_28144B810);
  }

  if (qword_28144B438)
  {
    (*(*qword_28144B438 + 8))(qword_28144B438);
  }

  if (qword_28144B838)
  {
    (*(*qword_28144B838 + 8))(qword_28144B838);
  }

  if (qword_28144B448)
  {
    (*(*qword_28144B448 + 8))(qword_28144B448);
  }

  if (qword_28144B8C8)
  {
    (*(*qword_28144B8C8 + 8))(qword_28144B8C8);
  }

  if (qword_28144B458)
  {
    (*(*qword_28144B458 + 8))(qword_28144B458);
  }

  if (qword_28144B8A8)
  {
    (*(*qword_28144B8A8 + 8))(qword_28144B8A8);
  }

  if (qword_28144B468)
  {
    (*(*qword_28144B468 + 8))(qword_28144B468);
  }

  if (qword_28144B860)
  {
    (*(*qword_28144B860 + 8))(qword_28144B860);
  }

  if (qword_28144B478)
  {
    (*(*qword_28144B478 + 8))(qword_28144B478);
  }

  if (qword_28144B7E8)
  {
    (*(*qword_28144B7E8 + 8))(qword_28144B7E8);
  }

  if (qword_28144B488)
  {
    (*(*qword_28144B488 + 8))(qword_28144B488);
  }

  if (qword_28144B8B8)
  {
    (*(*qword_28144B8B8 + 8))(qword_28144B8B8);
  }

  if (qword_28144B498)
  {
    (*(*qword_28144B498 + 8))(qword_28144B498);
  }

  if (qword_28144B908)
  {
    (*(*qword_28144B908 + 8))(qword_28144B908);
  }

  if (qword_28144B4A8)
  {
    (*(*qword_28144B4A8 + 8))(qword_28144B4A8);
  }

  if (qword_28144B8F8)
  {
    (*(*qword_28144B8F8 + 8))(qword_28144B8F8);
  }

  if (qword_28144B4B8)
  {
    (*(*qword_28144B4B8 + 8))(qword_28144B4B8);
  }

  if (qword_28144B8F0)
  {
    (*(*qword_28144B8F0 + 8))(qword_28144B8F0);
  }

  if (qword_28144B4D0)
  {
    (*(*qword_28144B4D0 + 8))(qword_28144B4D0);
  }

  if (qword_28144B8E0)
  {
    (*(*qword_28144B8E0 + 8))(qword_28144B8E0);
  }

  if (qword_28144B4E0)
  {
    (*(*qword_28144B4E0 + 8))(qword_28144B4E0);
  }

  if (qword_28144B878)
  {
    (*(*qword_28144B878 + 8))(qword_28144B878);
  }

  if (qword_28144B4F0)
  {
    (*(*qword_28144B4F0 + 8))(qword_28144B4F0);
  }

  if (qword_28144B8C0)
  {
    (*(*qword_28144B8C0 + 8))(qword_28144B8C0);
  }

  if (qword_28144B500)
  {
    (*(*qword_28144B500 + 8))(qword_28144B500);
  }

  if (qword_28144B868)
  {
    (*(*qword_28144B868 + 8))(qword_28144B868);
  }

  if (qword_28144B510)
  {
    (*(*qword_28144B510 + 8))(qword_28144B510);
  }

  if (qword_28144B7F8)
  {
    (*(*qword_28144B7F8 + 8))(qword_28144B7F8);
  }

  if (qword_28144B520)
  {
    (*(*qword_28144B520 + 8))(qword_28144B520);
  }

  if (qword_28144B7F0)
  {
    (*(*qword_28144B7F0 + 8))(qword_28144B7F0);
  }

  if (qword_28144B530)
  {
    (*(*qword_28144B530 + 8))(qword_28144B530);
  }

  if (qword_28144B890)
  {
    (*(*qword_28144B890 + 8))(qword_28144B890);
  }

  if (qword_28144B540)
  {
    (*(*qword_28144B540 + 8))(qword_28144B540);
  }

  if (qword_28144B8A0)
  {
    (*(*qword_28144B8A0 + 8))(qword_28144B8A0);
  }

  if (qword_28144B550)
  {
    (*(*qword_28144B550 + 8))(qword_28144B550);
  }

  if (qword_28144B880)
  {
    (*(*qword_28144B880 + 8))(qword_28144B880);
  }

  if (qword_28144B560)
  {
    (*(*qword_28144B560 + 8))(qword_28144B560);
  }

  if (qword_28144B870)
  {
    (*(*qword_28144B870 + 8))(qword_28144B870);
  }

  if (qword_28144B570)
  {
    (*(*qword_28144B570 + 8))(qword_28144B570);
  }

  if (qword_28144B888)
  {
    (*(*qword_28144B888 + 8))(qword_28144B888);
  }

  if (qword_28144B580)
  {
    (*(*qword_28144B580 + 8))(qword_28144B580);
  }

  if (qword_28144B828)
  {
    (*(*qword_28144B828 + 8))(qword_28144B828);
  }

  if (qword_28144B590)
  {
    (*(*qword_28144B590 + 8))(qword_28144B590);
  }

  if (qword_28144B808)
  {
    (*(*qword_28144B808 + 8))(qword_28144B808);
  }

  if (qword_28144B5A0)
  {
    (*(*qword_28144B5A0 + 8))(qword_28144B5A0);
  }

  if (qword_28144B818)
  {
    (*(*qword_28144B818 + 8))(qword_28144B818);
  }

  if (qword_28144B5B0)
  {
    (*(*qword_28144B5B0 + 8))(qword_28144B5B0);
  }

  if (qword_28144B820)
  {
    (*(*qword_28144B820 + 8))(qword_28144B820);
  }

  if (qword_28144B5C0)
  {
    (*(*qword_28144B5C0 + 8))(qword_28144B5C0);
  }

  if (qword_28144B898)
  {
    (*(*qword_28144B898 + 8))(qword_28144B898);
  }

  if (qword_28144B5D0)
  {
    (*(*qword_28144B5D0 + 8))(qword_28144B5D0);
  }

  if (qword_28144B858)
  {
    (*(*qword_28144B858 + 8))(qword_28144B858);
  }

  if (qword_28144B5E0)
  {
    (*(*qword_28144B5E0 + 8))(qword_28144B5E0);
  }

  if (qword_28144B8D8)
  {
    (*(*qword_28144B8D8 + 8))(qword_28144B8D8);
  }

  if (qword_28144B5F0)
  {
    (*(*qword_28144B5F0 + 8))(qword_28144B5F0);
  }

  if (qword_28144B850)
  {
    (*(*qword_28144B850 + 8))(qword_28144B850);
  }

  if (qword_28144B600)
  {
    (*(*qword_28144B600 + 8))(qword_28144B600);
  }

  if (qword_28144B830)
  {
    (*(*qword_28144B830 + 8))(qword_28144B830);
  }

  if (qword_28144B610)
  {
    (*(*qword_28144B610 + 8))(qword_28144B610);
  }

  if (qword_28144B8B0)
  {
    (*(*qword_28144B8B0 + 8))(qword_28144B8B0);
  }

  if (qword_28144B620)
  {
    (*(*qword_28144B620 + 8))(qword_28144B620);
  }

  if (qword_28144B840)
  {
    (*(*qword_28144B840 + 8))(qword_28144B840);
  }

  if (qword_28144B630)
  {
    (*(*qword_28144B630 + 8))(qword_28144B630);
  }

  if (qword_28144B848)
  {
    (*(*qword_28144B848 + 8))(qword_28144B848);
  }

  if (qword_28144B640)
  {
    (*(*qword_28144B640 + 8))(qword_28144B640);
  }

  if (qword_28144B800)
  {
    (*(*qword_28144B800 + 8))(qword_28144B800);
  }

  if (qword_28144B650)
  {
    (*(*qword_28144B650 + 8))(qword_28144B650);
  }

  if (qword_28144B7E0)
  {
    (*(*qword_28144B7E0 + 8))(qword_28144B7E0);
  }

  if (qword_28144B660)
  {
    (*(*qword_28144B660 + 8))(qword_28144B660);
  }

  if (qword_28144B8D0)
  {
    (*(*qword_28144B8D0 + 8))(qword_28144B8D0);
  }

  if (qword_28144B670)
  {
    (*(*qword_28144B670 + 8))(qword_28144B670);
  }

  if (qword_28144B900)
  {
    (*(*qword_28144B900 + 8))(qword_28144B900);
  }

  if (qword_28144B680)
  {
    (*(*qword_28144B680 + 8))(qword_28144B680);
  }

  if (qword_28144B8E8)
  {
    (*(*qword_28144B8E8 + 8))(qword_28144B8E8);
  }

  result = qword_28144B690;
  if (qword_28144B690)
  {
    v1 = *(*qword_28144B690 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_245A4E78C()
{
  v0 = qword_28144B6F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v39[0] = MEMORY[0x277D82C40] + 16;
    v39[1] = sub_245A4B3AC;
    v40 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v39);
  }

  if (!qword_28144B810)
  {
    (sub_245A4C71C)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B838)
  {
    sub_245A4C71C(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8C8)
  {
    sub_245A4C71C(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8A8)
  {
    sub_245A4C71C(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B860)
  {
    sub_245A4C71C(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B7E8)
  {
    sub_245A4C71C(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8B8)
  {
    sub_245A4C71C(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B908)
  {
    sub_245A4C71C(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8F8)
  {
    sub_245A4C71C(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8F0)
  {
    sub_245A4C71C(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8E0)
  {
    sub_245A4C71C(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B878)
  {
    sub_245A4C71C(v11);
  }

  v12 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8C0)
  {
    sub_245A4C71C(v12);
  }

  v13 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B868)
  {
    sub_245A4C71C(v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B7F8)
  {
    sub_245A4C71C(v14);
  }

  v15 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B7F0)
  {
    sub_245A4C71C(v15);
  }

  v16 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B890)
  {
    sub_245A4C71C(v16);
  }

  v17 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8A0)
  {
    sub_245A4C71C(v17);
  }

  v18 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B880)
  {
    sub_245A4C71C(v18);
  }

  v19 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B870)
  {
    sub_245A4C71C(v19);
  }

  v20 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B888)
  {
    sub_245A4C71C(v20);
  }

  v21 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B828)
  {
    sub_245A4C71C(v21);
  }

  v22 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B808)
  {
    sub_245A4C71C(v22);
  }

  v23 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B818)
  {
    sub_245A4C71C(v23);
  }

  v24 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B820)
  {
    sub_245A4C71C(v24);
  }

  v25 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B898)
  {
    sub_245A4C71C(v25);
  }

  v26 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B858)
  {
    sub_245A4C71C(v26);
  }

  v27 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8D8)
  {
    sub_245A4C71C(v27);
  }

  v28 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B850)
  {
    sub_245A4C71C(v28);
  }

  v29 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B830)
  {
    sub_245A4C71C(v29);
  }

  v30 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8B0)
  {
    sub_245A4C71C(v30);
  }

  v31 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B840)
  {
    sub_245A4C71C(v31);
  }

  v32 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B848)
  {
    sub_245A4C71C(v32);
  }

  v33 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B800)
  {
    sub_245A4C71C(v33);
  }

  v34 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B7E0)
  {
    sub_245A4C71C(v34);
  }

  v35 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8D0)
  {
    sub_245A4C71C(v35);
  }

  v36 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B900)
  {
    sub_245A4C71C(v36);
  }

  v37 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B8E8)
  {
    sub_245A4C71C(v37);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_245A4ED80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A4ED94(uint64_t result)
{
  v1 = result;
  if (qword_28144B8A8)
  {
    *(result + 48) = qword_28144B8A8;
    v2 = qword_28144B860;
    if (qword_28144B860)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = sub_245A4C71C(result);
    v1[6] = qword_28144B8A8;
    v2 = qword_28144B860;
    if (qword_28144B860)
    {
LABEL_3:
      v1[7] = v2;
      v3 = qword_28144B7E8;
      if (qword_28144B7E8)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  result = sub_245A4C71C(result);
  v1[7] = qword_28144B860;
  v3 = qword_28144B7E8;
  if (qword_28144B7E8)
  {
LABEL_4:
    v1[8] = v3;
    v4 = qword_28144B8C8;
    if (qword_28144B8C8)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_245A4C71C(result);
  v1[8] = qword_28144B7E8;
  v4 = qword_28144B8C8;
  if (qword_28144B8C8)
  {
LABEL_5:
    v1[9] = v4;
    v5 = qword_28144B908;
    if (qword_28144B908)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_245A4C71C(result);
  v1[9] = qword_28144B8C8;
  v5 = qword_28144B908;
  if (qword_28144B908)
  {
LABEL_6:
    v1[10] = v5;
    v6 = qword_28144B8F8;
    if (qword_28144B8F8)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_245A4C71C(result);
  v1[10] = qword_28144B908;
  v6 = qword_28144B8F8;
  if (qword_28144B8F8)
  {
LABEL_7:
    v1[11] = v6;
    v7 = qword_28144B810;
    if (qword_28144B810)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = sub_245A4C71C(result);
  v1[11] = qword_28144B8F8;
  v7 = qword_28144B810;
  if (qword_28144B810)
  {
LABEL_8:
    v1[13] = v7;
    v8 = qword_28144B8F0;
    if (qword_28144B8F0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = sub_245A4C71C(result);
  v1[13] = qword_28144B810;
  v8 = qword_28144B8F0;
  if (qword_28144B8F0)
  {
LABEL_9:
    v1[18] = v8;
    v9 = qword_28144B878;
    if (qword_28144B878)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = sub_245A4C71C(result);
  v1[18] = qword_28144B8F0;
  v9 = qword_28144B878;
  if (qword_28144B878)
  {
LABEL_10:
    v1[20] = v9;
    v10 = qword_28144B840;
    if (qword_28144B840)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = sub_245A4C71C(result);
  v1[20] = qword_28144B878;
  v10 = qword_28144B840;
  if (qword_28144B840)
  {
LABEL_11:
    v1[21] = v10;
    v11 = qword_28144B8E0;
    if (qword_28144B8E0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = sub_245A4C71C(result);
  v1[21] = qword_28144B840;
  v11 = qword_28144B8E0;
  if (qword_28144B8E0)
  {
LABEL_12:
    v1[22] = v11;
    v12 = qword_28144B838;
    if (qword_28144B838)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = sub_245A4C71C(result);
  v1[22] = qword_28144B8E0;
  v12 = qword_28144B838;
  if (qword_28144B838)
  {
LABEL_13:
    v1[25] = v12;
    v13 = qword_28144B868;
    if (qword_28144B868)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = sub_245A4C71C(result);
  v1[25] = qword_28144B838;
  v13 = qword_28144B868;
  if (qword_28144B868)
  {
LABEL_14:
    v1[26] = v13;
    v14 = qword_28144B7F8;
    if (qword_28144B7F8)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = sub_245A4C71C(result);
  v1[26] = qword_28144B868;
  v14 = qword_28144B7F8;
  if (qword_28144B7F8)
  {
LABEL_15:
    v1[27] = v14;
    v15 = qword_28144B838;
    if (qword_28144B838)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = sub_245A4C71C(result);
  v1[27] = qword_28144B7F8;
  v15 = qword_28144B838;
  if (qword_28144B838)
  {
LABEL_16:
    v1[29] = v15;
    v16 = qword_28144B7E8;
    if (qword_28144B7E8)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = sub_245A4C71C(result);
  v1[29] = qword_28144B838;
  v16 = qword_28144B7E8;
  if (qword_28144B7E8)
  {
LABEL_17:
    v1[30] = v16;
    v17 = qword_28144B848;
    if (qword_28144B848)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = sub_245A4C71C(result);
  v1[30] = qword_28144B7E8;
  v17 = qword_28144B848;
  if (qword_28144B848)
  {
LABEL_18:
    v1[32] = v17;
    v18 = qword_28144B8D0;
    if (qword_28144B8D0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = sub_245A4C71C(result);
  v1[32] = qword_28144B848;
  v18 = qword_28144B8D0;
  if (qword_28144B8D0)
  {
LABEL_19:
    v1[33] = v18;
    v19 = qword_28144B8E8;
    if (qword_28144B8E8)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = sub_245A4C71C(result);
  v1[33] = qword_28144B8D0;
  v19 = qword_28144B8E8;
  if (qword_28144B8E8)
  {
LABEL_20:
    v1[34] = v19;
    v20 = qword_28144B800;
    if (qword_28144B800)
    {
      goto LABEL_21;
    }

LABEL_42:
    result = sub_245A4C71C(result);
    v1[35] = qword_28144B800;
    v21 = qword_28144B7E0;
    if (qword_28144B7E0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_41:
  result = sub_245A4C71C(result);
  v1[34] = qword_28144B8E8;
  v20 = qword_28144B800;
  if (!qword_28144B800)
  {
    goto LABEL_42;
  }

LABEL_21:
  v1[35] = v20;
  v21 = qword_28144B7E0;
  if (qword_28144B7E0)
  {
LABEL_22:
    v1[36] = v21;
    return result;
  }

LABEL_43:
  result = sub_245A4C71C(result);
  v1[36] = qword_28144B7E0;
  return result;
}

uint64_t sub_245A4F104(uint64_t a1, uint64_t a2)
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

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 40) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 40) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 40) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 40) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A4F1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4F200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4F214(void *a1)
{
  *a1 = &unk_28589DCC8;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A4F268(void *a1)
{
  *a1 = &unk_28589DCC8;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A4F368(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

uint64_t sub_245A4F38C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        if (v14 >= v10)
        {
          goto LABEL_28;
        }

LABEL_25:
        v16 = *v14;
        if (v16 < 0)
        {
          goto LABEL_28;
        }

        *(a1 + 24) = v16;
        v17 = v14 + 1;
        *(this + 1) = v17;
        *(a1 + 40) |= 2u;
        if (v17 < v10)
        {
LABEL_30:
          if (*v17 == 29)
          {
            *(this + 1) = v17 + 1;
LABEL_32:
            v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = v19;
            *(a1 + 40) |= 4u;
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

      else
      {
        if (v8 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
          *(a1 + 40) |= 1u;
          if (v13 < v10)
          {
            goto LABEL_23;
          }
        }

        else
        {
          *(a1 + 16) = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
          *(a1 + 40) |= 1u;
          if (v13 < v10)
          {
LABEL_23:
            if (*v13 == 16)
            {
              v14 = v13 + 1;
              *(this + 1) = v14;
              if (v14 < v10)
              {
                goto LABEL_25;
              }

LABEL_28:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v18 = *(this + 2);
              *(a1 + 40) |= 2u;
              if (v17 < v18)
              {
                goto LABEL_30;
              }
            }
          }
        }
      }
    }

    if (v9 == 5)
    {
      goto LABEL_32;
    }

LABEL_18:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A4F5B4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 16), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  if ((*(v5 + 40) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 32), a3);
  v10 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_9:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

uint64_t sub_245A4F66C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 10);
  if (v4)
  {
    v8 = *(this + 2);
    *a2 = 8;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, a2 + 1, a3);
    v4 = *(this + 10);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 3);
  *a2 = 16;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, a2 + 1, a3);
  if ((*(this + 10) & 4) == 0)
  {
LABEL_4:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_9;
  }

LABEL_8:
  v10 = *(this + 8);
  *a2 = 29;
  *(a2 + 1) = v10;
  a2 += 5;
  v11 = *(this + 1);
  v6 = (this + 8);
  v5 = v11;
  if (!v11)
  {
    return a2;
  }

LABEL_9:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_245A4F744(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LODWORD(v4) = 0;
      if ((*(a1 + 40) & 2) == 0)
      {
LABEL_9:
        if ((v3 & 4) != 0)
        {
          v4 = (v4 + 5);
        }

        else
        {
          v4 = v4;
        }

        v5 = (a1 + 8);
        v6 = *(a1 + 8);
        if (!v6)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }

    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24)) + 1;
    v3 = *(a1 + 40);
    goto LABEL_9;
  }

  v4 = 0;
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_6:
    *(a1 + 36) = v4;
    return v4;
  }

LABEL_13:
  if (*v6 == v6[1])
  {
    goto LABEL_6;
  }

  v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 36) = v8;
  return v8;
}

uint64_t sub_245A4F7FC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F6D8, 0);
  if (v5)
  {
    return sub_245A4F104(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A4F8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4F8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A4F904(uint64_t result, uint64_t a2)
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

uint64_t sub_245A4F998()
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

  return qword_28144B430;
}

void sub_245A4FA28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A4FA3C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
    a2 = v3;
    a1 = v2;
  }

  v4 = *(a2 + 44);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 24);
    *(a1 + 44) |= 1u;
    *(a1 + 24) = v8;
    v4 = *(a2 + 44);
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

  v9 = *(a2 + 25);
  *(a1 + 44) |= 2u;
  *(a1 + 25) = v9;
  v4 = *(a2 + 44);
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
  v10 = *(a2 + 16);
  *(a1 + 44) |= 4u;
  *(a1 + 16) = v10;
  v4 = *(a2 + 44);
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
  v11 = *(a2 + 20);
  *(a1 + 44) |= 8u;
  *(a1 + 20) = v11;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v13 = *(a2 + 26);
    *(a1 + 44) |= 0x20u;
    *(a1 + 26) = v13;
    v4 = *(a2 + 44);
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
  v12 = *(a2 + 28);
  *(a1 + 44) |= 0x10u;
  *(a1 + 28) = v12;
  v4 = *(a2 + 44);
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
  v14 = *(a2 + 27);
  *(a1 + 44) |= 0x40u;
  *(a1 + 27) = v14;
  v4 = *(a2 + 44);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 0x80u;
    *(a1 + 32) = v5;
    v4 = *(a2 + 44);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 36);
    *(a1 + 44) |= 0x100u;
    *(a1 + 36) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A4FBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4FBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A4FC0C(void *a1)
{
  *a1 = &unk_28589DD78;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A4FC60(void *a1)
{
  *a1 = &unk_28589DD78;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A4FD5C(uint64_t a1)
{
  v1 = *(a1 + 44);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 36) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A4FD90(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
            if (TagFallback >> 3 > 4)
            {
              break;
            }

            if (TagFallback >> 3 > 2)
            {
              if (v8 != 3)
              {
                if (v8 != 4 || v9 != 5)
                {
                  goto LABEL_44;
                }

                v29 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_62;
              }

              if (v9 != 5)
              {
                goto LABEL_44;
              }

              v29 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
              {
                return 0;
              }

LABEL_59:
              *(a1 + 16) = v29;
              *(a1 + 44) |= 4u;
              v21 = *(this + 1);
              if (v21 < *(this + 2) && *v21 == 37)
              {
                *(this + 1) = v21 + 1;
                v29 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
                {
                  return 0;
                }

LABEL_62:
                *(a1 + 20) = v29;
                *(a1 + 44) |= 8u;
                v22 = *(this + 1);
                if (v22 < *(this + 2) && *v22 == 45)
                {
                  *(this + 1) = v22 + 1;
                  v29 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
                  {
                    return 0;
                  }

LABEL_65:
                  *(a1 + 28) = v29;
                  *(a1 + 44) |= 0x10u;
                  v23 = *(this + 1);
                  v12 = *(this + 2);
                  if (v23 < v12 && *v23 == 48)
                  {
                    v13 = v23 + 1;
                    *(this + 1) = v13;
                    v29 = 0;
                    if (v13 >= v12)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_68;
                  }
                }
              }
            }

            else if (v8 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_44;
              }

              v29 = 0;
              v14 = *(this + 1);
              v10 = *(this + 2);
              if (v14 >= v10 || (v15 = *v14, (v15 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
                if (!result)
                {
                  return result;
                }

                v15 = v29;
                v16 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v16 = v14 + 1;
                *(this + 1) = v16;
              }

              *(a1 + 24) = v15 != 0;
              *(a1 + 44) |= 1u;
              if (v16 < v10 && *v16 == 16)
              {
                v11 = v16 + 1;
                *(this + 1) = v11;
                v29 = 0;
                if (v11 >= v10)
                {
                  goto LABEL_54;
                }

                goto LABEL_52;
              }
            }

            else
            {
              if (v8 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_44;
              }

              v11 = *(this + 1);
              v10 = *(this + 2);
              v29 = 0;
              if (v11 >= v10)
              {
LABEL_54:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
                if (!result)
                {
                  return result;
                }

                v19 = v29;
                v20 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_56;
              }

LABEL_52:
              v19 = *v11;
              if ((v19 & 0x80000000) != 0)
              {
                goto LABEL_54;
              }

              v20 = v11 + 1;
              *(this + 1) = v20;
LABEL_56:
              *(a1 + 25) = v19 != 0;
              *(a1 + 44) |= 2u;
              if (v20 < v10 && *v20 == 29)
              {
                *(this + 1) = v20 + 1;
                v29 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_59;
              }
            }
          }

          if (TagFallback >> 3 > 6)
          {
            break;
          }

          if (v8 == 5)
          {
            if (v9 != 5)
            {
              goto LABEL_44;
            }

            v29 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_65;
          }

          if (v8 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v13 = *(this + 1);
          v12 = *(this + 2);
          v29 = 0;
          if (v13 >= v12)
          {
LABEL_70:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
            if (!result)
            {
              return result;
            }

            v24 = v29;
            v25 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_72;
          }

LABEL_68:
          v24 = *v13;
          if ((v24 & 0x80000000) != 0)
          {
            goto LABEL_70;
          }

          v25 = v13 + 1;
          *(this + 1) = v25;
LABEL_72:
          *(a1 + 26) = v24 != 0;
          *(a1 + 44) |= 0x20u;
          if (v25 < v12 && *v25 == 56)
          {
            v17 = v25 + 1;
            *(this + 1) = v17;
            v29 = 0;
            if (v17 >= v12)
            {
              goto LABEL_77;
            }

            goto LABEL_75;
          }
        }

        if (v8 != 7)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v17 = *(this + 1);
        v12 = *(this + 2);
        v29 = 0;
        if (v17 >= v12)
        {
LABEL_77:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
          if (!result)
          {
            return result;
          }

          v26 = v29;
          v27 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_79;
        }

LABEL_75:
        v26 = *v17;
        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_77;
        }

        v27 = v17 + 1;
        *(this + 1) = v27;
LABEL_79:
        *(a1 + 27) = v26 != 0;
        *(a1 + 44) |= 0x40u;
        if (v27 < v12 && *v27 == 69)
        {
          *(this + 1) = v27 + 1;
          goto LABEL_82;
        }
      }

      if (v8 != 8)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_44;
      }

LABEL_82:
      v29 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = v29;
      *(a1 + 44) |= 0x80u;
      v28 = *(this + 1);
      if (v28 < *(this + 2) && *v28 == 77)
      {
        *(this + 1) = v28 + 1;
        v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
        {
          return 0;
        }

LABEL_86:
        *(a1 + 36) = v29;
        *(a1 + 44) |= 0x100u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 9 && v9 == 5)
    {
      v29 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_86;
    }

LABEL_44:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A502A4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 24), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 25), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 28), a3);
  v6 = *(v5 + 44);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 26), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 27), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 32), a3);
  if ((*(v5 + 44) & 0x100) == 0)
  {
LABEL_10:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 36), a3);
  v10 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_21:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

uint64_t sub_245A50404(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 24);
    *a2 = 8;
    a2[1] = v7;
    a2 += 2;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 25);
  *a2 = 16;
  a2[1] = v8;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a1 + 16);
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

    goto LABEL_16;
  }

LABEL_15:
  v10 = *(a1 + 20);
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

    goto LABEL_17;
  }

LABEL_16:
  v11 = *(a1 + 28);
  *a2 = 45;
  *(a2 + 1) = v11;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = *(a1 + 26);
  *a2 = 48;
  a2[1] = v12;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = *(a1 + 27);
  *a2 = 56;
  a2[1] = v13;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v15 = *(a1 + 36);
    *a2 = 77;
    *(a2 + 1) = v15;
    a2 += 5;
    v16 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v16;
    if (!v16)
    {
      return a2;
    }

    goto LABEL_21;
  }

LABEL_19:
  v14 = *(a1 + 32);
  *a2 = 69;
  *(a2 + 1) = v14;
  a2 += 5;
  if ((*(a1 + 44) & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_21:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_245A505C4(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[11];
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2);
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

    v5 = ((v3 >> 5) & 2) + ((v3 >> 4) & 2) + v4;
    if ((v3 & 0x80) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x100) != 0)
    {
      v6 = v5 + 5;
    }

    else
    {
      v6 = v5;
    }

    v7 = (a1 + 2);
    v8 = *(a1 + 1);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v3 & 0x100) != 0)
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }

    v7 = (a1 + 2);
    v8 = *(a1 + 1);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  if (*v8 == v8[1])
  {
LABEL_14:
    a1[10] = v6;
    return v6;
  }

  v10 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v7, a2) + v6;
  a1[10] = v10;
  return v10;
}

uint64_t sub_245A506A8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F6F0, 0);
  if (v5)
  {
    return sub_245A4FA3C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A50788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5079C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A507B0(uint64_t result, uint64_t a2)
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

uint64_t sub_245A50844()
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

  return qword_28144B440;
}

void sub_245A508D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A508E8(_DWORD *a1, uint64_t a2)
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

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 48))
  {
    v7 = *(a2 + 16);
    a1[12] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 48);
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

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[12] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 48);
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
  v9 = *(a2 + 24);
  a1[12] |= 4u;
  a1[6] = v9;
  v4 = *(a2 + 48);
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
  v10 = *(a2 + 28);
  a1[12] |= 8u;
  a1[7] = v10;
  v4 = *(a2 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v12 = *(a2 + 36);
    a1[12] |= 0x20u;
    a1[9] = v12;
    if ((*(a2 + 48) & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_11;
  }

LABEL_17:
  v11 = *(a2 + 32);
  a1[12] |= 0x10u;
  a1[8] = v11;
  v4 = *(a2 + 48);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v4 & 0x40) != 0)
  {
LABEL_11:
    v5 = *(a2 + 40);
    a1[12] |= 0x40u;
    a1[10] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A50A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A50A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A50A78(void *a1)
{
  *a1 = &unk_28589DE28;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A50ACC(void *a1)
{
  *a1 = &unk_28589DE28;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A50BCC(uint64_t a1)
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

uint64_t sub_245A50BF4(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

            a1[4] = v25;
            a1[12] |= 1u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 21)
            {
              *(this + 1) = v12 + 1;
LABEL_39:
              v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
              {
                return 0;
              }

              a1[5] = v25;
              a1[12] |= 2u;
              v15 = *(this + 1);
              if (v15 < *(this + 2) && *v15 == 29)
              {
                *(this + 1) = v15 + 1;
                v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
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
              if (v9 != 5)
              {
                goto LABEL_36;
              }

              goto LABEL_39;
            }

            if (v8 != 3 || v9 != 5)
            {
              goto LABEL_36;
            }

            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
            {
              return 0;
            }

LABEL_43:
            a1[6] = v25;
            a1[12] |= 4u;
            v16 = *(this + 1);
            v10 = *(this + 2);
            if (v16 < v10 && *v16 == 32)
            {
              v13 = v16 + 1;
              *(this + 1) = v13;
              if (v13 < v10)
              {
                goto LABEL_46;
              }

LABEL_49:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v10 = *(this + 2);
              a1[12] |= 8u;
              if (v18 < v10)
              {
                goto LABEL_51;
              }
            }
          }
        }

        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_36;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
          if (v13 >= v10)
          {
            goto LABEL_49;
          }

LABEL_46:
          v17 = *v13;
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_49;
          }

          a1[7] = v17;
          v18 = v13 + 1;
          *(this + 1) = v18;
          a1[12] |= 8u;
          if (v18 < v10)
          {
LABEL_51:
            if (*v18 == 40)
            {
              v11 = v18 + 1;
              *(this + 1) = v11;
              if (v11 < v10)
              {
                goto LABEL_53;
              }

LABEL_56:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
              if (!result)
              {
                return result;
              }

              v21 = *(this + 1);
              v10 = *(this + 2);
              a1[12] |= 0x10u;
              if (v21 < v10)
              {
                goto LABEL_58;
              }
            }
          }
        }

        else
        {
          if (v8 != 5 || (TagFallback & 7) != 0)
          {
            goto LABEL_36;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10)
          {
            goto LABEL_56;
          }

LABEL_53:
          v20 = *v11;
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }

          a1[8] = v20;
          v21 = v11 + 1;
          *(this + 1) = v21;
          a1[12] |= 0x10u;
          if (v21 < v10)
          {
LABEL_58:
            if (*v21 == 48)
            {
              v14 = v21 + 1;
              *(this + 1) = v14;
              if (v14 < v10)
              {
                goto LABEL_60;
              }

LABEL_63:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
              if (!result)
              {
                return result;
              }

              v23 = *(this + 1);
              v24 = *(this + 2);
              a1[12] |= 0x20u;
              if (v23 < v24)
              {
                goto LABEL_65;
              }
            }
          }
        }
      }

      if (v8 != 6)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_36;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
      if (v14 >= v10)
      {
        goto LABEL_63;
      }

LABEL_60:
      v22 = *v14;
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      a1[9] = v22;
      v23 = v14 + 1;
      *(this + 1) = v23;
      a1[12] |= 0x20u;
      if (v23 < v10)
      {
LABEL_65:
        if (*v23 == 61)
        {
          *(this + 1) = v23 + 1;
          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
          {
            return 0;
          }

LABEL_67:
          a1[10] = v25;
          a1[12] |= 0x40u;
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

    if (v8 == 7 && v9 == 5)
    {
      v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_67;
    }

LABEL_36:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A51000(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 48);
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
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 48);
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
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  if ((*(v5 + 48) & 0x40) == 0)
  {
LABEL_8:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v10 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_17:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

uint64_t sub_245A51128(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 12);
  if (v4)
  {
    v8 = *(this + 4);
    *a2 = 13;
    *(a2 + 1) = v8;
    a2 += 5;
    v4 = *(this + 12);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 5);
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  v4 = *(this + 12);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v11 = *(this + 7);
    *a2 = 32;
    if (v11 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
      if ((*(this + 48) & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *(a2 + 1) = v11;
      a2 += 2;
      if ((*(this + 48) & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_6:
    if ((*(this + 48) & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    v13 = *(this + 9);
    *a2 = 48;
    if (v13 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, a2 + 1, a3);
      if ((*(this + 48) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *(a2 + 1) = v13;
      a2 += 2;
      if ((*(this + 48) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_26;
  }

LABEL_12:
  v10 = *(this + 6);
  *a2 = 29;
  *(a2 + 1) = v10;
  a2 += 5;
  if ((*(this + 12) & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((*(this + 48) & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  v12 = *(this + 8);
  *a2 = 40;
  if (v12 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, a3);
    if ((*(this + 48) & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a2 + 1) = v12;
    a2 += 2;
    if ((*(this + 48) & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_7:
  if ((*(this + 48) & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v14 = *(this + 10);
  *a2 = 61;
  *(a2 + 1) = v14;
  a2 += 5;
  v15 = *(this + 1);
  v6 = (this + 8);
  v5 = v15;
  if (!v15)
  {
    return a2;
  }

LABEL_26:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_245A51340(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v4 = (v3 << 31 >> 31) & 5;
    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      LODWORD(v5) = v4 + 5;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    if ((v3 & 8) == 0)
    {
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_9;
      }

LABEL_17:
      v11 = *(a1 + 32);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v3 = *(a1 + 48);
        LODWORD(v5) = v12 + 1 + v5;
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        LODWORD(v5) = v5 + 2;
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v13 = *(a1 + 36);
      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
        v3 = *(a1 + 48);
      }

      else
      {
        v14 = 2;
      }

      LODWORD(v5) = v14 + v5;
LABEL_25:
      if ((v3 & 0x40) != 0)
      {
        v5 = (v5 + 5);
      }

      else
      {
        v5 = v5;
      }

      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

    v9 = *(a1 + 28);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v3 = *(a1 + 48);
      LODWORD(v5) = v10 + 1 + v5;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      LODWORD(v5) = v5 + 2;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_9:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v5 = 0;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_12:
    *(a1 + 44) = v5;
    return v5;
  }

LABEL_29:
  if (*v7 == v7[1])
  {
    goto LABEL_12;
  }

  v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 44) = v15;
  return v15;
}

uint64_t sub_245A51478(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F708, 0);
  if (v5)
  {
    return sub_245A508E8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A51558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A5156C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A51580(uint64_t result, uint64_t a2)
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

uint64_t sub_245A51614()
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

  return qword_28144B450;
}

void sub_245A516A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A516B8(_DWORD *a1, uint64_t a2)
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

  LOBYTE(v4) = *(a2 + 32);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 20);
    a1[8] |= 2u;
    a1[5] = v8;
    if ((*(a2 + 32) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  a1[8] |= 1u;
  a1[4] = v7;
  v4 = *(a2 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 24);
    a1[8] |= 4u;
    a1[6] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A517A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A517B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A517C8(void *a1)
{
  *a1 = &unk_28589DED8;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A5181C(void *a1)
{
  *a1 = &unk_28589DED8;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A51918(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A5193C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v9 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        a1[6] = v13;
        a1[8] |= 4u;
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

      if (v8 != 1 || v9 != 5)
      {
        goto LABEL_20;
      }

      v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v15) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v15;
      a1[8] |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 21)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v14;
        a1[8] |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 29)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 5)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A51B10(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 32);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v5 = *(v4 + 32);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  if ((*(v4 + 32) & 4) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v4 + 24), a3);
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

uint64_t sub_245A51BC8(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[8];
  if (v3)
  {
    v7 = a1[4];
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    v3 = a1[8];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = a1[6];
      *a2 = 29;
      *(a2 + 1) = v9;
      a2 += 5;
      v10 = *(a1 + 1);
      v4 = (a1 + 2);
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

  v8 = a1[5];
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  if ((a1[8] & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
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

uint64_t sub_245A51C98(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 32);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 32))
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

  *(a1 + 28) = v5;
  return v5;
}

uint64_t sub_245A51D0C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F720, 0);
  if (v5)
  {
    return sub_245A516B8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A51DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A51E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A51E14(uint64_t result, uint64_t a2)
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

uint64_t sub_245A51EA8()
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

  return qword_28144B460;
}

void sub_245A51F38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A51F4C(_DWORD *a1, uint64_t a2)
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
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 44))
  {
    v7 = *(a2 + 16);
    a1[11] |= 1u;
    a1[4] = v7;
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
  a1[11] |= 2u;
  a1[5] = v8;
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
  a1[11] |= 4u;
  a1[6] = v9;
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
    a1[11] |= 0x10u;
    a1[8] = v11;
    if ((*(a2 + 44) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 28);
  a1[11] |= 8u;
  a1[7] = v10;
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
    a1[11] |= 0x20u;
    a1[9] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_245A52094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A520A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A520BC(void *a1)
{
  *a1 = &unk_28589DF88;
  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

void sub_245A52110(void *a1)
{
  *a1 = &unk_28589DF88;
  MEMORY[0x245D78300](a1 + 1);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A5220C(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

uint64_t sub_245A52230(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
              goto LABEL_39;
            }

            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

            a1[4] = v23;
            a1[11] |= 1u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 21)
            {
              *(this + 1) = v12 + 1;
              goto LABEL_28;
            }
          }

          else if (v8 == 2)
          {
            if (v9 != 5)
            {
              goto LABEL_39;
            }

LABEL_28:
            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

            a1[9] = v23;
            a1[11] |= 0x20u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 29)
            {
              *(this + 1) = v13 + 1;
              v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_32;
            }
          }

          else
          {
            if (v8 != 3 || v9 != 5)
            {
              goto LABEL_39;
            }

            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

LABEL_32:
            a1[5] = v23;
            a1[11] |= 2u;
            v14 = *(this + 1);
            if (v14 < *(this + 2) && *v14 == 37)
            {
              *(this + 1) = v14 + 1;
              v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_35;
            }
          }
        }

        if (v8 != 4)
        {
          break;
        }

        if (v9 != 5)
        {
          goto LABEL_39;
        }

        v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
        {
          return 0;
        }

LABEL_35:
        a1[6] = v23;
        a1[11] |= 4u;
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 < v15 && *v16 == 40)
        {
          v17 = v16 + 1;
          *(this + 1) = v17;
LABEL_43:
          v23 = 0;
          if (v17 >= v15 || (v18 = *v17, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
            if (!result)
            {
              return result;
            }

            v18 = v23;
            if (v23 <= 3)
            {
LABEL_46:
              a1[11] |= 8u;
              a1[7] = v18;
              goto LABEL_50;
            }
          }

          else
          {
            *(this + 1) = v17 + 1;
            if (v18 <= 3)
            {
              goto LABEL_46;
            }
          }

          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2));
LABEL_50:
          v21 = *(this + 1);
          v20 = *(this + 2);
          if (v21 < v20 && *v21 == 48)
          {
            v11 = v21 + 1;
            *(this + 1) = v11;
            v23 = 0;
            if (v11 >= v20)
            {
              goto LABEL_57;
            }

LABEL_53:
            v22 = *v11;
            if ((v22 & 0x80000000) != 0)
            {
              goto LABEL_57;
            }

            *(this + 1) = v11 + 1;
            if (v22 > 1)
            {
              goto LABEL_59;
            }

LABEL_55:
            a1[11] |= 0x10u;
            a1[8] = v22;
            if (*(this + 1) == *(this + 2))
            {
LABEL_60:
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

      if (v8 == 5)
      {
        break;
      }

      if (v8 != 6 || (TagFallback & 7) != 0)
      {
        goto LABEL_39;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      v23 = 0;
      if (v11 < v10)
      {
        goto LABEL_53;
      }

LABEL_57:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
      if (!result)
      {
        return result;
      }

      v22 = v23;
      if (v23 <= 1)
      {
        goto LABEL_55;
      }

LABEL_59:
      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2));
      if (*(this + 1) == *(this + 2))
      {
        goto LABEL_60;
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v17 = *(this + 1);
      v15 = *(this + 2);
      goto LABEL_43;
    }

LABEL_39:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, (a1 + 2), a4) & 1) != 0);
  return 0;
}

uint64_t sub_245A525D8(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 44);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 36), a3);
  v6 = *(v5 + 44);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
  if ((*(v5 + 44) & 0x10) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 32), a2, a4);
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

uint64_t sub_245A526E4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 11);
  if (v4)
  {
    v8 = *(this + 4);
    *a2 = 13;
    *(a2 + 1) = v8;
    a2 += 5;
    v4 = *(this + 11);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 9);
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  v4 = *(this + 11);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10 = *(this + 5);
  *a2 = 29;
  *(a2 + 1) = v10;
  a2 += 5;
  v4 = *(this + 11);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v12 = *(this + 7);
    *a2 = 40;
    if ((v12 & 0x80000000) != 0)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
      if ((*(this + 44) & 0x10) != 0)
      {
        goto LABEL_20;
      }
    }

    else if (v12 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, a3);
      if ((*(this + 44) & 0x10) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *(a2 + 1) = v12;
      a2 += 2;
      if ((*(this + 44) & 0x10) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_7:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_27;
  }

LABEL_12:
  v11 = *(this + 6);
  *a2 = 37;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((*(this + 11) & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  v13 = *(this + 8);
  *a2 = 48;
  if ((v13 & 0x80000000) != 0)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, a2 + 1, a3);
    v15 = *(this + 1);
    v6 = (this + 8);
    v5 = v15;
    if (!v15)
    {
      return a2;
    }
  }

  else if (v13 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, a2 + 1, a3);
    v16 = *(this + 1);
    v6 = (this + 8);
    v5 = v16;
    if (!v16)
    {
      return a2;
    }
  }

  else
  {
    *(a2 + 1) = v13;
    a2 += 2;
    v14 = *(this + 1);
    v6 = (this + 8);
    v5 = v14;
    if (!v14)
    {
      return a2;
    }
  }

LABEL_27:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_245A528E8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
      LODWORD(v5) = v4 + 5;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(a1 + 28);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(a1 + 44);
      }

      else
      {
        v7 = 2;
      }

      LODWORD(v5) = v7 + v5;
    }

    if ((v3 & 0x10) != 0)
    {
      v11 = *(a1 + 32);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
        v3 = *(a1 + 44);
      }

      else
      {
        v12 = 2;
      }

      LODWORD(v5) = v12 + v5;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = (v5 + 5);
    }

    else
    {
      v5 = v5;
    }

    v8 = (a1 + 8);
    v9 = *(a1 + 8);
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    v8 = (a1 + 8);
    v9 = *(a1 + 8);
    if (!v9)
    {
LABEL_12:
      *(a1 + 40) = v5;
      return v5;
    }
  }

  if (*v9 == v9[1])
  {
    goto LABEL_12;
  }

  v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v5;
  *(a1 + 40) = v13;
  return v13;
}

uint64_t sub_245A529F4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589F738, 0);
  if (v5)
  {
    return sub_245A51F4C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A52AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A52AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A52AFC(uint64_t result, uint64_t a2)
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

uint64_t sub_245A52B90()
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

  return qword_28144B470;
}

void sub_245A52C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A52C34(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
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
    v5 = *(a2 + 16);
    *(a1 + 44) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 20);
  *(a1 + 44) |= 2u;
  *(a1 + 20) = v6;
  v4 = *(a2 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v8 = *(a2 + 28);
    *(a1 + 44) |= 8u;
    *(a1 + 28) = v8;
    if ((*(a2 + 44) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_15;
  }

LABEL_13:
  v7 = *(a2 + 24);
  *(a1 + 44) |= 4u;
  *(a1 + 24) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v4 & 0x10) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_15:
  *(a1 + 44) |= 0x10u;
  v9 = *(a1 + 32);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 32);
  if (!v10)
  {
    v10 = *(qword_28144B7E8 + 32);
  }

  sub_245A53A14(v9, v10);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A52E1C(void *a1)
{
  *a1 = &unk_28589E038;
  if (qword_28144B7E8 != a1)
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

void sub_245A52EB0(void *a1)
{
  *a1 = &unk_28589E038;
  if (qword_28144B7E8 != a1)
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