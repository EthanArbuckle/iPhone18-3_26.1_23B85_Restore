void CLMicroLocationProto::HomeKitAccessory::CheckTypeAndMergeFrom(CLMicroLocationProto::HomeKitAccessory *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::HomeKitAccessory::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::HomeKitScene::MergeFrom(CLMicroLocationProto::HomeKitScene *this, const CLMicroLocationProto::HomeKitScene *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v4 = *(a2 + 21);
  if (!v4)
  {
    goto LABEL_38;
  }

  if (v4)
  {
    v5 = *(a2 + 12);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      CLMicroLocationProto::HomeKitScene::MergeFrom();
    }

    *(this + 21) |= 1u;
    *(this + 12) = v5;
    v4 = *(a2 + 21);
  }

  v6 = MEMORY[0x277D82C30];
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 1);
    *(this + 21) |= 2u;
    v8 = *(this + 1);
    if (v8 == v6)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 21);
    if ((v4 & 4) == 0)
    {
LABEL_11:
      if ((v4 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(a2 + 2);
  *(this + 21) |= 4u;
  v10 = *(this + 2);
  if (v10 == v6)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 21);
  if ((v4 & 8) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_23:
  v11 = *(a2 + 3);
  *(this + 21) |= 8u;
  v12 = *(this + 3);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v4 = *(a2 + 21);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    v15 = *(a2 + 5);
    *(this + 21) |= 0x20u;
    v16 = *(this + 5);
    if (v16 == v6)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v4 = *(a2 + 21);
    if ((v4 & 0x40) == 0)
    {
LABEL_15:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  v13 = *(a2 + 4);
  *(this + 21) |= 0x10u;
  v14 = *(this + 4);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  v4 = *(a2 + 21);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_32:
  v17 = *(a2 + 7);
  *(this + 21) |= 0x40u;
  v18 = *(this + 7);
  if (v18 == v6)
  {
    operator new();
  }

  std::string::operator=(v18, v17);
  v4 = *(a2 + 21);
  if ((v4 & 0x80) != 0)
  {
LABEL_35:
    v19 = *(a2 + 8);
    *(this + 21) |= 0x80u;
    v20 = *(this + 8);
    if (v20 == v6)
    {
      operator new();
    }

    std::string::operator=(v20, v19);
    v4 = *(a2 + 21);
  }

LABEL_38:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v22 = *(a2 + 53);
    *(this + 21) |= 0x200u;
    *(this + 53) = v22;
    if ((*(a2 + 21) & 0x400) == 0)
    {
      return;
    }

    goto LABEL_45;
  }

  v21 = *(a2 + 52);
  *(this + 21) |= 0x100u;
  *(this + 52) = v21;
  v4 = *(a2 + 21);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((v4 & 0x400) == 0)
  {
    return;
  }

LABEL_45:
  v23 = *(a2 + 9);
  *(this + 21) |= 0x400u;
  v24 = *(this + 9);
  if (v24 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v24, v23);
}

void sub_2590F6D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::HomeKitScene::~HomeKitScene(CLMicroLocationProto::HomeKitScene *this)
{
  *this = &unk_286A58818;
  CLMicroLocationProto::HomeKitScene::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::HomeKitScene::~HomeKitScene(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::HomeKitScene::SharedDtor(CLMicroLocationProto::HomeKitScene *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 3);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  v9 = *(v1 + 4);
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x259CA1F90](v9, 0x1012C40EC159624);
  }

  v11 = *(v1 + 5);
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x259CA1F90](v11, 0x1012C40EC159624);
  }

  v12 = *(v1 + 7);
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x259CA1F90](v12, 0x1012C40EC159624);
  }

  v13 = *(v1 + 8);
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x259CA1F90](v13, 0x1012C40EC159624);
  }

  v14 = *(v1 + 9);
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x259CA1F90](v14, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::HomeKitScene::Clear(uint64_t this)
{
  v1 = *(this + 84);
  if (v1)
  {
    *(this + 48) = 10;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 84) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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

    if ((*(this + 84) & 8) != 0)
    {
      v5 = *(this + 24);
      if (v5 != v2)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(this + 84) & 0x10) != 0)
    {
      v6 = *(this + 32);
      if (v6 != v2)
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

    if ((*(this + 84) & 0x20) != 0)
    {
      v7 = *(this + 40);
      if (v7 != v2)
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(this + 84) & 0x40) != 0)
    {
      v8 = *(this + 56);
      if (v8 != v2)
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    if ((*(this + 84) & 0x80) != 0)
    {
      v9 = *(this + 64);
      if (v9 != v2)
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }
  }

  v10 = *(this + 84);
  if ((v10 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    if ((v10 & 0x400) != 0)
    {
      v11 = *(this + 72);
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
  }

  *(this + 84) = 0;
  return this;
}

uint64_t CLMicroLocationProto::HomeKitScene::MergePartialFromCodedStream(CLMicroLocationProto::HomeKitScene *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 2)
              {
                goto LABEL_44;
              }

              goto LABEL_60;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_44;
            }

            v28 = 0;
            v10 = *(a2 + 1);
            if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
              if (!result)
              {
                return result;
              }

              v11 = v28;
            }

            else
            {
              *(a2 + 1) = v10 + 1;
            }

            if (v11 - 31 < 0x19 || v11 <= 0xE && ((1 << v11) & 0x76B6) != 0)
            {
              if (v11 - 31 >= 0x19 && (v11 > 0xE || ((1 << v11) & 0x76B6) == 0))
              {
                CLMicroLocationProto::HomeKitScene::MergeFrom();
              }

              *(this + 21) |= 1u;
              *(this + 12) = v11;
            }

            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 18)
            {
              *(a2 + 1) = v15 + 1;
LABEL_60:
              *(this + 21) |= 2u;
              if (*(this + 1) == v4)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v16 = *(a2 + 1);
              if (v16 < *(a2 + 2) && *v16 == 26)
              {
                *(a2 + 1) = v16 + 1;
LABEL_66:
                *(this + 21) |= 4u;
                if (*(this + 2) == v4)
                {
                  operator new();
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v17 = *(a2 + 1);
                if (v17 < *(a2 + 2) && *v17 == 34)
                {
                  *(a2 + 1) = v17 + 1;
                  goto LABEL_72;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if (v8 != 2)
              {
                goto LABEL_44;
              }

              goto LABEL_66;
            }

            if (v7 != 4)
            {
              if (v7 != 5 || v8 != 2)
              {
                goto LABEL_44;
              }

              goto LABEL_78;
            }

            if (v8 != 2)
            {
              goto LABEL_44;
            }

LABEL_72:
            *(this + 21) |= 8u;
            if (*(this + 3) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            if (v18 < *(a2 + 2) && *v18 == 42)
            {
              *(a2 + 1) = v18 + 1;
LABEL_78:
              *(this + 21) |= 0x10u;
              if (*(this + 4) == v4)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 50)
              {
                *(a2 + 1) = v19 + 1;
LABEL_84:
                *(this + 21) |= 0x20u;
                if (*(this + 5) == v4)
                {
                  operator new();
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v20 = *(a2 + 1);
                if (v20 < *(a2 + 2) && *v20 == 58)
                {
                  *(a2 + 1) = v20 + 1;
                  goto LABEL_90;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_102;
          }

          goto LABEL_44;
        }

        if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_110;
          }

          goto LABEL_44;
        }

        if (v7 != 11 || v8 != 2)
        {
          goto LABEL_44;
        }

        v9 = *(this + 21);
LABEL_118:
        *(this + 21) = v9 | 0x400;
        if (*(this + 9) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
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

      if (v7 == 6)
      {
        if (v8 != 2)
        {
          goto LABEL_44;
        }

        goto LABEL_84;
      }

      if (v7 != 7)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_44;
      }

LABEL_90:
      *(this + 21) |= 0x40u;
      if (*(this + 7) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v21 = *(a2 + 1);
      if (v21 < *(a2 + 2) && *v21 == 66)
      {
        *(a2 + 1) = v21 + 1;
LABEL_96:
        *(this + 21) |= 0x80u;
        if (*(this + 8) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v22 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v22 < v12 && *v22 == 72)
        {
          v14 = v22 + 1;
          *(a2 + 1) = v14;
LABEL_102:
          v30 = 0;
          if (v14 >= v12 || (v23 = *v14, (v23 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
            if (!result)
            {
              return result;
            }

            v23 = v30;
            v24 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            v24 = v14 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 52) = v23 != 0;
          *(this + 21) |= 0x100u;
          if (v24 < v12 && *v24 == 80)
          {
            v13 = v24 + 1;
            *(a2 + 1) = v13;
LABEL_110:
            v29 = 0;
            if (v13 >= v12 || (v25 = *v13, (v25 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
              if (!result)
              {
                return result;
              }

              v25 = v29;
              v26 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              v26 = v13 + 1;
              *(a2 + 1) = v26;
            }

            *(this + 53) = v25 != 0;
            v9 = *(this + 21) | 0x200;
            *(this + 21) = v9;
            if (v26 < v12 && *v26 == 90)
            {
              *(a2 + 1) = v26 + 1;
              goto LABEL_118;
            }
          }
        }
      }
    }

    if (v7 == 8 && v8 == 2)
    {
      goto LABEL_96;
    }

LABEL_44:
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

uint64_t CLMicroLocationProto::HomeKitScene::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 48), a2, a4);
    v6 = *(v5 + 84);
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

  v7 = *(v5 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  v9 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  v10 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  v11 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  v12 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  v13 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 53), a2, a4);
    if ((*(v5 + 84) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v14 = *(v5 + 72);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t CLMicroLocationProto::HomeKitScene::ByteSize(CLMicroLocationProto::HomeKitScene *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_83;
  }

  if (v2)
  {
    v4 = *(this + 12);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 21);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v5 = *(this + 1);
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v2 = *(this + 21);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 = (v3 + v10 + v6 + 1);
LABEL_22:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 2);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v2 = *(this + 21);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 = (v3 + v16 + v12 + 1);
    if ((v2 & 8) == 0)
    {
LABEL_24:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_24;
  }

  v17 = *(this + 3);
  v18 = *(v17 + 23);
  v19 = v18;
  v20 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    v18 = *(v17 + 23);
    v20 = *(v17 + 8);
    v2 = *(this + 21);
    v19 = *(v17 + 23);
  }

  else
  {
    v22 = 1;
  }

  if (v19 < 0)
  {
    v18 = v20;
  }

  v3 = (v3 + v22 + v18 + 1);
  if ((v2 & 0x10) == 0)
  {
LABEL_25:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_47:
  v23 = *(this + 4);
  v24 = *(v23 + 23);
  v25 = v24;
  v26 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v27 = *(v23 + 23);
  }

  else
  {
    v27 = v26;
  }

  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    v24 = *(v23 + 23);
    v26 = *(v23 + 8);
    v2 = *(this + 21);
    v25 = *(v23 + 23);
  }

  else
  {
    v28 = 1;
  }

  if (v25 < 0)
  {
    v24 = v26;
  }

  v3 = (v3 + v28 + v24 + 1);
  if ((v2 & 0x20) == 0)
  {
LABEL_26:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_56:
  v29 = *(this + 5);
  v30 = *(v29 + 23);
  v31 = v30;
  v32 = *(v29 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v33 = *(v29 + 23);
  }

  else
  {
    v33 = v32;
  }

  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    v30 = *(v29 + 23);
    v32 = *(v29 + 8);
    v2 = *(this + 21);
    v31 = *(v29 + 23);
  }

  else
  {
    v34 = 1;
  }

  if (v31 < 0)
  {
    v30 = v32;
  }

  v3 = (v3 + v34 + v30 + 1);
  if ((v2 & 0x40) == 0)
  {
LABEL_27:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_74;
  }

LABEL_65:
  v35 = *(this + 7);
  v36 = *(v35 + 23);
  v37 = v36;
  v38 = *(v35 + 8);
  if ((v36 & 0x80u) == 0)
  {
    v39 = *(v35 + 23);
  }

  else
  {
    v39 = v38;
  }

  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
    v36 = *(v35 + 23);
    v38 = *(v35 + 8);
    v2 = *(this + 21);
    v37 = *(v35 + 23);
  }

  else
  {
    v40 = 1;
  }

  if (v37 < 0)
  {
    v36 = v38;
  }

  v3 = (v3 + v40 + v36 + 1);
  if ((v2 & 0x80) != 0)
  {
LABEL_74:
    v41 = *(this + 8);
    v42 = *(v41 + 23);
    v43 = v42;
    v44 = *(v41 + 8);
    if ((v42 & 0x80u) == 0)
    {
      v45 = *(v41 + 23);
    }

    else
    {
      v45 = v44;
    }

    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
      v42 = *(v41 + 23);
      v44 = *(v41 + 8);
      v2 = *(this + 21);
      v43 = *(v41 + 23);
    }

    else
    {
      v46 = 1;
    }

    if (v43 < 0)
    {
      v42 = v44;
    }

    v3 = (v3 + v46 + v42 + 1);
  }

LABEL_83:
  if ((v2 & 0xFF00) != 0)
  {
    v3 = ((v2 >> 7) & 2) + v3 + ((v2 >> 8) & 2);
    if ((v2 & 0x400) != 0)
    {
      v47 = *(this + 9);
      v48 = *(v47 + 23);
      v49 = v48;
      v50 = *(v47 + 8);
      if ((v48 & 0x80u) == 0)
      {
        v51 = *(v47 + 23);
      }

      else
      {
        v51 = v50;
      }

      if (v51 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
        v48 = *(v47 + 23);
        v50 = *(v47 + 8);
        v49 = *(v47 + 23);
      }

      else
      {
        v52 = 1;
      }

      if (v49 < 0)
      {
        v48 = v50;
      }

      v3 = (v3 + v52 + v48 + 1);
    }
  }

  *(this + 20) = v3;
  return v3;
}

