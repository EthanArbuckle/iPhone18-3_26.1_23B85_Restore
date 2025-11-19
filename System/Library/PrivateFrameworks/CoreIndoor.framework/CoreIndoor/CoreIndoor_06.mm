uint64_t sub_245A6F9F4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 36);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 25), a2, a4);
  v6 = *(v5 + 36);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 26), a2, a4);
  v6 = *(v5 + 36);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 27), a2, a4);
  if ((*(v5 + 36) & 0x20) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 28), a3);
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

uint64_t sub_245A6FB00(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 36);
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

  v8 = *(a1 + 24);
  *a2 = 16;
  *(a2 + 1) = v8;
  a2 += 2;
  v3 = *(a1 + 36);
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
  v9 = *(a1 + 25);
  *a2 = 24;
  *(a2 + 1) = v9;
  a2 += 2;
  v3 = *(a1 + 36);
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
  v10 = *(a1 + 26);
  *a2 = 32;
  *(a2 + 1) = v10;
  a2 += 2;
  v3 = *(a1 + 36);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = *(a1 + 28);
    *a2 = 53;
    *(a2 + 1) = v12;
    a2 += 5;
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
  v11 = *(a1 + 27);
  *a2 = 40;
  *(a2 + 1) = v11;
  a2 += 2;
  if ((*(a1 + 36) & 0x20) != 0)
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

uint64_t sub_245A6FC38(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[9];
  v4 = ((v3 >> 1) & 2) + (v3 & 2) + ((v3 >> 2) & 2) + ((v3 >> 3) & 2) + (((v3 << 31) >> 31) & 9);
  if ((v3 & 0x20) != 0)
  {
    v4 += 5;
  }

  if (a1[9])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  a1[8] = v5;
  return v5;
}

uint64_t sub_245A6FCCC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589FA38, 0);
  if (v5)
  {
    return sub_245A6F35C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A6FDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A6FDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A6FDD4(uint64_t result, uint64_t a2)
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

uint64_t sub_245A6FE68()
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

  return qword_28144B678;
}

void sub_245A6FEF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A6FF0C(void *a1)
{
  *a1 = &unk_28589F638;
  if (qword_28144B8E8 != a1)
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

void sub_245A6FFA0(void *a1)
{
  *a1 = &unk_28589F638;
  if (qword_28144B8E8 != a1)
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

uint64_t sub_245A700E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v8 != 6)
            {
              if (v8 == 7 && (TagFallback & 7) == 0)
              {
                v17 = *(this + 1);
                v16 = *(this + 2);
                v49 = 0;
                if (v17 >= v16)
                {
                  goto LABEL_95;
                }

                goto LABEL_93;
              }

              goto LABEL_48;
            }

            if (v9 != 5)
            {
              goto LABEL_48;
            }

            v49 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v49) & 1) == 0)
            {
              return 0;
            }

LABEL_90:
            *(a1 + 28) = v49;
            *(a1 + 44) |= 0x20u;
            v41 = *(this + 1);
            v16 = *(this + 2);
            if (v41 < v16 && *v41 == 56)
            {
              v17 = v41 + 1;
              *(this + 1) = v17;
              v49 = 0;
              if (v17 >= v16)
              {
                goto LABEL_95;
              }

LABEL_93:
              v42 = *v17;
              if ((v42 & 0x80000000) != 0)
              {
LABEL_95:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
                if (!result)
                {
                  return result;
                }

                v42 = v49;
                v43 = *(this + 1);
                v16 = *(this + 2);
                goto LABEL_97;
              }

              v43 = v17 + 1;
              *(this + 1) = v43;
LABEL_97:
              *(a1 + 32) = v42 != 0;
              *(a1 + 44) |= 0x40u;
              if (v43 < v16 && *v43 == 64)
              {
                v22 = v43 + 1;
                *(this + 1) = v22;
                v49 = 0;
                if (v22 >= v16)
                {
                  goto LABEL_102;
                }

LABEL_100:
                v44 = *v22;
                if ((v44 & 0x80000000) != 0)
                {
LABEL_102:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
                  if (!result)
                  {
                    return result;
                  }

                  v44 = v49;
                  v45 = *(this + 1);
                  v16 = *(this + 2);
                  goto LABEL_104;
                }

                v45 = v22 + 1;
                *(this + 1) = v45;
LABEL_104:
                *(a1 + 33) = v44 != 0;
                *(a1 + 44) |= 0x80u;
                if (v45 < v16 && *v45 == 77)
                {
                  *(this + 1) = v45 + 1;
                  goto LABEL_107;
                }
              }
            }
          }

          else
          {
            if (v8 == 8)
            {
              if ((TagFallback & 7) == 0)
              {
                v22 = *(this + 1);
                v16 = *(this + 2);
                v49 = 0;
                if (v22 >= v16)
                {
                  goto LABEL_102;
                }

                goto LABEL_100;
              }

              goto LABEL_48;
            }

            if (v8 != 9)
            {
              if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v13 = *(this + 1);
                v12 = *(this + 2);
                v49 = 0;
                if (v13 >= v12)
                {
                  goto LABEL_113;
                }

                goto LABEL_111;
              }

              goto LABEL_48;
            }

            if (v9 != 5)
            {
              goto LABEL_48;
            }

LABEL_107:
            v49 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v49) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 36) = v49;
            *(a1 + 44) |= 0x100u;
            v46 = *(this + 1);
            v12 = *(this + 2);
            if (v46 < v12 && *v46 == 80)
            {
              v13 = v46 + 1;
              *(this + 1) = v13;
              v49 = 0;
              if (v13 >= v12)
              {
                goto LABEL_113;
              }

LABEL_111:
              v47 = *v13;
              if ((v47 & 0x80000000) != 0)
              {
LABEL_113:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
                if (!result)
                {
                  return result;
                }

                v47 = v49;
                v48 = *(this + 1);
                v12 = *(this + 2);
                goto LABEL_115;
              }

              v48 = v13 + 1;
              *(this + 1) = v48;
LABEL_115:
              *(a1 + 34) = v47 != 0;
              *(a1 + 44) |= 0x200u;
              if (v48 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_48;
          }

          v49 = 0;
          v18 = *(this + 1);
          v14 = *(this + 2);
          if (v18 >= v14 || (v19 = *v18, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
            if (!result)
            {
              return result;
            }

            v19 = v49;
            v20 = *(this + 1);
            v14 = *(this + 2);
          }

          else
          {
            v20 = v18 + 1;
            *(this + 1) = v20;
          }

          *(a1 + 24) = v19 != 0;
          *(a1 + 44) |= 1u;
          if (v20 < v14 && *v20 == 16)
          {
            v15 = v20 + 1;
            *(this + 1) = v15;
            v49 = 0;
            if (v15 >= v14)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }
        }

        else
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_48;
          }

          v15 = *(this + 1);
          v14 = *(this + 2);
          v49 = 0;
          if (v15 >= v14)
          {
LABEL_58:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
            if (!result)
            {
              return result;
            }

            v25 = v49;
            v26 = *(this + 1);
            v14 = *(this + 2);
            goto LABEL_60;
          }

LABEL_56:
          v25 = *v15;
          if ((v25 & 0x80000000) != 0)
          {
            goto LABEL_58;
          }

          v26 = v15 + 1;
          *(this + 1) = v26;
LABEL_60:
          *(a1 + 25) = v25 != 0;
          v27 = *(a1 + 44) | 2;
          *(a1 + 44) = v27;
          if (v26 < v14 && *v26 == 26)
          {
            *(this + 1) = v26 + 1;
            *(a1 + 44) = v27 | 4;
            v21 = *(a1 + 16);
            if (!v21)
            {
LABEL_63:
              operator new();
            }

            goto LABEL_64;
          }
        }
      }

      if (v8 == 3)
      {
        break;
      }

      if (v8 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v23 = *(this + 1);
        v10 = *(this + 2);
        v49 = 0;
        if (v23 >= v10)
        {
LABEL_78:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
          if (!result)
          {
            return result;
          }

          v37 = v49;
          v38 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_80;
        }

LABEL_76:
        v37 = *v23;
        if ((v37 & 0x80000000) != 0)
        {
          goto LABEL_78;
        }

        v38 = v23 + 1;
        *(this + 1) = v38;
LABEL_80:
        *(a1 + 26) = v37 != 0;
        *(a1 + 44) |= 8u;
        if (v38 < v10 && *v38 == 40)
        {
          v11 = v38 + 1;
          *(this + 1) = v11;
          v49 = 0;
          if (v11 >= v10)
          {
            goto LABEL_85;
          }

LABEL_83:
          v39 = *v11;
          if ((v39 & 0x80000000) != 0)
          {
LABEL_85:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49);
            if (!result)
            {
              return result;
            }

            v39 = v49;
            v40 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_87;
          }

          v40 = v11 + 1;
          *(this + 1) = v40;
LABEL_87:
          *(a1 + 27) = v39 != 0;
          *(a1 + 44) |= 0x10u;
          if (v40 < v10 && *v40 == 53)
          {
            *(this + 1) = v40 + 1;
            v49 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v49) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_90;
          }
        }
      }

      else
      {
        if (v8 == 5 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          v49 = 0;
          if (v11 >= v10)
          {
            goto LABEL_85;
          }

          goto LABEL_83;
        }

LABEL_48:
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

    if (v9 != 2)
    {
      goto LABEL_48;
    }

    *(a1 + 44) |= 4u;
    v21 = *(a1 + 16);
    if (!v21)
    {
      goto LABEL_63;
    }

LABEL_64:
    v49 = 0;
    v28 = *(this + 1);
    if (v28 >= *(this + 2) || *v28 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v49))
      {
        return 0;
      }
    }

    else
    {
      v49 = *v28;
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
    if (!sub_245A6F63C(v21, this, v31, v32) || *(this + 36) != 1)
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
    v10 = *(this + 2);
    if (v36 < v10 && *v36 == 32)
    {
      v23 = v36 + 1;
      *(this + 1) = v23;
      v49 = 0;
      if (v23 >= v10)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }
  }
}

uint64_t sub_245A707C0(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_15:
      if (*(v5 + 16))
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
        v6 = *(v5 + 44);
        if ((v6 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v10 = *(qword_28144B8E8 + 16);
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
        v6 = *(v5 + 44);
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

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 25), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 26), a2, a4);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 27), a2, a4);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 28), a3);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 33), a2, a4);
  v6 = *(v5 + 44);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 36), a3);
  if ((*(v5 + 44) & 0x200) == 0)
  {
LABEL_11:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 34), a2, a4);
  v11 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_26:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

uint64_t sub_245A70964(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
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

      goto LABEL_15;
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

    goto LABEL_21;
  }

LABEL_15:
  v9 = *(a1 + 16);
  if (!v9)
  {
    v9 = *(qword_28144B8E8 + 16);
  }

  v10 = a1;
  *a2 = 26;
  v11 = *(v9 + 32);
  if (v11 > 0x7F)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, (a2 + 1), a3);
  }

  else
  {
    a2[1] = v11;
    v12 = (a2 + 2);
  }

  a2 = sub_245A6FB00(v9, v12, a3);
  a1 = v10;
  v3 = *(v10 + 44);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = *(a1 + 26);
  *a2 = 32;
  a2[1] = v13;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = *(a1 + 27);
  *a2 = 40;
  a2[1] = v14;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = *(a1 + 28);
  *a2 = 53;
  *(a2 + 1) = v15;
  a2 += 5;
  v3 = *(a1 + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = *(a1 + 32);
  *a2 = 56;
  a2[1] = v16;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = *(a1 + 33);
  *a2 = 64;
  a2[1] = v17;
  a2 += 2;
  v3 = *(a1 + 44);
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = *(a1 + 36);
  *a2 = 77;
  *(a2 + 1) = v18;
  a2 += 5;
  if ((*(a1 + 44) & 0x200) == 0)
  {
LABEL_11:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = *(a1 + 34);
  *a2 = 80;
  a2[1] = v19;
  a2 += 2;
  v20 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v20;
  if (!v20)
  {
    return a2;
  }

LABEL_28:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_245A70B70(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2);
    if ((v3 & 4) != 0)
    {
      v5 = *(a1 + 16);
      if (!v5)
      {
        v5 = *(qword_28144B8E8 + 16);
      }

      v6 = v5[9];
      v7 = ((v6 >> 1) & 2) + (v6 & 2) + ((v6 >> 2) & 2) + ((v6 >> 3) & 2) + (((v6 << 31) >> 31) & 9);
      if ((v6 & 0x20) != 0)
      {
        v7 += 5;
      }

      if (v5[9])
      {
        LODWORD(v8) = v7;
      }

      else
      {
        LODWORD(v8) = 0;
      }

      v9 = *(v5 + 1);
      if (!v9 || *v9 == v9[1])
      {
        v5[8] = v8;
        v10 = 1;
      }

      else
      {
        v8 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v5 + 2), a2) + v8);
        v5[8] = v8;
        if (v8 >= 0x80)
        {
          v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
        }

        else
        {
          v10 = 1;
        }
      }

      v4 += v8 + v10 + 1;
      v3 = *(a1 + 44);
    }

    v12 = ((v3 >> 2) & 2) + v4 + ((v3 >> 3) & 2);
    if ((v3 & 0x20) != 0)
    {
      v12 += 5;
    }

    v11 = ((v3 >> 6) & 2) + ((v3 >> 5) & 2) + v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 + 5;
  if ((v3 & 0x100) == 0)
  {
    v13 = v11;
  }

  v14 = v13 + ((v3 >> 8) & 2);
  if ((v3 & 0xFF00) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  v16 = *(a1 + 8);
  if (v16 && *v16 != v16[1])
  {
    v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v15;
  }

  *(a1 + 40) = v15;
  return v15;
}

uint64_t sub_245A70CFC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_28589FA50, 0);
  if (v5)
  {
    return sub_245A5B7D8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A70DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A70DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A70E04(uint64_t result, uint64_t a2)
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

uint64_t sub_245A70E98()
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

  return qword_28144B688;
}

void sub_245A70F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A716A4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 32);
  v7 = v6[2];
  v17 = objc_msgSend__defaultErrHandlerForCaller_(v6, a2, a3, a4, a5, @"retrieveLocationRelevancyDuration:");
  v12 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v8, v9, v10, v11);
  objc_msgSend_retrieveLocationRelevancyDurationWithCompletionHandler_(v12, v13, v14, v15, v16, *(a1 + 40));
}

uint64_t sub_245A71754(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245D78D90](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_245A71790(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id sub_245A719D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_245A71A10(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id sub_245A71D5C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_245A71D98(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A71F84(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3321888768;
  v3[2] = sub_245A72038;
  v3[3] = &unk_28589FAF8;
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4 = v2;
  (*(v1 + 16))(v1, v3);
}

id sub_245A72040(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id sub_245A72210(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_245A7233C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_245A7248C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_245A7274C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245D78D90](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_245A72788(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A728BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_245A728F0()
{
  v0 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v1 = qword_28144B278;
  qword_28144B278 = v0;
}

void sub_245A72EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_245A72F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_withinQueueReinitializeRemoteState(WeakRetained, v1, v2, v3, v4);
}

void sub_245A73190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = CLIndoorXPCProvider;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_245A731EC(uint64_t a1)
{
  if (qword_28144B270 != -1)
  {
    sub_245A8E5C8();
    v2 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      return objc_msgSend_withinQueueInvalidate(*(a1 + 32), v3, v4, v5, v6);
    }

    goto LABEL_3;
  }

  v2 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v8 = 0;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "performing dealloc", v8, 2u);
  }

  return objc_msgSend_withinQueueInvalidate(*(a1 + 32), v3, v4, v5, v6);
}

id sub_245A7328C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_245A73354(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (qword_28144B270 != -1)
  {
    sub_245A8E5C8();
  }

  v2 = qword_28144B278;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_msgSend_impl(*(a1 + 32), v3, v4, v5, v6);
    v12 = objc_msgSend_endpointName(v7, v8, v9, v10, v11);
    v19 = 138543362;
    v20 = v12;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "invalidate %{public}@", &v19, 0xCu);
  }

  result = objc_msgSend_withinQueueInvalidate(*(a1 + 32), v13, v14, v15, v16);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_245A73470(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_245A73EA8(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (qword_28144B270 != -1)
  {
    sub_245A8E5C8();
  }

  v4 = qword_28144B278;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8);
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_245A2E000, v4, OS_LOG_TYPE_ERROR, "xpc error invoking %{public}@: %{public}@", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245A73FE8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245D78D90](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_245A74024(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A740C0()
{
  v0 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v1 = qword_28144B278;
  qword_28144B278 = v0;
}

void sub_245A74104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_245A741A8;
    block[3] = &unk_278E8AA68;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void sub_245A741B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_245A74254;
    block[3] = &unk_278E8AA68;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void sub_245A74254(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (v6[1])
  {
    v7 = objc_msgSend_impl(v6, a2, a3, a4, a5);
    v12 = objc_msgSend_withinQueuePermanentShutdownReason(v7, v8, v9, v10, v11);

    if (v12)
    {
      if (qword_28144B270 != -1)
      {
        sub_245A8E5C8();
      }

      v13 = qword_28144B278;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v18 = objc_msgSend_impl(*(a1 + 32), v14, v15, v16, v17);
        v23 = objc_msgSend_endpointName(v18, v19, v20, v21, v22);
        v28 = objc_msgSend_description(v12, v24, v25, v26, v27);
        v51 = 138543618;
        v52 = v23;
        v53 = 2114;
        v54 = v28;
        _os_log_impl(&dword_245A2E000, v13, OS_LOG_TYPE_DEBUG, "XPC connection invalidated by daemon to %{public}@: %{public}@", &v51, 0x16u);
      }

      objc_msgSend_withinQueueInvalidate(*(a1 + 32), v29, v30, v31, v32);
    }

    else
    {
      if (qword_28144B270 != -1)
      {
        sub_245A8E5C8();
      }

      v33 = qword_28144B278;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v38 = objc_msgSend_impl(*(a1 + 32), v34, v35, v36, v37);
        v43 = objc_msgSend_endpointName(v38, v39, v40, v41, v42);
        v51 = 138543618;
        v52 = v43;
        v53 = 2050;
        v54 = 5000;
        _os_log_impl(&dword_245A2E000, v33, OS_LOG_TYPE_INFO, "Invalidated pipelined XPC connection to %{public}@ - will retry in %{public}lld ms", &v51, 0x16u);
      }

      v44 = *(a1 + 32);
      v45.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      objc_msgSend_withinQueueHandleReconnect_(v44, v46, v47, v48, v49, v45.__d_.__rep_);
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_245A744B8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_245A75608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_245A758B8()
{
  v0 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v1 = qword_28144B278;
  qword_28144B278 = v0;
}

void sub_245A758FC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_245A76210(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (qword_28144B270 != -1)
  {
    sub_245A8E668();
  }

  v2 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v21 = 138412290;
    v22 = v7;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "setting up play-back of %@", &v21, 0xCu);
  }

  v8 = *(a1 + 32);
  v9 = v8[2];
  v10 = objc_msgSend__defaultErrHandlerForCaller_(v8, v3, v4, v5, v6, @"playbackDatarun:");
  v15 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v9, v11, v12, v13, v14, v10);
  objc_msgSend_playbackDatarun_(v15, v16, v17, v18, v19, *(a1 + 40));

  v20 = *MEMORY[0x277D85DE8];
}

id sub_245A76344(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_245A76380(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A76488(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  if (qword_28144B270 != -1)
  {
    sub_245A8E668();
  }

  v2 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(*(a1 + 32) + 16);
    v92 = 134217984;
    v93 = v7;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "[CLIndoorPositionProvider startUpdatingLocationAtLocation], _connection = %p", &v92, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = objc_msgSend_state(*(a1 + 32), v3, v4, v5, v6);
    objc_msgSend_setLastLocation_(v9, v10, v11, v12, v13, v8);
  }

  v14 = objc_msgSend_state(*(a1 + 32), v3, v4, v5, v6);
  updated = objc_msgSend_updateLocation(v14, v15, v16, v17, v18);

  if (updated)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E640();
    }

    v24 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v92) = 0;
      _os_log_impl(&dword_245A2E000, v24, OS_LOG_TYPE_ERROR, "[CLIndoorPositionProvider startUpdatingLocationAtLocation], already started", &v92, 2u);
    }
  }

  else
  {
    v25 = objc_msgSend_state(*(a1 + 32), v20, v21, v22, v23);
    v31 = objc_msgSend_lastLocation(v25, v26, v27, v28, v29);
    if (v31)
    {
      v35 = objc_msgSend_state(*(a1 + 32), v30, v32, v33, v34);
      v40 = objc_msgSend_lastLocation(v35, v36, v37, v38, v39);
      v41.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      isStaleFix = objc_msgSend_isStaleFix_(v40, v42, v43, v44, v45, v41.__d_.__rep_);

      if (!isStaleFix)
      {
        v51 = objc_msgSend_state(*(a1 + 32), v47, v48, v49, v50);
        objc_msgSend_setUpdateLocation_(v51, v52, v53, v54, v55, 1);

        v60 = objc_msgSend_state(*(a1 + 32), v56, v57, v58, v59);
        objc_msgSend_setPausedLocalization_(v60, v61, v62, v63, v64, 0);

        v65 = *(a1 + 32);
        v66 = v65[2];
        v71 = objc_msgSend__defaultErrHandlerForCaller_(v65, v67, v68, v69, v70, @"startUpdatingLocationAtLocation:");
        v76 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v66, v72, v73, v74, v75, v71);
        objc_msgSend_startUpdatingLocationAtLocation_(v76, v77, v78, v79, v80, *(a1 + 40));

        goto LABEL_21;
      }
    }

    else
    {
    }

    if (qword_28144B270 != -1)
    {
      sub_245A8E640();
    }

    v81 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      LOWORD(v92) = 0;
      _os_log_impl(&dword_245A2E000, v81, OS_LOG_TYPE_INFO, "WARNING: [CLIndoorPositionProvider startUpdatingLocationWithMode], no valid location", &v92, 2u);
    }

    v86 = objc_msgSend_state(*(a1 + 32), v82, v83, v84, v85);
    objc_msgSend_setPausedLocalization_(v86, v87, v88, v89, v90, 1);
  }

