void sub_2453EC198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453EC1B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855770;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453EC20C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453EC1B0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453EC2B8(uint64_t result)
{
  v1 = *(result + 124);
  if (v1)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(result + 105) = 0;
    *(result + 112) = 0;
    *(result + 108) = 0;
  }

  *(result + 124) = 0;
  return result;
}

uint64_t sub_2453EC308(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 1)
        {
          goto LABEL_68;
        }

        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v53;
        *(a1 + 124) |= 1u;
        v7 = *(this + 1);
        if (v7 >= *(this + 2) || *v7 != 17)
        {
          continue;
        }

        *(this + 1) = v7 + 1;
        goto LABEL_33;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_68;
        }

LABEL_33:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v53;
        *(a1 + 124) |= 2u;
        v17 = *(this + 1);
        if (v17 >= *(this + 2) || *v17 != 25)
        {
          continue;
        }

        *(this + 1) = v17 + 1;
LABEL_37:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v53;
        *(a1 + 124) |= 4u;
        v18 = *(this + 1);
        if (v18 >= *(this + 2) || *v18 != 33)
        {
          continue;
        }

        *(this + 1) = v18 + 1;
LABEL_41:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v53;
        *(a1 + 124) |= 8u;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 != 41)
        {
          continue;
        }

        *(this + 1) = v19 + 1;
LABEL_45:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v53;
        *(a1 + 124) |= 0x10u;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 != 49)
        {
          continue;
        }

        *(this + 1) = v20 + 1;
LABEL_52:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v53;
        *(a1 + 124) |= 0x20u;
        v22 = *(this + 1);
        v15 = *(this + 2);
        if (v22 >= v15 || *v22 != 56)
        {
          continue;
        }

        v23 = v22 + 1;
        *(this + 1) = v23;
LABEL_60:
        v53[0] = 0;
        if (v23 >= v15 || (v26 = *v23, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53);
          if (!result)
          {
            return result;
          }

          v26 = v53[0];
          v27 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          v27 = v23 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 56) = v26;
        *(a1 + 124) |= 0x40u;
        if (v27 >= v15 || *v27 != 64)
        {
          continue;
        }

        v16 = v27 + 1;
        *(this + 1) = v16;
LABEL_77:
        v53[0] = 0;
        if (v16 >= v15 || (v32 = *v16, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53);
          if (!result)
          {
            return result;
          }

          v32 = v53[0];
        }

        else
        {
          *(this + 1) = v16 + 1;
        }

        if (v32 <= 0x11)
        {
          *(a1 + 124) |= 0x80u;
          *(a1 + 60) = v32;
        }

        v33 = *(this + 1);
        v29 = *(this + 2);
        if (v33 >= v29 || *v33 != 72)
        {
          continue;
        }

        v30 = v33 + 1;
        *(this + 1) = v30;
LABEL_87:
        v53[0] = 0;
        if (v30 >= v29 || (v34 = *v30, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53);
          if (!result)
          {
            return result;
          }

          v34 = v53[0];
        }

        else
        {
          *(this + 1) = v30 + 1;
        }

        if (v34 <= 3)
        {
          *(a1 + 124) |= 0x100u;
          *(a1 + 64) = v34;
        }

        v35 = *(this + 1);
        v12 = *(this + 2);
        if (v35 >= v12 || *v35 != 80)
        {
          continue;
        }

        v13 = v35 + 1;
        *(this + 1) = v13;
LABEL_97:
        v53[0] = 0;
        if (v13 >= v12 || (v36 = *v13, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53);
          if (!result)
          {
            return result;
          }

          v36 = v53[0];
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v36 <= 6)
        {
          *(a1 + 124) |= 0x200u;
          *(a1 + 68) = v36;
        }

        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 != 89)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
LABEL_107:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v53;
        *(a1 + 124) |= 0x400u;
        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 != 97)
        {
          continue;
        }

        *(this + 1) = v38 + 1;
LABEL_111:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v53;
        *(a1 + 124) |= 0x800u;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 != 105)
        {
          continue;
        }

        *(this + 1) = v39 + 1;
LABEL_115:
        *v53 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53))
        {
          *(a1 + 88) = *v53;
          *(a1 + 124) |= 0x1000u;
          v40 = *(this + 1);
          v24 = *(this + 2);
          if (v40 < v24 && *v40 == 112)
          {
            v25 = v40 + 1;
            *(this + 1) = v25;
LABEL_119:
            v53[0] = 0;
            if (v25 >= v24 || (v41 = *v25, (v41 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53);
              if (!result)
              {
                return result;
              }

              v41 = v53[0];
            }

            else
            {
              *(this + 1) = v25 + 1;
            }

            if (v41 <= 7)
            {
              *(a1 + 124) |= 0x2000u;
              *(a1 + 96) = v41;
            }

            v42 = *(this + 1);
            v10 = *(this + 2);
            if (v42 < v10 && *v42 == 120)
            {
              v11 = v42 + 1;
              *(this + 1) = v11;
LABEL_129:
              v53[0] = 0;
              if (v11 >= v10 || (v43 = *v11, (v43 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53);
                if (!result)
                {
                  return result;
                }

                v43 = v53[0];
              }

              else
              {
                *(this + 1) = v11 + 1;
              }

              if (v43 <= 0x10)
              {
                *(a1 + 124) |= 0x4000u;
                *(a1 + 100) = v43;
              }

              v44 = *(this + 1);
              v8 = *(this + 2);
              if (v8 - v44 >= 2 && *v44 == 128 && v44[1] == 1)
              {
                v14 = (v44 + 2);
                *(this + 1) = v14;
LABEL_140:
                v53[0] = 0;
                if (v14 >= v8 || (v45 = *v14, (v45 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53);
                  if (!result)
                  {
                    return result;
                  }

                  v45 = v53[0];
                  v46 = *(this + 1);
                  v8 = *(this + 2);
                }

                else
                {
                  v46 = (v14 + 1);
                  *(this + 1) = v46;
                }

                *(a1 + 104) = v45 != 0;
                *(a1 + 124) |= 0x8000u;
                if (v8 - v46 >= 2 && *v46 == 136 && v46[1] == 1)
                {
                  v9 = (v46 + 2);
                  *(this + 1) = v9;
LABEL_149:
                  v53[0] = 0;
                  if (v9 >= v8 || (v47 = *v9, (v47 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53);
                    if (!result)
                    {
                      return result;
                    }

                    v47 = v53[0];
                    v48 = *(this + 1);
                    v8 = *(this + 2);
                  }

                  else
                  {
                    v48 = (v9 + 1);
                    *(this + 1) = v48;
                  }

                  *(a1 + 105) = v47 != 0;
                  *(a1 + 124) |= 0x10000u;
                  if (v8 - v48 >= 2 && *v48 == 144 && v48[1] == 1)
                  {
                    v21 = (v48 + 2);
                    *(this + 1) = v21;
LABEL_158:
                    if (v21 >= v8 || (v49 = *v21, v49 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 112));
                      if (!result)
                      {
                        return result;
                      }

                      v50 = *(this + 1);
                      v8 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 112) = v49;
                      v50 = (v21 + 1);
                      *(this + 1) = v50;
                    }

                    *(a1 + 124) |= 0x20000u;
                    if (v8 - v50 >= 2 && *v50 == 152 && v50[1] == 1)
                    {
                      v28 = (v50 + 2);
                      *(this + 1) = v28;
LABEL_167:
                      if (v28 >= v8 || (v51 = *v28, v51 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 108));
                        if (!result)
                        {
                          return result;
                        }

                        v52 = *(this + 1);
                        v8 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 108) = v51;
                        v52 = v28 + 1;
                        *(this + 1) = v52;
                      }

                      *(a1 + 124) |= 0x40000u;
                      if (v52 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

          continue;
        }

        return 0;
      case 3u:
        if (v6 == 1)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      case 4u:
        if (v6 == 1)
        {
          goto LABEL_41;
        }

        goto LABEL_68;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_68;
      case 6u:
        if (v6 == 1)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v23 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_60;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_77;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v30 = *(this + 1);
        v29 = *(this + 2);
        goto LABEL_87;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_97;
      case 0xBu:
        if (v6 == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_68;
      case 0xCu:
        if (v6 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_68;
      case 0xDu:
        if (v6 == 1)
        {
          goto LABEL_115;
        }

        goto LABEL_68;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v25 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_119;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_129;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v14 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_140;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v9 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_149;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v21 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_158;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v28 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_167;
      default:
LABEL_68:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_2453ECB94(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 124);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 124);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 124);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 124);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 60), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 64), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 68), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 80), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 88), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 96), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 100), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 104), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x12, *(v5 + 112), a2, a4);
    if ((*(v5 + 124) & 0x40000) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 105), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v6 & 0x40000) == 0)
  {
    return result;
  }

LABEL_39:
  v7 = *(v5 + 108);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, v7, a2, a4);
}