void CLMicroLocationProto::HomeKitScene::CheckTypeAndMergeFrom(CLMicroLocationProto::HomeKitScene *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::HomeKitScene::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::NowPlayingOutputDevice::MergeFrom(CLMicroLocationProto::NowPlayingOutputDevice *this, const CLMicroLocationProto::NowPlayingOutputDevice *a2)
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
      v5 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v6;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 2);
    *(this + 7) |= 4u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_2590F7EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::NowPlayingOutputDevice::~NowPlayingOutputDevice(CLMicroLocationProto::NowPlayingOutputDevice *this)
{
  *this = &unk_286A58890;
  CLMicroLocationProto::DeviceId::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::NowPlayingOutputDevice::~NowPlayingOutputDevice(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::NowPlayingOutputDevice::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 16);
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

  *(this + 28) = 0;
  return this;
}

uint64_t CLMicroLocationProto::NowPlayingOutputDevice::MergePartialFromCodedStream(CLMicroLocationProto::NowPlayingOutputDevice *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_17;
        }

        v14 = *(this + 7);
LABEL_34:
        *(this + 7) = v14 | 4;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
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

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 7) |= 1u;
      if (v12 < v9 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(a2 + 1) = v13;
LABEL_26:
        if (v13 >= v9 || (v15 = *v13, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v15;
          v16 = v13 + 1;
          *(a2 + 1) = v16;
        }

        v14 = *(this + 7) | 2;
        *(this + 7) = v14;
        if (v16 < v9 && *v16 == 26)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_34;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_26;
    }

LABEL_17:
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

uint64_t CLMicroLocationProto::NowPlayingOutputDevice::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t CLMicroLocationProto::NowPlayingOutputDevice::ByteSize(CLMicroLocationProto::NowPlayingOutputDevice *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 7);
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
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 2);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v3 = (v3 + v12 + v8 + 1);
  }

