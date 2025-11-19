void sub_2453DFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453DFAE0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855020;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453DFB3C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453DFAE0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453DFBD0(uint64_t result)
{
  v1 = *(result + 68);
  if (v1)
  {
    *(result + 40) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 36) = 0;
    *(result + 41) = 0;
    *(result + 52) = 0;
    *(result + 44) = 0;
    *(result + 60) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(result + 43) = 0;
  }

  *(result + 68) = 0;
  return result;
}

uint64_t sub_2453DFC1C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

        v59 = 0;
        v7 = *(this + 1);
        v6 = *(this + 2);
        if (v7 < v6)
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            v9 = v7 + 1;
            *(this + 1) = v9;
LABEL_48:
            *(a1 + 40) = v8 != 0;
            *(a1 + 68) |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v20 = v9 + 1;
              *(this + 1) = v20;
              goto LABEL_51;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59);
        if (result)
        {
          v8 = v59;
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

        v20 = *(this + 1);
        v6 = *(this + 2);
LABEL_51:
        if (v20 >= v6 || (v26 = *v20, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v26;
          v27 = v20 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 68) |= 2u;
        if (v27 >= v6 || *v27 != 24)
        {
          continue;
        }

        v16 = v27 + 1;
        *(this + 1) = v16;
LABEL_59:
        if (v16 >= v6 || (v28 = *v16, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v28;
          v29 = v16 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 68) |= 4u;
        if (v29 >= v6 || *v29 != 32)
        {
          continue;
        }

        v18 = v29 + 1;
        *(this + 1) = v18;
LABEL_67:
        if (v18 >= v6 || (v30 = *v18, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v30;
          v31 = v18 + 1;
          *(this + 1) = v31;
        }

        *(a1 + 68) |= 8u;
        if (v31 >= v6 || *v31 != 40)
        {
          continue;
        }

        v13 = v31 + 1;
        *(this + 1) = v13;
LABEL_75:
        if (v13 >= v6 || (v32 = *v13, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v32;
          v33 = v13 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 68) |= 0x10u;
        if (v33 >= v6 || *v33 != 48)
        {
          continue;
        }

        v21 = v33 + 1;
        *(this + 1) = v21;
LABEL_83:
        if (v21 >= v6 || (v34 = *v21, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v34;
          v35 = v21 + 1;
          *(this + 1) = v35;
        }

        *(a1 + 68) |= 0x20u;
        if (v35 >= v6 || *v35 != 56)
        {
          continue;
        }

        v23 = v35 + 1;
        *(this + 1) = v23;
LABEL_91:
        if (v23 >= v6 || (v36 = *v23, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v36;
          v37 = v23 + 1;
          *(this + 1) = v37;
        }

        *(a1 + 68) |= 0x40u;
        if (v37 >= v6 || *v37 != 64)
        {
          continue;
        }

        v19 = v37 + 1;
        *(this + 1) = v19;
LABEL_99:
        if (v19 >= v6 || (v38 = *v19, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v39 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v38;
          v39 = v19 + 1;
          *(this + 1) = v39;
        }

        *(a1 + 68) |= 0x80u;
        if (v39 >= v6 || *v39 != 72)
        {
          continue;
        }

        v25 = v39 + 1;
        *(this + 1) = v25;
LABEL_107:
        v59 = 0;
        if (v25 >= v6 || (v40 = *v25, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59);
          if (!result)
          {
            return result;
          }

          v40 = v59;
          v41 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v41 = v25 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 36) = v40;
        *(a1 + 68) |= 0x100u;
        if (v41 >= v6 || *v41 != 80)
        {
          continue;
        }

        v15 = v41 + 1;
        *(this + 1) = v15;
LABEL_115:
        v59 = 0;
        if (v15 >= v6 || (v42 = *v15, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59);
          if (!result)
          {
            return result;
          }

          v42 = v59;
          v43 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v43 = v15 + 1;
          *(this + 1) = v43;
        }

        *(a1 + 41) = v42 != 0;
        *(a1 + 68) |= 0x200u;
        if (v43 >= v6 || *v43 != 88)
        {
          continue;
        }

        v24 = v43 + 1;
        *(this + 1) = v24;
LABEL_123:
        if (v24 >= v6 || (v44 = *v24, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v45 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v44;
          v45 = v24 + 1;
          *(this + 1) = v45;
        }

        *(a1 + 68) |= 0x400u;
        if (v45 >= v6 || *v45 != 96)
        {
          continue;
        }

        v12 = v45 + 1;
        *(this + 1) = v12;
LABEL_131:
        v59 = 0;
        if (v12 >= v6 || (v46 = *v12, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59);
          if (!result)
          {
            return result;
          }

          v46 = v59;
          v47 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v47 = v12 + 1;
          *(this + 1) = v47;
        }

        *(a1 + 42) = v46 != 0;
        *(a1 + 68) |= 0x800u;
        if (v47 >= v6 || *v47 != 104)
        {
          continue;
        }

        v14 = v47 + 1;
        *(this + 1) = v14;
LABEL_139:
        if (v14 >= v6 || (v48 = *v14, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v49 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v48;
          v49 = v14 + 1;
          *(this + 1) = v49;
        }

        *(a1 + 68) |= 0x1000u;
        if (v49 >= v6 || *v49 != 112)
        {
          continue;
        }

        v22 = v49 + 1;
        *(this + 1) = v22;
LABEL_147:
        if (v22 >= v6 || (v50 = *v22, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v51 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v50;
          v51 = v22 + 1;
          *(this + 1) = v51;
        }

        *(a1 + 68) |= 0x2000u;
        if (v51 >= v6 || *v51 != 120)
        {
          continue;
        }

        v11 = v51 + 1;
        *(this + 1) = v11;
LABEL_155:
        if (v11 >= v6 || (v52 = *v11, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v53 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v52;
          v53 = (v11 + 1);
          *(this + 1) = v53;
        }

        *(a1 + 68) |= 0x4000u;
        if (v6 - v53 < 2 || *v53 != 128 || v53[1] != 1)
        {
          continue;
        }

        v17 = (v53 + 2);
        *(this + 1) = v17;
LABEL_164:
        if (v17 >= v6 || (v54 = *v17, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
          if (!result)
          {
            return result;
          }

          v55 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          *(a1 + 60) = v54;
          v55 = (v17 + 1);
          *(this + 1) = v55;
        }

        *(a1 + 68) |= 0x8000u;
        if (v6 - v55 < 2 || *v55 != 136 || v55[1] != 1)
        {
          continue;
        }

        v10 = (v55 + 2);
        *(this + 1) = v10;
LABEL_173:
        v59 = 0;
        if (v10 >= v6 || (v56 = *v10, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v59);
          if (!result)
          {
            return result;
          }

          v56 = v59;
          v57 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v57 = v10 + 1;
          *(this + 1) = v57;
        }

        *(a1 + 43) = v56 != 0;
        *(a1 + 68) |= 0x10000u;
        if (v57 != v6 || !*(this + 11) && *(this + 6) != *(this + 10))
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

        v16 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_59;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_67;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v13 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_75;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v21 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_83;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v23 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_91;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_99;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v25 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_107;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_115;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v24 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_123;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v12 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_131;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_139;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v22 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_147;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v11 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_155;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v17 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_164;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v10 = *(this + 1);
        v6 = *(this + 2);
        goto LABEL_173;
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

uint64_t sub_2453E043C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 40), a2, a4);
    v6 = *(v5 + 68);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 20), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 28), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 32), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 36), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 41), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 42), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 48), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 52), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 60), a2, a4);
    if ((*(v5 + 68) & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 56), a2, a4);
  v6 = *(v5 + 68);
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
  v7 = *(v5 + 43);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, v7, a2, a4);
}

uint64_t sub_2453E0650(unsigned int *a1)
{
  v2 = a1[17];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
  }

  v3 = 2 * (v2 & 1);
  if ((v2 & 2) != 0)
  {
    v4 = a1[2];
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = a1[17];
    }

    else
    {
      v5 = 2;
    }

    v3 += v5;
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

  v6 = a1[3];
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = a1[17];
  }

  else
  {
    v7 = 2;
  }

  v3 += v7;
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
  v8 = a1[4];
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = a1[17];
  }

  else
  {
    v9 = 2;
  }

  v3 += v9;
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
  v10 = a1[5];
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = a1[17];
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
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
  v12 = a1[6];
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = a1[17];
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
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
  v14 = a1[7];
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = a1[17];
  }

  else
  {
    v15 = 2;
  }

  v3 += v15;
  if ((v2 & 0x80) != 0)
  {
LABEL_35:
    v16 = a1[8];
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = a1[17];
    }

    else
    {
      v17 = 2;
    }

    v3 += v17;
  }

LABEL_39:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_73;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = a1[9];
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = a1[17];
    }

    else
    {
      v19 = 2;
    }

    v3 += v19;
  }

  v20 = ((v2 >> 8) & 2) + v3;
  if ((v2 & 0x400) != 0)
  {
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

    v20 += v22;
  }

  v3 = ((v2 >> 10) & 2) + v20;
  if ((v2 & 0x1000) != 0)
  {
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

    v3 += v24;
    if ((v2 & 0x2000) == 0)
    {
LABEL_54:
      if ((v2 & 0x4000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_65;
    }
  }

  else if ((v2 & 0x2000) == 0)
  {
    goto LABEL_54;
  }

  v25 = a1[13];
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = a1[17];
  }

  else
  {
    v26 = 2;
  }

  v3 += v26;
  if ((v2 & 0x4000) == 0)
  {
LABEL_55:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

LABEL_65:
  v27 = a1[14];
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = a1[17];
  }

  else
  {
    v28 = 2;
  }

  v3 += v28;
  if ((v2 & 0x8000) != 0)
  {
LABEL_69:
    v29 = a1[15];
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
      v2 = a1[17];
    }

    else
    {
      v30 = 3;
    }

    v3 += v30;
  }

LABEL_73:
  if ((v2 & 0x10000) != 0)
  {
    result = v3 + 3;
  }

  else
  {
    result = v3;
  }

  a1[16] = result;
  return result;
}

void sub_2453E08F8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855478, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453DF82C(a1, lpsrc);
}

uint64_t sub_2453E09B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285855098;
  sub_2453E0A10(a1, a2);
  return a1;
}

void sub_2453E0A10(_DWORD *a1, uint64_t a2)
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

void sub_2453E0ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E0AD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855098;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E0B30(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E0AD4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E0BB4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453E0BC8(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

uint64_t sub_2453E0D44(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453E0DB0(uint64_t a1)
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

void sub_2453E0E40(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855490, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E0A10(a1, lpsrc);
}

uint64_t sub_2453E0EFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285855110;
  sub_2453E0F58(a1, a2);
  return a1;
}

void sub_2453E0F58(_DWORD *a1, uint64_t a2)
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

void sub_2453E1004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E101C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855110;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E1078(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E101C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E10FC(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453E1110(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

uint64_t sub_2453E128C(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453E12F8(uint64_t a1)
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

void sub_2453E1388(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858554A8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E0F58(a1, lpsrc);
}

uint64_t sub_2453E1444(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285855188;
  *(a1 + 24) = 0;
  sub_2453E14A4(a1, a2);
  return a1;
}

void sub_2453E14A4(uint64_t a1, uint64_t a2)
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
        sub_2453DCF08();
        v7 = *(qword_27EE134E8 + 8);
      }

      sub_2453E0F58(v6, v7);
    }
  }
}

void sub_2453E15B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E15D0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855188;
  sub_2453E1628(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E1628(uint64_t a1)
{
  sub_2453DCF08();
  if (qword_27EE134E8 != a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void sub_2453E16A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E15D0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E172C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 20))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 20) = 0;
      }
    }
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453E175C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          v11 = *(a1 + 24);
          goto LABEL_22;
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

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      v11 = *(a1 + 24) | 1;
      *(a1 + 24) = v11;
    }

    while (v10 >= v7 || *v10 != 18);
    *(this + 1) = v10 + 1;