LABEL_21:
  v91 = *MEMORY[0x277D85DE8];
}

id sub_245A767C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_245A767FC(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A768D8(uint64_t a1)
{
  if (qword_28144B270 == -1)
  {
    v2 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_245A8E668();
  v2 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "[CLIndoorPositionProvider stopUpdatingLocation], stop request", buf, 2u);
  }

LABEL_4:
  v7 = objc_msgSend_state(*(a1 + 32), v3, v4, v5, v6);
  objc_msgSend_setPausedLocalization_(v7, v8, v9, v10, v11, 0);

  v16 = objc_msgSend_state(*(a1 + 32), v12, v13, v14, v15);
  updated = objc_msgSend_updateLocation(v16, v17, v18, v19, v20);

  if (updated)
  {
    v26 = objc_msgSend_state(*(a1 + 32), v22, v23, v24, v25);
    objc_msgSend_setUpdateLocation_(v26, v27, v28, v29, v30, 0);

    v31 = *(a1 + 32);
    v32 = v31[2];
    v37 = objc_msgSend__defaultErrHandlerForCaller_(v31, v33, v34, v35, v36, @"stopUpdatingLocation");
    v42 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v32, v38, v39, v40, v41, v37);
    objc_msgSend_stopUpdatingLocation(v42, v43, v44, v45, v46);

    return;
  }

  if (qword_28144B270 == -1)
  {
    v47 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:
      *v48 = 0;
      _os_log_impl(&dword_245A2E000, v47, OS_LOG_TYPE_DEBUG, "[CLIndoorPositionProvider stopUpdatingLocation], already stopped", v48, 2u);
    }
  }

  else
  {
    sub_245A8E640();
    v47 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }
  }
}

void sub_245A76A9C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_245A76AF4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_245A76BF4(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  if (qword_28144B270 != -1)
  {
    sub_245A8E668();
  }

  v2 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v86[0]) = 0;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "got outdoorLocationAvailabile", v86, 2u);
    v3 = (a1 + 40);
    if (*(a1 + 40))
    {
      if (qword_28144B270 != -1)
      {
        sub_245A8E640();
      }

      goto LABEL_8;
    }

    if (qword_28144B270 != -1)
    {
      sub_245A8E640();
    }
  }

  else
  {
    v3 = (a1 + 40);
    if (*(a1 + 40))
    {
LABEL_8:
      v4 = qword_28144B278;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_msgSend_state(*(a1 + 32), v5, v6, v7, v8);
        v14 = objc_msgSend_pausedLocalization(v9, v10, v11, v12, v13);
        v19 = objc_msgSend_state(*(a1 + 32), v15, v16, v17, v18);
        updated = objc_msgSend_updateLocation(v19, v20, v21, v22, v23);
        v86[0] = 67109376;
        v86[1] = v14;
        v87 = 1024;
        v88 = updated;
        _os_log_impl(&dword_245A2E000, v4, OS_LOG_TYPE_DEBUG, "[CLIndoorPositionProvider outdoorLocationAvailabile], state = %d,%d", v86, 0xEu);
      }

      v25 = *(a1 + 40);
      v30 = objc_msgSend_state(*(a1 + 32), v26, v27, v28, v29);
      objc_msgSend_setLastLocation_(v30, v31, v32, v33, v34, v25);

      v35 = *(a1 + 32);
      v36 = v35[2];
      v41 = objc_msgSend__defaultErrHandlerForCaller_(v35, v37, v38, v39, v40, @"outdoorLocationAvailable");
      v46 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v36, v42, v43, v44, v45, v41);
      objc_msgSend_outdoorLocationAvailable_(v46, v47, v48, v49, v50, *v3);

      v55 = objc_msgSend_state(*(a1 + 32), v51, v52, v53, v54);
      LODWORD(v46) = objc_msgSend_pausedLocalization(v55, v56, v57, v58, v59);

      if (v46)
      {
        v64 = objc_msgSend_state(*(a1 + 32), v60, v61, v62, v63);
        objc_msgSend_setPausedLocalization_(v64, v65, v66, v67, v68, 0);

        v69 = *(a1 + 32);
        v74 = objc_msgSend_state(v69, v70, v71, v72, v73);
        v79 = objc_msgSend_lastLocation(v74, v75, v76, v77, v78);
        objc_msgSend_startUpdatingLocationAtLocation_(v69, v80, v81, v82, v83, v79);
      }

      goto LABEL_16;
    }
  }

  v84 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v86[0]) = 0;
    _os_log_impl(&dword_245A2E000, v84, OS_LOG_TYPE_ERROR, "[CLIndoorPositionProvider outdoorLocationAvailable], got nil position", v86, 2u);
  }

LABEL_16:
  v85 = *MEMORY[0x277D85DE8];
}

id sub_245A76F04(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_245A76F40(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A77048(uint64_t a1)
{
  if (qword_28144B270 != -1)
  {
    sub_245A8E668();
    v2 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v19 = 0;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "gpsEstimateAvailable", v19, 2u);
  }

LABEL_4:
  v7 = *(a1 + 32);
  v8 = v7[2];
  v9 = objc_msgSend__defaultErrHandlerForCaller_(v7, v3, v4, v5, v6, @"gpsEstimateAvailable");
  v14 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v10, v11, v12, v13, v9);
  objc_msgSend_gpsEstimateAvailable_(v14, v15, v16, v17, v18, *(a1 + 40));
}

id sub_245A77158(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_245A77194(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A7729C(uint64_t a1)
{
  if (qword_28144B270 != -1)
  {
    sub_245A8E668();
    v2 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v19 = 0;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "gpsSignalQualityAvailable", v19, 2u);
  }

LABEL_4:
  v7 = *(a1 + 32);
  v8 = v7[2];
  v9 = objc_msgSend__defaultErrHandlerForCaller_(v7, v3, v4, v5, v6, @"gpsSignalQualityAvailable");
  v14 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v10, v11, v12, v13, v9);
  objc_msgSend_gpsSignalQualityAvailable_(v14, v15, v16, v17, v18, *(a1 + 40));
}

id sub_245A773AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_245A773E8(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A774F0(uint64_t a1)
{
  if (qword_28144B270 != -1)
  {
    sub_245A8E668();
    v2 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v19 = 0;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "clVisionNotificationAvailable", v19, 2u);
  }

LABEL_4:
  v7 = *(a1 + 32);
  v8 = v7[2];
  v9 = objc_msgSend__defaultErrHandlerForCaller_(v7, v3, v4, v5, v6, @"clVisionNotificationAvailable");
  v14 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v10, v11, v12, v13, v9);
  objc_msgSend_clVisionNotificationAvailable_(v14, v15, v16, v17, v18, *(a1 + 40));
}

id sub_245A77600(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_245A7763C(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A77744(uint64_t a1)
{
  if (qword_28144B270 != -1)
  {
    sub_245A8E668();
    v2 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v19 = 0;
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_DEBUG, "clpOutdoorEstimatorLogEntryNotificationAvailable", v19, 2u);
  }

LABEL_4:
  v7 = *(a1 + 32);
  v8 = v7[2];
  v9 = objc_msgSend__defaultErrHandlerForCaller_(v7, v3, v4, v5, v6, @"clpOutdoorEstimatorLogEntryNotificationAvailable");
  v14 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v10, v11, v12, v13, v9);
  objc_msgSend_clpOutdoorEstimatorLogEntryNotificationAvailable_(v14, v15, v16, v17, v18, *(a1 + 40));
}

id sub_245A77854(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_245A77890(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_245A778F4()
{
  v0 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v1 = qword_28144B278;
  qword_28144B278 = v0;
}

void sub_245A77938()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_245A77BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, ...)
{
  va_start(va, a5);
  if (a5 == 1)
  {
    sub_245A38D60(va);
  }

  _Unwind_Resume(a1);
}

void sub_245A77CF0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_245A782E4()
{
  if (qword_28144B270 == -1)
  {
    v1 = qword_28144B278;
  }

  else
  {
    sub_245A8E67C();
    v1 = qword_28144B278;
  }

  return v1;
}

void sub_245A7A100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, void *a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  sub_245A30368(v50 - 240);

  _Unwind_Resume(a1);
}

void sub_245A7A5EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_245A7AEA4()
{
  v0 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v1 = qword_28144B278;
  qword_28144B278 = v0;
}

uint64_t *sub_245A7AEE8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void sub_245A7B134()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_245A7B168()
{
  if (qword_28144B270 == -1)
  {
    v1 = qword_28144B278;
  }

  else
  {
    sub_245A8EBA4();
    v1 = qword_28144B278;
  }

  return v1;
}

uint64_t sub_245A7B1C0(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_245A7B400(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);

  _Unwind_Resume(a1);
}

void sub_245A7DF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  MEMORY[0x245D78870](v23, 0x10A1C40EE0660CCLL);

  sub_245A39274(v24 - 240);
  _Unwind_Resume(a1);
}