LABEL_24:
  *(this + 6) = v3;
  return v3;
}

void CLMicroLocationProto::NowPlayingOutputDevice::CheckTypeAndMergeFrom(CLMicroLocationProto::NowPlayingOutputDevice *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::NowPlayingOutputDevice::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::NowPlaying::MergeFrom(CLMicroLocationProto::NowPlaying *this, const CLMicroLocationProto::NowPlaying *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(this + 10);
  v5 = *(a2 + 10);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
  LODWORD(v7) = *(a2 + 10);
  v8 = MEMORY[0x277D82C30];
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 >= v7)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
      }

      v10 = *(*(a2 + 4) + 8 * v9);
      v11 = *(this + 11);
      v12 = *(this + 10);
      if (v12 >= v11)
      {
        if (v11 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
          v11 = *(this + 11);
        }

        *(this + 11) = v11 + 1;
        operator new();
      }

      v13 = *(this + 4);
      *(this + 10) = v12 + 1;
      CLMicroLocationProto::NowPlayingOutputDevice::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
      v7 = *(a2 + 10);
    }

    while (v9 < v7);
  }

  LOBYTE(v14) = *(a2 + 68);
  if (!v14)
  {
    return;
  }

  if (*(a2 + 68))
  {
    v15 = *(a2 + 4);
    if (v15 - 31 >= 0x19 && (v15 > 0xE || ((1 << v15) & 0x76B6) == 0))
    {
      CLMicroLocationProto::NowPlaying::MergeFrom();
    }

    *(this + 17) |= 1u;
    *(this + 4) = v15;
    v14 = *(a2 + 17);
  }

  if ((v14 & 2) == 0)
  {
    if ((v14 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    v18 = *(a2 + 5);
    *(this + 17) |= 4u;
    *(this + 5) = v18;
    v14 = *(a2 + 17);
    if ((v14 & 8) == 0)
    {
LABEL_22:
      if ((v14 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v16 = *(a2 + 1);
  *(this + 17) |= 2u;
  v17 = *(this + 1);
  if (v17 == v8)
  {
    operator new();
  }

  v6 = std::string::operator=(v17, v16);
  v14 = *(a2 + 17);
  if ((v14 & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  if ((v14 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_28:
  v19 = *(a2 + 3);
  *(this + 17) |= 8u;
  v20 = *(this + 3);
  if (v20 == v8)
  {
    operator new();
  }

  v6 = std::string::operator=(v20, v19);
  if ((*(a2 + 17) & 0x20) != 0)
  {
LABEL_31:
    *(this + 17) |= 0x20u;
    v21 = *(this + 7);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 7);
    if (!v22)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(v6);
      v22 = *(CLMicroLocationProto::NowPlaying::default_instance_ + 56);
    }

    CLMicroLocationProto::BundleIdFeatures::MergeFrom(v21, v22);
  }
}

void sub_2590F87D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::NowPlaying::~NowPlaying(CLMicroLocationProto::NowPlaying *this)
{
  *this = &unk_286A58908;
  CLMicroLocationProto::NowPlaying::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::NowPlaying::~NowPlaying(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::NowPlaying::SharedDtor(CLMicroLocationProto::NowPlaying *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::NowPlaying::default_instance_ != v1)
  {
    v7 = *(v1 + 7);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

uint64_t CLMicroLocationProto::NowPlaying::Clear(CLMicroLocationProto::NowPlaying *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 4) = 12;
    v3 = MEMORY[0x277D82C30];
    if ((v2 & 2) != 0)
    {
      v4 = *(this + 1);
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

    *(this + 5) = 0;
    if ((*(this + 68) & 8) != 0)
    {
      v5 = *(this + 3);
      if (v5 != v3)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(this + 68) & 0x20) != 0)
    {
      v6 = *(this + 7);
      if (v6)
      {
        if (*(v6 + 16))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 16) = 0;
      }
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 32);
  *(this + 17) = 0;
  return result;
}

uint64_t CLMicroLocationProto::NowPlaying::MergePartialFromCodedStream(CLMicroLocationProto::NowPlaying *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_27;
          }

          v37 = 0;
          v11 = *(a2 + 1);
          if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
            if (!result)
            {
              return result;
            }

            v12 = v37;
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
          {
            if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
            {
              CLMicroLocationProto::NowPlaying::MergeFrom();
            }

            *(this + 17) |= 1u;
            *(this + 4) = v12;
          }

          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 18)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_42;
          }
        }

        else if (v7 == 2)
        {
          if (v8 != 2)
          {
            goto LABEL_27;
          }

LABEL_42:
          *(this + 17) |= 2u;
          if (*(this + 1) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v16 < v9 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_48:
            if (v10 >= v9 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v17;
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            v13 = *(this + 17) | 4;
            *(this + 17) = v13;
            if (v18 < v9 && *v18 == 34)
            {
              *(a2 + 1) = v18 + 1;
              goto LABEL_56;
            }
          }
        }

        else
        {
          if (v7 == 3 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_48;
          }

LABEL_27:
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

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_27;
      }

      v13 = *(this + 17);
LABEL_56:
      *(this + 17) = v13 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v19 = *(a2 + 1);
      if (v19 < *(a2 + 2) && *v19 == 42)
      {
        while (1)
        {
          *(a2 + 1) = v19 + 1;
LABEL_62:
          v20 = *(this + 11);
          v21 = *(this + 10);
          if (v21 >= v20)
          {
            if (v20 == *(this + 12))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
              v20 = *(this + 11);
            }

            *(this + 11) = v20 + 1;
            operator new();
          }

          v22 = *(this + 4);
          *(this + 10) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v38 = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
            {
              return 0;
            }
          }

          else
          {
            v38 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v25 = *(a2 + 14);
          v26 = *(a2 + 15);
          *(a2 + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::NowPlayingOutputDevice::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v27 = *(a2 + 14);
          v28 = __OFSUB__(v27, 1);
          v29 = v27 - 1;
          if (v29 < 0 == v28)
          {
            *(a2 + 14) = v29;
          }

          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2))
          {
            break;
          }

          v30 = *v19;
          if (v30 != 42)
          {
            if (v30 == 50)
            {
              *(a2 + 1) = v19 + 1;
              goto LABEL_80;
            }

            goto LABEL_2;
          }
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 == 2)
      {
        goto LABEL_62;
      }

      goto LABEL_27;
    }

    if (v7 != 6 || v8 != 2)
    {
      goto LABEL_27;
    }

LABEL_80:
    *(this + 17) |= 0x20u;
    v31 = *(this + 7);
    if (!v31)
    {
      operator new();
    }

    v39 = 0;
    v32 = *(a2 + 1);
    if (v32 >= *(a2 + 2) || *v32 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
      {
        return 0;
      }
    }

    else
    {
      v39 = *v32;
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
    if (!CLMicroLocationProto::BundleIdFeatures::MergePartialFromCodedStream(v31, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v35 = *(a2 + 14);
    v28 = __OFSUB__(v35, 1);
    v36 = v35 - 1;
    if (v36 < 0 == v28)
    {
      *(a2 + 14) = v36;
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

unsigned int *CLMicroLocationProto::NowPlaying::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[17];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[4], a2, a4);
    v6 = v5[17];
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

  v9 = *(v5 + 1);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[17];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  if ((v5[17] & 8) != 0)
  {
LABEL_5:
    v7 = *(v5 + 3);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_6:
  if (v5[10] >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 4) + 8 * v8++), a2, a4);
    }

    while (v8 < v5[10]);
  }

  if ((v5[17] & 0x20) != 0)
  {
    v10 = *(v5 + 7);
    if (!v10)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v10 = *(CLMicroLocationProto::NowPlaying::default_instance_ + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::NowPlaying::ByteSize(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 68);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_45;
  }

  if (*(this + 68))
  {
    this = *(this + 16);
    if ((this & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v3 = this + 1;
      v2 = *(v1 + 68);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 68) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v4 = *(v1 + 8);
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
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v2 = *(v1 + 68);
    v6 = *(v4 + 23);
  }

  else
  {
    this = 1;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 += this + v5 + 1;
LABEL_22:
  if ((v2 & 4) != 0)
  {
    this = *(v1 + 20);
    if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v9 = this + 1;
      v2 = *(v1 + 68);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
    if ((v2 & 8) == 0)
    {
LABEL_24:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_24;
  }

  v10 = *(v1 + 24);
  v11 = *(v10 + 23);
  v12 = v11;
  v13 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = v13;
  }

  if (v14 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    v11 = *(v10 + 23);
    v13 = *(v10 + 8);
    v2 = *(v1 + 68);
    v12 = *(v10 + 23);
  }

  else
  {
    this = 1;
  }

  if (v12 < 0)
  {
    v11 = v13;
  }

  v3 += this + v11 + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_39:
    v15 = *(v1 + 56);
    if (!v15)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v15 = *(CLMicroLocationProto::NowPlaying::default_instance_ + 56);
    }

    if (*(v15 + 16))
    {
      v16 = 2 * (*(v15 + 16) & 1) + (*(v15 + 16) & 2);
    }

    else
    {
      v16 = 0;
    }

    *(v15 + 12) = v16;
    v3 += v16 + 2;
  }

LABEL_45:
  v17 = *(v1 + 40);
  v18 = (v17 + v3);
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = CLMicroLocationProto::NowPlayingOutputDevice::ByteSize(*(*(v1 + 32) + 8 * v19));
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v18 = (v21 + v18 + v22);
      ++v19;
    }

    while (v19 < *(v1 + 40));
  }

  *(v1 + 64) = v18;
  return v18;
}

void CLMicroLocationProto::NowPlaying::CheckTypeAndMergeFrom(CLMicroLocationProto::NowPlaying *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::NowPlaying::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::LearnModel::MergeFrom(CLMicroLocationProto::LearnModel *this, const CLMicroLocationProto::LearnModel *a2)
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
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::LearnModel::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590F94CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::LearnModel::~LearnModel(CLMicroLocationProto::LearnModel *this)
{
  *this = &unk_286A58980;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::LearnModel::~LearnModel(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::LearnModel::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 31;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::LearnModel::MergePartialFromCodedStream(CLMicroLocationProto::LearnModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 - 31 < 0x19 || (v7 <= 0xE ? (v8 = ((1 << v7) & 0x76B6) == 0) : (v8 = 1), !v8))
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::LearnModel::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v7;
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

uint64_t CLMicroLocationProto::LearnModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::LearnModel::ByteSize(CLMicroLocationProto::LearnModel *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::LearnModel::CheckTypeAndMergeFrom(CLMicroLocationProto::LearnModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::LearnModel::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::LearnCompleted::MergeFrom(CLMicroLocationProto::LearnCompleted *this, const CLMicroLocationProto::LearnCompleted *a2)
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
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::LearnCompleted::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590F9918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::LearnCompleted::~LearnCompleted(CLMicroLocationProto::LearnCompleted *this)
{
  *this = &unk_286A589F8;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::LearnCompleted::~LearnCompleted(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::LearnCompleted::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 32;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::LearnCompleted::MergePartialFromCodedStream(CLMicroLocationProto::LearnCompleted *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 - 31 < 0x19 || (v7 <= 0xE ? (v8 = ((1 << v7) & 0x76B6) == 0) : (v8 = 1), !v8))
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::LearnCompleted::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v7;
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

uint64_t CLMicroLocationProto::LearnCompleted::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::LearnCompleted::ByteSize(CLMicroLocationProto::LearnCompleted *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::LearnCompleted::CheckTypeAndMergeFrom(CLMicroLocationProto::LearnCompleted *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::LearnCompleted::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::SensorsScanComplete::MergeFrom(CLMicroLocationProto::SensorsScanComplete *this, const CLMicroLocationProto::SensorsScanComplete *a2)
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
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::SensorsScanComplete::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590F9D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::SensorsScanComplete::~SensorsScanComplete(CLMicroLocationProto::SensorsScanComplete *this)
{
  *this = &unk_286A58A70;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::SensorsScanComplete::~SensorsScanComplete(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::SensorsScanComplete::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 33;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::SensorsScanComplete::MergePartialFromCodedStream(CLMicroLocationProto::SensorsScanComplete *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 - 31 < 0x19 || (v7 <= 0xE ? (v8 = ((1 << v7) & 0x76B6) == 0) : (v8 = 1), !v8))
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::SensorsScanComplete::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v7;
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

uint64_t CLMicroLocationProto::SensorsScanComplete::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::SensorsScanComplete::ByteSize(CLMicroLocationProto::SensorsScanComplete *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::SensorsScanComplete::CheckTypeAndMergeFrom(CLMicroLocationProto::SensorsScanComplete *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::SensorsScanComplete::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::StartSpectating::MergeFrom(CLMicroLocationProto::StartSpectating *this, const CLMicroLocationProto::StartSpectating *a2)
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
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::StartSpectating::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590FA1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::StartSpectating::~StartSpectating(CLMicroLocationProto::StartSpectating *this)
{
  *this = &unk_286A58AE8;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::StartSpectating::~StartSpectating(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::StartSpectating::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 34;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::StartSpectating::MergePartialFromCodedStream(CLMicroLocationProto::StartSpectating *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 - 31 < 0x19 || (v7 <= 0xE ? (v8 = ((1 << v7) & 0x76B6) == 0) : (v8 = 1), !v8))
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::StartSpectating::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v7;
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

uint64_t CLMicroLocationProto::StartSpectating::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::StartSpectating::ByteSize(CLMicroLocationProto::StartSpectating *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::StartSpectating::CheckTypeAndMergeFrom(CLMicroLocationProto::StartSpectating *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::StartSpectating::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::StopSpectating::MergeFrom(CLMicroLocationProto::StopSpectating *this, const CLMicroLocationProto::StopSpectating *a2)
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
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::StopSpectating::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590FA5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::StopSpectating::~StopSpectating(CLMicroLocationProto::StopSpectating *this)
{
  *this = &unk_286A58B60;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::StopSpectating::~StopSpectating(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::StopSpectating::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 35;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::StopSpectating::MergePartialFromCodedStream(CLMicroLocationProto::StopSpectating *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback != 8)
      {
        break;
      }

      v11 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 - 31 < 0x19 || (v7 <= 0xE ? (v8 = ((1 << v7) & 0x76B6) == 0) : (v8 = 1), !v8))
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::StopSpectating::MergeFrom();
        }

        *(this + 4) |= 1u;
        *(this + 2) = v7;
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

uint64_t CLMicroLocationProto::StopSpectating::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::StopSpectating::ByteSize(CLMicroLocationProto::StopSpectating *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 2);
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

  *(this + 3) = result;
  return result;
}

void CLMicroLocationProto::StopSpectating::CheckTypeAndMergeFrom(CLMicroLocationProto::StopSpectating *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::StopSpectating::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceCreate::MergeFrom(CLMicroLocationProto::ServiceCreate *this, const CLMicroLocationProto::ServiceCreate *a2)
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
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceCreate::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v8;
    }
  }
}

void sub_2590FAAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceCreate::~ServiceCreate(CLMicroLocationProto::ServiceCreate *this)
{
  *this = &unk_286A58BD8;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceCreate::~ServiceCreate(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ServiceCreate::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 36;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
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

    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceCreate::MergePartialFromCodedStream(CLMicroLocationProto::ServiceCreate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_39;
        }

        goto LABEL_17;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v18 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
        if (!result)
        {
          return result;
        }

        v10 = v18;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceCreate::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v10;
      }

      v13 = *(a2 + 1);
      if (v13 < *(a2 + 2) && *v13 == 18)
      {
        *(a2 + 1) = v13 + 1;
LABEL_33:
        *(this + 8) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v14 < v11 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_39:
          if (v12 >= v11 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
          if (v16 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_33;
    }

LABEL_17:
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

uint64_t CLMicroLocationProto::ServiceCreate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = *(v5 + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v8, a2, a4);
}

uint64_t CLMicroLocationProto::ServiceCreate::ByteSize(CLMicroLocationProto::ServiceCreate *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v5 = *(this + 1);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v2 = *(this + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 = (v3 + v10 + v6 + 1);
    goto LABEL_22;
  }

  v4 = *(this + 6);
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
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_24:
  *(this + 7) = v3;
  return v3;
}

void CLMicroLocationProto::ServiceCreate::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceCreate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceCreate::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceDelete::MergeFrom(CLMicroLocationProto::ServiceDelete *this, const CLMicroLocationProto::ServiceDelete *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceDelete::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 2);
      *(this + 8) |= 4u;
      v10 = *(this + 2);
      if (v10 == v6)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_2590FB224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceDelete::~ServiceDelete(CLMicroLocationProto::ServiceDelete *this)
{
  *this = &unk_286A58C50;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceDelete::~ServiceDelete(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ServiceDelete::SharedDtor(CLMicroLocationProto::ServiceDelete *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::ServiceDelete::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 37;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceDelete::MergePartialFromCodedStream(CLMicroLocationProto::ServiceDelete *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_17;
        }

LABEL_38:
        *(this + 8) |= 4u;
        if (*(this + 2) == v4)
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

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v14 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v10 = v14;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceDelete::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v10;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
LABEL_32:
        *(this + 8) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 26)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_32;
    }

LABEL_17:
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

uint64_t CLMicroLocationProto::ServiceDelete::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v4 + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::ServiceDelete::ByteSize(CLMicroLocationProto::ServiceDelete *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v5 = *(this + 1);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v2 = *(this + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 = (v3 + v10 + v6 + 1);
    goto LABEL_22;
  }

  v4 = *(this + 6);
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
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 2);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 = (v3 + v16 + v12 + 1);
  }

LABEL_32:
  *(this + 7) = v3;
  return v3;
}

void CLMicroLocationProto::ServiceDelete::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceDelete *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceDelete::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceConnect::MergeFrom(CLMicroLocationProto::ServiceConnect *this, const CLMicroLocationProto::ServiceConnect *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceConnect::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 2);
      *(this + 8) |= 4u;
      v10 = *(this + 2);
      if (v10 == v6)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_2590FBA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceConnect::~ServiceConnect(CLMicroLocationProto::ServiceConnect *this)
{
  *this = &unk_286A58CC8;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceConnect::~ServiceConnect(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ServiceConnect::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 38;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceConnect::MergePartialFromCodedStream(CLMicroLocationProto::ServiceConnect *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_17;
        }

LABEL_38:
        *(this + 8) |= 4u;
        if (*(this + 2) == v4)
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

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v14 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v10 = v14;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceConnect::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v10;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
LABEL_32:
        *(this + 8) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 26)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_32;
    }

LABEL_17:
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

uint64_t CLMicroLocationProto::ServiceConnect::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v4 + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::ServiceConnect::ByteSize(CLMicroLocationProto::ServiceConnect *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v5 = *(this + 1);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v2 = *(this + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 = (v3 + v10 + v6 + 1);
    goto LABEL_22;
  }

  v4 = *(this + 6);
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
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 2);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 = (v3 + v16 + v12 + 1);
  }

LABEL_32:
  *(this + 7) = v3;
  return v3;
}

void CLMicroLocationProto::ServiceConnect::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceConnect *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceConnect::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceDisconnect::MergeFrom(CLMicroLocationProto::ServiceDisconnect *this, const CLMicroLocationProto::ServiceDisconnect *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceDisconnect::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 2);
      *(this + 8) |= 4u;
      v10 = *(this + 2);
      if (v10 == v6)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_2590FC264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceDisconnect::~ServiceDisconnect(CLMicroLocationProto::ServiceDisconnect *this)
{
  *this = &unk_286A58D40;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceDisconnect::~ServiceDisconnect(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ServiceDisconnect::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 39;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceDisconnect::MergePartialFromCodedStream(CLMicroLocationProto::ServiceDisconnect *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_17;
        }

LABEL_38:
        *(this + 8) |= 4u;
        if (*(this + 2) == v4)
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

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v14 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v10 = v14;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceDisconnect::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v10;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
LABEL_32:
        *(this + 8) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 26)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_32;
    }

LABEL_17:
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

uint64_t CLMicroLocationProto::ServiceDisconnect::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v4 + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::ServiceDisconnect::ByteSize(CLMicroLocationProto::ServiceDisconnect *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v5 = *(this + 1);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v2 = *(this + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 = (v3 + v10 + v6 + 1);
    goto LABEL_22;
  }

  v4 = *(this + 6);
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
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 2);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 = (v3 + v16 + v12 + 1);
  }

LABEL_32:
  *(this + 7) = v3;
  return v3;
}

void CLMicroLocationProto::ServiceDisconnect::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceDisconnect *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceDisconnect::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceStartUpdating::MergeFrom(CLMicroLocationProto::ServiceStartUpdating *this, const CLMicroLocationProto::ServiceStartUpdating *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 4);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceStartUpdating::MergeFrom();
      }

      *(this + 9) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 9);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v8 = *(a2 + 1);
      *(this + 9) |= 2u;
      v9 = *(this + 1);
      if (v9 == v6)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v4 = *(a2 + 9);
      if ((v4 & 4) == 0)
      {
LABEL_11:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    v10 = *(a2 + 3);
    *(this + 9) |= 4u;
    v11 = *(this + 3);
    if (v11 == v6)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
    if ((*(a2 + 9) & 8) != 0)
    {
LABEL_12:
      v7 = *(a2 + 20);
      *(this + 9) |= 8u;
      *(this + 20) = v7;
    }
  }
}

void sub_2590FCA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceStartUpdating::~ServiceStartUpdating(CLMicroLocationProto::ServiceStartUpdating *this)
{
  *this = &unk_286A58DB8;
  CLMicroLocationProto::ServiceStartUpdating::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceStartUpdating::~ServiceStartUpdating(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ServiceStartUpdating::SharedDtor(CLMicroLocationProto::ServiceStartUpdating *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::ServiceStartUpdating::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 16) = 40;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 36) & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
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

    *(this + 20) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceStartUpdating::MergePartialFromCodedStream(CLMicroLocationProto::ServiceStartUpdating *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_48;
          }

          goto LABEL_21;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

LABEL_42:
        *(this + 9) |= 4u;
        if (*(this + 3) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v15 < v9 && *v15 == 32)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_48:
          v20 = 0;
          if (v10 >= v9 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
            if (!result)
            {
              return result;
            }

            v16 = v20;
            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 20) = v16 != 0;
          *(this + 9) |= 8u;
          if (v17 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v19 = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
        if (!result)
        {
          return result;
        }

        v12 = v19;
      }

      else
      {
        *(a2 + 1) = v11 + 1;
      }

      if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
      {
        if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceStartUpdating::MergeFrom();
        }

        *(this + 9) |= 1u;
        *(this + 4) = v12;
      }

      v13 = *(a2 + 1);
      if (v13 < *(a2 + 2) && *v13 == 18)
      {
        *(a2 + 1) = v13 + 1;
LABEL_36:
        *(this + 9) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 26)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_42;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_36;
    }

LABEL_21:
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

uint64_t CLMicroLocationProto::ServiceStartUpdating::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = *(v5 + 24);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      if ((*(v5 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v9 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v9, a2, a4);
}

uint64_t CLMicroLocationProto::ServiceStartUpdating::ByteSize(CLMicroLocationProto::ServiceStartUpdating *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    result = 0;
    goto LABEL_33;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v6 = *(this + 1);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v2 = *(this + 9);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v3 += v11 + v7 + 1;
    goto LABEL_22;
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v3 = 11;
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if (v5 < 0x80)
  {
    v3 = 2;
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
  v2 = *(this + 9);
  if ((v2 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v2 = *(this + 9);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v3 += v17 + v13 + 1;
  }

  result = ((v2 >> 2) & 2) + v3;
LABEL_33:
  *(this + 8) = result;
  return result;
}

void CLMicroLocationProto::ServiceStartUpdating::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceStartUpdating *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceStartUpdating::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ServiceStopUpdating::MergeFrom(CLMicroLocationProto::ServiceStopUpdating *this, const CLMicroLocationProto::ServiceStopUpdating *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 6);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ServiceStopUpdating::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v9 = *(a2 + 2);
      *(this + 8) |= 4u;
      v10 = *(this + 2);
      if (v10 == v6)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_2590FD388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ServiceStopUpdating::~ServiceStopUpdating(CLMicroLocationProto::ServiceStopUpdating *this)
{
  *this = &unk_286A58E30;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ServiceStopUpdating::~ServiceStopUpdating(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ServiceStopUpdating::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 41;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ServiceStopUpdating::MergePartialFromCodedStream(CLMicroLocationProto::ServiceStopUpdating *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_17;
        }

LABEL_38:
        *(this + 8) |= 4u;
        if (*(this + 2) == v4)
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

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v14 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v10 = v14;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ServiceStopUpdating::MergeFrom();
        }

        *(this + 8) |= 1u;
        *(this + 6) = v10;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
LABEL_32:
        *(this + 8) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 26)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_32;
    }

LABEL_17:
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

uint64_t CLMicroLocationProto::ServiceStopUpdating::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v4 + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::ServiceStopUpdating::ByteSize(CLMicroLocationProto::ServiceStopUpdating *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v5 = *(this + 1);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v2 = *(this + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 = (v3 + v10 + v6 + 1);
    goto LABEL_22;
  }

  v4 = *(this + 6);
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
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 2);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 = (v3 + v16 + v12 + 1);
  }

LABEL_32:
  *(this + 7) = v3;
  return v3;
}

void CLMicroLocationProto::ServiceStopUpdating::CheckTypeAndMergeFrom(CLMicroLocationProto::ServiceStopUpdating *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ServiceStopUpdating::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RequestObservation::MergeFrom(CLMicroLocationProto::RequestObservation *this, const CLMicroLocationProto::RequestObservation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 10);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      CLMicroLocationProto::RequestObservation::MergeFrom();
    }

    *(this + 12) |= 1u;
    *(this + 10) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x277D82C30];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v9 = *(a2 + 2);
    *(this + 12) |= 4u;
    v10 = *(this + 2);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_12:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v7 = *(a2 + 1);
  *(this + 12) |= 2u;
  v8 = *(this + 1);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v4 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_20:
  v11 = *(a2 + 3);
  *(this + 12) |= 8u;
  v12 = *(this + 3);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_23:
    v13 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v14 = *(this + 4);
    if (v14 == v6)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
  }
}

void sub_2590FDC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RequestObservation::~RequestObservation(CLMicroLocationProto::RequestObservation *this)
{
  *this = &unk_286A58EA8;
  CLMicroLocationProto::RequestObservation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RequestObservation::~RequestObservation(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::RequestObservation::SharedDtor(CLMicroLocationProto::RequestObservation *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 3);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  v9 = *(v1 + 4);
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x259CA1F90](v9, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::RequestObservation::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 40) = 42;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 48) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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

    if ((*(this + 48) & 8) != 0)
    {
      v5 = *(this + 24);
      if (v5 != v2)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(this + 48) & 0x10) != 0)
    {
      v6 = *(this + 32);
      if (v6 != v2)
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RequestObservation::MergePartialFromCodedStream(CLMicroLocationProto::RequestObservation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_22;
          }

          goto LABEL_40;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v16 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v10 = v16;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
        {
          if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
          {
            CLMicroLocationProto::RequestObservation::MergeFrom();
          }

          *(this + 12) |= 1u;
          *(this + 10) = v10;
        }

        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
LABEL_40:
          *(this + 12) |= 2u;
          if (*(this + 1) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 26)
          {
            *(a2 + 1) = v12 + 1;
LABEL_46:
            *(this + 12) |= 4u;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 34)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_52;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_46;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

LABEL_52:
      *(this + 12) |= 8u;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 42)
      {
        *(a2 + 1) = v14 + 1;
LABEL_58:
        *(this + 12) |= 0x10u;
        if (*(this + 4) == v4)
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
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_58;
    }

LABEL_22:
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

uint64_t CLMicroLocationProto::RequestObservation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 48);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 40), a2, a4);
    v5 = *(v4 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v4 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v4 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v4 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v4 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v5 = *(v4 + 48);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v9 = *(v4 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::RequestObservation::ByteSize(CLMicroLocationProto::RequestObservation *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_53;
  }

  if (*(this + 48))
  {
    v4 = *(this + 10);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 12);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v5 = *(this + 1);
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v2 = *(this + 12);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 = (v3 + v10 + v6 + 1);
LABEL_22:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 2);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v2 = *(this + 12);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 = (v3 + v16 + v12 + 1);
    if ((v2 & 8) == 0)
    {
LABEL_24:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_24;
  }

  v17 = *(this + 3);
  v18 = *(v17 + 23);
  v19 = v18;
  v20 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    v18 = *(v17 + 23);
    v20 = *(v17 + 8);
    v2 = *(this + 12);
    v19 = *(v17 + 23);
  }

  else
  {
    v22 = 1;
  }

  if (v19 < 0)
  {
    v18 = v20;
  }

  v3 = (v3 + v22 + v18 + 1);
  if ((v2 & 0x10) != 0)
  {
LABEL_44:
    v23 = *(this + 4);
    v24 = *(v23 + 23);
    v25 = v24;
    v26 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v27 = *(v23 + 23);
    }

    else
    {
      v27 = v26;
    }

    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      v24 = *(v23 + 23);
      v26 = *(v23 + 8);
      v25 = *(v23 + 23);
    }

    else
    {
      v28 = 1;
    }

    if (v25 < 0)
    {
      v24 = v26;
    }

    v3 = (v3 + v28 + v24 + 1);
  }

