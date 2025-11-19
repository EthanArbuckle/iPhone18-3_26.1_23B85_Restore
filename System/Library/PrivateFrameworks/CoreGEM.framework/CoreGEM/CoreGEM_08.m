void sub_2453F59F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F5A10(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855E78;
  sub_2453EB7EC();
  if (qword_2813CEF70 != a1)
  {
    v2 = *(a1 + 10);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 11);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F5AD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F5A10(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F5B74(uint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 96) = 0;
    *(result + 98) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 56) = 0;
    if ((v1 & 0x4000) != 0)
    {
      v2 = *(result + 80);
      if (v2)
      {
        if (*(v2 + 60))
        {
          *(v2 + 40) = 0u;
          *(v2 + 24) = 0u;
          *(v2 + 8) = 0u;
        }

        *(v2 + 60) = 0;
        v1 = *(result + 104);
      }
    }

    if ((v1 & 0x8000) != 0)
    {
      v3 = *(result + 88);
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

  *(result + 104) = 0;
  return result;
}

uint64_t sub_2453F5BF8(uint64_t result)
{
  if (*(result + 60))
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 60) = 0;
  return result;
}

uint64_t sub_2453F5C18(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_2453F5C2C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v8 = *(this + 1);
        v7 = *(this + 2);
        if (v8 >= v7 || (v9 = *v8, v9 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
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

        *(a1 + 104) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v19 = v10 + 1;
          *(this + 1) = v19;
          goto LABEL_48;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(this + 1);
        v7 = *(this + 2);
LABEL_48:
        v55[0] = 0;
        if (v19 >= v7 || (v22 = *v19, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55);
          if (!result)
          {
            return result;
          }

          v22 = v55[0];
        }

        else
        {
          *(this + 1) = v19 + 1;
        }

        if (v22 <= 0x11)
        {
          *(a1 + 104) |= 2u;
          *(a1 + 12) = v22;
        }

        v23 = *(this + 1);
        v15 = *(this + 2);
        if (v23 >= v15 || *v23 != 24)
        {
          continue;
        }

        v16 = v23 + 1;
        *(this + 1) = v16;
LABEL_58:
        v55[0] = 0;
        if (v16 >= v15 || (v24 = *v16, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55);
          if (!result)
          {
            return result;
          }

          v24 = v55[0];
        }

        else
        {
          *(this + 1) = v16 + 1;
        }

        if (v24 <= 0x20)
        {
          *(a1 + 104) |= 4u;
          *(a1 + 16) = v24;
        }

        v25 = *(this + 1);
        v17 = *(this + 2);
        if (v25 >= v17 || *v25 != 32)
        {
          continue;
        }

        v18 = v25 + 1;
        *(this + 1) = v18;
LABEL_68:
        v55[0] = 0;
        if (v18 >= v17 || (v26 = *v18, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55);
          if (!result)
          {
            return result;
          }

          v26 = v55[0];
        }

        else
        {
          *(this + 1) = v18 + 1;
        }

        if (v26 <= 0x17)
        {
          *(a1 + 104) |= 8u;
          *(a1 + 20) = v26;
        }

        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 41)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_78:
        *v55 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v55) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v55;
        *(a1 + 104) |= 0x10u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 49)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_82:
        *v55 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v55) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v55;
        *(a1 + 104) |= 0x20u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 57)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_86:
        *v55 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v55) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v55;
        *(a1 + 104) |= 0x40u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 65)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_90:
        *v55 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v55) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v55;
        *(a1 + 104) |= 0x80u;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 73)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_94:
        *v55 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v55) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v55;
        *(a1 + 104) |= 0x100u;
        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 81)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_98:
        *v55 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v55) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v55;
        *(a1 + 104) |= 0x200u;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 != 89)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
LABEL_102:
        *v55 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v55) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v55;
        *(a1 + 104) |= 0x400u;
        v34 = *(this + 1);
        v12 = *(this + 2);
        if (v34 >= v12 || *v34 != 96)
        {
          continue;
        }

        v13 = v34 + 1;
        *(this + 1) = v13;
LABEL_106:
        v55[0] = 0;
        if (v13 >= v12 || (v35 = *v13, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55);
          if (!result)
          {
            return result;
          }

          v35 = v55[0];
          v36 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v36 = v13 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 96) = v35 != 0;
        *(a1 + 104) |= 0x800u;
        if (v36 >= v12 || *v36 != 104)
        {
          continue;
        }

        v14 = v36 + 1;
        *(this + 1) = v14;
LABEL_114:
        v55[0] = 0;
        if (v14 >= v12 || (v37 = *v14, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55);
          if (!result)
          {
            return result;
          }

          v37 = v55[0];
          v38 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v38 = v14 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 97) = v37 != 0;
        *(a1 + 104) |= 0x1000u;
        if (v38 >= v12 || *v38 != 112)
        {
          continue;
        }

        v20 = v38 + 1;
        *(this + 1) = v20;
LABEL_122:
        v55[0] = 0;
        if (v20 >= v12 || (v39 = *v20, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55);
          if (!result)
          {
            return result;
          }

          v39 = v55[0];
          v40 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v40 = v20 + 1;
          *(this + 1) = v40;
        }

        *(a1 + 98) = v39 != 0;
        v11 = *(a1 + 104) | 0x2000;
        *(a1 + 104) = v11;
        if (v40 >= v12 || *v40 != 122)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_130:
        *(a1 + 104) = v11 | 0x4000;
        v41 = *(a1 + 80);
        if (!v41)
        {
          operator new();
        }

        v55[0] = 0;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55))
          {
            return 0;
          }
        }

        else
        {
          v55[0] = *v42;
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
        if (!sub_2454226A4(v41, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v45 = *(this + 14);
        v46 = __OFSUB__(v45, 1);
        v47 = v45 - 1;
        if (v47 < 0 == v46)
        {
          *(this + 14) = v47;
        }

        v48 = *(this + 1);
        if (*(this + 4) - v48 <= 1 || *v48 != 130 || v48[1] != 1)
        {
          continue;
        }

        *(this + 1) = v48 + 2;
LABEL_145:
        *(a1 + 104) |= 0x8000u;
        v49 = *(a1 + 88);
        if (!v49)
        {
          operator new();
        }

        v55[0] = 0;
        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55))
          {
            return 0;
          }
        }

        else
        {
          v55[0] = *v50;
          *(this + 1) = v50 + 1;
        }

        v51 = *(this + 14);
        v52 = *(this + 15);
        *(this + 14) = v51 + 1;
        if (v51 < v52)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (sub_245422D5C(v49, this))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v53 = *(this + 14);
              v46 = __OFSUB__(v53, 1);
              v54 = v53 - 1;
              if (v54 < 0 == v46)
              {
                *(this + 14) = v54;
              }

              if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_58;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        goto LABEL_68;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_78;
        }

        goto LABEL_40;
      case 6u:
        if (v6 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_40;
      case 7u:
        if (v6 == 1)
        {
          goto LABEL_86;
        }

        goto LABEL_40;
      case 8u:
        if (v6 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_40;
      case 9u:
        if (v6 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_94;
      case 0xAu:
        if (v6 == 1)
        {
          goto LABEL_98;
        }

        goto LABEL_40;
      case 0xBu:
        if (v6 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_40;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_106;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v14 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_114;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v20 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_122;
      case 0xFu:
        if (v6 != 2)
        {
          goto LABEL_40;
        }

        v11 = *(a1 + 104);
        goto LABEL_130;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_145;
        }

        goto LABEL_40;
      default:
LABEL_40:
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

uint64_t sub_2453F64E0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 104);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 104);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 96), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 97), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 98), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_32:
  v7 = *(v5 + 80);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF70 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v7, a2, a4);
  if ((*(v5 + 104) & 0x8000) != 0)
  {
LABEL_35:
    v8 = *(v5 + 88);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEF70 + 88);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v8, a2, a4);
  }

  return result;
}

