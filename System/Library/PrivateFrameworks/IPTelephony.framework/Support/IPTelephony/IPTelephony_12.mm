uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 100);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 100);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 56), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 60), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 64), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 68), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 72), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 76), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 84), a2, a4);
    if ((*(v5 + 100) & 0x100000) == 0)
    {
      return this;
    }

    goto LABEL_43;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 80), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x80000) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((v6 & 0x100000) == 0)
  {
    return this;
  }

LABEL_43:
  v7 = *(v5 + 88);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x16, v7, a2, a4);
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::ByteSize(awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this)
{
  v2 = *(this + 25);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
  }

  v3 = (v2 << 31 >> 31) & 5;
  if ((v2 & 2) != 0)
  {
    v4 = *(this + 3);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 25);
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

  v6 = *(this + 4);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 25);
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
  v8 = *(this + 5);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 25);
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
  v10 = *(this + 6);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 25);
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
  v12 = *(this + 7);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 25);
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
  v14 = *(this + 8);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_35:
    v16 = *(this + 9);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 25);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_39:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_81;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 10);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 25);
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_42:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_57;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  v20 = *(this + 11);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_43:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_61;
  }

LABEL_57:
  v22 = *(this + 12);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v23 = 2;
  }

  v3 = (v23 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_44:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_65;
  }

LABEL_61:
  v24 = *(this + 13);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v25 = 2;
  }

  v3 = (v25 + v3);
  if ((v2 & 0x1000) == 0)
  {
LABEL_45:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_69;
  }

LABEL_65:
  v26 = *(this + 14);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v27 = 2;
  }

  v3 = (v27 + v3);
  if ((v2 & 0x2000) == 0)
  {
LABEL_46:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_73;
  }

LABEL_69:
  v28 = *(this + 15);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v29 = 2;
  }

  v3 = (v29 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_47:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

LABEL_73:
  v30 = *(this + 16);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
    v2 = *(this + 25);
  }

  else
  {
    v31 = 3;
  }

  v3 = (v31 + v3);
  if ((v2 & 0x8000) != 0)
  {
LABEL_77:
    v32 = *(this + 17);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 25);
    }

    else
    {
      v33 = 3;
    }

    v3 = (v33 + v3);
  }

LABEL_81:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_88;
  }

  if ((v2 & 0x10000) != 0)
  {
    v35 = *(this + 18);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v2 = *(this + 25);
    }

    else
    {
      v36 = 3;
    }

    v3 = (v36 + v3);
    if ((v2 & 0x20000) == 0)
    {
LABEL_84:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_97;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_84;
  }

  v37 = *(this + 19);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v2 = *(this + 25);
  }

  else
  {
    v38 = 3;
  }

  v3 = (v38 + v3);
  if ((v2 & 0x40000) == 0)
  {
LABEL_85:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

LABEL_101:
    v41 = *(this + 21);
    if (v41 >= 0x80)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
      v2 = *(this + 25);
    }

    else
    {
      v42 = 3;
    }

    v3 = (v42 + v3);
    if ((v2 & 0x100000) != 0)
    {
      goto LABEL_87;
    }

    goto LABEL_88;
  }

LABEL_97:
  v39 = *(this + 20);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v2 = *(this + 25);
  }

  else
  {
    v40 = 3;
  }

  v3 = (v40 + v3);
  if ((v2 & 0x80000) != 0)
  {
    goto LABEL_101;
  }

LABEL_86:
  if ((v2 & 0x100000) != 0)
  {
LABEL_87:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 11)) + 2;
  }

LABEL_88:
  *(this + 24) = v3;
  return v3;
}

void awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v5 = *(lpsrc + 25);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v9 = *(lpsrc + 2);
    *(this + 25) |= 1u;
    *(this + 2) = v9;
    v5 = *(lpsrc + 25);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(lpsrc + 3);
  *(this + 25) |= 2u;
  *(this + 3) = v10;
  v5 = *(lpsrc + 25);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  v11 = *(lpsrc + 4);
  *(this + 25) |= 4u;
  *(this + 4) = v11;
  v5 = *(lpsrc + 25);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = *(lpsrc + 5);
  *(this + 25) |= 8u;
  *(this + 5) = v12;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_37:
    v14 = *(lpsrc + 7);
    *(this + 25) |= 0x20u;
    *(this + 7) = v14;
    v5 = *(lpsrc + 25);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_36:
  v13 = *(lpsrc + 6);
  *(this + 25) |= 0x10u;
  *(this + 6) = v13;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_38:
  v15 = *(lpsrc + 8);
  *(this + 25) |= 0x40u;
  *(this + 8) = v15;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 9);
    *(this + 25) |= 0x80u;
    *(this + 9) = v6;
    v5 = *(lpsrc + 25);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v5 & 0x100) != 0)
  {
    v16 = *(lpsrc + 10);
    *(this + 25) |= 0x100u;
    *(this + 10) = v16;
    v5 = *(lpsrc + 25);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(lpsrc + 11);
  *(this + 25) |= 0x200u;
  *(this + 11) = v17;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v18 = *(lpsrc + 12);
  *(this + 25) |= 0x400u;
  *(this + 12) = v18;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v19 = *(lpsrc + 13);
  *(this + 25) |= 0x800u;
  *(this + 13) = v19;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = *(lpsrc + 14);
  *(this + 25) |= 0x1000u;
  *(this + 14) = v20;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = *(lpsrc + 15);
  *(this + 25) |= 0x2000u;
  *(this + 15) = v21;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x4000) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_46:
  v22 = *(lpsrc + 16);
  *(this + 25) |= 0x4000u;
  *(this + 16) = v22;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    v7 = *(lpsrc + 17);
    *(this + 25) |= 0x8000u;
    *(this + 17) = v7;
    v5 = *(lpsrc + 25);
  }

LABEL_24:
  if ((v5 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v5 & 0x10000) != 0)
  {
    v23 = *(lpsrc + 18);
    *(this + 25) |= 0x10000u;
    *(this + 18) = v23;
    v5 = *(lpsrc + 25);
    if ((v5 & 0x20000) == 0)
    {
LABEL_27:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v24 = *(lpsrc + 19);
  *(this + 25) |= 0x20000u;
  *(this + 19) = v24;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x40000) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = *(lpsrc + 20);
  *(this + 25) |= 0x40000u;
  *(this + 20) = v25;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x100000) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_51:
  v26 = *(lpsrc + 21);
  *(this + 25) |= 0x80000u;
  *(this + 21) = v26;
  if ((*(lpsrc + 25) & 0x100000) != 0)
  {
LABEL_30:
    v8 = lpsrc[11];
    *(this + 25) |= 0x100000u;
    this[11] = v8;
  }
}

void sub_1E4D04B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricATM_SoundUMB_State::~MetricATM_SoundUMB_State(awd::metrics::MetricATM_SoundUMB_State *this)
{
  *this = &unk_1F5EC6268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::MetricATM_SoundUMB_State::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::MetricATM_SoundUMB_State::MergePartialFromCodedStream(awd::metrics::MetricATM_SoundUMB_State *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
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
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
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
      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 32) = v11 != 0;
      *(this + 10) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        if (v8 >= v7 || (v14 = *v8, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 10) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          if (v13 >= v7 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 10) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            if (v9 >= v7 || (v18 = *v9, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v18;
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 10) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::MetricATM_SoundUMB_State::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 32), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
}

uint64_t awd::metrics::MetricATM_SoundUMB_State::ByteSize(awd::metrics::MetricATM_SoundUMB_State *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = 2 * (v2 & 1u);
    if ((v2 & 2) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + v3 + 1;
      v2 = *(this + 10);
      if ((v2 & 4) == 0)
      {
LABEL_4:
        if ((v2 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_4;
    }

    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    if ((*(this + 10) & 8) != 0)
    {
LABEL_9:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_10:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::MetricATM_SoundUMB_State::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(lpsrc + 40);
  if (!v5)
  {
    return;
  }

  if ((lpsrc[5] & 1) == 0)
  {
    if ((lpsrc[5] & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    v8 = lpsrc[1];
    *(this + 10) |= 2u;
    this[1] = v8;
    v5 = *(lpsrc + 10);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v7 = *(lpsrc + 32);
  *(this + 10) |= 1u;
  *(this + 32) = v7;
  v5 = *(lpsrc + 10);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v9 = lpsrc[2];
  *(this + 10) |= 4u;
  this[2] = v9;
  if ((lpsrc[5] & 8) != 0)
  {
LABEL_9:
    v6 = lpsrc[3];
    *(this + 10) |= 8u;
    this[3] = v6;
  }
}

void sub_1E4D05124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *awd::metrics::ATM_signaling_message::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  v5 = v1[4];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x1E69235B0](v5, 0x1012C40EC159624);
  }

  v7 = v1[6];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x1E69235B0](v7, 0x1012C40EC159624);
  }

  v9 = v1[7];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

void awd::metrics::ATM_signaling_message::~ATM_signaling_message(awd::metrics::ATM_signaling_message *this)
{
  *this = &unk_1F5EC62E0;
  awd::metrics::ATM_signaling_message::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC62E0;
  awd::metrics::ATM_signaling_message::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_signaling_message::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 24) = 0;
    v2 = MEMORY[0x1E69E5958];
    if ((v1 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x1E69E5958])
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

    *(this + 44) = 0;
    *(this + 28) = -1;
    if ((*(this + 72) & 0x20) != 0)
    {
      v4 = *(this + 32);
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

    *(this + 45) = 0;
    *(this + 40) = 0;
    v1 = *(this + 72);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 46) = 0;
    *(this + 64) = 0;
    if ((v1 & 0x400) != 0)
    {
      v5 = *(this + 48);
      if (v5 != MEMORY[0x1E69E5958])
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

    *(this + 47) = 0;
    if ((*(this + 73) & 0x10) != 0)
    {
      v6 = *(this + 56);
      if (v6 != MEMORY[0x1E69E5958])
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

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::ATM_signaling_message::MergePartialFromCodedStream(awd::metrics::ATM_signaling_message *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 < v8)
        {
          v10 = *v9;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
LABEL_41:
            *(this + 18) |= 1u;
            if (v11 < v8 && *v11 == 16)
            {
              v22 = v11 + 1;
              *(a2 + 1) = v22;
              goto LABEL_44;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_41;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_44:
        if (v22 >= v8 || (v26 = *v22, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v26;
          v27 = v22 + 1;
          *(a2 + 1) = v27;
        }

        v19 = *(this + 18) | 2;
        *(this + 18) = v19;
        if (v27 >= v8 || *v27 != 26)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_52:
        *(this + 18) = v19 | 4;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v28 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v28 >= v14 || *v28 != 32)
        {
          continue;
        }

        v20 = v28 + 1;
        *(a2 + 1) = v20;
LABEL_58:
        v46 = 0;
        if (v20 >= v14 || (v29 = *v20, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
          if (!result)
          {
            return result;
          }

          v29 = v46;
          v30 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v30 = v20 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 44) = v29 != 0;
        *(this + 18) |= 8u;
        if (v30 >= v14 || *v30 != 40)
        {
          continue;
        }

        v15 = v30 + 1;
        *(a2 + 1) = v15;
LABEL_66:
        v46 = 0;
        if (v15 >= v14 || (v31 = *v15, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
          if (!result)
          {
            return result;
          }

          v31 = v46;
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v31 + 1 <= 7)
        {
          *(this + 18) |= 0x10u;
          *(this + 7) = v31;
        }

        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 50)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_76:
        *(this + 18) |= 0x20u;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v33 >= v17 || *v33 != 56)
        {
          continue;
        }

        v23 = v33 + 1;
        *(a2 + 1) = v23;
LABEL_82:
        v46 = 0;
        if (v23 >= v17 || (v34 = *v23, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
          if (!result)
          {
            return result;
          }

          v34 = v46;
          v35 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v35 = v23 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 45) = v34 != 0;
        *(this + 18) |= 0x40u;
        if (v35 >= v17 || *v35 != 64)
        {
          continue;
        }

        v21 = v35 + 1;
        *(a2 + 1) = v21;
LABEL_90:
        if (v21 >= v17 || (v36 = *v21, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v36;
          v37 = v21 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 18) |= 0x80u;
        if (v37 >= v17 || *v37 != 72)
        {
          continue;
        }

        v25 = v37 + 1;
        *(a2 + 1) = v25;
LABEL_98:
        v46 = 0;
        if (v25 >= v17 || (v38 = *v25, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
          if (!result)
          {
            return result;
          }

          v38 = v46;
          v39 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v39 = v25 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 46) = v38 != 0;
        *(this + 18) |= 0x100u;
        if (v39 >= v17 || *v39 != 80)
        {
          continue;
        }

        v18 = v39 + 1;
        *(a2 + 1) = v18;
LABEL_106:
        if (v18 >= v17 || (v40 = *v18, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v40;
          v41 = v18 + 1;
          *(a2 + 1) = v41;
        }

        v24 = *(this + 18) | 0x200;
        *(this + 18) = v24;
        if (v41 >= v17 || *v41 != 90)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_114:
        *(this + 18) = v24 | 0x400;
        if (*(this + 6) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v42 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v42 >= v12 || *v42 != 96)
        {
          continue;
        }

        v13 = v42 + 1;
        *(a2 + 1) = v13;
LABEL_120:
        v46 = 0;
        if (v13 >= v12 || (v43 = *v13, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
          if (!result)
          {
            return result;
          }

          v43 = v46;
          v44 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v44 = v13 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 47) = v43 != 0;
        v16 = *(this + 18) | 0x800;
        *(this + 18) = v16;
        if (v44 >= v12 || *v44 != 106)
        {
          continue;
        }

        *(a2 + 1) = v44 + 1;
LABEL_128:
        *(this + 18) = v16 | 0x1000;
        if (*(this + 7) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_35;
        }

        v19 = *(this + 18);
        goto LABEL_52;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_58;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_66;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_35;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v23 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_82;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v21 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_90;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v25 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_98;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_106;
      case 0xBu:
        if (v7 != 2)
        {
          goto LABEL_35;
        }

        v24 = *(this + 18);
        goto LABEL_114;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_120;
      case 0xDu:
        if (v7 != 2)
        {
          goto LABEL_35;
        }

        v16 = *(this + 18);
        goto LABEL_128;
      default:
LABEL_35:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t awd::metrics::ATM_signaling_message::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
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
  v8 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 45), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 46), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 47), a2, a4);
    if ((*(v5 + 72) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  v9 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_27:
  v10 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_signaling_message::ByteSize(awd::metrics::ATM_signaling_message *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_43;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(this + 6);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_11;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 18);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
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
      v2 = *(this + 18);
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

    v3 += v12 + v8 + 1;
  }

  v13 = ((v2 >> 2) & 2) + v3;
  if ((v2 & 0x10) != 0)
  {
    v14 = *(this + 7);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v15 = 2;
    }

    v13 += v15;
  }

  if ((v2 & 0x20) != 0)
  {
    v16 = *(this + 4);
    v17 = *(v16 + 23);
    v18 = v17;
    v19 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = v19;
    }

    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      v17 = *(v16 + 23);
      v19 = *(v16 + 8);
      v2 = *(this + 18);
      v18 = *(v16 + 23);
    }

    else
    {
      v21 = 1;
    }

    if (v18 < 0)
    {
      v17 = v19;
    }

    v13 += v21 + v17 + 1;
  }

  v4 = ((v2 >> 5) & 2) + v13;
  if ((v2 & 0x80) != 0)
  {
    v22 = *(this + 10);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v23 = 2;
    }

    v4 = (v23 + v4);
  }

LABEL_43:
  if ((v2 & 0xFF00) != 0)
  {
    v24 = ((v2 >> 7) & 2) + v4;
    if ((v2 & 0x200) != 0)
    {
      v25 = *(this + 16);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
        v2 = *(this + 18);
      }

      else
      {
        v26 = 2;
      }

      v24 += v26;
    }

    if ((v2 & 0x400) != 0)
    {
      v27 = *(this + 6);
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
        v2 = *(this + 18);
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

      v24 += v32 + v28 + 1;
    }

    v4 = ((v2 >> 10) & 2) + v24;
    if ((v2 & 0x1000) != 0)
    {
      v33 = *(this + 7);
      v34 = *(v33 + 23);
      v35 = v34;
      v36 = *(v33 + 8);
      if ((v34 & 0x80u) == 0)
      {
        v37 = *(v33 + 23);
      }

      else
      {
        v37 = v36;
      }

      if (v37 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
        v34 = *(v33 + 23);
        v36 = *(v33 + 8);
        v35 = *(v33 + 23);
      }

      else
      {
        v38 = 1;
      }

      if (v35 < 0)
      {
        v34 = v36;
      }

      v4 = (v4 + v38 + v34 + 1);
    }
  }

  *(this + 17) = v4;
  return v4;
}

void awd::metrics::ATM_signaling_message::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v5 = *(lpsrc + 18);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v7 = lpsrc[1];
    *(this + 18) |= 1u;
    this[1] = v7;
    v5 = *(lpsrc + 18);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 6);
  *(this + 18) |= 2u;
  *(this + 6) = v8;
  v5 = *(lpsrc + 18);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = lpsrc[2];
  *(this + 18) |= 4u;
  v10 = this[2];
  if (v10 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v5 = *(lpsrc + 18);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = *(lpsrc + 44);
  *(this + 18) |= 8u;
  *(this + 44) = v11;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v13 = lpsrc[4];
    *(this + 18) |= 0x20u;
    v14 = this[4];
    if (v14 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v14, v13);
    v5 = *(lpsrc + 18);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_27:
  v12 = *(lpsrc + 7);
  if ((v12 + 1) >= 8)
  {
    __assert_rtn("set_type", "CATM.pb.h", 19210, "::awd::metrics::enum_ATM_call_type_IsValid(value)");
  }

  *(this + 18) |= 0x10u;
  *(this + 7) = v12;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_32:
  v15 = *(lpsrc + 45);
  *(this + 18) |= 0x40u;
  *(this + 45) = v15;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 10);
    *(this + 18) |= 0x80u;
    *(this + 10) = v6;
    v5 = *(lpsrc + 18);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    v16 = *(lpsrc + 46);
    *(this + 18) |= 0x100u;
    *(this + 46) = v16;
    v5 = *(lpsrc + 18);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(lpsrc + 16);
  *(this + 18) |= 0x200u;
  *(this + 16) = v17;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

LABEL_39:
    v20 = *(lpsrc + 47);
    *(this + 18) |= 0x800u;
    *(this + 47) = v20;
    if ((lpsrc[9] & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_40;
  }

LABEL_36:
  v18 = lpsrc[6];
  *(this + 18) |= 0x400u;
  v19 = this[6];
  if (v19 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  v5 = *(lpsrc + 18);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  if ((v5 & 0x1000) == 0)
  {
    return;
  }

LABEL_40:
  v21 = lpsrc[7];
  *(this + 18) |= 0x1000u;
  v22 = this[7];
  if (v22 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v22, v21);
}

void sub_1E4D0633C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::conference_call_event::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 32);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

void awd::metrics::conference_call_event::~conference_call_event(awd::metrics::conference_call_event *this)
{
  *this = &unk_1F5EC6358;
  awd::metrics::conference_call_event::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6358;
  awd::metrics::conference_call_event::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::conference_call_event::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x1E69E5958];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x1E69E5958])
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

    *(this + 24) = 1;
    if ((*(this + 44) & 0x10) != 0)
    {
      v4 = *(this + 32);
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

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::conference_call_event::MergePartialFromCodedStream(awd::metrics::conference_call_event *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
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
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v7 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_22;
            }

            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_39;
          }

          if (v7 == 4)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_22;
            }

            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