uint64_t sub_245A7E320(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  result = wireless_diagnostics::google::protobuf::MessageLite::SerializeToZeroCopyStream();
  if ((result & 1) == 0)
  {
    v4 = sub_245A7E810();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      (*(*a1 + 16))(__p, a1);
      v5 = v10 >= 0 ? __p : __p[0];
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2081;
      v16 = v5;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "serialized";
      _os_log_impl(&dword_245A2E000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed to serialize-append properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_245A7E810();
    if (os_signpost_enabled(v6))
    {
      (*(*a1 + 16))(__p, a1);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2081;
      v16 = v7;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "serialized";
      _os_signpost_emit_with_name_impl(&dword_245A2E000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to serialize-append properly", "{msg%{public}.0s:Failed to serialize-append properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_245A7E810();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 16))(__p, a1);
      sub_245A8EBB8(__p, buf, v8);
    }

    abort_report_np();
    __break(1u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245A7E600()
{
  v0 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v1 = qword_28144B278;
  qword_28144B278 = v0;
}

uint64_t sub_245A7E644(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    v3 = sub_245A37CE8(v2);
    MEMORY[0x245D78870](v3, 0x1000C4052888210);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 8);
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_245A7E744(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28589FF48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A7E798(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

id sub_245A7E810()
{
  if (qword_27EE33000 == -1)
  {
    v1 = qword_27EE33008;
  }

  else
  {
    sub_245A8EC6C();
    v1 = qword_27EE33008;
  }

  return v1;
}

void sub_245A7E868()
{
  v0 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v1 = qword_27EE33008;
  qword_27EE33008 = v0;
}

void sub_245A7E8AC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_245A7EB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_245A80A4C(v9);

  _Unwind_Resume(a1);
}

void sub_245A7F1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_245A312EC(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_245A7F328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::exception a14)
{
  std::exception::~exception(&a14);

  _Unwind_Resume(a1);
}

void *sub_245A7F3B4(void *result, void *a2)
{
  result[1] = 0;
  v2 = result + 1;
  result[2] = 0;
  *result = result + 1;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = result;
    do
    {
      result = sub_245A8089C(v5, v2, &v10, &v9, v4 + 4);
      if (!*result)
      {
        operator new();
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

void sub_245A7F50C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_245A32258(a1, *a2, a2 + 1);
  }
}

void sub_245A7F67C(uint64_t a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_245A7F6E8(exception, a1, a2);
  __cxa_throw(exception, &unk_2858A0010, sub_245A7F764);
}

int8x16_t sub_245A7F6E8(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_2858A0068;
  *(a1 + 8) = &unk_2858A0098;
  *(a1 + 16) = &unk_2858A00C0;
  *(a1 + 48) = a3[1].i32[0];
  result = vextq_s8(*a3, *a3, 8uLL);
  *(a1 + 32) = result;
  return result;
}

std::exception *sub_245A7F764(std::exception *a1)
{
  a1[2].__vftable = &unk_2858A0138;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void sub_245A7F934(_Unwind_Exception *a1)
{
  std::exception::~exception(v3);
  MEMORY[0x245D78870](v1, v2);
  _Unwind_Resume(a1);
}

void sub_245A7F988(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_245A7FDA0(exception, a1);
  __cxa_throw(exception, &unk_2858A0010, sub_245A7F764);
}

void sub_245A7F9E4(std::exception *a1)
{
  a1[2].__vftable = &unk_2858A0138;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  JUMPOUT(0x245D78870);
}

void sub_245A7FA88(std::exception *a1)
{
  a1[1].__vftable = &unk_2858A0138;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

void sub_245A7FB1C(std::exception *a1)
{
  a1[1].__vftable = &unk_2858A0138;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);

  JUMPOUT(0x245D78870);
}

void sub_245A7FBD8(std::exception *a1)
{
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);
}

void sub_245A7FC60(std::exception *a1)
{
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);

  JUMPOUT(0x245D78870);
}

void sub_245A7FD04(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x245D78870);
}

void *sub_245A7FD3C(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

__n128 sub_245A7FDA0(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &unk_2858A00E0;
  a1->n128_u64[1] = &unk_2858A0110;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &unk_2858A0138;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &unk_2858A0068;
  a1->n128_u64[1] = &unk_2858A0098;
  a1[1].n128_u64[0] = &unk_2858A00C0;
  return result;
}

uint64_t sub_245A7FED4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_245A80054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_245A7FD3C(&a9);
  sub_245A7FD3C(&a10);
  _Unwind_Resume(a1);
}

void sub_245A80074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_245A7FD3C(va);
  _Unwind_Resume(a1);
}

void sub_245A80088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_245A7FD3C(va);
  _Unwind_Resume(a1);
}

double sub_245A8009C(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  a8[1] = -(*a8 - *a4 * *a5);
  v10 = *a9;
  v11 = -(*a9 - *a6 * *a7);
  a9[1] = v11;
  v12 = a8[1];
  v13 = v12 - v11;
  v14 = v12 - (v12 - v11) - v11 + v12 - (v12 - v11 + v12 - (v12 - v11));
  v15 = *a8 + v13;
  v16 = v13 - (v15 - *a8) + *a8 - (v15 - (v15 - *a8));
  v66 = v14;
  v67 = v16 - (v16 - v10) - v10 + v16 - (v16 - v10 + v16 - (v16 - v10));
  v68 = v16 - v10 - (v15 + v16 - v10 - v15) + v15 - (v15 + v16 - v10 - (v15 + v16 - v10 - v15));
  v69 = v15 + v16 - v10;
  result = v14 + 0.0 + v67 + v68 + v69;
  v18 = fabs(result);
  if (v18 < *a10 * 2.22044605e-16)
  {
    a4[1] = *a1 - *a4 - *a3 + *a1 - (*a4 + *a1 - *a4);
    a5[1] = a2[1] - *a5 - a3[1] + a2[1] - (*a5 + a2[1] - *a5);
    a6[1] = a1[1] - *a6 - a3[1] + a1[1] - (*a6 + a1[1] - *a6);
    v19 = *a7;
    v20 = *a2 - *a7 - *a3 + *a2 - (*a7 + *a2 - *a7);
    a7[1] = v20;
    v21 = a4[1];
    v22 = a6[1];
    v23 = a5[1];
    if (v21 != 0.0 || v22 != 0.0 || v23 != 0.0 || v20 != 0.0)
    {
      v24 = v18 * 3.33066907e-16 + *a10 * 1.10933565e-31;
      v25 = v21 * *a5;
      v26 = v19 * v22;
      result = result + v25 + *a4 * v23 - (v19 * v22 + *a6 * v20);
      if (fabs(result) < v24)
      {
        v27 = -(v25 - v21 * *a5);
        v28 = -(v26 - v22 * v19);
        v29 = v27 - v28;
        v30 = v27 - (v27 - v28) - v28 + v27 - (v27 - v28 + v27 - (v27 - v28));
        v31 = v25 + v29;
        v32 = v29 - (v25 + v29 - v25) + v25 - (v25 + v29 - (v25 + v29 - v25));
        v59 = v30;
        v60 = v32 - (v32 - v26) - v26 + v32 - (v32 - v26 + v32 - (v32 - v26));
        v61 = v32 - v26 - (v31 + v32 - v26 - v31) + v31 - (v31 + v32 - v26 - (v31 + v32 - v26 - v31));
        v62 = v31 + v32 - v26;
        v37 = sub_245A8049C(&v66, &v59, v65, 4, 4);
        v38 = a5[1];
        v39 = a4[1];
        v40 = *a4 * v38;
        v41 = -(v40 - v40);
        v42 = a7[1];
        v43 = a6[1];
        v44 = *a6 * v42;
        v45 = -(v44 - v44);
        v46 = v41 - v45;
        v47 = v41 - (v41 - v45) - v45 + v41 - (v41 - v45 + v41 - (v41 - v45));
        v48 = v40 + v46;
        v49 = v46 - (v40 + v46 - v40) + v40 - (v40 + v46 - (v40 + v46 - v40));
        v59 = v47;
        v60 = v49 - (v49 - v44) - v44 + v49 - (v49 - v44 + v49 - (v49 - v44));
        v61 = v49 - v44 - (v48 + v49 - v44 - v48) + v48 - (v48 + v49 - v44 - (v48 + v49 - v44 - v48));
        v62 = v48 + v49 - v44;
        v50 = v38 * v39;
        v51 = -(v38 * v39 - v39 * v38);
        v52 = v42 * v43;
        v53 = -(v42 * v43 - v43 * v42);
        v54 = v51 - v53;
        v55 = v51 - (v51 - v53) - v53 + v51 - (v51 - v53 + v51 - (v51 - v53));
        v56 = v50 + v54;
        v57 = v54 - (v50 + v54 - v50) + v50 - (v50 + v54 - (v50 + v54 - v50));
        v63[0] = v55;
        v63[1] = v57 - (v57 - v52) - v52 + v57 - (v57 - v52 + v57 - (v57 - v52));
        v63[2] = v57 - v52 - (v56 + v57 - v52 - v56) + v56 - (v56 + v57 - v52 - (v56 + v57 - v52 - v56));
        v63[3] = v56 + v57 - v52;
        v58 = sub_245A8049C(&v59, v63, v64, 4, 4);
        return *(&v59 + sub_245A8049C(v65, v64, &v59, v37, v58) - 1);
      }
    }
  }

  return result;
}

uint64_t sub_245A8049C(double *a1, double *a2, double *a3, int a4, int a5)
{
  v6 = *a2;
  v7 = fabs(*a2);
  v8 = fabs(*a1);
  v9 = v7 <= v8;
  v10 = v7 > v8;
  if (v7 > v8)
  {
    v6 = *a1;
  }

  if (v10 >= a4 || v9 >= a5)
  {
    result = 0;
    goto LABEL_34;
  }

  v13 = v7 <= v8;
  v14 = a2[v7 <= v8];
  v15 = fabs(v14);
  v16 = fabs(a1[v10]);
  if (v13)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if (v13)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = v15 <= v16;
  if (v15 <= v16)
  {
    v20 = v14;
  }

  else
  {
    v20 = a1[v10];
  }

  if (v19)
  {
    v9 = v17;
  }

  if (!v19)
  {
    v10 = v18;
  }

  v21 = v6 + v20;
  v22 = v6 - (v6 + v20 - v20);
  if (v22 == 0.0)
  {
    result = 0;
    v6 = v21;
    if (v10 >= a4 || v9 >= a5)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *a3 = v22;
    result = 1;
    v6 = v21;
    if (v10 >= a4 || v9 >= a5)
    {
      goto LABEL_34;
    }
  }

  do
  {
    v30 = v6;
    v31 = fabs(a2[v9]);
    v32 = fabs(a1[v10]);
    v33 = v31 <= v32;
    if (v31 > v32)
    {
      v34 = a1[v10];
    }

    else
    {
      v34 = a2[v9];
    }

    if (v33)
    {
      ++v9;
    }

    else
    {
      ++v10;
    }

    v6 = v6 + v34;
    v35 = v34 - (v30 + v34 - v30) + v30 - (v30 + v34 - (v30 + v34 - v30));
    if (v35 != 0.0)
    {
      a3[result] = v35;
      result = (result + 1);
    }
  }

  while (v10 < a4 && v9 < a5);
LABEL_34:
  if (v10 < a4)
  {
    v25 = &a1[v10];
    v26 = a4 - v10;
    do
    {
      v27 = v6;
      v6 = v6 + *v25;
      v28 = *v25 - (v6 - v27) + v27 - (v6 - (v6 - v27));
      if (v28 != 0.0)
      {
        a3[result] = v28;
        result = (result + 1);
      }

      ++v25;
      --v26;
    }

    while (v26);
  }

  if (v9 < a5)
  {
    v36 = &a2[v9];
    v37 = a5 - v9;
    do
    {
      v38 = v6;
      v6 = v6 + *v36;
      v39 = *v36 - (v6 - v38) + v38 - (v6 - (v6 - v38));
      if (v39 != 0.0)
      {
        a3[result] = v39;
        result = (result + 1);
      }

      ++v36;
      --v37;
    }

    while (v37);
  }

  if (v6 != 0.0 || result == 0)
  {
    a3[result] = v6;
    return (result + 1);
  }

  return result;
}

void *sub_245A80670(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_245A7B094();
  }

  return result;
}

void sub_245A80798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_245A807B8(&a11);
  *(v11 + 8) = v12;
  sub_245A80818(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_245A807B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_245A80818(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_245A8089C(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void ***sub_245A80A4C(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_245A80AC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *sub_245A80B28(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_245A7B094();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_245A3C610();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v5;
  v15 = v5;
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245A3C1B4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v5[23] = v7;
  if (v7)
  {
    memmove(v5, v6, v7);
  }

  v5[v8] = 0;
  v9 = v5 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v14[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_245A80CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_245A80AC0(va);
  _Unwind_Resume(a1);
}

void sub_245A822E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_245A826A4()
{
  if (qword_28144B270 == -1)
  {
    v1 = qword_28144B278;
  }

  else
  {
    sub_245A8EDEC();
    v1 = qword_28144B278;
  }

  return v1;
}

void sub_245A8277C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_245A82794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + 96);
  if (!v2)
  {
    v2 = *(qword_28144B968 + 96);
  }

  return sub_245A4A840(a2, v2);
}

uint64_t sub_245A827E0@<X0>(void *a1@<X8>)
{
  v10 = 0;
  v11 = 0uLL;
  v12 = -1;
  std::bad_alloc::bad_alloc(&v13);
  v9 = &unk_2858A0178;
  v13.__vftable = &unk_2858A0198;
  v5 = 0;
  v6 = 0uLL;
  v7 = -1;
  v4 = &unk_2858A0200;
  v8[0].__vftable = &unk_2858A0230;
  v8[1].__vftable = &unk_2858A0270;
  sub_245A7FED4(&v4, &v9);
  *&v6 = "exception_ptr boost::exception_detail::get_static_exception_object() [Exception = boost::exception_detail::bad_alloc_]";
  *(&v6 + 1) = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/exception/detail/exception_ptr.hpp";
  v7 = 174;
  if ((atomic_load_explicit(&qword_28144B2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28144B2C8))
  {
    operator new();
  }

  v2 = *algn_28144B298;
  *a1 = qword_28144B290;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  std::bad_alloc::~bad_alloc(v8);
  v4 = &unk_2858A0138;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  std::bad_alloc::~bad_alloc(&v13);
  v9 = &unk_2858A0138;
  result = v10;
  if (v10)
  {
    return (*(*v10 + 32))(v10);
  }

  return result;
}

void sub_245A82AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6.__vftable = va_arg(va1, std::bad_alloc_vtbl *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  MEMORY[0x245D78870](v4, 0x10F1C4085500448);
  __cxa_guard_abort(&qword_28144B2C8);
  sub_245A83CF0(va);
  sub_245A832B8(va1);
  _Unwind_Resume(a1);
}

void sub_245A82B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_245A832B8(va);
  _Unwind_Resume(a1);
}

void sub_245A82B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::bad_alloc_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_245A832B8(va);
  sub_245A832B8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A82B50(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_245A82BFC@<X0>(void *a1@<X8>)
{
  v10 = 0;
  v11 = 0uLL;
  v12 = -1;
  v9 = &unk_2858A0358;
  v13.__vftable = &unk_2858A0378;
  v6 = 0uLL;
  v7 = -1;
  v4 = &unk_2858A03E0;
  v5 = 0;
  v8[0].__vftable = &unk_2858A0410;
  v8[1].__vftable = &unk_2858A0450;
  sub_245A7FED4(&v4, &v9);
  *&v6 = "exception_ptr boost::exception_detail::get_static_exception_object() [Exception = boost::exception_detail::bad_exception_]";
  *(&v6 + 1) = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/exception/detail/exception_ptr.hpp";
  v7 = 174;
  if ((atomic_load_explicit(&qword_28144B2C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28144B2C0))
  {
    operator new();
  }

  v2 = *algn_28144B288;
  *a1 = qword_28144B280;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  std::bad_exception::~bad_exception(v8);
  v4 = &unk_2858A0138;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  std::bad_exception::~bad_exception(&v13);
  v9 = &unk_2858A0138;
  result = v10;
  if (v10)
  {
    return (*(*v10 + 32))(v10);
  }

  return result;
}

void sub_245A82E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6.__vftable = va_arg(va1, std::bad_exception_vtbl *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  MEMORY[0x245D78870](v4, 0x10F1C4085500448);
  __cxa_guard_abort(&qword_28144B2C0);
  sub_245A849A0(va);
  sub_245A84040(va1);
  _Unwind_Resume(a1);
}

void sub_245A82EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::bad_exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_245A84040(va);
  sub_245A84040(va1);
  _Unwind_Resume(a1);
}

void sub_245A82EF8()
{
  v0 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v1 = qword_28144B278;
  qword_28144B278 = v0;
}

__n128 sub_245A82F3C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = &unk_2858A00E0;
  v3 = a2->n128_u64[1];
  a1->n128_u64[0] = &unk_2858A0138;
  a1->n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[1];
  a1[2].n128_u32[0] = a2[2].n128_u32[0];
  a1[1] = result;
  a1->n128_u64[0] = &unk_2858A0200;
  a1[2].n128_u64[1] = &unk_2858A0230;
  a1[3].n128_u64[0] = &unk_2858A0270;
  return result;
}

uint64_t sub_245A83040(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void sub_245A830FC(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1 + 5);
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A8319C(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);
  *(v2 - 40) = &unk_2858A0138;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_245A83218(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);
  *(v2 - 40) = &unk_2858A0138;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

std::bad_alloc *sub_245A832B8(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1 + 5);
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  return a1;
}

void sub_245A83338(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1 + 5);
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

void sub_245A83458(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_245A82F3C(exception, a1);
  __cxa_throw(exception, &unk_2858A02A0, sub_245A830EC);
}

uint64_t sub_245A834B4(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);
  *(v2 - 40) = &unk_2858A0138;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_245A83530(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);
  *(v2 - 40) = &unk_2858A0138;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

void sub_245A83738(_Unwind_Exception *a1)
{
  v4 = sub_245A832B8(v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

void sub_245A83754(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x38uLL);
  sub_245A82F3C(exception, (a1 + v2));
  __cxa_throw(exception, &unk_2858A02A0, sub_245A830EC);
}

uint64_t sub_245A837C8(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  std::bad_alloc::~bad_alloc(v1 + 5);
  v1->__vftable = &unk_2858A0138;
  result = v1[1].__vftable;
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      v1[1].__vftable = 0;
    }
  }

  return result;
}

void sub_245A83858(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  std::bad_alloc::~bad_alloc(v1 + 5);
  v1->__vftable = &unk_2858A0138;
  v2 = v1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    v1[1].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A8390C(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_2858A00E0;
  v3 = *(a2 + 8);
  *a1 = &unk_2858A0138;
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = a2;
    (*(*v3 + 24))(v3);
    a2 = v4;
  }

  v5 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v5;
  *a1 = &unk_2858A0200;
  *(a1 + 40) = &unk_2858A0230;
  *(a1 + 48) = &unk_2858A0270;
  sub_245A7FED4(a1, a2);
  return a1;
}

void sub_245A83A2C(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a2 + *(*a2 - 24);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = 0;
  sub_245A83AA0();
}

void sub_245A83B8C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_245A8EF6C(v1);
  }

  __cxa_rethrow();
}

atomic_uint **sub_245A83BB8(atomic_uint **result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_245A83C7C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_245A83CAC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

std::bad_alloc *sub_245A83CF0(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1 + 5);
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  return a1;
}

__n128 sub_245A83D70(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = &unk_2858A00E0;
  v3 = a2->n128_u64[1];
  a1->n128_u64[0] = &unk_2858A0138;
  a1->n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[1];
  a1[2].n128_u32[0] = a2[2].n128_u32[0];
  a1[1] = result;
  a1->n128_u64[0] = &unk_2858A03E0;
  a1[2].n128_u64[1] = &unk_2858A0410;
  a1[3].n128_u64[0] = &unk_2858A0450;
  return result;
}

void sub_245A83E84(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1 + 5);
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A83F24(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1);
  *(v2 - 40) = &unk_2858A0138;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_245A83FA0(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1);
  *(v2 - 40) = &unk_2858A0138;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

std::bad_exception *sub_245A84040(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1 + 5);
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  return a1;
}

void sub_245A840C0(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1 + 5);
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

void sub_245A841E0(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_245A83D70(exception, a1);
  __cxa_throw(exception, &unk_2858A0480, sub_245A83E74);
}

uint64_t sub_245A8423C(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1);
  *(v2 - 40) = &unk_2858A0138;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_245A842B8(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1);
  *(v2 - 40) = &unk_2858A0138;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

void sub_245A844C0(_Unwind_Exception *a1)
{
  v4 = sub_245A84040(v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

void sub_245A844DC(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x38uLL);
  sub_245A83D70(exception, (a1 + v2));
  __cxa_throw(exception, &unk_2858A0480, sub_245A83E74);
}

uint64_t sub_245A84550(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  std::bad_exception::~bad_exception(v1 + 5);
  v1->__vftable = &unk_2858A0138;
  result = v1[1].__vftable;
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      v1[1].__vftable = 0;
    }
  }

  return result;
}

void sub_245A845E0(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  std::bad_exception::~bad_exception(v1 + 5);
  v1->__vftable = &unk_2858A0138;
  v2 = v1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    v1[1].__vftable = 0;
  }

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A84694(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_2858A00E0;
  v3 = *(a2 + 8);
  *a1 = &unk_2858A0138;
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = a2;
    (*(*v3 + 24))(v3);
    a2 = v4;
  }

  v5 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v5;
  *a1 = &unk_2858A03E0;
  *(a1 + 40) = &unk_2858A0410;
  *(a1 + 48) = &unk_2858A0450;
  sub_245A7FED4(a1, a2);
  return a1;
}

void sub_245A847B4(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a2 + *(*a2 - 24);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = 0;
  sub_245A84828();
}

void sub_245A84914(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_245A8EF6C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_245A84958(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

std::bad_exception *sub_245A849A0(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1 + 5);
  a1->__vftable = &unk_2858A0138;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  return a1;
}

void sub_245A84A40(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858A0528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D78870);
}