LABEL_53:
  *(this + 11) = v3;
  return v3;
}

void CLMicroLocationProto::RequestObservation::CheckTypeAndMergeFrom(CLMicroLocationProto::RequestObservation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RequestObservation::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RequestPrediction::MergeFrom(CLMicroLocationProto::RequestPrediction *this, const CLMicroLocationProto::RequestPrediction *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 8);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::RequestPrediction::MergeFrom();
      }

      *(this + 10) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 10);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 10) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 10);
      if ((v4 & 4) == 0)
      {
LABEL_11:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    v9 = *(a2 + 2);
    *(this + 10) |= 4u;
    v10 = *(this + 2);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 10) & 8) != 0)
    {
LABEL_19:
      v11 = *(a2 + 3);
      *(this + 10) |= 8u;
      v12 = *(this + 3);
      if (v12 == v6)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_2590FE780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RequestPrediction::~RequestPrediction(CLMicroLocationProto::RequestPrediction *this)
{
  *this = &unk_286A58F20;
  CLMicroLocationProto::TruthLabelDonation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RequestPrediction::~RequestPrediction(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::RequestPrediction::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 32) = 43;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 40) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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

    if ((*(this + 40) & 8) != 0)
    {
      v5 = *(this + 24);
      if (v5 != v2)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RequestPrediction::MergePartialFromCodedStream(CLMicroLocationProto::RequestPrediction *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && v8 == 2)
          {
            goto LABEL_48;
          }

          goto LABEL_21;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

LABEL_42:
        *(this + 10) |= 4u;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 34)
        {
          *(a2 + 1) = v13 + 1;
LABEL_48:
          *(this + 10) |= 8u;
          if (*(this + 3) == v4)
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
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v15 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v10 = v15;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          CLMicroLocationProto::RequestPrediction::MergeFrom();
        }

        *(this + 10) |= 1u;
        *(this + 8) = v10;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
LABEL_36:
        *(this + 10) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 26)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_42;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_36;
    }