LABEL_49:
            if (v14 >= v13 || (v22 = *v14, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v22;
              v23 = v14 + 1;
              *(a2 + 1) = v23;
            }

            v9 = *(this + 11) | 8;
            *(this + 11) = v9;
            if (v23 < v13 && *v23 == 42)
            {
              *(a2 + 1) = v23 + 1;
              goto LABEL_57;
            }
          }

          else
          {
            if (v7 != 5 || v8 != 2)
            {
              goto LABEL_22;
            }

            v9 = *(this + 11);
LABEL_57:
            *(this + 11) = v9 | 0x10;
            if (*(this + 4) == v4)
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
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v16 >= v15 || (v17 = *v16, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v17;
          v18 = v16 + 1;
          *(a2 + 1) = v18;
        }

        v10 = *(this + 11) | 1;
        *(this + 11) = v10;
        if (v18 < v15 && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_33;
        }
      }

      if (v7 != 2 || v8 != 2)
      {
        break;
      }

      v10 = *(this + 11);
LABEL_33:
      *(this + 11) = v10 | 2;
      if (*(this + 2) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v19 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v19 < v11 && *v19 == 24)
      {
        v12 = v19 + 1;
        *(a2 + 1) = v12;
LABEL_39:
        v25 = 0;
        if (v12 >= v11 || (v20 = *v12, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v20 = v25;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v20 - 1 <= 3)
        {
          *(this + 11) |= 4u;
          *(this + 6) = v20;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v21 < v13 && *v21 == 32)
        {
          v14 = v21 + 1;
          *(a2 + 1) = v14;
          goto LABEL_49;
        }
      }
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

uint64_t awd::metrics::conference_call_event::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::conference_call_event::ByteSize(awd::metrics::conference_call_event *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
  }

  if (*(this + 44))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 11);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 = *(this + 2);
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
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v2 = *(this + 11);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 1;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = (v3 + v9 + v5 + 1);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 11);
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
        goto LABEL_39;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 7);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_30:
    v14 = *(this + 4);
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

    v3 = (v3 + v19 + v15 + 1);
  }

LABEL_39:
  *(this + 10) = v3;
  return v3;
}