uint64_t sub_2453ECDE0(uint64_t a1)
{
  v2 = *(a1 + 124);
  if (v2)
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = *(a1 + 56);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(a1 + 124);
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }

    if ((v2 & 0x80) != 0)
    {
      v7 = *(a1 + 60);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
        v2 = *(a1 + 124);
      }

      else
      {
        v8 = 2;
      }

      v4 = (v8 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v9 = *(a1 + 64);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
        v2 = *(a1 + 124);
      }

      else
      {
        v10 = 2;
      }

      LODWORD(v4) = v10 + v4;
    }

    if ((v2 & 0x200) != 0)
    {
      v11 = *(a1 + 68);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
        v2 = *(a1 + 124);
      }

      else
      {
        v12 = 2;
      }

      LODWORD(v4) = v12 + v4;
    }

    v13 = v4 + 9;
    if ((v2 & 0x400) == 0)
    {
      v13 = v4;
    }

    if ((v2 & 0x800) != 0)
    {
      v13 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      LODWORD(v4) = v13 + 9;
    }

    else
    {
      LODWORD(v4) = v13;
    }

    if ((v2 & 0x2000) != 0)
    {
      v14 = *(a1 + 96);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
        v2 = *(a1 + 124);
      }

      else
      {
        v15 = 2;
      }

      LODWORD(v4) = v15 + v4;
    }

    if ((v2 & 0x4000) != 0)
    {
      v16 = *(a1 + 100);
      if ((v16 & 0x80000000) != 0)
      {
        v17 = 11;
      }

      else if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
        v2 = *(a1 + 124);
      }

      else
      {
        v17 = 2;
      }

      LODWORD(v4) = v17 + v4;
    }

    if ((v2 & 0x8000) != 0)
    {
      v4 = (v4 + 3);
    }

    else
    {
      v4 = v4;
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v4 = (v4 + 3);
    }

    else
    {
      v4 = v4;
    }

    if ((v2 & 0x20000) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 112)) + 2;
      v2 = *(a1 + 124);
    }

    if ((v2 & 0x40000) != 0)
    {
      v18 = *(a1 + 108);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 2;
      }

      else
      {
        v19 = 3;
      }

      v4 = (v19 + v4);
    }
  }

  *(a1 + 120) = v4;
  return v4;
}

void sub_2453ED024(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858388, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453EBDF0(a1, lpsrc);
}

void sub_2453ED0E0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 16);
      *(a1 + 28) |= 1u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 28);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 8);
    *(a1 + 28) |= 2u;
    v8 = *(a1 + 8);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v9 = *(a2 + 20);
    *(a1 + 28) |= 4u;
    *(a1 + 20) = v9;
    v4 = *(a2 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 21);
    *(a1 + 28) |= 8u;
    *(a1 + 21) = v10;
    v4 = *(a2 + 28);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_18:
    v11 = *(a2 + 22);
    *(a1 + 28) |= 0x10u;
    *(a1 + 22) = v11;
    if ((*(a2 + 28) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 23);
    *(a1 + 28) |= 0x20u;
    *(a1 + 23) = v5;
  }
}

void sub_2453ED258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453ED270(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858557E8;
  v2 = *(a1 + 1);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453ED30C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453ED270(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453ED398(uint64_t result)
{
  v1 = *(result + 28);
  if (v1)
  {
    *(result + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
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

    *(result + 20) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_2453ED3E8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_50;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_58;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_66;
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

        v13 = *(this + 1);
        v12 = *(this + 2);
        if (v13 >= v12 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v14;
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        v17 = *(a1 + 28) | 1;
        *(a1 + 28) = v17;
        if (v15 < v12 && *v15 == 18)
        {
          *(this + 1) = v15 + 1;
          goto LABEL_36;
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

      v17 = *(a1 + 28);
LABEL_36:
      *(a1 + 28) = v17 | 2;
      if (*(a1 + 8) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v19 = *(this + 1);
      v9 = *(this + 2);
      if (v19 < v9 && *v19 == 24)
      {
        v10 = v19 + 1;
        *(this + 1) = v10;
LABEL_42:
        v29 = 0;
        if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
          if (!result)
          {
            return result;
          }

          v20 = v29;
          v21 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v21 = v10 + 1;
          *(this + 1) = v21;
        }

        *(a1 + 20) = v20 != 0;
        *(a1 + 28) |= 4u;
        if (v21 < v9 && *v21 == 32)
        {
          v16 = v21 + 1;
          *(this + 1) = v16;
LABEL_50:
          v29 = 0;
          if (v16 >= v9 || (v22 = *v16, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
            if (!result)
            {
              return result;
            }

            v22 = v29;
            v23 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v23 = v16 + 1;
            *(this + 1) = v23;
          }

          *(a1 + 21) = v22 != 0;
          *(a1 + 28) |= 8u;
          if (v23 < v9 && *v23 == 40)
          {
            v18 = v23 + 1;
            *(this + 1) = v18;
LABEL_58:
            v29 = 0;
            if (v18 >= v9 || (v24 = *v18, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
              if (!result)
              {
                return result;
              }

              v24 = v29;
              v25 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v25 = v18 + 1;
              *(this + 1) = v25;
            }

            *(a1 + 22) = v24 != 0;
            *(a1 + 28) |= 0x10u;
            if (v25 < v9 && *v25 == 48)
            {
              v11 = v25 + 1;
              *(this + 1) = v11;
LABEL_66:
              v29 = 0;
              if (v11 >= v9 || (v26 = *v11, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
                if (!result)
                {
                  return result;
                }

                v26 = v29;
                v27 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v27 = v11 + 1;
                *(this + 1) = v27;
              }

              *(a1 + 23) = v26 != 0;
              *(a1 + 28) |= 0x20u;
              if (v27 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_42;
    }

LABEL_27:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453ED798(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 28);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 28);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 22), a2, a4);
    if ((*(v5 + 28) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 21), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v8 = *(v5 + 23);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v8, a2, a4);
}

uint64_t sub_2453ED878(uint64_t a1)
{
  v2 = *(a1 + 28);
  if (v2)
  {
    if (v2)
    {
      v5 = *(a1 + 16);
      if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(a1 + 28);
        if ((v2 & 2) == 0)
        {
LABEL_19:
          v12.i64[0] = 0x200000002;
          v12.i64[1] = 0x200000002;
          result = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2454885E0), v12)) + v3);
          goto LABEL_20;
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

    v6 = *(a1 + 8);
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
      v2 = *(a1 + 28);
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
    goto LABEL_19;
  }

  result = 0;
LABEL_20:
  *(a1 + 24) = result;
  return result;
}

void sub_2453ED968(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858583A0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453ED0E0(a1, lpsrc);
}

void sub_2453EDA24(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 52);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 8);
    *(a1 + 52) |= 1u;
    *(a1 + 8) = v8;
    v4 = *(a2 + 52);
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

  v9 = *(a2 + 12);
  *(a1 + 52) |= 2u;
  *(a1 + 12) = v9;
  v4 = *(a2 + 52);
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
  v10 = *(a2 + 16);
  *(a1 + 52) |= 4u;
  *(a1 + 16) = v10;
  v4 = *(a2 + 52);
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
  v11 = *(a2 + 20);
  *(a1 + 52) |= 8u;
  *(a1 + 20) = v11;
  v4 = *(a2 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 28);
    *(a1 + 52) |= 0x20u;
    *(a1 + 28) = v13;
    v4 = *(a2 + 52);
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
  v12 = *(a2 + 24);
  *(a1 + 52) |= 0x10u;
  *(a1 + 24) = v12;
  v4 = *(a2 + 52);
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
  v14 = *(a2 + 32);
  *(a1 + 52) |= 0x40u;
  *(a1 + 32) = v14;
  v4 = *(a2 + 52);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 36);
    *(a1 + 52) |= 0x80u;
    *(a1 + 36) = v5;
    v4 = *(a2 + 52);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 40);
      *(a1 + 52) |= 0x100u;
      *(a1 + 40) = v6;
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 44);
      *(a1 + 52) |= 0x200u;
      *(a1 + 44) = v7;
    }
  }
}

void sub_2453EDBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453EDBF4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855860;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453EDC50(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453EDBF4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453EDCE4(uint64_t result)
{
  v1 = *(result + 52);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
    *(result + 20) = 0;
    *(result + 36) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 40) = 0;
  }

  *(result + 52) = 0;
  return result;
}