LABEL_21:
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

uint64_t CLMicroLocationProto::RequestPrediction::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 40);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 32), a2, a4);
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v4 + 16);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      if ((*(v4 + 40) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v4 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 40);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::RequestPrediction::ByteSize(CLMicroLocationProto::RequestPrediction *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_43;
  }

  if (*(this + 40))
  {
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 10);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v5 = *(this + 1);
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v2 = *(this + 10);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 = (v3 + v10 + v6 + 1);
LABEL_22:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v11 = *(this + 2);
  v12 = *(v11 + 23);
  v13 = v12;
  v14 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    v12 = *(v11 + 23);
    v14 = *(v11 + 8);
    v2 = *(this + 10);
    v13 = *(v11 + 23);
  }

  else
  {
    v16 = 1;
  }

  if (v13 < 0)
  {
    v12 = v14;
  }

  v3 = (v3 + v16 + v12 + 1);
  if ((v2 & 8) != 0)
  {
LABEL_34:
    v17 = *(this + 3);
    v18 = *(v17 + 23);
    v19 = v18;
    v20 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = v20;
    }

    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      v18 = *(v17 + 23);
      v20 = *(v17 + 8);
      v19 = *(v17 + 23);
    }

    else
    {
      v22 = 1;
    }

    if (v19 < 0)
    {
      v18 = v20;
    }

    v3 = (v3 + v22 + v18 + 1);
  }