void awd::metrics::conference_call_event::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(lpsrc + 44);
  if (v5)
  {
    if (*(lpsrc + 44))
    {
      v9 = lpsrc[1];
      *(this + 11) |= 1u;
      this[1] = v9;
      v5 = *(lpsrc + 11);
      if ((v5 & 2) == 0)
      {
LABEL_7:
        if ((v5 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
      }
    }

    else if ((*(lpsrc + 44) & 2) == 0)
    {
      goto LABEL_7;
    }

    v10 = lpsrc[2];
    *(this + 11) |= 2u;
    v11 = this[2];
    if (v11 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v11, v10);
    v5 = *(lpsrc + 11);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_19:
    v12 = *(lpsrc + 6);
    if ((v12 - 1) >= 4)
    {
      __assert_rtn("set_state", "CATM.pb.h", 19649, "::awd::metrics::enum_conf_call_event_IsValid(value)");
    }

    *(this + 11) |= 4u;
    *(this + 6) = v12;
    v5 = *(lpsrc + 11);
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v6 = *(lpsrc + 7);
    *(this + 11) |= 8u;
    *(this + 7) = v6;
    v5 = *(lpsrc + 11);
LABEL_10:
    if ((v5 & 0x10) != 0)
    {
      v7 = lpsrc[4];
      *(this + 11) |= 0x10u;
      v8 = this[4];
      if (v8 == MEMORY[0x1E69E5958])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }
}

void sub_1E4D06D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::commCenterIMSSignallingDeferral::~commCenterIMSSignallingDeferral(awd::metrics::commCenterIMSSignallingDeferral *this)
{
  *this = &unk_1F5EC63D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC63D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::commCenterIMSSignallingDeferral::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::commCenterIMSSignallingDeferral::MergePartialFromCodedStream(awd::metrics::commCenterIMSSignallingDeferral *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_51;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_67;
          }

          goto LABEL_26;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v10 >= v7 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 11) |= 1u;
        if (v12 < v7 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_35;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v14 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_35:
      if (v14 >= v7 || (v16 = *v14, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v16;
        v17 = v14 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 11) |= 2u;
      if (v17 < v7 && *v17 == 24)
      {
        v8 = v17 + 1;
        *(a2 + 1) = v8;
LABEL_43:
        if (v8 >= v7 || (v18 = *v8, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v18;
          v19 = v8 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 11) |= 4u;
        if (v19 < v7 && *v19 == 32)
        {
          v13 = v19 + 1;
          *(a2 + 1) = v13;
LABEL_51:
          if (v13 >= v7 || (v20 = *v13, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v20;
            v21 = v13 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 11) |= 8u;
          if (v21 < v7 && *v21 == 40)
          {
            v15 = v21 + 1;
            *(a2 + 1) = v15;
LABEL_59:
            if (v15 >= v7 || (v22 = *v15, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v22;
              v23 = v15 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 11) |= 0x10u;
            if (v23 < v7 && *v23 == 48)
            {
              v9 = v23 + 1;
              *(a2 + 1) = v9;
LABEL_67:
              if (v9 >= v7 || (v24 = *v9, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 9) = v24;
                v25 = v9 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 11) |= 0x20u;
              if (v25 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 3 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_26:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::commCenterIMSSignallingDeferral::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
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
  v7 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t awd::metrics::commCenterIMSSignallingDeferral::ByteSize(awd::metrics::commCenterIMSSignallingDeferral *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_29;
  }

  if (*(this + 44))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 11);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 11);
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(this + 7);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_21:
  v8 = *(this + 8);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x20) != 0)
  {
LABEL_25:
    v10 = *(this + 9);
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

LABEL_29:
  *(this + 10) = v3;
  return v3;
}

void awd::metrics::commCenterIMSSignallingDeferral::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(lpsrc + 44);
  if (!v5)
  {
    return;
  }

  if (*(lpsrc + 44))
  {
    v7 = lpsrc[1];
    *(this + 11) |= 1u;
    this[1] = v7;
    v5 = *(lpsrc + 11);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(lpsrc + 44) & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 6);
  *(this + 11) |= 2u;
  *(this + 6) = v8;
  v5 = *(lpsrc + 11);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v10 = *(lpsrc + 7);
    *(this + 11) |= 8u;
    *(this + 7) = v10;
    v5 = *(lpsrc + 11);
    if ((v5 & 0x10) == 0)
    {
LABEL_10:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_15:
  v9 = lpsrc[2];
  *(this + 11) |= 4u;
  this[2] = v9;
  v5 = *(lpsrc + 11);
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_17:
  v11 = *(lpsrc + 8);
  *(this + 11) |= 0x10u;
  *(this + 8) = v11;
  if ((*(lpsrc + 11) & 0x20) != 0)
  {
LABEL_11:
    v6 = *(lpsrc + 9);
    *(this + 11) |= 0x20u;
    *(this + 9) = v6;
  }
}

void sub_1E4D07534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LBRSessionStatistics::~LBRSessionStatistics(awd::metrics::LBRSessionStatistics *this)
{
  *this = &unk_1F5EC6448;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6448;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::LBRSessionStatistics::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2 != MEMORY[0x1E69E5958])
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

    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
    v1 = *(this + 64);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
  }

  *(this + 64) = 0;
  return this;
}

uint64_t awd::metrics::LBRSessionStatistics::MergePartialFromCodedStream(awd::metrics::LBRSessionStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
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

            v13 = *(this + 16);
            goto LABEL_53;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v15 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v15 >= v14 || (v16 = *v15, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v16;
            v17 = v15 + 1;
            *(a2 + 1) = v17;
          }

          v13 = *(this + 16) | 1;
          *(this + 16) = v13;
          if (v17 < v14 && *v17 == 18)
          {
            *(a2 + 1) = v17 + 1;
LABEL_53:
            *(this + 16) = v13 | 2;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v25 = *(a2 + 1);
            v21 = *(a2 + 2);
            if (v25 < v21 && *v25 == 24)
            {
              v22 = v25 + 1;
              *(a2 + 1) = v22;
LABEL_59:
              v45 = 0;
              if (v22 >= v21 || (v26 = *v22, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
                if (!result)
                {
                  return result;
                }

                v26 = v45;
              }

              else
              {
                *(a2 + 1) = v22 + 1;
              }

              if (v26 <= 4)
              {
                *(this + 16) |= 4u;
                *(this + 6) = v26;
              }

              v27 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v27 < v9 && *v27 == 32)
              {
                v18 = v27 + 1;
                *(a2 + 1) = v18;
                goto LABEL_69;
              }
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_44;
            }

            v22 = *(a2 + 1);
            v21 = *(a2 + 2);
            goto LABEL_59;
          }

          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_44;
            }

            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_77;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v18 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_69:
          v45 = 0;
          if (v18 >= v9 || (v28 = *v18, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
            if (!result)
            {
              return result;
            }

            v28 = v45;
            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v29 = v18 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 7) = v28;
          *(this + 16) |= 8u;
          if (v29 < v9 && *v29 == 40)
          {
            v11 = v29 + 1;
            *(a2 + 1) = v11;
LABEL_77:
            v45 = 0;
            if (v11 >= v9 || (v30 = *v11, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
              if (!result)
              {
                return result;
              }

              v30 = v45;
              v31 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v31 = v11 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 8) = v30;
            *(this + 16) |= 0x10u;
            if (v31 < v9 && *v31 == 48)
            {
              v23 = v31 + 1;
              *(a2 + 1) = v23;
LABEL_85:
              v45 = 0;
              if (v23 >= v9 || (v32 = *v23, (v32 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
                if (!result)
                {
                  return result;
                }

                v32 = v45;
                v33 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v33 = v23 + 1;
                *(a2 + 1) = v33;
              }

              *(this + 9) = v32;
              *(this + 16) |= 0x20u;
              if (v33 < v9 && *v33 == 56)
              {
                v19 = v33 + 1;
                *(a2 + 1) = v19;
                goto LABEL_93;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v24 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_109;
          }
        }

        else if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_117;
          }
        }

        else if (v7 == 11 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_125;
        }

        goto LABEL_44;
      }

      if (v7 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_85;
      }

      if (v7 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_44;
      }

      v19 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_93:
      v45 = 0;
      if (v19 >= v9 || (v34 = *v19, (v34 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
        if (!result)
        {
          return result;
        }

        v34 = v45;
        v35 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v35 = v19 + 1;
        *(a2 + 1) = v35;
      }

      *(this + 10) = v34;
      *(this + 16) |= 0x40u;
      if (v35 < v9 && *v35 == 64)
      {
        v10 = v35 + 1;
        *(a2 + 1) = v10;
LABEL_101:
        v45 = 0;
        if (v10 >= v9 || (v36 = *v10, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
          if (!result)
          {
            return result;
          }

          v36 = v45;
          v37 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v37 = v10 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 11) = v36;
        *(this + 16) |= 0x80u;
        if (v37 < v9 && *v37 == 72)
        {
          v24 = v37 + 1;
          *(a2 + 1) = v24;
LABEL_109:
          v45 = 0;
          if (v24 >= v9 || (v38 = *v24, (v38 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
            if (!result)
            {
              return result;
            }

            v38 = v45;
            v39 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v39 = v24 + 1;
            *(a2 + 1) = v39;
          }

          *(this + 12) = v38;
          *(this + 16) |= 0x100u;
          if (v39 < v9 && *v39 == 80)
          {
            v20 = v39 + 1;
            *(a2 + 1) = v20;
LABEL_117:
            v45 = 0;
            if (v20 >= v9 || (v40 = *v20, (v40 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
              if (!result)
              {
                return result;
              }

              v40 = v45;
              v41 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v41 = v20 + 1;
              *(a2 + 1) = v41;
            }

            *(this + 13) = v40;
            *(this + 16) |= 0x200u;
            if (v41 < v9 && *v41 == 88)
            {
              v12 = v41 + 1;
              *(a2 + 1) = v12;
LABEL_125:
              v45 = 0;
              if (v12 >= v9 || (v42 = *v12, (v42 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
                if (!result)
                {
                  return result;
                }

                v42 = v45;
                v43 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v43 = v12 + 1;
                *(a2 + 1) = v43;
              }

              *(this + 14) = v42;
              *(this + 16) |= 0x400u;
              if (v43 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 8 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_101;
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

uint64_t awd::metrics::LBRSessionStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 64);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 64);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, *(v5 + 52), a2, a4);
    if ((*(v5 + 64) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 64);
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
  v8 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, v8, a2, a4);
}

uint64_t awd::metrics::LBRSessionStatistics::ByteSize(awd::metrics::LBRSessionStatistics *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_59;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 16);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
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

  v4 = *(this + 2);
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
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v2 = *(this + 16);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 1;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = (v3 + v9 + v5 + 1);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 16);
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
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 7);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_35:
  v14 = *(this + 8);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_41:
  v16 = *(this + 9);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

LABEL_47:
  v18 = *(this + 10);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = 11;
  }

  else if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v19 = 2;
  }

  v3 = (v19 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_53:
    v20 = *(this + 11);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v21 = 2;
    }

    v3 = (v21 + v3);
  }

LABEL_59:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_82;
  }

  if ((v2 & 0x100) != 0)
  {
    v22 = *(this + 12);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v23 = 2;
    }

    v3 = (v23 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_62:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_76;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_62;
  }

  v24 = *(this + 13);
  if ((v24 & 0x80000000) != 0)
  {
    v25 = 11;
  }

  else if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v25 = 2;
  }

  v3 = (v25 + v3);
  if ((v2 & 0x400) != 0)
  {
LABEL_76:
    v26 = *(this + 14);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = 11;
    }

    else if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    }

    else
    {
      v27 = 2;
    }

    v3 = (v27 + v3);
  }

LABEL_82:
  *(this + 15) = v3;
  return v3;
}

void awd::metrics::LBRSessionStatistics::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v5 = *(lpsrc + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v8 = lpsrc[1];
    *(this + 16) |= 1u;
    this[1] = v8;
    v5 = *(lpsrc + 16);
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

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v9 = lpsrc[2];
  *(this + 16) |= 2u;
  v10 = this[2];
  if (v10 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v5 = *(lpsrc + 16);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_24:
  v11 = *(lpsrc + 6);
  if (v11 >= 5)
  {
    __assert_rtn("set_sessionresult", "CATM.pb.h", 19996, "::awd::metrics::LBRSessionStatistics_SessionResult_IsValid(value)");
  }

  *(this + 16) |= 4u;
  *(this + 6) = v11;
  v5 = *(lpsrc + 16);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(lpsrc + 7);
  *(this + 16) |= 8u;
  *(this + 7) = v12;
  v5 = *(lpsrc + 16);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v14 = *(lpsrc + 9);
    *(this + 16) |= 0x20u;
    *(this + 9) = v14;
    v5 = *(lpsrc + 16);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_27:
  v13 = *(lpsrc + 8);
  *(this + 16) |= 0x10u;
  *(this + 8) = v13;
  v5 = *(lpsrc + 16);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_29:
  v15 = *(lpsrc + 10);
  *(this + 16) |= 0x40u;
  *(this + 10) = v15;
  v5 = *(lpsrc + 16);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 11);
    *(this + 16) |= 0x80u;
    *(this + 11) = v6;
    v5 = *(lpsrc + 16);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    v16 = *(lpsrc + 12);
    *(this + 16) |= 0x100u;
    *(this + 12) = v16;
    v5 = *(lpsrc + 16);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(lpsrc + 13);
  *(this + 16) |= 0x200u;
  *(this + 13) = v17;
  if ((lpsrc[8] & 0x400) != 0)
  {
LABEL_18:
    v7 = *(lpsrc + 14);
    *(this + 16) |= 0x400u;
    *(this + 14) = v7;
  }
}

void sub_1E4D083D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
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

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x1E6923590);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::ATM_CallEndEvent_myreason>::TypeHandler>(uint64_t *a1)
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

    JUMPOUT(0x1E6923590);
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = result;
    v4 = *result;
    v5 = 2 * v2;
    if (v5 <= a2)
    {
      v5 = a2;
    }

    if (v5 <= 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    *(v3 + 3) = v6;
    operator new[]();
  }

  return result;
}

void _GLOBAL__sub_I_CATM_pb_cc(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((_MergedGlobals_3 & 1) == 0)
  {
    LOBYTE(_MergedGlobals_3) = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/ipTelephony/Source/Daemon/Core/AWD/cpp/CATM.pb.cc", a4);
    operator new();
  }
}

uint64_t logBytes@<X0>(unsigned __int8 **a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *__p = 0u;
  v22 = 0u;
  v19 = 0u;
  *__src = 0u;
  v17 = 0u;
  v18 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = v17;
      v7 = v17;
      *(&v17 + *(v17 - 24) + 8) = *(&v17 + *(v17 - 24) + 8) & 0xFFFFFFB5 | 8;
      v8 = (&v17 + *(v7 - 24));
      if (v8[1].__fmtflags_ == -1)
      {
        std::ios_base::getloc(v8);
        v9 = std::locale::use_facet(&v26, MEMORY[0x1E69E5318]);
        (v9->__vftable[2].~facet_0)(v9, 32);
        std::locale::~locale(&v26);
        v6 = v17;
      }

      v8[1].__fmtflags_ = 48;
      *(&v18 + *(v6 - 24) + 8) = 2;
      v10 = MEMORY[0x1E6923340](&v17, v5);
      LOBYTE(v26.__locale_) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v26, 1);
      ++v3;
    }

    while (v3 != v4);
  }

  if ((BYTE8(v23) & 0x10) != 0)
  {
    v13 = v23;
    if (v23 < __src[1])
    {
      *&v23 = __src[1];
      v13 = __src[1];
    }

    v14 = __src[0];
  }

  else
  {
    if ((BYTE8(v23) & 8) == 0)
    {
      v11 = 0;
      v12 = a2;
      a2[23] = 0;
      goto LABEL_18;
    }

    v14 = *(&v18 + 1);
    v13 = *(&v19 + 1);
  }

  v12 = a2;
  v11 = v13 - v14;
  if ((v13 - v14) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a2[23] = v11;
  if (v11)
  {
    memmove(a2, v14, v11);
  }

LABEL_18:
  v12[v11] = 0;
  *&v17 = *MEMORY[0x1E69E54E8];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v17 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v18);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v24);
}

void sub_1E4D09004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va1);
  _Unwind_Resume(a1);
}

void SDPBandwidth::toStream(SDPBandwidth *this, ImsOutStream *a2, int a3)
{
  v6 = *(a2 + 1);
  __p.__r_.__value_.__s.__data_[0] = 98;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &__p, 1);
  *(a2 + 17) = 0;
  v7 = *(a2 + 1);
  __p.__r_.__value_.__s.__data_[0] = 61;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &__p, 1);
  *(a2 + 17) = 0;
  LoggableString::LoggableString(&__p, &SDPBandwidth::bwTypeLookup[3 * *(this + 3)]);
  (*(*a2 + 40))(a2, &__p);
  v8 = *(a2 + 1);
  v11 = 58;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v11, 1);
  *(a2 + 17) = 0;
  v9 = SDPBandwidth::bandwidth(this, a3);
  MEMORY[0x1E69233B0](*(a2 + 1), v9);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D09148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t SDPBandwidth::bandwidth(SDPBandwidth *this, int a2)
{
  v2 = *(this + 3);
  if ((v2 - 3) > 1)
  {
    return *(this + 3);
  }

  if (*(this + 16) != 1)
  {
    return 0;
  }

  v3 = *(this + 8);
  if (v3 == 1 && a2 == 0)
  {
    return 0;
  }

  if (v3 == 2)
  {
    return *(this + 3);
  }

  return (dbl_1E5168650[v2 == 3] * (200 * *(this + 18)) * *(this + 3));
}

void LazuliParameterHeader::LazuliParameterHeader(LazuliParameterHeader *this, const LazuliParameterHeader *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5EE6CE8;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v4 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v4;
  }

  *(this + 48) = *(a2 + 48);
  *this = &unk_1F5EC66B8;
  *(this + 7) = &unk_1F5EBEF50;
  std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(this + 8, *(a2 + 8), a2 + 9);
  *(this + 89) = 1;
  *(this + 88) = *(a2 + 88);
}

void sub_1E4D092DC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliParameterHeader::valueAndParamsAsString(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1);
  if (v1)
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    ImsStringOutStream::ImsStringOutStream(v3);
  }

  return v1;
}

void sub_1E4D094CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *LazuliParameterHeader::encode(const std::string *this, ImsOutStream *a2)
{
  LazuliHeader::encode(this, a2);

  return SipParameterMap::toStream(&this[2].__r_.__value_.__r.__words[1], a2, 0, 0, 0, 0);
}