uint64_t sub_2453EDD18(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v6 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v15 = *(this + 1);
                v7 = *(this + 2);
                goto LABEL_81;
              }
            }

            else if (v6 == 7 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v7 = *(this + 2);
              goto LABEL_89;
            }
          }

          else if (v6 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v7 = *(this + 2);
              goto LABEL_97;
            }
          }

          else if (v6 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(this + 1);
              v7 = *(this + 2);
              goto LABEL_105;
            }
          }

          else if (v6 == 10 && (TagFallback & 7) == 0)
          {
            v9 = *(this + 1);
            v7 = *(this + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v10 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v39 = 0;
        v12 = *(this + 1);
        v7 = *(this + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
          if (!result)
          {
            return result;
          }

          v13 = v39;
          v14 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 8) = v13 != 0;
        *(a1 + 52) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v10 = v14 + 1;
          *(this + 1) = v10;
LABEL_49:
          if (v10 >= v7 || (v20 = *v10, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
            if (!result)
            {
              return result;
            }

            v21 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            *(a1 + 12) = v20;
            v21 = v10 + 1;
            *(this + 1) = v21;
          }

          *(a1 + 52) |= 2u;
          if (v21 < v7 && *v21 == 24)
          {
            v16 = v21 + 1;
            *(this + 1) = v16;
LABEL_57:
            if (v16 >= v7 || (v22 = *v16, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v23 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v22;
              v23 = v16 + 1;
              *(this + 1) = v23;
            }

            *(a1 + 52) |= 4u;
            if (v23 < v7 && *v23 == 32)
            {
              v18 = v23 + 1;
              *(this + 1) = v18;
              goto LABEL_65;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_57;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v18 = *(this + 1);
      v7 = *(this + 2);
LABEL_65:
      if (v18 >= v7 || (v24 = *v18, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v25 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v24;
        v25 = v18 + 1;
        *(this + 1) = v25;
      }

      *(a1 + 52) |= 8u;
      if (v25 < v7 && *v25 == 40)
      {
        v8 = v25 + 1;
        *(this + 1) = v8;
LABEL_73:
        if (v8 >= v7 || (v26 = *v8, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v26;
          v27 = v8 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 52) |= 0x10u;
        if (v27 < v7 && *v27 == 48)
        {
          v15 = v27 + 1;
          *(this + 1) = v15;
LABEL_81:
          if (v15 >= v7 || (v28 = *v15, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
            if (!result)
            {
              return result;
            }

            v29 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            *(a1 + 28) = v28;
            v29 = v15 + 1;
            *(this + 1) = v29;
          }

          *(a1 + 52) |= 0x20u;
          if (v29 < v7 && *v29 == 56)
          {
            v11 = v29 + 1;
            *(this + 1) = v11;
LABEL_89:
            if (v11 >= v7 || (v30 = *v11, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v31 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v30;
              v31 = v11 + 1;
              *(this + 1) = v31;
            }

            *(a1 + 52) |= 0x40u;
            if (v31 < v7 && *v31 == 64)
            {
              v17 = v31 + 1;
              *(this + 1) = v17;
LABEL_97:
              if (v17 >= v7 || (v32 = *v17, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                if (!result)
                {
                  return result;
                }

                v33 = *(this + 1);
                v7 = *(this + 2);
              }

              else
              {
                *(a1 + 36) = v32;
                v33 = v17 + 1;
                *(this + 1) = v33;
              }

              *(a1 + 52) |= 0x80u;
              if (v33 < v7 && *v33 == 72)
              {
                v19 = v33 + 1;
                *(this + 1) = v19;
LABEL_105:
                v40 = 0;
                if (v19 >= v7 || (v34 = *v19, (v34 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                  if (!result)
                  {
                    return result;
                  }

                  v34 = v40;
                  v35 = *(this + 1);
                  v7 = *(this + 2);
                }

                else
                {
                  v35 = v19 + 1;
                  *(this + 1) = v35;
                }

                *(a1 + 40) = v34;
                *(a1 + 52) |= 0x100u;
                if (v35 < v7 && *v35 == 80)
                {
                  v9 = v35 + 1;
                  *(this + 1) = v9;
LABEL_113:
                  if (v9 >= v7 || (v36 = *v9, v36 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                    if (!result)
                    {
                      return result;
                    }

                    v37 = *(this + 1);
                    v7 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 44) = v36;
                    v37 = v9 + 1;
                    *(this + 1) = v37;
                  }

                  *(a1 + 52) |= 0x200u;
                  if (v37 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_73;
    }

LABEL_40:
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

uint64_t sub_2453EE24C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = v5[13];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[13];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[13];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[13];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[13];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[13];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, v5[10], a2, a4);
    if ((v5[13] & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_21:
  v7 = v5[11];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v7, a2, a4);
}

uint64_t sub_2453EE39C(unsigned int *a1)
{
  v2 = a1[13];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
  }

  v3 = 2 * (v2 & 1);
  if ((v2 & 2) != 0)
  {
    v4 = a1[3];
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = a1[13];
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v6 = a1[4];
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = a1[13];
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_19:
  v8 = a1[5];
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = a1[13];
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_23:
  v10 = a1[6];
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = a1[13];
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_27:
  v12 = a1[7];
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = a1[13];
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_31:
  v14 = a1[8];
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = a1[13];
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_35:
    v16 = a1[9];
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = a1[13];
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_39:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v18 = a1[10];
      if ((v18 & 0x80000000) != 0)
      {
        v19 = 11;
      }

      else if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
        v2 = a1[13];
      }

      else
      {
        v19 = 2;
      }

      v3 = (v19 + v3);
    }

    if ((v2 & 0x200) != 0)
    {
      v20 = a1[11];
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      }

      else
      {
        v21 = 2;
      }

      v3 = (v21 + v3);
    }
  }

  a1[12] = v3;
  return v3;
}

void sub_2453EE570(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858583B8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453EDA24(a1, lpsrc);
}

void sub_2453EE62C(uint64_t a1, uint64_t a2)
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
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v6;
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
    *(a1 + 32) |= 2u;
    *(a1 + 12) = v7;
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
    *(a1 + 32) |= 4u;
    *(a1 + 16) = v8;
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
    *(a1 + 32) |= 8u;
    *(a1 + 20) = v9;
    if ((*(a2 + 32) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 24);
    *(a1 + 32) |= 0x10u;
    *(a1 + 24) = v5;
  }
}

void sub_2453EE740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453EE758(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858558D8;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453EE7B4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453EE758(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453EE844(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453EE860(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

        v24 = 0;
        v12 = *(this + 1);
        v7 = *(this + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
          if (!result)
          {
            return result;
          }

          v13 = v24;
          v14 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 8) = v13 != 0;
        *(a1 + 32) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(this + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            *(a1 + 12) = v15;
            v16 = v9 + 1;
            *(this + 1) = v16;
          }

          *(a1 + 32) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(this + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v17;
              v18 = v10 + 1;
              *(this + 1) = v18;
            }

            *(a1 + 32) |= 4u;
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
      if (v11 >= v7 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v19;
        v20 = v11 + 1;
        *(this + 1) = v20;
      }

      *(a1 + 32) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(this + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v22 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v21;
          v22 = v8 + 1;
          *(this + 1) = v22;
        }

        *(a1 + 32) |= 0x10u;
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

uint64_t sub_2453EEB4C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
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

uint64_t sub_2453EEC10(unsigned int *a1)
{
  v2 = a1[8];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  v3 = 2 * (v2 & 1);
  if ((v2 & 2) != 0)
  {
    v4 = a1[3];
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = a1[8];
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v6 = a1[4];
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = a1[8];
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_16:
  v8 = a1[5];
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = a1[8];
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_20:
    v10 = a1[6];
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

LABEL_24:
  a1[7] = v3;
  return v3;
}

void sub_2453EECFC(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858583D0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453EE62C(a1, lpsrc);
}

void sub_2453EEDB8(uint64_t a1, uint64_t a2)
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
    v6 = *(a2 + 8);
    *(a1 + 44) |= 1u;
    *(a1 + 8) = v6;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 12);
  *(a1 + 44) |= 2u;
  *(a1 + 12) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 16);
  *(a1 + 44) |= 4u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 20);
  *(a1 + 44) |= 8u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = *(a2 + 28);
    *(a1 + 44) |= 0x20u;
    *(a1 + 28) = v11;
    v4 = *(a2 + 44);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_18:
  v10 = *(a2 + 24);
  *(a1 + 44) |= 0x10u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 44);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  v12 = *(a2 + 32);
  if (v12 >= 4)
  {
    __assert_rtn("set_freq_mode", "GnssEmergencyTypes.pb.h", 14154, "::CoreGem::proto::gnss::Emergency::FreqMode_IsValid(value)");
  }

  *(a1 + 44) |= 0x40u;
  *(a1 + 32) = v12;
  if ((*(a2 + 44) & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 36);
    *(a1 + 44) |= 0x80u;
    *(a1 + 36) = v5;
  }
}

void sub_2453EEF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453EEF6C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855950;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453EEFC8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453EEF6C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453EF05C(uint64_t result)
{
  if (*(result + 44))
  {
    *(result + 8) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
    *(result + 20) = 0;
    *(result + 36) = 0;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_2453EF080(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        if (TagFallback >> 3 > 6)
        {
          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v7 = *(this + 2);
              goto LABEL_83;
            }
          }

          else if (v6 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_93;
          }
        }

        else if (v6 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v7 = *(this + 2);
            goto LABEL_67;
          }
        }

        else if (v6 == 6 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_75;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(this + 1);
            v7 = *(this + 2);
            goto LABEL_51;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v34 = 0;
      v13 = *(this + 1);
      v7 = *(this + 2);
      if (v13 >= v7 || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
        if (!result)
        {
          return result;
        }

        v14 = v34;
        v15 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        v15 = v13 + 1;
        *(this + 1) = v15;
      }

      *(a1 + 8) = v14 != 0;
      *(a1 + 44) |= 1u;
      if (v15 < v7 && *v15 == 16)
      {
        v8 = v15 + 1;
        *(this + 1) = v8;
LABEL_43:
        if (v8 >= v7 || (v19 = *v8, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v20 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v19;
          v20 = v8 + 1;
          *(this + 1) = v20;
        }

        *(a1 + 44) |= 2u;
        if (v20 < v7 && *v20 == 24)
        {
          v17 = v20 + 1;
          *(this + 1) = v17;
LABEL_51:
          if (v17 >= v7 || (v21 = *v17, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v21;
            v22 = v17 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 44) |= 4u;
          if (v22 < v7 && *v22 == 32)
          {
            v10 = v22 + 1;
            *(this + 1) = v10;
LABEL_59:
            if (v10 >= v7 || (v23 = *v10, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v24 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v23;
              v24 = v10 + 1;
              *(this + 1) = v24;
            }

            *(a1 + 44) |= 8u;
            if (v24 < v7 && *v24 == 40)
            {
              v16 = v24 + 1;
              *(this + 1) = v16;
LABEL_67:
              if (v16 >= v7 || (v25 = *v16, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
                if (!result)
                {
                  return result;
                }

                v26 = *(this + 1);
                v7 = *(this + 2);
              }

              else
              {
                *(a1 + 24) = v25;
                v26 = v16 + 1;
                *(this + 1) = v26;
              }

              *(a1 + 44) |= 0x10u;
              if (v26 < v7 && *v26 == 48)
              {
                v9 = v26 + 1;
                *(this + 1) = v9;
LABEL_75:
                if (v9 >= v7 || (v27 = *v9, v27 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
                  if (!result)
                  {
                    return result;
                  }

                  v28 = *(this + 1);
                  v7 = *(this + 2);
                }

                else
                {
                  *(a1 + 28) = v27;
                  v28 = v9 + 1;
                  *(this + 1) = v28;
                }

                *(a1 + 44) |= 0x20u;
                if (v28 < v7 && *v28 == 56)
                {
                  v18 = v28 + 1;
                  *(this + 1) = v18;
LABEL_83:
                  v35 = 0;
                  if (v18 >= v7 || (v29 = *v18, (v29 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35);
                    if (!result)
                    {
                      return result;
                    }

                    v29 = v35;
                  }

                  else
                  {
                    *(this + 1) = v18 + 1;
                  }

                  if (v29 <= 3)
                  {
                    *(a1 + 44) |= 0x40u;
                    *(a1 + 32) = v29;
                  }

                  v30 = *(this + 1);
                  v11 = *(this + 2);
                  if (v30 < v11 && *v30 == 64)
                  {
                    v12 = v30 + 1;
                    *(this + 1) = v12;
LABEL_93:
                    if (v12 >= v11 || (v31 = *v12, v31 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                      if (!result)
                      {
                        return result;
                      }

                      v32 = *(this + 1);
                      v11 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 36) = v31;
                      v32 = v12 + 1;
                      *(this + 1) = v32;
                    }

                    *(a1 + 44) |= 0x80u;
                    if (v32 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_43;
    }

LABEL_34:
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

uint64_t sub_2453EF4DC(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = v5[11];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[11];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[11];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[11];
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, v5[8], a2, a4);
    if ((v5[11] & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v7 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v7, a2, a4);
}

uint64_t sub_2453EF5F4(unsigned int *a1)
{
  v2 = a1[11];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_41;
  }

  v3 = 2 * (v2 & 1);
  if ((v2 & 2) != 0)
  {
    v4 = a1[3];
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = a1[11];
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v6 = a1[4];
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = a1[11];
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_19:
  v8 = a1[5];
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = a1[11];
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_23:
  v10 = a1[6];
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = a1[11];
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_27:
  v12 = a1[7];
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = a1[11];
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_31:
  v14 = a1[8];
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = a1[11];
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_37:
    v16 = a1[9];
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_41:
  a1[10] = v3;
  return v3;
}

void sub_2453EF770(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858583E8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453EEDB8(a1, lpsrc);
}

void sub_2453EF82C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_245426AC8((a1 + 2), a2 + 8);
  sub_245426C58((a1 + 8), a2 + 32);
  sub_245426DE4((a1 + 14), a2 + 56);
  if (*(a2 + 88))
  {
    v4 = *(a2 + 80);
    if (v4 >= 7)
    {
      __assert_rtn("set_cell_type", "GnssEmergencyTypes.pb.h", 14203, "::CoreGem::proto::gnss::Emergency::CellType_IsValid(value)");
    }

    a1[22] |= 1u;
    a1[20] = v4;
  }
}

void sub_2453EF904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453EF91C(uint64_t a1)
{
  *a1 = &unk_2858559C8;
  sub_2453EB7EC();
  v2 = *(a1 + 68);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 56) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 68);
      }
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    MEMORY[0x245D6A0A0](v5, 0x80C80B8603338);
  }

  v6 = *(a1 + 44);
  if (v6 >= 1)
  {
    for (j = 0; j < v6; ++j)
    {
      v8 = *(*(a1 + 32) + 8 * j);
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v6 = *(a1 + 44);
      }
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    MEMORY[0x245D6A0A0](v9, 0x80C80B8603338);
  }

  v10 = *(a1 + 20);
  if (v10 >= 1)
  {
    for (k = 0; k < v10; ++k)
    {
      v12 = *(*(a1 + 8) + 8 * k);
      if (v12)
      {
        (*(*v12 + 8))(v12);
        v10 = *(a1 + 20);
      }
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    MEMORY[0x245D6A0A0](v13, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453EFAB0(uint64_t a1)
{
  sub_2453EF91C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453EFB50(uint64_t a1)
{
  if (*(a1 + 88))
  {
    *(a1 + 80) = 0;
  }

  sub_2453DC6D0(a1 + 8);
  sub_2453DC6D0(a1 + 32);
  result = sub_2453DC6D0(a1 + 56);
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_2453EFB98(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 == 2)
          {
            goto LABEL_48;
          }

          goto LABEL_20;
        }

        if (v6 != 4 || v7 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v33 = a1[17];
          v34 = a1[16];
          if (v34 >= v33)
          {
            if (v33 == a1[18])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 14));
              v33 = a1[17];
            }

            a1[17] = v33 + 1;
            operator new();
          }

          v35 = *(a1 + 7);
          a1[16] = v34 + 1;
          v36 = *(v35 + 8 * v34);
          v43 = 0;
          v37 = *(this + 1);
          if (v37 >= *(this + 2) || *v37 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
            {
              return 0;
            }
          }

          else
          {
            v43 = *v37;
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
          if (!sub_2453EF080(v36, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v40 = *(this + 14);
          v20 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v41 < 0 == v20)
          {
            *(this + 14) = v41;
          }

          v11 = *(this + 1);
          v42 = *(this + 2);
          if (v11 < v42 && *v11 == 34)
          {
LABEL_65:
            *(this + 1) = v11 + 1;
            continue;
          }

          break;
        }

        if (v11 == v42 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

      v43 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43);
        if (!result)
        {
          return result;
        }

        v9 = v43;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 <= 6)
      {
        a1[22] |= 1u;
        a1[20] = v9;
      }

      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        while (2)
        {
          *(this + 1) = v11 + 1;
LABEL_30:
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
          v43 = 0;
          v16 = *(this + 1);
          if (v16 >= *(this + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
            {
              return 0;
            }
          }

          else
          {
            v43 = *v16;
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
          if (!sub_2453EDD18(v15, this) || *(this + 36) != 1)
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

          v11 = *(this + 1);
          if (v11 < *(this + 2))
          {
            v22 = *v11;
            if (v22 == 18)
            {
              continue;
            }

            if (v22 == 26)
            {
              while (1)
              {
                *(this + 1) = v11 + 1;
LABEL_48:
                v23 = a1[11];
                v24 = a1[10];
                if (v24 >= v23)
                {
                  if (v23 == a1[12])
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 8));
                    v23 = a1[11];
                  }

                  a1[11] = v23 + 1;
                  operator new();
                }

                v25 = *(a1 + 4);
                a1[10] = v24 + 1;
                v26 = *(v25 + 8 * v24);
                v43 = 0;
                v27 = *(this + 1);
                if (v27 >= *(this + 2) || *v27 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
                  {
                    return 0;
                  }
                }

                else
                {
                  v43 = *v27;
                  *(this + 1) = v27 + 1;
                }

                v28 = *(this + 14);
                v29 = *(this + 15);
                *(this + 14) = v28 + 1;
                if (v28 >= v29)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                if (!sub_2453EE860(v26, this) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v30 = *(this + 14);
                v20 = __OFSUB__(v30, 1);
                v31 = v30 - 1;
                if (v31 < 0 == v20)
                {
                  *(this + 14) = v31;
                }

                v11 = *(this + 1);
                if (v11 >= *(this + 2))
                {
                  break;
                }

                v32 = *v11;
                if (v32 != 26)
                {
                  if (v32 == 34)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_1;
                }
              }
            }
          }

          break;
        }
      }
    }

    if (v6 == 2 && v7 == 2)
    {
      goto LABEL_30;
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

uint64_t sub_2453F0154(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 88))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 80), a2, a4);
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

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 56) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  return result;
}

uint64_t sub_2453F0234(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v3 = *(a1 + 80);
    if ((v3 & 0x80000000) != 0)
    {
      v2 = 11;
    }

    else if (v3 >= 0x80)
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
  v5 = v4 + v2;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sub_2453EE39C(*(*(a1 + 8) + 8 * v6));
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 += v8 + v9;
      ++v6;
    }

    while (v6 < *(a1 + 16));
  }

  v10 = *(a1 + 40);
  v11 = v10 + v5;
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = sub_2453EEC10(*(*(a1 + 32) + 8 * v12));
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      }

      else
      {
        v15 = 1;
      }

      v11 += v14 + v15;
      ++v12;
    }

    while (v12 < *(a1 + 40));
  }

  v16 = *(a1 + 64);
  v17 = (v16 + v11);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = sub_2453EF5F4(*(*(a1 + 56) + 8 * v18));
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v17 = (v20 + v17 + v21);
      ++v18;
    }

    while (v18 < *(a1 + 64));
  }

  *(a1 + 84) = v17;
  return v17;
}

void sub_2453F0398(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858400, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453EF82C(a1, lpsrc);
}

void sub_2453F0454(uint64_t a1, uint64_t a2)
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

void sub_2453F0500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F0518(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855A40;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F0574(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F0518(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F0600(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
    *(result + 12) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453F0618(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v8;
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      *(a1 + 20) |= 1u;
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

        *(a1 + 12) = v11 != 0;
        *(a1 + 20) |= 2u;
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

uint64_t sub_2453F07AC(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453F0818(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 20);
  if (v2)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(a1 + 20);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    result = (v2 & 2u) + v3;
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_2453F0880(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858418, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F0454(a1, lpsrc);
}

void sub_2453F093C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      v6 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      v7 = *(a1 + 8);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 32);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 32);
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
    v9 = *(a2 + 17);
    *(a1 + 32) |= 4u;
    *(a1 + 17) = v9;
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

LABEL_16:
    v10 = *(a2 + 20);
    *(a1 + 32) |= 8u;
    *(a1 + 20) = v10;
    if ((*(a2 + 32) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 24);
    *(a1 + 32) |= 0x10u;
    *(a1 + 24) = v5;
  }
}

void sub_2453F0A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F0AAC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855AB8;
  v2 = *(a1 + 1);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F0B48(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F0AAC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F0BDC(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(result + 32))
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
    *(result + 20) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453F0C2C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_22;
          }

          v11 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_31;
        }

        if (v8 != 2)
        {
          goto LABEL_22;
        }

        *(a1 + 32) |= 1u;
        if (*(a1 + 8) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
        if (v14 < v9 && *v14 == 16)
        {
          v11 = v14 + 1;
          *(this + 1) = v11;
LABEL_31:
          v25 = 0;
          if (v11 >= v9 || (v15 = *v11, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
            if (!result)
            {
              return result;
            }

            v15 = v25;
            v16 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v16 = v11 + 1;
            *(this + 1) = v16;
          }

          *(a1 + 16) = v15 != 0;
          *(a1 + 32) |= 2u;
          if (v16 < v9 && *v16 == 24)
          {
            v12 = v16 + 1;
            *(this + 1) = v12;
LABEL_39:
            v24 = 0;
            if (v12 >= v9 || (v17 = *v12, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
              if (!result)
              {
                return result;
              }

              v17 = v24;
              v18 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v18 = v12 + 1;
              *(this + 1) = v18;
            }

            *(a1 + 17) = v17 != 0;
            *(a1 + 32) |= 4u;
            if (v18 < v9 && *v18 == 32)
            {
              v13 = v18 + 1;
              *(this + 1) = v13;
              goto LABEL_47;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_39;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_22;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
LABEL_47:
      if (v13 >= v9 || (v19 = *v13, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v19;
        v20 = v13 + 1;
        *(this + 1) = v20;
      }

      *(a1 + 32) |= 8u;
      if (v20 < v9 && *v20 == 40)
      {
        v10 = v20 + 1;
        *(this + 1) = v10;
LABEL_55:
        v26 = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
          if (!result)
          {
            return result;
          }

          v21 = v26;
          v22 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(this + 1) = v22;
        }

        *(a1 + 24) = v21;
        *(a1 + 32) |= 0x10u;
        if (v22 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_55;
    }

LABEL_22:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453F0F54(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v7 = *(result + 8);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 17), a2, a4);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v8, a2, a4);
}

uint64_t sub_2453F1018(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2)
    {
      v5 = *(a1 + 8);
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
        v2 = *(a1 + 32);
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

      v3 = v10 + v6;
    }

    else
    {
      v3 = 0;
    }

    v4 = (v2 & 2) + v3 + ((v2 >> 1) & 2);
    if ((v2 & 8) != 0)
    {
      v12 = *(a1 + 20);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
        v2 = *(a1 + 32);
      }

      else
      {
        v13 = 2;
      }

      v4 = (v13 + v4);
    }

    if ((v2 & 0x10) != 0)
    {
      v14 = *(a1 + 24);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      }

      else
      {
        v15 = 2;
      }

      v4 = (v15 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 28) = v4;
  return v4;
}

void sub_2453F111C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858430, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F093C(a1, lpsrc);
}

void sub_2453F11D8(unsigned int *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
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
      sub_2453F093C(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 16);
    }

    while (v7 < v6);
  }

  if (*(a2 + 40))
  {
    v12 = *(a2 + 32);
    if (v12 >= 6)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 14515, "::CoreGem::proto::gnss::Emergency::WlanMeasurementResult_IsValid(value)");
    }

    a1[10] |= 1u;
    a1[8] = v12;
  }
}

void sub_2453F13DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F13FC(uint64_t a1)
{
  *a1 = &unk_285855B30;
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

void sub_2453F14C4(uint64_t a1)
{
  sub_2453F13FC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F1554(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 32) = 0;
  }

  result = sub_2453DC6D0(a1 + 8);
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_2453F158C(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

      v22 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
        if (!result)
        {
          return result;
        }

        v8 = v22;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 <= 5)
      {
        a1[10] |= 1u;
        a1[8] = v8;
      }

      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 18)
      {
        do
        {
          *(this + 1) = v10 + 1;
LABEL_23:
          v11 = a1[5];
          v12 = a1[4];
          if (v12 >= v11)
          {
            if (v11 == a1[6])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2));
              v11 = a1[5];
            }

            a1[5] = v11 + 1;
            operator new();
          }

          v13 = *(a1 + 1);
          a1[4] = v12 + 1;
          v14 = *(v13 + 8 * v12);
          v23 = 0;
          v15 = *(this + 1);
          if (v15 >= *(this + 2) || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
            {
              return 0;
            }
          }

          else
          {
            v23 = *v15;
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
          if (!sub_2453F0C2C(v14, this) || *(this + 36) != 1)
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

          v10 = *(this + 1);
          v21 = *(this + 2);
        }

        while (v10 < v21 && *v10 == 18);
        if (v10 == v21 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
}

uint64_t sub_2453F184C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 40))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 32), a2, a4);
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

uint64_t sub_2453F18C4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    if ((v3 & 0x80000000) != 0)
    {
      v2 = 11;
    }

    else if (v3 >= 0x80)
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
      v7 = sub_2453F1018(*(*(a1 + 8) + 8 * v6));
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

void sub_2453F1980(unsigned int *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858448, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F11D8(a1, lpsrc);
}

void sub_2453F1A3C(uint64_t a1, uint64_t a2)
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
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v6;
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
    *(a1 + 32) |= 2u;
    *(a1 + 12) = v7;
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
    *(a1 + 32) |= 4u;
    *(a1 + 16) = v8;
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
    *(a1 + 32) |= 8u;
    *(a1 + 20) = v9;
    if ((*(a2 + 32) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 24);
    *(a1 + 32) |= 0x10u;
    *(a1 + 24) = v5;
  }
}

void sub_2453F1B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F1B68(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855BA8;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F1BC4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F1B68(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F1C54(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453F1C70(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

        v24 = 0;
        v12 = *(this + 1);
        v7 = *(this + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
          if (!result)
          {
            return result;
          }

          v13 = v24;
          v14 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 8) = v13 != 0;
        *(a1 + 32) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(this + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            *(a1 + 12) = v15;
            v16 = v9 + 1;
            *(this + 1) = v16;
          }

          *(a1 + 32) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(this + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v17;
              v18 = v10 + 1;
              *(this + 1) = v18;
            }

            *(a1 + 32) |= 4u;
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
      if (v11 >= v7 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v19;
        v20 = v11 + 1;
        *(this + 1) = v20;
      }

      *(a1 + 32) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(this + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v22 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v21;
          v22 = v8 + 1;
          *(this + 1) = v22;
        }

        *(a1 + 32) |= 0x10u;
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

uint64_t sub_2453F1F5C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
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

uint64_t sub_2453F2020(unsigned int *a1)
{
  v2 = a1[8];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  v3 = 2 * (v2 & 1);
  if ((v2 & 2) != 0)
  {
    v4 = a1[3];
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = a1[8];
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v6 = a1[4];
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = a1[8];
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_16:
  v8 = a1[5];
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = a1[8];
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_20:
    v10 = a1[6];
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

LABEL_24:
  a1[7] = v3;
  return v3;
}

void sub_2453F210C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858460, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F1A3C(a1, lpsrc);
}

void sub_2453F21C8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    sub_2453B0370((a1 + 24), *(a1 + 32) + v4);
    memcpy((*(a1 + 24) + 4 * *(a1 + 32)), *(a2 + 24), 4 * *(a2 + 32));
    *(a1 + 32) += *(a2 + 32);
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
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 12);
      if (v7 >= 5)
      {
        __assert_rtn("set_slp_address_type", "GnssEmergencyTypes.pb.h", 14703, "::CoreGem::proto::gnss::Emergency::SLPAddressType_IsValid(value)");
      }

      *(a1 + 44) |= 2u;
      *(a1 + 12) = v7;
      v5 = *(a2 + 44);
    }

    if ((v5 & 4) != 0)
    {
      v8 = *(a2 + 16);
      *(a1 + 44) |= 4u;
      v9 = *(a1 + 16);
      if (v9 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }
}

void sub_2453F2338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F2350(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855C20;
  v2 = *(a1 + 2);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_2453EB7EC();
  v4 = *(a1 + 3);
  if (v4)
  {
    MEMORY[0x245D6A0A0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F2408(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F2350(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F24A0(uint64_t result)
{
  v1 = *(result + 44);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 12) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(result + 16);
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

  *(result + 32) = 0;
  *(result + 44) = 0;
  return result;
}

uint64_t sub_2453F24F4(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v15 = *(this + 2);
              goto LABEL_48;
            }

            if (v8 == 2)
            {
              result = sub_2453DD50C(this, a1 + 24);
              if (!result)
              {
                return result;
              }

              goto LABEL_65;
            }
          }

          goto LABEL_23;
        }

        if (v8 != 2)
        {
          goto LABEL_23;
        }

LABEL_42:
        *(a1 + 44) |= 4u;
        if (*(a1 + 16) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v19 = *(this + 1);
        v15 = *(this + 2);
        if (v19 < v15 && *v19 == 32)
        {
          do
          {
            v16 = v19 + 1;
            *(this + 1) = v16;
LABEL_48:
            v30 = 0;
            if (v16 >= v15 || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
              {
                return 0;
              }
            }

            else
            {
              v30 = *v16;
              *(this + 1) = v16 + 1;
            }

            v20 = *(a1 + 32);
            if (v20 == *(a1 + 36))
            {
              sub_2453B0370((a1 + 24), v20 + 1);
              v20 = *(a1 + 32);
            }

            v21 = v30;
            v22 = *(a1 + 24);
            *(a1 + 32) = v20 + 1;
            *(v22 + 4 * v20) = v21;
            v23 = *(a1 + 36) - *(a1 + 32);
            if (v23 >= 1)
            {
              v24 = v23 + 1;
              do
              {
                v25 = *(this + 1);
                v26 = *(this + 2);
                if (v25 >= v26 || *v25 != 32)
                {
                  break;
                }

                *(this + 1) = v25 + 1;
                if ((v25 + 1) >= v26 || v25[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
                  {
                    return 0;
                  }
                }

                else
                {
                  v30 = v25[1];
                  *(this + 1) = v25 + 2;
                }

                v27 = *(a1 + 32);
                if (v27 >= *(a1 + 36))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
                  v27 = *(a1 + 32);
                }

                v28 = v30;
                v29 = *(a1 + 24);
                *(a1 + 32) = v27 + 1;
                *(v29 + 4 * v27) = v28;
                --v24;
              }

              while (v24 > 1);
            }

LABEL_65:
            v19 = *(this + 1);
            v15 = *(this + 2);
          }

          while (v19 < v15 && *v19 == 32);
          if (v19 == v15 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
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
        goto LABEL_23;
      }

      v31[0] = 0;
      v12 = *(this + 1);
      v9 = *(this + 2);
      if (v12 >= v9 || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31);
        if (!result)
        {
          return result;
        }

        v13 = v31[0];
        v14 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      *(a1 + 8) = v13 != 0;
      *(a1 + 44) |= 1u;
      if (v14 < v9 && *v14 == 16)
      {
        v10 = v14 + 1;
        *(this + 1) = v10;
LABEL_32:
        v31[0] = 0;
        if (v10 >= v9 || (v17 = *v10, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31);
          if (!result)
          {
            return result;
          }

          v17 = v31[0];
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v17 <= 4)
        {
          *(a1 + 44) |= 2u;
          *(a1 + 12) = v17;
        }

        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 26)
        {
          *(this + 1) = v18 + 1;
          goto LABEL_42;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_32;
    }

LABEL_23:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_2453F28E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453F28F8(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 44);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 44) & 4) != 0)
  {
LABEL_4:
    v7 = *(v5 + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 24) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  return result;
}

uint64_t sub_2453F29AC(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (v2)
  {
    v3 = 2 * (v2 & 1);
    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 12);
      if ((v4 & 0x80000000) != 0)
      {
        v5 = 11;
      }

      else if (v4 >= 0x80)
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        v2 = *(a1 + 44);
      }

      else
      {
        v5 = 2;
      }

      v3 += v5;
    }

    if ((v2 & 4) != 0)
    {
      v6 = *(a1 + 16);
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
    }
  }

  else
  {
    v3 = 0;
  }

  v12 = *(a1 + 32);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(*(a1 + 24) + 4 * v13);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        v12 = *(a1 + 32);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  result = (v14 + v3 + v12);
  *(a1 + 40) = result;
  return result;
}

void sub_2453F2ACC(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858478, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F21C8(a1, lpsrc);
}

void sub_2453F2B88(uint64_t a1, _BYTE *a2)
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

void sub_2453F2C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F2C4C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855C98;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F2CA8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F2C4C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F2D30(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453F2D44(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

uint64_t sub_2453F2EE8(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453F2F54(uint64_t a1)
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

void sub_2453F2F78(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858490, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F2B88(a1, lpsrc);
}

void sub_2453F3034(uint64_t a1, uint64_t a2)
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
        sub_2453EB7EC();
        v6 = *(qword_2813CEA28 + 8);
      }

      sub_2453F21C8(v5, v6);
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 16);
      if (v7 >= 4)
      {
        __assert_rtn("set_trigger_type", "GnssEmergencyTypes.pb.h", 14915, "::CoreGem::proto::gnss::Emergency::TriggerType_IsValid(value)");
      }

      *(a1 + 24) |= 2u;
      *(a1 + 16) = v7;
    }
  }
}

void sub_2453F3184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F319C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855D10;
  sub_2453EB7EC();
  if (qword_2813CEA28 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F3234(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F319C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F32BC(uint64_t result)
{
  v1 = result;
  if (*(result + 24))
  {
    if (*(result + 24))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453F24A0(result);
      }
    }

    *(v1 + 16) = 0;
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_2453F32FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
    if (!sub_2453F24F4(v7, this) || *(this + 36) != 1)
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
      v19 = 0;
      if (v10 >= v9 || (v17 = *v10, (v17 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19);
        if (!result)
        {
          return result;
        }

        v17 = v19;
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v17 <= 3)
      {
        *(a1 + 24) |= 2u;
        *(a1 + 16) = v17;
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

uint64_t sub_2453F3564(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEA28 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_2453F35E4(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = 0;
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_2453EB7EC();
    v3 = *(qword_2813CEA28 + 8);
  }

  v4 = sub_2453F29AC(v3);
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
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v2 = (v8 + v2);
  }

LABEL_18:
  *(a1 + 20) = v2;
  return v2;
}

void sub_2453F36A0(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858584A8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F3034(a1, lpsrc);
}

void sub_2453F375C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 40);
    if (v5 >= 0x12)
    {
      __assert_rtn("set_pos_method", "GnssEmergencyTypes.pb.h", 14942, "::CoreGem::proto::gnss::Emergency::PositionMethod_IsValid(value)");
    }

    *(a1 + 48) |= 1u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 48);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    *(a1 + 48) |= 4u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEED8 + 16);
    }

    sub_2453F21C8(v8, v9);
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_27;
    }

    goto LABEL_22;
  }

  *(a1 + 48) |= 2u;
  v6 = *(a1 + 8);
  if (!v6)
  {
    operator new();
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEED8 + 8);
  }

  sub_2453F1A3C(v6, v7);
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_22:
  *(a1 + 48) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    sub_2453EB7EC();
    v11 = *(qword_2813CEED8 + 24);
  }

  sub_2453F2B88(v10, v11);
  if ((*(a2 + 48) & 0x10) != 0)
  {
LABEL_27:
    *(a1 + 48) |= 0x10u;
    v12 = *(a1 + 32);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 32);
    if (!v13)
    {
      sub_2453EB7EC();
      v13 = *(qword_2813CEED8 + 32);
    }

    sub_2453F3034(v12, v13);
  }
}