LABEL_22:
    *(a1 + 24) = v11 | 2;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

    v20 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v14;
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
    if (!sub_2453E1110(v13, this) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453E19A0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      sub_2453DCF08();
      v7 = *(qword_27EE134E8 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453E1A20(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 24))
    {
      v4 = *(a1 + 16);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(a1 + 24) & 2) == 0)
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
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453DCF08();
      v5 = *(qword_27EE134E8 + 8);
    }

    v6 = sub_2453E12F8(v5);
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

LABEL_16:
  *(a1 + 20) = v3;
  return v3;
}

void sub_2453E1ADC(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858554C0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E14A4(a1, lpsrc);
}

uint64_t sub_2453E1B98(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285855200;
  *(a1 + 23) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  sub_2453E1C18(a1, a2);
  return a1;
}

void sub_2453E1BF8(_Unwind_Exception *a1)
{
  sub_2453E53FC(v1 + 6);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void sub_2453E1C18(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v28);
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
  LODWORD(v6) = *(a2 + 56);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v28);
      }

      v8 = *(*(a2 + 48) + 8 * v7);
      v9 = *(a1 + 60);
      v10 = *(a1 + 56);
      if (v10 >= v9)
      {
        if (v9 == *(a1 + 64))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v9 = *(a1 + 60);
        }

        *(a1 + 60) = v9 + 1;
        operator new();
      }

      v11 = *(a1 + 48);
      *(a1 + 56) = v10 + 1;
      sub_2453E14A4(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 56);
    }

    while (v7 < v6);
  }

  v12 = *(a2 + 88);
  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12)
  {
    v15 = *(a2 + 28);
    *(a1 + 88) |= 1u;
    *(a1 + 28) = v15;
    v12 = *(a2 + 88);
    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 8);
  *(a1 + 88) |= 2u;
  *(a1 + 8) = v16;
  v12 = *(a2 + 88);
  if ((v12 & 4) == 0)
  {
LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 12);
  *(a1 + 88) |= 4u;
  *(a1 + 12) = v17;
  v12 = *(a2 + 88);
  if ((v12 & 8) == 0)
  {
LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 16);
  *(a1 + 88) |= 8u;
  *(a1 + 16) = v18;
  v12 = *(a2 + 88);
  if ((v12 & 0x10) == 0)
  {
LABEL_19:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_37:
    v20 = *(a2 + 24);
    *(a1 + 88) |= 0x20u;
    *(a1 + 24) = v20;
    v12 = *(a2 + 88);
    if ((v12 & 0x40) == 0)
    {
LABEL_21:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_36:
  v19 = *(a2 + 20);
  *(a1 + 88) |= 0x10u;
  *(a1 + 20) = v19;
  v12 = *(a2 + 88);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_20:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_38:
  v21 = *(a2 + 29);
  *(a1 + 88) |= 0x40u;
  *(a1 + 29) = v21;
  v12 = *(a2 + 88);
  if ((v12 & 0x80) != 0)
  {
LABEL_22:
    v13 = *(a2 + 32);
    *(a1 + 88) |= 0x80u;
    *(a1 + 32) = v13;
    v12 = *(a2 + 88);
  }

LABEL_23:
  if ((v12 & 0xFF00) == 0)
  {
    return;
  }

  if ((v12 & 0x100) != 0)
  {
    v22 = *(a2 + 36);
    *(a1 + 88) |= 0x100u;
    *(a1 + 36) = v22;
    v12 = *(a2 + 88);
    if ((v12 & 0x200) == 0)
    {
LABEL_26:
      if ((v12 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

  else if ((v12 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  *(a1 + 88) |= 0x200u;
  v23 = *(a1 + 40);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 40);
  if (!v24)
  {
    sub_2453DCF08();
    v24 = *(qword_27EE134F0 + 40);
  }

  sub_2453E0F58(v23, v24);
  v12 = *(a2 + 88);
  if ((v12 & 0x400) == 0)
  {
LABEL_27:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  v25 = *(a2 + 72);
  *(a1 + 88) |= 0x400u;
  *(a1 + 72) = v25;
  v12 = *(a2 + 88);
  if ((v12 & 0x1000) == 0)
  {
LABEL_28:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_48;
  }

LABEL_47:
  v26 = *(a2 + 76);
  *(a1 + 88) |= 0x1000u;
  *(a1 + 76) = v26;
  v12 = *(a2 + 88);
  if ((v12 & 0x2000) == 0)
  {
LABEL_29:
    if ((v12 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_48:
  v27 = *(a2 + 80);
  *(a1 + 88) |= 0x2000u;
  *(a1 + 80) = v27;
  if ((*(a2 + 88) & 0x4000) == 0)
  {
    return;
  }

LABEL_30:
  v14 = *(a2 + 30);
  *(a1 + 88) |= 0x4000u;
  *(a1 + 30) = v14;
}

void sub_2453E1FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E201C(uint64_t *a1)
{
  *a1 = &unk_285855200;
  sub_2453E2080(a1);
  sub_2453E53FC(a1 + 6);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E2080(uint64_t a1)
{
  sub_2453DCF08();
  if (qword_27EE134F0 != a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void sub_2453E20FC(uint64_t *a1)
{
  sub_2453E201C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E2198(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 22) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(result + 36) = 0;
    if ((v2 & 0x200) != 0)
    {
      v3 = *(result + 40);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
      }
    }

    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 30) = 0;
  }

  if (*(result + 56) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 48) + 8 * v4);
      result = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 56));
  }

  *(v1 + 56) = 0;
  *(v1 + 88) = 0;
  return result;
}

uint64_t sub_2453E2258(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
LABEL_1:
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
          goto LABEL_38;
        }

        v69 = 0;
        v8 = *(this + 1);
        v7 = *(this + 2);
        if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
          if (!result)
          {
            return result;
          }

          v9 = v69;
          v10 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v10 = v8 + 1;
          *(this + 1) = v10;
        }

        *(a1 + 28) = v9 != 0;
        *(a1 + 88) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v19 = v10 + 1;
          *(this + 1) = v19;
          goto LABEL_47;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(this + 1);
        v7 = *(this + 2);
LABEL_47:
        if (v19 >= v7 || (v27 = *v19, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v28 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v27;
          v28 = v19 + 1;
          *(this + 1) = v28;
        }

        *(a1 + 88) |= 2u;
        if (v28 >= v7 || *v28 != 24)
        {
          continue;
        }

        v16 = v28 + 1;
        *(this + 1) = v16;
LABEL_55:
        if (v16 >= v7 || (v29 = *v16, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v29;
          v30 = v16 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 88) |= 4u;
        if (v30 >= v7 || *v30 != 32)
        {
          continue;
        }

        v17 = v30 + 1;
        *(this + 1) = v17;
LABEL_63:
        if (v17 >= v7 || (v31 = *v17, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v32 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v31;
          v32 = v17 + 1;
          *(this + 1) = v32;
        }

        *(a1 + 88) |= 8u;
        if (v32 >= v7 || *v32 != 40)
        {
          continue;
        }

        v13 = v32 + 1;
        *(this + 1) = v13;
LABEL_71:
        if (v13 >= v7 || (v33 = *v13, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v33;
          v34 = v13 + 1;
          *(this + 1) = v34;
        }

        *(a1 + 88) |= 0x10u;
        if (v34 >= v7 || *v34 != 48)
        {
          continue;
        }

        v20 = v34 + 1;
        *(this + 1) = v20;
LABEL_79:
        if (v20 >= v7 || (v35 = *v20, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v35;
          v36 = v20 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 88) |= 0x20u;
        if (v36 >= v7 || *v36 != 56)
        {
          continue;
        }

        v22 = v36 + 1;
        *(this + 1) = v22;
LABEL_87:
        v69 = 0;
        if (v22 >= v7 || (v37 = *v22, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
          if (!result)
          {
            return result;
          }

          v37 = v69;
          v38 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v38 = v22 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 29) = v37 != 0;
        *(a1 + 88) |= 0x40u;
        if (v38 >= v7 || *v38 != 64)
        {
          continue;
        }

        v18 = v38 + 1;
        *(this + 1) = v18;
LABEL_95:
        if (v18 >= v7 || (v39 = *v18, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v40 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v39;
          v40 = v18 + 1;
          *(this + 1) = v40;
        }

        *(a1 + 88) |= 0x80u;
        if (v40 >= v7 || *v40 != 72)
        {
          continue;
        }

        v25 = v40 + 1;
        *(this + 1) = v25;
LABEL_103:
        if (v25 >= v7 || (v41 = *v25, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v42 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          *(a1 + 36) = v41;
          v42 = v25 + 1;
          *(this + 1) = v42;
        }

        v15 = *(a1 + 88) | 0x100;
        *(a1 + 88) = v15;
        if (v42 >= v7 || *v42 != 82)
        {
          continue;
        }

        *(this + 1) = v42 + 1;
LABEL_111:
        *(a1 + 88) = v15 | 0x200;
        v43 = *(a1 + 40);
        if (!v43)
        {
          operator new();
        }

        v69 = 0;
        v44 = *(this + 1);
        if (v44 >= *(this + 2) || *v44 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69))
          {
            return 0;
          }
        }

        else
        {
          v69 = *v44;
          *(this + 1) = v44 + 1;
        }

        v45 = *(this + 14);
        v46 = *(this + 15);
        *(this + 14) = v45 + 1;
        if (v45 < v46)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (sub_2453E1110(v43, this))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v47 = *(this + 14);
              v48 = __OFSUB__(v47, 1);
              v49 = v47 - 1;
              if (v49 < 0 == v48)
              {
                *(this + 14) = v49;
              }

              v50 = *(this + 1);
              v23 = *(this + 2);
              if (v50 < v23 && *v50 == 88)
              {
                v24 = v50 + 1;
                *(this + 1) = v24;
LABEL_125:
                if (v24 >= v23 || (v51 = *v24, v51 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                  if (!result)
                  {
                    return result;
                  }

                  v52 = *(this + 1);
                  v23 = *(this + 2);
                }

                else
                {
                  *(a1 + 72) = v51;
                  v52 = v24 + 1;
                  *(this + 1) = v52;
                }

                *(a1 + 88) |= 0x400u;
                if (v52 < v23 && *v52 == 98)
                {
                  do
                  {
                    *(this + 1) = v52 + 1;
LABEL_133:
                    v53 = *(a1 + 60);
                    v54 = *(a1 + 56);
                    if (v54 >= v53)
                    {
                      if (v53 == *(a1 + 64))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                        v53 = *(a1 + 60);
                      }

                      *(a1 + 60) = v53 + 1;
                      operator new();
                    }

                    v55 = *(a1 + 48);
                    *(a1 + 56) = v54 + 1;
                    v56 = *(v55 + 8 * v54);
                    v69 = 0;
                    v57 = *(this + 1);
                    if (v57 >= *(this + 2) || *v57 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v69 = *v57;
                      *(this + 1) = v57 + 1;
                    }

                    v58 = *(this + 14);
                    v59 = *(this + 15);
                    *(this + 14) = v58 + 1;
                    if (v58 >= v59)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                    if (!sub_2453E175C(v56, this) || *(this + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                    v60 = *(this + 14);
                    v48 = __OFSUB__(v60, 1);
                    v61 = v60 - 1;
                    if (v61 < 0 == v48)
                    {
                      *(this + 14) = v61;
                    }

                    v52 = *(this + 1);
                    v11 = *(this + 2);
                    if (v52 >= v11)
                    {
                      goto LABEL_1;
                    }

                    v62 = *v52;
                  }

                  while (v62 == 98);
                  if (v62 == 104)
                  {
                    v14 = v52 + 1;
                    *(this + 1) = v14;
LABEL_151:
                    if (v14 >= v11 || (v63 = *v14, v63 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
                      if (!result)
                      {
                        return result;
                      }

                      v64 = *(this + 1);
                      v11 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 76) = v63;
                      v64 = v14 + 1;
                      *(this + 1) = v64;
                    }

                    *(a1 + 88) |= 0x1000u;
                    if (v64 < v11 && *v64 == 112)
                    {
                      v21 = v64 + 1;
                      *(this + 1) = v21;
LABEL_159:
                      if (v21 >= v11 || (v65 = *v21, v65 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
                        if (!result)
                        {
                          return result;
                        }

                        v66 = *(this + 1);
                        v11 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 80) = v65;
                        v66 = v21 + 1;
                        *(this + 1) = v66;
                      }

                      *(a1 + 88) |= 0x2000u;
                      if (v66 < v11 && *v66 == 120)
                      {
                        v12 = v66 + 1;
                        *(this + 1) = v12;
LABEL_167:
                        v69 = 0;
                        if (v12 >= v11 || (v67 = *v12, (v67 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
                          if (!result)
                          {
                            return result;
                          }

                          v67 = v69;
                          v68 = *(this + 1);
                          v11 = *(this + 2);
                        }

                        else
                        {
                          v68 = v12 + 1;
                          *(this + 1) = v68;
                        }

                        *(a1 + 30) = v67 != 0;
                        *(a1 + 88) |= 0x4000u;
                        if (v68 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v16 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_55;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v17 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_63;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_71;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_79;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v22 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_87;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v18 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_95;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v25 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_103;
      case 0xAu:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

        v15 = *(a1 + 88);
        goto LABEL_111;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v24 = *(this + 1);
        v23 = *(this + 2);
        goto LABEL_125;
      case 0xCu:
        if (v6 == 2)
        {
          goto LABEL_133;
        }

        goto LABEL_38;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v21 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_159;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_167;
      default:
LABEL_38:
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

uint64_t sub_2453E2B30(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 88);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 28), a2, a4);
    v6 = *(v5 + 88);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 16), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 20), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 24), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 29), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 32), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 36), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  v9 = *(v5 + 40);
  if (!v9)
  {
    sub_2453DCF08();
    v9 = *(qword_27EE134F0 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v9, a2, a4);
  if ((*(v5 + 88) & 0x400) != 0)
  {
LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 72), a2, a4);
  }

LABEL_13:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, *(*(v5 + 48) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  v8 = *(v5 + 88);
  if ((v8 & 0x1000) == 0)
  {
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 80), a2, a4);
    if ((*(v5 + 88) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 76), a2, a4);
  v8 = *(v5 + 88);
  if ((v8 & 0x2000) != 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  if ((v8 & 0x4000) == 0)
  {
    return result;
  }

LABEL_35:
  v10 = *(v5 + 30);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, v10, a2, a4);
}

uint64_t sub_2453E2D44(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_34;
  }

  v3 = 2 * (v2 & 1);
  if ((v2 & 2) != 0)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(a1 + 88);
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 12);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(a1 + 88);
  }

  else
  {
    v8 = 2;
  }

  v3 += v8;
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_17:
  v9 = *(a1 + 16);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(a1 + 88);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_21:
  v11 = *(a1 + 20);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(a1 + 88);
  }

  else
  {
    v12 = 2;
  }

  v3 += v12;
  if ((v2 & 0x20) != 0)
  {
LABEL_25:
    v13 = *(a1 + 24);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(a1 + 88);
    }

    else
    {
      v14 = 2;
    }

    v3 += v14;
  }

LABEL_29:
  v4 = ((v2 >> 5) & 2) + v3;
  if ((v2 & 0x80) != 0)
  {
    v15 = *(a1 + 32);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(a1 + 88);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_34:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v2 & 0x100) != 0)
  {
    v17 = *(a1 + 36);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(a1 + 88);
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
    if ((v2 & 0x200) == 0)
    {
LABEL_37:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_51;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  v19 = *(a1 + 40);
  if (!v19)
  {
    sub_2453DCF08();
    v19 = *(qword_27EE134F0 + 40);
  }

  v20 = sub_2453E12F8(v19);
  v21 = v20;
  if (v20 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
  }

  else
  {
    v22 = 1;
  }

  v4 += v21 + v22 + 1;
  v2 = *(a1 + 88);
  if ((v2 & 0x400) == 0)
  {
LABEL_38:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_39;
    }

LABEL_55:
    v25 = *(a1 + 76);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
      v2 = *(a1 + 88);
    }

    else
    {
      v26 = 2;
    }

    v4 += v26;
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

LABEL_51:
  v23 = *(a1 + 72);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(a1 + 88);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_55;
  }

LABEL_39:
  if ((v2 & 0x2000) != 0)
  {
LABEL_59:
    v27 = *(a1 + 80);
    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
      v2 = *(a1 + 88);
    }

    else
    {
      v28 = 2;
    }

    v4 += v28;
  }

LABEL_63:
  v4 += (v2 >> 13) & 2;
LABEL_64:
  v29 = *(a1 + 56);
  v30 = (v29 + v4);
  if (v29 >= 1)
  {
    v31 = 0;
    do
    {
      v32 = sub_2453E1A20(*(*(a1 + 48) + 8 * v31));
      v33 = v32;
      if (v32 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
      }

      else
      {
        v34 = 1;
      }

      v30 = (v33 + v30 + v34);
      ++v31;
    }

    while (v31 < *(a1 + 56));
  }

  *(a1 + 84) = v30;
  return v30;
}

void sub_2453E3004(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858554D8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E1C18(a1, lpsrc);
}

uint64_t sub_2453E30C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285855278;
  sub_2453E311C(a1, a2);
  return a1;
}

void sub_2453E311C(_DWORD *a1, uint64_t a2)
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

void sub_2453E31C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E31E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855278;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E323C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E31E0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E32C0(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453E32D4(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

uint64_t sub_2453E3450(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453E34BC(uint64_t a1)
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

void sub_2453E354C(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858554F0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E311C(a1, lpsrc);
}

uint64_t sub_2453E3608(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *a1 = &unk_2858552F0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 16) = 1;
  sub_2453E36B4(a1, a2);
  return a1;
}

void sub_2453E3688(_Unwind_Exception *a1)
{
  sub_2453E53FC(v1 + 7);
  sub_2453E53FC(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void sub_2453E36B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
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
      sub_2453DF82C(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 32);
    }

    while (v7 < v6);
  }

  v12 = *(a1 + 64);
  v13 = *(a2 + 64);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
  LODWORD(v14) = *(a2 + 64);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
      }

      v16 = *(*(a2 + 56) + 8 * v15);
      v17 = *(a1 + 68);
      v18 = *(a1 + 64);
      if (v18 >= v17)
      {
        if (v17 == *(a1 + 72))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
          v17 = *(a1 + 68);
        }

        *(a1 + 68) = v17 + 1;
        operator new();
      }

      v19 = *(a1 + 56);
      *(a1 + 64) = v18 + 1;
      sub_2453E1C18(*(v19 + 8 * v18), v16);
      ++v15;
      v14 = *(a2 + 64);
    }

    while (v15 < v14);
  }

  LOBYTE(v20) = *(a2 + 84);
  if (!v20)
  {
    return;
  }

  if (*(a2 + 84))
  {
    v21 = *(a2 + 16);
    if ((v21 - 1) >= 2)
    {
      __assert_rtn("set_meas_result", "CLPGnssEmergencyLppTypes.pb.h", 3237, "::CoreGem::proto::gnss::Emergency::MeasResult_IsValid(value)");
    }

    *(a1 + 84) |= 1u;
    *(a1 + 16) = v21;
    v20 = *(a2 + 84);
  }

  if ((v20 & 2) != 0)
  {
    v23 = *(a2 + 20);
    *(a1 + 84) |= 2u;
    *(a1 + 20) = v23;
    v20 = *(a2 + 84);
    if ((v20 & 4) == 0)
    {
LABEL_29:
      if ((v20 & 8) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }
  }

  else if ((v20 & 4) == 0)
  {
    goto LABEL_29;
  }

  *(a1 + 84) |= 4u;
  v24 = *(a1 + 8);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    sub_2453DCF08();
    v25 = *(qword_27EE134F8 + 8);
  }

  sub_2453E0A10(v24, v25);
  v20 = *(a2 + 84);
  if ((v20 & 8) == 0)
  {
LABEL_30:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_31;
    }

LABEL_42:
    v27 = *(a2 + 22);
    *(a1 + 84) |= 0x20u;
    *(a1 + 22) = v27;
    v20 = *(a2 + 84);
    if ((v20 & 0x40) == 0)
    {
LABEL_32:
      if ((v20 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_33;
    }

    goto LABEL_43;
  }

LABEL_41:
  v26 = *(a2 + 21);
  *(a1 + 84) |= 8u;
  *(a1 + 21) = v26;
  v20 = *(a2 + 84);
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_31:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_43:
  *(a1 + 84) |= 0x40u;
  v28 = *(a1 + 48);
  if (!v28)
  {
    operator new();
  }

  v29 = *(a2 + 48);
  if (!v29)
  {
    sub_2453DCF08();
    v29 = *(qword_27EE134F8 + 48);
  }

  sub_2453E311C(v28, v29);
  if ((*(a2 + 84) & 0x80) != 0)
  {
LABEL_33:
    v22 = *(a2 + 23);
    *(a1 + 84) |= 0x80u;
    *(a1 + 23) = v22;
  }
}

void sub_2453E3B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E3BA8(uint64_t *a1)
{
  *a1 = &unk_2858552F0;
  sub_2453E3C18(a1);
  sub_2453E53FC(a1 + 7);
  sub_2453E53FC(a1 + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E3C18(uint64_t a1)
{
  sub_2453DCF08();
  if (qword_27EE134F8 != a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void sub_2453E3CC0(uint64_t *a1)
{
  sub_2453E3BA8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E3D6C(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 84);
  if (v2)
  {
    *(a1 + 16) = 1;
    *(a1 + 20) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(a1 + 84);
      }
    }

    *(a1 + 21) = 0;
    if ((v2 & 0x40) != 0)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }

    *(a1 + 23) = 0;
  }

  sub_2453DC6D0(a1 + 24);
  result = sub_2453DC6D0(a1 + 56);
  *(a1 + 84) = 0;
  return result;
}

uint64_t sub_2453E3DF8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
              if (v7 != 2)
              {
                goto LABEL_37;
              }

              v16 = *(a1 + 84);
              goto LABEL_56;
            }

            if (v6 != 4 || (TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
LABEL_70:
            v65 = 0;
            if (v11 >= v10 || (v32 = *v11, (v32 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65);
              if (!result)
              {
                return result;
              }

              v32 = v65;
              v33 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v33 = v11 + 1;
              *(this + 1) = v33;
            }

            *(a1 + 21) = v32 != 0;
            *(a1 + 84) |= 8u;
            if (v33 < v10 && *v33 == 42)
            {
              while (1)
              {
                *(this + 1) = v33 + 1;
LABEL_78:
                v34 = *(a1 + 36);
                v35 = *(a1 + 32);
                if (v35 >= v34)
                {
                  if (v34 == *(a1 + 40))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                    v34 = *(a1 + 36);
                  }

                  *(a1 + 36) = v34 + 1;
                  operator new();
                }

                v36 = *(a1 + 24);
                *(a1 + 32) = v35 + 1;
                v37 = *(v36 + 8 * v35);
                v65 = 0;
                v38 = *(this + 1);
                if (v38 >= *(this + 2) || *v38 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
                  {
                    return 0;
                  }
                }

                else
                {
                  v65 = *v38;
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
                if (!sub_2453DFC1C(v37, this) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v41 = *(this + 14);
                v29 = __OFSUB__(v41, 1);
                v42 = v41 - 1;
                if (v42 < 0 == v29)
                {
                  *(this + 14) = v42;
                }

                v33 = *(this + 1);
                v12 = *(this + 2);
                if (v33 >= v12)
                {
                  break;
                }

                v43 = *v33;
                if (v43 != 42)
                {
                  if (v43 != 48)
                  {
                    goto LABEL_1;
                  }

                  v13 = v33 + 1;
                  *(this + 1) = v13;
                  goto LABEL_96;
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

              v9 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_48;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v65 = 0;
            v14 = *(this + 1);
            if (v14 >= *(this + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65);
              if (!result)
              {
                return result;
              }

              v15 = v65;
            }

            else
            {
              *(this + 1) = v14 + 1;
            }

            if (v15 - 1 <= 1)
            {
              *(a1 + 84) |= 1u;
              *(a1 + 16) = v15;
            }

            v21 = *(this + 1);
            v8 = *(this + 2);
            if (v21 < v8 && *v21 == 16)
            {
              v9 = v21 + 1;
              *(this + 1) = v9;
LABEL_48:
              v65 = 0;
              if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65);
                if (!result)
                {
                  return result;
                }

                v22 = v65;
                v23 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                v23 = v9 + 1;
                *(this + 1) = v23;
              }

              *(a1 + 20) = v22 != 0;
              v16 = *(a1 + 84) | 2;
              *(a1 + 84) = v16;
              if (v23 < v8 && *v23 == 26)
              {
                *(this + 1) = v23 + 1;
LABEL_56:
                *(a1 + 84) = v16 | 4;
                v24 = *(a1 + 8);
                if (!v24)
                {
                  operator new();
                }

                v65 = 0;
                v25 = *(this + 1);
                if (v25 >= *(this + 2) || *v25 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
                  {
                    return 0;
                  }
                }

                else
                {
                  v65 = *v25;
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
                if (!sub_2453E0BC8(v24, this) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v28 = *(this + 14);
                v29 = __OFSUB__(v28, 1);
                v30 = v28 - 1;
                if (v30 < 0 == v29)
                {
                  *(this + 14) = v30;
                }

                v31 = *(this + 1);
                v10 = *(this + 2);
                if (v31 < v10 && *v31 == 32)
                {
                  v11 = v31 + 1;
                  *(this + 1) = v11;
                  goto LABEL_70;
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
          if (v7 != 2)
          {
            goto LABEL_37;
          }

          v17 = *(a1 + 84);
          goto LABEL_104;
        }

        if (v6 == 8)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v19 = *(this + 1);
          v18 = *(this + 2);
LABEL_118:
          v65 = 0;
          if (v19 >= v18 || (v53 = *v19, (v53 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65);
            if (!result)
            {
              return result;
            }

            v53 = v65;
            v54 = *(this + 1);
            v18 = *(this + 2);
          }

          else
          {
            v54 = v19 + 1;
            *(this + 1) = v54;
          }

          *(a1 + 23) = v53 != 0;
          *(a1 + 84) |= 0x80u;
          if (v54 < v18 && *v54 == 74)
          {
            goto LABEL_125;
          }
        }

        else
        {
          if (v6 != 9 || v7 != 2)
          {
            goto LABEL_37;
          }

          while (1)
          {
            v55 = *(a1 + 68);
            v56 = *(a1 + 64);
            if (v56 >= v55)
            {
              if (v55 == *(a1 + 72))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
                v55 = *(a1 + 68);
              }

              *(a1 + 68) = v55 + 1;
              operator new();
            }

            v57 = *(a1 + 56);
            *(a1 + 64) = v56 + 1;
            v58 = *(v57 + 8 * v56);
            v65 = 0;
            v59 = *(this + 1);
            if (v59 >= *(this + 2) || *v59 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
              {
                return 0;
              }
            }

            else
            {
              v65 = *v59;
              *(this + 1) = v59 + 1;
            }

            v60 = *(this + 14);
            v61 = *(this + 15);
            *(this + 14) = v60 + 1;
            if (v60 >= v61)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453E2258(v58, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v62 = *(this + 14);
            v29 = __OFSUB__(v62, 1);
            v63 = v62 - 1;
            if (v63 < 0 == v29)
            {
              *(this + 14) = v63;
            }

            v54 = *(this + 1);
            v64 = *(this + 2);
            if (v54 >= v64 || *v54 != 74)
            {
              break;
            }

LABEL_125:
            *(this + 1) = v54 + 1;
          }

          if (v54 == v64 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        goto LABEL_78;
      }

      if (v6 != 6 || (TagFallback & 7) != 0)
      {
        break;
      }

      v13 = *(this + 1);
      v12 = *(this + 2);
LABEL_96:
      v65 = 0;
      if (v13 >= v12 || (v44 = *v13, (v44 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65);
        if (!result)
        {
          return result;
        }

        v44 = v65;
        v45 = *(this + 1);
        v12 = *(this + 2);
      }

      else
      {
        v45 = v13 + 1;
        *(this + 1) = v45;
      }

      *(a1 + 22) = v44 != 0;
      v17 = *(a1 + 84) | 0x20;
      *(a1 + 84) = v17;
      if (v45 < v12 && *v45 == 58)
      {
        *(this + 1) = v45 + 1;
LABEL_104:
        *(a1 + 84) = v17 | 0x40;
        v46 = *(a1 + 48);
        if (!v46)
        {
          operator new();
        }

        v65 = 0;
        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
          {
            return 0;
          }
        }

        else
        {
          v65 = *v47;
          *(this + 1) = v47 + 1;
        }

        v48 = *(this + 14);
        v49 = *(this + 15);
        *(this + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453E32D4(v46, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v50 = *(this + 14);
        v29 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v29)
        {
          *(this + 14) = v51;
        }

        v52 = *(this + 1);
        v18 = *(this + 2);
        if (v52 < v18 && *v52 == 64)
        {
          v19 = v52 + 1;
          *(this + 1) = v19;
          goto LABEL_118;
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

uint64_t sub_2453E468C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 84);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  v10 = *(v5 + 8);
  if (!v10)
  {
    sub_2453DCF08();
    v10 = *(qword_27EE134F8 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v10, a2, a4);
  if ((*(v5 + 84) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 21), a2, a4);
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

  v8 = *(v5 + 84);
  if ((v8 & 0x20) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 22), a2, a4);
    v8 = *(v5 + 84);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(v5 + 48);
  if (!v11)
  {
    sub_2453DCF08();
    v11 = *(qword_27EE134F8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  if ((*(v5 + 84) & 0x80) != 0)
  {
LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 23), a2, a4);
  }

LABEL_13:
  if (*(v5 + 64) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 56) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 64));
  }

  return result;
}

uint64_t sub_2453E480C(uint64_t a1)
{
  v2 = *(a1 + 84);
  if (v2)
  {
    if (v2)
    {
      v5 = *(a1 + 16);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(a1 + 84);
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

    v6 = (v2 & 2) + v3;
    if ((v2 & 4) != 0)
    {
      v7 = *(a1 + 8);
      if (!v7)
      {
        sub_2453DCF08();
        v7 = *(qword_27EE134F8 + 8);
      }

      v8 = sub_2453E0DB0(v7);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v6 += v9 + v10 + 1;
      v2 = *(a1 + 84);
    }

    v11 = ((v2 >> 2) & 2) + v6 + ((v2 >> 4) & 2);
    if ((v2 & 0x40) != 0)
    {
      v12 = *(a1 + 48);
      if (!v12)
      {
        sub_2453DCF08();
        v12 = *(qword_27EE134F8 + 48);
      }

      v13 = sub_2453E34BC(v12);
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      }

      else
      {
        v15 = 1;
      }

      v11 += v14 + v15 + 1;
      v2 = *(a1 + 84);
    }

    v4 = ((v2 >> 6) & 2) + v11;
  }

  else
  {
    v4 = 0;
  }

  v16 = *(a1 + 32);
  v17 = v16 + v4;
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = sub_2453E0650(*(*(a1 + 24) + 8 * v18));
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v17 += v20 + v21;
      ++v18;
    }

    while (v18 < *(a1 + 32));
  }

  v22 = *(a1 + 64);
  v23 = (v22 + v17);
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = sub_2453E2D44(*(*(a1 + 56) + 8 * v24));
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      }

      else
      {
        v27 = 1;
      }

      v23 = (v26 + v23 + v27);
      ++v24;
    }

    while (v24 < *(a1 + 64));
  }

  *(a1 + 80) = v23;
  return v23;
}

void sub_2453E49F4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855508, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E36B4(a1, lpsrc);
}

void sub_2453E4AB0(_DWORD *a1, uint64_t a2)
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
      a1[8] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if ((v6 - 1) >= 4)
      {
        __assert_rtn("set_pos_mode", "CLPGnssEmergencyLppTypes.pb.h", 3508, "::CoreGem::proto::gnss::Emergency::PosMode_IsValid(value)");
      }

      a1[8] |= 2u;
      a1[3] = v6;
      v4 = *(a2 + 32);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      if ((v7 - 1) >= 4)
      {
        __assert_rtn("set_pos_method", "CLPGnssEmergencyLppTypes.pb.h", 3531, "::CoreGem::proto::gnss::Emergency::PosMethod_IsValid(value)");
      }

      a1[8] |= 4u;
      a1[4] = v7;
      v4 = *(a2 + 32);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 20);
      if ((v8 - 1) >= 4)
      {
        __assert_rtn("set_discarded_msg_type", "CLPGnssEmergencyLppTypes.pb.h", 3554, "::CoreGem::proto::gnss::Emergency::DiscardedMsgType_IsValid(value)");
      }

      a1[8] |= 8u;
      a1[5] = v8;
      v4 = *(a2 + 32);
    }

    if ((v4 & 0x10) != 0)
    {
      v9 = *(a2 + 24);
      if ((v9 - 1) >= 3)
      {
        __assert_rtn("set_discard_reason", "CLPGnssEmergencyLppTypes.pb.h", 3577, "::CoreGem::proto::gnss::Emergency::DiscardReason_IsValid(value)");
      }

      a1[8] |= 0x10u;
      a1[6] = v9;
    }
  }
}