uint64_t LazuliParameterHeader::decode(uint64_t a1, const std::string *a2)
{
  v4 = (*(*a1 + 80))(a1);
  memset(&__p, 0, sizeof(__p));
  memset(&__str, 0, sizeof(__str));
  if (v4 == -1)
  {
    std::string::operator=(&__p, a2);
  }

  else
  {
    v5 = v4;
    std::string::basic_string(&v9, a2, 0, v4, &v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v9;
    std::string::basic_string(&v9, a2, v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v12);
    __str = v9;
  }

  v6 = (*(*a1 + 48))(a1, &__p);
  if (v6)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      SipParameterMap::fromString(a1 + 56, &__str, 0, 0);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1E4D09704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::weak_ptr<WakeOnWifiAssertion>::~weak_ptr(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void WakeOnWifiAssertion::~WakeOnWifiAssertion(WakeOnWifiAssertion *this)
{
  *this = &unk_1F5EC6740;
  *(this + 17) = &unk_1F5EC67A0;
  if (*(this + 19))
  {
    WiFiManagerClientSetWoWState();
    CFRelease(*(this + 19));
    *(this + 19) = 0;
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Disabled wake on wifi", 21);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
  }

  MEMORY[0x1E69225A0](this + 144);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  WakeOnWifiAssertion::~WakeOnWifiAssertion(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toWakeOnWifiAssertion::~WakeOnWifiAssertion(WakeOnWifiAssertion *this)
{
  WakeOnWifiAssertion::~WakeOnWifiAssertion((this - 136));
}

{
  WakeOnWifiAssertion::~WakeOnWifiAssertion((this - 136));

  JUMPOUT(0x1E69235B0);
}

void WakeOnWifiAssertion::get(WakeOnWifiAssertion *this@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_4))
  {
    __cxa_atexit(MEMORY[0x1E69E5328], &WakeOnWifiAssertion::get(void)::creationMutex, &dword_1E4C3F000);
    __cxa_guard_release(&_MergedGlobals_4);
  }

  std::mutex::lock(&WakeOnWifiAssertion::get(void)::creationMutex);
  *a2 = 0;
  a2[1] = 0;
  if (!qword_1EE2BC280 || (v3 = std::__shared_weak_count::lock(qword_1EE2BC280), (a2[1] = v3) == 0))
  {
LABEL_7:
    operator new();
  }

  v4 = v3;
  v5 = qword_1EE2BC278;
  *a2 = qword_1EE2BC278;
  if (!v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    goto LABEL_7;
  }

  v6 = (*(*v5 + 64))(v5);
  (*(*v5 + 16))(v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Wake on wifi has ", 17);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923360](*(v6 + 8), v4->__shared_owners_ + 1);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " holders", 8);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;

  std::mutex::unlock(&WakeOnWifiAssertion::get(void)::creationMutex);
}

void sub_1E4D09E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  ImsLogContainer::~ImsLogContainer(v25);
  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v27);
  std::mutex::unlock(&WakeOnWifiAssertion::get(void)::creationMutex);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<WakeOnWifiAssertion::get(void)::WakeOnWifiAssertionWrapper,std::allocator<WakeOnWifiAssertion::get(void)::WakeOnWifiAssertionWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC6838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void WakeOnWifiAssertion::get(void)::WakeOnWifiAssertionWrapper::~WakeOnWifiAssertionWrapper(WakeOnWifiAssertion *a1)
{
  WakeOnWifiAssertion::~WakeOnWifiAssertion(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toWakeOnWifiAssertion::get(void)::WakeOnWifiAssertionWrapper::~WakeOnWifiAssertionWrapper(uint64_t a1)
{
  WakeOnWifiAssertion::~WakeOnWifiAssertion((a1 - 136));
}

{
  WakeOnWifiAssertion::~WakeOnWifiAssertion((a1 - 136));

  JUMPOUT(0x1E69235B0);
}

uint64_t isPhoneNumber(unsigned __int8 *a1)
{
  v1 = a1[23];
  if (v1 < 0)
  {
    if (!*(a1 + 1))
    {
      return 0;
    }

    v2 = *a1;
  }

  else
  {
    v2 = a1;
    if (!a1[23])
    {
      return 0;
    }
  }

  if (*v2 == 43)
  {
    return 1;
  }

  v3 = *(a1 + 1);
  if (v1 >= 0)
  {
    v3 = a1[23];
  }

  if (!v3)
  {
    return 1;
  }

  if (v1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  while (*v4 - 97 >= 0x1A && *v4 - 65 >= 0x1A)
  {
    ++v4;
    if (!--v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL SipUri::isBarred(SipUri *this)
{
  result = SipUri::isSipUri(this);
  if (result)
  {
    v3 = (this + 16);
    v4 = *(this + 39);
    if (v4 < 0)
    {
      v4 = *(this + 3);
      if (!v4)
      {
        return 0;
      }

      v3 = *v3;
    }

    else if (!*(this + 39))
    {
      return 0;
    }

    v5 = v3 + v4;
    if (v4 >= 15)
    {
      v6 = v3;
      do
      {
        v7 = memchr(v6, 51, v4 - 14);
        if (!v7)
        {
          break;
        }

        if (*v7 == 0x7774656E70706733 && *(v7 + 7) == 0x67726F2E6B726F77)
        {
          return v7 != v5 && v7 - v3 != -1;
        }

        v6 = v7 + 1;
        v4 = v5 - v6;
      }

      while (v5 - v6 > 14);
    }

    v7 = v5;
    return v7 != v5 && v7 - v3 != -1;
  }

  return result;
}

BOOL SipUri::isSipUri(SipUri *this)
{
  SipUri::guessScheme(this, &__p);
  v1 = isSipScheme(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v1;
}

BOOL isSipScheme(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = a1[1];
    if (v2 == 3)
    {
      return **a1 == 26995 && *(*a1 + 2) == 112;
    }

    if (v2 != 4)
    {
      return 0;
    }

    a1 = *a1;
  }

  else
  {
    v1 = *(a1 + 23);
    if (v1 == 3)
    {
      return *a1 == 26995 && *(a1 + 2) == 112;
    }

    if (v1 != 4)
    {
      return 0;
    }
  }

  return *a1 == 1936746867;
}

void SipUri::guessScheme(SipUri *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 127) < 0)
  {
    v2 = *(this + 14);
    if (v2)
    {
      std::string::__init_copy_ctor_external(a2, *(this + 13), v2);
      return;
    }
  }

  else if (*(this + 127))
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 104);
    a2->__r_.__value_.__r.__words[2] = *(this + 15);
    return;
  }

  if (*(this + 320))
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  if ((*(this + 199) & 0x8000000000000000) != 0)
  {
    if (*(this + 23))
    {
      goto LABEL_10;
    }

LABEL_12:
    v3 = "sip";
    goto LABEL_13;
  }

  if (!*(this + 199))
  {
    goto LABEL_12;
  }

LABEL_10:
  v3 = "tel";
LABEL_13:
  std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

BOOL SipUri::isTelUri(SipUri *this)
{
  SipUri::guessScheme(this, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v5.__r_.__value_.__l.__size_ == 3 && *v5.__r_.__value_.__l.__data_ == 25972 && *(v5.__r_.__value_.__r.__words[0] + 2) == 108;
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  else
  {
    return SHIBYTE(v5.__r_.__value_.__r.__words[2]) == 3 && LOWORD(v5.__r_.__value_.__l.__data_) == 25972 && v5.__r_.__value_.__s.__data_[2] == 108;
  }

  return v2;
}

BOOL SipUri::isUrn(SipUri *this)
{
  SipUri::guessScheme(this, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v5.__r_.__value_.__l.__size_ == 3 && *v5.__r_.__value_.__l.__data_ == 29301 && *(v5.__r_.__value_.__r.__words[0] + 2) == 110;
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  else
  {
    return SHIBYTE(v5.__r_.__value_.__r.__words[2]) == 3 && LOWORD(v5.__r_.__value_.__l.__data_) == 29301 && v5.__r_.__value_.__s.__data_[2] == 110;
  }

  return v2;
}

BOOL SipUri::isEmergencyUrn(SipUri *this)
{
  if (!SipUri::isUrn(this))
  {
    return 0;
  }

  v2 = this + 224;
  v3 = *(this + 247);
  if (v3 < 0)
  {
    if (*(this + 29) != 7)
    {
      return 0;
    }

    v2 = *v2;
  }

  else if (v3 != 7)
  {
    return 0;
  }

  v4 = *v2;
  v5 = *(v2 + 3);
  if (v4 != 1987208563 || v5 != 1701013878)
  {
    return 0;
  }

  std::string::basic_string(&v11, (this + 248), 0, 3uLL, &v12);
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) == 3)
    {
      return LOWORD(v11.__r_.__value_.__l.__data_) == 28531 && v11.__r_.__value_.__s.__data_[2] == 115;
    }

    return 0;
  }

  v7 = v11.__r_.__value_.__l.__size_ == 3 && *v11.__r_.__value_.__l.__data_ == 28531 && *(v11.__r_.__value_.__r.__words[0] + 2) == 115;
  operator delete(v11.__r_.__value_.__l.__data_);
  return v7;
}

uint64_t SipUri::getEmergencySubservice(SipUri *this)
{
  v1 = (this + 272);
  v2 = *(this + 295);
  if (v2 < 0)
  {
    v4 = *(this + 35);
    if (v4 <= 5)
    {
      if (!v4)
      {
        return 0;
      }

      if (v4 == 4)
      {
        v8 = **v1 == 1701996902;
        v9 = 3;
        goto LABEL_30;
      }
    }

    else
    {
      switch(v4)
      {
        case 6:
          v11 = *v1;
          if (*v11 == 1768714096 && *(v11 + 2) == 25955)
          {
            return 1;
          }

          v13 = *v11;
          v14 = *(v11 + 2);
          if (v13 != 1769103725 || v14 != 25966)
          {
            return 6;
          }

          return 4;
        case 8:
          v1 = *v1;
LABEL_44:
          v16 = bswap64(*v1);
          v17 = v16 >= 0x6D6F756E7461696ELL;
          v18 = v16 > 0x6D6F756E7461696ELL;
          v19 = !v17;
          if (v18 == v19)
          {
            return 5;
          }

          else
          {
            return 6;
          }

        case 9:
          v1 = *v1;
          goto LABEL_12;
      }
    }

    return 6;
  }

  result = *(this + 295);
  if (v2 > 5u)
  {
    if (result != 6)
    {
      if (result != 8)
      {
        if (result != 9)
        {
          return 6;
        }

LABEL_12:
        v5 = *v1;
        v6 = *(v1 + 8);
        if (v5 == 0x636E616C75626D61 && v6 == 101)
        {
          return 2;
        }

        return 6;
      }

      goto LABEL_44;
    }

    if (*v1 != 1768714096 || *(v1 + 2) != 25955)
    {
      v8 = (*v1 ^ 0x6972616D | *(v1 + 2) ^ 0x656E) == 0;
      v9 = 4;
LABEL_30:
      if (v8)
      {
        return v9;
      }

      else
      {
        return 6;
      }
    }

    return 1;
  }

  if (result)
  {
    if (result == 4 && *v1 == 1701996902)
    {
      return 3;
    }

    return 6;
  }

  return result;
}

void SipUri::setNamespaceStr(uint64_t a1, const std::string *a2)
{
  SipUri::makeUrn(a1);
  std::string::operator=((a1 + 248), a2);
  v4 = std::string::find((a1 + 248), 46, 0);
  if (v4 == -1)
  {
    if (*(a1 + 295) < 0)
    {
      **(a1 + 272) = 0;
      *(a1 + 280) = 0;
    }

    else
    {
      *(a1 + 272) = 0;
      *(a1 + 295) = 0;
    }
  }

  else
  {
    std::string::basic_string(&v5, (a1 + 248), v4 + 1, 0xFFFFFFFFFFFFFFFFLL, &v6);
    if (*(a1 + 295) < 0)
    {
      operator delete(*(a1 + 272));
    }

    *(a1 + 272) = v5;
  }
}

void SipUri::SipUri(SipUri *this)
{
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 1) = &unk_1F5ED7D40;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 8) = &unk_1F5EBEF50;
  *(this + 9) = this + 80;
  *(this + 97) = 1;
  *this = &unk_1F5EC6940;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 104) = 0u;
  *(this + 39) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 41) = &unk_1F5EBEF50;
  *(this + 42) = this + 344;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 46) = &unk_1F5EBEF50;
  *(this + 47) = this + 384;
  *(this + 96) = 1;
  *(this + 180) = 257;
  *(this + 200) = 257;
  *(this + 320) = 0;
}

uint64_t SipUri::SipUri(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 8) = &unk_1F5ED7D40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = &unk_1F5EBEF50;
  *(a1 + 72) = a1 + 80;
  *(a1 + 97) = 1;
  *a1 = &unk_1F5EC6940;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 328) = &unk_1F5EBEF50;
  *(a1 + 336) = a1 + 344;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 368) = &unk_1F5EBEF50;
  *(a1 + 376) = a1 + 384;
  *(a1 + 96) = 1;
  *(a1 + 360) = 257;
  *(a1 + 400) = 257;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  SipHost::SipHost(v4, a2);
  (*(*a1 + 32))(a1, v4);
  SipHost::~SipHost(v4);
  return a1;
}

void sub_1E4D0AA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SipHost::~SipHost(&a9);
  *(v9 + 368) = v11;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v9 + 376, *(v9 + 384));
  *(v9 + 328) = v10;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v9 + 336, *(v9 + 344));
  if (*(v9 + 319) < 0)
  {
    operator delete(*(v9 + 296));
  }

  if (*(v9 + 295) < 0)
  {
    operator delete(*(v9 + 272));
  }

  if (*(v9 + 271) < 0)
  {
    operator delete(*(v9 + 248));
  }

  if (*(v9 + 247) < 0)
  {
    operator delete(*(v9 + 224));
  }

  if (*(v9 + 223) < 0)
  {
    operator delete(*(v9 + 200));
  }

  if (*(v9 + 199) < 0)
  {
    operator delete(*(v9 + 176));
  }

  if (*(v9 + 175) < 0)
  {
    operator delete(*(v9 + 152));
  }

  if (*(v9 + 151) < 0)
  {
    operator delete(*(v9 + 128));
  }

  if (*(v9 + 127) < 0)
  {
    operator delete(*v12);
  }

  SipHop::~SipHop(v9);
  _Unwind_Resume(a1);
}