LABEL_43:
  *(this + 9) = v3;
  return v3;
}

void CLMicroLocationProto::RequestPrediction::CheckTypeAndMergeFrom(CLMicroLocationProto::RequestPrediction *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RequestPrediction::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::MiloInit::MergeFrom(CLMicroLocationProto::MiloInit *this, const CLMicroLocationProto::MiloInit *a2)
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
      v5 = *(a2 + 4);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::MiloInit::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_2590FF020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::MiloInit::~MiloInit(CLMicroLocationProto::MiloInit *this)
{
  *this = &unk_286A58F98;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::MiloInit::~MiloInit(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::MiloInit::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 44;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
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

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::MiloInit::MergePartialFromCodedStream(CLMicroLocationProto::MiloInit *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_14;
        }

LABEL_29:
        *(this + 6) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v12 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 - 31 < 0x19 || v9 <= 0xE && ((1 << v9) & 0x76B6) != 0)
      {
        if (v9 - 31 >= 0x19 && (v9 > 0xE || ((1 << v9) & 0x76B6) == 0))
        {
          CLMicroLocationProto::MiloInit::MergeFrom();
        }

        *(this + 6) |= 1u;
        *(this + 4) = v9;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_29;
      }
    }

LABEL_14:
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

uint64_t CLMicroLocationProto::MiloInit::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 24);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t CLMicroLocationProto::MiloInit::ByteSize(CLMicroLocationProto::MiloInit *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v4 = *(this + 4);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    v5 = *(this + 1);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 = (v3 + v10 + v6 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_22:
  *(this + 5) = v3;
  return v3;
}

void CLMicroLocationProto::MiloInit::CheckTypeAndMergeFrom(CLMicroLocationProto::MiloInit *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::MiloInit::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::MotionEvent::MergeFrom(CLMicroLocationProto::MotionEvent *this, const CLMicroLocationProto::MotionEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 4);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::MotionEvent::MergeFrom();
      }

      *(this + 11) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 11);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 5);
      if (v8 >= 0xB)
      {
        CLMicroLocationProto::MotionEvent::MergeFrom();
      }

      *(this + 11) |= 4u;
      *(this + 5) = v8;
      v4 = *(a2 + 11);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 3);
      *(this + 11) |= 8u;
      v10 = *(this + 3);
      if (v10 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v10, v9);
      v4 = *(a2 + 11);
    }

    if ((v4 & 0x10) != 0)
    {
      v11 = *(a2 + 8);
      if (v11 >= 3)
      {
        CLMicroLocationProto::MotionEvent::MergeFrom();
      }

      *(this + 11) |= 0x10u;
      *(this + 8) = v11;
      v4 = *(a2 + 11);
    }

    if ((v4 & 0x20) != 0)
    {
      v12 = *(a2 + 9);
      *(this + 11) |= 0x20u;
      *(this + 9) = v12;
    }
  }
}