void sub_245A84AEC(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

void sub_245A84B18(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

void sub_245A84B38(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

void sub_245A84B58()
{
  if ((byte_28144B2D8 & 1) == 0)
  {
    byte_28144B2D8 = 1;
    sub_245A827E0(qword_28144B2B0);

    __cxa_atexit(sub_245A82B50, qword_28144B2B0, &dword_245A2E000);
  }
}

void sub_245A84BC8()
{
  if ((byte_28144B2D0 & 1) == 0)
  {
    byte_28144B2D0 = 1;
    sub_245A82BFC(qword_28144B2A0);

    __cxa_atexit(sub_245A82B50, qword_28144B2A0, &dword_245A2E000);
  }
}

void sub_245A84C38()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

os_log_t sub_245A84C7C()
{
  result = os_log_create("com.apple.locationd.Pipeline", "Client");
  qword_28144B278 = result;
  return result;
}

BOOL sub_245A84CE4()
{
  v1 = qword_28144B278;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_245A84D04()
{
  v2 = *(v0 + 632);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_245A84D3C()
{
  v2 = *(v0 + 632);

  return os_signpost_enabled(v2);
}

void sub_245A84D6C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x2Cu);
}

void sub_245A84D8C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x2Cu);
}

void sub_245A85138()
{
  v0 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v1 = qword_27EE33018;
  qword_27EE33018 = v0;
}

void sub_245A8517C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_245A857BC(void *a1@<X0>, char *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  v13 = 0;
  v5 = a1;
  v10 = objc_msgSend_decodeBytesForKey_returnedLength_(v5, v6, v7, v8, v9, @"locationInfo", &v13);
  if (v13 >= 0x9C)
  {
    v11 = 156;
  }

  else
  {
    v11 = v13;
  }

  if (v13 <= 0x9C)
  {
    v12 = 156 - v13;
  }

  else
  {
    v12 = 0;
  }

  memcpy(a2, v10, v11);
  bzero(&a2[v11], v12);
  objc_autoreleasePoolPop(v4);
}

void sub_245A85850(void *a1@<X0>, char *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  v13 = 0;
  v5 = a1;
  v10 = objc_msgSend_decodeBytesForKey_returnedLength_(v5, v6, v7, v8, v9, @"locationPrivateInfo", &v13);
  if (v13 >= 0x230)
  {
    v11 = 560;
  }

  else
  {
    v11 = v13;
  }

  if (v13 <= 0x230)
  {
    v12 = 560 - v13;
  }

  else
  {
    v12 = 0;
  }

  memcpy(a2, v10, v11);
  bzero(&a2[v11], v12);
  objc_autoreleasePoolPop(v4);
}

void sub_245A858E4(void *a1@<X0>, char *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  v13 = 0;
  v5 = a1;
  v10 = objc_msgSend_decodeBytesForKey_returnedLength_(v5, v6, v7, v8, v9, @"pipelineDiagnosticReport", &v13);
  if (v13 >= 0x88)
  {
    v11 = 136;
  }

  else
  {
    v11 = v13;
  }

  if (v13 <= 0x88)
  {
    v12 = 136 - v13;
  }

  else
  {
    v12 = 0;
  }

  memcpy(a2, v10, v11);
  bzero(&a2[v11], v12);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_245A8598C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_decodeIntegerForKey_(a1, v3, v4, v5, v6, @"gpsExpiryInfo");
  objc_autoreleasePoolPop(v2);
  return v7;
}

void sub_245A85E80(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_245A86310(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_245A8629C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A862B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A862C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A86310(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_28144B798 & 1) == 0)
  {
    byte_28144B798 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/indoor_availability.pb.cc", a4);
    sub_245A4A438(v4, v5, v6, v7);
    sub_245A4C71C(v8, v9, v10, v11);
    sub_245A3F38C(v12, v13, v14, v15);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n&protobuf/gen/indoor_availability.proto\x12\x12proto.availability\x1A'protobuf/gen/locationd_parameters.proto\x1A\x1Dprotobuf/gen/parameters.proto\x1A\x18protobuf/gen/venue.protoO\n\rLatLonPolygon\x12\x14\n\blatitude\x18\x01 \x03(\x01B\x02\x10\x01\x12\x15\n\tlongitude\x18\x02 \x03(\x01B\x02\x10\x01\x12\x11\n\ttolerance\x18\x03 \x02(\x01A\n\x19TileDownloadConfiguration\x12$\n\x1CfloorIdxsForWifiDownloadOnly\x18\x01 \x03(\r\xC2\x02\n\vVenueBounds\x12\v\n\x03ids\x18\x01 \x03(\t\x124\n\texteriors\x18\x03 \x03(\v2!.proto.availability.LatLonPolygon\x12P\n\x19tileDownloadConfiguration\x18\x05 \x01(\v2-.proto.availability.TileDownloadConfiguration\x12-\n\acontext\x18\x06 \x01(\x0E2\x1C.proto.venue.LocationContext\x12>\n\x13DEPRECATED_exterior\x18\x02 \x01(\v2!.proto.availability.LatLonPolygon\x12/\n'DEPRECATED_floorIdxsForWifiDownloadOnly\x18\x04 \x03(\r\x99\x06\n\x10AvailabilityTile\x12/\n\x06venues\x18\x01 \x03(\v2\x1F.proto.availability.VenueBounds\x12=\n\x12parameterOverrides\x18\x10 \x01(\v2!.proto.params.LocalizerParameters\x122\n$availabilityZScoreConfidenceInterval\x18\x11 \x01(\x01:\x041.96\x12#\n\x16indoorPrefetchRadiusKM\x18\x12 \x01(\r:\x03200\x12%\n\x18regionalPrefetchRadiusKM\x18\x16 \x01(\r:\x03200\x12(\n\x1BindoorPrefetchMaxFloorCount\x18\x13 \x01(\r:\x03200\x12*\n\x1DregionalPrefetchMaxFloorCount\x18\x17 \x01(\r:\x03200\x12.\n\x1BindoorPrefetchMaxTotalBytes\x18\x19 \x01(\r:\t200000000\x120\n\x1DregionalPrefetchMaxTotalBytes\x18\x1A \x01(\r:\t100000000\x121\n%indoorLocationOfInterestMergeRadiusKM\x18\x14 \x01(\r:\x0250\x123\n'regionalLocationOfInterestMergeRadiusKM\x18\x18 \x01(\r:\x0250\x120\n%preferPredictionWithinNActivityCycles\x18\x15 \x01(\r:\x011\x121\n&indoorNumberOfDaysBeforeTileRedownload\x18\x1B \x01(\x02:\x017\x123\n(regionalNumberOfDaysBeforeTileRedownload\x18\x1C \x01(\x02:\x017\x12[\n motionActivityDebounceParameters\x18\x1D \x01(\v21.proto.locationd.MotionActivityDebounceParameters\xC8\x02\n\x18AvailabilityTileMetadata\x12\f\n\x04uuid\x18\x01 \x01(\t\x12\x15\n\rtimeGenerated\x18\x02 \x01(\x01\x12\x10\n\bnumTiles\x18\x03 \x01(\r\x12\x11\n\tnumVenues\x18\x04 \x01(\r\x12\x11\n\tsizeBytes\x18\x05 \x01(\r\x12\x1B\n\x13compressedSizeBytes\x18\x06 \x01(\r\x12\x13\n\vgeneratedBy\x18\a \x01(\t\x12\x17\n\x0FgeneratedReason\x18\b \x01(\t\x12\x1B\n\x13numOverriddenParams\x18\t \x01(\r\x12\f\n\x04sha1\x18\n \x01(\f\x12\x11\n\tnumGroups\x18\v \x01(\r\x12F\n\btileType\x18\f \x01(\x0E2(.proto.availability.AvailabilityTileType:\nIndoorOnlym\n\x1BGroupedAvailabilityLocation\x12\x12\n\nlocationId\x18\x01 \x01(\t\x12\x0F\n\agroupId\x18\x02 \x01(\t\x12\x0F\n\avenueId\x18\x03 \x01(\t\x12\v\n\x03lat\x18\x04 \x01(\x01\x12\v\n\x03lng\x18\x05 \x01(\x01\xB8\x01\n\x17AvailabilityTileDetails\x12\f\n\x04uuid\x18\x01 \x01(\t\x12\x11\n\ttileUuids\x18\x02 \x03(\t\x122\n\x04tile\x18\x03 \x01(\v2$.proto.availability.AvailabilityTile\x12H\n\x0FgroupingDetails\x18\x04 \x03(\v2/.proto.availability.GroupedAvailabilityLocation*>\n\x14AvailabilityTileType\x12\x0E\n\nIndoorOnly\x10\x01\x12\x16\n\x12IndoorPlusRegional\x10\x02B\x1F\n\x1Dcom.apple.indoor.availability", 0x869);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

void sub_245A86730(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A86784()
{
  if (qword_28144B970)
  {
    (*(*qword_28144B970 + 8))(qword_28144B970);
  }

  if (qword_28144B700)
  {
    (*(*qword_28144B700 + 8))(qword_28144B700);
  }

  if (qword_28144B950)
  {
    (*(*qword_28144B950 + 8))(qword_28144B950);
  }

  if (qword_28144B710)
  {
    (*(*qword_28144B710 + 8))(qword_28144B710);
  }

  if (qword_28144B978)
  {
    (*(*qword_28144B978 + 8))(qword_28144B978);
  }

  if (qword_28144B720)
  {
    (*(*qword_28144B720 + 8))(qword_28144B720);
  }

  if (qword_28144B968)
  {
    (*(*qword_28144B968 + 8))(qword_28144B968);
  }

  if (qword_28144B730)
  {
    (*(*qword_28144B730 + 8))(qword_28144B730);
  }

  if (qword_28144B958)
  {
    (*(*qword_28144B958 + 8))(qword_28144B958);
  }

  if (qword_28144B740)
  {
    (*(*qword_28144B740 + 8))(qword_28144B740);
  }

  if (qword_28144B948)
  {
    (*(*qword_28144B948 + 8))(qword_28144B948);
  }

  if (qword_28144B750)
  {
    (*(*qword_28144B750 + 8))(qword_28144B750);
  }

  if (qword_28144B960)
  {
    (*(*qword_28144B960 + 8))(qword_28144B960);
  }

  result = qword_28144B760;
  if (qword_28144B760)
  {
    v1 = *(*qword_28144B760 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_245A86A4C()
{
  v0 = qword_28144B770;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v8[0] = MEMORY[0x277D82C40] + 16;
    v8[1] = sub_245A85E80;
    v9 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v8);
  }

  if (!qword_28144B970)
  {
    (sub_245A86310)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B950)
  {
    sub_245A86310(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B978)
  {
    sub_245A86310(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B968)
  {
    sub_245A86310(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B958)
  {
    sub_245A86310(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B948)
  {
    sub_245A86310(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_28144B960)
  {
    sub_245A86310(v6);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_245A86BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_245A86BF8(void *a1)
{
  *a1 = &unk_2858A05B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void *sub_245A86C5C(void *a1)
{
  *a1 = &unk_2858A0668;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_245A86CBC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
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

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 8 * v5), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 52);
    v13 = v11 + v10;
    v14 = *(a1 + 40);
    if (v12 < v13)
    {
      v15 = 2 * v12;
      if (2 * v12 <= v13)
      {
        v15 = v13;
      }

      if (v15 <= 4)
      {
        v15 = 4;
      }

      *(a1 + 52) = v15;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 8 * v11), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  if ((*(a2 + 76) & 4) != 0)
  {
    v16 = *(a2 + 64);
    *(a1 + 76) |= 4u;
    *(a1 + 64) = v16;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A86EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A86ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A86EE4(void *a1)
{
  *a1 = &unk_2858A05B8;
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x245D78850](v2, 0x1000C8000313F17);
  }

  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x245D78850](v3, 0x1000C8000313F17);
  }

  MEMORY[0x245D78300](a1 + 1);

  JUMPOUT(0x245D78470);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A87004(uint64_t a1)
{
  if ((*(a1 + 76) & 0x3FC) != 0)
  {
    *(a1 + 64) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 17) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A87030(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v5 = *(v4 + 32);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v4 + 24) >= 1)
    {
      v6 = 0;
      do
      {
        v7 = *(*(v4 + 16) + 8 * v6);
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2);
        ++v6;
      }

      while (v6 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v8 = *(v4 + 56);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v4 + 48) >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(*(v4 + 40) + 8 * v9);
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2);
        ++v9;
      }

      while (v9 < *(v4 + 48));
    }
  }

  if ((*(v4 + 76) & 4) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 64), a3);
  }

  v13 = *(v4 + 8);
  v12 = v4 + 8;
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return MEMORY[0x2821F9DB8](v12, a2);
  }

  return result;
}

_BYTE *sub_245A87158(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v4 = *(this + 8);
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, (a2 + 1), a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    v5 = 0;
    do
    {
      *a2 = *(*(this + 2) + 8 * v5);
      a2 += 8;
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_8:
  if (*(this + 12) <= 0)
  {
    goto LABEL_15;
  }

  *a2 = 18;
  v6 = *(this + 14);
  if (v6 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, (a2 + 1), a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  v7 = 0;
  do
  {
    *a2 = *(*(this + 5) + 8 * v7);
    a2 += 8;
    ++v7;
  }

  while (v7 < *(this + 12));
LABEL_15:
  if ((*(this + 76) & 4) != 0)
  {
    v8 = *(this + 8);
    *a2 = 25;
    *(a2 + 1) = v8;
    a2 += 9;
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
}

uint64_t sub_245A872EC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = (*(a1 + 76) << 29 >> 31) & 9;
  v4 = *(a1 + 24);
  v5 = 8 * v4;
  if (v4 >= 1)
  {
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v4)) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
  }

  *(a1 + 32) = v5;
  v7 = v3 + v5;
  v8 = *(a1 + 48);
  v9 = 8 * v8;
  if (v8 >= 1)
  {
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v8)) + 1;
    }

    else
    {
      v10 = 2;
    }

    v7 += v10;
  }

  v11 = *(a1 + 8);
  *(a1 + 56) = v9;
  v12 = v7 + v9;
  if (v11 && *v11 != v11[1])
  {
    v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v12;
  }

  *(a1 + 72) = v12;
  return v12;
}

uint64_t sub_245A873BC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_2858A0A78, 0);
  if (v5)
  {
    return sub_245A86CBC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A8749C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A874B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A874C4(uint64_t result, uint64_t a2)
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

uint64_t sub_245A8755C()
{
  v0 = qword_28144B770;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A85E80;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B6F8;
}

void sub_245A875EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A87694(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A876AC(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v12 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(a2 + 2);
      v10 = *a2;
      if (v9 == *(a2 + 3))
      {
        if (2 * v9 <= v9 + 1)
        {
          v11 = v9 + 1;
        }

        else
        {
          v11 = 2 * v9;
        }

        if (v11 <= 4)
        {
          v11 = 4;
        }

        *(a2 + 3) = v11;
        operator new[]();
      }

      v6 = *a2;
      v7 = v12;
      *(a2 + 2) = v9 + 1;
      *(v6 + 4 * v9) = v7;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t sub_245A87830(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v9 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A878CC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = *(*(this + 2) + 4 * v5);
        *a2 = 8;
        if (v6 > 0x7F)
        {
          break;
        }

        *(a2 + 1) = v6;
        a2 = (a2 + 2);
        if (++v5 >= *(this + 6))
        {
          goto LABEL_6;
        }
      }

      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_6:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_245A87998(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    v8 = v3;
    v9 = (a1 + 8);
    v10 = *(a1 + 8);
    if (!v10)
    {
LABEL_7:
      *(a1 + 32) = v8;
      return v8;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      while (1)
      {
        v7 = *(*(a1 + 16) + 4 * v4);
        if (v7 < 0x80)
        {
          break;
        }

        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
        v3 = *(a1 + 24);
        v5 += v6;
        if (++v4 >= v3)
        {
          goto LABEL_6;
        }
      }

      ++v5;
      ++v4;
    }

    while (v4 < v3);
LABEL_6:
    v8 = (v3 + v5);
    v9 = (a1 + 8);
    v10 = *(a1 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  if (*v10 == v10[1])
  {
    goto LABEL_7;
  }

  v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v9, a2) + v8;
  *(a1 + 32) = v12;
  return v12;
}

uint64_t sub_245A87A6C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_2858A0A90, 0);
  if (v5)
  {
    return sub_245A3203C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A87B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A87B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A87B74(uint64_t result, uint64_t a2)
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

uint64_t sub_245A87C08()
{
  v0 = qword_28144B770;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A85E80;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B708;
}

void sub_245A87C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A87CAC(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 12);
      }
    }
  }

  if (*a1)
  {
    MEMORY[0x245D78850](*a1, 0x80C80B8603338);
  }

  return a1;
}

uint64_t sub_245A87D44(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858A0718;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  sub_245A87E48(a1, a2);
  return a1;
}

void sub_245A87DEC(_Unwind_Exception *a1)
{
  if (*v5)
  {
    MEMORY[0x245D78850](*v5, 0x1000C8052888210);
  }

  sub_245A87CAC(v4);
  sub_245A640D0(v3);
  MEMORY[0x245D78300](v2);
  MEMORY[0x245D78470](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_245A87E48(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v35);
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
  if (*(a2 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v11 = *(*(a2 + 16) + 8 * v7);
        v12 = *(a1 + 28);
        v13 = *(a1 + 24);
        if (v13 >= v12)
        {
          break;
        }

        v14 = *(a1 + 16);
        *(a1 + 24) = v13 + 1;
        v6 = std::string::operator=(*(v14 + 8 * v13), v11);
        if (++v7 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v12 == *(a1 + 32))
      {
        v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
        v12 = *(a1 + 28);
      }

      *(a1 + 28) = v12 + 1;
      v8 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v6);
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      *(a1 + 24) = v10 + 1;
      *(v9 + 8 * v10) = v8;
      v6 = std::string::operator=(v8, v11);
      ++v7;
    }

    while (v7 < *(a2 + 24));
  }

LABEL_11:
  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
  if (*(a2 + 48) >= 1)
  {
    v17 = 0;
    do
    {
      v19 = *(*(a2 + 40) + 8 * v17);
      v20 = *(a1 + 52);
      v21 = *(a1 + 48);
      if (v21 >= v20)
      {
        if (v20 == *(a1 + 56))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
          v20 = *(a1 + 52);
        }

        *(a1 + 52) = v20 + 1;
        operator new();
      }

      v18 = *(a1 + 40);
      *(a1 + 48) = v21 + 1;
      sub_245A86CBC(*(v18 + 8 * v21), v19);
      ++v17;
    }

    while (v17 < *(a2 + 48));
  }

  v22 = *(a2 + 88);
  if (v22)
  {
    v23 = *(a1 + 88);
    v24 = *(a1 + 92);
    v25 = v23 + v22;
    v26 = *(a1 + 80);
    if (v24 < v25)
    {
      v27 = 2 * v24;
      if (2 * v24 <= v25)
      {
        v27 = v25;
      }

      if (v27 <= 4)
      {
        v27 = 4;
      }

      *(a1 + 92) = v27;
      operator new[]();
    }

    memcpy((*(a1 + 80) + 4 * v23), *(a2 + 80), 4 * *(a2 + 88));
    *(a1 + 88) += *(a2 + 88);
  }

  v28 = *(a2 + 104);
  if ((v28 & 0x3FC) != 0)
  {
    if ((v28 & 4) != 0)
    {
      *(a1 + 104) |= 4u;
      v29 = *(a1 + 64);
      if (!v29)
      {
        operator new();
      }

      v30 = *(a2 + 64);
      if (!v30)
      {
        v30 = *(qword_28144B978 + 64);
      }

      sub_245A3203C(v29, v30);
      v28 = *(a2 + 104);
    }

    if ((v28 & 8) != 0)
    {
      v31 = *(a2 + 96);
      *(a1 + 104) |= 8u;
      *(a1 + 96) = v31;
      v28 = *(a2 + 104);
    }

    if ((v28 & 0x10) != 0)
    {
      *(a1 + 104) |= 0x10u;
      v32 = *(a1 + 72);
      if (!v32)
      {
        operator new();
      }

      v33 = *(a2 + 72);
      if (!v33)
      {
        v33 = *(qword_28144B978 + 72);
      }

      sub_245A86CBC(v32, v33);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A88298(_Unwind_Exception *a1)
{
  v4 = MEMORY[0x245D78470](v2);
  MEMORY[0x245D78870](v4, v1);
  _Unwind_Resume(a1);
}

void sub_245A882B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A882CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A88300(uint64_t a1)
{
  sub_245A2F8E8(a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A883F4(uint64_t this)
{
  v1 = this;
  v2 = *(this + 104);
  if ((v2 & 0x3FC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      this = *(this + 64);
      if (this)
      {
        v3 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 96) = 1;
    if ((*(v1 + 104) & 0x10) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        if ((*(this + 76) & 0x3FC) != 0)
        {
          *(this + 64) = 0;
        }

        v4 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 40) = 0;
        *(this + 68) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  if (*(v1 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = *(*(v1 + 16) + 8 * v5);
        if (*(v6 + 23) < 0)
        {
          break;
        }

        *v6 = 0;
        *(v6 + 23) = 0;
        if (++v5 >= *(v1 + 24))
        {
          goto LABEL_17;
        }
      }

      **v6 = 0;
      *(v6 + 8) = 0;
      ++v5;
    }

    while (v5 < *(v1 + 24));
  }

LABEL_17:
  *(v1 + 24) = 0;
  if (*(v1 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v1 + 40) + 8 * v7);
      this = (*(*v8 + 32))(v8);
      ++v7;
    }

    while (v7 < *(v1 + 48));
  }

  v10 = *(v1 + 8);
  v9 = (v1 + 8);
  *(v9 + 10) = 0;
  *(v9 + 20) = 0;
  *(v9 + 24) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
  }

  return this;
}

uint64_t sub_245A8855C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 16) + 8 * v6);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v6;
    }

    while (v6 < *(v5 + 24));
  }

  if ((*(v5 + 104) & 0x10) != 0)
  {
    if (!*(v5 + 72))
    {
      v8 = *(qword_28144B978 + 72);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
  }

  if (*(v5 + 48) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v5 + 40) + 8 * v9);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      ++v9;
    }

    while (v9 < *(v5 + 48));
  }

  if (*(v5 + 88) >= 1)
  {
    v11 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 80) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 88));
  }

  v12 = *(v5 + 104);
  if ((v12 & 4) != 0)
  {
    if (*(v5 + 64))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v5 + 104) & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v16 = *(qword_28144B978 + 64);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      if ((*(v5 + 104) & 8) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    v15 = *(v5 + 8);
    v14 = v5 + 8;
    v13 = v15;
    if (!v15)
    {
      return result;
    }

    goto LABEL_23;
  }

  if ((v12 & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 96), a2, a4);
  v17 = *(v5 + 8);
  v14 = v5 + 8;
  v13 = v17;
  if (!v17)
  {
    return result;
  }

LABEL_23:
  if (*v13 != v13[1])
  {

    return MEMORY[0x2821F9DB8](v14, a2);
  }

  return result;
}

_BYTE *sub_245A886F0(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
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
          result[1] = v12;
          v7 = (result + 2);
          goto LABEL_4;
        }
      }

      else if (v12 <= 0x7F)
      {
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, (result + 1), a3);
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
  if ((*(a1 + 104) & 0x10) != 0)
  {
    v13 = *(a1 + 72);
    if (v13)
    {
      *result = 18;
      v14 = (result + 1);
      v15 = v13[18];
      if (v15 <= 0x7F)
      {
LABEL_20:
        result[1] = v15;
        v16 = result + 2;
LABEL_23:
        result = sub_245A87158(v13, v16, a3);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(qword_28144B978 + 72);
      *result = 18;
      v14 = (result + 1);
      v15 = v13[18];
      if (v15 <= 0x7F)
      {
        goto LABEL_20;
      }
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v14, a3);
    goto LABEL_23;
  }

LABEL_24:
  if (*(a1 + 48) >= 1)
  {
    v17 = 0;
    do
    {
      v19 = *(*(a1 + 40) + 8 * v17);
      *result = 26;
      v20 = *(v19 + 18);
      if (v20 <= 0x7F)
      {
        result[1] = v20;
        v18 = result + 2;
      }

      else
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v19 + 18), (result + 1), a3);
      }

      result = sub_245A87158(v19, v18, a3);
      ++v17;
    }

    while (v17 < *(a1 + 48));
  }

  if (*(a1 + 88) >= 1)
  {
    v21 = 0;
    do
    {
      while (1)
      {
        v22 = *(*(a1 + 80) + 4 * v21);
        *result = 32;
        if (v22 > 0x7F)
        {
          break;
        }

        result[1] = v22;
        result += 2;
        if (++v21 >= *(a1 + 88))
        {
          goto LABEL_35;
        }
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, (result + 1), a3);
      ++v21;
    }

    while (v21 < *(a1 + 88));
  }

LABEL_35:
  if ((*(a1 + 104) & 4) != 0)
  {
    v23 = *(a1 + 64);
    if (v23)
    {
      *result = 42;
      v24 = (result + 1);
      v25 = *(v23 + 32);
      if (v25 <= 0x7F)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = *(qword_28144B978 + 64);
      *result = 42;
      v24 = (result + 1);
      v25 = *(v23 + 32);
      if (v25 <= 0x7F)
      {
LABEL_38:
        result[1] = v25;
        result += 2;
        if (*(v23 + 24) < 1)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }
    }

    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v24, a3);
    if (*(v23 + 24) < 1)
    {
LABEL_46:
      v30 = *(v23 + 8);
      v29 = (v23 + 8);
      v28 = v30;
      if (v30 && *v28 != v28[1])
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v29, result, a3);
      }

      goto LABEL_49;
    }

LABEL_42:
    v26 = 0;
    do
    {
      while (1)
      {
        v27 = *(*(v23 + 16) + 4 * v26);
        *result = 8;
        if (v27 > 0x7F)
        {
          break;
        }

        result[1] = v27;
        result += 2;
        if (++v26 >= *(v23 + 24))
        {
          goto LABEL_46;
        }
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, (result + 1), a3);
      ++v26;
    }

    while (v26 < *(v23 + 24));
    goto LABEL_46;
  }

LABEL_49:
  if ((*(a1 + 104) & 8) == 0)
  {
    goto LABEL_55;
  }

  v31 = *(a1 + 96);
  *result = 48;
  v32 = (result + 1);
  if ((v31 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v31, v32, a3);
LABEL_55:
    v36 = *(a1 + 8);
    v34 = (a1 + 8);
    v33 = v36;
    if (!v36)
    {
      return result;
    }

    goto LABEL_56;
  }

  if (v31 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v32, a3);
    v37 = *(a1 + 8);
    v34 = (a1 + 8);
    v33 = v37;
    if (!v37)
    {
      return result;
    }
  }

  else
  {
    result[1] = v31;
    result += 2;
    v35 = *(a1 + 8);
    v34 = (a1 + 8);
    v33 = v35;
    if (!v35)
    {
      return result;
    }
  }

LABEL_56:
  if (*v33 != v33[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v34, result, a3);
  }

  return result;
}