void sub_2453E4C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E4C78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855368;
  sub_2453DCF08();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E4CD4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E4C78(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E4D70(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = xmmword_245486E40;
    *(result + 24) = 1;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453E4D94(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v15 = *(this + 1);
        v9 = *(this + 2);
        if (v15 >= v9 || (v16 = *v15, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          a1[2] = v16;
          v17 = v15 + 1;
          *(this + 1) = v17;
        }

        a1[8] |= 1u;
        if (v17 < v9 && *v17 == 16)
        {
          v10 = v17 + 1;
          *(this + 1) = v10;
LABEL_32:
          v26 = 0;
          if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
            if (!result)
            {
              return result;
            }

            v18 = v26;
          }

          else
          {
            *(this + 1) = v10 + 1;
          }

          if (v18 - 1 <= 3)
          {
            a1[8] |= 2u;
            a1[3] = v18;
          }

          v19 = *(this + 1);
          v11 = *(this + 2);
          if (v19 < v11 && *v19 == 24)
          {
            v12 = v19 + 1;
            *(this + 1) = v12;
LABEL_42:
            v26 = 0;
            if (v12 >= v11 || (v20 = *v12, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
              if (!result)
              {
                return result;
              }

              v20 = v26;
            }

            else
            {
              *(this + 1) = v12 + 1;
            }

            if (v20 - 1 <= 3)
            {
              a1[8] |= 4u;
              a1[4] = v20;
            }

            v21 = *(this + 1);
            v13 = *(this + 2);
            if (v21 < v13 && *v21 == 32)
            {
              v14 = v21 + 1;
              *(this + 1) = v14;
              goto LABEL_52;
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

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_42;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v14 = *(this + 1);
      v13 = *(this + 2);
LABEL_52:
      v26 = 0;
      if (v14 >= v13 || (v22 = *v14, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
        if (!result)
        {
          return result;
        }

        v22 = v26;
      }

      else
      {
        *(this + 1) = v14 + 1;
      }

      if (v22 - 1 <= 3)
      {
        a1[8] |= 8u;
        a1[5] = v22;
      }

      v23 = *(this + 1);
      v7 = *(this + 2);
      if (v23 < v7 && *v23 == 40)
      {
        v8 = v23 + 1;
        *(this + 1) = v8;
LABEL_62:
        v26 = 0;
        if (v8 >= v7 || (v24 = *v8, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
          if (!result)
          {
            return result;
          }

          v24 = v26;
        }

        else
        {
          *(this + 1) = v8 + 1;
        }

        if (v24 - 1 <= 2)
        {
          a1[8] |= 0x10u;
          a1[6] = v24;
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

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_62;
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

unsigned int *sub_2453E50C0(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v5[5], a2, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[4], a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t sub_2453E5184(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_38;
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
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_16;
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
    v2 = *(a1 + 32);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
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
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(a1 + 20);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
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
LABEL_32:
    v11 = *(a1 + 24);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_38:
  *(a1 + 28) = v3;
  return v3;
}

void sub_2453E52C8(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285855520, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453E4AB0(a1, lpsrc);
}

uint64_t sub_2453E53FC(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x245D6A0A0);
  }

  return result;
}

uint64_t sub_2453E54A0()
{
  if (qword_27EE13508)
  {
    (*(*qword_27EE13508 + 8))(qword_27EE13508);
  }

  if (qword_2813CE9D0)
  {
    (*(*qword_2813CE9D0 + 8))(qword_2813CE9D0);
  }

  result = qword_2813CE9D8;
  if (qword_2813CE9D8)
  {
    v1 = *(*qword_2813CE9D8 + 8);

    return v1();
  }

  return result;
}

void sub_2453E5558(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Protobuf/Generated/CLPGemProtocolGpsd.pb.cc", a4);
  sub_24539DF20();
  sub_2453EB7EC();
  sub_2453DCF08();
  operator new();
}

void sub_2453E570C()
{
  v0 = qword_27EE14520;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_2453E5558;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_2453E5790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_2453E57BC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855548;
  sub_2453E5814(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E5814(void *a1)
{
  sub_2453E570C();
  if (qword_27EE13508 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[6];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[7];
    if (v6)
    {
      v7 = *(*v6 + 8);

      v7();
    }
  }
}

void sub_2453E5940(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E57BC(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E59D4(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 68);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(result + 24);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 24) = 0;
        }

        *(v3 + 16) = 0;
        *(v3 + 32) = 0;
        v2 = *(result + 68);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(result + 32);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v2 = *(result + 68);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v5 = *(result + 40);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v2 = *(result + 68);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(result + 48);
      if (result)
      {
        result = sub_2453E3D6C(result);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_245409A00(result);
      }
    }
  }

  *(v1 + 68) = 0;
  return result;
}

uint64_t sub_2453E5A8C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        if (TagFallback >> 3 <= 0x50)
        {
          break;
        }

        if (TagFallback >> 3 <= 0x52)
        {
          if (v6 == 81)
          {
            if (v7 == 2)
            {
              goto LABEL_76;
            }
          }

          else if (v6 == 82 && v7 == 2)
          {
            goto LABEL_91;
          }

          goto LABEL_34;
        }

        if (v6 == 83)
        {
          if (v7 != 2)
          {
            goto LABEL_34;
          }

LABEL_106:
          *(a1 + 68) |= 0x40u;
          v41 = *(a1 + 48);
          if (!v41)
          {
            operator new();
          }

          v54 = 0;
          v42 = *(this + 1);
          if (v42 >= *(this + 2) || *v42 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
            {
              return 0;
            }
          }

          else
          {
            v54 = *v42;
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
          if (!sub_2453E3DF8(v41, this) || *(this + 36) != 1)
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
          if (*(this + 4) - v47 > 1 && *v47 == 162 && v47[1] == 5)
          {
            *(this + 1) = v47 + 2;
            goto LABEL_121;
          }
        }

        else
        {
          if (v6 != 84 || v7 != 2)
          {
            goto LABEL_34;
          }

LABEL_121:
          *(a1 + 68) |= 0x80u;
          v48 = *(a1 + 56);
          if (!v48)
          {
            operator new();
          }

          v54 = 0;
          v49 = *(this + 1);
          if (v49 >= *(this + 2) || *v49 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
            {
              return 0;
            }
          }

          else
          {
            v54 = *v49;
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
          if (!sub_245409AB4(v48, this) || *(this + 36) != 1)
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

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_50;
          }
        }

        else if (v6 == 80 && v7 == 2)
        {
          goto LABEL_61;
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

      v10 = *(this + 1);
      v8 = *(this + 2);
      if (v10 >= v8 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 68) |= 1u;
      if (v12 < v8 && *v12 == 16)
      {
        v9 = v12 + 1;
        *(this + 1) = v9;
LABEL_42:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v15;
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 68) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(this + 1) = v13;
LABEL_50:
          v54 = 0;
          if (v13 >= v8 || (v17 = *v13, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54);
            if (!result)
            {
              return result;
            }

            v17 = v54;
          }

          else
          {
            *(this + 1) = v13 + 1;
          }

          if (sub_2453E57A4(v17))
          {
            *(a1 + 68) |= 4u;
            *(a1 + 20) = v17;
          }

          v18 = *(this + 1);
          if (*(this + 4) - v18 >= 2 && *v18 == 130 && v18[1] == 5)
          {
            *(this + 1) = v18 + 2;
LABEL_61:
            *(a1 + 68) |= 8u;
            v19 = *(a1 + 24);
            if (!v19)
            {
              operator new();
            }

            v54 = 0;
            v20 = *(this + 1);
            if (v20 >= *(this + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
              {
                return 0;
              }
            }

            else
            {
              v54 = *v20;
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
            if (!sub_2453DD228(v19, this) || *(this + 36) != 1)
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
            if (*(this + 4) - v26 > 1 && *v26 == 138 && v26[1] == 5)
            {
              *(this + 1) = v26 + 2;
LABEL_76:
              *(a1 + 68) |= 0x10u;
              v27 = *(a1 + 32);
              if (!v27)
              {
                operator new();
              }

              v54 = 0;
              v28 = *(this + 1);
              if (v28 >= *(this + 2) || *v28 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
                {
                  return 0;
                }
              }

              else
              {
                v54 = *v28;
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
              if (!sub_2453DD9FC(v27, this) || *(this + 36) != 1)
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
              if (*(this + 4) - v33 > 1 && *v33 == 146 && v33[1] == 5)
              {
                *(this + 1) = v33 + 2;
LABEL_91:
                *(a1 + 68) |= 0x20u;
                v34 = *(a1 + 40);
                if (!v34)
                {
                  operator new();
                }

                v54 = 0;
                v35 = *(this + 1);
                if (v35 >= *(this + 2) || *v35 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
                  {
                    return 0;
                  }
                }

                else
                {
                  v54 = *v35;
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
                if (!sub_2453DE1CC(v34, this) || *(this + 36) != 1)
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
                if (*(this + 4) - v40 > 1 && *v40 == 154 && v40[1] == 5)
                {
                  *(this + 1) = v40 + 2;
                  goto LABEL_106;
                }
              }
            }
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_42;
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

uint64_t sub_2453E6314(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 68);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 68);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_13:
  v7 = *(v5 + 24);
  if (!v7)
  {
    sub_2453E570C();
    v7 = *(qword_27EE13508 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x50, v7, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_16:
  v8 = *(v5 + 32);
  if (!v8)
  {
    sub_2453E570C();
    v8 = *(qword_27EE13508 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x51, v8, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_19:
  v9 = *(v5 + 40);
  if (!v9)
  {
    sub_2453E570C();
    v9 = *(qword_27EE13508 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x52, v9, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_22:
  v10 = *(v5 + 48);
  if (!v10)
  {
    sub_2453E570C();
    v10 = *(qword_27EE13508 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x53, v10, a2, a4);
  if ((*(v5 + 68) & 0x80) != 0)
  {
LABEL_25:
    v11 = *(v5 + 56);
    if (!v11)
    {
      sub_2453E570C();
      v11 = *(qword_27EE13508 + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x54, v11, a2, a4);
  }

  return result;
}

uint64_t sub_2453E6490(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 68);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_54;
  }

  if (*(a1 + 68))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
    v2 = *(a1 + 68);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 68) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(a1 + 16);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(a1 + 68);
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
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(a1 + 68);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
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
    sub_2453E570C();
    v8 = *(qword_27EE13508 + 24);
  }

  v9 = sub_2453DD698(v8);
  v10 = v9;
  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
  }

  else
  {
    v11 = 1;
  }

  v3 = (v3 + v10 + v11 + 2);
  v2 = *(a1 + 68);
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
    sub_2453E570C();
    v12 = *(qword_27EE13508 + 32);
  }

  if (*(v12 + 16))
  {
    v13 = 2 * (*(v12 + 16) & 1);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 12) = v13;
  v3 = (v3 + v13 + 3);
  v2 = *(a1 + 68);
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
  v14 = *(a1 + 40);
  if (!v14)
  {
    sub_2453E570C();
    v14 = *(qword_27EE13508 + 40);
  }

  v15 = sub_2453DE300(v14);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v17 = 1;
  }

  v3 = (v3 + v16 + v17 + 2);
  v2 = *(a1 + 68);
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
  v18 = *(a1 + 48);
  if (!v18)
  {
    sub_2453E570C();
    v18 = *(qword_27EE13508 + 48);
  }

  v19 = sub_2453E480C(v18);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
  }

  else
  {
    v21 = 1;
  }

  v3 = (v3 + v20 + v21 + 2);
  if ((*(a1 + 68) & 0x80) != 0)
  {
LABEL_48:
    v22 = *(a1 + 56);
    if (!v22)
    {
      sub_2453E570C();
      v22 = *(qword_27EE13508 + 56);
    }

    v23 = sub_24540A420(v22);
    v24 = v23;
    if (v23 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
    }

    else
    {
      v25 = 1;
    }

    v3 = (v3 + v24 + v25 + 2);
  }

LABEL_54:
  *(a1 + 64) = v3;
  return v3;
}

void sub_2453E66CC(uint64_t a1, int *lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858556A0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  LOBYTE(v5) = *(lpsrc + 68);
  if (!v5)
  {
    return;
  }

  if (lpsrc[17])
  {
    v6 = *(lpsrc + 1);
    *(a1 + 68) |= 1u;
    *(a1 + 8) = v6;
    v5 = lpsrc[17];
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

  else if ((lpsrc[17] & 2) == 0)
  {
    goto LABEL_7;
  }

  v7 = lpsrc[4];
  *(a1 + 68) |= 2u;
  *(a1 + 16) = v7;
  v5 = lpsrc[17];
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_16:
  v8 = lpsrc[5];
  if (!sub_2453E57A4(v8))
  {
    __assert_rtn("set_type", "CLPGemProtocolGpsd.pb.h", 618, "::CoreGem::CLP::LogEntry::Gem::Gpsd::Request_Type_IsValid(value)");
  }

  *(a1 + 68) |= 4u;
  *(a1 + 20) = v8;
  v5 = lpsrc[17];
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_18:
  *(a1 + 68) |= 8u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(lpsrc + 3);
  if (!v10)
  {
    sub_2453E570C();
    v10 = *(qword_27EE13508 + 24);
  }

  sub_2453DD028(v9, v10);
  v5 = lpsrc[17];
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    *(a1 + 68) |= 0x20u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      operator new();
    }

    v14 = *(lpsrc + 5);
    if (!v14)
    {
      sub_2453E570C();
      v14 = *(qword_27EE13508 + 40);
    }

    sub_2453DE00C(v13, v14);
    v5 = lpsrc[17];
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_38;
    }

    goto LABEL_33;
  }

LABEL_23:
  *(a1 + 68) |= 0x10u;
  v11 = *(a1 + 32);
  if (!v11)
  {
    operator new();
  }

  v12 = *(lpsrc + 4);
  if (!v12)
  {
    sub_2453E570C();
    v12 = *(qword_27EE13508 + 32);
  }

  sub_2453DD860(v11, v12);
  v5 = lpsrc[17];
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_33:
  *(a1 + 68) |= 0x40u;
  v15 = *(a1 + 48);
  if (!v15)
  {
    operator new();
  }

  v16 = *(lpsrc + 6);
  if (!v16)
  {
    sub_2453E570C();
    v16 = *(qword_27EE13508 + 48);
  }

  sub_2453E36B4(v15, v16);
  if ((lpsrc[17] & 0x80) != 0)
  {
LABEL_38:
    *(a1 + 68) |= 0x80u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      operator new();
    }

    v18 = *(lpsrc + 7);
    if (!v18)
    {
      sub_2453E570C();
      v18 = *(qword_27EE13508 + 56);
    }

    sub_24540946C(v17, v18);
  }
}

void sub_2453E6AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E6B2C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858555C0;
  sub_2453E570C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E6B88(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E6B2C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E6C0C(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_2453E6C20(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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

      if (sub_2453E57A4(v8))
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

uint64_t sub_2453E6E40(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_2453E6ECC(uint64_t a1)
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

void sub_2453E6F90(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858556B8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(lpsrc + 28);
  if (v5)
  {
    if (*(lpsrc + 28))
    {
      v6 = *(lpsrc + 4);
      if (!sub_2453E57A4(v6))
      {
        __assert_rtn("set_request_type", "CLPGemProtocolGpsd.pb.h", 855, "::CoreGem::CLP::LogEntry::Gem::Gpsd::Request_Type_IsValid(value)");
      }

      *(a1 + 28) |= 1u;
      *(a1 + 16) = v6;
      v5 = *(lpsrc + 7);
    }

    if ((v5 & 2) != 0)
    {
      v7 = lpsrc[1];
      *(a1 + 28) |= 2u;
      *(a1 + 8) = v7;
      v5 = *(lpsrc + 7);
    }

    if ((v5 & 4) != 0)
    {
      v8 = *(lpsrc + 5);
      if (v8 >= 0xA)
      {
        __assert_rtn("set_result_code", "CLPGemProtocolGpsd.pb.h", 900, "::CoreGem::proto::gnss::Result_IsValid(value)");
      }

      *(a1 + 28) |= 4u;
      *(a1 + 20) = v8;
    }
  }
}

void sub_2453E711C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453E714C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285855638;
  sub_2453E71A4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453E71A4(void *a1)
{
  sub_2453E570C();
  if (qword_2813CE9D8 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = a1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = a1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = a1[8];
    if (v9)
    {
      v10 = *(*v9 + 8);

      v10();
    }
  }
}

void sub_2453E7354(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453E714C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453E73EC(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 76);
  if (v2)
  {
    if (*(result + 76))
    {
      v3 = *(result + 8);
      if (v3)
      {
        v4 = *(v3 + 80);
        if (v4)
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        if ((v4 & 0xFF00) != 0)
        {
          *(v3 + 56) = 0u;
          *(v3 + 40) = 0u;
        }

        if ((v4 & 0xFF0000) != 0)
        {
          *(v3 + 72) = 0;
        }

        *(v3 + 80) = 0;
        v2 = *(result + 76);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_245419C10(result);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 4) != 0)
    {
      v5 = *(v1 + 24);
      if (v5)
      {
        v6 = *(v5 + 68);
        if (v6)
        {
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        if ((v6 & 0xFF00) != 0)
        {
          *(v5 + 40) = 0;
          *(v5 + 48) = 0;
          *(v5 + 56) = 0;
        }

        *(v5 + 68) = 0;
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 8) != 0)
    {
      v7 = *(v1 + 32);
      if (v7)
      {
        if (*(v7 + 52))
        {
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
        }

        result = sub_2453DC6D0(v7 + 8);
        *(v7 + 52) = 0;
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v8 = *(v1 + 40);
      if (v8)
      {
        if (*(v8 + 32))
        {
          *(v8 + 24) = 0;
        }

        *(v8 + 16) = 0;
        *(v8 + 32) = 0;
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v9 = *(v1 + 48);
      if (v9)
      {
        if (*(v9 + 16))
        {
          *(v9 + 8) = 0;
        }

        *(v9 + 16) = 0;
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_2453DF174(result);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v10 = *(v1 + 64);
      if (v10)
      {
        if (*(v10 + 32))
        {
          *(v10 + 8) = xmmword_245486E40;
          *(v10 + 24) = 1;
        }

        *(v10 + 32) = 0;
      }
    }
  }

  *(v1 + 76) = 0;
  return result;
}

uint64_t sub_2453E7560(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
        if (TagFallback >> 3 > 0x40)
        {
          break;
        }

        if (TagFallback >> 3 > 0x3E)
        {
          if (v6 == 63)
          {
            if (v7 == 2)
            {
              goto LABEL_53;
            }
          }

          else if (v6 == 64 && v7 == 2)
          {
            goto LABEL_68;
          }

          goto LABEL_40;
        }

        if (v6 == 61)
        {
          if (v7 != 2)
          {
            goto LABEL_40;
          }

          *(a1 + 76) |= 1u;
          v10 = *(a1 + 8);
          if (!v10)
          {
            operator new();
          }

          v65 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || *v11 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
            {
              return 0;
            }
          }

          else
          {
            v65 = *v11;
            *(this + 1) = v11 + 1;
          }

          v59 = *(this + 14);
          v60 = *(this + 15);
          *(this + 14) = v59 + 1;
          if (v59 >= v60)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_2453F8B20(v10, this) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v61 = *(this + 14);
          v15 = __OFSUB__(v61, 1);
          v62 = v61 - 1;
          if (v62 < 0 == v15)
          {
            *(this + 14) = v62;
          }

          v63 = *(this + 1);
          if (*(this + 4) - v63 > 1 && *v63 == 242 && v63[1] == 3)
          {
            *(this + 1) = v63 + 2;
LABEL_11:
            *(a1 + 76) |= 2u;
            v8 = *(a1 + 16);
            if (!v8)
            {
              operator new();
            }

            v65 = 0;
            v9 = *(this + 1);
            if (v9 >= *(this + 2) || *v9 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
              {
                return 0;
              }
            }

            else
            {
              v65 = *v9;
              *(this + 1) = v9 + 1;
            }

            v12 = *(this + 14);
            v13 = *(this + 15);
            *(this + 14) = v12 + 1;
            if (v12 >= v13)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_245419C60(v8, this) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v14 = *(this + 14);
            v15 = __OFSUB__(v14, 1);
            v16 = v14 - 1;
            if (v16 < 0 == v15)
            {
              *(this + 14) = v16;
            }

            v17 = *(this + 1);
            if (*(this + 4) - v17 > 1 && *v17 == 250 && v17[1] == 3)
            {
              *(this + 1) = v17 + 2;
LABEL_53:
              *(a1 + 76) |= 4u;
              v18 = *(a1 + 24);
              if (!v18)
              {
                operator new();
              }

              v65 = 0;
              v19 = *(this + 1);
              if (v19 >= *(this + 2) || *v19 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
                {
                  return 0;
                }
              }

              else
              {
                v65 = *v19;
                *(this + 1) = v19 + 1;
              }

              v20 = *(this + 14);
              v21 = *(this + 15);
              *(this + 14) = v20 + 1;
              if (v20 >= v21)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
              if (!sub_24541AA2C(v18, this) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              v22 = *(this + 14);
              v15 = __OFSUB__(v22, 1);
              v23 = v22 - 1;
              if (v23 < 0 == v15)
              {
                *(this + 14) = v23;
              }

              v24 = *(this + 1);
              if (*(this + 4) - v24 > 1 && *v24 == 130 && v24[1] == 4)
              {
                *(this + 1) = v24 + 2;
LABEL_68:
                *(a1 + 76) |= 8u;
                v25 = *(a1 + 32);
                if (!v25)
                {
                  operator new();
                }

                v65 = 0;
                v26 = *(this + 1);
                if (v26 >= *(this + 2) || *v26 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
                  {
                    return 0;
                  }
                }

                else
                {
                  v65 = *v26;
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
                if (!sub_24541DB58(v25, this) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v29 = *(this + 14);
                v15 = __OFSUB__(v29, 1);
                v30 = v29 - 1;
                if (v30 < 0 == v15)
                {
                  *(this + 14) = v30;
                }

                v31 = *(this + 1);
                if (*(this + 4) - v31 > 1 && *v31 == 138 && v31[1] == 4)
                {
                  *(this + 1) = v31 + 2;
LABEL_83:
                  *(a1 + 76) |= 0x10u;
                  v32 = *(a1 + 40);
                  if (!v32)
                  {
                    operator new();
                  }

                  v65 = 0;
                  v33 = *(this + 1);
                  if (v33 >= *(this + 2) || *v33 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v65 = *v33;
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
                  if (!sub_2453DD228(v32, this) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                  v36 = *(this + 14);
                  v15 = __OFSUB__(v36, 1);
                  v37 = v36 - 1;
                  if (v37 < 0 == v15)
                  {
                    *(this + 14) = v37;
                  }

                  v38 = *(this + 1);
                  if (*(this + 4) - v38 > 1 && *v38 == 146 && v38[1] == 4)
                  {
                    *(this + 1) = v38 + 2;
LABEL_98:
                    *(a1 + 76) |= 0x20u;
                    v39 = *(a1 + 48);
                    if (!v39)
                    {
                      operator new();
                    }

                    v65 = 0;
                    v40 = *(this + 1);
                    if (v40 >= *(this + 2) || *v40 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v65 = *v40;
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
                    if (!sub_2453DDDA4(v39, this) || *(this + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                    v43 = *(this + 14);
                    v15 = __OFSUB__(v43, 1);
                    v44 = v43 - 1;
                    if (v44 < 0 == v15)
                    {
                      *(this + 14) = v44;
                    }

                    v45 = *(this + 1);
                    if (*(this + 4) - v45 > 1 && *v45 == 154 && v45[1] == 4)
                    {
                      *(this + 1) = v45 + 2;
                      goto LABEL_113;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v6 == 62 && v7 == 2)
          {
            goto LABEL_11;
          }

LABEL_40:
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

      if (TagFallback >> 3 <= 0x42)
      {
        if (v6 == 65)
        {
          if (v7 == 2)
          {
            goto LABEL_83;
          }
        }

        else if (v6 == 66 && v7 == 2)
        {
          goto LABEL_98;
        }

        goto LABEL_40;
      }

      if (v6 != 67)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_40;
      }

LABEL_113:
      *(a1 + 76) |= 0x40u;
      v46 = *(a1 + 56);
      if (!v46)
      {
        operator new();
      }

      v65 = 0;
      v47 = *(this + 1);
      if (v47 >= *(this + 2) || *v47 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
        {
          return 0;
        }
      }

      else
      {
        v65 = *v47;
        *(this + 1) = v47 + 1;
      }

      v48 = *(this + 14);
      v49 = *(this + 15);
      *(this + 14) = v48 + 1;
      if (v48 >= v49)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      if (!sub_2453DF1C8(v46, this) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
      v50 = *(this + 14);
      v15 = __OFSUB__(v50, 1);
      v51 = v50 - 1;
      if (v51 < 0 == v15)
      {
        *(this + 14) = v51;
      }

      v52 = *(this + 1);
      if (*(this + 4) - v52 > 1 && *v52 == 162 && v52[1] == 4)
      {
        *(this + 1) = v52 + 2;
        goto LABEL_128;
      }
    }

    if (v6 != 68 || v7 != 2)
    {
      goto LABEL_40;
    }

LABEL_128:
    *(a1 + 76) |= 0x80u;
    v53 = *(a1 + 64);
    if (!v53)
    {
      operator new();
    }

    v65 = 0;
    v54 = *(this + 1);
    if (v54 >= *(this + 2) || *v54 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v65))
      {
        return 0;
      }
    }

    else
    {
      v65 = *v54;
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
    if (!sub_2453E4D94(v53, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v57 = *(this + 14);
    v15 = __OFSUB__(v57, 1);
    v58 = v57 - 1;
    if (v58 < 0 == v15)
    {
      *(this + 14) = v58;
    }
  }

  while (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_2453E8038(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_2453E570C();
      v7 = *(qword_2813CE9D8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3D, v7, a2, a4);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_2453E570C();
    v8 = *(qword_2813CE9D8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E, v8, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_2453E570C();
    v9 = *(qword_2813CE9D8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, v9, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v10 = *(v5 + 32);
  if (!v10)
  {
    sub_2453E570C();
    v10 = *(qword_2813CE9D8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x40, v10, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_22:
  v11 = *(v5 + 40);
  if (!v11)
  {
    sub_2453E570C();
    v11 = *(qword_2813CE9D8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, v11, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v12 = *(v5 + 48);
  if (!v12)
  {
    sub_2453E570C();
    v12 = *(qword_2813CE9D8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x42, v12, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_28:
  v13 = *(v5 + 56);
  if (!v13)
  {
    sub_2453E570C();
    v13 = *(qword_2813CE9D8 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x43, v13, a2, a4);
  if ((*(v5 + 76) & 0x80) != 0)
  {
LABEL_31:
    v14 = *(v5 + 64);
    if (!v14)
    {
      sub_2453E570C();
      v14 = *(qword_2813CE9D8 + 64);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x44, v14, a2, a4);
  }

  return result;
}

uint64_t sub_2453E81F0(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 76);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_61;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 76) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_2453E570C();
    v4 = *(qword_2813CE9D8 + 8);
  }

  v5 = sub_2453F952C(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 2);
  v2 = *(a1 + 76);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (!v8)
    {
      sub_2453E570C();
      v8 = *(qword_2813CE9D8 + 16);
    }

    v9 = sub_24541A394(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 2);
    v2 = *(a1 + 76);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(a1 + 24);
    if (!v12)
    {
      sub_2453E570C();
      v12 = *(qword_2813CE9D8 + 24);
    }

    v13 = sub_24541B294(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 = (v3 + v14 + v15 + 2);
    v2 = *(a1 + 76);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(a1 + 32);
  if (!v16)
  {
    sub_2453E570C();
    v16 = *(qword_2813CE9D8 + 32);
  }

  v17 = sub_24541E06C(v16);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v3 = (v3 + v18 + v19 + 2);
  v2 = *(a1 + 76);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v20 = *(a1 + 40);
  if (!v20)
  {
    sub_2453E570C();
    v20 = *(qword_2813CE9D8 + 40);
  }

  v21 = sub_2453DD698(v20);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v3 = (v3 + v22 + v23 + 2);
  v2 = *(a1 + 76);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v24 = *(a1 + 48);
  if (!v24)
  {
    sub_2453E570C();
    v24 = *(qword_2813CE9D8 + 48);
  }

  if (*(v24 + 16))
  {
    v25 = 2 * (*(v24 + 16) & 1);
  }

  else
  {
    v25 = 0;
  }

  *(v24 + 12) = v25;
  v3 = (v3 + v25 + 3);
  v2 = *(a1 + 76);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v26 = *(a1 + 56);
  if (!v26)
  {
    sub_2453E570C();
    v26 = *(qword_2813CE9D8 + 56);
  }

  v27 = sub_2453DF5F8(v26);
  v28 = v27;
  if (v27 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
  }

  else
  {
    v29 = 1;
  }

  v3 = (v3 + v28 + v29 + 2);
  if ((*(a1 + 76) & 0x80) != 0)
  {
LABEL_55:
    v30 = *(a1 + 64);
    if (!v30)
    {
      sub_2453E570C();
      v30 = *(qword_2813CE9D8 + 64);
    }

    v31 = sub_2453E5184(v30);
    v32 = v31;
    if (v31 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
    }

    else
    {
      v33 = 1;
    }

    v3 = (v3 + v32 + v33 + 2);
  }

LABEL_61:
  *(a1 + 72) = v3;
  return v3;
}

void sub_2453E849C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_2858556D0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  LOBYTE(v5) = *(lpsrc + 76);
  if (!v5)
  {
    return;
  }

  if (*(lpsrc + 76))
  {
    *(a1 + 76) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = lpsrc[1];
    if (!v7)
    {
      sub_2453E570C();
      v7 = *(qword_2813CE9D8 + 8);
    }

    sub_2453F86F0(v6, v7);
    v5 = *(lpsrc + 19);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((*(lpsrc + 76) & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a1 + 76) |= 2u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = lpsrc[2];
  if (!v9)
  {
    sub_2453E570C();
    v9 = *(qword_2813CE9D8 + 16);
  }

  sub_245419784(v8, v9);
  v5 = *(lpsrc + 19);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_24:
  *(a1 + 76) |= 4u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = lpsrc[3];
  if (!v11)
  {
    sub_2453E570C();
    v11 = *(qword_2813CE9D8 + 24);
  }

  sub_24541A664(v10, v11);
  v5 = *(lpsrc + 19);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 76) |= 8u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = lpsrc[4];
  if (!v13)
  {
    sub_2453E570C();
    v13 = *(qword_2813CE9D8 + 32);
  }

  sub_24541D870(v12, v13);
  v5 = *(lpsrc + 19);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_39:
    *(a1 + 76) |= 0x20u;
    v16 = *(a1 + 48);
    if (!v16)
    {
      operator new();
    }

    v17 = lpsrc[6];
    if (!v17)
    {
      sub_2453E570C();
      v17 = *(qword_2813CE9D8 + 48);
    }

    sub_2453DDC08(v16, v17);
    v5 = *(lpsrc + 19);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_34:
  *(a1 + 76) |= 0x10u;
  v14 = *(a1 + 40);
  if (!v14)
  {
    operator new();
  }

  v15 = lpsrc[5];
  if (!v15)
  {
    sub_2453E570C();
    v15 = *(qword_2813CE9D8 + 40);
  }

  sub_2453DD028(v14, v15);
  v5 = *(lpsrc + 19);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_44:
  *(a1 + 76) |= 0x40u;
  v18 = *(a1 + 56);
  if (!v18)
  {
    operator new();
  }

  v19 = lpsrc[7];
  if (!v19)
  {
    sub_2453E570C();
    v19 = *(qword_2813CE9D8 + 56);
  }

  sub_2453DEE4C(v18, v19);
  if ((*(lpsrc + 19) & 0x80) != 0)
  {
LABEL_49:
    *(a1 + 76) |= 0x80u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      operator new();
    }

    v21 = lpsrc[8];
    if (!v21)
    {
      sub_2453E570C();
      v21 = *(qword_2813CE9D8 + 64);
    }

    sub_2453E4AB0(v20, v21);
  }
}

void sub_2453E89E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453E8A30()
{
  if (qword_2813CE9E0)
  {
    (*(*qword_2813CE9E0 + 8))(qword_2813CE9E0);
  }

  if (qword_2813CEF68)
  {
    (*(*qword_2813CEF68 + 8))(qword_2813CEF68);
  }

  if (qword_2813CE9E8)
  {
    (*(*qword_2813CE9E8 + 8))(qword_2813CE9E8);
  }

  if (qword_2813CE9F0)
  {
    (*(*qword_2813CE9F0 + 8))(qword_2813CE9F0);
  }

  if (qword_2813CE9F8)
  {
    (*(*qword_2813CE9F8 + 8))(qword_2813CE9F8);
  }

  if (qword_2813CEA00)
  {
    (*(*qword_2813CEA00 + 8))(qword_2813CEA00);
  }

  if (qword_2813CEFC0)
  {
    (*(*qword_2813CEFC0 + 8))(qword_2813CEFC0);
  }

  if (qword_2813CEEF8)
  {
    (*(*qword_2813CEEF8 + 8))(qword_2813CEEF8);
  }

  if (qword_2813CEA08)
  {
    (*(*qword_2813CEA08 + 8))(qword_2813CEA08);
  }

  if (qword_2813CEF18)
  {
    (*(*qword_2813CEF18 + 8))(qword_2813CEF18);
  }

  if (qword_2813CEA10)
  {
    (*(*qword_2813CEA10 + 8))(qword_2813CEA10);
  }

  if (qword_2813CEA18)
  {
    (*(*qword_2813CEA18 + 8))(qword_2813CEA18);
  }

  if (qword_2813CEA20)
  {
    (*(*qword_2813CEA20 + 8))(qword_2813CEA20);
  }

  if (qword_2813CEA28)
  {
    (*(*qword_2813CEA28 + 8))(qword_2813CEA28);
  }

  if (qword_2813CEED8)
  {
    (*(*qword_2813CEED8 + 8))(qword_2813CEED8);
  }

  if (qword_2813CEFA8)
  {
    (*(*qword_2813CEFA8 + 8))(qword_2813CEFA8);
  }

  if (qword_2813CEF70)
  {
    (*(*qword_2813CEF70 + 8))(qword_2813CEF70);
  }

  if (qword_2813CEA30)
  {
    (*(*qword_2813CEA30 + 8))(qword_2813CEA30);
  }

  if (qword_2813CEA38)
  {
    (*(*qword_2813CEA38 + 8))(qword_2813CEA38);
  }

  if (qword_2813CEA40)
  {
    (*(*qword_2813CEA40 + 8))(qword_2813CEA40);
  }

  if (qword_2813CEA48)
  {
    (*(*qword_2813CEA48 + 8))(qword_2813CEA48);
  }

  if (qword_2813CEF58)
  {
    (*(*qword_2813CEF58 + 8))(qword_2813CEF58);
  }

  if (qword_2813CEA50)
  {
    (*(*qword_2813CEA50 + 8))(qword_2813CEA50);
  }

  if (qword_2813CEA58)
  {
    (*(*qword_2813CEA58 + 8))(qword_2813CEA58);
  }

  if (qword_2813CEA60)
  {
    (*(*qword_2813CEA60 + 8))(qword_2813CEA60);
  }

  if (qword_2813CEA68)
  {
    (*(*qword_2813CEA68 + 8))(qword_2813CEA68);
  }

  if (qword_2813CEA70)
  {
    (*(*qword_2813CEA70 + 8))(qword_2813CEA70);
  }

  if (qword_2813CEA78)
  {
    (*(*qword_2813CEA78 + 8))(qword_2813CEA78);
  }

  if (qword_2813CEF90)
  {
    (*(*qword_2813CEF90 + 8))(qword_2813CEF90);
  }

  if (qword_2813CEA80)
  {
    (*(*qword_2813CEA80 + 8))(qword_2813CEA80);
  }

  if (qword_2813CEA88)
  {
    (*(*qword_2813CEA88 + 8))(qword_2813CEA88);
  }

  if (qword_2813CEA90)
  {
    (*(*qword_2813CEA90 + 8))(qword_2813CEA90);
  }

  if (qword_2813CEA98)
  {
    (*(*qword_2813CEA98 + 8))(qword_2813CEA98);
  }

  if (qword_2813CEAA0)
  {
    (*(*qword_2813CEAA0 + 8))(qword_2813CEAA0);
  }

  if (qword_2813CEAA8)
  {
    (*(*qword_2813CEAA8 + 8))(qword_2813CEAA8);
  }

  if (qword_2813CEAB0)
  {
    (*(*qword_2813CEAB0 + 8))(qword_2813CEAB0);
  }

  if (qword_2813CEAB8)
  {
    (*(*qword_2813CEAB8 + 8))(qword_2813CEAB8);
  }

  if (qword_2813CEF10)
  {
    (*(*qword_2813CEF10 + 8))(qword_2813CEF10);
  }

  if (qword_2813CEF08)
  {
    (*(*qword_2813CEF08 + 8))(qword_2813CEF08);
  }

  if (qword_2813CEEE0)
  {
    (*(*qword_2813CEEE0 + 8))(qword_2813CEEE0);
  }

  if (qword_2813CEF98)
  {
    (*(*qword_2813CEF98 + 8))(qword_2813CEF98);
  }

  if (qword_2813CEF78)
  {
    (*(*qword_2813CEF78 + 8))(qword_2813CEF78);
  }

  if (qword_2813CEAC0)
  {
    (*(*qword_2813CEAC0 + 8))(qword_2813CEAC0);
  }

  if (qword_2813CEED0)
  {
    (*(*qword_2813CEED0 + 8))(qword_2813CEED0);
  }

  if (qword_2813CEFB0)
  {
    (*(*qword_2813CEFB0 + 8))(qword_2813CEFB0);
  }

  if (qword_2813CEAC8)
  {
    (*(*qword_2813CEAC8 + 8))(qword_2813CEAC8);
  }

  if (qword_2813CEAD0)
  {
    (*(*qword_2813CEAD0 + 8))(qword_2813CEAD0);
  }

  if (qword_2813CEAD8)
  {
    (*(*qword_2813CEAD8 + 8))(qword_2813CEAD8);
  }

  if (qword_2813CEAE0)
  {
    (*(*qword_2813CEAE0 + 8))(qword_2813CEAE0);
  }

  if (qword_2813CEF88)
  {
    (*(*qword_2813CEF88 + 8))(qword_2813CEF88);
  }

  if (qword_2813CEF38)
  {
    (*(*qword_2813CEF38 + 8))(qword_2813CEF38);
  }

  if (qword_2813CEF60)
  {
    (*(*qword_2813CEF60 + 8))(qword_2813CEF60);
  }

  if (qword_2813CEAE8)
  {
    (*(*qword_2813CEAE8 + 8))(qword_2813CEAE8);
  }

  if (qword_2813CEAF0)
  {
    (*(*qword_2813CEAF0 + 8))(qword_2813CEAF0);
  }

  if (qword_2813CEAF8)
  {
    (*(*qword_2813CEAF8 + 8))(qword_2813CEAF8);
  }

  if (qword_2813CEB00)
  {
    (*(*qword_2813CEB00 + 8))(qword_2813CEB00);
  }

  if (qword_2813CEB08)
  {
    (*(*qword_2813CEB08 + 8))(qword_2813CEB08);
  }

  if (qword_2813CEB10)
  {
    (*(*qword_2813CEB10 + 8))(qword_2813CEB10);
  }

  if (qword_2813CEF30)
  {
    (*(*qword_2813CEF30 + 8))(qword_2813CEF30);
  }

  if (qword_2813CEB18)
  {
    (*(*qword_2813CEB18 + 8))(qword_2813CEB18);
  }

  if (qword_2813CEB20)
  {
    (*(*qword_2813CEB20 + 8))(qword_2813CEB20);
  }

  if (qword_2813CEB28)
  {
    (*(*qword_2813CEB28 + 8))(qword_2813CEB28);
  }

  if (qword_2813CEB30)
  {
    (*(*qword_2813CEB30 + 8))(qword_2813CEB30);
  }

  if (qword_2813CEB38)
  {
    (*(*qword_2813CEB38 + 8))(qword_2813CEB38);
  }

  if (qword_2813CEB40)
  {
    (*(*qword_2813CEB40 + 8))(qword_2813CEB40);
  }

  if (qword_2813CEB48)
  {
    (*(*qword_2813CEB48 + 8))(qword_2813CEB48);
  }

  if (qword_2813CEB50)
  {
    (*(*qword_2813CEB50 + 8))(qword_2813CEB50);
  }

  if (qword_2813CEF00)
  {
    (*(*qword_2813CEF00 + 8))(qword_2813CEF00);
  }

  if (qword_2813CEB58)
  {
    (*(*qword_2813CEB58 + 8))(qword_2813CEB58);
  }

  if (qword_2813CEB60)
  {
    (*(*qword_2813CEB60 + 8))(qword_2813CEB60);
  }

  if (qword_2813CEB68)
  {
    (*(*qword_2813CEB68 + 8))(qword_2813CEB68);
  }

  if (qword_2813CEB70)
  {
    (*(*qword_2813CEB70 + 8))(qword_2813CEB70);
  }

  if (qword_2813CEB78)
  {
    (*(*qword_2813CEB78 + 8))(qword_2813CEB78);
  }

  if (qword_2813CEFA0)
  {
    (*(*qword_2813CEFA0 + 8))(qword_2813CEFA0);
  }

  if (qword_2813CEB80)
  {
    (*(*qword_2813CEB80 + 8))(qword_2813CEB80);
  }

  if (qword_2813CEB88)
  {
    (*(*qword_2813CEB88 + 8))(qword_2813CEB88);
  }

  if (qword_2813CEF40)
  {
    (*(*qword_2813CEF40 + 8))(qword_2813CEF40);
  }

  if (qword_2813CEF28)
  {
    (*(*qword_2813CEF28 + 8))(qword_2813CEF28);
  }

  if (qword_2813CEB90)
  {
    (*(*qword_2813CEB90 + 8))(qword_2813CEB90);
  }

  if (qword_2813CEF20)
  {
    (*(*qword_2813CEF20 + 8))(qword_2813CEF20);
  }

  if (qword_2813CEB98)
  {
    (*(*qword_2813CEB98 + 8))(qword_2813CEB98);
  }

  if (qword_2813CEF80)
  {
    (*(*qword_2813CEF80 + 8))(qword_2813CEF80);
  }

  if (qword_2813CEFB8)
  {
    (*(*qword_2813CEFB8 + 8))(qword_2813CEFB8);
  }

  if (qword_2813CEBA0)
  {
    (*(*qword_2813CEBA0 + 8))(qword_2813CEBA0);
  }

  if (qword_2813CEF48)
  {
    (*(*qword_2813CEF48 + 8))(qword_2813CEF48);
  }

  if (qword_2813CEEF0)
  {
    (*(*qword_2813CEEF0 + 8))(qword_2813CEEF0);
  }

  if (qword_2813CEF50)
  {
    (*(*qword_2813CEF50 + 8))(qword_2813CEF50);
  }

  if (qword_2813CEBA8)
  {
    (*(*qword_2813CEBA8 + 8))(qword_2813CEBA8);
  }

  if (qword_2813CEBB0)
  {
    (*(*qword_2813CEBB0 + 8))(qword_2813CEBB0);
  }

  if (qword_2813CEBB8)
  {
    (*(*qword_2813CEBB8 + 8))(qword_2813CEBB8);
  }

  if (qword_2813CEBC0)
  {
    (*(*qword_2813CEBC0 + 8))(qword_2813CEBC0);
  }

  if (qword_2813CEBC8)
  {
    (*(*qword_2813CEBC8 + 8))(qword_2813CEBC8);
  }

  if (qword_2813CEBD0)
  {
    (*(*qword_2813CEBD0 + 8))(qword_2813CEBD0);
  }

  if (qword_2813CEEE8)
  {
    (*(*qword_2813CEEE8 + 8))(qword_2813CEEE8);
  }

  result = qword_2813CEBD8;
  if (qword_2813CEBD8)
  {
    v1 = *(*qword_2813CEBD8 + 8);

    return v1();
  }

  return result;
}

void sub_2453E9C28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Protobuf/Generated/GnssEmergencyTypes.pb.cc", a4);
  sub_24539DF20();
  operator new();
}

void sub_2453EB7EC()
{
  v0 = qword_2813CE6D0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_2453E9C28;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_2453EB870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_2453EB890(uint64_t a1, uint64_t a2)
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
      v6 = *(a2 + 16);
      *(a1 + 24) |= 1u;
      *(a1 + 16) = v6;
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

    v7 = *(a2 + 17);
    *(a1 + 24) |= 2u;
    *(a1 + 17) = v7;
    if ((*(a2 + 24) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 8);
    *(a1 + 24) |= 4u;
    *(a1 + 8) = v5;
  }
}

void sub_2453EB964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453EB97C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858556F8;
  sub_2453EB7EC();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453EB9D8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453EB97C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453EBA60(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453EBA78(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
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
          goto LABEL_32;
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

      v16[0] = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
        if (!result)
        {
          return result;
        }

        v10 = v16[0];
        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 16) = v10 != 0;
      *(a1 + 24) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_24:
        v16[0] = 0;
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
          if (!result)
          {
            return result;
          }

          v14 = v16[0];
          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v15 = v12 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 17) = v14 != 0;
        *(a1 + 24) |= 2u;
        if (v15 < v8 && *v15 == 25)
        {
          *(this + 1) = v15 + 1;
LABEL_32:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 8) = *v16;
          *(a1 + 24) |= 4u;
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
      v12 = *(this + 1);
      v8 = *(this + 2);
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

uint64_t sub_2453EBC74(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
    if ((*(v5 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 8);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t sub_2453EBD00(uint64_t a1)
{
  v1 = 2 * (*(a1 + 24) & 1) + (*(a1 + 24) & 2);
  if ((*(a1 + 24) & 4) != 0)
  {
    v1 |= 9u;
  }

  if (*(a1 + 24))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_2453EBD34(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285858370, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453EB890(a1, lpsrc);
}

void sub_2453EBDF0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 124);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 8);
      *(a1 + 124) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 124);
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

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 124) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 124);
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
    v7 = *(a2 + 24);
    *(a1 + 124) |= 4u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 124);
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
    v8 = *(a2 + 32);
    *(a1 + 124) |= 8u;
    *(a1 + 32) = v8;
    v4 = *(a2 + 124);
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
    v9 = *(a2 + 40);
    *(a1 + 124) |= 0x10u;
    *(a1 + 40) = v9;
    v4 = *(a2 + 124);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 48);
    *(a1 + 124) |= 0x20u;
    *(a1 + 48) = v10;
    v4 = *(a2 + 124);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 56);
    *(a1 + 124) |= 0x40u;
    *(a1 + 56) = v11;
    v4 = *(a2 + 124);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v12 = *(a2 + 60);
    if (v12 >= 0x12)
    {
      __assert_rtn("set_method_type", "GnssEmergencyTypes.pb.h", 13227, "::CoreGem::proto::gnss::Emergency::PositionMethod_IsValid(value)");
    }

    *(a1 + 124) |= 0x80u;
    *(a1 + 60) = v12;
    v4 = *(a2 + 124);
  }

LABEL_22:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v4 & 0x100) != 0)
  {
    v13 = *(a2 + 64);
    if (v13 >= 4)
    {
      __assert_rtn("set_session_type", "GnssEmergencyTypes.pb.h", 13250, "::CoreGem::proto::gnss::Emergency::PositionSession_IsValid(value)");
    }

    *(a1 + 124) |= 0x100u;
    *(a1 + 64) = v13;
    v4 = *(a2 + 124);
  }

  if ((v4 & 0x200) != 0)
  {
    v14 = *(a2 + 68);
    if (v14 >= 7)
    {
      __assert_rtn("set_protocol_type", "GnssEmergencyTypes.pb.h", 13273, "::CoreGem::proto::gnss::Emergency::PositionProtocol_IsValid(value)");
    }

    *(a1 + 124) |= 0x200u;
    *(a1 + 68) = v14;
    v4 = *(a2 + 124);
  }

  if ((v4 & 0x400) != 0)
  {
    v17 = *(a2 + 72);
    *(a1 + 124) |= 0x400u;
    *(a1 + 72) = v17;
    v4 = *(a2 + 124);
    if ((v4 & 0x800) == 0)
    {
LABEL_31:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_31;
  }

  v18 = *(a2 + 80);
  *(a1 + 124) |= 0x800u;
  *(a1 + 80) = v18;
  v4 = *(a2 + 124);
  if ((v4 & 0x1000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 88);
  *(a1 + 124) |= 0x1000u;
  *(a1 + 88) = v19;
  v4 = *(a2 + 124);
  if ((v4 & 0x2000) == 0)
  {
LABEL_33:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_45:
  v20 = *(a2 + 96);
  if (v20 >= 8)
  {
    __assert_rtn("set_pos_req_type", "GnssEmergencyTypes.pb.h", 13362, "::CoreGem::proto::gnss::Emergency::PositionReqType_IsValid(value)");
  }

  *(a1 + 124) |= 0x2000u;
  *(a1 + 96) = v20;
  v4 = *(a2 + 124);
  if ((v4 & 0x4000) == 0)
  {
LABEL_34:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_47:
  v21 = *(a2 + 100);
  if (v21 >= 0x11)
  {
    __assert_rtn("set_error_code", "GnssEmergencyTypes.pb.h", 13385, "::CoreGem::proto::gnss::Emergency::SessionErrorCode_IsValid(value)");
  }

  *(a1 + 124) |= 0x4000u;
  *(a1 + 100) = v21;
  v4 = *(a2 + 124);
  if ((v4 & 0x8000) != 0)
  {
LABEL_35:
    v15 = *(a2 + 104);
    *(a1 + 124) |= 0x8000u;
    *(a1 + 104) = v15;
    v4 = *(a2 + 124);
  }

LABEL_36:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v22 = *(a2 + 105);
    *(a1 + 124) |= 0x10000u;
    *(a1 + 105) = v22;
    v4 = *(a2 + 124);
    if ((v4 & 0x20000) == 0)
    {
LABEL_39:
      if ((v4 & 0x40000) == 0)
      {
        return;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_39;
  }

  v23 = *(a2 + 112);
  *(a1 + 124) |= 0x20000u;
  *(a1 + 112) = v23;
  if ((*(a2 + 124) & 0x40000) != 0)
  {
LABEL_40:
    v16 = *(a2 + 108);
    *(a1 + 124) |= 0x40000u;
    *(a1 + 108) = v16;
  }
}