uint64_t sub_2453F6700(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (v2)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(a1 + 104);
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(a1 + 104);
  }

  else
  {
    v7 = 2;
  }

  v3 += v7;
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(a1 + 104);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
    if ((v2 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if ((v2 & 8) != 0)
  {
LABEL_25:
    v10 = *(a1 + 20);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(a1 + 104);
    }

    else
    {
      v11 = 2;
    }

    v3 += v11;
  }

LABEL_31:
  v12 = v3 + 9;
  if ((v2 & 0x10) == 0)
  {
    v12 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v12 += 9;
  }

  if ((v2 & 0x40) != 0)
  {
    v12 += 9;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v12 + 9;
  }

  else
  {
    v4 = v12;
  }

LABEL_40:
  if ((v2 & 0xFF00) != 0)
  {
    v13 = v4 + 9;
    if ((v2 & 0x100) == 0)
    {
      v13 = v4;
    }

    if ((v2 & 0x200) != 0)
    {
      v13 += 9;
    }

    if ((v2 & 0x400) != 0)
    {
      v13 += 9;
    }

    v4 = ((v2 >> 11) & 2) + ((v2 >> 10) & 2) + ((v2 >> 12) & 2) + v13;
    if ((v2 & 0x4000) != 0)
    {
      v14 = *(a1 + 80);
      if (!v14)
      {
        sub_2453EB7EC();
        v14 = *(qword_2813CEF70 + 80);
      }

      v15 = sub_245422B00(v14);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      }

      else
      {
        v17 = 1;
      }

      v4 = (v4 + v16 + v17 + 1);
      v2 = *(a1 + 104);
    }

    if ((v2 & 0x8000) != 0)
    {
      v18 = *(a1 + 88);
      if (!v18)
      {
        sub_2453EB7EC();
        v18 = *(qword_2813CEF70 + 88);
      }

      v19 = sub_245422FC4(v18);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v4 = (v4 + v20 + v21 + 2);
    }
  }

  *(a1 + 100) = v4;
  return v4;
}

void sub_2453F6930(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858584F0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F5638(a1, lpsrc);
}

void sub_2453F69D4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (v4)
  {
    if (*(a2 + 60))
    {
      v6 = *(a2 + 8);
      *(a1 + 60) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 60);
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

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 16);
    *(a1 + 60) |= 2u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 60);
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
    v8 = *(a2 + 24);
    *(a1 + 60) |= 4u;
    *(a1 + 24) = v8;
    v4 = *(a2 + 60);
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
    v9 = *(a2 + 32);
    *(a1 + 60) |= 8u;
    *(a1 + 32) = v9;
    v4 = *(a2 + 60);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 40);
    *(a1 + 60) |= 0x10u;
    *(a1 + 40) = v10;
    v4 = *(a2 + 60);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_18:
    v11 = *(a2 + 48);
    *(a1 + 60) |= 0x20u;
    *(a1 + 48) = v11;
    if ((*(a2 + 60) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 52);
    *(a1 + 60) |= 0x40u;
    *(a1 + 52) = v5;
  }
}

void sub_2453F6B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F6B40(uint64_t a1, uint64_t a2)
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
      v6 = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = v6;
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

    v7 = *(a2 + 12);
    *(a1 + 28) |= 2u;
    *(a1 + 12) = v7;
    if ((*(a2 + 28) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 16);
    *(a1 + 28) |= 4u;
    *(a1 + 16) = v5;
  }
}

void sub_2453F6C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F6C44(_DWORD *a1, uint64_t a2)
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