void sub_2453F3A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F3A5C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855D88;
  sub_2453EB7EC();
  if (qword_2813CEED8 != a1)
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
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F3B78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F3A5C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F3C08(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 48);
  if (v2)
  {
    *(result + 40) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 20) = 0;
          *(v3 + 12) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(result + 48);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_2453F24A0(result);
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_2453F32BC(result);
      }
    }
  }

  *(v1 + 48) = 0;
  return result;
}

uint64_t sub_2453F3CA4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

          goto LABEL_48;
        }

        if (v6 == 4)
        {
          if (v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_62:
          *(a1 + 48) |= 8u;
          v27 = *(a1 + 24);
          if (!v27)
          {
            operator new();
          }

          v40 = 0;
          v28 = *(this + 1);
          if (v28 >= *(this + 2) || *v28 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
            {
              return 0;
            }
          }

          else
          {
            v40 = *v28;
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
          if (!sub_2453F2D44(v27, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v31 = *(this + 14);
          v17 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v17)
          {
            *(this + 14) = v32;
          }

          v33 = *(this + 1);
          if (v33 < *(this + 2) && *v33 == 42)
          {
            *(this + 1) = v33 + 1;
            goto LABEL_76;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_76:
          *(a1 + 48) |= 0x10u;
          v34 = *(a1 + 32);
          if (!v34)
          {
            operator new();
          }

          v40 = 0;
          v35 = *(this + 1);
          if (v35 >= *(this + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
            {
              return 0;
            }
          }

          else
          {
            v40 = *v35;
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
          if (!sub_2453F32FC(v34, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v38 = *(this + 14);
          v17 = __OFSUB__(v38, 1);
          v39 = v38 - 1;
          if (v39 < 0 == v17)
          {
            *(this + 14) = v39;
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

      v40 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
        if (!result)
        {
          return result;
        }

        v9 = v40;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 <= 0x11)
      {
        *(a1 + 48) |= 1u;
        *(a1 + 40) = v9;
      }

      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
LABEL_34:
        *(a1 + 48) |= 2u;
        v12 = *(a1 + 8);
        if (!v12)
        {
          operator new();
        }

        v40 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
          {
            return 0;
          }
        }

        else
        {
          v40 = *v13;
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
        if (!sub_2453F1C70(v12, this) || *(this + 36) != 1)
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
LABEL_48:
          *(a1 + 48) |= 4u;
          v20 = *(a1 + 16);
          if (!v20)
          {
            operator new();
          }

          v40 = 0;
          v21 = *(this + 1);
          if (v21 >= *(this + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
            {
              return 0;
            }
          }

          else
          {
            v40 = *v21;
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
          if (!sub_2453F24F4(v20, this) || *(this + 36) != 1)
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

          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 34)
          {
            *(this + 1) = v26 + 1;
            goto LABEL_62;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 2)
    {
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

uint64_t sub_2453F4298(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 40), a2, a4);
    v6 = *(v5 + 48);
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEED8 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
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

LABEL_11:
  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEED8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_14:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEED8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_17:
    v10 = *(v5 + 32);
    if (!v10)
    {
      sub_2453EB7EC();
      v10 = *(qword_2813CEED8 + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  }

  return result;
}

uint64_t sub_2453F43AC(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_41;
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 40);
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
      v2 = *(a1 + 48);
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
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453EB7EC();
    v5 = *(qword_2813CEED8 + 8);
  }

  v6 = sub_2453F2020(v5);
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
  v2 = *(a1 + 48);
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v9 = *(a1 + 16);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEED8 + 16);
    }

    v10 = sub_2453F29AC(v9);
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
    v2 = *(a1 + 48);
    if ((v2 & 8) == 0)
    {
LABEL_21:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    sub_2453EB7EC();
    v13 = *(qword_2813CEED8 + 24);
  }

  if (*(v13 + 16))
  {
    v14 = 2 * (*(v13 + 16) & 1) + (*(v13 + 16) & 2);
  }

  else
  {
    v14 = 0;
  }

  *(v13 + 12) = v14;
  v3 = (v3 + v14 + 2);
  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_35:
    v15 = *(a1 + 32);
    if (!v15)
    {
      sub_2453EB7EC();
      v15 = *(qword_2813CEED8 + 32);
    }

    v16 = sub_2453F35E4(v15);
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

LABEL_41:
  *(a1 + 44) = v3;
  return v3;
}

void sub_2453F4560(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858584C0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F375C(a1, lpsrc);
}

void *sub_2453F461C(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D82C30];
  *a1 = &unk_285855E00;
  a1[1] = v3;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = v3;
  a1[6] = 0;
  sub_2453F4688(a1, a2);
  return a1;
}

void sub_2453F4688(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 52);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 52) |= 1u;
    *(a1 + 32) = v5;
    v4 = *(a2 + 52);
  }

  v6 = MEMORY[0x277D82C30];
  if ((v4 & 2) != 0)
  {
    v9 = *(a2 + 8);
    *(a1 + 52) |= 2u;
    v10 = *(a1 + 8);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v11 = *(a2 + 36);
  *(a1 + 52) |= 4u;
  *(a1 + 36) = v11;
  v4 = *(a2 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_21:
  v12 = *(a2 + 16);
  *(a1 + 52) |= 8u;
  v13 = *(a1 + 16);
  if (v13 == v6)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v16 = *(a2 + 40);
    *(a1 + 52) |= 0x20u;
    v17 = *(a1 + 40);
    if (v17 == v6)
    {
      operator new();
    }

    std::string::operator=(v17, v16);
    v4 = *(a2 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_24:
  *(a1 + 52) |= 0x10u;
  v14 = *(a1 + 24);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 24);
  if (!v15)
  {
    sub_2453EB7EC();
    v15 = *(qword_2813CEFA8 + 24);
  }

  sub_2453EB890(v14, v15);
  v4 = *(a2 + 52);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_32:
  v18 = *(a2 + 37);
  *(a1 + 52) |= 0x40u;
  *(a1 + 37) = v18;
  v4 = *(a2 + 52);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 38);
    *(a1 + 52) |= 0x80u;
    *(a1 + 38) = v7;
    v4 = *(a2 + 52);
  }

LABEL_14:
  if ((v4 & 0x100) != 0)
  {
    v8 = *(a2 + 39);
    *(a1 + 52) |= 0x100u;
    *(a1 + 39) = v8;
  }
}

void sub_2453F4928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F4940(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855E00;
  sub_2453F4998(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F4998(void *a1)
{
  v2 = a1[1];
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  v5 = a1[2];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    MEMORY[0x245D6A0D0](v5, 0x1012C40EC159624);
  }

  v7 = a1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    MEMORY[0x245D6A0D0](v7, 0x1012C40EC159624);
  }

  sub_2453EB7EC();
  if (qword_2813CEFA8 != a1)
  {
    v9 = a1[3];
    if (v9)
    {
      v10 = *(*v9 + 8);

      v10();
    }
  }
}

void sub_2453F4ABC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F4940(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F4B50(uint64_t result)
{
  v1 = *(result + 52);
  if (v1)
  {
    *(result + 32) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
    {
      v3 = *(result + 8);
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

    *(result + 36) = 0;
    if ((*(result + 52) & 8) != 0)
    {
      v4 = *(result + 16);
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

    v5 = *(result + 52);
    if ((v5 & 0x10) != 0)
    {
      v6 = *(result + 24);
      if (v6)
      {
        if (*(v6 + 24))
        {
          *(v6 + 16) = 0;
          *(v6 + 8) = 0;
        }

        *(v6 + 24) = 0;
        v5 = *(result + 52);
      }
    }

    if ((v5 & 0x20) != 0)
    {
      v7 = *(result + 40);
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

    *(result + 37) = 0;
    v1 = *(result + 52);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 39) = 0;
  }

  *(result + 52) = 0;
  return result;
}

uint64_t sub_2453F4C44(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 != 3)
          {
            if (v7 != 4 || v8 != 2)
            {
              goto LABEL_38;
            }

            v12 = *(a1 + 52);
            goto LABEL_61;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v18 = *(this + 1);
          v17 = *(this + 2);
LABEL_53:
          v41 = 0;
          if (v18 >= v17 || (v23 = *v18, (v23 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41);
            if (!result)
            {
              return result;
            }

            v23 = v41;
            v24 = *(this + 1);
            v17 = *(this + 2);
          }

          else
          {
            v24 = v18 + 1;
            *(this + 1) = v24;
          }

          *(a1 + 36) = v23 != 0;
          v12 = *(a1 + 52) | 4;
          *(a1 + 52) = v12;
          if (v24 < v17 && *v24 == 34)
          {
            *(this + 1) = v24 + 1;
LABEL_61:
            *(a1 + 52) = v12 | 8;
            if (*(a1 + 16) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v25 = *(this + 1);
            if (v25 < *(this + 2) && *v25 == 42)
            {
              *(this + 1) = v25 + 1;
              goto LABEL_67;
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_38;
            }

            v11 = *(a1 + 52);
            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v14 = *(this + 1);
          v13 = *(this + 2);
          if (v14 >= v13 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v13 = *(this + 2);
          }

          else
          {
            *(a1 + 32) = v15;
            v16 = v14 + 1;
            *(this + 1) = v16;
          }

          v11 = *(a1 + 52) | 1;
          *(a1 + 52) = v11;
          if (v16 < v13 && *v16 == 18)
          {
            *(this + 1) = v16 + 1;
LABEL_47:
            *(a1 + 52) = v11 | 2;
            if (*(a1 + 8) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v17 = *(this + 2);
            if (v22 < v17 && *v22 == 24)
            {
              v18 = v22 + 1;
              *(this + 1) = v18;
              goto LABEL_53;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_87;
      }

      if (v7 == 8)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
LABEL_95:
        v41 = 0;
        if (v20 >= v9 || (v37 = *v20, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41);
          if (!result)
          {
            return result;
          }

          v37 = v41;
          v38 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v38 = v20 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 38) = v37 != 0;
        *(a1 + 52) |= 0x80u;
        if (v38 < v9 && *v38 == 72)
        {
          v10 = v38 + 1;
          *(this + 1) = v10;
LABEL_103:
          v41 = 0;
          if (v10 >= v9 || (v39 = *v10, (v39 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41);
            if (!result)
            {
              return result;
            }

            v39 = v41;
            v40 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v40 = v10 + 1;
            *(this + 1) = v40;
          }

          *(a1 + 39) = v39 != 0;
          *(a1 + 52) |= 0x100u;
          if (v40 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      else
      {
        if (v7 == 9 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_103;
        }

LABEL_38:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 5)
    {
      if (v7 != 6 || v8 != 2)
      {
        goto LABEL_38;
      }

      goto LABEL_81;
    }

    if (v8 != 2)
    {
      goto LABEL_38;
    }

LABEL_67:
    *(a1 + 52) |= 0x10u;
    v26 = *(a1 + 24);
    if (!v26)
    {
      operator new();
    }

    v41 = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || *v27 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
      {
        return 0;
      }
    }

    else
    {
      v41 = *v27;
      *(this + 1) = v27 + 1;
    }

    v28 = *(this + 14);
    v29 = *(this + 15);
    *(this + 14) = v28 + 1;
    if (v28 >= v29)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453EBA78(v26, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v30 = *(this + 14);
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v32 < 0 == v31)
    {
      *(this + 14) = v32;
    }

    v33 = *(this + 1);
    if (v33 < *(this + 2) && *v33 == 50)
    {
      *(this + 1) = v33 + 1;
LABEL_81:
      *(a1 + 52) |= 0x20u;
      if (*(a1 + 40) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v34 = *(this + 1);
      v9 = *(this + 2);
      if (v34 < v9 && *v34 == 56)
      {
        v19 = v34 + 1;
        *(this + 1) = v19;
LABEL_87:
        v41 = 0;
        if (v19 >= v9 || (v35 = *v19, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41);
          if (!result)
          {
            return result;
          }

          v35 = v41;
          v36 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v36 = v19 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 37) = v35 != 0;
        *(a1 + 52) |= 0x40u;
        if (v36 < v9 && *v36 == 64)
        {
          v20 = v36 + 1;
          *(this + 1) = v20;
          goto LABEL_95;
        }
      }
    }
  }
}

uint64_t sub_2453F5220(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 32), a2, a4);
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

  v7 = *(v5 + 8);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 36), a2, a4);
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
  v8 = *(v5 + 16);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_15:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEFA8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 52);
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
  v10 = *(v5 + 40);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 38), a2, a4);
    if ((*(v5 + 52) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 37), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_21:
  v11 = *(v5 + 39);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, v11, a2, a4);
}

uint64_t sub_2453F5368(uint64_t a1)
{
  v2 = *(a1 + 52);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if (v2)
  {
    v5 = *(a1 + 32);
    if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(a1 + 52);
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

  v6 = *(a1 + 8);
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
    v2 = *(a1 + 52);
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
LABEL_19:
  v12 = ((v2 >> 1) & 2) + v3;
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_21;
    }

LABEL_32:
    v19 = *(a1 + 24);
    if (!v19)
    {
      sub_2453EB7EC();
      v19 = *(qword_2813CEFA8 + 24);
    }

    v20 = 2 * (*(v19 + 24) & 1) + (*(v19 + 24) & 2);
    if ((*(v19 + 24) & 4) != 0)
    {
      v20 |= 9u;
    }

    if (*(v19 + 24))
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    *(v19 + 20) = v21;
    v12 += v21 + 2;
    v2 = *(a1 + 52);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v13 = *(a1 + 16);
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
    v2 = *(a1 + 52);
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

  v12 += v18 + v14 + 1;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if ((v2 & 0x20) != 0)
  {
LABEL_40:
    v22 = *(a1 + 40);
    v23 = *(v22 + 23);
    v24 = v23;
    v25 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = v25;
    }

    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      v23 = *(v22 + 23);
      v25 = *(v22 + 8);
      v2 = *(a1 + 52);
      v24 = *(v22 + 23);
    }

    else
    {
      v27 = 1;
    }

    if (v24 < 0)
    {
      v23 = v25;
    }

    v12 += v27 + v23 + 1;
  }

LABEL_49:
  v4 = ((v2 >> 5) & 2) + ((v2 >> 6) & 2) + v12;
LABEL_50:
  if ((v2 & 0xFF00) != 0)
  {
    v28 = (v2 >> 7) & 2;
  }

  else
  {
    v28 = 0;
  }

  result = (v28 + v4);
  *(a1 + 48) = result;
  return result;
}

void sub_2453F557C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858584D8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F4688(a1, lpsrc);
}

void sub_2453F5638(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 104);
  if (!v4)
  {
    goto LABEL_20;
  }

  if (v4)
  {
    v5 = *(a2 + 8);
    *(a1 + 104) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 104);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 12);
    if (v6 >= 0x12)
    {
      __assert_rtn("set_pos_method", "GnssEmergencyTypes.pb.h", 15525, "::CoreGem::proto::gnss::Emergency::PositionMethod_IsValid(value)");
    }

    *(a1 + 104) |= 2u;
    *(a1 + 12) = v6;
    v4 = *(a2 + 104);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 16);
    if (v7 >= 0x21)
    {
      __assert_rtn("set_status", "GnssEmergencyTypes.pb.h", 15548, "::CoreGem::proto::gnss::Emergency::Status_IsValid(value)");
    }

    *(a1 + 104) |= 4u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 104);
  }

  if ((v4 & 8) != 0)
  {
    v8 = *(a2 + 20);
    if (v8 >= 0x18)
    {
      __assert_rtn("set_end_cause", "GnssEmergencyTypes.pb.h", 15571, "::CoreGem::proto::gnss::Emergency::EndCause_IsValid(value)");
    }

    *(a1 + 104) |= 8u;
    *(a1 + 20) = v8;
    v4 = *(a2 + 104);
  }

  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_48:
    v21 = *(a2 + 32);
    *(a1 + 104) |= 0x20u;
    *(a1 + 32) = v21;
    v4 = *(a2 + 104);
    if ((v4 & 0x40) == 0)
    {
LABEL_18:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_49;
  }

  v20 = *(a2 + 24);
  *(a1 + 104) |= 0x10u;
  *(a1 + 24) = v20;
  v4 = *(a2 + 104);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_48;
  }