uint64_t SipUri::SipUri(uint64_t a1, std::string *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 8) = &unk_1F5ED7D40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = &unk_1F5EBEF50;
  *(a1 + 72) = a1 + 80;
  *(a1 + 97) = 1;
  *a1 = &unk_1F5EC6940;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 328) = &unk_1F5EBEF50;
  *(a1 + 336) = a1 + 344;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 368) = &unk_1F5EBEF50;
  *(a1 + 376) = a1 + 384;
  *(a1 + 96) = 1;
  *(a1 + 360) = 257;
  *(a1 + 400) = 257;
  *(a1 + 320) = 0;
  SipUri::fromString(a1, a2);
  return a1;
}

void sub_1E4D0AC6C(_Unwind_Exception *a1)
{
  v5 = v2;
  *(v1 + 368) = v3;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 376, *(v1 + 384));
  *(v1 + 328) = v5;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 336, *(v1 + 344));
  if (*(v1 + 319) < 0)
  {
    operator delete(*(v1 + 296));
  }

  if (*(v1 + 295) < 0)
  {
    operator delete(*(v1 + 272));
  }

  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
  }

  if (*(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v4);
  }

  SipHop::~SipHop(v1);
  _Unwind_Resume(a1);
}

uint64_t SipUri::fromString(uint64_t a1, std::string *a2)
{
  SipUri::clear(a1);
  v4 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if ((v4 & 0x80u) == 0)
  {
    v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = a2->__r_.__value_.__l.__size_;
  }

  if (!v6)
  {
    return 0;
  }

  if ((v4 & 0x80) == 0)
  {
    if (*(&a2->__r_.__value_.__s + 23))
    {
      memset(&__str, 0, sizeof(__str));
      v7 = a2->__r_.__value_.__s.__data_[0];
      v8 = v4;
      goto LABEL_10;
    }

LABEL_14:
    v10 = 0;
LABEL_48:
    NotQuoted = ims::findNotQuoted(a2, 0x3Cu);
    if (NotQuoted == -1)
    {
      v20 = 0;
      goto LABEL_54;
    }

    v18 = NotQuoted;
    v19 = std::string::find(a2, 62, NotQuoted);
    if (v19 != -1)
    {
      v10 = v19;
      std::string::basic_string(&__str, a2, 0, v18, &v66);
      if (*(a1 + 223) < 0)
      {
        operator delete(*(a1 + 200));
      }

      *(a1 + 200) = __str;
      ims::chomp((a1 + 200), "\r\n\t ", 3);
      v20 = v18 + 1;
LABEL_54:
      v21 = std::string::find(a2, 58, v20);
      if (v21 == -1)
      {
        goto LABEL_89;
      }

      v22 = v21;
      std::string::basic_string(&v66, a2, v20, v21 - v20, &v68);
      ims::lowerCase(&v66, &__str);
      v23 = (a1 + 104);
      if (*(a1 + 127) < 0)
      {
        operator delete(*v23);
      }

      *v23 = *&__str.__r_.__value_.__l.__data_;
      *(a1 + 120) = *(&__str.__r_.__value_.__l + 2);
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      v24 = *(a1 + 127);
      if (*(a1 + 127) < 0)
      {
        if (*(a1 + 112) != 3)
        {
          if (isSipScheme((a1 + 104)))
          {
LABEL_88:
            v20 = v22 + 1;
            goto LABEL_89;
          }

          v57 = *v23;
          goto LABEL_190;
        }

        v25 = *v23;
      }

      else
      {
        v25 = (a1 + 104);
        if (v24 != 3)
        {
          if (isSipScheme((a1 + 104)))
          {
            goto LABEL_88;
          }

LABEL_77:
          if (v24 != 3 || (*v23 == 25972 ? (v31 = *(a1 + 106) == 108) : (v31 = 0), !v31 && (*v23 == 29301 ? (v32 = *(a1 + 106) == 110) : (v32 = 0), !v32)))
          {
            *(a1 + 104) = 0;
            *(a1 + 127) = 0;
            goto LABEL_89;
          }

          goto LABEL_88;
        }
      }

      v28 = *v25;
      v29 = *(v25 + 2);
      v30 = v28 == 26979 && v29 == 100;
      if (v30 || isSipScheme((a1 + 104)))
      {
        goto LABEL_88;
      }

      if ((v24 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      v57 = *(a1 + 104);
      if (*(a1 + 112) == 3)
      {
        if (*v57 == 25972 && v57[2] == 108)
        {
          goto LABEL_88;
        }

        if (*v57 == 29301 && v57[2] == 110)
        {
          goto LABEL_88;
        }
      }

LABEL_190:
      *v57 = 0;
      *(a1 + 112) = 0;
LABEL_89:
      v33 = (a1 + 104);
      v34 = *(a1 + 127);
      if (v34 < 0)
      {
        if (*(a1 + 112) != 3)
        {
          goto LABEL_98;
        }

        v35 = *v33;
      }

      else
      {
        v35 = (a1 + 104);
        if (v34 != 3)
        {
LABEL_98:
          v39 = std::string::find(a2, 64, v20);
          if (v39 != -1)
          {
            v40 = v39;
            std::string::basic_string(&__str, a2, v20, v39 - v20, &v66);
            if (*(a1 + 151) < 0)
            {
              operator delete(*(a1 + 128));
            }

            *(a1 + 128) = __str;
            v41 = std::string::find((a1 + 128), 59, 0);
            if (v41 != -1)
            {
              v42 = v41;
              memset(&__str, 0, sizeof(__str));
              std::string::basic_string(&__str, (a1 + 128), v41 + 1, 0xFFFFFFFFFFFFFFFFLL, &v66);
              SipParameterMap::fromString(a1 + 368, &__str, 0, 0);
              std::string::basic_string(&v66, (a1 + 128), 0, v42, &v68);
              if (*(a1 + 151) < 0)
              {
                operator delete(*(a1 + 128));
              }

              *(a1 + 128) = v66;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }

            v43 = std::string::find((a1 + 128), 58, 0);
            if (v43 != -1)
            {
              v44 = v43;
              std::string::basic_string(&__str, (a1 + 128), v43 + 1, 0xFFFFFFFFFFFFFFFFLL, &v66);
              if (*(a1 + 175) < 0)
              {
                operator delete(*(a1 + 152));
              }

              *(a1 + 152) = __str;
              std::string::basic_string(&__str, (a1 + 128), 0, v44, &v66);
              if (*(a1 + 151) < 0)
              {
                operator delete(*(a1 + 128));
              }

              *(a1 + 128) = __str;
              ims::removePercentEscapes(a1 + 152);
            }

            ims::removePercentEscapes(a1 + 128);
            v20 = v40 + 1;
          }

LABEL_113:
          v45 = std::string::find(a2, 63, v20);
          if (v45 != -1)
          {
            memset(&__str, 0, sizeof(__str));
            std::string::basic_string(&__str, a2, v45 + 1, v10 + ~v45, &v66);
            SipParameterMap::fromString(a1 + 328, &__str, 0, 1);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            v10 = v45;
          }

          v46 = std::string::find(a2, 59, v20);
          if (v46 < v45)
          {
            v47 = v46;
            std::string::basic_string(&__str, a2, v46 + 1, v10 + ~v46, &v66);
            SipParameterMap::fromString(a1 + 64, &__str, 0, 0);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            v10 = v47;
          }

          memset(&__str, 0, sizeof(__str));
          std::string::basic_string(&__str, a2, v20, v10 - v20, &v66);
          v48 = *(a1 + 127);
          if ((v48 & 0x80000000) == 0)
          {
            if (*(a1 + 127) != 3)
            {
              if (*(a1 + 127))
              {
LABEL_174:
                *(a1 + 127) = 3;
                goto LABEL_175;
              }

LABEL_137:
              v52 = *(a1 + 151);
              if (v52 < 0)
              {
                if (*(a1 + 136))
                {
                  goto LABEL_165;
                }
              }

              else if (*(a1 + 151))
              {
                goto LABEL_165;
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                if (__str.__r_.__value_.__l.__size_ != 1)
                {
                  goto LABEL_165;
                }

                p_str = __str.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 1)
                {
                  goto LABEL_165;
                }

                p_str = &__str;
              }

              if (p_str->__r_.__value_.__s.__data_[0] == 42)
              {
                *(a1 + 320) = 1;
                goto LABEL_177;
              }

LABEL_165:
              if ((v52 & 0x80000000) != 0)
              {
                v52 = *(a1 + 136);
              }

              if (v52)
              {
                goto LABEL_173;
              }

              if (IpAddress::isAddress(&__str))
              {
                LOBYTE(v48) = *(a1 + 127);
                goto LABEL_173;
              }

              v59 = isPhoneNumber(&__str);
              v48 = *(a1 + 127);
              if (!v59)
              {
LABEL_173:
                if ((v48 & 0x80) != 0)
                {
                  *(a1 + 112) = 3;
                  v33 = *(a1 + 104);
                  goto LABEL_175;
                }

                goto LABEL_174;
              }

              if (v48 < 0)
              {
                *(a1 + 112) = 3;
                v33 = *(a1 + 104);
              }

              else
              {
                *(a1 + 127) = 3;
              }

LABEL_160:
              *v33 = 7103860;
              v58 = (a1 + 176);
              std::string::operator=(v58, &__str);
              ims::removePercentEscapes(v58);
              goto LABEL_177;
            }

            if (*v33 == 25972 && *(a1 + 106) == 108)
            {
              *(a1 + 127) = 3;
              goto LABEL_160;
            }

            if (*v33 != 26979 || *(a1 + 106) != 100)
            {
              goto LABEL_174;
            }

            *(a1 + 127) = 3;
LABEL_150:
            *(v33 + 2) = 100;
            v55 = 26979;
LABEL_176:
            *v33 = v55;
            *(v33 + 3) = 0;
            SipHost::fromString(a1 + 8, &__str);
LABEL_177:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            return 1;
          }

          v49 = *(a1 + 112);
          if (!v49)
          {
            goto LABEL_137;
          }

          if (v49 == 3)
          {
            v33 = *v33;
            if (*v33 == 25972 && *(v33 + 2) == 108)
            {
              *(a1 + 112) = 3;
              goto LABEL_160;
            }

            if (*v33 == 26979 && *(v33 + 2) == 100)
            {
              *(a1 + 112) = 3;
              goto LABEL_150;
            }
          }

          else
          {
            v33 = *v33;
          }

          *(a1 + 112) = 3;
LABEL_175:
          *(v33 + 2) = 112;
          v55 = 26995;
          goto LABEL_176;
        }
      }

      v36 = *v35;
      v37 = *(v35 + 2);
      if (v36 == 25972 && v37 == 108)
      {
        goto LABEL_113;
      }

      goto LABEL_98;
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, "sip.parse");
    v62[0] = 0;
    v65 = 0;
    v26 = ims::error(&__str, v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "URI has no closing '>': ", 24);
    *(v26 + 17) = 0;
    (*(*v26 + 32))(v26, a2);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (v65 == 1 && v64 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  if (!size)
  {
    goto LABEL_14;
  }

  memset(&__str, 0, sizeof(__str));
  v7 = *a2->__r_.__value_.__l.__data_;
  v8 = size;
LABEL_10:
  if (v7 == 60)
  {
    v9 = v8 - 1;
    if ((v4 & 0x80) != 0)
    {
      if (*(a2->__r_.__value_.__r.__words[0] + v9) != 62)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (a2->__r_.__value_.__s.__data_[v9] != 62)
      {
        goto LABEL_40;
      }

      size = v4;
    }

    std::string::basic_string(&v66, a2, 1uLL, size - 2, &v68);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v66;
  }

  else
  {
    std::string::operator=(&__str, a2);
  }

  std::string::basic_string(&v66, &__str, 0, 4uLL, &v68);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v66.__r_.__value_.__l.__size_ == 4)
    {
      v11 = *v66.__r_.__value_.__l.__data_;
      operator delete(v66.__r_.__value_.__l.__data_);
      if (v11 == 980316789)
      {
        goto LABEL_26;
      }
    }

    else
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

LABEL_40:
    v15 = 0;
    goto LABEL_41;
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) != 4 || LODWORD(v66.__r_.__value_.__l.__data_) != 980316789)
  {
    goto LABEL_40;
  }

LABEL_26:
  v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = __str.__r_.__value_.__l.__size_;
  }

  if (v12 < 5)
  {
    goto LABEL_40;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__str;
  }

  else
  {
    v13 = __str.__r_.__value_.__r.__words[0];
  }

  v14 = memchr(v13->__r_.__value_.__r.__words + 4, 58, v12 - 4);
  v15 = 0;
  if (v14)
  {
    v16 = v14 - v13;
    if (v16 != -1)
    {
      SipUri::makeUrn(a1);
      std::string::basic_string(&v66, &__str, 4uLL, v16 - 4, &v68);
      if (*(a1 + 247) < 0)
      {
        operator delete(*(a1 + 224));
      }

      *(a1 + 224) = v66;
      std::string::basic_string(&v66, &__str, v16 + 1, 0xFFFFFFFFFFFFFFFFLL, &v68);
      SipUri::setNamespaceStr(a1, &v66);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      v15 = 1;
    }
  }