uint64_t sub_245A88A58(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 104);
  if ((v3 & 0x3FC) == 0)
  {
    v5 = *(a1 + 24);
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

  if ((v3 & 4) == 0)
  {
    v4 = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  v7 = *(a1 + 64);
  if (!v7)
  {
    v7 = *(qword_28144B978 + 64);
    v8 = *(v7 + 24);
    if (v8 >= 1)
    {
      goto LABEL_9;
    }

LABEL_16:
    v13 = v8;
    v14 = (v7 + 8);
    v15 = *(v7 + 8);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v8 = *(v7 + 24);
  if (v8 < 1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v9 = 0;
  v10 = 0;
  do
  {
    while (1)
    {
      v12 = *(*(v7 + 16) + 4 * v9);
      if (v12 < 0x80)
      {
        break;
      }

      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      v8 = *(v7 + 24);
      v10 += v11;
      if (++v9 >= v8)
      {
        goto LABEL_13;
      }
    }

    ++v10;
    ++v9;
  }

  while (v9 < v8);
LABEL_13:
  v13 = (v8 + v10);
  v14 = (v7 + 8);
  v15 = *(v7 + 8);
  if (v15)
  {
LABEL_17:
    if (*v15 != v15[1])
    {
      v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v14, a2) + v13;
    }
  }

LABEL_19:
  *(v7 + 32) = v13;
  if (v13 >= 0x80)
  {
    v4 = v13 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(a1 + 104);
    if ((v3 & 8) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = v13 + 2;
    v3 = *(a1 + 104);
    if ((v3 & 8) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_23:
  v16 = *(a1 + 96);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(a1 + 104);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
LABEL_29:
  if ((v3 & 0x10) == 0)
  {
    v5 = *(a1 + 24);
    v6 = v5 + v4;
    if (v5 < 1)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

  v18 = *(a1 + 72);
  if (!v18)
  {
    v18 = *(qword_28144B978 + 72);
  }

  v19 = (*(v18 + 76) << 29 >> 31) & 9;
  v20 = *(v18 + 24);
  v21 = 8 * v20;
  if (v20 >= 1)
  {
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v20)) + 1;
    }

    else
    {
      v22 = 2;
    }

    v19 += v22;
  }

  *(v18 + 32) = v21;
  v23 = v19 + v21;
  v24 = *(v18 + 48);
  v25 = 8 * v24;
  if (v24 >= 1)
  {
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v24)) + 1;
    }

    else
    {
      v26 = 2;
    }

    v23 += v26;
  }

  v27 = *(v18 + 8);
  *(v18 + 56) = v25;
  v28 = (v23 + v25);
  if (v27 && *v27 != v27[1])
  {
    v28 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v18 + 8), a2) + v28);
  }

  *(v18 + 72) = v28;
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
  }

  else
  {
    v29 = 1;
  }

  v5 = *(a1 + 24);
  v6 = v5 + v4 + v28 + v29 + 1;
  if (v5 >= 1)
  {
LABEL_51:
    for (i = 0; i < v5; ++i)
    {
      v33 = *(*(a1 + 16) + 8 * i);
      v32 = *(v33 + 23);
      v34 = v32;
      v35 = *(v33 + 8);
      if ((v32 & 0x80u) == 0)
      {
        v36 = *(v33 + 23);
      }

      else
      {
        v36 = v35;
      }

      if (v36 < 0x80)
      {
        v31 = 1;
      }

      else
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
        v32 = *(v33 + 23);
        v35 = *(v33 + 8);
        v5 = *(a1 + 24);
        v34 = *(v33 + 23);
      }

      if (v34 < 0)
      {
        v32 = v35;
      }

      v6 += v31 + v32;
    }
  }

LABEL_61:
  v37 = *(a1 + 48);
  v38 = v37 + v6;
  if (v37 >= 1)
  {
    v39 = 0;
    do
    {
      v41 = *(*(a1 + 40) + 8 * v39);
      v42 = (*(v41 + 76) << 29 >> 31) & 9;
      v43 = *(v41 + 24);
      v44 = 8 * v43;
      if (v43 >= 1)
      {
        if (v44 >= 0x80)
        {
          v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v43)) + 1;
        }

        else
        {
          v45 = 2;
        }

        v42 += v45;
      }

      *(v41 + 32) = v44;
      v46 = v42 + v44;
      v47 = *(v41 + 48);
      v48 = 8 * v47;
      if (v47 >= 1)
      {
        if (v48 >= 0x80)
        {
          v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v47)) + 1;
        }

        else
        {
          v49 = 2;
        }

        v46 += v49;
      }

      v50 = *(v41 + 8);
      *(v41 + 56) = v48;
      v51 = (v46 + v48);
      if (v50 && *v50 != v50[1])
      {
        v51 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v41 + 8), a2) + v51);
      }

      *(v41 + 72) = v51;
      if (v51 < 0x80)
      {
        v40 = 1;
      }

      else
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
      }

      v38 += v51 + v40;
      ++v39;
    }

    while (v39 < *(a1 + 48));
  }

  v52 = *(a1 + 88);
  if (v52 < 1)
  {
    v57 = (v38 + v52);
    v58 = (a1 + 8);
    v59 = *(a1 + 8);
    if (!v59)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  v53 = 0;
  v54 = 0;
  do
  {
    while (1)
    {
      v56 = *(*(a1 + 80) + 4 * v53);
      if (v56 < 0x80)
      {
        break;
      }

      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
      v52 = *(a1 + 88);
      v54 += v55;
      if (++v53 >= v52)
      {
        goto LABEL_85;
      }
    }

    ++v54;
    ++v53;
  }

  while (v53 < v52);
LABEL_85:
  v57 = (v54 + v38 + v52);
  v58 = (a1 + 8);
  v59 = *(a1 + 8);
  if (v59)
  {
LABEL_88:
    if (*v59 != v59[1])
    {
      v57 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v58, a2) + v57;
    }
  }

LABEL_90:
  *(a1 + 100) = v57;
  return v57;
}

uint64_t sub_245A88EE0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_2858A0AA8, 0);
  if (v5)
  {
    return sub_245A87E48(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A88FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A88FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A88FE8(uint64_t result, uint64_t a2)
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

uint64_t sub_245A89074(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_245A87E48(v4, a2);
  }

  return result;
}

uint64_t sub_245A890E0(uint64_t a1)
{
  if (*(a1 + 48) < 1)
  {
LABEL_5:
    if ((*(a1 + 104) & 0x10) != 0)
    {
      v4 = *(a1 + 72);
      if (v4)
      {
        result = (*(*v4 + 40))(v4);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = (*(**(qword_28144B978 + 72) + 40))(*(qword_28144B978 + 72));
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(*(a1 + 40) + 8 * v2);
    if (((*(*v3 + 40))(v3) & 1) == 0)
    {
      return 0;
    }

    if (++v2 >= *(a1 + 48))
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_245A891DC()
{
  v0 = qword_28144B770;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A85E80;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B718;
}

void sub_245A8926C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A89280(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
  if (*(a2 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v8 = *(*(a2 + 16) + 8 * v6);
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

      v7 = *(a1 + 16);
      *(a1 + 24) = v10 + 1;
      sub_245A87E48(*(v7 + 8 * v10), v8);
      ++v6;
    }

    while (v6 < *(a2 + 24));
  }

  v11 = *(a2 + 112);
  if ((v11 & 0x1FE) == 0)
  {
    goto LABEL_23;
  }

  if ((v11 & 2) != 0)
  {
    *(a1 + 112) |= 2u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 40);
    if (!v13)
    {
      v13 = *(qword_28144B968 + 40);
    }

    sub_245A36BD0(v12, v13);
    v11 = *(a2 + 112);
  }

  if ((v11 & 4) != 0)
  {
    v24 = *(a2 + 48);
    *(a1 + 112) |= 4u;
    *(a1 + 48) = v24;
    v11 = *(a2 + 112);
    if ((v11 & 8) == 0)
    {
LABEL_18:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_45;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_18;
  }

  v25 = *(a2 + 56);
  *(a1 + 112) |= 8u;
  *(a1 + 56) = v25;
  v11 = *(a2 + 112);
  if ((v11 & 0x10) == 0)
  {
LABEL_19:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_46:
    v27 = *(a2 + 64);
    *(a1 + 112) |= 0x20u;
    *(a1 + 64) = v27;
    v11 = *(a2 + 112);
    if ((v11 & 0x40) == 0)
    {
LABEL_21:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_45:
  v26 = *(a2 + 60);
  *(a1 + 112) |= 0x10u;
  *(a1 + 60) = v26;
  v11 = *(a2 + 112);
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_20:
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_47:
  v28 = *(a2 + 68);
  *(a1 + 112) |= 0x40u;
  *(a1 + 68) = v28;
  v11 = *(a2 + 112);
  if ((v11 & 0x80) != 0)
  {
LABEL_22:
    v14 = *(a2 + 72);
    *(a1 + 112) |= 0x80u;
    *(a1 + 72) = v14;
    v11 = *(a2 + 112);
  }

LABEL_23:
  if ((v11 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v11 & 0x100) != 0)
  {
    v15 = *(a2 + 76);
    *(a1 + 112) |= 0x100u;
    *(a1 + 76) = v15;
    v11 = *(a2 + 112);
    if ((v11 & 0x200) == 0)
    {
LABEL_26:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v16 = *(a2 + 80);
  *(a1 + 112) |= 0x200u;
  *(a1 + 80) = v16;
  v11 = *(a2 + 112);
  if ((v11 & 0x400) == 0)
  {
LABEL_27:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 84);
  *(a1 + 112) |= 0x400u;
  *(a1 + 84) = v17;
  v11 = *(a2 + 112);
  if ((v11 & 0x800) == 0)
  {
LABEL_28:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 88);
  *(a1 + 112) |= 0x800u;
  *(a1 + 88) = v18;
  v11 = *(a2 + 112);
  if ((v11 & 0x1000) == 0)
  {
LABEL_29:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

LABEL_37:
    v20 = *(a2 + 104);
    *(a1 + 112) |= 0x2000u;
    *(a1 + 104) = v20;
    if ((*(a2 + 112) & 0x4000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_38;
  }

LABEL_36:
  v19 = *(a2 + 92);
  *(a1 + 112) |= 0x1000u;
  *(a1 + 92) = v19;
  v11 = *(a2 + 112);
  if ((v11 & 0x2000) != 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if ((v11 & 0x4000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_38:
  *(a1 + 112) |= 0x4000u;
  v21 = *(a1 + 96);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 96);
  if (!v22)
  {
    v22 = *(qword_28144B968 + 96);
  }

  sub_245A4A710(v21, v22);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A896D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A896E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A89714(uint64_t a1)
{
  sub_245A384C0(a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A89828(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 16) + 8 * v6);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      ++v6;
    }

    while (v6 < *(v5 + 24));
  }

  v8 = *(v5 + 112);
  if ((v8 & 2) != 0)
  {
    if (*(v5 + 40))
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v8 = *(v5 + 112);
      if ((v8 & 4) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(qword_28144B968 + 40);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      v8 = *(v5 + 112);
      if ((v8 & 4) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_6:
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if ((v8 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 48), a3);
  v8 = *(v5 + 112);
  if ((v8 & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 56), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x20) == 0)
  {
LABEL_8:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 64), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x200) == 0)
  {
LABEL_9:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 80), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x800) == 0)
  {
LABEL_10:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 88), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x10) == 0)
  {
LABEL_11:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 60), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x40) == 0)
  {
LABEL_12:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 68), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x400) == 0)
  {
LABEL_13:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 84), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x80) == 0)
  {
LABEL_14:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 72), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x100) == 0)
  {
LABEL_15:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 76), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x1000) == 0)
  {
LABEL_16:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1B, a2, *(v5 + 92), a3);
  v8 = *(v5 + 112);
  if ((v8 & 0x2000) == 0)
  {
LABEL_17:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1C, a2, *(v5 + 104), a3);
  if ((*(v5 + 112) & 0x4000) == 0)
  {
LABEL_18:
    v11 = *(v5 + 8);
    v10 = v5 + 8;
    v9 = v11;
    if (!v11)
    {
      return result;
    }

    goto LABEL_40;
  }

LABEL_36:
  if (*(v5 + 96))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v13 = *(v5 + 8);
    v10 = v5 + 8;
    v9 = v13;
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    v14 = *(qword_28144B968 + 96);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
    v15 = *(v5 + 8);
    v10 = v5 + 8;
    v9 = v15;
    if (!v15)
    {
      return result;
    }
  }