LABEL_17:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_49:
  v22 = *(a2 + 40);
  *(a1 + 104) |= 0x40u;
  *(a1 + 40) = v22;
  v4 = *(a2 + 104);
  if ((v4 & 0x80) != 0)
  {
LABEL_19:
    v9 = *(a2 + 48);
    *(a1 + 104) |= 0x80u;
    *(a1 + 48) = v9;
    v4 = *(a2 + 104);
  }

LABEL_20:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = *(a2 + 56);
    *(a1 + 104) |= 0x100u;
    *(a1 + 56) = v10;
    v4 = *(a2 + 104);
    if ((v4 & 0x200) == 0)
    {
LABEL_23:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(a2 + 64);
  *(a1 + 104) |= 0x200u;
  *(a1 + 64) = v11;
  v4 = *(a2 + 104);
  if ((v4 & 0x400) == 0)
  {
LABEL_24:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = *(a2 + 72);
  *(a1 + 104) |= 0x400u;
  *(a1 + 72) = v12;
  v4 = *(a2 + 104);
  if ((v4 & 0x800) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = *(a2 + 96);
  *(a1 + 104) |= 0x800u;
  *(a1 + 96) = v13;
  v4 = *(a2 + 104);
  if ((v4 & 0x1000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_34:
  v14 = *(a2 + 97);
  *(a1 + 104) |= 0x1000u;
  *(a1 + 97) = v14;
  v4 = *(a2 + 104);
  if ((v4 & 0x2000) == 0)
  {
LABEL_27:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = *(a2 + 98);
  *(a1 + 104) |= 0x2000u;
  *(a1 + 98) = v15;
  v4 = *(a2 + 104);
  if ((v4 & 0x4000) == 0)
  {
LABEL_28:
    if ((v4 & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_36:
  *(a1 + 104) |= 0x4000u;
  v16 = *(a1 + 80);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 80);
  if (!v17)
  {
    sub_2453EB7EC();
    v17 = *(qword_2813CEF70 + 80);
  }

  sub_2453F69D4(v16, v17);
  if ((*(a2 + 104) & 0x8000) != 0)
  {
LABEL_41:
    *(a1 + 104) |= 0x8000u;
    v18 = *(a1 + 88);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 88);
    if (!v19)
    {
      sub_2453EB7EC();
      v19 = *(qword_2813CEF70 + 88);
    }

    sub_2453F6B40(v18, v19);
  }
}