LABEL_41:
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v15)
    {
      return 1;
    }

    goto LABEL_45;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
  if ((v15 & 1) == 0)
  {
LABEL_45:
    if ((*(&a2->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      v10 = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v10 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    goto LABEL_48;
  }

  return 1;
}

void sub_1E4D0B790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void SipUri::SipUri(SipUri *this, const SipUri *a2)
{
  SipHop::SipHop(this, a2);
  *v4 = &unk_1F5EC6940;
  *(v4 + 104) = 0u;
  v5 = (v4 + 104);
  *(v4 + 152) = 0u;
  v6 = (v4 + 152);
  *(v4 + 200) = 0u;
  v7 = (v4 + 200);
  *(v4 + 248) = 0u;
  v8 = (v4 + 248);
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 312) = 0;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0;
  *(v4 + 328) = &unk_1F5EBEF50;
  *(v4 + 336) = v4 + 344;
  *(v4 + 360) = 256;
  *(v4 + 384) = 0;
  *(v4 + 392) = 0;
  *(v4 + 368) = &unk_1F5EBEF50;
  *(v4 + 376) = v4 + 384;
  *(v4 + 400) = 256;
  if (v4 == a2)
  {
    *(this + 96) = *(a2 + 96);
    *(this + 360) = *(a2 + 360);
  }

  else
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 9, *(a2 + 9), a2 + 10);
    *(this + 96) = *(a2 + 96);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 42, *(a2 + 42), a2 + 43);
    *(this + 360) = *(a2 + 360);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 47, *(a2 + 47), a2 + 48);
  }

  *(this + 400) = *(a2 + 400);
  std::string::operator=(v5, (a2 + 104));
  std::string::operator=((this + 176), (a2 + 176));
  std::string::operator=((this + 128), (a2 + 128));
  std::string::operator=(v6, (a2 + 152));
  std::string::operator=(v7, (a2 + 200));
  *(this + 320) = *(a2 + 320);
  std::string::operator=((this + 224), (a2 + 224));
  std::string::operator=(v8, (a2 + 248));
  std::string::operator=((this + 272), (a2 + 272));
}

void sub_1E4D0B9F4(_Unwind_Exception *a1)
{
  *(v1 + 368) = v7;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 376, *(v1 + 384));
  *(v1 + 328) = v6;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 336, *(v1 + 344));
  if (*(v1 + 319) < 0)
  {
    operator delete(*(v1 + 296));
  }

  if (*(v1 + 295) < 0)
  {
    operator delete(*(v1 + 272));
  }

  if (*(v1 + 271) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v2);
  }

  SipHop::~SipHop(v1);
  _Unwind_Resume(a1);
}

SipUri *SipUri::operator=(SipUri *this, uint64_t a2)
{
  if (a2 != this)
  {
    SipUri::clear(this);
    std::string::operator=((this + 104), (a2 + 104));
    std::string::operator=((this + 176), (a2 + 176));
    std::string::operator=((this + 128), (a2 + 128));
    std::string::operator=((this + 152), (a2 + 152));
    std::string::operator=((this + 200), (a2 + 200));
    SipHost::operator=(this + 8, a2 + 8);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 9, *(a2 + 72), (a2 + 80));
    *(this + 96) = *(a2 + 96);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 42, *(a2 + 336), (a2 + 344));
    *(this + 360) = *(a2 + 360);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 47, *(a2 + 376), (a2 + 384));
    *(this + 400) = *(a2 + 400);
    *(this + 320) = *(a2 + 320);
    std::string::operator=((this + 224), (a2 + 224));
    std::string::operator=((this + 248), (a2 + 248));
    std::string::operator=((this + 272), (a2 + 272));
  }

  return this;
}

void SipUri::clear(SipUri *this)
{
  if (*(this + 127) < 0)
  {
    **(this + 13) = 0;
    *(this + 14) = 0;
  }

  else
  {
    *(this + 104) = 0;
    *(this + 127) = 0;
  }

  if (*(this + 199) < 0)
  {
    **(this + 22) = 0;
    *(this + 23) = 0;
  }

  else
  {
    *(this + 176) = 0;
    *(this + 199) = 0;
  }

  if (*(this + 151) < 0)
  {
    **(this + 16) = 0;
    *(this + 17) = 0;
  }

  else
  {
    *(this + 128) = 0;
    *(this + 151) = 0;
  }

  if (*(this + 175) < 0)
  {
    **(this + 19) = 0;
    *(this + 20) = 0;
  }

  else
  {
    *(this + 152) = 0;
    *(this + 175) = 0;
  }

  if (*(this + 223) < 0)
  {
    **(this + 25) = 0;
    *(this + 26) = 0;
  }

  else
  {
    *(this + 200) = 0;
    *(this + 223) = 0;
  }

  SipHost::clear((this + 8));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = this + 80;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 336, *(this + 43));
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 42) = this + 344;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 376, *(this + 48));
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 47) = this + 384;
  if (*(this + 247) < 0)
  {
    **(this + 28) = 0;
    *(this + 29) = 0;
  }

  else
  {
    *(this + 224) = 0;
    *(this + 247) = 0;
  }

  if (*(this + 271) < 0)
  {
    **(this + 31) = 0;
    *(this + 32) = 0;
  }

  else
  {
    *(this + 248) = 0;
    *(this + 271) = 0;
  }

  if (*(this + 295) < 0)
  {
    **(this + 34) = 0;
    *(this + 35) = 0;
  }

  else
  {
    *(this + 272) = 0;
    *(this + 295) = 0;
  }

  *(this + 320) = 0;
}

uint64_t SipUri::makeSipUri(uint64_t this)
{
  if (*(this + 127) < 0)
  {
    *(this + 112) = 3;
    v1 = *(this + 104);
  }

  else
  {
    v1 = (this + 104);
    *(this + 127) = 3;
  }

  *v1 = 7367027;
  if (*(this + 199) < 0)
  {
    **(this + 176) = 0;
    *(this + 184) = 0;
  }

  else
  {
    *(this + 176) = 0;
    *(this + 199) = 0;
  }

  if (*(this + 247) < 0)
  {
    **(this + 224) = 0;
    *(this + 232) = 0;
  }

  else
  {
    *(this + 224) = 0;
    *(this + 247) = 0;
  }

  if (*(this + 271) < 0)
  {
    **(this + 248) = 0;
    *(this + 256) = 0;
  }

  else
  {
    *(this + 248) = 0;
    *(this + 271) = 0;
  }

  if (*(this + 295) < 0)
  {
    **(this + 272) = 0;
    *(this + 280) = 0;
  }

  else
  {
    *(this + 272) = 0;
    *(this + 295) = 0;
  }

  return this;
}

void SipUri::makeUrn(SipUri *this)
{
  if (*(this + 127) < 0)
  {
    *(this + 14) = 3;
    v2 = *(this + 13);
  }

  else
  {
    v2 = (this + 104);
    *(this + 127) = 3;
  }

  *v2 = 7238261;
  SipHost::clear((this + 8));
  if (*(this + 151) < 0)
  {
    **(this + 16) = 0;
    *(this + 17) = 0;
  }

  else
  {
    *(this + 128) = 0;
    *(this + 151) = 0;
  }

  if (*(this + 175) < 0)
  {
    **(this + 19) = 0;
    *(this + 20) = 0;
  }

  else
  {
    *(this + 152) = 0;
    *(this + 175) = 0;
  }

  if (*(this + 199) < 0)
  {
    **(this + 22) = 0;
    *(this + 23) = 0;
  }

  else
  {
    *(this + 176) = 0;
    *(this + 199) = 0;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 336, *(this + 43));
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 42) = this + 344;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 376, *(this + 48));
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 47) = this + 384;
  *(this + 320) = 0;
}

BOOL SipUri::isAnonymousUri(SipUri *this)
{
  v1 = (this + 104);
  v2 = *(this + 127);
  if (v2 < 0)
  {
    if (*(this + 14) != 3)
    {
      return 0;
    }

    v1 = *v1;
  }

  else if (v2 != 3)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 2);
  if (v3 != 26995 || v4 != 112)
  {
    return 0;
  }

  v7 = this + 128;
  v8 = *(this + 151);
  if (v8 < 0)
  {
    if (*(this + 17) != 9)
    {
      return 0;
    }

    v7 = *v7;
  }

  else if (v8 != 9)
  {
    return 0;
  }

  v9 = *v7;
  v10 = v7[8];
  if (v9 != 0x756F6D796E6F6E61 || v10 != 115)
  {
    return 0;
  }

  v12 = this + 16;
  v13 = *(this + 39);
  if ((v13 & 0x80000000) == 0)
  {
    if (v13 == 17)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (*(this + 3) != 17)
  {
    return 0;
  }

  v12 = *v12;
LABEL_26:
  v14 = *v12;
  v15 = *(v12 + 1);
  v16 = v12[16];
  return v14 == 0x756F6D796E6F6E61 && v15 == 0x696C61766E692E73 && v16 == 100;
}

BOOL SipUri::isAnonymousUser(SipUri *this)
{
  v1 = (this + 104);
  v2 = *(this + 127);
  if (v2 < 0)
  {
    if (*(this + 14) != 3)
    {
      return 0;
    }

    v1 = *v1;
  }

  else if (v2 != 3)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 2);
  if (v3 != 26995 || v4 != 112)
  {
    return 0;
  }

  v7 = *(this + 151);
  if (v7 < 0)
  {
    v8 = *(this + 16);
    v7 = *(this + 17);
  }

  else
  {
    v8 = this + 128;
  }

  v9 = &v8[v7];
  if (v7 >= 9)
  {
    v10 = v8;
    do
    {
      v11 = memchr(v10, 97, v7 - 8);
      if (!v11)
      {
        break;
      }

      if (*v11 == 0x756F6D796E6F6E61 && v11[8] == 115)
      {
        return v11 != v9 && v11 - v8 != -1;
      }

      v10 = v11 + 1;
      v7 = v9 - v10;
    }

    while (v9 - v10 > 8);
  }

  v11 = v9;
  return v11 != v9 && v11 - v8 != -1;
}

BOOL SipUri::hasChatbotSubdomain(SipUri *this)
{
  v1 = *(this + 39);
  if (v1 < 0)
  {
    v2 = *(this + 2);
    v1 = *(this + 3);
  }

  else
  {
    v2 = this + 16;
  }

  v3 = &v2[v1];
  if (v1 >= 11)
  {
    v4 = v2;
    do
    {
      v5 = memchr(v4, 98, v1 - 10);
      if (!v5)
      {
        break;
      }

      if (*v5 == 0x6674616C70746F62 && *(v5 + 3) == 0x6D726F6674616C70)
      {
        return v5 != v3 && v5 - v2 != -1;
      }

      v4 = v5 + 1;
      v1 = v3 - v4;
    }

    while (v3 - v4 > 10);
  }

  v5 = v3;
  return v5 != v3 && v5 - v2 != -1;
}

void SipUri::makeAnonymous(SipUri *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "Anonymous <sip:anonymous@anonymous.invalid>");
  SipUri::fromString(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D0C1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipUri::setUser(uint64_t a1, const std::string *a2, uint64_t a3)
{
  v12[1] = 0;
  v12[2] = 256;
  v11 = v12;
  v12[0] = 0;
  v10 = &unk_1F5EBEF50;
  v5 = *(a3 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (v5)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "phone-context");
    v12[4] = __p;
    v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v11, __p);
    std::string::operator=((v7 + 56), a3);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipUri::setUser(a1, a2, &v10);
  v10 = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v11, v12[0]);
}

void *SipUri::setUser(uint64_t a1, const std::string *a2, uint64_t a3)
{
  SipUri::makeSipUri(a1);
  result = std::string::operator=((a1 + 128), a2);
  *(a1 + 320) = 0;
  if (a1 + 368 != a3)
  {
    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((a1 + 376), *(a3 + 8), (a3 + 16));
  }

  *(a1 + 400) = *(a3 + 32);
  return result;
}

uint64_t SipUri::setHost(SipUri *this, const SipHost *a2)
{
  SipUri::makeSipUri(this);
  result = SipHost::operator=(this + 8, a2);
  *(this + 320) = 0;
  return result;
}

__int128 *SipUri::phoneContext(SipUri *this)
{
  if (SipUri::isTelUri(this))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "phone-context");
    v2 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 72, __p);
    if ((this + 80) == v2)
    {
      v3 = &ims::kEmptyString;
    }

    else
    {
      v3 = (v2 + 56);
    }
  }

  else
  {
    v3 = &ims::kEmptyString;
    if (!SipUri::isSipUri(this))
    {
      return v3;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "phone-context");
    v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 376, __p);
    if ((this + 384) != v4)
    {
      v3 = (v4 + 56);
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1E4D0C460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *SipUri::verstatLevel(SipUri *this)
{
  if (SipUri::isTelUri(this))
  {
    v2 = 64;
    goto LABEL_3;
  }

  v3 = &ims::kEmptyString;
  if (SipUri::isSipUri(this))
  {
    v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 72, "verstat");
    if ((this + 80) != v6)
    {
      v3 = (v6 + 56);
    }

    v7 = *(v3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 1);
    }

    if (!v7)
    {
      v2 = 368;
LABEL_3:
      v3 = &ims::kEmptyString;
      v4 = this + v2;
      v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v4 + 8), "verstat");
      if (v4 + 16 != v5)
      {
        return (v5 + 56);
      }
    }
  }

  return v3;
}

void SipUri::setPhoneContext(SipUri *this, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    if (SipUri::isTelUri(this))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "phone-context");
      v9 = __p;
      v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 72, __p);
      std::string::operator=((v5 + 56), a2);
    }

    else
    {
      if (!SipUri::isSipUri(this))
      {
        return;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "phone-context");
      v9 = __p;
      v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 376, __p);
      std::string::operator=((v6 + 56), a2);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "phone-context");
    SipParameterMap::clearParameter(this + 64, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "phone-context");
    SipParameterMap::clearParameter(this + 368, __p);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D0C678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipUri::needsPhoneContext(SipUri *this)
{
  if (SipUri::isTelUri(this))
  {
    v2 = 176;
  }

  else
  {
    result = SipUri::isSipUri(this);
    if (!result)
    {
      return result;
    }

    v2 = 128;
  }

  return isLocalPhoneNumber(this + v2);
}