LABEL_40:
  if (*v9 != v9[1])
  {

    return MEMORY[0x2821F9DB8](v10, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A89AA4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v8 = *(*(this + 2) + 8 * v6);
      *a2 = 10;
      v9 = *(v8 + 100);
      if (v9 <= 0x7F)
      {
        *(a2 + 1) = v9;
        v7 = a2 + 2;
      }

      else
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
      }

      a2 = sub_245A886F0(v8, v7, a3, a4);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  v10 = *(this + 28);
  if ((v10 & 2) != 0)
  {
    v15 = *(this + 5);
    if (v15)
    {
      *a2 = 386;
      v16 = a2 + 2;
      v17 = v15[74];
      if (v17 <= 0x7F)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v15 = *(qword_28144B968 + 40);
      *a2 = 386;
      v16 = a2 + 2;
      v17 = v15[74];
      if (v17 <= 0x7F)
      {
LABEL_25:
        *(a2 + 2) = v17;
        a2 = sub_245A58A98(v15, (a2 + 3), a3);
        v10 = *(this + 28);
        if ((v10 & 4) != 0)
        {
          goto LABEL_29;
        }

LABEL_9:
        if ((v10 & 8) == 0)
        {
          goto LABEL_10;
        }

LABEL_30:
        v21 = *(this + 14);
        *a2 = 400;
        if (v21 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, a2 + 2, a3);
          if ((*(this + 112) & 0x20) != 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          *(a2 + 2) = v21;
          a2 = (a2 + 3);
          if ((*(this + 112) & 0x20) != 0)
          {
            goto LABEL_34;
          }
        }

LABEL_11:
        if ((*(this + 113) & 2) == 0)
        {
          goto LABEL_12;
        }

LABEL_38:
        v23 = *(this + 20);
        *a2 = 416;
        if (v23 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, a2 + 2, a3);
          if ((*(this + 113) & 8) != 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          *(a2 + 2) = v23;
          a2 = (a2 + 3);
          if ((*(this + 113) & 8) != 0)
          {
            goto LABEL_42;
          }
        }

LABEL_13:
        if ((*(this + 112) & 0x10) == 0)
        {
          goto LABEL_14;
        }

LABEL_46:
        v25 = *(this + 15);
        *a2 = 432;
        if (v25 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, a2 + 2, a3);
          if ((*(this + 112) & 0x40) != 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          *(a2 + 2) = v25;
          a2 = (a2 + 3);
          if ((*(this + 112) & 0x40) != 0)
          {
            goto LABEL_50;
          }
        }

LABEL_15:
        if ((*(this + 113) & 4) == 0)
        {
          goto LABEL_16;
        }

LABEL_54:
        v27 = *(this + 21);
        *a2 = 448;
        if (v27 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, a2 + 2, a3);
          if ((*(this + 112) & 0x80) != 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *(a2 + 2) = v27;
          a2 = (a2 + 3);
          if ((*(this + 112) & 0x80) != 0)
          {
            goto LABEL_58;
          }
        }

LABEL_17:
        if ((*(this + 113) & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_62:
        v29 = *(this + 19);
        *a2 = 464;
        if (v29 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, a2 + 2, a3);
          v11 = *(this + 28);
          if ((v11 & 0x1000) != 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *(a2 + 2) = v29;
          a2 = (a2 + 3);
          v11 = *(this + 28);
          if ((v11 & 0x1000) != 0)
          {
            goto LABEL_66;
          }
        }

LABEL_19:
        if ((v11 & 0x2000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_67;
      }
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v16, a3);
    a2 = sub_245A58A98(v15, v18, v19);
    v10 = *(this + 28);
    if ((v10 & 4) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_9;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_29:
  v20 = *(this + 6);
  *a2 = 393;
  *(a2 + 2) = v20;
  a2 = (a2 + 10);
  if ((*(this + 28) & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((*(this + 112) & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_34:
  v22 = *(this + 16);
  *a2 = 408;
  if (v22 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, a2 + 2, a3);
    if ((*(this + 113) & 2) != 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    *(a2 + 2) = v22;
    a2 = (a2 + 3);
    if ((*(this + 113) & 2) != 0)
    {
      goto LABEL_38;
    }
  }

LABEL_12:
  if ((*(this + 113) & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_42:
  v24 = *(this + 22);
  *a2 = 424;
  if (v24 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, a2 + 2, a3);
    if ((*(this + 112) & 0x10) != 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    *(a2 + 2) = v24;
    a2 = (a2 + 3);
    if ((*(this + 112) & 0x10) != 0)
    {
      goto LABEL_46;
    }
  }

LABEL_14:
  if ((*(this + 112) & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_50:
  v26 = *(this + 17);
  *a2 = 440;
  if (v26 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, a2 + 2, a3);
    if ((*(this + 113) & 4) != 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    *(a2 + 2) = v26;
    a2 = (a2 + 3);
    if ((*(this + 113) & 4) != 0)
    {
      goto LABEL_54;
    }
  }

LABEL_16:
  if ((*(this + 112) & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_58:
  v28 = *(this + 18);
  *a2 = 456;
  if (v28 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, a2 + 2, a3);
    if (*(this + 113))
    {
      goto LABEL_62;
    }
  }

  else
  {
    *(a2 + 2) = v28;
    a2 = (a2 + 3);
    if (*(this + 113))
    {
      goto LABEL_62;
    }
  }

LABEL_18:
  v11 = *(this + 28);
  if ((v11 & 0x1000) == 0)
  {
    goto LABEL_19;
  }

LABEL_66:
  v30 = *(this + 23);
  *a2 = 477;
  *(a2 + 2) = v30;
  a2 = (a2 + 6);
  v11 = *(this + 28);
  if ((v11 & 0x2000) == 0)
  {
LABEL_20:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  v31 = *(this + 26);
  *a2 = 485;
  *(a2 + 2) = v31;
  a2 = (a2 + 6);
  if ((*(this + 28) & 0x4000) == 0)
  {
LABEL_21:
    v14 = *(this + 1);
    v13 = (this + 8);
    v12 = v14;
    if (!v14)
    {
      return a2;
    }

    goto LABEL_74;
  }

LABEL_68:
  v32 = *(this + 12);
  if (v32)
  {
    *a2 = 490;
    v33 = a2 + 2;
    v34 = v32[8];
    if (v34 <= 0x7F)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v32 = *(qword_28144B968 + 96);
    *a2 = 490;
    v33 = a2 + 2;
    v34 = v32[8];
    if (v34 <= 0x7F)
    {
LABEL_70:
      *(a2 + 2) = v34;
      a2 = sub_245A4AE3C(v32, (a2 + 3), a3);
      v35 = *(this + 1);
      v13 = (this + 8);
      v12 = v35;
      if (!v35)
      {
        return a2;
      }

      goto LABEL_74;
    }
  }

  v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v33, a3);
  a2 = sub_245A4AE3C(v32, v36, v37);
  v38 = *(this + 1);
  v13 = (this + 8);
  v12 = v38;
  if (!v38)
  {
    return a2;
  }

LABEL_74:
  if (*v12 == v12[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, a2, a3);
}

uint64_t sub_245A89FB0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 112);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_45;
  }

  if ((v3 & 2) == 0)
  {
    if ((v3 & 4) != 0)
    {
      v4 = 10;
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_19:
    v8 = *(a1 + 56);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 2;
      v3 = *(a1 + 112);
    }

    else
    {
      v9 = 3;
    }

    v4 += v9;
    goto LABEL_23;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = sub_245A59EA4(v5, a2);
    if (v6 < 0x80)
    {
LABEL_12:
      v7 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = sub_245A59EA4(*(qword_28144B968 + 40), a2);
    if (v6 < 0x80)
    {
      goto LABEL_12;
    }
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
LABEL_15:
  v3 = *(a1 + 112);
  if ((v3 & 4) != 0)
  {
    v4 = v6 + v7 + 12;
  }

  else
  {
    v4 = v6 + v7 + 2;
  }

  if ((v3 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_23:
  if ((v3 & 0x10) != 0)
  {
    v10 = *(a1 + 60);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v3 = *(a1 + 112);
      v4 += v11 + 2;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v4 += 3;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_25:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_26;
    }

LABEL_37:
    v14 = *(a1 + 68);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      v3 = *(a1 + 112);
      v4 += v15 + 2;
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v4 += 3;
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_27:
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_45;
  }

  if ((v3 & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_33:
  v12 = *(a1 + 64);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    v3 = *(a1 + 112);
    v4 += v13 + 2;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v4 += 3;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_26:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_27;
  }

LABEL_41:
  v16 = *(a1 + 72);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v3 = *(a1 + 112);
    v4 += v17 + 2;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v4 += 3;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_78;
    }
  }

LABEL_45:
  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_47;
    }

LABEL_54:
    v20 = *(a1 + 80);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      v3 = *(a1 + 112);
      v4 += v21 + 2;
      if ((v3 & 0x400) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v4 += 3;
      if ((v3 & 0x400) != 0)
      {
        goto LABEL_58;
      }
    }

LABEL_48:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  v18 = *(a1 + 76);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    v3 = *(a1 + 112);
    v4 += v19 + 2;
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v4 += 3;
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_54;
    }
  }

LABEL_47:
  if ((v3 & 0x400) == 0)
  {
    goto LABEL_48;
  }

LABEL_58:
  v22 = *(a1 + 84);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    v3 = *(a1 + 112);
    v4 += v23 + 2;
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v4 += 3;
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }
  }

LABEL_62:
  v24 = *(a1 + 88);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 2;
    v3 = *(a1 + 112);
  }

  else
  {
    v25 = 3;
  }

  v4 += v25;
LABEL_66:
  v26 = v4 + 6;
  if ((v3 & 0x1000) == 0)
  {
    v26 = v4;
  }

  if ((v3 & 0x2000) != 0)
  {
    v4 = v26 + 6;
  }

  else
  {
    v4 = v26;
  }

  if ((v3 & 0x4000) != 0)
  {
    v27 = *(a1 + 96);
    if (v27)
    {
      v28 = sub_245A4AFAC(v27, a2);
      if (v28 < 0x80)
      {
LABEL_74:
        v29 = 1;
LABEL_77:
        v4 += v28 + v29 + 2;
        goto LABEL_78;
      }
    }

    else
    {
      v28 = sub_245A4AFAC(*(qword_28144B968 + 96), a2);
      if (v28 < 0x80)
      {
        goto LABEL_74;
      }
    }

    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
    goto LABEL_77;
  }

LABEL_78:
  v30 = *(a1 + 24);
  v31 = (v30 + v4);
  if (v30 >= 1)
  {
    v32 = 0;
    do
    {
      v34 = sub_245A88A58(*(*(a1 + 16) + 8 * v32), a2);
      v35 = v34;
      if (v34 < 0x80)
      {
        v33 = 1;
      }

      else
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
      }

      v31 = (v35 + v31 + v33);
      ++v32;
    }

    while (v32 < *(a1 + 24));
  }

  v36 = *(a1 + 8);
  if (v36 && *v36 != v36[1])
  {
    v31 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v31;
  }

  *(a1 + 108) = v31;
  return v31;
}

uint64_t sub_245A8A32C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_2858A0AC0, 0);
  if (v5)
  {
    return sub_245A89280(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A8A40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A8A420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A8A434(uint64_t result, uint64_t a2)
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

uint64_t sub_245A8A4C0()
{
  v0 = qword_28144B770;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A85E80;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B728;
}

void sub_245A8A550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A8A564(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 88);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = MEMORY[0x277D82C30];
  if (v4)
  {
    v6 = *(a2 + 16);
    *(a1 + 88) |= 1u;
    v7 = *(a1 + 16);
    if (v7 == v5)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 88);
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

  v8 = *(a2 + 24);
  *(a1 + 88) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 88);
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
  v9 = *(a2 + 32);
  *(a1 + 88) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 88);
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
  v10 = *(a2 + 36);
  *(a1 + 88) |= 8u;
  *(a1 + 36) = v10;
  v4 = *(a2 + 88);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 40);
  *(a1 + 88) |= 0x10u;
  *(a1 + 40) = v11;
  v4 = *(a2 + 88);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = *(a2 + 44);
  *(a1 + 88) |= 0x20u;
  *(a1 + 44) = v12;
  v4 = *(a2 + 88);
  if ((v4 & 0x40) != 0)
  {
LABEL_22:
    v13 = *(a2 + 48);
    *(a1 + 88) |= 0x40u;
    v14 = *(a1 + 48);
    if (v14 == v5)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
    v4 = *(a2 + 88);
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_25;
    }

LABEL_12:
    if ((v4 & 0xFF00) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_28;
  }

LABEL_11:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_25:
  v15 = *(a2 + 56);
  *(a1 + 88) |= 0x80u;
  v16 = *(a1 + 56);
  if (v16 == v5)
  {
    operator new();
  }

  std::string::operator=(v16, v15);
  v4 = *(a2 + 88);
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_28:
  if ((v4 & 0x100) != 0)
  {
    v19 = *(a2 + 72);
    *(a1 + 88) |= 0x100u;
    *(a1 + 72) = v19;
    v4 = *(a2 + 88);
    if ((v4 & 0x200) == 0)
    {
LABEL_30:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_31;
      }

LABEL_38:
      v22 = *(a2 + 76);
      *(a1 + 88) |= 0x400u;
      *(a1 + 76) = v22;
      if ((*(a2 + 88) & 0x800) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_30;
  }

  v20 = *(a2 + 64);
  *(a1 + 88) |= 0x200u;
  v21 = *(a1 + 64);
  if (v21 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v21, v20);
  v4 = *(a2 + 88);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  if ((v4 & 0x800) != 0)
  {
LABEL_32:
    v17 = *(a2 + 80);
    *(a1 + 88) |= 0x800u;
    *(a1 + 80) = v17;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A8A860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A8A874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A8A888(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = MEMORY[0x277D82C30];
  if (v2 == MEMORY[0x277D82C30] || v2 == 0)
  {
    v5 = *(result + 48);
    if (v5 != MEMORY[0x277D82C30] && v5 != 0)
    {
      goto LABEL_28;
    }

LABEL_11:
    v7 = v1[7];
    if (v7 != v3 && v7 != 0)
    {
      goto LABEL_34;
    }

LABEL_16:
    v9 = v1[8];
    if (v9 != v3 && v9 != 0)
    {
      goto LABEL_40;
    }

    return result;
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = MEMORY[0x245D78870](v2, 0x1012C40EC159624);
  v5 = v1[6];
  if (v5 == v3 || v5 == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  result = MEMORY[0x245D78870](v5, 0x1012C40EC159624);
  v7 = v1[7];
  if (v7 == v3 || v7 == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  result = MEMORY[0x245D78870](v7, 0x1012C40EC159624);
  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
LABEL_40:
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x245D78870);
  }

  return result;
}

void sub_245A8A9C4(void *a1)
{
  *a1 = &unk_2858A0878;
  v1 = a1 + 1;
  sub_245A8A888(a1);
  MEMORY[0x245D78300](v1);

  JUMPOUT(0x245D78470);
}

void sub_245A8AA24(void *a1)
{
  *a1 = &unk_2858A0878;
  v2 = a1 + 1;
  sub_245A8A888(a1);
  MEMORY[0x245D78300](v2);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A8AB4C(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    goto LABEL_17;
  }

  v1 = MEMORY[0x277D82C30];
  if ((*(a1 + 88) & 1) == 0 || (v2 = *(a1 + 16), v2 == MEMORY[0x277D82C30]))
  {
LABEL_6:
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if ((*(a1 + 88) & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_6;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if ((*(a1 + 88) & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v3 = *(a1 + 48);
  if (v3 != v1)
  {
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_13:
  if ((*(a1 + 88) & 0x80) != 0)
  {
    v4 = *(a1 + 56);
    if (v4 != v1)
    {
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        v5 = *(a1 + 88);
        if ((v5 & 0xFF00) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

LABEL_17:
  v5 = *(a1 + 88);
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  *(a1 + 72) = 0;
  if ((v5 & 0x200) != 0)
  {
    v6 = *(a1 + 64);
    if (v6 != MEMORY[0x277D82C30])
    {
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
      }
    }
  }

  *(a1 + 76) = 0x100000000;
LABEL_26:
  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 20) = 0;
  if (v8)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A8AC80(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x277D82C30];
  do
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
                if (TagFallback >> 3 > 6)
                {
                  break;
                }

                if (TagFallback >> 3 > 3)
                {
                  if (v9 == 4)
                  {
                    if ((TagFallback & 7) != 0)
                    {
                      goto LABEL_79;
                    }

                    v21 = *(this + 1);
                    v11 = *(this + 2);
                    if (v21 >= v11)
                    {
                      goto LABEL_114;
                    }

LABEL_111:
                    v36 = *v21;
                    if (v36 < 0)
                    {
                      goto LABEL_114;
                    }

                    *(a1 + 36) = v36;
                    v37 = v21 + 1;
                    *(this + 1) = v37;
                    *(a1 + 88) |= 8u;
                    if (v37 < v11)
                    {
LABEL_116:
                      if (*v37 == 40)
                      {
                        v31 = v37 + 1;
                        *(this + 1) = v31;
                        if (v31 < v11)
                        {
                          goto LABEL_118;
                        }

LABEL_121:
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
                        if (!result)
                        {
                          return result;
                        }

                        v39 = *(this + 1);
                        v11 = *(this + 2);
                        *(a1 + 88) |= 0x10u;
                        if (v39 < v11)
                        {
                          goto LABEL_123;
                        }
                      }
                    }
                  }

                  else if (v9 == 5)
                  {
                    if ((TagFallback & 7) != 0)
                    {
                      goto LABEL_79;
                    }

                    v31 = *(this + 1);
                    v11 = *(this + 2);
                    if (v31 >= v11)
                    {
                      goto LABEL_121;
                    }

LABEL_118:
                    v38 = *v31;
                    if (v38 < 0)
                    {
                      goto LABEL_121;
                    }

                    *(a1 + 40) = v38;
                    v39 = v31 + 1;
                    *(this + 1) = v39;
                    *(a1 + 88) |= 0x10u;
                    if (v39 < v11)
                    {
LABEL_123:
                      if (*v39 == 48)
                      {
                        v15 = v39 + 1;
                        *(this + 1) = v15;
                        if (v15 < v11)
                        {
                          goto LABEL_125;
                        }

LABEL_128:
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                        if (!result)
                        {
                          return result;
                        }

                        v41 = *(this + 1);
                        v43 = *(this + 2);
                        v42 = *(a1 + 88) | 0x20;
                        *(a1 + 88) = v42;
                        if (v41 < v43)
                        {
                          goto LABEL_130;
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v9 != 6 || (TagFallback & 7) != 0)
                    {
                      goto LABEL_79;
                    }

                    v15 = *(this + 1);
                    v11 = *(this + 2);
                    if (v15 >= v11)
                    {
                      goto LABEL_128;
                    }

LABEL_125:
                    v40 = *v15;
                    if (v40 < 0)
                    {
                      goto LABEL_128;
                    }

                    *(a1 + 44) = v40;
                    v41 = v15 + 1;
                    *(this + 1) = v41;
                    v42 = *(a1 + 88) | 0x20;
                    *(a1 + 88) = v42;
                    if (v41 < v11)
                    {
LABEL_130:
                      if (*v41 == 58)
                      {
                        *(this + 1) = v41 + 1;
                        *(a1 + 88) = v42 | 0x40;
                        if (*(a1 + 48) == v6)
                        {
LABEL_42:
                          operator new();
                        }

                        goto LABEL_43;
                      }
                    }
                  }
                }

                else if (v9 == 1)
                {
                  if (v10 != 2)
                  {
                    goto LABEL_79;
                  }

                  *(a1 + 88) |= 1u;
                  if (*(a1 + 16) == v6)
                  {
                    operator new();
                  }

                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                  if (!result)
                  {
                    return result;
                  }

                  v19 = *(this + 1);
                  if (v19 < *(this + 2) && *v19 == 17)
                  {
                    *(this + 1) = v19 + 1;
                    goto LABEL_58;
                  }
                }

                else if (v9 == 2)
                {
                  if (v10 != 1)
                  {
                    goto LABEL_79;
                  }

LABEL_58:
                  v44 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v44) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 24) = v44;
                  *(a1 + 88) |= 2u;
                  v24 = *(this + 1);
                  v11 = *(this + 2);
                  if (v24 < v11 && *v24 == 24)
                  {
                    v12 = v24 + 1;
                    *(this + 1) = v12;
                    if (v12 < v11)
                    {
                      goto LABEL_62;
                    }

LABEL_107:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                    if (!result)
                    {
                      return result;
                    }

                    v26 = *(this + 1);
                    v11 = *(this + 2);
                    *(a1 + 88) |= 4u;
                    if (v26 < v11)
                    {
                      goto LABEL_109;
                    }
                  }
                }

                else
                {
                  if (v9 != 3 || (TagFallback & 7) != 0)
                  {
                    goto LABEL_79;
                  }

                  v12 = *(this + 1);
                  v11 = *(this + 2);
                  if (v12 >= v11)
                  {
                    goto LABEL_107;
                  }

LABEL_62:
                  v25 = *v12;
                  if (v25 < 0)
                  {
                    goto LABEL_107;
                  }

                  *(a1 + 32) = v25;
                  v26 = v12 + 1;
                  *(this + 1) = v26;
                  *(a1 + 88) |= 4u;
                  if (v26 < v11)
                  {
LABEL_109:
                    if (*v26 == 32)
                    {
                      v21 = v26 + 1;
                      *(this + 1) = v21;
                      if (v21 < v11)
                      {
                        goto LABEL_111;
                      }

LABEL_114:
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                      if (!result)
                      {
                        return result;
                      }

                      v37 = *(this + 1);
                      v11 = *(this + 2);
                      *(a1 + 88) |= 8u;
                      if (v37 < v11)
                      {
                        goto LABEL_116;
                      }
                    }
                  }
                }
              }

              if (TagFallback >> 3 > 9)
              {
                break;
              }

              if (v9 == 7)
              {
                if (v10 != 2)
                {
                  goto LABEL_79;
                }

                *(a1 + 88) |= 0x40u;
                if (*(a1 + 48) == v6)
                {
                  goto LABEL_42;
                }

LABEL_43:
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v20 = *(this + 1);
                if (v20 < *(this + 2) && *v20 == 66)
                {
                  *(this + 1) = v20 + 1;
LABEL_66:
                  *(a1 + 88) |= 0x80u;
                  if (*(a1 + 56) == v6)
                  {
                    operator new();
                  }

                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                  if (!result)
                  {
                    return result;
                  }

                  v27 = *(this + 1);
                  v13 = *(this + 2);
                  if (v27 < v13 && *v27 == 72)
                  {
                    v14 = v27 + 1;
                    *(this + 1) = v14;
                    if (v14 < v13)
                    {
                      goto LABEL_72;
                    }

LABEL_102:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                    if (!result)
                    {
                      return result;
                    }

                    v29 = *(this + 1);
                    v35 = *(this + 2);
                    v30 = *(a1 + 88) | 0x100;
                    *(a1 + 88) = v30;
                    if (v29 < v35)
                    {
                      goto LABEL_104;
                    }
                  }
                }
              }

              else if (v9 == 8)
              {
                if (v10 == 2)
                {
                  goto LABEL_66;
                }

LABEL_79:
                if (v10 == 4)
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
                if (v9 != 9 || (TagFallback & 7) != 0)
                {
                  goto LABEL_79;
                }

                v14 = *(this + 1);
                v13 = *(this + 2);
                if (v14 >= v13)
                {
                  goto LABEL_102;
                }

LABEL_72:
                v28 = *v14;
                if (v28 < 0)
                {
                  goto LABEL_102;
                }

                *(a1 + 72) = v28;
                v29 = v14 + 1;
                *(this + 1) = v29;
                v30 = *(a1 + 88) | 0x100;
                *(a1 + 88) = v30;
                if (v29 < v13)
                {
LABEL_104:
                  if (*v29 == 82)
                  {
                    *(this + 1) = v29 + 1;
                    *(a1 + 88) = v30 | 0x200;
                    if (*(a1 + 64) == v6)
                    {
LABEL_52:
                      operator new();
                    }

                    goto LABEL_53;
                  }
                }
              }
            }

            if (v9 != 10)
            {
              break;
            }

            if (v10 != 2)
            {
              goto LABEL_79;
            }

            *(a1 + 88) |= 0x200u;
            if (*(a1 + 64) == v6)
            {
              goto LABEL_52;
            }

LABEL_53:
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v16 = *(this + 2);
            if (v22 < v16 && *v22 == 88)
            {
              v23 = v22 + 1;
              *(this + 1) = v23;
              goto LABEL_83;
            }
          }

          if (v9 != 11)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_79;
          }

          v23 = *(this + 1);
          v16 = *(this + 2);
LABEL_83:
          if (v23 >= v16 || (v32 = *v23, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
            if (!result)
            {
              return result;
            }

            v33 = *(this + 1);
            v16 = *(this + 2);
            *(a1 + 88) |= 0x400u;
            if (v33 < v16)
            {
              goto LABEL_89;
            }
          }

          else
          {
            *(a1 + 76) = v32;
            v33 = v23 + 1;
            *(this + 1) = v33;
            *(a1 + 88) |= 0x400u;
            if (v33 < v16)
            {
LABEL_89:
              if (*v33 == 96)
              {
                v17 = v33 + 1;
                *(this + 1) = v17;
                goto LABEL_91;
              }
            }
          }
        }

        if (v9 != 12 || (TagFallback & 7) != 0)
        {
          goto LABEL_79;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
LABEL_91:
        v45 = 0;
        if (v17 >= v16)
        {
          break;
        }

        v34 = *v17;
        if ((v34 & 0x80000000) != 0)
        {
          break;
        }

        *(this + 1) = v17 + 1;
        if (v34 - 1 > 1)
        {
          goto LABEL_98;
        }

LABEL_94:
        *(a1 + 88) |= 0x800u;
        *(a1 + 80) = v34;
        if (*(this + 1) == *(this + 2))
        {
          goto LABEL_99;
        }
      }

      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45);
      if (!result)
      {
        return result;
      }

      v34 = v45;
      if (v45 - 1 <= 1)
      {
        goto LABEL_94;
      }

LABEL_98:
      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8));
    }

    while (*(this + 1) != *(this + 2));
LABEL_99:
    ;
  }

  while (!*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_245A8B3DC(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 88);
  if (v6)
  {
    v10 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 88);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 88);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 44), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(v5 + 48);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 88);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(v5 + 56);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 88);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 72), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(v5 + 64);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 88);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 76), a2, a4);
  if ((*(v5 + 88) & 0x800) == 0)
  {
LABEL_13:
    v9 = *(v5 + 8);
    v8 = v5 + 8;
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 80), a2, a4);
  v14 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v14;
  if (!v14)
  {
    return result;
  }

LABEL_27:
  if (*v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A8B590(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 22);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v15 = *(this + 3);
    *result = 17;
    *(result + 1) = v15;
    result = (result + 9);
    v5 = *(this + 22);
    goto LABEL_17;
  }

  v7 = *(this + 2);
  *a2 = 10;
  v9 = a2 + 1;
  v10 = *(v7 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v7 + 8);
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else if (v10 <= 0x7F)
  {
LABEL_6:
    *(a2 + 1) = v10;
    v11 = a2 + 2;
    goto LABEL_9;
  }

  v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