void sub_2590FF73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::MotionEvent::~MotionEvent(CLMicroLocationProto::MotionEvent *this)
{
  *this = &unk_286A59010;
  CLMicroLocationProto::ServiceStartUpdating::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::MotionEvent::~MotionEvent(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::MotionEvent::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 16) = 45;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    *(this + 20) = 0;
    if ((*(this + 44) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
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

    *(this + 32) = 0;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLMicroLocationProto::MotionEvent::MergePartialFromCodedStream(CLMicroLocationProto::MotionEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_59;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v15 = *(a2 + 2);
              goto LABEL_65;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_75;
          }

          goto LABEL_27;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v29 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v14 = v29;
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v14 - 31 < 0x19 || v14 <= 0xE && ((1 << v14) & 0x76B6) != 0)
        {
          if (v14 - 31 >= 0x19 && (v14 > 0xE || ((1 << v14) & 0x76B6) == 0))
          {
            CLMicroLocationProto::MotionEvent::MergeFrom();
          }

          *(this + 11) |= 1u;
          *(this + 4) = v14;
        }

        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_43;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_27;
      }

LABEL_43:
      *(this + 11) |= 2u;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v18 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v18 < v9 && *v18 == 24)
      {
        v10 = v18 + 1;
        *(a2 + 1) = v10;
LABEL_49:
        v28 = 0;
        if (v10 >= v9 || (v19 = *v10, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v19 <= 0xA)
        {
          *(this + 11) |= 4u;
          *(this + 5) = v19;
        }

        v20 = *(a2 + 1);
        if (v20 < *(a2 + 2) && *v20 == 34)
        {
          *(a2 + 1) = v20 + 1;
LABEL_59:
          *(this + 11) |= 8u;
          if (*(this + 3) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v21 < v15 && *v21 == 40)
          {
            v16 = v21 + 1;
            *(a2 + 1) = v16;
LABEL_65:
            v27 = 0;
            if (v16 >= v15 || (v22 = *v16, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
              if (!result)
              {
                return result;
              }

              v22 = v27;
            }

            else
            {
              *(a2 + 1) = v16 + 1;
            }

            if (v22 <= 2)
            {
              *(this + 11) |= 0x10u;
              *(this + 8) = v22;
            }

            v23 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v23 < v11 && *v23 == 48)
            {
              v12 = v23 + 1;
              *(a2 + 1) = v12;
LABEL_75:
              if (v12 >= v11 || (v24 = *v12, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 9) = v24;
                v25 = v12 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 11) |= 0x20u;
              if (v25 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_49;
    }

LABEL_27:
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

uint64_t CLMicroLocationProto::MotionEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 44);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 44);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 44);
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
  v9 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v9, a2, a4);
}