uint64_t isLocalPhoneNumber(unsigned __int8 *a1)
{
  v1 = a1[23];
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 0;
  }

  result = isPhoneNumber(a1);
  if (result)
  {
    v5 = *a1;
    if (v2 >= 0)
    {
      v5 = a1;
    }

    return *v5 != 43;
  }

  return result;
}

void SipUri::countryCodeFromPhoneContext(SipUri *this@<X0>, std::string *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v3 = SipUri::phoneContext(this);
  ims::chomp("\r\n\t ", v3, 3, &__p);
  v4 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_18;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_18;
    }

    p_p = &__p;
  }

  if (p_p->__r_.__value_.__s.__data_[0] == 43)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size < 2)
    {
LABEL_17:
      *a2 = __p;
      return;
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    v8 = &v7->__r_.__value_.__s.__data_[1];
    v9 = size - 1;
    while (1)
    {
      v11 = *v8++;
      v10 = v11;
      if (v11 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x400) == 0)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (v4 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void SipUri::asString(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  SipUri::asString(a1, a2);
}

void sub_1E4D0C880(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void SipUri::asString(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    ImsStringOutStream::ImsStringOutStream(v2);
  }
}

void sub_1E4D0C984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipUri::toStream(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 320) == 1)
  {
    LoggableString::LoggableString(&__p, "*");
    (*(*a2 + 40))(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return a2;
  }

  if (a3 == 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 223) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 208))
    {
      goto LABEL_8;
    }
  }

  else if (*(a1 + 223))
  {
LABEL_8:
    (*(*a2 + 32))(a2, a1 + 200);
    v6 = *(a2 + 8);
    v7 = " <";
    v8 = 2;
    goto LABEL_13;
  }

  if (!*(a1 + 88) && !*(a1 + 392) && a3)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_14;
  }

  v6 = *(a2 + 8);
  v7 = "<";
  v8 = 1;
LABEL_13:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  *(a2 + 17) = 0;
  v5 = 1;
LABEL_14:
  if (*(a1 + 127) < 0)
  {
    v9 = *(a1 + 112);
  }

  else
  {
    v9 = *(a1 + 127);
  }

  v10 = (a1 + 104);
  if (!v9)
  {
    v11 = *(a1 + 127);
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (*(a1 + 112) != 3)
    {
      goto LABEL_34;
    }

    v10 = *v10;
    goto LABEL_26;
  }

  LoggableString::LoggableString(&__p, (a1 + 104));
  (*(*a2 + 40))(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), ":", 1);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = *(a1 + 127);
  if ((v11 & 0x80) != 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v11 != 3)
  {
    goto LABEL_34;
  }

LABEL_26:
  if (*v10 == 25972 && *(v10 + 2) == 108)
  {
    memset(&v22, 0, sizeof(v22));
    if (*(a1 + 199) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(a1 + 176), *(a1 + 184));
    }

    else
    {
      v22 = *(a1 + 176);
    }

    ObfuscatedString::ObfuscatedString(&__p, &v22);
    (*(*a2 + 56))(a2, &__p);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    v17 = v22.__r_.__value_.__r.__words[0];
LABEL_76:
    operator delete(v17);
    goto LABEL_60;
  }

  if (*v10 == 29301 && *(v10 + 2) == 110)
  {
    LoggableString::LoggableString(&__p, (a1 + 224));
    (*(*a2 + 40))(a2, &__p);
    v16 = *(a2 + 8);
    v22.__r_.__value_.__s.__data_[0] = 58;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v22, 1);
    *(a2 + 17) = 0;
    LoggableString::LoggableString(&v22, (a1 + 248));
    (*(*a2 + 40))(a2, &v22);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    v17 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_76;
  }

LABEL_34:
  if (*(a1 + 151) < 0)
  {
    v14 = *(a1 + 136);
    if (v14)
    {
      memset(&v22, 0, sizeof(v22));
      std::string::__init_copy_ctor_external(&v22, *(a1 + 128), v14);
LABEL_39:
      ims::addPercentEscapes(&v22, @"&=+$,;?/", @":#[]@!'()");
      ObfuscatedString::ObfuscatedString(&__p, &v22);
      (*(*a2 + 56))(a2, &__p);
      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((*(a1 + 175) & 0x8000000000000000) != 0)
      {
        if (!*(a1 + 160))
        {
LABEL_55:
          if (*(a1 + 392))
          {
            SipParameterMap::toStream((a1 + 368), a2, 0, 0, 0, 0);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), "@", 1);
          *(a2 + 17) = 0;
          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
          }

          goto LABEL_59;
        }
      }

      else if (!*(a1 + 175))
      {
        goto LABEL_55;
      }

      std::string::operator=(&v22, (a1 + 152));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), ":", 1);
      *(a2 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(&v18, "xxxxxx");
      PIIString::PIIString(&__p, &v22, &v18);
      (*(*a2 + 48))(a2, &__p);
      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      goto LABEL_55;
    }
  }

  else if (*(a1 + 151))
  {
    v22 = *(a1 + 128);
    goto LABEL_39;
  }

LABEL_59:
  SipHost::toStream((a1 + 8), a2, 1);
LABEL_60:
  SipParameterMap::toStream((a1 + 64), a2, 0, @"[]/:&+$", @"#@!'()*=", 0);
  if (*(a1 + 352))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), "?", 1);
    *(a2 + 17) = 0;
    SipParameterMap::toStream((a1 + 328), a2, 1, 0, 0, 0);
  }

  if (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), ">", 1);
    *(a2 + 17) = 0;
  }

  return a2;
}

void sub_1E4D0CF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipUri::getContentIdString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4D0D310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipUri::getUriString(SipUri *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4D0D878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  *(v30 - 80) = &unk_1F5EDED18;
  if (*(v30 - 64) == 1)
  {
    v32 = *(v30 - 72);
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipUri::asContentIdUriString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4D0DAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL SipUri::isValidUri(SipUri *this)
{
  v2 = this + 104;
  if (isSipScheme(this + 13))
  {
    if ((*(this + 39) & 0x8000000000000000) != 0)
    {
      if (*(this + 3))
      {
        return 1;
      }
    }

    else if (*(this + 39))
    {
      return 1;
    }

    v3 = *(this + 6);
    if (!v3 || ((*(*v3 + 88))(v3) & 1) == 0)
    {
      goto LABEL_8;
    }

    return 1;
  }

LABEL_8:
  v4 = *(this + 127);
  if (*(this + 127) < 0)
  {
    if (*(this + 14) != 3)
    {
      return 0;
    }

    v5 = *v2;
  }

  else
  {
    v5 = v2;
    if (v4 != 3)
    {
      return 0;
    }
  }

  v6 = *v5;
  v7 = *(v5 + 2);
  if (v6 == 25972 && v7 == 108)
  {
    v9 = *(this + 199);
    if (v9 < 0)
    {
      v9 = *(this + 23);
    }

    if (v9)
    {
      return 1;
    }
  }

  if ((v4 & 0x80) != 0)
  {
    if (*(this + 14) == 3)
    {
      v2 = *v2;
      goto LABEL_26;
    }

    return 0;
  }

  if (v4 != 3)
  {
    return 0;
  }

LABEL_26:
  if (*v2 != 29301 || v2[2] != 110)
  {
    return 0;
  }

  v12 = *(this + 247);
  if (v12 < 0)
  {
    v12 = *(this + 29);
  }

  return v12 != 0;
}

void SipUri::makeCanonical(SipUri *this)
{
  if ((*(this + 127) & 0x8000000000000000) != 0)
  {
    if (*(this + 14))
    {
      goto LABEL_8;
    }
  }

  else if (*(this + 127))
  {
    goto LABEL_8;
  }

  SipUri::guessScheme(this, &v4);
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  *(this + 104) = v4;
LABEL_8:
  if (SipUri::isSipUri(this) && isPhoneNumber(this + 128))
  {
    std::string::basic_string[abi:ne200100]<0>(&v4, "user");
    std::string::basic_string[abi:ne200100]<0>(&__p, "phone");
    v5 = &v4;
    v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 72, &v4.__r_.__value_.__l.__data_);
    std::string::operator=((v2 + 56), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4D0DD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipUri::equals(SipUri *this, const SipUri *a2, int a3)
{
  v4 = *(this + 320);
  v5 = *(a2 + 320);
  result = v4 & v5;
  if (v4 & 1) != 0 || (v5)
  {
    return result;
  }

  v9 = *(this + 127);
  v10 = *(this + 14);
  if ((v9 & 0x80u) == 0)
  {
    v11 = *(this + 127);
  }

  else
  {
    v11 = *(this + 14);
  }

  v12 = *(a2 + 127);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 14);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = this + 104;
  v15 = *(this + 13);
  v16 = (v9 & 0x80u) == 0 ? (this + 104) : *(this + 13);
  v17 = v13 >= 0 ? (a2 + 104) : *(a2 + 13);
  if (memcmp(v16, v17, v11))
  {
    return 0;
  }

  if ((v9 & 0x80) == 0)
  {
    if (v9)
    {
      v18 = (this + 104);
      if (v9 != 3)
      {
        if (isSipScheme(this + 13))
        {
          goto LABEL_56;
        }

LABEL_31:
        if (v9 == 3)
        {
          goto LABEL_32;
        }

        return 0;
      }

      goto LABEL_25;
    }

    return 1;
  }

  if (!v10)
  {
    return 1;
  }

  v18 = v15;
  if (v10 != 3)
  {
    if (!isSipScheme(this + 13))
    {
      return 0;
    }

    goto LABEL_56;
  }

LABEL_25:
  v19 = *v18;
  v20 = *(v18 + 2);
  if (v19 == 25972 && v20 == 108)
  {
    v23 = *(this + 199);
    if (v23 >= 0)
    {
      v24 = *(this + 199);
    }

    else
    {
      v24 = *(this + 23);
    }

    v25 = *(a2 + 199);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(a2 + 23);
    }

    if (v24 == v25)
    {
      v29 = *(this + 22);
      v28 = this + 176;
      v27 = v29;
      if (v23 >= 0)
      {
        v30 = v28;
      }

      else
      {
        v30 = v27;
      }

      v33 = *(a2 + 22);
      v32 = a2 + 176;
      v31 = v33;
      if (v26 >= 0)
      {
        v34 = v32;
      }

      else
      {
        v34 = v31;
      }

      return memcmp(v30, v34, v24) == 0;
    }

    return 0;
  }

  if (isSipScheme(this + 13))
  {
LABEL_56:
    if (!a3 || (result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(this + 16, a2 + 16), result))
    {

      return SipHost::equals((this + 8), (a2 + 8), 1);
    }

    return result;
  }

  if ((v9 & 0x80) == 0)
  {
    goto LABEL_31;
  }

  v14 = v15;
  if (v10 != 3)
  {
    return 0;
  }

LABEL_32:
  if (*v14 != 29301 || v14[2] != 110)
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(this + 28, a2 + 28);
  if (result)
  {

    return std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(this + 31, a2 + 31);
  }

  return result;
}

BOOL SipUri::userMatch(SipUri *this, const SipUri *a2)
{
  result = SipUri::isSipUri(this);
  if (result)
  {
    v5 = *(this + 127);
    if (v5 >= 0)
    {
      v6 = *(this + 127);
    }

    else
    {
      v6 = *(this + 14);
    }

    v7 = *(a2 + 127);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 14);
    }

    if (v6 != v7)
    {
      return 0;
    }

    v9 = v5 >= 0 ? (this + 104) : *(this + 13);
    v10 = v8 >= 0 ? (a2 + 104) : *(a2 + 13);
    if (memcmp(v9, v10, v6))
    {
      return 0;
    }

    v11 = *(a2 + 151) >= 0 ? *(a2 + 151) : *(a2 + 17);
    if (!v11)
    {
      return 0;
    }

    v12 = *(this + 151);
    if ((v12 & 0x8000000000000000) != 0)
    {
      if (!*(this + 17))
      {
        return 0;
      }
    }

    else if (!*(this + 151))
    {
      return 0;
    }

    if (SipUri::isAnonymousUser(this) && SipUri::isAnonymousUser(a2))
    {
      return 1;
    }

    if (v11 >= 6 && ((v12 & 0x80000000) != 0 ? (v13 = *(this + 17)) : (v13 = v12), v13 > 5))
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    v15 = this + 128;
    if ((v12 & 0x80000000) != 0)
    {
      v12 = *(this + 17);
    }

    if (v11 >= v12)
    {
      std::string::basic_string(&v39, (this + 128), v14, 0xFFFFFFFFFFFFFFFFLL, &v40);
      v24 = *(a2 + 151);
      if ((v24 & 0x80u) == 0)
      {
        v25 = a2 + 128;
      }

      else
      {
        v25 = *(a2 + 16);
      }

      if ((v24 & 0x80u) != 0)
      {
        v24 = *(a2 + 17);
      }

      v26 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
      v18 = v39.__r_.__value_.__r.__words[0];
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v39;
      }

      else
      {
        v27 = v39.__r_.__value_.__r.__words[0];
      }

      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v39.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v29 = &v25[v24];
        if (v24 >= size)
        {
          v35 = v27->__r_.__value_.__s.__data_[0];
          v36 = v25;
          do
          {
            v37 = v24 - size;
            if (v37 == -1)
            {
              break;
            }

            v38 = memchr(v36, v35, v37 + 1);
            if (!v38)
            {
              break;
            }

            v30 = v38;
            if (!memcmp(v38, v27, size))
            {
              goto LABEL_66;
            }

            v36 = v30 + 1;
            v24 = v29 - (v30 + 1);
          }

          while (v24 >= size);
        }

        v30 = v29;
LABEL_66:
        if (v30 == v29)
        {
          v23 = -1;
        }

        else
        {
          v23 = v30 - v25;
        }
      }

      else
      {
        v23 = 0;
      }

      if ((v26 & 0x80000000) == 0)
      {
        return v23 != -1;
      }
    }

    else
    {
      std::string::basic_string(&v39, (a2 + 128), v14, 0xFFFFFFFFFFFFFFFFLL, &v40);
      v16 = *(this + 151);
      if (v16 < 0)
      {
        v15 = *(this + 16);
        v16 = *(this + 17);
      }

      v17 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
      v18 = v39.__r_.__value_.__r.__words[0];
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v39;
      }

      else
      {
        v19 = v39.__r_.__value_.__r.__words[0];
      }

      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v39.__r_.__value_.__l.__size_;
      }

      if (v20)
      {
        v21 = &v15[v16];
        if (v16 >= v20)
        {
          v31 = v19->__r_.__value_.__s.__data_[0];
          v32 = v15;
          do
          {
            v33 = v16 - v20;
            if (v33 == -1)
            {
              break;
            }

            v34 = memchr(v32, v31, v33 + 1);
            if (!v34)
            {
              break;
            }

            v22 = v34;
            if (!memcmp(v34, v19, v20))
            {
              goto LABEL_49;
            }

            v32 = v22 + 1;
            v16 = v21 - (v22 + 1);
          }

          while (v16 >= v20);
        }

        v22 = v21;
LABEL_49:
        if (v22 == v21)
        {
          v23 = -1;
        }

        else
        {
          v23 = v22 - v15;
        }
      }

      else
      {
        v23 = 0;
      }

      if ((v17 & 0x80000000) == 0)
      {
        return v23 != -1;
      }
    }

    operator delete(v18);
    return v23 != -1;
  }

  return result;
}