LABEL_9:
  v12 = *(v7 + 23);
  if (v12 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *v7;
  }

  if (v12 >= 0)
  {
    v14 = *(v7 + 23);
  }

  else
  {
    v14 = *(v7 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, a4);
  v5 = *(this + 22);
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  if ((v5 & 4) == 0)
  {
    if ((*(this + 88) & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_36:
    v22 = *(this + 9);
    *result = 32;
    if (v22 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, result + 1, a3);
      if ((*(this + 88) & 0x10) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *(result + 1) = v22;
      result = (result + 2);
      if ((*(this + 88) & 0x10) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_20:
    if ((*(this + 88) & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_44:
    v24 = *(this + 11);
    *result = 48;
    if (v24 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, result + 1, a3);
      v16 = *(this + 22);
      if ((v16 & 0x40) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(result + 1) = v24;
      result = (result + 2);
      v16 = *(this + 22);
      if ((v16 & 0x40) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_22:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

  v21 = *(this + 8);
  *result = 24;
  if (v21 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, result + 1, a3);
    if ((*(this + 88) & 8) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    *(result + 1) = v21;
    result = (result + 2);
    if ((*(this + 88) & 8) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_19:
  if ((*(this + 88) & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_40:
  v23 = *(this + 10);
  *result = 40;
  if (v23 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, result + 1, a3);
    if ((*(this + 88) & 0x20) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    *(result + 1) = v23;
    result = (result + 2);
    if ((*(this + 88) & 0x20) != 0)
    {
      goto LABEL_44;
    }
  }

LABEL_21:
  v16 = *(this + 22);
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_48:
  v25 = *(this + 6);
  *result = 58;
  v26 = *(v25 + 23);
  if ((v26 & 0x8000000000000000) != 0)
  {
    v26 = *(v25 + 8);
    if (v26 <= 0x7F)
    {
      goto LABEL_50;
    }
  }

  else if (v26 <= 0x7F)
  {
LABEL_50:
    *(result + 1) = v26;
    v27 = result + 2;
    goto LABEL_53;
  }

  v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, result + 1, a3);
LABEL_53:
  v28 = *(v25 + 23);
  if (v28 >= 0)
  {
    v29 = v25;
  }

  else
  {
    v29 = *v25;
  }

  if (v28 >= 0)
  {
    v30 = *(v25 + 23);
  }

  else
  {
    v30 = *(v25 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v29, v30, v27, a4);
  v16 = *(this + 22);
  if ((v16 & 0x80) == 0)
  {
LABEL_23:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_24;
    }

LABEL_72:
    v37 = *(this + 18);
    *result = 72;
    if (v37 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, result + 1, a3);
      v17 = *(this + 22);
      if ((v17 & 0x200) != 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      *(result + 1) = v37;
      result = (result + 2);
      v17 = *(this + 22);
      if ((v17 & 0x200) != 0)
      {
        goto LABEL_76;
      }
    }

LABEL_25:
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_26;
    }

LABEL_88:
    v44 = *(this + 19);
    *result = 88;
    if (v44 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, result + 1, a3);
      if ((*(this + 89) & 8) != 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      *(result + 1) = v44;
      result = (result + 2);
      if ((*(this + 89) & 8) != 0)
      {
        goto LABEL_92;
      }
    }

LABEL_27:
    v20 = *(this + 1);
    v19 = (this + 8);
    v18 = v20;
    if (!v20)
    {
      return result;
    }

    goto LABEL_28;
  }

LABEL_60:
  v31 = *(this + 7);
  *result = 66;
  v32 = *(v31 + 23);
  if ((v32 & 0x8000000000000000) != 0)
  {
    v32 = *(v31 + 8);
    if (v32 <= 0x7F)
    {
      goto LABEL_62;
    }
  }

  else if (v32 <= 0x7F)
  {
LABEL_62:
    *(result + 1) = v32;
    v33 = result + 2;
    goto LABEL_65;
  }

  v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, result + 1, a3);
LABEL_65:
  v34 = *(v31 + 23);
  if (v34 >= 0)
  {
    v35 = v31;
  }

  else
  {
    v35 = *v31;
  }

  if (v34 >= 0)
  {
    v36 = *(v31 + 23);
  }

  else
  {
    v36 = *(v31 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v35, v36, v33, a4);
  if ((*(this + 22) & 0x100) != 0)
  {
    goto LABEL_72;
  }

LABEL_24:
  v17 = *(this + 22);
  if ((v17 & 0x200) == 0)
  {
    goto LABEL_25;
  }

LABEL_76:
  v38 = *(this + 8);
  *result = 82;
  v39 = *(v38 + 23);
  if ((v39 & 0x8000000000000000) != 0)
  {
    v39 = *(v38 + 8);
    if (v39 <= 0x7F)
    {
      goto LABEL_78;
    }
  }

  else if (v39 <= 0x7F)
  {
LABEL_78:
    *(result + 1) = v39;
    v40 = result + 2;
    goto LABEL_81;
  }

  v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, result + 1, a3);
LABEL_81:
  v41 = *(v38 + 23);
  if (v41 >= 0)
  {
    v42 = v38;
  }

  else
  {
    v42 = *v38;
  }

  if (v41 >= 0)
  {
    v43 = *(v38 + 23);
  }

  else
  {
    v43 = *(v38 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v42, v43, v40, a4);
  if ((*(this + 22) & 0x400) != 0)
  {
    goto LABEL_88;
  }

LABEL_26:
  if ((*(this + 89) & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_92:
  v45 = *(this + 20);
  *result = 96;
  v46 = result + 1;
  if ((v45 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v45, v46, a3);
    v48 = *(this + 1);
    v19 = (this + 8);
    v18 = v48;
    if (!v48)
    {
      return result;
    }
  }

  else if (v45 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v46, a3);
    v49 = *(this + 1);
    v19 = (this + 8);
    v18 = v49;
    if (!v49)
    {
      return result;
    }
  }

  else
  {
    *(result + 1) = v45;
    result = (result + 2);
    v47 = *(this + 1);
    v19 = (this + 8);
    v18 = v47;
    if (!v47)
    {
      return result;
    }
  }

LABEL_28:
  if (*v18 != v18[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, result, a3);
  }

  return result;
}

uint64_t sub_245A8B9F4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) != 0)
    {
      v4 = 9;
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 4) == 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    v13 = *(a1 + 32);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
    goto LABEL_26;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(a1 + 88);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v12 = v10 + v6;
  if ((v3 & 2) != 0)
  {
    v4 = v12 + 9;
  }

  else
  {
    v4 = v12;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  if ((v3 & 8) != 0)
  {
    v15 = *(a1 + 36);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v3 = *(a1 + 88);
      v4 = (v16 + 1 + v4);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_28:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_41:
    v19 = *(a1 + 44);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      v3 = *(a1 + 88);
      v4 = (v20 + 1 + v4);
      if ((v3 & 0x40) != 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x40) != 0)
      {
        goto LABEL_45;
      }
    }

LABEL_30:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_54;
  }

  if ((v3 & 0x10) == 0)
  {
    goto LABEL_28;
  }

LABEL_37:
  v17 = *(a1 + 40);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    v3 = *(a1 + 88);
    v4 = (v18 + 1 + v4);
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_41;
    }
  }

LABEL_29:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_45:
  v21 = *(a1 + 48);
  v22 = *(v21 + 23);
  v23 = v22;
  v24 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v25 = *(v21 + 23);
  }

  else
  {
    v25 = v24;
  }

  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    v22 = *(v21 + 23);
    v24 = *(v21 + 8);
    v3 = *(a1 + 88);
    v23 = *(v21 + 23);
  }

  else
  {
    v26 = 1;
  }

  if (v23 < 0)
  {
    v22 = v24;
  }

  v4 = (v4 + v26 + v22 + 1);
  if ((v3 & 0x80) == 0)
  {
LABEL_31:
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_67;
    }

LABEL_63:
    if ((v3 & 0x100) == 0)
    {
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_65;
      }

LABEL_73:
      v38 = *(a1 + 64);
      v39 = *(v38 + 23);
      v40 = v39;
      v41 = *(v38 + 8);
      if ((v39 & 0x80u) == 0)
      {
        v42 = *(v38 + 23);
      }

      else
      {
        v42 = v41;
      }

      if (v42 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
        v39 = *(v38 + 23);
        v41 = *(v38 + 8);
        v3 = *(a1 + 88);
        v40 = *(v38 + 23);
      }

      else
      {
        v43 = 1;
      }

      if (v40 < 0)
      {
        v39 = v41;
      }

      v4 = (v4 + v43 + v39 + 1);
      if ((v3 & 0x400) == 0)
      {
LABEL_66:
        if ((v3 & 0x800) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_86;
      }

LABEL_82:
      v44 = *(a1 + 76);
      if (v44 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 1 + v4;
        if ((*(a1 + 88) & 0x800) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v4 = (v4 + 2);
        if ((v3 & 0x800) == 0)
        {
          goto LABEL_67;
        }
      }

LABEL_86:
      v45 = *(a1 + 80);
      if ((v45 & 0x80000000) != 0)
      {
        v4 = (v4 + 11);
        v33 = (a1 + 8);
        v34 = *(a1 + 8);
        if (!v34)
        {
          goto LABEL_68;
        }
      }

      else if (v45 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 1 + v4;
        v33 = (a1 + 8);
        v34 = *(a1 + 8);
        if (!v34)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v4 = (v4 + 2);
        v33 = (a1 + 8);
        v34 = *(a1 + 8);
        if (!v34)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_93;
    }

    v36 = *(a1 + 72);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
      v3 = *(a1 + 88);
      v4 = (v37 + 1 + v4);
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_65:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_82;
  }

LABEL_54:
  v27 = *(a1 + 56);
  v28 = *(v27 + 23);
  v29 = v28;
  v30 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v31 = *(v27 + 23);
  }

  else
  {
    v31 = v30;
  }

  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
    v28 = *(v27 + 23);
    v30 = *(v27 + 8);
    v3 = *(a1 + 88);
    v29 = *(v27 + 23);
  }

  else
  {
    v32 = 1;
  }

  if (v29 < 0)
  {
    v28 = v30;
  }

  v4 = (v4 + v32 + v28 + 1);
  if ((v3 & 0xFF00) != 0)
  {
    goto LABEL_63;
  }

LABEL_67:
  v33 = (a1 + 8);
  v34 = *(a1 + 8);
  if (!v34)
  {
LABEL_68:
    *(a1 + 84) = v4;
    return v4;
  }

LABEL_93:
  if (*v34 == v34[1])
  {
    goto LABEL_68;
  }

  v46 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v33, a2) + v4;
  *(a1 + 84) = v46;
  return v46;
}

uint64_t sub_245A8BD9C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_2858A0AD8, 0);
  if (v5)
  {
    return sub_245A8A564(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A8BE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A8BE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A8BEA4(uint64_t result, uint64_t a2)
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

uint64_t sub_245A8BF38()
{
  v0 = qword_28144B770;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A85E80;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B738;
}

void sub_245A8BFC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A8BFDC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  v5 = MEMORY[0x277D82C30];
  if (*(a2 + 60))
  {
    v8 = *(a2 + 16);
    *(a1 + 60) |= 1u;
    v9 = *(a1 + 16);
    if (v9 == v5)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 24);
  *(a1 + 60) |= 2u;
  v11 = *(a1 + 24);
  if (v11 == v5)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v14 = *(a2 + 40);
    *(a1 + 60) |= 8u;
    *(a1 + 40) = v14;
    if ((*(a2 + 60) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_17:
  v12 = *(a2 + 32);
  *(a1 + 60) |= 4u;
  v13 = *(a1 + 32);
  if (v13 == v5)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 60);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v6 = *(a2 + 48);
    *(a1 + 60) |= 0x10u;
    *(a1 + 48) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A8C1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A8C1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A8C1D0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = MEMORY[0x277D82C30];
  if (v2 == MEMORY[0x277D82C30] || v2 == 0)
  {
    v5 = *(result + 24);
    if (v5 != MEMORY[0x277D82C30] && v5 != 0)
    {
      goto LABEL_23;
    }

LABEL_11:
    v7 = *(v1 + 32);
    if (v7 != v3 && v7 != 0)
    {
      goto LABEL_29;
    }

    return result;
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = MEMORY[0x245D78870](v2, 0x1012C40EC159624);
  v5 = *(v1 + 24);
  if (v5 == v3 || v5 == 0)
  {
    goto LABEL_11;
  }

LABEL_23:
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  result = MEMORY[0x245D78870](v5, 0x1012C40EC159624);
  v7 = *(v1 + 32);
  if (v7 != v3 && v7 != 0)
  {
LABEL_29:
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x245D78870);
  }

  return result;
}

void sub_245A8C2D0(void *a1)
{
  *a1 = &unk_2858A0928;
  v1 = a1 + 1;
  sub_245A8C1D0(a1);
  MEMORY[0x245D78300](v1);

  JUMPOUT(0x245D78470);
}

void sub_245A8C330(void *a1)
{
  *a1 = &unk_2858A0928;
  v2 = a1 + 1;
  sub_245A8C1D0(a1);
  MEMORY[0x245D78300](v2);
  MEMORY[0x245D78470](a1);

  JUMPOUT(0x245D78870);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A8C444(uint64_t a1)
{
  if (!*(a1 + 60))
  {
    goto LABEL_19;
  }

  v1 = MEMORY[0x277D82C30];
  if ((*(a1 + 60) & 1) == 0 || (v2 = *(a1 + 16), v2 == MEMORY[0x277D82C30]))
  {
LABEL_6:
    if ((*(a1 + 60) & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_6;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((*(a1 + 60) & 2) != 0)
  {
LABEL_7:
    v3 = *(a1 + 24);
    if (v3 != v1)
    {
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }
    }
  }

LABEL_13:
  if ((*(a1 + 60) & 4) != 0)
  {
    v4 = *(a1 + 32);
    if (v4 != v1)
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

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
LABEL_19:
  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v6)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_245A8C50C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x277D82C30];
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v9 != 1)
        {
          if (v9 != 2 || v10 != 2)
          {
            goto LABEL_40;
          }

          *(a1 + 60) |= 2u;
          if (*(a1 + 24) == v6)
          {
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        if (v10 != 2)
        {
          goto LABEL_40;
        }

        *(a1 + 60) |= 1u;
        if (*(a1 + 16) == v6)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 18)
        {
          *(this + 1) = v15 + 1;
          *(a1 + 60) |= 2u;
          if (*(a1 + 24) == v6)
          {
LABEL_18:
            operator new();
          }

LABEL_19:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 26)
          {
            *(this + 1) = v12 + 1;
LABEL_24:
            *(a1 + 60) |= 4u;
            if (*(a1 + 32) == v6)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 33)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_31;
            }
          }
        }
      }

      if (v9 == 3)
      {
        if (v10 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_24;
      }

      if (v9 == 4)
      {
        break;
      }

      if (v9 == 5 && v10 == 1)
      {
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_35;
      }

LABEL_40:
      if (v10 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (v10 != 1)
    {
      goto LABEL_40;
    }

LABEL_31:
    v16 = 0;
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
    {
      return 0;
    }

    *(a1 + 40) = v16;
    *(a1 + 60) |= 8u;
    v14 = *(this + 1);
    if (v14 < *(this + 2) && *v14 == 41)
    {
      *(this + 1) = v14 + 1;
      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      *(a1 + 48) = v16;
      *(a1 + 60) |= 0x10u;
      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        break;
      }
    }
  }

  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_245A8C840(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 60);
  if (v5)
  {
    v9 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v5 = *(v4 + 60);
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

  v10 = *(v4 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 60);
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
  v11 = *(v4 + 32);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  if ((*(v4 + 60) & 0x10) == 0)
  {
LABEL_6:
    v8 = *(v4 + 8);
    v7 = v4 + 8;
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  v12 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_13:
  if (*v6 != v6[1])
  {

    return MEMORY[0x2821F9DB8](v7, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A8C930(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 15);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_20;
  }

  v10 = *(this + 2);
  *a2 = 10;
  v11 = a2 + 1;
  v12 = *(v10 + 23);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v12 = *(v10 + 8);
    if (v12 <= 0x7F)
    {
      goto LABEL_10;
    }
  }

  else if (v12 <= 0x7F)
  {
LABEL_10:
    *(v4 + 1) = v12;
    v13 = v4 + 2;
    goto LABEL_13;
  }

  v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
LABEL_13:
  v14 = *(v10 + 23);
  if (v14 >= 0)
  {
    v15 = v10;
  }

  else
  {
    v15 = *v10;
  }

  if (v14 >= 0)
  {
    v16 = *(v10 + 23);
  }

  else
  {
    v16 = *(v10 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v15, v16, v13, a4);
  v6 = *(this + 15);
  if ((v6 & 2) == 0)
  {
LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

LABEL_20:
  v17 = *(this + 3);
  *v4 = 18;
  v18 = *(v17 + 23);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v18 = *(v17 + 8);
    if (v18 <= 0x7F)
    {
      goto LABEL_22;
    }
  }

  else if (v18 <= 0x7F)
  {
LABEL_22:
    *(v4 + 1) = v18;
    v19 = v4 + 2;
    goto LABEL_25;
  }

  v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
LABEL_25:
  v20 = *(v17 + 23);
  if (v20 >= 0)
  {
    v21 = v17;
  }

  else
  {
    v21 = *v17;
  }

  if (v20 >= 0)
  {
    v22 = *(v17 + 23);
  }

  else
  {
    v22 = *(v17 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v21, v22, v19, a4);
  v6 = *(this + 15);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_32:
  v23 = *(this + 4);
  *v4 = 26;
  v24 = *(v23 + 23);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v24 = *(v23 + 8);
    if (v24 <= 0x7F)
    {
      goto LABEL_34;
    }
  }

  else if (v24 <= 0x7F)
  {
LABEL_34:
    *(v4 + 1) = v24;
    v25 = v4 + 2;
    goto LABEL_37;
  }

  v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v4 + 1, a3);
LABEL_37:
  v26 = *(v23 + 23);
  if (v26 >= 0)
  {
    v27 = v23;
  }

  else
  {
    v27 = *v23;
  }

  if (v26 >= 0)
  {
    v28 = *(v23 + 23);
  }

  else
  {
    v28 = *(v23 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v27, v28, v25, a4);
  v6 = *(this + 15);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  v29 = *(this + 5);
  *v4 = 33;
  *(v4 + 1) = v29;
  v4 = (v4 + 9);
  if ((*(this + 15) & 0x10) == 0)
  {
LABEL_6:
    v9 = *(this + 1);
    v8 = (this + 8);
    v7 = v9;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_46;
  }

LABEL_45:
  v30 = *(this + 6);
  *v4 = 41;
  *(v4 + 1) = v30;
  v4 = (v4 + 9);
  v31 = *(this + 1);
  v8 = (this + 8);
  v7 = v31;
  if (!v31)
  {
    return v4;
  }

LABEL_46:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_245A8CB98(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 60);
  if (v3)
  {
    if ((*(a1 + 60) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 60) & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v9 = *(a1 + 16);
    v10 = *(v9 + 23);
    if ((v10 & 0x80u) == 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      v13 = *(v9 + 23);
      v3 = *(a1 + 60);
      if (*(v9 + 23) < 0)
      {
        v13 = *(v9 + 8);
      }

      v4 = v12 + 1 + v13;
      if ((v3 & 2) == 0)
      {
LABEL_27:
        if ((v3 & 4) != 0)
        {
          v20 = *(a1 + 32);
          v21 = *(v20 + 23);
          v22 = v21;
          v23 = *(v20 + 8);
          if ((v21 & 0x80u) == 0)
          {
            v24 = *(v20 + 23);
          }

          else
          {
            v24 = v23;
          }

          if (v24 >= 0x80)
          {
            v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
            v21 = *(v20 + 23);
            v23 = *(v20 + 8);
            v3 = *(a1 + 60);
            v22 = *(v20 + 23);
          }

          else
          {
            v25 = 1;
          }

          if (v22 < 0)
          {
            v21 = v23;
          }

          v4 += v25 + v21 + 1;
        }

        v26 = v4 + 9;
        if ((v3 & 8) == 0)
        {
          v26 = v4;
        }

        if ((v3 & 0x10) != 0)
        {
          v5 = v26 + 9;
        }

        else
        {
          v5 = v26;
        }

        v6 = (a1 + 8);
        v7 = *(a1 + 8);
        if (!v7)
        {
          goto LABEL_6;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v9 + 8);
      }

      v4 = v10 + 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_18:
    v14 = *(a1 + 24);
    v15 = *(v14 + 23);
    v16 = v15;
    v17 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v18 = *(v14 + 23);
    }

    else
    {
      v18 = v17;
    }

    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
      v15 = *(v14 + 23);
      v17 = *(v14 + 8);
      v3 = *(a1 + 60);
      v16 = *(v14 + 23);
    }

    else
    {
      v19 = 1;
    }

    if (v16 < 0)
    {
      v15 = v17;
    }

    v4 += v19 + v15 + 1;
    goto LABEL_27;
  }

  v5 = 0;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_6:
    *(a1 + 56) = v5;
    return v5;
  }

LABEL_43:
  if (*v7 == v7[1])
  {
    goto LABEL_6;
  }

  v27 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 56) = v27;
  return v27;
}

uint64_t sub_245A8CD54(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_2858A0AF0, 0);
  if (v5)
  {
    return sub_245A8BFDC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A8CE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A8CE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A8CE5C(uint64_t result, uint64_t a2)
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

uint64_t sub_245A8CEF0()
{
  v0 = qword_28144B770;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A85E80;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B748;
}

void sub_245A8CF80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A8CF94(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v28);
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
  if (*(a2 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v11 = *(*(a2 + 24) + 8 * v7);
        v12 = *(a1 + 36);
        v13 = *(a1 + 32);
        if (v13 >= v12)
        {
          break;
        }

        v14 = *(a1 + 24);
        *(a1 + 32) = v13 + 1;
        v6 = std::string::operator=(*(v14 + 8 * v13), v11);
        if (++v7 >= *(a2 + 32))
        {
          goto LABEL_11;
        }
      }

      if (v12 == *(a1 + 40))
      {
        v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v12 = *(a1 + 36);
      }

      *(a1 + 36) = v12 + 1;
      v8 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v6);
      v9 = *(a1 + 24);
      v10 = *(a1 + 32);
      *(a1 + 32) = v10 + 1;
      *(v9 + 8 * v10) = v8;
      v6 = std::string::operator=(v8, v11);
      ++v7;
    }

    while (v7 < *(a2 + 32));
  }

LABEL_11:
  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
  if (*(a2 + 64) >= 1)
  {
    v17 = 0;
    do
    {
      v19 = *(*(a2 + 56) + 8 * v17);
      v20 = *(a1 + 68);
      v21 = *(a1 + 64);
      if (v21 >= v20)
      {
        if (v20 == *(a1 + 72))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
          v20 = *(a1 + 68);
        }

        *(a1 + 68) = v20 + 1;
        operator new();
      }

      v18 = *(a1 + 56);
      *(a1 + 64) = v21 + 1;
      sub_245A8BFDC(*(v18 + 8 * v21), v19);
      ++v17;
    }

    while (v17 < *(a2 + 64));
  }

  LOBYTE(v22) = *(a2 + 84);
  if (v22)
  {
    if (*(a2 + 84))
    {
      v23 = *(a2 + 16);
      *(a1 + 84) |= 1u;
      v24 = *(a1 + 16);
      if (v24 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v24, v23);
      v22 = *(a2 + 84);
    }

    if ((v22 & 4) != 0)
    {
      *(a1 + 84) |= 4u;
      v25 = *(a1 + 48);
      if (!v25)
      {
        operator new();
      }

      v26 = *(a2 + 48);
      if (!v26)
      {
        v26 = *(qword_28144B960 + 48);
      }

      sub_245A89280(v25, v26);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_245A8D390(uint64_t a1)
{
  *a1 = &unk_2858A09D8;
  v2 = *(a1 + 16);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D78870](v2, 0x1012C40EC159624);
  }

  if (qword_28144B960 != a1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = *(a1 + 68);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 56) + 8 * i);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(a1 + 68);
      }
    }
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    MEMORY[0x245D78850](v8, 0x80C80B8603338);
  }

  if (*(a1 + 36) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 24) + 8 * v9);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v9;
    }

    while (v9 < *(a1 + 36));
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    MEMORY[0x245D78850](v11, 0x80C80B8603338);
  }

  MEMORY[0x245D78300](a1 + 8);

  JUMPOUT(0x245D78470);
}