uint64_t CLMicroLocationProto::MotionEvent::ByteSize(CLMicroLocationProto::MotionEvent *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_52;
  }

  if (*(this + 44))
  {
    v4 = *(this + 4);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 11);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v5 = *(this + 1);
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v2 = *(this + 11);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 = (v3 + v10 + v6 + 1);
LABEL_22:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 5);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 11);
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_24:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_42;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_24;
  }

  v13 = *(this + 3);
  v14 = *(v13 + 23);
  v15 = v14;
  v16 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
    v2 = *(this + 11);
    v15 = *(v13 + 23);
  }

  else
  {
    v18 = 1;
  }

  if (v15 < 0)
  {
    v14 = v16;
  }

  v3 = (v3 + v18 + v14 + 1);
  if ((v2 & 0x10) == 0)
  {
LABEL_25:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_42:
  v19 = *(this + 8);
  if ((v19 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v20 = 2;
  }

  v3 = (v20 + v3);
  if ((v2 & 0x20) != 0)
  {
LABEL_48:
    v21 = *(this + 9);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    }

    else
    {
      v22 = 2;
    }

    v3 = (v22 + v3);
  }

LABEL_52:
  *(this + 10) = v3;
  return v3;
}

void CLMicroLocationProto::MotionEvent::CheckTypeAndMergeFrom(CLMicroLocationProto::MotionEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::MotionEvent::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::LegacyThrottle::MergeFrom(CLMicroLocationProto::LegacyThrottle *this, const CLMicroLocationProto::LegacyThrottle *a2)
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
      v5 = *(a2 + 4);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::LegacyThrottle::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_259100128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::LegacyThrottle::~LegacyThrottle(CLMicroLocationProto::LegacyThrottle *this)
{
  *this = &unk_286A59088;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::LegacyThrottle::~LegacyThrottle(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::LegacyThrottle::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 46;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
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

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::LegacyThrottle::MergePartialFromCodedStream(CLMicroLocationProto::LegacyThrottle *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_14;
        }

LABEL_29:
        *(this + 6) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v12 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 - 31 < 0x19 || v9 <= 0xE && ((1 << v9) & 0x76B6) != 0)
      {
        if (v9 - 31 >= 0x19 && (v9 > 0xE || ((1 << v9) & 0x76B6) == 0))
        {
          CLMicroLocationProto::LegacyThrottle::MergeFrom();
        }

        *(this + 6) |= 1u;
        *(this + 4) = v9;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_29;
      }
    }

LABEL_14:
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

uint64_t CLMicroLocationProto::LegacyThrottle::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 24);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t CLMicroLocationProto::LegacyThrottle::ByteSize(CLMicroLocationProto::LegacyThrottle *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v4 = *(this + 4);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    v5 = *(this + 1);
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 = (v3 + v10 + v6 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_22:
  *(this + 5) = v3;
  return v3;
}

void CLMicroLocationProto::LegacyThrottle::CheckTypeAndMergeFrom(CLMicroLocationProto::LegacyThrottle *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::LegacyThrottle::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RetrievedLoi::MergeFrom(CLMicroLocationProto::RetrievedLoi *this, const CLMicroLocationProto::RetrievedLoi *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 6);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      CLMicroLocationProto::RetrievedLoi::MergeFrom();
    }

    *(this + 12) |= 1u;
    *(this + 6) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x277D82C30];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 1);
    *(this + 12) |= 2u;
    v9 = *(this + 1);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_11:
      if ((v4 & 8) == 0)
      {
        goto LABEL_12;
      }

LABEL_22:
      v12 = *(a2 + 4);
      *(this + 12) |= 8u;
      v13 = *(this + 4);
      if (v13 == v6)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
      v4 = *(a2 + 12);
      if ((v4 & 0x10) == 0)
      {
LABEL_13:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(a2 + 2);
  *(this + 12) |= 4u;
  v11 = *(this + 2);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 12);
  if ((v4 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_25:
  v14 = *(a2 + 7);
  if ((v14 - 1) >= 0xC)
  {
    CLMicroLocationProto::RetrievedLoi::MergeFrom();
  }

  *(this + 12) |= 0x10u;
  *(this + 7) = v14;
  if ((*(a2 + 12) & 0x20) != 0)
  {
LABEL_14:
    v7 = *(a2 + 40);
    *(this + 12) |= 0x20u;
    *(this + 40) = v7;
  }
}

void sub_25910087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RetrievedLoi::~RetrievedLoi(CLMicroLocationProto::RetrievedLoi *this)
{
  *this = &unk_286A59100;
  CLMicroLocationProto::RetrievedLoi::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RetrievedLoi::~RetrievedLoi(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::RetrievedLoi::SharedDtor(CLMicroLocationProto::RetrievedLoi *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 4);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::RetrievedLoi::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 24) = 47;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 48) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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

    if ((*(this + 48) & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    *(this + 28) = 1;
    *(this + 40) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RetrievedLoi::MergePartialFromCodedStream(CLMicroLocationProto::RetrievedLoi *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_55;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v13 = *(a2 + 2);
              goto LABEL_61;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_71;
          }

          goto LABEL_27;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v25 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v12 = v25;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
        {
          if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
          {
            CLMicroLocationProto::RetrievedLoi::MergeFrom();
          }

          *(this + 12) |= 1u;
          *(this + 6) = v12;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_43;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_27;
      }

LABEL_43:
      *(this + 12) |= 2u;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 26)
      {
        *(a2 + 1) = v16 + 1;
LABEL_49:
        *(this + 12) |= 4u;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 34)
        {
          *(a2 + 1) = v17 + 1;
LABEL_55:
          *(this + 12) |= 8u;
          if (*(this + 4) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v18 < v13 && *v18 == 40)
          {
            v14 = v18 + 1;
            *(a2 + 1) = v14;
LABEL_61:
            v24 = 0;
            if (v14 >= v13 || (v19 = *v14, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
              if (!result)
              {
                return result;
              }

              v19 = v24;
            }

            else
            {
              *(a2 + 1) = v14 + 1;
            }

            if (v19 - 1 <= 0xB)
            {
              *(this + 12) |= 0x10u;
              *(this + 7) = v19;
            }

            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v20 < v9 && *v20 == 48)
            {
              v10 = v20 + 1;
              *(a2 + 1) = v10;
LABEL_71:
              v26 = 0;
              if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
                if (!result)
                {
                  return result;
                }

                v21 = v26;
                v22 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v22 = v10 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 40) = v21 != 0;
              *(this + 12) |= 0x20u;
              if (v22 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_49;
    }

LABEL_27:
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