void sub_2453F6CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F6D08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855EF0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F6D64(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F6D08(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F6DE8(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453F6DFC(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

uint64_t sub_2453F6F78(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453F6FE4(uint64_t a1)
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

void sub_2453F7074(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858508, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F6C44(a1, lpsrc);
}

void sub_2453F7130(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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
        sub_2453EB7EC();
        v6 = *(qword_2813CEA38 + 8);
      }

      sub_2453F6C44(v5, v6);
      v4 = *(a2 + 36);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 36);
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
    v8 = *(a2 + 20);
    *(a1 + 36) |= 4u;
    *(a1 + 20) = v8;
    v4 = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_18:
      v10 = *(a2 + 28);
      if (v10 >= 5)
      {
        __assert_rtn("set_modem_state", "GnssEmergencyTypes.pb.h", 16058, "::CoreGem::proto::gnss::Emergency::ClsModemState_IsValid(value)");
      }

      *(a1 + 36) |= 0x10u;
      *(a1 + 28) = v10;
      return;
    }

LABEL_17:
    v9 = *(a2 + 24);
    *(a1 + 36) |= 8u;
    *(a1 + 24) = v9;
    if ((*(a2 + 36) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_2453F72D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F72EC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855F68;
  sub_2453EB7EC();
  if (qword_2813CEA38 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F7384(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F72EC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F7410(uint64_t result)
{
  if (*(result + 36))
  {
    if (*(result + 36))
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
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_2453F7440(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

        v11 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_46;
      }

      if (v6 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v8 = *(this + 2);
LABEL_54:
        if (v12 >= v8 || (v26 = *v12, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v26;
          v27 = v12 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 36) |= 8u;
        if (v27 < v8 && *v27 == 40)
        {
          v9 = v27 + 1;
          *(this + 1) = v9;
LABEL_62:
          v29 = 0;
          if (v9 >= v8 || (v28 = *v9, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
            if (!result)
            {
              return result;
            }

            v28 = v29;
          }

          else
          {
            *(this + 1) = v9 + 1;
          }

          if (v28 <= 4)
          {
            *(a1 + 36) |= 0x10u;
            *(a1 + 28) = v28;
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

      else
      {
        if (v6 == 5 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_62;
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

    if (v6 != 1)
    {
      if (v6 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v10 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_38;
    }

    if (v7 != 2)
    {
      goto LABEL_21;
    }

    *(a1 + 36) |= 1u;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

    v30 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453F6DFC(v13, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v17 = *(this + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(this + 14) = v19;
    }

    v20 = *(this + 1);
    v8 = *(this + 2);
    if (v20 < v8 && *v20 == 16)
    {
      v10 = v20 + 1;
      *(this + 1) = v10;
LABEL_38:
      if (v10 >= v8 || (v21 = *v10, v21 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v22 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v21;
        v22 = v10 + 1;
        *(this + 1) = v22;
      }

      *(a1 + 36) |= 2u;
      if (v22 < v8 && *v22 == 24)
      {
        v11 = v22 + 1;
        *(this + 1) = v11;
LABEL_46:
        if (v11 >= v8 || (v24 = *v11, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v25 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v24;
          v25 = v11 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 36) |= 4u;
        if (v25 < v8 && *v25 == 32)
        {
          v12 = v25 + 1;
          *(this + 1) = v12;
          goto LABEL_54;
        }
      }
    }
  }
}

uint64_t sub_2453F77EC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEA38 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[9];
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
    if ((v5[9] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[9];
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_13:
  v8 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v8, a2, a4);
}

uint64_t sub_2453F78C4(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_34;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_2453EB7EC();
    v4 = *(qword_2813CEA38 + 8);
  }

  v5 = sub_2453F6FE4(v4);
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
    if (v8 >= 0x80)
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

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(a1 + 20);
    if (v10 >= 0x80)
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
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(a1 + 24);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(a1 + 36);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_28:
    v14 = *(a1 + 28);
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

    v3 = (v15 + v3);
  }

LABEL_34:
  *(a1 + 32) = v3;
  return v3;
}

void sub_2453F7A04(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858520, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F7130(a1, lpsrc);
}

void sub_2453F7AC0(_DWORD *a1, uint64_t a2)
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

void sub_2453F7B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F7BAC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855FE0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F7C08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F7BAC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F7C90(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453F7CA8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

unsigned int *sub_2453F7E94(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453F7F20(uint64_t a1)
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

void sub_2453F7FD8(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858538, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F7AC0(a1, lpsrc);
}

void sub_2453F8094(_DWORD *a1, uint64_t a2)
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
      if (v5 >= 6)
      {
        __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 16155, "::CoreGem::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
      }

      a1[6] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if (v6 >= 7)
      {
        __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 16178, "::CoreGem::proto::gnss::Emergency::PosProtocol_IsValid(value)");
      }

      a1[6] |= 2u;
      a1[3] = v6;
      v4 = *(a2 + 24);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      a1[6] |= 4u;
      a1[4] = v7;
    }
  }
}

void sub_2453F81AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F81C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856058;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F8220(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F81C4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F82A8(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453F82C0(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          v11 = *(this + 2);
          goto LABEL_37;
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
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v8 = v20;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 <= 5)
      {
        a1[6] |= 1u;
        a1[2] = v8;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(this + 1) = v10;
LABEL_27:
        v19 = 0;
        if (v10 >= v9 || (v14 = *v10, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19);
          if (!result)
          {
            return result;
          }

          v14 = v19;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v14 <= 6)
        {
          a1[6] |= 2u;
          a1[3] = v14;
        }

        v15 = *(this + 1);
        v11 = *(this + 2);
        if (v15 < v11 && *v15 == 24)
        {
          v12 = v15 + 1;
          *(this + 1) = v12;
LABEL_37:
          if (v12 >= v11 || (v16 = *v12, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            a1[4] = v16;
            v17 = v12 + 1;
            *(this + 1) = v17;
          }

          a1[6] |= 4u;
          if (v17 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

unsigned int *sub_2453F84D4(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, result[2], a2, a4);
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

uint64_t sub_2453F8560(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (*(a1 + 24))
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
      v2 = *(a1 + 24);
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
    if ((*(a1 + 24) & 2) == 0)
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
    v2 = *(a1 + 24);
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

LABEL_24:
  *(a1 + 20) = v3;
  return v3;
}

void sub_2453F8634(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858550, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F8094(a1, lpsrc);
}

void sub_2453F86F0(_DWORD *a1, _DWORD *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = a2[20];
  if (!v4)
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v5 = a2[2];
    a1[20] |= 1u;
    a1[2] = v5;
    v4 = a2[20];
  }

  if ((v4 & 2) != 0)
  {
    v6 = a2[3];
    if (v6 >= 5)
    {
      __assert_rtn("set_method", "GnssEmergencyTypes.pb.h", 16249, "::CoreGem::proto::gnss::Emergency::MethodType_IsValid(value)");
    }

    a1[20] |= 2u;
    a1[3] = v6;
    v4 = a2[20];
  }

  if ((v4 & 4) != 0)
  {
    v17 = a2[4];
    a1[20] |= 4u;
    a1[4] = v17;
    v4 = a2[20];
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

  v18 = a2[5];
  a1[20] |= 8u;
  a1[5] = v18;
  v4 = a2[20];
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_41:
    v20 = a2[7];
    a1[20] |= 0x20u;
    a1[7] = v20;
    v4 = a2[20];
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_40:
  v19 = a2[6];
  a1[20] |= 0x10u;
  a1[6] = v19;
  v4 = a2[20];
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_42:
  v21 = a2[8];
  a1[20] |= 0x40u;
  a1[8] = v21;
  v4 = a2[20];
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v7 = a2[9];
    a1[20] |= 0x80u;
    a1[9] = v7;
    v4 = a2[20];
  }

LABEL_16:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = a2[10];
    a1[20] |= 0x100u;
    a1[10] = v10;
    v4 = a2[20];
    if ((v4 & 0x200) == 0)
    {
LABEL_19:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v11 = a2[11];
  a1[20] |= 0x200u;
  a1[11] = v11;
  v4 = a2[20];
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = a2[12];
  a1[20] |= 0x400u;
  a1[12] = v12;
  v4 = a2[20];
  if ((v4 & 0x800) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = a2[13];
  a1[20] |= 0x800u;
  a1[13] = v13;
  v4 = a2[20];
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = a2[14];
  a1[20] |= 0x1000u;
  a1[14] = v14;
  v4 = a2[20];
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = a2[15];
  a1[20] |= 0x2000u;
  a1[15] = v15;
  v4 = a2[20];
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_35:
  v16 = a2[16];
  if (v16 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 16536, "::CoreGem::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  a1[20] |= 0x4000u;
  a1[16] = v16;
  v4 = a2[20];
  if ((v4 & 0x8000) != 0)
  {
LABEL_25:
    v8 = a2[17];
    a1[20] |= 0x8000u;
    a1[17] = v8;
    v4 = a2[20];
  }

LABEL_26:
  if ((v4 & 0x10000) != 0)
  {
    v9 = a2[18];
    a1[20] |= 0x10000u;
    a1[18] = v9;
  }
}

void sub_2453F89D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F89EC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858560D0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453F8A48(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F89EC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F8AE0(uint64_t result)
{
  v1 = *(result + 80);
  if (v1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(result + 72) = 0;
  }

  *(result + 80) = 0;
  return result;
}

uint64_t sub_2453F8B20(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          goto LABEL_42;
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
LABEL_48:
            a1[20] |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v22 = v9 + 1;
              *(this + 1) = v22;
              goto LABEL_51;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (result)
        {
          v9 = *(this + 1);
          v6 = *(this + 2);
          goto LABEL_48;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v22 = *(this + 1);
        v6 = *(this + 2);
LABEL_51:
        v62 = 0;
        if (v22 >= v6 || (v28 = *v22, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v62);
          if (!result)
          {
            return result;
          }

          v28 = v62;
        }

        else
        {
          *(this + 1) = v22 + 1;
        }

        if (v28 <= 4)
        {
          a1[20] |= 2u;
          a1[3] = v28;
        }

        v29 = *(this + 1);
        v12 = *(this + 2);
        if (v29 >= v12 || *v29 != 24)
        {
          continue;
        }

        v18 = v29 + 1;
        *(this + 1) = v18;
LABEL_61:
        if (v18 >= v12 || (v30 = *v18, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[4] = v30;
          v31 = v18 + 1;
          *(this + 1) = v31;
        }

        a1[20] |= 4u;
        if (v31 >= v12 || *v31 != 32)
        {
          continue;
        }

        v20 = v31 + 1;
        *(this + 1) = v20;
LABEL_69:
        if (v20 >= v12 || (v32 = *v20, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[5] = v32;
          v33 = v20 + 1;
          *(this + 1) = v33;
        }

        a1[20] |= 8u;
        if (v33 >= v12 || *v33 != 40)
        {
          continue;
        }

        v15 = v33 + 1;
        *(this + 1) = v15;
LABEL_77:
        if (v15 >= v12 || (v34 = *v15, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[6] = v34;
          v35 = v15 + 1;
          *(this + 1) = v35;
        }

        a1[20] |= 0x10u;
        if (v35 >= v12 || *v35 != 48)
        {
          continue;
        }

        v23 = v35 + 1;
        *(this + 1) = v23;
LABEL_85:
        if (v23 >= v12 || (v36 = *v23, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[7] = v36;
          v37 = v23 + 1;
          *(this + 1) = v37;
        }

        a1[20] |= 0x20u;
        if (v37 >= v12 || *v37 != 56)
        {
          continue;
        }

        v25 = v37 + 1;
        *(this + 1) = v25;
LABEL_93:
        if (v25 >= v12 || (v38 = *v25, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
          if (!result)
          {
            return result;
          }

          v39 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[8] = v38;
          v39 = v25 + 1;
          *(this + 1) = v39;
        }

        a1[20] |= 0x40u;
        if (v39 >= v12 || *v39 != 64)
        {
          continue;
        }

        v21 = v39 + 1;
        *(this + 1) = v21;
LABEL_101:
        if (v21 >= v12 || (v40 = *v21, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 9);
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[9] = v40;
          v41 = v21 + 1;
          *(this + 1) = v41;
        }

        a1[20] |= 0x80u;
        if (v41 >= v12 || *v41 != 72)
        {
          continue;
        }

        v27 = v41 + 1;
        *(this + 1) = v27;
LABEL_109:
        if (v27 >= v12 || (v42 = *v27, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 10);
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[10] = v42;
          v43 = v27 + 1;
          *(this + 1) = v43;
        }

        a1[20] |= 0x100u;
        if (v43 >= v12 || *v43 != 80)
        {
          continue;
        }

        v17 = v43 + 1;
        *(this + 1) = v17;
LABEL_117:
        if (v17 >= v12 || (v44 = *v17, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 11);
          if (!result)
          {
            return result;
          }

          v45 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[11] = v44;
          v45 = v17 + 1;
          *(this + 1) = v45;
        }

        a1[20] |= 0x200u;
        if (v45 >= v12 || *v45 != 88)
        {
          continue;
        }

        v26 = v45 + 1;
        *(this + 1) = v26;
LABEL_125:
        if (v26 >= v12 || (v46 = *v26, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 12);
          if (!result)
          {
            return result;
          }

          v47 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[12] = v46;
          v47 = v26 + 1;
          *(this + 1) = v47;
        }

        a1[20] |= 0x400u;
        if (v47 >= v12 || *v47 != 96)
        {
          continue;
        }

        v14 = v47 + 1;
        *(this + 1) = v14;
LABEL_133:
        if (v14 >= v12 || (v48 = *v14, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 13);
          if (!result)
          {
            return result;
          }

          v49 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[13] = v48;
          v49 = v14 + 1;
          *(this + 1) = v49;
        }

        a1[20] |= 0x800u;
        if (v49 >= v12 || *v49 != 104)
        {
          continue;
        }

        v16 = v49 + 1;
        *(this + 1) = v16;
LABEL_141:
        if (v16 >= v12 || (v50 = *v16, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 14);
          if (!result)
          {
            return result;
          }

          v51 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[14] = v50;
          v51 = v16 + 1;
          *(this + 1) = v51;
        }

        a1[20] |= 0x1000u;
        if (v51 >= v12 || *v51 != 112)
        {
          continue;
        }

        v24 = v51 + 1;
        *(this + 1) = v24;
LABEL_149:
        if (v24 >= v12 || (v52 = *v24, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 15);
          if (!result)
          {
            return result;
          }

          v53 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          a1[15] = v52;
          v53 = v24 + 1;
          *(this + 1) = v53;
        }

        a1[20] |= 0x2000u;
        if (v53 >= v12 || *v53 != 120)
        {
          continue;
        }

        v13 = v53 + 1;
        *(this + 1) = v13;
LABEL_157:
        v61 = 0;
        if (v13 >= v12 || (v54 = *v13, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v61);
          if (!result)
          {
            return result;
          }

          v54 = v61;
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v54 <= 6)
        {
          a1[20] |= 0x4000u;
          a1[16] = v54;
        }

        v55 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v55 < 2 || *v55 != 128 || v55[1] != 1)
        {
          continue;
        }

        v19 = (v55 + 2);
        *(this + 1) = v19;
LABEL_168:
        if (v19 >= v10 || (v56 = *v19, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 17);
          if (!result)
          {
            return result;
          }

          v57 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[17] = v56;
          v57 = (v19 + 1);
          *(this + 1) = v57;
        }

        a1[20] |= 0x8000u;
        if (v10 - v57 < 2 || *v57 != 136 || v57[1] != 1)
        {
          continue;
        }

        v11 = (v57 + 2);
        *(this + 1) = v11;
LABEL_177:
        if (v11 >= v10 || (v58 = *v11, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 18);
          if (!result)
          {
            return result;
          }

          v59 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          a1[18] = v58;
          v59 = v11 + 1;
          *(this + 1) = v59;
        }

        a1[20] |= 0x10000u;
        if (v59 != v10 || !*(this + 11) && *(this + 6) != *(this + 10))
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
          goto LABEL_42;
        }

        v18 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_61;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_69;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_77;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v23 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_85;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v25 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_93;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v21 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_101;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v27 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_109;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v17 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_117;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v26 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_125;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_133;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_141;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v24 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_149;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_157;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_168;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_177;
      default:
LABEL_42:
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

unsigned int *sub_2453F9318(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[20];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[20];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
  v6 = v5[20];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[20];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[13], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[14], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v5[15], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[17], a2, a4);
    if ((v5[20] & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, v5[16], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v6 & 0x10000) == 0)
  {
    return result;
  }

LABEL_35:
  v7 = v5[18];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v7, a2, a4);
}

uint64_t sub_2453F952C(unsigned int *a1)
{
  v2 = a1[20];
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
      v2 = a1[20];
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = a1[3];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = a1[20];
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v7 = a1[4];
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = a1[20];
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v9 = a1[5];
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = a1[20];
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_31:
  v11 = a1[6];
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = a1[20];
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_35:
  v13 = a1[7];
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = a1[20];
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
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
    v2 = a1[20];
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
      v2 = a1[20];
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
    goto LABEL_56;
  }

  if ((v2 & 0x100) != 0)
  {
    v19 = a1[10];
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = a1[20];
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

      goto LABEL_66;
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
    v2 = a1[20];
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

    goto LABEL_70;
  }

LABEL_66:
  v23 = a1[12];
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = a1[20];
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

    goto LABEL_74;
  }

LABEL_70:
  v25 = a1[13];
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = a1[20];
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
      goto LABEL_54;
    }

    goto LABEL_78;
  }

LABEL_74:
  v27 = a1[14];
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = a1[20];
  }

  else
  {
    v28 = 2;
  }

  v3 = (v28 + v3);
  if ((v2 & 0x2000) == 0)
  {
LABEL_54:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_82;
  }

LABEL_78:
  v29 = a1[15];
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v2 = a1[20];
  }

  else
  {
    v30 = 2;
  }

  v3 = (v30 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_55:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_88;
  }

LABEL_82:
  v31 = a1[16];
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 11;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v2 = a1[20];
  }

  else
  {
    v32 = 2;
  }

  v3 = (v32 + v3);
  if ((v2 & 0x8000) == 0)
  {
LABEL_56:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_92;
  }

LABEL_88:
  v33 = a1[17];
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
    v2 = a1[20];
  }

  else
  {
    v34 = 3;
  }

  v3 = (v34 + v3);
  if ((v2 & 0x10000) != 0)
  {
LABEL_92:
    v35 = a1[18];
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    }

    else
    {
      v36 = 3;
    }

    v3 = (v36 + v3);
  }

LABEL_96:
  a1[19] = v3;
  return v3;
}

void sub_2453F9874(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858568, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F86F0(a1, lpsrc);
}

void sub_2453F9930(uint64_t a1, uint64_t a2)
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
        v6 = *(qword_2813CEA50 + 8);
      }

      sub_2453F7130(v5, v6);
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
        v8 = *(qword_2813CEA50 + 16);
      }

      sub_2453F6C44(v7, v8);
    }
  }
}

void sub_2453F9AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453F9AC4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856148;
  sub_2453EB7EC();
  if (qword_2813CEA50 != a1)
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

void sub_2453F9B88(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453F9AC4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453F9C0C(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 28);
  if (v2)
  {
    if (*(result + 28))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453F7410(result);
        v2 = *(v1 + 28);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
      }
    }
  }

  *(v1 + 28) = 0;
  return result;
}

uint64_t sub_2453F9C68(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
      if (!sub_2453F7440(v7, this) || *(this + 36) != 1)
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
        if (!sub_2453F6DFC(v15, this) || *(this + 36) != 1)
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

uint64_t sub_2453F9F60(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEA50 + 8);
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
      v8 = *(qword_2813CEA50 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_2453F9FF4(uint64_t a1)
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
    v3 = *(qword_2813CEA50 + 8);
  }

  v4 = sub_2453F78C4(v3);
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
      v7 = *(qword_2813CEA50 + 16);
    }

    v8 = sub_2453F6FE4(v7);
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

void sub_2453FA0D0(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858580, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453F9930(a1, lpsrc);
}

void sub_2453FA18C(_DWORD *a1, uint64_t a2)
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

void sub_2453FA238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FA250(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858561C0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FA2AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FA250(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FA330(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453FA344(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

uint64_t sub_2453FA4C0(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453FA52C(uint64_t a1)
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

void sub_2453FA5BC(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858598, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FA18C(a1, lpsrc);
}

void sub_2453FA678(_DWORD *a1, uint64_t a2)
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

void sub_2453FA724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FA73C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856238;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FA798(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FA73C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FA81C(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453FA830(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

uint64_t sub_2453FA9AC(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453FAA18(uint64_t a1)
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

void sub_2453FAAA8(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858585B0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FA678(a1, lpsrc);
}

void sub_2453FAB64(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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
        sub_2453EB7EC();
        v6 = *(qword_2813CEA68 + 8);
      }

      sub_2453F9930(v5, v6);
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 36) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEA68 + 16);
    }

    sub_2453FA18C(v7, v8);
    if ((*(a2 + 36) & 4) != 0)
    {
LABEL_18:
      *(a1 + 36) |= 4u;
      v9 = *(a1 + 24);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 24);
      if (!v10)
      {
        sub_2453EB7EC();
        v10 = *(qword_2813CEA68 + 24);
      }

      sub_2453FA678(v9, v10);
    }
  }
}

void sub_2453FAD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FAD78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858562B0;
  sub_2453EB7EC();
  if (qword_2813CEA68 != a1)
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

void sub_2453FAE68(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FAD78(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FAEF4(uint64_t result)
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
        result = sub_2453F9C0C(result);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }
  }

  *(v1 + 36) = 0;
  return result;
}

uint64_t sub_2453FAF70(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 36) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v30 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v9;
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
      if (!sub_2453F9C68(v8, this) || *(this + 36) != 1)
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
LABEL_30:
        *(a1 + 36) |= 2u;
        v16 = *(a1 + 16);
        if (!v16)
        {
          operator new();
        }

        v31 = 0;
        v17 = *(this + 1);
        if (v17 >= *(this + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v17;
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
        if (!sub_2453FA344(v16, this) || *(this + 36) != 1)
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
LABEL_44:
          *(a1 + 36) |= 4u;
          v23 = *(a1 + 24);
          if (!v23)
          {
            operator new();
          }

          v32 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v24;
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
          if (!sub_2453FA830(v23, this) || *(this + 36) != 1)
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
      goto LABEL_30;
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
}

uint64_t sub_2453FB370(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEA68 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEA68 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEA68 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return result;
}

uint64_t sub_2453FB438(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 36))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      sub_2453EB7EC();
      v4 = *(qword_2813CEA68 + 8);
    }

    v5 = sub_2453F9FF4(v4);
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEA68 + 16);
    }

    v9 = sub_2453FA52C(v8);
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
    v2 = *(a1 + 36);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(a1 + 24);
    if (!v12)
    {
      sub_2453EB7EC();
      v12 = *(qword_2813CEA68 + 24);
    }

    v13 = sub_2453FAA18(v12);
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
  }

LABEL_25:
  *(a1 + 32) = v3;
  return v3;
}

void sub_2453FB560(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858585C8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FAB64(a1, lpsrc);
}

void sub_2453FB61C(uint64_t a1, uint64_t a2)
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
        __assert_rtn("set_gps_time_measured_type", "GnssEmergencyTypes.pb.h", 16921, "::CoreGem::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
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
        v7 = *(qword_2813CEA70 + 8);
      }

      sub_2453FAB64(v6, v7);
    }
  }
}

void sub_2453FB760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FB778(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856328;
  sub_2453EB7EC();
  if (qword_2813CEA70 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FB810(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FB778(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FB898(uint64_t result)
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
        result = sub_2453FAEF4(result);
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_2453FB8D8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
    if (!sub_2453FAF70(v11, this) || *(this + 36) != 1)
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

uint64_t sub_2453FBB30(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(qword_2813CEA70 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453FBBB0(uint64_t a1)
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
      v5 = *(qword_2813CEA70 + 8);
    }

    v6 = sub_2453FB438(v5);
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

void sub_2453FBC7C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858585E0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FB61C(a1, lpsrc);
}

void sub_2453FBD38(_DWORD *a1, uint64_t a2)
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

void sub_2453FBE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FBE24(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858563A0;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FBE80(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FBE24(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FBF08(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453FBF20(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

unsigned int *sub_2453FC10C(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453FC198(uint64_t a1)
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

void sub_2453FC250(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858585F8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FBD38(a1, lpsrc);
}

void sub_2453FC30C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v8 = *(a2 + 8);
      *(a1 + 40) |= 1u;
      *(a1 + 8) = v8;
      v4 = *(a2 + 40);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 12);
    *(a1 + 40) |= 2u;
    *(a1 + 12) = v9;
    v4 = *(a2 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = *(a2 + 16);
    *(a1 + 40) |= 4u;
    *(a1 + 16) = v10;
    v4 = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_20:
    v11 = *(a2 + 20);
    if (v11 >= 4)
    {
      __assert_rtn("set_fix_type", "GnssEmergencyTypes.pb.h", 17126, "::CoreGem::proto::gnss::Emergency::FixType_IsValid(value)");
    }

    *(a1 + 40) |= 8u;
    *(a1 + 20) = v11;
    v4 = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = *(a2 + 32);
    *(a1 + 40) |= 0x10u;
    *(a1 + 32) = v5;
    v4 = *(a2 + 40);
LABEL_10:
    if ((v4 & 0x20) != 0)
    {
      *(a1 + 40) |= 0x20u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 24);
      if (!v7)
      {
        sub_2453EB7EC();
        v7 = *(qword_2813CEF90 + 24);
      }

      sub_2453FBD38(v6, v7);
    }
  }
}

void sub_2453FC4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FC4E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856418;
  sub_2453EB7EC();
  if (qword_2813CEF90 != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FC580(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FC4E8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FC610(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v1 & 0x20) != 0)
    {
      v2 = *(result + 24);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_2453FC648(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
            goto LABEL_26;
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
            v15 = v13 + 1;
            *(this + 1) = v15;
            goto LABEL_35;
          }
        }

        else if (v6 == 2)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_26;
          }

          v15 = *(this + 1);
          v8 = *(this + 2);
LABEL_35:
          if (v15 >= v8 || (v19 = *v15, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
            if (!result)
            {
              return result;
            }

            v20 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 12) = v19;
            v20 = v15 + 1;
            *(this + 1) = v20;
          }

          *(a1 + 40) |= 2u;
          if (v20 < v8 && *v20 == 24)
          {
            v9 = v20 + 1;
            *(this + 1) = v9;
LABEL_43:
            if (v9 >= v8 || (v21 = *v9, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v22 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v21;
              v22 = v9 + 1;
              *(this + 1) = v22;
            }

            *(a1 + 40) |= 4u;
            if (v22 < v8 && *v22 == 32)
            {
              v14 = v22 + 1;
              *(this + 1) = v14;
LABEL_51:
              v34 = 0;
              if (v14 >= v8 || (v23 = *v14, (v23 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
                if (!result)
                {
                  return result;
                }

                v23 = v34;
              }

              else
              {
                *(this + 1) = v14 + 1;
              }

              if (v23 <= 3)
              {
                *(a1 + 40) |= 8u;
                *(a1 + 20) = v23;
              }

              v24 = *(this + 1);
              v16 = *(this + 2);
              if (v24 < v16 && *v24 == 40)
              {
                v17 = v24 + 1;
                *(this + 1) = v17;
                goto LABEL_61;
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
            goto LABEL_43;
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

      if (v6 == 4)
      {
        if ((TagFallback & 7) == 0)
        {
          v14 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_51;
        }

        goto LABEL_26;
      }

      if (v6 != 5)
      {
        if (v6 == 6 && v7 == 2)
        {
          v10 = *(a1 + 40);
          goto LABEL_69;
        }

        goto LABEL_26;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v17 = *(this + 1);
      v16 = *(this + 2);
LABEL_61:
      if (v17 >= v16 || (v25 = *v17, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v26 = *(this + 1);
        v16 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v25;
        v26 = v17 + 1;
        *(this + 1) = v26;
      }

      v10 = *(a1 + 40) | 0x10;
      *(a1 + 40) = v10;
    }

    while (v26 >= v16 || *v26 != 50);
    *(this + 1) = v26 + 1;
LABEL_69:
    *(a1 + 40) = v10 | 0x20;
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
    if (!sub_2453FBF20(v27, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v31 = *(this + 14);
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v33 < 0 == v32)
    {
      *(this + 14) = v33;
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

uint64_t sub_2453FCA68(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_10;
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

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF90 + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v7, a2, a4);
}

uint64_t sub_2453FCB5C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
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

LABEL_29:
      v11 = *(a1 + 32);
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
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 20);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(a1 + 40);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v13 = *(a1 + 24);
  if (!v13)
  {
    sub_2453EB7EC();
    v13 = *(qword_2813CEF90 + 24);
  }

  v14 = sub_2453FC198(v13);
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
LABEL_39:
  *(a1 + 36) = v3;
  return v3;
}

void sub_2453FCCD4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858610, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FC30C(a1, lpsrc);
}

void sub_2453FCD90(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 12);
    *(a1 + 32) |= 2u;
    *(a1 + 12) = v6;
    v4 = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = *(a2 + 24);
    *(a1 + 32) |= 4u;
    *(a1 + 24) = v7;
    if ((*(a2 + 32) & 8) == 0)
    {
      return;
    }

LABEL_12:
    *(a1 + 32) |= 8u;
    v8 = *(a1 + 16);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEA80 + 16);
    }

    sub_2453F7AC0(v8, v9);
  }
}

void sub_2453FCEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FCF08(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856490;
  sub_2453EB7EC();
  if (qword_2813CEA80 != a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FCFA0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FCF08(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FD028(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 24) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 16);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453FD060(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

          *(a1 + 32) |= 1u;
          if (v13 < v8 && *v13 == 16)
          {
            v9 = v13 + 1;
            *(this + 1) = v9;
LABEL_29:
            if (v9 >= v8 || (v16 = *v9, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 12) = v16;
              v17 = v9 + 1;
              *(this + 1) = v17;
            }

            *(a1 + 32) |= 2u;
            if (v17 < v8 && *v17 == 24)
            {
              v14 = v17 + 1;
              *(this + 1) = v14;
              goto LABEL_37;
            }
          }
        }

        else
        {
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

      if (v6 != 3)
      {
        if (v6 == 4 && v7 == 2)
        {
          v10 = *(a1 + 32);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v14 = *(this + 1);
      v8 = *(this + 2);
LABEL_37:
      if (v14 >= v8 || (v18 = *v14, v18 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        v19 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 24) = v18;
        v19 = v14 + 1;
        *(this + 1) = v19;
      }

      v10 = *(a1 + 32) | 4;
      *(a1 + 32) = v10;
    }

    while (v19 >= v8 || *v19 != 34);
    *(this + 1) = v19 + 1;
LABEL_45:
    *(a1 + 32) = v10 | 8;
    v20 = *(a1 + 16);
    if (!v20)
    {
      operator new();
    }

    v27 = 0;
    v21 = *(this + 1);
    if (v21 >= *(this + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
      {
        return 0;
      }
    }

    else
    {
      v27 = *v21;
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
    if (!sub_2453F7CA8(v20, this) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453FD390(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 32) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEA80 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t sub_2453FD44C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_27;
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
    v7 = *(a1 + 24);
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
      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_27;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEA80 + 16);
  }

  v10 = sub_2453F7F20(v9);
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
LABEL_27:
  *(a1 + 28) = v3;
  return v3;
}

void sub_2453FD560(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858628, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FCD90(a1, lpsrc);
}

void sub_2453FD61C(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = *(a2 + 20);
    *(a1 + 36) |= 4u;
    *(a1 + 20) = v7;
    if ((*(a2 + 36) & 8) == 0)
    {
      return;
    }

LABEL_12:
    *(a1 + 36) |= 8u;
    v8 = *(a1 + 24);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 24);
    if (!v9)
    {
      sub_2453EB7EC();
      v9 = *(qword_2813CEA88 + 24);
    }

    sub_2453FCD90(v8, v9);
  }
}

void sub_2453FD77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FD794(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856508;
  sub_2453EB7EC();
  if (qword_2813CEA88 != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FD82C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FD794(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FD8B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 36);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_2453FD028(result);
      }
    }
  }

  *(v1 + 36) = 0;
  return result;
}

uint64_t sub_2453FD8F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

          v11 = *(this + 1);
          v8 = *(this + 2);
          if (v11 >= v8 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
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

          *(a1 + 36) |= 1u;
          if (v13 < v8 && *v13 == 16)
          {
            v9 = v13 + 1;
            *(this + 1) = v9;
LABEL_29:
            if (v9 >= v8 || (v16 = *v9, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v16;
              v17 = v9 + 1;
              *(this + 1) = v17;
            }

            *(a1 + 36) |= 2u;
            if (v17 < v8 && *v17 == 24)
            {
              v14 = v17 + 1;
              *(this + 1) = v14;
              goto LABEL_37;
            }
          }
        }

        else
        {
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

      if (v6 != 3)
      {
        if (v6 == 4 && v7 == 2)
        {
          v10 = *(a1 + 36);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v14 = *(this + 1);
      v8 = *(this + 2);
LABEL_37:
      if (v14 >= v8 || (v18 = *v14, v18 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v19 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v18;
        v19 = v14 + 1;
        *(this + 1) = v19;
      }

      v10 = *(a1 + 36) | 4;
      *(a1 + 36) = v10;
    }

    while (v19 >= v8 || *v19 != 34);
    *(this + 1) = v19 + 1;
LABEL_45:
    *(a1 + 36) = v10 | 8;
    v20 = *(a1 + 24);
    if (!v20)
    {
      operator new();
    }

    v27 = 0;
    v21 = *(this + 1);
    if (v21 >= *(this + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
      {
        return 0;
      }
    }

    else
    {
      v27 = *v21;
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
    if (!sub_2453FD060(v20, this) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453FDC28(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEA88 + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t sub_2453FDCE4(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (*(a1 + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v2 = *(a1 + 36);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(a1 + 16);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(a1 + 36);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 20);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(a1 + 36);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_24;
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    sub_2453EB7EC();
    v8 = *(qword_2813CEA88 + 24);
  }

  v9 = sub_2453FD44C(v8);
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
LABEL_24:
  *(a1 + 32) = v3;
  return v3;
}

void sub_2453FDDE4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858640, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FD61C(a1, lpsrc);
}

void sub_2453FDEA0(uint64_t a1, uint64_t a2)
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
      v5 = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 28);
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

    v6 = *(a2 + 12);
    *(a1 + 28) |= 2u;
    *(a1 + 12) = v6;
    if ((*(a2 + 28) & 4) == 0)
    {
      return;
    }

LABEL_10:
    *(a1 + 28) |= 4u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      sub_2453EB7EC();
      v8 = *(qword_2813CEA90 + 16);
    }

    sub_2453FCD90(v7, v8);
  }
}

void sub_2453FDFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FDFF8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285856580;
  sub_2453EB7EC();
  if (qword_2813CEA90 != a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FE090(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FDFF8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FE114(uint64_t result)
{
  v1 = result;
  v2 = *(result + 28);
  if (v2)
  {
    *(result + 8) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_2453FD028(result);
      }
    }
  }

  *(v1 + 28) = 0;
  return result;
}

uint64_t sub_2453FE154(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v7 == 2)
          {
            v13 = *(a1 + 28);
            goto LABEL_33;
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
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

        *(a1 + 28) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v12 = v11 + 1;
          *(this + 1) = v12;
          goto LABEL_25;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v12 = *(this + 1);
      v8 = *(this + 2);
LABEL_25:
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

      v13 = *(a1 + 28) | 2;
      *(a1 + 28) = v13;
    }

    while (v16 >= v8 || *v16 != 26);
    *(this + 1) = v16 + 1;
LABEL_33:
    *(a1 + 28) = v13 | 4;
    v17 = *(a1 + 16);
    if (!v17)
    {
      operator new();
    }

    v24 = 0;
    v18 = *(this + 1);
    if (v18 >= *(this + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v18;
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
    if (!sub_2453FD060(v17, this) || *(this + 36) != 1)
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

uint64_t sub_2453FE40C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
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
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEA90 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_2453FE4AC(uint64_t a1)
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
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      sub_2453EB7EC();
      v7 = *(qword_2813CEA90 + 16);
    }

    v8 = sub_2453FD44C(v7);
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
  }

LABEL_21:
  *(a1 + 24) = v3;
  return v3;
}

void sub_2453FE590(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858658, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453FDEA0(a1, lpsrc);
}

void sub_2453FE64C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 60);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 60) |= 1u;
    *(a1 + 8) = v7;
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

  v8 = *(a2 + 12);
  *(a1 + 60) |= 2u;
  *(a1 + 12) = v8;
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
  v9 = *(a2 + 16);
  *(a1 + 60) |= 4u;
  *(a1 + 16) = v9;
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
  v10 = *(a2 + 20);
  *(a1 + 60) |= 8u;
  *(a1 + 20) = v10;
  v4 = *(a2 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v13 = *(a2 + 32);
    *(a1 + 60) |= 0x20u;
    *(a1 + 32) = v13;
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

    goto LABEL_29;
  }

LABEL_23:
  *(a1 + 60) |= 0x10u;
  v11 = *(a1 + 24);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    sub_2453EB7EC();
    v12 = *(qword_2813CEA98 + 24);
  }

  sub_2453F7AC0(v11, v12);
  v4 = *(a2 + 60);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v14 = *(a2 + 36);
  *(a1 + 60) |= 0x40u;
  *(a1 + 36) = v14;
  v4 = *(a2 + 60);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 40);
    *(a1 + 60) |= 0x80u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 60);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 44);
    *(a1 + 60) |= 0x100u;
    *(a1 + 44) = v15;
    v4 = *(a2 + 60);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 48);
  *(a1 + 60) |= 0x200u;
  *(a1 + 48) = v16;
  if ((*(a2 + 60) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 52);
  *(a1 + 60) |= 0x400u;
  *(a1 + 52) = v6;
}

void sub_2453FE898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453FE8B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858565F8;
  sub_2453EB7EC();
  if (qword_2813CEA98 != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453FE948(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453FE8B0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453FE9DC(uint64_t result)
{
  v1 = *(result + 60);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(result + 24);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(result + 60);
      }
    }

    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 48) = 0;
    *(result + 44) = 0;
  }

  *(result + 60) = 0;
  return result;
}

uint64_t sub_2453FEA30(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 > 8)
        {
          if (v6 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_114;
            }
          }

          else if (v6 == 10)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_122;
            }
          }

          else if (v6 == 11 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_130;
          }

          goto LABEL_43;
        }

        if (v6 == 6)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v21 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_90;
        }

        if (v6 == 7)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v18 = *(this + 1);
          v8 = *(this + 2);
LABEL_98:
          if (v18 >= v8 || (v40 = *v18, v40 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
            if (!result)
            {
              return result;
            }

            v41 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 36) = v40;
            v41 = v18 + 1;
            *(this + 1) = v41;
          }

          *(a1 + 60) |= 0x40u;
          if (v41 < v8 && *v41 == 64)
          {
            v9 = v41 + 1;
            *(this + 1) = v9;
LABEL_106:
            if (v9 >= v8 || (v42 = *v9, v42 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v43 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 40) = v42;
              v43 = v9 + 1;
              *(this + 1) = v43;
            }

            *(a1 + 60) |= 0x80u;
            if (v43 < v8 && *v43 == 72)
            {
              v22 = v43 + 1;
              *(this + 1) = v22;
LABEL_114:
              v50 = 0;
              if (v22 >= v8 || (v44 = *v22, (v44 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50);
                if (!result)
                {
                  return result;
                }

                v44 = v50;
                v45 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                v45 = v22 + 1;
                *(this + 1) = v45;
              }

              *(a1 + 44) = v44;
              *(a1 + 60) |= 0x100u;
              if (v45 < v8 && *v45 == 80)
              {
                v19 = v45 + 1;
                *(this + 1) = v19;
LABEL_122:
                if (v19 >= v8 || (v46 = *v19, v46 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
                  if (!result)
                  {
                    return result;
                  }

                  v47 = *(this + 1);
                  v8 = *(this + 2);
                }

                else
                {
                  *(a1 + 48) = v46;
                  v47 = v19 + 1;
                  *(this + 1) = v47;
                }

                *(a1 + 60) |= 0x200u;
                if (v47 < v8 && *v47 == 88)
                {
                  v11 = v47 + 1;
                  *(this + 1) = v11;
LABEL_130:
                  if (v11 >= v8 || (v48 = *v11, v48 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                    if (!result)
                    {
                      return result;
                    }

                    v49 = *(this + 1);
                    v8 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 52) = v48;
                    v49 = v11 + 1;
                    *(this + 1) = v49;
                  }

                  *(a1 + 60) |= 0x400u;
                  if (v49 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        else
        {
          if (v6 == 8 && (TagFallback & 7) == 0)
          {
            v9 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_106;
          }

LABEL_43:
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

      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v6 != 1)
      {
        if (v6 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_52;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v14 = *(this + 1);
      v12 = *(this + 2);
      if (v14 >= v12 || (v15 = *v14, v15 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v16 = *(this + 1);
        v12 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v15;
        v16 = v14 + 1;
        *(this + 1) = v16;
      }

      *(a1 + 60) |= 1u;
      if (v16 < v12 && *v16 == 16)
      {
        v13 = v16 + 1;
        *(this + 1) = v13;
LABEL_52:
        if (v13 >= v12 || (v24 = *v13, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v25 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v24;
          v25 = v13 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 60) |= 2u;
        if (v25 < v12 && *v25 == 24)
        {
          v20 = v25 + 1;
          *(this + 1) = v20;
LABEL_60:
          if (v20 >= v12 || (v26 = *v20, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v27 = *(this + 1);
            v12 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v26;
            v27 = v20 + 1;
            *(this + 1) = v27;
          }

          *(a1 + 60) |= 4u;
          if (v27 < v12 && *v27 == 32)
          {
            v17 = v27 + 1;
            *(this + 1) = v17;
LABEL_68:
            if (v17 >= v12 || (v28 = *v17, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v29 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v28;
              v29 = v17 + 1;
              *(this + 1) = v29;
            }

            v10 = *(a1 + 60) | 8;
            *(a1 + 60) = v10;
            if (v29 < v12 && *v29 == 42)
            {
              *(this + 1) = v29 + 1;
              goto LABEL_76;
            }
          }
        }
      }
    }

    if (v6 == 3)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v20 = *(this + 1);
      v12 = *(this + 2);
      goto LABEL_60;
    }

    if (v6 == 4)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v17 = *(this + 1);
      v12 = *(this + 2);
      goto LABEL_68;
    }

    if (v6 != 5 || v7 != 2)
    {
      goto LABEL_43;
    }

    v10 = *(a1 + 60);
LABEL_76:
    *(a1 + 60) = v10 | 0x10;
    v30 = *(a1 + 24);
    if (!v30)
    {
      operator new();
    }

    v51 = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || *v31 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
      {
        return 0;
      }
    }

    else
    {
      v51 = *v31;
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
    if (!sub_2453F7CA8(v30, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v34 = *(this + 14);
    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v36 < 0 == v35)
    {
      *(this + 14) = v36;
    }

    v37 = *(this + 1);
    v8 = *(this + 2);
    if (v37 < v8 && *v37 == 48)
    {
      v21 = v37 + 1;
      *(this + 1) = v21;
LABEL_90:
      if (v21 >= v8 || (v38 = *v21, v38 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v39 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v38;
        v39 = v21 + 1;
        *(this + 1) = v39;
      }

      *(a1 + 60) |= 0x20u;
      if (v39 < v8 && *v39 == 56)
      {
        v18 = v39 + 1;
        *(this + 1) = v18;
        goto LABEL_98;
      }
    }
  }
}