uint64_t SipUri::matches(SipUri *this, const SipUri *a2)
{
  v2 = *(this + 151);
  if (v2 >= 0)
  {
    v3 = *(this + 151);
  }

  else
  {
    v3 = *(this + 17);
  }

  v4 = *(a2 + 151);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 17);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = v2 >= 0 ? (this + 128) : *(this + 16);
  v9 = v5 >= 0 ? (a2 + 128) : *(a2 + 16);
  if (memcmp(v8, v9, v3))
  {
    return 0;
  }

  return SipHost::equals((this + 8), (a2 + 8), 0);
}

void SipUri::normalizedPhoneNumber(SipUri *this@<X0>, std::string *a2@<X8>)
{
  if ((*(this + 199) & 0x8000000000000000) != 0)
  {
    if (*(this + 23))
    {
LABEL_3:
      {
        __cxa_atexit(MEMORY[0x1E69E52C0], SipUri::normalizedPhoneNumber(void)const::visualSeparators, &dword_1E4C3F000);
      }

      v4 = 0;
      v5 = (this + 176);
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      while (1)
      {
        v6 = *(this + 199);
        v7 = v6 < 0 ? *(this + 23) : *(this + 199);
        if (v4 >= v7)
        {
          break;
        }

        v8 = this + 176;
        if ((v6 & 0x80000000) != 0)
        {
          v8 = *v5;
        }

        if (std::string::find(SipUri::normalizedPhoneNumber(void)const::visualSeparators, v8[v4], 0) == -1)
        {
          v9 = this + 176;
          if (*(this + 199) < 0)
          {
            v9 = *v5;
          }

          std::string::push_back(a2, v9[v4]);
        }

        ++v4;
      }

      return;
    }
  }

  else if (*(this + 199))
  {
    goto LABEL_3;
  }

  v10 = (this + 104);
  v11 = *(this + 127);
  if (v11 < 0)
  {
    if (*(this + 14) != 3)
    {
LABEL_30:
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      return;
    }

    v10 = *v10;
  }

  else if (v11 != 3)
  {
    goto LABEL_30;
  }

  v12 = *v10;
  v13 = *(v10 + 2);
  v14 = v12 == 26995 && v13 == 112;
  if (!v14 || !isPhoneNumber(this + 128))
  {
    goto LABEL_30;
  }

  if (*(this + 151) < 0)
  {
    v15 = *(this + 16);
    v16 = *(this + 17);

    std::string::__init_copy_ctor_external(a2, v15, v16);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 18);
  }
}

void sub_1E4D0E514(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipUri::anonymousUri(SipUri *this)
{
  result = kAnonymousUri;
  if (!kAnonymousUri)
  {
    operator new();
  }

  return result;
}

uint64_t IMSCallInfo::IMSCallInfo(uint64_t a1, uint64_t a2, const std::string *a3, uint64_t *a4)
{
  *a1 = &unk_1F5EF7C00;
  *(a1 + 8) = &unk_1F5EC7030;
  *(a1 + 16) = &unk_1F5EC7058;
  ims::getQueue(object);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v8 = object[0];
  *(a1 + 48) = object[0];
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 56) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 64), "com.apple.ipTelephony", "default");
  if (v8)
  {
    dispatch_release(v8);
  }

  *a1 = &unk_1F5EC6990;
  *(a1 + 8) = &unk_1F5EC6AE0;
  *(a1 + 16) = &unk_1F5EC6B08;
  *(a1 + 24) = &unk_1F5EC6B38;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = &unk_1F5EBEE78;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  SipUri::SipUri((a1 + 176));
  *(a1 + 584) = 0u;
  *(a1 + 601) = 0;
  *(a1 + 604) = 0;
  *(a1 + 606) = 0;
  *(a1 + 608) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 657) = 0u;
  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 168);
  *(a1 + 160) = v10;
  *(a1 + 168) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(a1 + 592);
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(a1 + 600) = 0;
  IPTelephonyManager::getCallManager(v12, object);
  v13 = object[1];
  v14 = LODWORD(object[0][31].isa) + 1;
  LODWORD(object[0][31].isa) = v14;
  *(a1 + 72) = v14;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  *(a1 + 602) = 0;
  std::string::operator=((a1 + 112), (a2 + 8));
  std::string::operator=((a1 + 136), a3);
  return a1;
}

void sub_1E4D0E8A0(_Unwind_Exception *a1)
{
  ims::AccessNetwork::~AccessNetwork((v1 + 624));
  std::unique_ptr<IMSCallInfo::DialInfo>::reset[abi:ne200100](v5, 0);
  v8 = *(v1 + 592);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  SipUri::~SipUri((v1 + 176));
  v9 = *(v1 + 168);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  *(v1 + 104) = v4;
  if (*(v1 + 135) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*v6);
  }

  MEMORY[0x1E69225A0](v1 + 64);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

uint64_t IMSCallManager::nextBasebandCallId(IMSCallManager *this)
{
  v1 = (*(this + 62) + 1);
  *(this + 62) = v1;
  return v1;
}

void IMSCallInfo::~IMSCallInfo(IMSCallInfo *this)
{
  *this = &unk_1F5EC6990;
  *(this + 1) = &unk_1F5EC6AE0;
  *(this + 2) = &unk_1F5EC6B08;
  *(this + 3) = &unk_1F5EC6B38;
  v2 = *(this + 20);
  if (v2)
  {
    v3 = *(v2 + 432);
    *(v2 + 424) = 0;
    *(v2 + 432) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  if (*(this + 671) < 0)
  {
    operator delete(*(this + 81));
  }

  if (*(this + 647) < 0)
  {
    operator delete(*(this + 78));
  }

  std::unique_ptr<IMSCallInfo::DialInfo>::reset[abi:ne200100](this + 77, 0);
  v4 = *(this + 74);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  SipUri::~SipUri((this + 176));
  v5 = *(this + 21);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  *(this + 13) = &unk_1F5EBEE78;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  MEMORY[0x1E69225A0](this + 64);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 4);
}

{
  IMSCallInfo::~IMSCallInfo(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIMSCallInfo::~IMSCallInfo(IMSCallInfo *this)
{
  IMSCallInfo::~IMSCallInfo((this - 8));
}

{
  IMSCallInfo::~IMSCallInfo((this - 16));
}

{
  IMSCallInfo::~IMSCallInfo((this - 24));
}

{
  IMSCallInfo::~IMSCallInfo((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  IMSCallInfo::~IMSCallInfo((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  IMSCallInfo::~IMSCallInfo((this - 24));

  JUMPOUT(0x1E69235B0);
}

void IMSCallInfo::stack(IMSCallInfo *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  IPTelephonyManager::getBambiClient(&v8);
  (*(*v8 + 184))(v8, this + 136);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!*a2)
  {
    v4 = *(this + 20);
    if (v4)
    {
      v5 = *(v4 + 384);
      if (v5 && (v5 = std::__shared_weak_count::lock(v5)) != 0)
      {
        v6 = *(v4 + 376);
      }

      else
      {
        v6 = 0;
      }

      v7 = a2[1];
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }
}

void sub_1E4D0ECA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallInfo::startCall(IMSCallInfo *this, const SipUri *a2, const BambiCallOptions *a3, const BambiEmergencyCallOptions *a4)
{
  if (*(this + 20))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "call");
    v30[0] = 0;
    v33 = 0;
    v4 = ims::error(&__p, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "IMSCallInfo::startCall called on an existing call", 49);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }

    if (v15 < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v28 = 0;
  v29 = 0;
  IPTelephonyManager::getBambiClient(&__p);
  (*(*__p + 184))(&v28);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if ((*(this + 159) & 0x8000000000000000) != 0)
  {
    if (!*(this + 18))
    {
      goto LABEL_19;
    }

LABEL_14:
    if (!v28)
    {
      goto LABEL_19;
    }

    *(this + 600) = 0;
    if (a4)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "call");
      v20[0] = 0;
      v23 = 0;
      v8 = ims::debug(&__p, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Starting emergency call to uri = ", 33);
      *(v8 + 17) = 0;
      (*(*a2 + 40))(a2, v8);
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v23 == 1 && v22 < 0)
      {
        v9 = v21;
LABEL_28:
        operator delete(v9);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "call");
      v16[0] = 0;
      v19 = 0;
      v11 = ims::debug(&__p, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Starting call to uri = ", 23);
      *(v11 + 17) = 0;
      (*(*a2 + 40))(a2, v11);
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        v9 = v17;
        goto LABEL_28;
      }
    }

    if (v15 < 0)
    {
      operator delete(__p);
    }

    operator new();
  }

  if (*(this + 159))
  {
    goto LABEL_14;
  }

LABEL_19:
  std::string::basic_string[abi:ne200100]<0>(&__p, "call");
  v24[0] = 0;
  v27 = 0;
  v10 = ims::error(&__p, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "IMSCallInfo::startCall called for invalid stack", 47);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  return 0;
}

void sub_1E4D0F8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46)
{
  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  v48 = *(v46 - 128);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<IMSCallInfo::DialInfo>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    SipUri::~SipUri((v2 + 360));
    BambiCallOptions::~BambiCallOptions((v2 + 8));

    JUMPOUT(0x1E69235B0);
  }

  return result;
}

void IMSCallInfo::sendAccessBarringDisconnect(IMSCallInfo *this)
{
  v27 = 65792;
  v29 = 0;
  memset(&v28, 0, sizeof(v28));
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  std::string::__assign_external(&v28, "SessionTerminated:AccessBarring", 0x1FuLL);
  LODWORD(v29) = 4;
  v25 = 0;
  v26 = 0;
  IPTelephonyManager::getBambiClient(&v22);
  (*(*v22 + 184))(&v25);
  v2 = @"kIMSCallDisconnectionReasonAccessBarring";
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v25)
  {
    v3 = SipStack::prefs(v25);
    if (ImsPrefs::CSFBOnAccessBarred(v3) && *(v25 + 80) == 2)
    {
      v4 = *(v25 + 31);
      v5 = *(v25 + 32);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        if (*(SipUserAgent::config(v4) + 456) != 1)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          goto LABEL_29;
        }
      }

      else if ((*(SipUserAgent::config(v4) + 456) & 1) == 0)
      {
        goto LABEL_29;
      }

      v6 = *(v25 + 31);
      v7 = *(v25 + 32);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(SipUserAgent::config(v6) + 912) & 1) == 0 && !ims::AccessNetwork::isNR((v25 + 3432));
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        if (!v8)
        {
          goto LABEL_29;
        }
      }

      else if (!v8)
      {
        goto LABEL_29;
      }

      std::string::basic_string[abi:ne200100]<0>(&v22, "call");
      v18[0] = 0;
      v21 = 0;
      v9 = ims::error(&v22, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "IMSCallInfo::sendAccessBarringDisconnect falling back to CS", 59);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v22);
      }

      v2 = @"kCallDisconnectionReasonRequiresCSFB";
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        *v28.__r_.__value_.__l.__data_ = 0;
        v28.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v28.__r_.__value_.__s.__data_[0] = 0;
        *(&v28.__r_.__value_.__s + 23) = 0;
      }
    }
  }

LABEL_29:
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___ZN11IMSCallInfo27sendAccessBarringDisconnectEv_block_invoke;
  v10[3] = &__block_descriptor_tmp_44;
  v10[4] = this;
  v10[5] = v2;
  v11 = v27;
  v12 = BYTE2(v27);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = v28;
  }

  v14 = v29;
  v15 = BYTE4(v29);
  if (SHIBYTE(v31[0]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v30, *(&v30 + 1));
  }

  else
  {
    *&v16.__r_.__value_.__l.__data_ = v30;
    v16.__r_.__value_.__r.__words[2] = v31[0];
  }

  if (SHIBYTE(v31[3]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v31[1], v31[2]);
  }

  else
  {
    v17 = *&v31[1];
  }

  ims::performBlock(v10);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (SHIBYTE(v31[3]) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v31[0]) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}