void sub_245A8D528(uint64_t a1)
{
  sub_245A8D390(a1);

  JUMPOUT(0x245D78870);
}

uint64_t sub_245A8D618(uint64_t this)
{
  v1 = this;
  if (!*(this + 84))
  {
    goto LABEL_9;
  }

  if (*(this + 84))
  {
    v2 = *(this + 16);
    if (v2 != MEMORY[0x277D82C30])
    {
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((*(this + 84) & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_7;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((*(this + 84) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  this = *(this + 48);
  if (this)
  {
    this = sub_245A33928(this);
  }

LABEL_9:
  if (*(v1 + 32) >= 1)
  {
    v3 = 0;
    do
    {
      while (1)
      {
        v4 = *(*(v1 + 24) + 8 * v3);
        if (*(v4 + 23) < 0)
        {
          break;
        }

        *v4 = 0;
        *(v4 + 23) = 0;
        if (++v3 >= *(v1 + 32))
        {
          goto LABEL_14;
        }
      }

      **v4 = 0;
      *(v4 + 8) = 0;
      ++v3;
    }

    while (v3 < *(v1 + 32));
  }

LABEL_14:
  *(v1 + 32) = 0;
  if (*(v1 + 64) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v1 + 56) + 8 * v5);
      this = (*(*v6 + 32))(v6);
      ++v5;
    }

    while (v5 < *(v1 + 64));
  }

  v8 = *(v1 + 8);
  v7 = (v1 + 8);
  *(v7 + 14) = 0;
  *(v7 + 19) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return this;
}

uint64_t sub_245A8D76C(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  v6 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v7 = *(this + 1);
        if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          v8 = result;
          *(this + 8) = result;
          if (!result)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = v8;
          *(this + 1) = v7 + 1;
          if (!v8)
          {
            return 1;
          }
        }

        v9 = v8 >> 3;
        v10 = v8 & 7;
        if (v8 >> 3 > 2)
        {
          break;
        }

        if (v9 != 1)
        {
          if (v9 == 2 && v10 == 2)
          {
            v11 = *(v5 + 36);
            v12 = *(v5 + 32);
            if (v12 < v11)
            {
              goto LABEL_12;
            }

            goto LABEL_31;
          }

          goto LABEL_27;
        }

        if (v10 != 2)
        {
          goto LABEL_27;
        }

        *(v5 + 84) |= 1u;
        if (*(v5 + 16) == v6)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 18)
        {
          while (1)
          {
            *(this + 1) = v19 + 1;
            v11 = *(v5 + 36);
            v12 = *(v5 + 32);
            if (v12 < v11)
            {
LABEL_12:
              v13 = *(v5 + 24);
              *(v5 + 32) = v12 + 1;
              v14 = *(v13 + 8 * v12);
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              goto LABEL_34;
            }

LABEL_31:
            if (v11 == *(v5 + 40))
            {
              result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
              v11 = *(v5 + 36);
            }

            *(v5 + 36) = v11 + 1;
            v20 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
            v21 = *(v5 + 24);
            v22 = *(v5 + 32);
            *(v5 + 32) = v22 + 1;
            *(v21 + 8 * v22) = v20;
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

LABEL_34:
            v19 = *(this + 1);
            if (v19 >= *(this + 2))
            {
              break;
            }

            v23 = *v19;
            if (v23 != 18)
            {
              if (v23 != 26)
              {
                goto LABEL_2;
              }

              *(this + 1) = v19 + 1;
              goto LABEL_38;
            }
          }
        }
      }

      if (v9 != 3)
      {
        break;
      }

      if (v10 != 2)
      {
        goto LABEL_27;
      }

LABEL_38:
      *(v5 + 84) |= 4u;
      v24 = *(v5 + 48);
      if (!v24)
      {
        operator new();
      }

      v42 = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
        {
          return 0;
        }
      }

      else
      {
        v42 = *v25;
        *(this + 1) = v25 + 1;
      }

      v26 = *(this + 14);
      v27 = *(this + 15);
      *(this + 14) = v26 + 1;
      if (v26 >= v27)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_245A32CC4(v24, this, v28, v29) || *(this + 36) != 1)
      {
        return 0;
      }

      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v30 = *(this + 14);
      v31 = __OFSUB__(v30, 1);
      v32 = v30 - 1;
      if (v32 < 0 == v31)
      {
        *(this + 14) = v32;
      }

      v33 = *(this + 1);
      if (v33 < *(this + 2) && *v33 == 34)
      {
        do
        {
          *(this + 1) = v33 + 1;
          v15 = *(v5 + 68);
          v16 = *(v5 + 64);
          if (v16 >= v15)
          {
LABEL_52:
            if (v15 == *(v5 + 72))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 56));
              v15 = *(v5 + 68);
            }

            *(v5 + 68) = v15 + 1;
            operator new();
          }

LABEL_18:
          v17 = *(v5 + 56);
          *(v5 + 64) = v16 + 1;
          v18 = *(v17 + 8 * v16);
          v43 = 0;
          v34 = *(this + 1);
          if (v34 >= *(this + 2) || *v34 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
            {
              return 0;
            }
          }

          else
          {
            v43 = *v34;
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
          if (!sub_245A8C50C(v18, this, v37, v38) || *(this + 36) != 1)
          {
            return 0;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v39 = *(this + 14);
          v31 = __OFSUB__(v39, 1);
          v40 = v39 - 1;
          if (v40 < 0 == v31)
          {
            *(this + 14) = v40;
          }

          v33 = *(this + 1);
          v41 = *(this + 2);
        }

        while (v33 < v41 && *v33 == 34);
        if (v33 == v41 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v9 == 4 && v10 == 2)
    {
      v15 = *(v5 + 68);
      v16 = *(v5 + 64);
      if (v16 >= v15)
      {
        goto LABEL_52;
      }

      goto LABEL_18;
    }

LABEL_27:
    if (v10 == 4)
    {
      return 1;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v8, v5 + 8, a4);
    if ((result & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_245A8DCC8(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 84))
  {
    v4 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v3 + 32) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v3 + 24) + 8 * v5);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v5;
    }

    while (v5 < *(v3 + 32));
  }

  if ((*(v3 + 84) & 4) != 0)
  {
    if (!*(v3 + 48))
    {
      v7 = *(qword_28144B960 + 48);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
  }

  if (*(v3 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v3 + 56) + 8 * v8);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray();
      ++v8;
    }

    while (v8 < *(v3 + 64));
  }

  v12 = *(v3 + 8);
  v11 = v3 + 8;
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return MEMORY[0x2821F9DB8](v11, a2);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_245A8DDD8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((*(this + 84) & 1) == 0)
  {
    result = a2;
    if (*(this + 8) < 1)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v6 = *(this + 2);
  *a2 = 10;
  v8 = a2 + 1;
  v9 = *(v6 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(v6 + 8);
    if (v9 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else if (v9 <= 0x7F)
  {
LABEL_6:
    *(a2 + 1) = v9;
    v10 = a2 + 2;
    goto LABEL_9;
  }

  v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
LABEL_9:
  v11 = *(v6 + 23);
  if (v11 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *v6;
  }

  if (v11 >= 0)
  {
    v13 = *(v6 + 23);
  }

  else
  {
    v13 = *(v6 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
  if (*(this + 8) >= 1)
  {
LABEL_16:
    for (i = 0; i < *(this + 8); ++i)
    {
      v19 = *(*(this + 3) + 8 * i);
      *result = 18;
      v20 = *(v19 + 23);
      if ((v20 & 0x8000000000000000) != 0)
      {
        v20 = *(v19 + 8);
        if (v20 > 0x7F)
        {
LABEL_29:
          v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, result + 1, a3);
          goto LABEL_18;
        }
      }

      else if (v20 > 0x7F)
      {
        goto LABEL_29;
      }

      *(result + 1) = v20;
      v15 = result + 2;
LABEL_18:
      v16 = *(v19 + 23);
      if (v16 >= 0)
      {
        v17 = v19;
      }

      else
      {
        v17 = *v19;
      }

      if (v16 >= 0)
      {
        v18 = *(v19 + 23);
      }

      else
      {
        v18 = *(v19 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v17, v18, v15, a4);
    }
  }

LABEL_30:
  if ((*(this + 84) & 4) == 0)
  {
    goto LABEL_37;
  }

  v21 = *(this + 6);
  if (!v21)
  {
    v21 = *(qword_28144B960 + 48);
    *result = 26;
    v22 = result + 1;
    v23 = v21[27];
    if (v23 <= 0x7F)
    {
      goto LABEL_33;
    }

LABEL_35:
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v22, a3);
    goto LABEL_36;
  }

  *result = 26;
  v22 = result + 1;
  v23 = v21[27];
  if (v23 > 0x7F)
  {
    goto LABEL_35;
  }

LABEL_33:
  *(result + 1) = v23;
  v24 = (result + 2);
LABEL_36:
  result = sub_245A89AA4(v21, v24, a3, a4);
LABEL_37:
  if (*(this + 16) >= 1)
  {
    v25 = 0;
    do
    {
      v27 = *(*(this + 7) + 8 * v25);
      *result = 34;
      v28 = *(v27 + 14);
      if (v28 <= 0x7F)
      {
        *(result + 1) = v28;
        v26 = (result + 2);
      }

      else
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v27 + 14), result + 1, a3);
      }

      result = sub_245A8C930(v27, v26, a3, a4);
      ++v25;
    }

    while (v25 < *(this + 16));
  }

  v31 = *(this + 1);
  v30 = (this + 8);
  v29 = v31;
  if (v31 && *v29 != v29[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v30, result, a3);
  }

  return result;
}

uint64_t sub_245A8E018(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 84);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 84) & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_17:
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = sub_245A89FB0(v10, a2);
      if (v11 < 0x80)
      {
LABEL_19:
        v12 = 1;
LABEL_22:
        v4 += v11 + v12 + 1;
        goto LABEL_23;
      }
    }

    else
    {
      v11 = sub_245A89FB0(*(qword_28144B960 + 48), a2);
      if (v11 < 0x80)
      {
        goto LABEL_19;
      }
    }

    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    goto LABEL_22;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = *(v5 + 23);
  }

  else
  {
    v7 = *(v5 + 8);
  }

  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    v9 = *(v5 + 23);
    if (*(v5 + 23) < 0)
    {
      v9 = *(v5 + 8);
    }

    v4 = v8 + 1 + v9;
    if ((*(a1 + 84) & 4) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v5 + 8);
    }

    v4 = v6 + 2;
    if ((v3 & 4) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_23:
  v13 = *(a1 + 32);
  v14 = v13 + v4;
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v18 = *(*(a1 + 24) + 8 * i);
      v17 = *(v18 + 23);
      v19 = v17;
      v20 = *(v18 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v21 = *(v18 + 23);
      }

      else
      {
        v21 = v20;
      }

      if (v21 < 0x80)
      {
        v16 = 1;
      }

      else
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v17 = *(v18 + 23);
        v20 = *(v18 + 8);
        v13 = *(a1 + 32);
        v19 = *(v18 + 23);
      }

      if (v19 < 0)
      {
        v17 = v20;
      }

      v14 += v16 + v17;
    }
  }

  v22 = *(a1 + 64);
  v23 = (v22 + v14);
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v26 = sub_245A8CB98(*(*(a1 + 56) + 8 * v24), a2);
      v27 = v26;
      if (v26 < 0x80)
      {
        v25 = 1;
      }

      else
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      }

      v23 = (v27 + v23 + v25);
      ++v24;
    }

    while (v24 < *(a1 + 64));
  }

  v28 = *(a1 + 8);
  if (v28 && *v28 != v28[1])
  {
    v23 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v23;
  }

  *(a1 + 80) = v23;
  return v23;
}

uint64_t sub_245A8E210(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D82C48], &unk_2858A0B08, 0);
  if (v5)
  {
    return sub_245A8CF94(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_245A8E2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_245A8E304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245A8E318(uint64_t result, uint64_t a2)
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

uint64_t sub_245A8E3A4(uint64_t a1)
{
  if ((*(a1 + 84) & 4) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(qword_28144B960 + 48);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_245A8E404()
{
  v0 = qword_28144B770;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = sub_245A85E80;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_28144B758;
}

void sub_245A8E494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_245A8E4E4()
{
  if (__cxa_guard_acquire(&qword_28144B2E8))
  {
    qword_28144B2F8 = 0;
    unk_28144B300 = 0;
    qword_28144B2F0 = 0;
    __cxa_atexit(sub_245A3B664, &qword_28144B2F0, &dword_245A2E000);

    __cxa_guard_release(&qword_28144B2E8);
  }
}

void sub_245A8E690(NSObject **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sub_245A782E4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_245A7B0DC();
    sub_245A7B0C4();
    sub_245A7B128();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x2Cu);
  }

  v7 = sub_245A782E4();
  if (os_signpost_enabled(v7))
  {
    sub_245A7B0DC();
    sub_245A7B0C4();
    sub_245A7B0F4();
    _os_signpost_emit_with_name_impl(v8, v9, v10, v11, v12, v13, v14, 0x2Cu);
  }

  v15 = sub_245A782E4();
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    sub_245A7B0DC();
    sub_245A7B0C4();
    sub_245A7B128();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x2Cu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_245A8E840()
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_28144B270 != -1)
  {
    dispatch_once(&qword_28144B270, &unk_28589FEF8);
  }

  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_FAULT))
  {
    sub_245A7B0AC();
    sub_245A7B0C4();
    sub_245A7B128();
    _os_log_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x2Cu);
  }

  if (qword_28144B270 != -1)
  {
    dispatch_once(&qword_28144B270, &unk_28589FEF8);
  }

  if (os_signpost_enabled(qword_28144B278))
  {
    sub_245A7B0AC();
    sub_245A7B0C4();
    sub_245A7B0F4();
    _os_signpost_emit_with_name_impl(v4, v5, v6, v7, v8, v9, v10, 0x2Cu);
  }

  if (qword_28144B270 != -1)
  {
    dispatch_once(&qword_28144B270, &unk_28589FEF8);
  }

  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
    sub_245A7B0AC();
    sub_245A7B0C4();
    sub_245A7B128();
    _os_log_impl(v11, v12, OS_LOG_TYPE_INFO, v13, v14, 0x2Cu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_245A8EA20(NSObject **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sub_245A782E4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_245A7B0AC();
    sub_245A7B110();
    sub_245A7B128();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = sub_245A782E4();
  if (os_signpost_enabled(v7))
  {
    sub_245A7B0AC();
    sub_245A7B110();
    sub_245A7B0F4();
    _os_signpost_emit_with_name_impl(v8, v9, v10, v11, v12, v13, v14, 0x26u);
  }

  v15 = sub_245A782E4();
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    sub_245A7B0AC();
    sub_245A7B110();
    sub_245A7B128();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x26u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_245A8EBB8(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2081;
  *(buf + 20) = v4;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "serialized";
  _os_log_impl(&dword_245A2E000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed to serialize-append properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_245A8ECB0()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = sub_245A826A4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_245A84AC0();
    sub_245A84B18(&dword_245A2E000, v1, v2, "{msg%{public}.0s:@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, expecting that we have a valid destination for the venue bounds object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = sub_245A826A4();
  if (os_signpost_enabled(v7))
  {
    sub_245A84AC0();
    sub_245A84AEC(&dword_245A2E000, v8, v9, v10, "@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, expecting that we have a valid destination for the venue bounds object we're about to read", "{msg%{public}.0s:@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, expecting that we have a valid destination for the venue bounds object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = sub_245A826A4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_245A84AC0();
    sub_245A84B38(&dword_245A2E000, v14, v15, "{msg%{public}.0s:@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, expecting that we have a valid destination for the venue bounds object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void sub_245A8EE00(NSObject **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_245A826A4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_245A84A94();
    _os_log_impl(&dword_245A2E000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, _readMetadataProtobufObjectsFromFile, expecting that we have a valid destination for the localizer parameters object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v3 = sub_245A826A4();
  if (os_signpost_enabled(v3))
  {
    sub_245A84A94();
    _os_signpost_emit_with_name_impl(&dword_245A2E000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, _readMetadataProtobufObjectsFromFile, expecting that we have a valid destination for the localizer parameters object we're about to read", "{msg%{public}.0s:@IndoorAvl, _readMetadataProtobufObjectsFromFile, expecting that we have a valid destination for the localizer parameters object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v4 = sub_245A826A4();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_245A84A94();
    _os_log_impl(&dword_245A2E000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, _readMetadataProtobufObjectsFromFile, expecting that we have a valid destination for the localizer parameters object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6, 0x26u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_245A8F148()
{
  v9 = *MEMORY[0x277D85DE8];
  if (qword_28144B270 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (sub_245A84CE4())
    {
      sub_245A84AC0();
      _os_log_impl(&dword_245A2E000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, Trying to close file-handle that isn't opened, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_28144B270 != -1)
      {
        dispatch_once(&qword_28144B270, &unk_2858A0568);
      }
    }

    if (sub_245A84D3C())
    {
      sub_245A84AC0();
      sub_245A84D20();
      _os_signpost_emit_with_name_impl(v1, v2, v3, v4, v5, v6, v7, 0x26u);
      if (qword_28144B270 != -1)
      {
        dispatch_once(&qword_28144B270, &unk_2858A0568);
      }
    }

    if (sub_245A84D04())
    {
      sub_245A84AC0();
      _os_log_impl(&dword_245A2E000, v0, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, Trying to close file-handle that isn't opened, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_28144B270, &unk_2858A0568);
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}