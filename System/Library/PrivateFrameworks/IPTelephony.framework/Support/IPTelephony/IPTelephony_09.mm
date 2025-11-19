uint64_t awd::metrics::ATM_Registration_Result::ByteSize(awd::metrics::ATM_Registration_Result *this)
{
  v2 = *(this + 53);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_61;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 53);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 4);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_13:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 53);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(this + 3);
  v9 = *(v8 + 23);
  v10 = v9;
  v11 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    v9 = *(v8 + 23);
    v11 = *(v8 + 8);
    v2 = *(this + 53);
    v10 = *(v8 + 23);
  }

  else
  {
    v13 = 1;
  }

  if (v10 < 0)
  {
    v9 = v11;
  }

  v3 += v13 + v9 + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_35:
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
    v2 = *(this + 53);
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

  v3 += v19 + v15 + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_44:
  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v21 = 2;
  }

  v3 += v21;
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

LABEL_48:
  v22 = *(this + 5);
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
    v2 = *(this + 53);
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

  v3 += v27 + v23 + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_57:
    v28 = *(this + 13);
    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
      v2 = *(this + 53);
    }

    else
    {
      v29 = 2;
    }

    v3 += v29;
  }

LABEL_61:
  if ((v2 & 0x1FE00) == 0)
  {
    goto LABEL_110;
  }

  if ((v2 & 0x200) != 0)
  {
    v30 = *(this + 10);
    v31 = *(v30 + 23);
    v32 = v31;
    v33 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v34 = *(v30 + 23);
    }

    else
    {
      v34 = v33;
    }

    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
      v31 = *(v30 + 23);
      v33 = *(v30 + 8);
      v2 = *(this + 53);
      v32 = *(v30 + 23);
    }

    else
    {
      v35 = 1;
    }

    if (v32 < 0)
    {
      v31 = v33;
    }

    v3 += v35 + v31 + 1;
    if ((v2 & 0x400) == 0)
    {
LABEL_64:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_85;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_64;
  }

  v36 = *(this + 22);
  if ((v36 & 0x80000000) != 0)
  {
    v37 = 11;
  }

  else if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v37 = 2;
  }

  v3 += v37;
  if ((v2 & 0x800) == 0)
  {
LABEL_65:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_89;
  }

LABEL_85:
  v38 = *(this + 23);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v39 = 2;
  }

  v3 += v39;
  if ((v2 & 0x1000) == 0)
  {
LABEL_66:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_98;
  }

LABEL_89:
  v40 = *(this + 12);
  v41 = *(v40 + 23);
  v42 = v41;
  v43 = *(v40 + 8);
  if ((v41 & 0x80u) == 0)
  {
    v44 = *(v40 + 23);
  }

  else
  {
    v44 = v43;
  }

  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44);
    v41 = *(v40 + 23);
    v43 = *(v40 + 8);
    v2 = *(this + 53);
    v42 = *(v40 + 23);
  }

  else
  {
    v45 = 1;
  }

  if (v42 < 0)
  {
    v41 = v43;
  }

  v3 += v45 + v41 + 1;
  if ((v2 & 0x2000) == 0)
  {
LABEL_67:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_102;
  }

LABEL_98:
  v46 = *(this + 26);
  if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v47 = 2;
  }

  v3 += v47;
  if ((v2 & 0x4000) == 0)
  {
LABEL_68:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_106;
  }

LABEL_102:
  v48 = *(this + 27);
  if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v49 = 2;
  }

  v3 += v49;
  if ((v2 & 0x8000) != 0)
  {
LABEL_106:
    v50 = *(this + 28);
    if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
      v2 = *(this + 53);
    }

    else
    {
      v51 = 3;
    }

    v3 += v51;
  }

LABEL_110:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_121;
  }

  if ((v2 & 0x10000) != 0)
  {
    v3 += 3;
  }

  if ((v2 & 0x20000) != 0)
  {
    v52 = *(this + 29);
    if (v52 >= 0x80)
    {
      v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
      v2 = *(this + 53);
    }

    else
    {
      v53 = 3;
    }

    v3 += v53;
    if ((v2 & 0x40000) == 0)
    {
LABEL_115:
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_140;
    }
  }

  else if ((v2 & 0x40000) == 0)
  {
    goto LABEL_115;
  }

  v56 = *(this + 30);
  if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v57 = 3;
  }

  v3 += v57;
  if ((v2 & 0x80000) == 0)
  {
LABEL_116:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_144;
  }

LABEL_140:
  v58 = *(this + 31);
  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v59 = 3;
  }

  v3 += v59;
  if ((v2 & 0x100000) == 0)
  {
LABEL_117:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_148;
  }

LABEL_144:
  v60 = *(this + 32);
  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v61 = 3;
  }

  v3 += v61;
  if ((v2 & 0x200000) == 0)
  {
LABEL_118:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_152;
  }

LABEL_148:
  v62 = *(this + 33);
  if (v62 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v63 = 3;
  }

  v3 += v63;
  if ((v2 & 0x400000) == 0)
  {
LABEL_119:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_152:
  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 17)) + 2;
  v2 = *(this + 53);
  if ((v2 & 0x800000) != 0)
  {
LABEL_120:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 18)) + 2;
    v2 = *(this + 53);
  }

LABEL_121:
  if (!HIBYTE(v2))
  {
    goto LABEL_184;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 19)) + 2;
    v2 = *(this + 53);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_124:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_131;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_124;
  }

  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 20)) + 2;
  v2 = *(this + 53);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_125:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_132;
  }

LABEL_131:
  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 21)) + 2;
  v2 = *(this + 53);
  if ((v2 & 0x8000000) == 0)
  {
    goto LABEL_156;
  }

LABEL_132:
  v54 = *(this + 45);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v55 = 3;
  }

  v3 += v55;
LABEL_156:
  if ((v2 & 0x10000000) != 0)
  {
    v3 += 3;
  }

  if ((v2 & 0x20000000) != 0)
  {
    v64 = *(this + 48);
    if (v64 >= 0x80)
    {
      v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
      v2 = *(this + 53);
    }

    else
    {
      v65 = 3;
    }

    v3 += v65;
    if ((v2 & 0x40000000) == 0)
    {
LABEL_160:
      if ((v2 & 0x80000000) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_175;
    }
  }

  else if ((v2 & 0x40000000) == 0)
  {
    goto LABEL_160;
  }

  v66 = *(this + 23);
  v67 = *(v66 + 23);
  v68 = v67;
  v69 = *(v66 + 8);
  if ((v67 & 0x80u) == 0)
  {
    v70 = *(v66 + 23);
  }

  else
  {
    v70 = v69;
  }

  if (v70 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
    v67 = *(v66 + 23);
    v69 = *(v66 + 8);
    v2 = *(this + 53);
    v68 = *(v66 + 23);
  }

  else
  {
    v71 = 1;
  }

  if (v68 < 0)
  {
    v67 = v69;
  }

  v3 += v71 + v67 + 2;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_175:
    v72 = *(this + 25);
    v73 = *(v72 + 23);
    v74 = v73;
    v75 = *(v72 + 8);
    if ((v73 & 0x80u) == 0)
    {
      v76 = *(v72 + 23);
    }

    else
    {
      v76 = v75;
    }

    if (v76 >= 0x80)
    {
      v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76);
      v73 = *(v72 + 23);
      v75 = *(v72 + 8);
      v74 = *(v72 + 23);
    }

    else
    {
      v77 = 1;
    }

    if (v74 < 0)
    {
      v73 = v75;
    }

    v3 += v77 + v73 + 2;
  }

LABEL_184:
  LOBYTE(v78) = *(this + 216);
  if (v78)
  {
    if (*(this + 216))
    {
      v79 = *(this + 49);
      if (v79 >= 0x80)
      {
        v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
        v78 = *(this + 54);
      }

      else
      {
        v80 = 3;
      }

      v3 += v80;
    }

    if ((v78 & 2) != 0)
    {
      v3 += 3;
    }
  }

  v81 = *(this + 16);
  v82 = (v81 + v3);
  if (v81 >= 1)
  {
    for (i = 0; i < v81; ++i)
    {
      v84 = *(*(this + 7) + 8 * i);
      v85 = *(v84 + 23);
      v86 = v85;
      v87 = *(v84 + 8);
      if ((v85 & 0x80u) == 0)
      {
        v88 = *(v84 + 23);
      }

      else
      {
        v88 = v87;
      }

      if (v88 >= 0x80)
      {
        v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88);
        v85 = *(v84 + 23);
        v87 = *(v84 + 8);
        v81 = *(this + 16);
        v86 = *(v84 + 23);
      }

      else
      {
        v89 = 1;
      }

      if (v86 < 0)
      {
        v85 = v87;
      }

      v82 = (v89 + v82 + v85);
    }
  }

  *(this + 52) = v82;
  return v82;
}

uint64_t awd::metrics::ATM_Registration_Result::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v49);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 7), (lpsrc + 7));
  v6 = *(lpsrc + 53);
  if (!v6)
  {
    goto LABEL_19;
  }

  if (v6)
  {
    v7 = lpsrc[1];
    *(this + 53) |= 1u;
    this[1] = v7;
    v6 = *(lpsrc + 53);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(lpsrc + 4);
    if ((v8 - 1) >= 0xD)
    {
      __assert_rtn("set_type", "CATM.pb.h", 7735, "::awd::metrics::enum_ims_reg_type_IsValid(value)");
    }

    *(this + 53) |= 2u;
    *(this + 4) = v8;
    v6 = *(lpsrc + 53);
  }

  if ((v6 & 4) != 0)
  {
    v9 = *(lpsrc + 5);
    if ((v9 - 1) >= 4)
    {
      __assert_rtn("set_feature", "CATM.pb.h", 7758, "::awd::metrics::enum_ims_reg_feature_IsValid(value)");
    }

    *(this + 53) |= 4u;
    *(this + 5) = v9;
    v6 = *(lpsrc + 53);
  }

  v10 = MEMORY[0x1E69E5958];
  if ((v6 & 8) != 0)
  {
    v24 = lpsrc[3];
    *(this + 53) |= 8u;
    v25 = this[3];
    if (v25 == v10)
    {
      operator new();
    }

    result = std::string::operator=(v25, v24);
    v6 = *(lpsrc + 53);
    if ((v6 & 0x10) == 0)
    {
LABEL_15:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_16;
      }

LABEL_67:
      v28 = *(lpsrc + 12);
      *(this + 53) |= 0x20u;
      *(this + 12) = v28;
      v6 = *(lpsrc + 53);
      if ((v6 & 0x40) == 0)
      {
LABEL_17:
        if ((v6 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_68;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v26 = lpsrc[4];
  *(this + 53) |= 0x10u;
  v27 = this[4];
  if (v27 == v10)
  {
    operator new();
  }

  result = std::string::operator=(v27, v26);
  v6 = *(lpsrc + 53);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_67;
  }

LABEL_16:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_68:
  v29 = lpsrc[5];
  *(this + 53) |= 0x40u;
  v30 = this[5];
  if (v30 == v10)
  {
    operator new();
  }

  result = std::string::operator=(v30, v29);
  v6 = *(lpsrc + 53);
  if ((v6 & 0x80) != 0)
  {
LABEL_18:
    v11 = *(lpsrc + 13);
    *(this + 53) |= 0x80u;
    *(this + 13) = v11;
    v6 = *(lpsrc + 53);
  }

LABEL_19:
  if ((v6 & 0x1FE00) == 0)
  {
    goto LABEL_33;
  }

  if ((v6 & 0x200) != 0)
  {
    v12 = lpsrc[10];
    *(this + 53) |= 0x200u;
    v13 = this[10];
    if (v13 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    result = std::string::operator=(v13, v12);
    v6 = *(lpsrc + 53);
  }

  if ((v6 & 0x400) != 0)
  {
    v14 = *(lpsrc + 22);
    result = awd::metrics::RESPONSE_Code_IsValid(v14);
    if ((result & 1) == 0)
    {
      __assert_rtn("set_result", "CATM.pb.h", 8149, "::awd::metrics::RESPONSE_Code_IsValid(value)");
    }

    *(this + 53) |= 0x400u;
    *(this + 22) = v14;
    v6 = *(lpsrc + 53);
  }

  if ((v6 & 0x800) != 0)
  {
    v31 = *(lpsrc + 23);
    *(this + 53) |= 0x800u;
    *(this + 23) = v31;
    v6 = *(lpsrc + 53);
    if ((v6 & 0x1000) == 0)
    {
LABEL_29:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_76;
    }
  }

  else if ((v6 & 0x1000) == 0)
  {
    goto LABEL_29;
  }

  v32 = lpsrc[12];
  *(this + 53) |= 0x1000u;
  v33 = this[12];
  if (v33 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v33, v32);
  v6 = *(lpsrc + 53);
  if ((v6 & 0x2000) == 0)
  {
LABEL_30:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_77;
  }

LABEL_76:
  v34 = *(lpsrc + 26);
  *(this + 53) |= 0x2000u;
  *(this + 26) = v34;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x4000) == 0)
  {
LABEL_31:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_77:
  v35 = *(lpsrc + 27);
  *(this + 53) |= 0x4000u;
  *(this + 27) = v35;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x8000) != 0)
  {
LABEL_32:
    v15 = *(lpsrc + 28);
    *(this + 53) |= 0x8000u;
    *(this + 28) = v15;
    v6 = *(lpsrc + 53);
  }

LABEL_33:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_43;
  }

  if ((v6 & 0x10000) != 0)
  {
    v17 = *(lpsrc + 176);
    *(this + 53) |= 0x10000u;
    *(this + 176) = v17;
    v6 = *(lpsrc + 53);
    if ((v6 & 0x20000) == 0)
    {
LABEL_36:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_55;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  v18 = *(lpsrc + 29);
  *(this + 53) |= 0x20000u;
  *(this + 29) = v18;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x40000) == 0)
  {
LABEL_37:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

LABEL_55:
  v19 = *(lpsrc + 30);
  *(this + 53) |= 0x40000u;
  *(this + 30) = v19;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x80000) == 0)
  {
LABEL_38:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_57;
  }

LABEL_56:
  v20 = *(lpsrc + 31);
  *(this + 53) |= 0x80000u;
  *(this + 31) = v20;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x100000) == 0)
  {
LABEL_39:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_58;
  }

LABEL_57:
  v21 = *(lpsrc + 32);
  *(this + 53) |= 0x100000u;
  *(this + 32) = v21;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x200000) == 0)
  {
LABEL_40:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_59;
  }

LABEL_58:
  v22 = *(lpsrc + 33);
  *(this + 53) |= 0x200000u;
  *(this + 33) = v22;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x400000) == 0)
  {
LABEL_41:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_59:
  v23 = lpsrc[17];
  *(this + 53) |= 0x400000u;
  this[17] = v23;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x800000) != 0)
  {
LABEL_42:
    v16 = lpsrc[18];
    *(this + 53) |= 0x800000u;
    this[18] = v16;
    v6 = *(lpsrc + 53);
  }

LABEL_43:
  if (!HIBYTE(v6))
  {
    goto LABEL_91;
  }

  if ((v6 & 0x1000000) != 0)
  {
    v36 = lpsrc[19];
    *(this + 53) |= 0x1000000u;
    this[19] = v36;
    v6 = *(lpsrc + 53);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_46:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_81;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_46;
  }

  v37 = lpsrc[20];
  *(this + 53) |= 0x2000000u;
  this[20] = v37;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_82;
  }

LABEL_81:
  v38 = lpsrc[21];
  *(this + 53) |= 0x4000000u;
  this[21] = v38;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_48:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_83;
  }

LABEL_82:
  v39 = *(lpsrc + 45);
  *(this + 53) |= 0x8000000u;
  *(this + 45) = v39;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_49:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_84;
  }

LABEL_83:
  v40 = *(lpsrc + 177);
  *(this + 53) |= 0x10000000u;
  *(this + 177) = v40;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_50:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_85;
  }

LABEL_84:
  v41 = *(lpsrc + 48);
  *(this + 53) |= 0x20000000u;
  *(this + 48) = v41;
  v6 = *(lpsrc + 53);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_51:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_88;
  }

LABEL_85:
  v42 = lpsrc[23];
  *(this + 53) |= 0x40000000u;
  v43 = this[23];
  if (v43 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v43, v42);
  if ((*(lpsrc + 53) & 0x80000000) != 0)
  {
LABEL_88:
    v44 = lpsrc[25];
    *(this + 53) |= 0x80000000;
    v45 = this[25];
    if (v45 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    result = std::string::operator=(v45, v44);
  }

LABEL_91:
  LOBYTE(v46) = *(lpsrc + 216);
  if (v46)
  {
    if (lpsrc[27])
    {
      v47 = *(lpsrc + 49);
      *(this + 54) |= 1u;
      *(this + 49) = v47;
      v46 = *(lpsrc + 54);
    }

    if ((v46 & 2) != 0)
    {
      v48 = *(lpsrc + 178);
      *(this + 54) |= 2u;
      *(this + 178) = v48;
    }
  }

  return result;
}

void sub_1E4CEC020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase *wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v6) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
      }

      v8 = *(*a2 + 8 * v7);
      v9 = *(a1 + 3);
      v10 = *(a1 + 2);
      if (v10 >= v9)
      {
        if (v9 == *(a1 + 4))
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v9 = *(a1 + 3);
        }

        *(a1 + 3) = v9 + 1;
        v12 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v13 = *a1;
        v14 = *(a1 + 2);
        *(a1 + 2) = v14 + 1;
        *(v13 + 8 * v14) = v12;
      }

      else
      {
        v11 = *a1;
        *(a1 + 2) = v10 + 1;
        v12 = *(v11 + 8 * v10);
      }

      result = std::string::operator=(v12, v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  return result;
}

void sub_1E4CEC160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double awd::metrics::ATM_CallAttemptEvent::SharedCtor(awd::metrics::ATM_CallAttemptEvent *this)
{
  v1 = MEMORY[0x1E69E5958];
  *(this + 65) = 0;
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 28) = 0;
  *(this + 6) = -1;
  *(this + 29) = 0;
  *(this + 31) = 0;
  *(this + 72) = 0;
  *&result = 0xFFFFFFFFLL;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 73) = 0;
  *(this + 7) = v1;
  *(this + 8) = v1;
  *(this + 19) = 0;
  *(this + 10) = v1;
  *(this + 11) = v1;
  *(this + 13) = v1;
  *(this + 14) = v1;
  *(this + 75) = 0;
  *(this + 12) = 0;
  *(this + 15) = 0;
  *(this + 16) = v1;
  *(this + 17) = v1;
  *(this + 18) = v1;
  *(this + 94) = 0;
  *(this + 46) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = v1;
  *(this + 64) = 0;
  *(this + 27) = v1;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = v1;
  *(this + 33) = 0;
  return result;
}

void awd::metrics::ATM_CallAttemptEvent::~ATM_CallAttemptEvent(awd::metrics::ATM_CallAttemptEvent *this)
{
  *this = &unk_1F5EC5D40;
  v2 = *(this + 2);
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  v5 = *(this + 5);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    MEMORY[0x1E69235B0](v5, 0x1012C40EC159624);
  }

  v7 = *(this + 6);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    MEMORY[0x1E69235B0](v7, 0x1012C40EC159624);
  }

  v9 = *(this + 7);
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    MEMORY[0x1E69235B0](v9, 0x1012C40EC159624);
  }

  v11 = *(this + 8);
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    MEMORY[0x1E69235B0](v11, 0x1012C40EC159624);
  }

  v12 = *(this + 10);
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x1E69235B0](v12, 0x1012C40EC159624);
  }

  v13 = *(this + 11);
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    MEMORY[0x1E69235B0](v13, 0x1012C40EC159624);
  }

  v14 = *(this + 13);
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    MEMORY[0x1E69235B0](v14, 0x1012C40EC159624);
  }

  v15 = *(this + 14);
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    MEMORY[0x1E69235B0](v15, 0x1012C40EC159624);
  }

  v16 = *(this + 16);
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    MEMORY[0x1E69235B0](v16, 0x1012C40EC159624);
  }

  v17 = *(this + 17);
  if (v17 != v3 && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    MEMORY[0x1E69235B0](v17, 0x1012C40EC159624);
  }

  v18 = *(this + 18);
  if (v18 != v3 && v18)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    MEMORY[0x1E69235B0](v18, 0x1012C40EC159624);
  }

  v19 = *(this + 22);
  if (v19 != v3 && v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    MEMORY[0x1E69235B0](v19, 0x1012C40EC159624);
  }

  v20 = *(this + 27);
  if (v20 != v3 && v20)
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    MEMORY[0x1E69235B0](v20, 0x1012C40EC159624);
  }

  v21 = *(this + 31);
  if (v21 != v3 && v21)
  {
    if (*(v21 + 23) < 0)
    {
      operator delete(*v21);
    }

    MEMORY[0x1E69235B0](v21, 0x1012C40EC159624);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::ATM_CallAttemptEvent::~ATM_CallAttemptEvent(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_CallAttemptEvent::Clear(awd::metrics::ATM_CallAttemptEvent *this)
{
  v2 = *(this + 66);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
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

    *(this + 3) = 0xFFFFFFFFLL;
    *(this + 72) = 0;
    v2 = *(this + 66);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 8) = -1;
    if ((v2 & 0x200) != 0)
    {
      v4 = *(this + 5);
      if (v4 != MEMORY[0x1E69E5958])
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

    *(this + 9) = 0;
    if ((*(this + 265) & 8) != 0)
    {
      v5 = *(this + 6);
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

    *(this + 73) = 0;
    if ((*(this + 265) & 0x20) != 0)
    {
      v6 = *(this + 7);
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

    if ((*(this + 265) & 0x40) != 0)
    {
      v7 = *(this + 8);
      if (v7 != MEMORY[0x1E69E5958])
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

    *(this + 19) = 0;
    v2 = *(this + 66);
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 24) = 0;
    *(this + 74) = 0;
    if ((v2 & 0x40000) != 0)
    {
      v8 = *(this + 10);
      if (v8 != MEMORY[0x1E69E5958])
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

    if ((*(this + 266) & 8) != 0)
    {
      v9 = *(this + 11);
      if (v9 != MEMORY[0x1E69E5958])
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

    if ((*(this + 266) & 0x10) != 0)
    {
      v10 = *(this + 13);
      if (v10 != MEMORY[0x1E69E5958])
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }

    if ((*(this + 266) & 0x20) != 0)
    {
      v11 = *(this + 14);
      if (v11 != MEMORY[0x1E69E5958])
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

    *(this + 75) = 0;
    *(this + 25) = 0;
    v2 = *(this + 66);
  }

  if (HIBYTE(v2))
  {
    *(this + 15) = 0;
    if ((v2 & 0x4000000) != 0)
    {
      v12 = *(this + 16);
      if (v12 != MEMORY[0x1E69E5958])
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    if ((*(this + 267) & 8) != 0)
    {
      v13 = *(this + 17);
      if (v13 != MEMORY[0x1E69E5958])
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }

    if ((*(this + 267) & 0x10) != 0)
    {
      v14 = *(this + 18);
      if (v14 != MEMORY[0x1E69E5958])
      {
        if (*(v14 + 23) < 0)
        {
          **v14 = 0;
          *(v14 + 8) = 0;
        }

        else
        {
          *v14 = 0;
          *(v14 + 23) = 0;
        }
      }
    }

    *(this + 19) = 0;
    *(this + 188) = 0;
  }

  v15 = *(this + 67);
  if (v15)
  {
    *(this + 46) = 0;
    *(this + 20) = 0;
    *(this + 21) = 0;
    if ((v15 & 0x10) != 0)
    {
      v16 = *(this + 22);
      if (v16 != MEMORY[0x1E69E5958])
      {
        if (*(v16 + 23) < 0)
        {
          **v16 = 0;
          *(v16 + 8) = 0;
        }

        else
        {
          *v16 = 0;
          *(v16 + 23) = 0;
        }
      }
    }

    if ((*(this + 268) & 0x40) != 0)
    {
      v17 = *(this + 27);
      if (v17 != MEMORY[0x1E69E5958])
      {
        if (*(v17 + 23) < 0)
        {
          **v17 = 0;
          *(v17 + 8) = 0;
        }

        else
        {
          *v17 = 0;
          *(v17 + 23) = 0;
        }
      }
    }

    *(this + 56) = 0;
    v15 = *(this + 67);
  }

  if ((v15 & 0xFF00) != 0)
  {
    *(this + 189) = 0;
    *(this + 64) = 0;
    *(this + 236) = 0;
    *(this + 228) = 0;
    *(this + 61) = 0;
    if ((v15 & 0x8000) != 0)
    {
      v18 = *(this + 31);
      if (v18 != MEMORY[0x1E69E5958])
      {
        if (*(v18 + 23) < 0)
        {
          **v18 = 0;
          *(v18 + 8) = 0;
        }

        else
        {
          *v18 = 0;
          *(v18 + 23) = 0;
        }
      }
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 192);
  *(this + 33) = 0;
  return result;
}

uint64_t awd::metrics::ATM_CallAttemptEvent::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
  v4 = (this + 256);
  v5 = MEMORY[0x1E69E5958];
LABEL_2:
  while (2)
  {
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
    {
      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      v7 = this;
      *(a2 + 8) = this;
      if (!this)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = v7;
      *(a2 + 1) = v6 + 1;
      if (!v7)
      {
        return 1;
      }
    }

    v8 = v7 >> 3;
    v9 = v7 & 7;
    switch(v7 >> 3)
    {
      case 1u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
          if (!this)
          {
            return this;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(v3 + 8) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        v41 = *(v3 + 264) | 1;
        *(v3 + 264) = v41;
        if (v13 < v10 && *v13 == 18)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_242;
        }

        continue;
      case 2u:
        if (v9 != 2)
        {
          goto LABEL_110;
        }

        v41 = *(v3 + 264);
LABEL_242:
        *(v3 + 264) = v41 | 2;
        if (*(v3 + 16) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v88 = *(a2 + 1);
        v34 = *(a2 + 2);
        if (v88 >= v34 || *v88 != 24)
        {
          continue;
        }

        v35 = v88 + 1;
        *(a2 + 1) = v35;
LABEL_248:
        v148 = 0;
        if (v35 >= v34 || (v89 = *v35, (v89 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v89 = v148;
          v90 = *(a2 + 1);
          v34 = *(a2 + 2);
        }

        else
        {
          v90 = v35 + 1;
          *(a2 + 1) = v90;
        }

        *(v3 + 28) = v89 != 0;
        *(v3 + 264) |= 4u;
        if (v90 >= v34 || *v90 != 32)
        {
          continue;
        }

        v39 = v90 + 1;
        *(a2 + 1) = v39;
LABEL_256:
        v148 = 0;
        if (v39 >= v34 || (v91 = *v39, (v91 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v91 = v148;
        }

        else
        {
          *(a2 + 1) = v39 + 1;
        }

        if (v91 + 1 <= 7)
        {
          *(v3 + 264) |= 8u;
          *(v3 + 24) = v91;
        }

        v92 = *(a2 + 1);
        v29 = *(a2 + 2);
        if (v92 >= v29 || *v92 != 40)
        {
          continue;
        }

        v30 = v92 + 1;
        *(a2 + 1) = v30;
LABEL_266:
        v148 = 0;
        if (v30 >= v29 || (v93 = *v30, (v93 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v93 = v148;
          v94 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v94 = v30 + 1;
          *(a2 + 1) = v94;
        }

        *(v3 + 29) = v93 != 0;
        *(v3 + 264) |= 0x10u;
        if (v94 >= v29 || *v94 != 48)
        {
          continue;
        }

        v46 = v94 + 1;
        *(a2 + 1) = v46;
LABEL_274:
        v148 = 0;
        if (v46 >= v29 || (v95 = *v46, (v95 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v95 = v148;
          v96 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v96 = v46 + 1;
          *(a2 + 1) = v96;
        }

        *(v3 + 30) = v95 != 0;
        *(v3 + 264) |= 0x20u;
        if (v96 >= v29 || *v96 != 56)
        {
          continue;
        }

        v49 = v96 + 1;
        *(a2 + 1) = v49;
LABEL_282:
        v148 = 0;
        if (v49 >= v29 || (v97 = *v49, (v97 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v97 = v148;
          v98 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v98 = v49 + 1;
          *(a2 + 1) = v98;
        }

        *(v3 + 31) = v97 != 0;
        *(v3 + 264) |= 0x40u;
        if (v98 >= v29 || *v98 != 64)
        {
          continue;
        }

        v40 = v98 + 1;
        *(a2 + 1) = v40;
LABEL_290:
        v148 = 0;
        if (v40 >= v29 || (v99 = *v40, (v99 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v99 = v148;
          v100 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v100 = v40 + 1;
          *(a2 + 1) = v100;
        }

        *(v3 + 72) = v99 != 0;
        *(v3 + 264) |= 0x80u;
        if (v100 >= v29 || *v100 != 72)
        {
          continue;
        }

        v52 = v100 + 1;
        *(a2 + 1) = v52;
LABEL_298:
        v148 = 0;
        if (v52 >= v29 || (v101 = *v52, (v101 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v101 = v148;
        }

        else
        {
          *(a2 + 1) = v52 + 1;
        }

        if (v101 - 1 < 6 || v101 == -1)
        {
          *(v3 + 264) |= 0x100u;
          *(v3 + 32) = v101;
        }

        v103 = *(a2 + 1);
        if (v103 >= *(a2 + 2) || *v103 != 82)
        {
          continue;
        }

        *(a2 + 1) = v103 + 1;
LABEL_312:
        *(v3 + 264) |= 0x200u;
        if (*(v3 + 40) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v104 = *(a2 + 1);
        v50 = *(a2 + 2);
        if (v104 >= v50 || *v104 != 88)
        {
          continue;
        }

        v51 = v104 + 1;
        *(a2 + 1) = v51;
LABEL_318:
        if (v51 >= v50 || (v105 = *v51, v105 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 36));
          if (!this)
          {
            return this;
          }

          v106 = *(a2 + 1);
          v50 = *(a2 + 2);
        }

        else
        {
          *(v3 + 36) = v105;
          v106 = v51 + 1;
          *(a2 + 1) = v106;
        }

        v28 = *(v3 + 264) | 0x400;
        *(v3 + 264) = v28;
        if (v106 >= v50 || *v106 != 98)
        {
          continue;
        }

        *(a2 + 1) = v106 + 1;
LABEL_326:
        *(v3 + 264) = v28 | 0x800;
        if (*(v3 + 48) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v107 = *(a2 + 1);
        v32 = *(a2 + 2);
        if (v107 >= v32 || *v107 != 104)
        {
          continue;
        }

        v33 = v107 + 1;
        *(a2 + 1) = v33;
LABEL_332:
        v148 = 0;
        if (v33 >= v32 || (v108 = *v33, (v108 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v108 = v148;
          v109 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          v109 = v33 + 1;
          *(a2 + 1) = v109;
        }

        *(v3 + 73) = v108 != 0;
        v48 = *(v3 + 264) | 0x1000;
        *(v3 + 264) = v48;
        if (v109 >= v32 || *v109 != 114)
        {
          continue;
        }

        *(a2 + 1) = v109 + 1;
LABEL_340:
        *(v3 + 264) = v48 | 0x2000;
        if (*(v3 + 56) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v110 = *(a2 + 1);
        if (v110 >= *(a2 + 2) || *v110 != 122)
        {
          continue;
        }

        *(a2 + 1) = v110 + 1;
LABEL_346:
        *(v3 + 264) |= 0x4000u;
        if (*(v3 + 64) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v111 = *(a2 + 1);
        v37 = *(a2 + 2);
        if (v37 - v111 < 2 || *v111 != 128 || v111[1] != 1)
        {
          continue;
        }

        v38 = (v111 + 2);
        *(a2 + 1) = v38;
LABEL_353:
        if (v38 >= v37 || (v112 = *v38, v112 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 76));
          if (!this)
          {
            return this;
          }

          v113 = *(a2 + 1);
          v37 = *(a2 + 2);
        }

        else
        {
          *(v3 + 76) = v112;
          v113 = (v38 + 1);
          *(a2 + 1) = v113;
        }

        v26 = *(v3 + 264) | 0x8000;
        *(v3 + 264) = v26;
        if (v37 - v113 < 2 || *v113 != 138 || v113[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v113 + 2;
LABEL_362:
        *(v3 + 264) = v26 | 0x40000;
        if (*(v3 + 80) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v114 = *(a2 + 1);
        if (*(a2 + 4) - v114 < 2 || *v114 != 146 || v114[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v114 + 2;
LABEL_369:
        *(v3 + 264) |= 0x80000u;
        if (*(v3 + 88) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v115 = *(a2 + 1);
        if (*(a2 + 4) - v115 < 2 || *v115 != 154 || v115[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v115 + 2;
LABEL_376:
        *(v3 + 264) |= 0x100000u;
        if (*(v3 + 104) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v116 = *(a2 + 1);
        if (*(a2 + 4) - v116 < 2 || *v116 != 162 || v116[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v116 + 2;
LABEL_383:
        *(v3 + 264) |= 0x200000u;
        if (*(v3 + 112) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v117 = *(a2 + 1);
        v44 = *(a2 + 2);
        if (v44 - v117 < 2 || *v117 != 168 || v117[1] != 1)
        {
          continue;
        }

        v45 = (v117 + 2);
        *(a2 + 1) = v45;
LABEL_390:
        v148 = 0;
        if (v45 >= v44 || (v118 = *v45, (v118 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v118 = v148;
          v119 = *(a2 + 1);
          v44 = *(a2 + 2);
        }

        else
        {
          v119 = (v45 + 1);
          *(a2 + 1) = v119;
        }

        *(v3 + 75) = v118 != 0;
        *(v3 + 264) |= 0x400000u;
        if (v44 - v119 < 2 || *v119 != 176 || v119[1] != 1)
        {
          continue;
        }

        v47 = (v119 + 2);
        *(a2 + 1) = v47;
LABEL_399:
        if (v47 >= v44 || (v120 = *v47, v120 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 100));
          if (!this)
          {
            return this;
          }

          v121 = *(a2 + 1);
          v44 = *(a2 + 2);
        }

        else
        {
          *(v3 + 100) = v120;
          v121 = (v47 + 1);
          *(a2 + 1) = v121;
        }

        *(v3 + 264) |= 0x800000u;
        if (v44 - v121 < 2 || *v121 != 184 || v121[1] != 1)
        {
          continue;
        }

        v56 = (v121 + 2);
        *(a2 + 1) = v56;
LABEL_408:
        if (v56 >= v44 || (v122 = *v56, v122 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 124));
          if (!this)
          {
            return this;
          }

          v123 = *(a2 + 1);
          v44 = *(a2 + 2);
        }

        else
        {
          *(v3 + 124) = v122;
          v123 = (v56 + 1);
          *(a2 + 1) = v123;
        }

        v59 = *(v3 + 264) | 0x2000000;
        *(v3 + 264) = v59;
        if (v44 - v123 < 2 || *v123 != 194 || v123[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v123 + 2;
LABEL_417:
        *(v3 + 264) = v59 | 0x4000000;
        if (*(v3 + 128) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v124 = *(a2 + 1);
        if (*(a2 + 4) - v124 < 2 || *v124 != 202 || v124[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v124 + 2;
LABEL_424:
        *(v3 + 264) |= 0x8000000u;
        if (*(v3 + 136) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v125 = *(a2 + 1);
        if (*(a2 + 4) - v125 < 2 || *v125 != 210 || v125[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v125 + 2;
LABEL_431:
        *(v3 + 264) |= 0x10000000u;
        if (*(v3 + 144) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v126 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v21 - v126 < 2 || *v126 != 216 || v126[1] != 1)
        {
          continue;
        }

        v64 = (v126 + 2);
        *(a2 + 1) = v64;
LABEL_438:
        if (v64 >= v21 || (v127 = *v64, v127 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 152));
          if (!this)
          {
            return this;
          }

          v128 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(v3 + 152) = v127;
          v128 = (v64 + 1);
          *(a2 + 1) = v128;
        }

        *(v3 + 264) |= 0x20000000u;
        if (v21 - v128 < 2 || *v128 != 224 || v128[1] != 1)
        {
          continue;
        }

        v22 = (v128 + 2);
        *(a2 + 1) = v22;
LABEL_447:
        if (v22 >= v21 || (v129 = *v22, v129 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 156));
          if (!this)
          {
            return this;
          }

          v130 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(v3 + 156) = v129;
          v130 = (v22 + 1);
          *(a2 + 1) = v130;
        }

        *(v3 + 264) |= 0x40000000u;
        if (v21 - v130 < 2 || *v130 != 232 || v130[1] != 1)
        {
          continue;
        }

        v60 = (v130 + 2);
        *(a2 + 1) = v60;
LABEL_456:
        v148 = 0;
        if (v60 >= v21 || (v131 = *v60, (v131 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v131 = v148;
          v132 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v132 = (v60 + 1);
          *(a2 + 1) = v132;
        }

        *(v3 + 188) = v131 != 0;
        *(v3 + 264) |= 0x80000000;
        if (v21 - v132 < 2 || *v132 != 240 || v132[1] != 1)
        {
          continue;
        }

        v61 = (v132 + 2);
        *(a2 + 1) = v61;
LABEL_465:
        if (v61 >= v21 || (v133 = *v61, v133 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 164));
          if (!this)
          {
            return this;
          }

          v134 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(v3 + 164) = v133;
          v134 = (v61 + 1);
          *(a2 + 1) = v134;
        }

        *(v3 + 268) |= 2u;
        if (v21 - v134 < 2 || *v134 != 248 || v134[1] != 1)
        {
          continue;
        }

        v53 = (v134 + 2);
        *(a2 + 1) = v53;
LABEL_474:
        if (v53 >= v21 || (v135 = *v53, v135 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 184));
          if (!this)
          {
            return this;
          }

          v136 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(v3 + 184) = v135;
          v136 = (v53 + 1);
          *(a2 + 1) = v136;
        }

        *(v3 + 268) |= 4u;
        if (v21 - v136 < 2 || *v136 != 128 || v136[1] != 2)
        {
          continue;
        }

        v42 = (v136 + 2);
        *(a2 + 1) = v42;
LABEL_483:
        if (v42 >= v21 || (v137 = *v42, v137 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 168));
          if (!this)
          {
            return this;
          }

          v138 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(v3 + 168) = v137;
          v138 = (v42 + 1);
          *(a2 + 1) = v138;
        }

        v54 = *(v3 + 268) | 8;
        *(v3 + 268) = v54;
        if (v21 - v138 < 2 || *v138 != 138 || v138[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v138 + 2;
LABEL_492:
        *(v3 + 268) = v54 | 0x10;
        if (*(v3 + 176) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v139 = *(a2 + 1);
        if (*(a2 + 4) - v139 < 2 || *v139 != 146)
        {
          continue;
        }

        while (1)
        {
          if (v139[1] != 2)
          {
            goto LABEL_2;
          }

          *(a2 + 1) = v139 + 2;
LABEL_499:
          v140 = *(v3 + 204);
          v141 = *(v3 + 200);
          if (v141 >= v140)
          {
            if (v140 == *(v3 + 208))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 192));
              v140 = *(v3 + 204);
            }

            *(v3 + 204) = v140 + 1;
            v144 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v145 = *(v3 + 192);
            v146 = *(v3 + 200);
            *(v3 + 200) = v146 + 1;
            *(v145 + 8 * v146) = v144;
          }

          else
          {
            v142 = *(v3 + 192);
            *(v3 + 200) = v141 + 1;
            v143 = *(v142 + 8 * v141);
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v139 = *(a2 + 1);
          v19 = *(a2 + 2);
          if (v19 - v139 < 2)
          {
            goto LABEL_2;
          }

          v147 = *v139;
          if (v147 == 152)
          {
            break;
          }

          if (v147 != 146)
          {
            goto LABEL_2;
          }
        }

        if (v139[1] != 2)
        {
          continue;
        }

        v23 = (v139 + 2);
        *(a2 + 1) = v23;
LABEL_28:
        if (v23 >= v19 || (v24 = *v23, v24 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 96));
          if (!this)
          {
            return this;
          }

          v25 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(v3 + 96) = v24;
          v25 = (v23 + 1);
          *(a2 + 1) = v25;
        }

        *(v3 + 264) |= 0x10000u;
        if (v19 - v25 < 2 || *v25 != 160 || v25[1] != 2)
        {
          continue;
        }

        v20 = (v25 + 2);
        *(a2 + 1) = v20;
LABEL_120:
        v148 = 0;
        if (v20 >= v19 || (v65 = *v20, (v65 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v65 = v148;
          v66 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v66 = (v20 + 1);
          *(a2 + 1) = v66;
        }

        *(v3 + 74) = v65 != 0;
        *(v3 + 264) |= 0x20000u;
        if (v19 - v66 < 2 || *v66 != 170 || v66[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v66 + 2;
LABEL_129:
        *(v3 + 268) |= 0x40u;
        if (*(v3 + 216) == v5)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v67 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v17 - v67 < 2 || *v67 != 176 || v67[1] != 2)
        {
          continue;
        }

        v18 = (v67 + 2);
        *(a2 + 1) = v18;
LABEL_136:
        v148 = 0;
        if (v18 >= v17 || (v68 = *v18, (v68 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v68 = v148;
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (v68 <= 5)
        {
          *(v3 + 264) |= 0x1000000u;
          *(v3 + 120) = v68;
        }

        v69 = *(a2 + 1);
        v62 = *(a2 + 2);
        if (v62 - v69 < 2 || *v69 != 184 || v69[1] != 2)
        {
          continue;
        }

        v63 = (v69 + 2);
        *(a2 + 1) = v63;
LABEL_147:
        v148 = 0;
        if (v63 >= v62 || (v70 = *v63, (v70 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v70 = v148;
        }

        else
        {
          *(a2 + 1) = v63 + 1;
        }

        if (v70 <= 2)
        {
          *(v3 + 268) |= 1u;
          *(v3 + 160) = v70;
        }

        v71 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v15 - v71 < 2 || *v71 != 192 || v71[1] != 2)
        {
          continue;
        }

        v57 = (v71 + 2);
        *(a2 + 1) = v57;
LABEL_158:
        if (v57 >= v15 || (v72 = *v57, v72 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 224));
          if (!this)
          {
            return this;
          }

          v73 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 224) = v72;
          v73 = (v57 + 1);
          *(a2 + 1) = v73;
        }

        *(v3 + 268) |= 0x80u;
        if (v15 - v73 < 2 || *v73 != 200 || v73[1] != 2)
        {
          continue;
        }

        v31 = (v73 + 2);
        *(a2 + 1) = v31;
LABEL_167:
        if (v31 >= v15 || (v74 = *v31, v74 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 228));
          if (!this)
          {
            return this;
          }

          v75 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 228) = v74;
          v75 = (v31 + 1);
          *(a2 + 1) = v75;
        }

        *(v3 + 268) |= 0x100u;
        if (v15 - v75 < 2 || *v75 != 208 || v75[1] != 2)
        {
          continue;
        }

        v43 = (v75 + 2);
        *(a2 + 1) = v43;
LABEL_176:
        if (v43 >= v15 || (v76 = *v43, v76 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 232));
          if (!this)
          {
            return this;
          }

          v77 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 232) = v76;
          v77 = (v43 + 1);
          *(a2 + 1) = v77;
        }

        *(v3 + 268) |= 0x200u;
        if (v15 - v77 < 2 || *v77 != 216 || v77[1] != 2)
        {
          continue;
        }

        v58 = (v77 + 2);
        *(a2 + 1) = v58;
LABEL_185:
        if (v58 >= v15 || (v78 = *v58, v78 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 236));
          if (!this)
          {
            return this;
          }

          v79 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 236) = v78;
          v79 = (v58 + 1);
          *(a2 + 1) = v79;
        }

        *(v3 + 268) |= 0x400u;
        if (v15 - v79 < 2 || *v79 != 224 || v79[1] != 2)
        {
          continue;
        }

        v16 = (v79 + 2);
        *(a2 + 1) = v16;
LABEL_194:
        if (v16 >= v15 || (v80 = *v16, v80 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 240));
          if (!this)
          {
            return this;
          }

          v81 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 240) = v80;
          v81 = (v16 + 1);
          *(a2 + 1) = v81;
        }

        *(v3 + 268) |= 0x800u;
        if (v15 - v81 < 2 || *v81 != 232 || v81[1] != 2)
        {
          continue;
        }

        v27 = (v81 + 2);
        *(a2 + 1) = v27;
LABEL_203:
        if (v27 >= v15 || (v82 = *v27, v82 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 244));
          if (!this)
          {
            return this;
          }

          v83 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 244) = v82;
          v83 = (v27 + 1);
          *(a2 + 1) = v83;
        }

        *(v3 + 268) |= 0x1000u;
        if (v15 - v83 < 2 || *v83 != 240 || v83[1] != 2)
        {
          continue;
        }

        v55 = (v83 + 2);
        *(a2 + 1) = v55;
LABEL_212:
        v148 = 0;
        if (v55 >= v15 || (v84 = *v55, (v84 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v148);
          if (!this)
          {
            return this;
          }

          v84 = v148;
          v85 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v85 = (v55 + 1);
          *(a2 + 1) = v85;
        }

        *(v3 + 189) = v84 != 0;
        *(v3 + 268) |= 0x2000u;
        if (v15 - v85 < 2 || *v85 != 240 || v85[1] != 34)
        {
          continue;
        }

        v36 = (v85 + 2);
        *(a2 + 1) = v36;
        goto LABEL_221;
      case 3u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v35 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_248;
      case 4u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v39 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_256;
      case 5u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_266;
      case 6u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v46 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_274;
      case 7u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v49 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_282;
      case 8u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v40 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_290;
      case 9u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v52 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_298;
      case 0xAu:
        if (v9 == 2)
        {
          goto LABEL_312;
        }

        goto LABEL_110;
      case 0xBu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v51 = *(a2 + 1);
        v50 = *(a2 + 2);
        goto LABEL_318;
      case 0xCu:
        if (v9 != 2)
        {
          goto LABEL_110;
        }

        v28 = *(v3 + 264);
        goto LABEL_326;
      case 0xDu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_332;
      case 0xEu:
        if (v9 != 2)
        {
          goto LABEL_110;
        }

        v48 = *(v3 + 264);
        goto LABEL_340;
      case 0xFu:
        if (v9 == 2)
        {
          goto LABEL_346;
        }

        goto LABEL_110;
      case 0x10u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v38 = *(a2 + 1);
        v37 = *(a2 + 2);
        goto LABEL_353;
      case 0x11u:
        if (v9 != 2)
        {
          goto LABEL_110;
        }

        v26 = *(v3 + 264);
        goto LABEL_362;
      case 0x12u:
        if (v9 == 2)
        {
          goto LABEL_369;
        }

        goto LABEL_110;
      case 0x13u:
        if (v9 == 2)
        {
          goto LABEL_376;
        }

        goto LABEL_110;
      case 0x14u:
        if (v9 == 2)
        {
          goto LABEL_383;
        }

        goto LABEL_110;
      case 0x15u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v45 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_390;
      case 0x16u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v47 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_399;
      case 0x17u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v56 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_408;
      case 0x18u:
        if (v9 != 2)
        {
          goto LABEL_110;
        }

        v59 = *(v3 + 264);
        goto LABEL_417;
      case 0x19u:
        if (v9 == 2)
        {
          goto LABEL_424;
        }

        goto LABEL_110;
      case 0x1Au:
        if (v9 == 2)
        {
          goto LABEL_431;
        }

        goto LABEL_110;
      case 0x1Bu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v64 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_438;
      case 0x1Cu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_447;
      case 0x1Du:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v60 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_456;
      case 0x1Eu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v61 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_465;
      case 0x1Fu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v53 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_474;
      case 0x20u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v42 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_483;
      case 0x21u:
        if (v9 != 2)
        {
          goto LABEL_110;
        }

        v54 = *(v3 + 268);
        goto LABEL_492;
      case 0x22u:
        if (v9 == 2)
        {
          goto LABEL_499;
        }

        goto LABEL_110;
      case 0x23u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v23 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_28;
      case 0x24u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_120;
      case 0x25u:
        if (v9 == 2)
        {
          goto LABEL_129;
        }

        goto LABEL_110;
      case 0x26u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_136;
      case 0x27u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v63 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_147;
      case 0x28u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v57 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_158;
      case 0x29u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v31 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_167;
      case 0x2Au:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v43 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_176;
      case 0x2Bu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v58 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_185;
      case 0x2Cu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_194;
      case 0x2Du:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v27 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_203;
      case 0x2Eu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_110;
        }

        v55 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_212;
      default:
        if (v8 == 558)
        {
          if ((v7 & 7) != 0)
          {
            goto LABEL_110;
          }

          v36 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_221:
          if (v36 >= v15 || (v86 = *v36, (v86 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
            if (!this)
            {
              return this;
            }

            v87 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          else
          {
            *v4 = v86;
            v87 = (v36 + 1);
            *(a2 + 1) = v87;
          }

          v14 = *(v3 + 268) | 0x4000;
          *(v3 + 268) = v14;
          if (v15 - v87 >= 2 && *v87 == 250 && v87[1] == 34)
          {
            *(a2 + 1) = v87 + 2;
            goto LABEL_230;
          }

          continue;
        }

        if (v8 == 559 && v9 == 2)
        {
          v14 = *(v3 + 268);
LABEL_230:
          *(v3 + 268) = v14 | 0x8000;
          if (*(v3 + 248) == v5)
          {
            operator new();
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            this = 1;
            *(a2 + 36) = 1;
            return this;
          }

          continue;
        }

LABEL_110:
        if (v9 != 4)
        {
          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v7);
          if ((this & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

uint64_t awd::metrics::ATM_CallAttemptEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 264);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 264);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_59;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 30), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 31), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 72), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 32), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_67;
  }

LABEL_66:
  v15 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 36), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

LABEL_68:
  v16 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 73), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_71;
  }

LABEL_70:
  v17 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_72;
  }

LABEL_71:
  v18 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 76), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40000) == 0)
  {
LABEL_18:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_74;
  }

LABEL_73:
  v19 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x80000) == 0)
  {
LABEL_19:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_75;
  }

LABEL_74:
  v20 = *(v5 + 88);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x100000) == 0)
  {
LABEL_20:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_75:
  v21 = *(v5 + 104);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x200000) == 0)
  {
LABEL_21:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

LABEL_76:
  v22 = *(v5 + 112);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x400000) == 0)
  {
LABEL_22:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 75), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x800000) == 0)
  {
LABEL_23:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 100), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 124), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_81;
  }

LABEL_80:
  v23 = *(v5 + 128);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_82;
  }

LABEL_81:
  v24 = *(v5 + 136);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_83;
  }

LABEL_82:
  v25 = *(v5 + 144);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 264);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_84:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 156), a2, a4);
    if ((*(v5 + 264) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_85;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 152), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_84;
  }

LABEL_29:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 188), a2, a4);
LABEL_30:
  v7 = *(v5 + 268);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 164), a2, a4);
    v7 = *(v5 + 268);
    if ((v7 & 4) == 0)
    {
LABEL_32:
      if ((v7 & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_88;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_32;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 184), a2, a4);
  v7 = *(v5 + 268);
  if ((v7 & 8) == 0)
  {
LABEL_33:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x20, *(v5 + 168), a2, a4);
  if ((*(v5 + 268) & 0x10) != 0)
  {
LABEL_34:
    v8 = *(v5 + 176);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_35:
  if (*(v5 + 200) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v5 + 192) + 8 * v9);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v9;
    }

    while (v9 < *(v5 + 200));
  }

  v11 = *(v5 + 264);
  if ((v11 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 96), a2, a4);
    v11 = *(v5 + 264);
  }

  if ((v11 & 0x20000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x24, *(v5 + 74), a2, a4);
  }

  if ((*(v5 + 268) & 0x40) != 0)
  {
    v12 = *(v5 + 216);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 267))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x26, *(v5 + 120), a2, a4);
  }

  v13 = *(v5 + 268);
  if (v13)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x27, *(v5 + 160), a2, a4);
    v13 = *(v5 + 268);
    if ((v13 & 0x80) == 0)
    {
LABEL_48:
      if ((v13 & 0x100) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_92;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_48;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 224), a2, a4);
  v13 = *(v5 + 268);
  if ((v13 & 0x100) == 0)
  {
LABEL_49:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 228), a2, a4);
  v13 = *(v5 + 268);
  if ((v13 & 0x200) == 0)
  {
LABEL_50:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_94;
  }

LABEL_93:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(v5 + 232), a2, a4);
  v13 = *(v5 + 268);
  if ((v13 & 0x400) == 0)
  {
LABEL_51:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 236), a2, a4);
  v13 = *(v5 + 268);
  if ((v13 & 0x800) == 0)
  {
LABEL_52:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_96;
  }

LABEL_95:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 240), a2, a4);
  v13 = *(v5 + 268);
  if ((v13 & 0x1000) == 0)
  {
LABEL_53:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(v5 + 244), a2, a4);
  v13 = *(v5 + 268);
  if ((v13 & 0x2000) == 0)
  {
LABEL_54:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

LABEL_98:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 256), a2, a4);
    if ((*(v5 + 268) & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_99;
  }

LABEL_97:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2E, *(v5 + 189), a2, a4);
  v13 = *(v5 + 268);
  if ((v13 & 0x4000) != 0)
  {
    goto LABEL_98;
  }

LABEL_55:
  if ((v13 & 0x8000) == 0)
  {
    return this;
  }

LABEL_99:
  v26 = *(v5 + 248);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_CallAttemptEvent::ByteSize(awd::metrics::ATM_CallAttemptEvent *this)
{
  v2 = *(this + 66);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
    v5 = *(this + 2);
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
      v2 = *(this + 66);
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

    v3 += v10 + v6 + 1;
    goto LABEL_16;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 66);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v11 = ((v2 >> 1) & 2) + v3;
  if ((v2 & 8) != 0)
  {
    v12 = *(this + 6);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v2 = *(this + 66);
    }

    else
    {
      v13 = 2;
    }

    v11 += v13;
  }

  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v4 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_1E51682E0), v14)) + v11;
LABEL_24:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v2 & 0x100) != 0)
  {
    v15 = *(this + 8);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 66);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
    if ((v2 & 0x200) == 0)
    {
LABEL_27:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_28;
      }

LABEL_45:
      v23 = *(this + 9);
      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
        v2 = *(this + 66);
      }

      else
      {
        v24 = 2;
      }

      v4 += v24;
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_49;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  v17 = *(this + 5);
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
    v2 = *(this + 66);
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

  v4 += v22 + v18 + 1;
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_45;
  }

LABEL_28:
  if ((v2 & 0x800) == 0)
  {
    goto LABEL_58;
  }

LABEL_49:
  v25 = *(this + 6);
  v26 = *(v25 + 23);
  v27 = v26;
  v28 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v29 = *(v25 + 23);
  }

  else
  {
    v29 = v28;
  }

  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    v26 = *(v25 + 23);
    v28 = *(v25 + 8);
    v2 = *(this + 66);
    v27 = *(v25 + 23);
  }

  else
  {
    v30 = 1;
  }

  if (v27 < 0)
  {
    v26 = v28;
  }

  v4 += v30 + v26 + 1;
LABEL_58:
  v4 += (v2 >> 11) & 2;
  if ((v2 & 0x2000) != 0)
  {
    v31 = *(this + 7);
    v32 = *(v31 + 23);
    v33 = v32;
    v34 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v35 = *(v31 + 23);
    }

    else
    {
      v35 = v34;
    }

    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      v32 = *(v31 + 23);
      v34 = *(v31 + 8);
      v2 = *(this + 66);
      v33 = *(v31 + 23);
    }

    else
    {
      v36 = 1;
    }

    if (v33 < 0)
    {
      v32 = v34;
    }

    v4 += v36 + v32 + 1;
    if ((v2 & 0x4000) == 0)
    {
LABEL_60:
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_80;
    }
  }

  else if ((v2 & 0x4000) == 0)
  {
    goto LABEL_60;
  }

  v37 = *(this + 8);
  v38 = *(v37 + 23);
  v39 = v38;
  v40 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v41 = *(v37 + 23);
  }

  else
  {
    v41 = v40;
  }

  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
    v38 = *(v37 + 23);
    v40 = *(v37 + 8);
    v2 = *(this + 66);
    v39 = *(v37 + 23);
  }

  else
  {
    v42 = 1;
  }

  if (v39 < 0)
  {
    v38 = v40;
  }

  v4 += v42 + v38 + 1;
  if ((v2 & 0x8000) != 0)
  {
LABEL_80:
    v43 = *(this + 19);
    if (v43 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
      v2 = *(this + 66);
    }

    else
    {
      v44 = 3;
    }

    v4 += v44;
  }

LABEL_84:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_140;
  }

  if ((v2 & 0x10000) != 0)
  {
    v45 = *(this + 24);
    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
      v2 = *(this + 66);
    }

    else
    {
      v46 = 3;
    }

    v4 += v46;
  }

  if ((v2 & 0x20000) != 0)
  {
    v4 += 3;
  }

  if ((v2 & 0x40000) != 0)
  {
    v47 = *(this + 10);
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
      v2 = *(this + 66);
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

    v4 += v52 + v48 + 2;
    if ((v2 & 0x80000) == 0)
    {
LABEL_94:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_95;
      }

LABEL_115:
      v59 = *(this + 13);
      v60 = *(v59 + 23);
      v61 = v60;
      v62 = *(v59 + 8);
      if ((v60 & 0x80u) == 0)
      {
        v63 = *(v59 + 23);
      }

      else
      {
        v63 = v62;
      }

      if (v63 >= 0x80)
      {
        v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63);
        v60 = *(v59 + 23);
        v62 = *(v59 + 8);
        v2 = *(this + 66);
        v61 = *(v59 + 23);
      }

      else
      {
        v64 = 1;
      }

      if (v61 < 0)
      {
        v60 = v62;
      }

      v4 += v64 + v60 + 2;
      if ((v2 & 0x200000) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_124;
    }
  }

  else if ((v2 & 0x80000) == 0)
  {
    goto LABEL_94;
  }

  v53 = *(this + 11);
  v54 = *(v53 + 23);
  v55 = v54;
  v56 = *(v53 + 8);
  if ((v54 & 0x80u) == 0)
  {
    v57 = *(v53 + 23);
  }

  else
  {
    v57 = v56;
  }

  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
    v54 = *(v53 + 23);
    v56 = *(v53 + 8);
    v2 = *(this + 66);
    v55 = *(v53 + 23);
  }

  else
  {
    v58 = 1;
  }

  if (v55 < 0)
  {
    v54 = v56;
  }

  v4 += v58 + v54 + 2;
  if ((v2 & 0x100000) != 0)
  {
    goto LABEL_115;
  }

LABEL_95:
  if ((v2 & 0x200000) != 0)
  {
LABEL_124:
    v65 = *(this + 14);
    v66 = *(v65 + 23);
    v67 = v66;
    v68 = *(v65 + 8);
    if ((v66 & 0x80u) == 0)
    {
      v69 = *(v65 + 23);
    }

    else
    {
      v69 = v68;
    }

    if (v69 >= 0x80)
    {
      v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
      v66 = *(v65 + 23);
      v68 = *(v65 + 8);
      v2 = *(this + 66);
      v67 = *(v65 + 23);
    }

    else
    {
      v70 = 1;
    }

    if (v67 < 0)
    {
      v66 = v68;
    }

    v4 += v70 + v66 + 2;
  }

LABEL_133:
  if ((v2 & 0x400000) != 0)
  {
    v4 += 3;
  }

  if ((v2 & 0x800000) != 0)
  {
    v71 = *(this + 25);
    if (v71 >= 0x80)
    {
      v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
      v2 = *(this + 66);
    }

    else
    {
      v72 = 3;
    }

    v4 += v72;
  }

LABEL_140:
  if (!HIBYTE(v2))
  {
    goto LABEL_196;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v73 = *(this + 30);
    if ((v73 & 0x80000000) != 0)
    {
      v74 = 12;
    }

    else if (v73 >= 0x80)
    {
      v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73) + 2;
      v2 = *(this + 66);
    }

    else
    {
      v74 = 3;
    }

    v4 += v74;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_143:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_159;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_143;
  }

  v75 = *(this + 31);
  if (v75 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 2;
    v2 = *(this + 66);
  }

  else
  {
    v76 = 3;
  }

  v4 += v76;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_144:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_168;
  }

LABEL_159:
  v77 = *(this + 16);
  v78 = *(v77 + 23);
  v79 = v78;
  v80 = *(v77 + 8);
  if ((v78 & 0x80u) == 0)
  {
    v81 = *(v77 + 23);
  }

  else
  {
    v81 = v80;
  }

  if (v81 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81);
    v78 = *(v77 + 23);
    v80 = *(v77 + 8);
    v2 = *(this + 66);
    v79 = *(v77 + 23);
  }

  else
  {
    v82 = 1;
  }

  if (v79 < 0)
  {
    v78 = v80;
  }

  v4 += v82 + v78 + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_145:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_177;
  }

LABEL_168:
  v83 = *(this + 17);
  v84 = *(v83 + 23);
  v85 = v84;
  v86 = *(v83 + 8);
  if ((v84 & 0x80u) == 0)
  {
    v87 = *(v83 + 23);
  }

  else
  {
    v87 = v86;
  }

  if (v87 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87);
    v84 = *(v83 + 23);
    v86 = *(v83 + 8);
    v2 = *(this + 66);
    v85 = *(v83 + 23);
  }

  else
  {
    v88 = 1;
  }

  if (v85 < 0)
  {
    v84 = v86;
  }

  v4 += v88 + v84 + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_146:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_186;
  }

LABEL_177:
  v89 = *(this + 18);
  v90 = *(v89 + 23);
  v91 = v90;
  v92 = *(v89 + 8);
  if ((v90 & 0x80u) == 0)
  {
    v93 = *(v89 + 23);
  }

  else
  {
    v93 = v92;
  }

  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93);
    v90 = *(v89 + 23);
    v92 = *(v89 + 8);
    v2 = *(this + 66);
    v91 = *(v89 + 23);
  }

  else
  {
    v94 = 1;
  }

  if (v91 < 0)
  {
    v90 = v92;
  }

  v4 += v94 + v90 + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_147:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_190;
  }

LABEL_186:
  v95 = *(this + 38);
  if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
    v2 = *(this + 66);
  }

  else
  {
    v96 = 3;
  }

  v4 += v96;
  if ((v2 & 0x40000000) != 0)
  {
LABEL_190:
    v97 = *(this + 39);
    if (v97 >= 0x80)
    {
      v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
      v2 = *(this + 66);
    }

    else
    {
      v98 = 3;
    }

    v4 += v98;
  }

LABEL_194:
  if ((v2 & 0x80000000) != 0)
  {
    v4 += 3;
  }

LABEL_196:
  v99 = *(this + 67);
  if (!v99)
  {
    goto LABEL_242;
  }

  if (v99)
  {
    v100 = *(this + 40);
    if ((v100 & 0x80000000) != 0)
    {
      v101 = 12;
    }

    else if (v100 >= 0x80)
    {
      v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100) + 2;
      v99 = *(this + 67);
    }

    else
    {
      v101 = 3;
    }

    v4 += v101;
    if ((v99 & 2) == 0)
    {
LABEL_199:
      if ((v99 & 4) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_215;
    }
  }

  else if ((v99 & 2) == 0)
  {
    goto LABEL_199;
  }

  v102 = *(this + 41);
  if (v102 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102) + 2;
    v99 = *(this + 67);
  }

  else
  {
    v103 = 3;
  }

  v4 += v103;
  if ((v99 & 4) == 0)
  {
LABEL_200:
    if ((v99 & 8) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_219;
  }

LABEL_215:
  v104 = *(this + 46);
  if (v104 >= 0x80)
  {
    v105 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104) + 2;
    v99 = *(this + 67);
  }

  else
  {
    v105 = 3;
  }

  v4 += v105;
  if ((v99 & 8) == 0)
  {
LABEL_201:
    if ((v99 & 0x10) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_220;
  }

LABEL_219:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 21)) + 2;
  v99 = *(this + 67);
  if ((v99 & 0x10) == 0)
  {
LABEL_202:
    if ((v99 & 0x40) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_229;
  }

LABEL_220:
  v106 = *(this + 22);
  v107 = *(v106 + 23);
  v108 = v107;
  v109 = *(v106 + 8);
  if ((v107 & 0x80u) == 0)
  {
    v110 = *(v106 + 23);
  }

  else
  {
    v110 = v109;
  }

  if (v110 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110);
    v107 = *(v106 + 23);
    v109 = *(v106 + 8);
    v99 = *(this + 67);
    v108 = *(v106 + 23);
  }

  else
  {
    v111 = 1;
  }

  if (v108 < 0)
  {
    v107 = v109;
  }

  v4 += v111 + v107 + 2;
  if ((v99 & 0x40) == 0)
  {
LABEL_203:
    if ((v99 & 0x80) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_238;
  }

LABEL_229:
  v112 = *(this + 27);
  v113 = *(v112 + 23);
  v114 = v113;
  v115 = *(v112 + 8);
  if ((v113 & 0x80u) == 0)
  {
    v116 = *(v112 + 23);
  }

  else
  {
    v116 = v115;
  }

  if (v116 >= 0x80)
  {
    v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116);
    v113 = *(v112 + 23);
    v115 = *(v112 + 8);
    v99 = *(this + 67);
    v114 = *(v112 + 23);
  }

  else
  {
    v117 = 1;
  }

  if (v114 < 0)
  {
    v113 = v115;
  }

  v4 += v117 + v113 + 2;
  if ((v99 & 0x80) != 0)
  {
LABEL_238:
    v118 = *(this + 56);
    if (v118 >= 0x80)
    {
      v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
      v99 = *(this + 67);
    }

    else
    {
      v119 = 3;
    }

    v4 += v119;
  }

LABEL_242:
  if ((v99 & 0xFF00) == 0)
  {
    goto LABEL_286;
  }

  if ((v99 & 0x100) != 0)
  {
    v120 = *(this + 57);
    if (v120 >= 0x80)
    {
      v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
      v99 = *(this + 67);
    }

    else
    {
      v121 = 3;
    }

    v4 += v121;
    if ((v99 & 0x200) == 0)
    {
LABEL_245:
      if ((v99 & 0x400) == 0)
      {
        goto LABEL_246;
      }

      goto LABEL_257;
    }
  }

  else if ((v99 & 0x200) == 0)
  {
    goto LABEL_245;
  }

  v122 = *(this + 58);
  if (v122 >= 0x80)
  {
    v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122) + 2;
    v99 = *(this + 67);
  }

  else
  {
    v123 = 3;
  }

  v4 += v123;
  if ((v99 & 0x400) == 0)
  {
LABEL_246:
    if ((v99 & 0x800) == 0)
    {
      goto LABEL_247;
    }

LABEL_261:
    v126 = *(this + 60);
    if (v126 >= 0x80)
    {
      v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126) + 2;
      v99 = *(this + 67);
    }

    else
    {
      v127 = 3;
    }

    v4 += v127;
    if ((v99 & 0x1000) == 0)
    {
      goto LABEL_269;
    }

    goto LABEL_265;
  }

LABEL_257:
  v124 = *(this + 59);
  if (v124 >= 0x80)
  {
    v125 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124) + 2;
    v99 = *(this + 67);
  }

  else
  {
    v125 = 3;
  }

  v4 += v125;
  if ((v99 & 0x800) != 0)
  {
    goto LABEL_261;
  }

LABEL_247:
  if ((v99 & 0x1000) != 0)
  {
LABEL_265:
    v128 = *(this + 61);
    if (v128 >= 0x80)
    {
      v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128) + 2;
      v99 = *(this + 67);
    }

    else
    {
      v129 = 3;
    }

    v4 += v129;
  }

LABEL_269:
  if ((v99 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v99 & 0x4000) != 0)
  {
    v130 = *(this + 64);
    if (v130 >= 0x80)
    {
      v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130) + 2;
      v99 = *(this + 67);
    }

    else
    {
      v131 = 3;
    }

    v4 += v131;
  }

  if ((v99 & 0x8000) != 0)
  {
    v132 = *(this + 31);
    v133 = *(v132 + 23);
    v134 = v133;
    v135 = *(v132 + 8);
    if ((v133 & 0x80u) == 0)
    {
      v136 = *(v132 + 23);
    }

    else
    {
      v136 = v135;
    }

    if (v136 >= 0x80)
    {
      v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136);
      v133 = *(v132 + 23);
      v135 = *(v132 + 8);
      v134 = *(v132 + 23);
    }

    else
    {
      v137 = 1;
    }

    if (v134 < 0)
    {
      v133 = v135;
    }

    v4 += v137 + v133 + 2;
  }

LABEL_286:
  v138 = *(this + 50);
  v139 = (v4 + 2 * v138);
  if (v138 >= 1)
  {
    for (i = 0; i < v138; ++i)
    {
      v141 = *(*(this + 24) + 8 * i);
      v142 = *(v141 + 23);
      v143 = v142;
      v144 = *(v141 + 8);
      if ((v142 & 0x80u) == 0)
      {
        v145 = *(v141 + 23);
      }

      else
      {
        v145 = v144;
      }

      if (v145 >= 0x80)
      {
        v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v145);
        v142 = *(v141 + 23);
        v144 = *(v141 + 8);
        v138 = *(this + 50);
        v143 = *(v141 + 23);
      }

      else
      {
        v146 = 1;
      }

      if (v143 < 0)
      {
        v142 = v144;
      }

      v139 = (v146 + v139 + v142);
    }
  }

  *(this + 65) = v139;
  return v139;
}

std::string *awd::metrics::ATM_CallAttemptEvent::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v70);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 24), (lpsrc + 24));
  v6 = *(lpsrc + 66);
  if (!v6)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    v15 = lpsrc[1];
    *(this + 66) |= 1u;
    this[1] = v15;
    v6 = *(lpsrc + 66);
    if ((v6 & 2) == 0)
    {
LABEL_7:
      if ((v6 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_72;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_7;
  }

  v16 = lpsrc[2];
  *(this + 66) |= 2u;
  v17 = this[2];
  if (v17 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v17, v16);
  v6 = *(lpsrc + 66);
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  v18 = *(lpsrc + 28);
  *(this + 66) |= 4u;
  *(this + 28) = v18;
  v6 = *(lpsrc + 66);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_75;
  }

LABEL_73:
  v19 = *(lpsrc + 6);
  if ((v19 + 1) >= 8)
  {
    __assert_rtn("set_type", "CATM.pb.h", 8940, "::awd::metrics::enum_ATM_call_type_IsValid(value)");
  }

  *(this + 66) |= 8u;
  *(this + 6) = v19;
  v6 = *(lpsrc + 66);
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_76:
    v21 = *(lpsrc + 30);
    *(this + 66) |= 0x20u;
    *(this + 30) = v21;
    v6 = *(lpsrc + 66);
    if ((v6 & 0x40) == 0)
    {
LABEL_12:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_75:
  v20 = *(lpsrc + 29);
  *(this + 66) |= 0x10u;
  *(this + 29) = v20;
  v6 = *(lpsrc + 66);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_76;
  }

LABEL_11:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_77:
  v22 = *(lpsrc + 31);
  *(this + 66) |= 0x40u;
  *(this + 31) = v22;
  v6 = *(lpsrc + 66);
  if ((v6 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(lpsrc + 72);
    *(this + 66) |= 0x80u;
    *(this + 72) = v7;
    v6 = *(lpsrc + 66);
  }

LABEL_14:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v6 & 0x100) != 0)
  {
    v8 = *(lpsrc + 8);
    if ((v8 - 1) >= 6 && v8 != -1)
    {
      __assert_rtn("set_invite_type", "CATM.pb.h", 9051, "::awd::metrics::enum_ATM_invite_call_type_IsValid(value)");
    }

    *(this + 66) |= 0x100u;
    *(this + 8) = v8;
    v6 = *(lpsrc + 66);
  }

  if ((v6 & 0x200) != 0)
  {
    v34 = lpsrc[5];
    *(this + 66) |= 0x200u;
    v35 = this[5];
    if (v35 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    result = std::string::operator=(v35, v34);
    v6 = *(lpsrc + 66);
    if ((v6 & 0x400) == 0)
    {
LABEL_20:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_99;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_20;
  }

  v36 = *(lpsrc + 9);
  *(this + 66) |= 0x400u;
  *(this + 9) = v36;
  v6 = *(lpsrc + 66);
  if ((v6 & 0x800) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_102;
  }

LABEL_99:
  v37 = lpsrc[6];
  *(this + 66) |= 0x800u;
  v38 = this[6];
  if (v38 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v38, v37);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x1000) == 0)
  {
LABEL_22:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_103;
  }

LABEL_102:
  v39 = *(lpsrc + 73);
  *(this + 66) |= 0x1000u;
  *(this + 73) = v39;
  v6 = *(lpsrc + 66);
  if ((v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_106;
  }

LABEL_103:
  v40 = lpsrc[7];
  *(this + 66) |= 0x2000u;
  v41 = this[7];
  if (v41 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v41, v40);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x4000) == 0)
  {
LABEL_24:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_106:
  v42 = lpsrc[8];
  *(this + 66) |= 0x4000u;
  v43 = this[8];
  if (v43 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v43, v42);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x8000) != 0)
  {
LABEL_25:
    v9 = *(lpsrc + 19);
    *(this + 66) |= 0x8000u;
    *(this + 19) = v9;
    v6 = *(lpsrc + 66);
  }

LABEL_26:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v6 & 0x10000) != 0)
  {
    v23 = *(lpsrc + 24);
    *(this + 66) |= 0x10000u;
    *(this + 24) = v23;
    v6 = *(lpsrc + 66);
    if ((v6 & 0x20000) == 0)
    {
LABEL_29:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_81;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v24 = *(lpsrc + 74);
  *(this + 66) |= 0x20000u;
  *(this + 74) = v24;
  v6 = *(lpsrc + 66);
  if ((v6 & 0x40000) == 0)
  {
LABEL_30:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

LABEL_81:
  v25 = lpsrc[10];
  *(this + 66) |= 0x40000u;
  v26 = this[10];
  if (v26 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v26, v25);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x80000) == 0)
  {
LABEL_31:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_87;
  }

LABEL_84:
  v27 = lpsrc[11];
  *(this + 66) |= 0x80000u;
  v28 = this[11];
  if (v28 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v28, v27);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x100000) == 0)
  {
LABEL_32:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_90;
  }

LABEL_87:
  v29 = lpsrc[13];
  *(this + 66) |= 0x100000u;
  v30 = this[13];
  if (v30 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v30, v29);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x200000) == 0)
  {
LABEL_33:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_93;
  }

LABEL_90:
  v31 = lpsrc[14];
  *(this + 66) |= 0x200000u;
  v32 = this[14];
  if (v32 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v32, v31);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x400000) == 0)
  {
LABEL_34:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_93:
  v33 = *(lpsrc + 75);
  *(this + 66) |= 0x400000u;
  *(this + 75) = v33;
  v6 = *(lpsrc + 66);
  if ((v6 & 0x800000) != 0)
  {
LABEL_35:
    v10 = *(lpsrc + 25);
    *(this + 66) |= 0x800000u;
    *(this + 25) = v10;
    v6 = *(lpsrc + 66);
  }

LABEL_36:
  if (!HIBYTE(v6))
  {
    goto LABEL_47;
  }

  if ((v6 & 0x1000000) != 0)
  {
    v11 = *(lpsrc + 30);
    if (v11 >= 6)
    {
      __assert_rtn("set_codec", "CATM.pb.h", 9788, "::awd::metrics::enum_codec_type_IsValid(value)");
    }

    *(this + 66) |= 0x1000000u;
    *(this + 30) = v11;
    v6 = *(lpsrc + 66);
  }

  if ((v6 & 0x2000000) != 0)
  {
    v60 = *(lpsrc + 31);
    *(this + 66) |= 0x2000000u;
    *(this + 31) = v60;
    v6 = *(lpsrc + 66);
    if ((v6 & 0x4000000) == 0)
    {
LABEL_42:
      if ((v6 & 0x8000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_135;
    }
  }

  else if ((v6 & 0x4000000) == 0)
  {
    goto LABEL_42;
  }

  v61 = lpsrc[16];
  *(this + 66) |= 0x4000000u;
  v62 = this[16];
  if (v62 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v62, v61);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_138;
  }

LABEL_135:
  v63 = lpsrc[17];
  *(this + 66) |= 0x8000000u;
  v64 = this[17];
  if (v64 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v64, v63);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_44:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_141;
  }

LABEL_138:
  v65 = lpsrc[18];
  *(this + 66) |= 0x10000000u;
  v66 = this[18];
  if (v66 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v66, v65);
  v6 = *(lpsrc + 66);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_45:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_142:
    v68 = *(lpsrc + 39);
    *(this + 66) |= 0x40000000u;
    *(this + 39) = v68;
    if ((lpsrc[33] & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_143;
  }

LABEL_141:
  v67 = *(lpsrc + 38);
  *(this + 66) |= 0x20000000u;
  *(this + 38) = v67;
  v6 = *(lpsrc + 66);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_142;
  }

LABEL_46:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_143:
  v69 = *(lpsrc + 188);
  *(this + 66) |= 0x80000000;
  *(this + 188) = v69;
LABEL_47:
  v12 = *(lpsrc + 67);
  if (!v12)
  {
    goto LABEL_58;
  }

  if (v12)
  {
    v13 = *(lpsrc + 40);
    if (v13 >= 3)
    {
      __assert_rtn("set_amr_format", "CATM.pb.h", 10109, "::awd::metrics::enum_codec_format_IsValid(value)");
    }

    *(this + 67) |= 1u;
    *(this + 40) = v13;
    v12 = *(lpsrc + 67);
  }

  if ((v12 & 2) != 0)
  {
    v53 = *(lpsrc + 41);
    *(this + 67) |= 2u;
    *(this + 41) = v53;
    v12 = *(lpsrc + 67);
    if ((v12 & 4) == 0)
    {
LABEL_53:
      if ((v12 & 8) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_123;
    }
  }

  else if ((v12 & 4) == 0)
  {
    goto LABEL_53;
  }

  v54 = *(lpsrc + 46);
  *(this + 67) |= 4u;
  *(this + 46) = v54;
  v12 = *(lpsrc + 67);
  if ((v12 & 8) == 0)
  {
LABEL_54:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_124;
  }

LABEL_123:
  v55 = lpsrc[21];
  *(this + 67) |= 8u;
  this[21] = v55;
  v12 = *(lpsrc + 67);
  if ((v12 & 0x10) == 0)
  {
LABEL_55:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_127;
  }

LABEL_124:
  v56 = lpsrc[22];
  *(this + 67) |= 0x10u;
  v57 = this[22];
  if (v57 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v57, v56);
  v12 = *(lpsrc + 67);
  if ((v12 & 0x40) == 0)
  {
LABEL_56:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_127:
  v58 = lpsrc[27];
  *(this + 67) |= 0x40u;
  v59 = this[27];
  if (v59 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  result = std::string::operator=(v59, v58);
  v12 = *(lpsrc + 67);
  if ((v12 & 0x80) != 0)
  {
LABEL_57:
    v14 = *(lpsrc + 56);
    *(this + 67) |= 0x80u;
    *(this + 56) = v14;
    v12 = *(lpsrc + 67);
  }

LABEL_58:
  if ((v12 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v12 & 0x100) != 0)
  {
    v44 = *(lpsrc + 57);
    *(this + 67) |= 0x100u;
    *(this + 57) = v44;
    v12 = *(lpsrc + 67);
    if ((v12 & 0x200) == 0)
    {
LABEL_61:
      if ((v12 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_112;
    }
  }

  else if ((v12 & 0x200) == 0)
  {
    goto LABEL_61;
  }

  v45 = *(lpsrc + 58);
  *(this + 67) |= 0x200u;
  *(this + 58) = v45;
  v12 = *(lpsrc + 67);
  if ((v12 & 0x400) == 0)
  {
LABEL_62:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_113;
  }

LABEL_112:
  v46 = *(lpsrc + 59);
  *(this + 67) |= 0x400u;
  *(this + 59) = v46;
  v12 = *(lpsrc + 67);
  if ((v12 & 0x800) == 0)
  {
LABEL_63:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_114;
  }

LABEL_113:
  v47 = *(lpsrc + 60);
  *(this + 67) |= 0x800u;
  *(this + 60) = v47;
  v12 = *(lpsrc + 67);
  if ((v12 & 0x1000) == 0)
  {
LABEL_64:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_115;
  }

LABEL_114:
  v48 = *(lpsrc + 61);
  *(this + 67) |= 0x1000u;
  *(this + 61) = v48;
  v12 = *(lpsrc + 67);
  if ((v12 & 0x2000) == 0)
  {
LABEL_65:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

LABEL_116:
    v50 = *(lpsrc + 64);
    *(this + 67) |= 0x4000u;
    *(this + 64) = v50;
    if ((*(lpsrc + 67) & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_117;
  }

LABEL_115:
  v49 = *(lpsrc + 189);
  *(this + 67) |= 0x2000u;
  *(this + 189) = v49;
  v12 = *(lpsrc + 67);
  if ((v12 & 0x4000) != 0)
  {
    goto LABEL_116;
  }

LABEL_66:
  if ((v12 & 0x8000) == 0)
  {
    return result;
  }

LABEL_117:
  v51 = lpsrc[31];
  *(this + 67) |= 0x8000u;
  v52 = this[31];
  if (v52 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  return std::string::operator=(v52, v51);
}

void sub_1E4CEFCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double awd::metrics::ATM_CallConnectEvent::SharedCtor(awd::metrics::ATM_CallConnectEvent *this)
{
  *(this + 58) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 28) = 0;
  *(this + 6) = -1;
  *(this + 29) = 0;
  *(this + 31) = 0;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 7) = v1;
  *(this + 8) = v1;
  result = 0.0;
  *(this + 9) = 0;
  *(this + 10) = v1;
  *(this + 11) = v1;
  *(this + 13) = v1;
  *(this + 14) = v1;
  *(this + 15) = v1;
  *(this + 16) = v1;
  *(this + 17) = 0;
  *(this + 12) = 0;
  *(this + 98) = 0;
  *(this + 18) = v1;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = v1;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = v1;
  *(this + 236) = 0;
  return result;
}

void *awd::metrics::ATM_CallConnectEvent::SharedDtor(void *this)
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

  v5 = v1[5];
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

    this = MEMORY[0x1E69235B0](v9, 0x1012C40EC159624);
  }

  v11 = v1[8];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x1E69235B0](v11, 0x1012C40EC159624);
  }

  v12 = v1[10];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x1E69235B0](v12, 0x1012C40EC159624);
  }

  v13 = v1[11];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x1E69235B0](v13, 0x1012C40EC159624);
  }

  v14 = v1[13];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x1E69235B0](v14, 0x1012C40EC159624);
  }

  v15 = v1[14];
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x1E69235B0](v15, 0x1012C40EC159624);
  }

  v16 = v1[15];
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    this = MEMORY[0x1E69235B0](v16, 0x1012C40EC159624);
  }

  v17 = v1[16];
  if (v17 != v3 && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    this = MEMORY[0x1E69235B0](v17, 0x1012C40EC159624);
  }

  v18 = v1[18];
  if (v18 != v3 && v18)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    this = MEMORY[0x1E69235B0](v18, 0x1012C40EC159624);
  }

  v19 = v1[22];
  if (v19 != v3 && v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    this = MEMORY[0x1E69235B0](v19, 0x1012C40EC159624);
  }

  v20 = v1[28];
  if (v20 != v3 && v20)
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

void awd::metrics::ATM_CallConnectEvent::~ATM_CallConnectEvent(awd::metrics::ATM_CallConnectEvent *this)
{
  *this = &unk_1F5EC5DB8;
  awd::metrics::ATM_CallConnectEvent::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC5DB8;
  awd::metrics::ATM_CallConnectEvent::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_CallConnectEvent::Clear(uint64_t this)
{
  v1 = *(this + 236);
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

    *(this + 24) = 0xFFFFFFFFLL;
    *(this + 96) = 0;
    v1 = *(this + 236);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 32) = -1;
    if ((v1 & 0x200) != 0)
    {
      v3 = *(this + 40);
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

    *(this + 36) = 0;
    if ((*(this + 237) & 8) != 0)
    {
      v4 = *(this + 48);
      if (v4 != MEMORY[0x1E69E5958])
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

    *(this + 97) = 0;
    if ((*(this + 237) & 0x20) != 0)
    {
      v5 = *(this + 56);
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

    if ((*(this + 237) & 0x40) != 0)
    {
      v6 = *(this + 64);
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

    *(this + 72) = 0;
    v1 = *(this + 236);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 76) = 0;
    if ((v1 & 0x20000) != 0)
    {
      v7 = *(this + 80);
      if (v7 != MEMORY[0x1E69E5958])
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

    if ((*(this + 238) & 4) != 0)
    {
      v8 = *(this + 88);
      if (v8 != MEMORY[0x1E69E5958])
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

    if ((*(this + 238) & 8) != 0)
    {
      v9 = *(this + 104);
      if (v9 != MEMORY[0x1E69E5958])
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

    if ((*(this + 238) & 0x10) != 0)
    {
      v10 = *(this + 112);
      if (v10 != MEMORY[0x1E69E5958])
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }

    *(this + 98) = 0;
    *(this + 100) = 0;
    *(this + 136) = 0;
    v1 = *(this + 236);
  }

  if (HIBYTE(v1))
  {
    if ((v1 & 0x1000000) != 0)
    {
      v11 = *(this + 120);
      if (v11 != MEMORY[0x1E69E5958])
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

    if ((*(this + 239) & 2) != 0)
    {
      v12 = *(this + 128);
      if (v12 != MEMORY[0x1E69E5958])
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    if ((*(this + 239) & 4) != 0)
    {
      v13 = *(this + 144);
      if (v13 != MEMORY[0x1E69E5958])
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }

    *(this + 140) = 0;
    *(this + 152) = 0;
    *(this + 99) = 0;
    *(this + 168) = 0;
  }

  v14 = *(this + 240);
  if (v14)
  {
    *(this + 160) = 0;
    *(this + 172) = 0;
    *(this + 196) = 0;
    if ((v14 & 8) != 0)
    {
      v15 = *(this + 176);
      if (v15 != MEMORY[0x1E69E5958])
      {
        if (*(v15 + 23) < 0)
        {
          **v15 = 0;
          *(v15 + 8) = 0;
        }

        else
        {
          *v15 = 0;
          *(v15 + 23) = 0;
        }
      }
    }

    *(this + 184) = 0;
    *(this + 192) = 0;
    *(this + 200) = 0;
    v14 = *(this + 240);
  }

  if ((v14 & 0xFF00) != 0)
  {
    *(this + 197) = 0;
    *(this + 212) = 0;
    *(this + 204) = 0;
    *(this + 220) = 0;
    if ((v14 & 0x4000) != 0)
    {
      v16 = *(this + 224);
      if (v16 != MEMORY[0x1E69E5958])
      {
        if (*(v16 + 23) < 0)
        {
          **v16 = 0;
          *(v16 + 8) = 0;
        }

        else
        {
          *v16 = 0;
          *(v16 + 23) = 0;
        }
      }
    }
  }

  *(this + 236) = 0;
  return this;
}

uint64_t awd::metrics::ATM_CallConnectEvent::MergePartialFromCodedStream(awd::metrics::ATM_CallConnectEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

    v7 = TagFallback >> 3;
    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v40 = *(this + 59) | 1;
        *(this + 59) = v40;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_114;
        }

        continue;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_105;
        }

        v40 = *(this + 59);
LABEL_114:
        *(this + 59) = v40 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v62 = *(a2 + 1);
        v33 = *(a2 + 2);
        if (v62 >= v33 || *v62 != 24)
        {
          continue;
        }

        v34 = v62 + 1;
        *(a2 + 1) = v34;
LABEL_120:
        v141 = 0;
        if (v34 >= v33 || (v63 = *v34, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v63 = v141;
          v64 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          v64 = v34 + 1;
          *(a2 + 1) = v64;
        }

        *(this + 28) = v63 != 0;
        *(this + 59) |= 4u;
        if (v64 >= v33 || *v64 != 32)
        {
          continue;
        }

        v38 = v64 + 1;
        *(a2 + 1) = v38;
LABEL_128:
        v141 = 0;
        if (v38 >= v33 || (v65 = *v38, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v65 = v141;
        }

        else
        {
          *(a2 + 1) = v38 + 1;
        }

        if (v65 + 1 <= 7)
        {
          *(this + 59) |= 8u;
          *(this + 6) = v65;
        }

        v66 = *(a2 + 1);
        v28 = *(a2 + 2);
        if (v66 >= v28 || *v66 != 40)
        {
          continue;
        }

        v29 = v66 + 1;
        *(a2 + 1) = v29;
LABEL_138:
        v141 = 0;
        if (v29 >= v28 || (v67 = *v29, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v67 = v141;
          v68 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          v68 = v29 + 1;
          *(a2 + 1) = v68;
        }

        *(this + 29) = v67 != 0;
        *(this + 59) |= 0x10u;
        if (v68 >= v28 || *v68 != 48)
        {
          continue;
        }

        v45 = v68 + 1;
        *(a2 + 1) = v45;
LABEL_146:
        v141 = 0;
        if (v45 >= v28 || (v69 = *v45, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v69 = v141;
          v70 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          v70 = v45 + 1;
          *(a2 + 1) = v70;
        }

        *(this + 30) = v69 != 0;
        *(this + 59) |= 0x20u;
        if (v70 >= v28 || *v70 != 56)
        {
          continue;
        }

        v48 = v70 + 1;
        *(a2 + 1) = v48;
LABEL_154:
        v141 = 0;
        if (v48 >= v28 || (v71 = *v48, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v71 = v141;
          v72 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          v72 = v48 + 1;
          *(a2 + 1) = v72;
        }

        *(this + 31) = v71 != 0;
        *(this + 59) |= 0x40u;
        if (v72 >= v28 || *v72 != 64)
        {
          continue;
        }

        v39 = v72 + 1;
        *(a2 + 1) = v39;
LABEL_162:
        v141 = 0;
        if (v39 >= v28 || (v73 = *v39, (v73 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v73 = v141;
          v74 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          v74 = v39 + 1;
          *(a2 + 1) = v74;
        }

        *(this + 96) = v73 != 0;
        *(this + 59) |= 0x80u;
        if (v74 >= v28 || *v74 != 72)
        {
          continue;
        }

        v51 = v74 + 1;
        *(a2 + 1) = v51;
LABEL_170:
        v141 = 0;
        if (v51 >= v28 || (v75 = *v51, (v75 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v75 = v141;
        }

        else
        {
          *(a2 + 1) = v51 + 1;
        }

        if (v75 - 1 < 6 || v75 == -1)
        {
          *(this + 59) |= 0x100u;
          *(this + 8) = v75;
        }

        v77 = *(a2 + 1);
        if (v77 >= *(a2 + 2) || *v77 != 82)
        {
          continue;
        }

        *(a2 + 1) = v77 + 1;
LABEL_184:
        *(this + 59) |= 0x200u;
        if (*(this + 5) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v78 = *(a2 + 1);
        v49 = *(a2 + 2);
        if (v78 >= v49 || *v78 != 88)
        {
          continue;
        }

        v50 = v78 + 1;
        *(a2 + 1) = v50;
LABEL_190:
        if (v50 >= v49 || (v79 = *v50, v79 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v80 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v79;
          v80 = v50 + 1;
          *(a2 + 1) = v80;
        }

        v27 = *(this + 59) | 0x400;
        *(this + 59) = v27;
        if (v80 >= v49 || *v80 != 98)
        {
          continue;
        }

        *(a2 + 1) = v80 + 1;
LABEL_198:
        *(this + 59) = v27 | 0x800;
        if (*(this + 6) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v81 = *(a2 + 1);
        v31 = *(a2 + 2);
        if (v81 >= v31 || *v81 != 104)
        {
          continue;
        }

        v32 = v81 + 1;
        *(a2 + 1) = v32;
LABEL_204:
        v141 = 0;
        if (v32 >= v31 || (v82 = *v32, (v82 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v82 = v141;
          v83 = *(a2 + 1);
          v31 = *(a2 + 2);
        }

        else
        {
          v83 = v32 + 1;
          *(a2 + 1) = v83;
        }

        *(this + 97) = v82 != 0;
        v47 = *(this + 59) | 0x1000;
        *(this + 59) = v47;
        if (v83 >= v31 || *v83 != 114)
        {
          continue;
        }

        *(a2 + 1) = v83 + 1;
LABEL_212:
        *(this + 59) = v47 | 0x2000;
        if (*(this + 7) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v84 = *(a2 + 1);
        if (v84 >= *(a2 + 2) || *v84 != 122)
        {
          continue;
        }

        *(a2 + 1) = v84 + 1;
LABEL_218:
        *(this + 59) |= 0x4000u;
        if (*(this + 8) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v85 = *(a2 + 1);
        v36 = *(a2 + 2);
        if (v36 - v85 < 2 || *v85 != 128 || v85[1] != 1)
        {
          continue;
        }

        v37 = (v85 + 2);
        *(a2 + 1) = v37;
LABEL_225:
        if (v37 >= v36 || (v86 = *v37, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v87 = *(a2 + 1);
          v36 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v86;
          v87 = (v37 + 1);
          *(a2 + 1) = v87;
        }

        v24 = *(this + 59) | 0x8000;
        *(this + 59) = v24;
        if (v36 - v87 < 2 || *v87 != 138 || v87[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v87 + 2;
LABEL_234:
        *(this + 59) = v24 | 0x20000;
        if (*(this + 10) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v88 = *(a2 + 1);
        if (*(a2 + 4) - v88 < 2 || *v88 != 146 || v88[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v88 + 2;
LABEL_241:
        *(this + 59) |= 0x40000u;
        if (*(this + 11) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v89 = *(a2 + 1);
        if (*(a2 + 4) - v89 < 2 || *v89 != 154 || v89[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v89 + 2;
LABEL_248:
        *(this + 59) |= 0x80000u;
        if (*(this + 13) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v90 = *(a2 + 1);
        if (*(a2 + 4) - v90 < 2 || *v90 != 162 || v90[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v90 + 2;
LABEL_255:
        *(this + 59) |= 0x100000u;
        if (*(this + 14) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v91 = *(a2 + 1);
        v43 = *(a2 + 2);
        if (v43 - v91 < 2 || *v91 != 168 || v91[1] != 1)
        {
          continue;
        }

        v44 = (v91 + 2);
        *(a2 + 1) = v44;
LABEL_262:
        v141 = 0;
        if (v44 >= v43 || (v92 = *v44, (v92 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v92 = v141;
          v93 = *(a2 + 1);
          v43 = *(a2 + 2);
        }

        else
        {
          v93 = (v44 + 1);
          *(a2 + 1) = v93;
        }

        *(this + 98) = v92 != 0;
        *(this + 59) |= 0x200000u;
        if (v43 - v93 < 2 || *v93 != 176 || v93[1] != 1)
        {
          continue;
        }

        v46 = (v93 + 2);
        *(a2 + 1) = v46;
LABEL_271:
        if (v46 >= v43 || (v94 = *v46, v94 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v95 = *(a2 + 1);
          v43 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v94;
          v95 = (v46 + 1);
          *(a2 + 1) = v95;
        }

        *(this + 59) |= 0x400000u;
        if (v43 - v95 < 2 || *v95 != 184 || v95[1] != 1)
        {
          continue;
        }

        v54 = (v95 + 2);
        *(a2 + 1) = v54;
LABEL_280:
        if (v54 >= v43 || (v96 = *v54, v96 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
          if (!result)
          {
            return result;
          }

          v97 = *(a2 + 1);
          v43 = *(a2 + 2);
        }

        else
        {
          *(this + 34) = v96;
          v97 = (v54 + 1);
          *(a2 + 1) = v97;
        }

        v57 = *(this + 59) | 0x800000;
        *(this + 59) = v57;
        if (v43 - v97 < 2 || *v97 != 194 || v97[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v97 + 2;
LABEL_289:
        *(this + 59) = v57 | 0x1000000;
        if (*(this + 15) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v98 = *(a2 + 1);
        if (*(a2 + 4) - v98 < 2 || *v98 != 202 || v98[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v98 + 2;
LABEL_296:
        *(this + 59) |= 0x2000000u;
        if (*(this + 16) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v99 = *(a2 + 1);
        if (*(a2 + 4) - v99 < 2 || *v99 != 210 || v99[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v99 + 2;
LABEL_303:
        *(this + 59) |= 0x4000000u;
        if (*(this + 18) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v100 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v21 - v100 < 2 || *v100 != 216 || v100[1] != 1)
        {
          continue;
        }

        v61 = (v100 + 2);
        *(a2 + 1) = v61;
LABEL_310:
        if (v61 >= v21 || (v101 = *v61, v101 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
          if (!result)
          {
            return result;
          }

          v102 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 35) = v101;
          v102 = (v61 + 1);
          *(a2 + 1) = v102;
        }

        *(this + 59) |= 0x8000000u;
        if (v21 - v102 < 2 || *v102 != 224 || v102[1] != 1)
        {
          continue;
        }

        v22 = (v102 + 2);
        *(a2 + 1) = v22;
LABEL_319:
        if (v22 >= v21 || (v103 = *v22, v103 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
          if (!result)
          {
            return result;
          }

          v104 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 38) = v103;
          v104 = (v22 + 1);
          *(a2 + 1) = v104;
        }

        *(this + 59) |= 0x10000000u;
        if (v21 - v104 < 2 || *v104 != 232 || v104[1] != 1)
        {
          continue;
        }

        v58 = (v104 + 2);
        *(a2 + 1) = v58;
LABEL_328:
        v141 = 0;
        if (v58 >= v21 || (v105 = *v58, (v105 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v105 = v141;
          v106 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v106 = (v58 + 1);
          *(a2 + 1) = v106;
        }

        *(this + 99) = v105 != 0;
        *(this + 59) |= 0x20000000u;
        if (v21 - v106 < 2 || *v106 != 240 || v106[1] != 1)
        {
          continue;
        }

        v59 = (v106 + 2);
        *(a2 + 1) = v59;
LABEL_337:
        if (v59 >= v21 || (v107 = *v59, v107 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
          if (!result)
          {
            return result;
          }

          v108 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 39) = v107;
          v108 = (v59 + 1);
          *(a2 + 1) = v108;
        }

        *(this + 59) |= 0x40000000u;
        if (v21 - v108 < 2 || *v108 != 248 || v108[1] != 1)
        {
          continue;
        }

        v52 = (v108 + 2);
        *(a2 + 1) = v52;
LABEL_346:
        if (v52 >= v21 || (v109 = *v52, v109 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v110 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v109;
          v110 = (v52 + 1);
          *(a2 + 1) = v110;
        }

        *(this + 59) |= 0x80000000;
        if (v21 - v110 < 2 || *v110 != 128 || v110[1] != 2)
        {
          continue;
        }

        v41 = (v110 + 2);
        *(a2 + 1) = v41;
LABEL_355:
        if (v41 >= v21 || (v111 = *v41, v111 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v112 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v111;
          v112 = (v41 + 1);
          *(a2 + 1) = v112;
        }

        *(this + 60) |= 1u;
        if (v21 - v112 < 2 || *v112 != 136 || v112[1] != 2)
        {
          continue;
        }

        v53 = (v112 + 2);
        *(a2 + 1) = v53;
LABEL_364:
        if (v53 >= v21 || (v113 = *v53, v113 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v114 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v113;
          v114 = (v53 + 1);
          *(a2 + 1) = v114;
        }

        *(this + 59) |= 0x10000u;
        if (v21 - v114 < 2 || *v114 != 144 || v114[1] != 2)
        {
          continue;
        }

        v26 = (v114 + 2);
        *(a2 + 1) = v26;
LABEL_373:
        v141 = 0;
        if (v26 >= v21 || (v115 = *v26, (v115 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v115 = v141;
          v116 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v116 = (v26 + 1);
          *(a2 + 1) = v116;
        }

        *(this + 43) = -(v115 & 1) ^ (v115 >> 1);
        *(this + 60) |= 2u;
        if (v21 - v116 < 2 || *v116 != 152 || v116[1] != 2)
        {
          continue;
        }

        v23 = (v116 + 2);
        *(a2 + 1) = v23;
LABEL_382:
        v141 = 0;
        if (v23 >= v21 || (v117 = *v23, (v117 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v117 = v141;
          v118 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v118 = (v23 + 1);
          *(a2 + 1) = v118;
        }

        *(this + 196) = v117 != 0;
        v18 = *(this + 60) | 4;
        *(this + 60) = v18;
        if (v21 - v118 < 2 || *v118 != 162 || v118[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v118 + 2;
LABEL_391:
        *(this + 60) = v18 | 8;
        if (*(this + 22) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v119 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v119 < 2 || *v119 != 168 || v119[1] != 2)
        {
          continue;
        }

        v20 = (v119 + 2);
        *(a2 + 1) = v20;
LABEL_398:
        v141 = 0;
        if (v20 >= v19 || (v120 = *v20, (v120 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v120 = v141;
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v120 <= 2)
        {
          *(this + 60) |= 0x10u;
          *(this + 46) = v120;
        }

        v121 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v16 - v121 < 2 || *v121 != 176 || v121[1] != 2)
        {
          continue;
        }

        v17 = (v121 + 2);
        *(a2 + 1) = v17;
LABEL_409:
        v141 = 0;
        if (v17 >= v16 || (v122 = *v17, (v122 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v122 = v141;
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v122 <= 5)
        {
          *(this + 60) |= 0x20u;
          *(this + 47) = v122;
        }

        v123 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v14 - v123 < 2 || *v123 != 184 || v123[1] != 2)
        {
          continue;
        }

        v60 = (v123 + 2);
        *(a2 + 1) = v60;
LABEL_420:
        if (v60 >= v14 || (v124 = *v60, v124 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v125 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v124;
          v125 = (v60 + 1);
          *(a2 + 1) = v125;
        }

        *(this + 60) |= 0x40u;
        if (v14 - v125 < 2 || *v125 != 192 || v125[1] != 2)
        {
          continue;
        }

        v55 = (v125 + 2);
        *(a2 + 1) = v55;
LABEL_429:
        if (v55 >= v14 || (v126 = *v55, v126 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
          if (!result)
          {
            return result;
          }

          v127 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 50) = v126;
          v127 = (v55 + 1);
          *(a2 + 1) = v127;
        }

        *(this + 60) |= 0x80u;
        if (v14 - v127 < 2 || *v127 != 200 || v127[1] != 2)
        {
          continue;
        }

        v30 = (v127 + 2);
        *(a2 + 1) = v30;
LABEL_438:
        if (v30 >= v14 || (v128 = *v30, v128 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
          if (!result)
          {
            return result;
          }

          v129 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 51) = v128;
          v129 = (v30 + 1);
          *(a2 + 1) = v129;
        }

        *(this + 60) |= 0x100u;
        if (v14 - v129 < 2 || *v129 != 208 || v129[1] != 2)
        {
          continue;
        }

        v42 = (v129 + 2);
        *(a2 + 1) = v42;
LABEL_447:
        if (v42 >= v14 || (v130 = *v42, v130 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v131 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v130;
          v131 = (v42 + 1);
          *(a2 + 1) = v131;
        }

        *(this + 60) |= 0x200u;
        if (v14 - v131 < 2 || *v131 != 216 || v131[1] != 2)
        {
          continue;
        }

        v56 = (v131 + 2);
        *(a2 + 1) = v56;
LABEL_456:
        if (v56 >= v14 || (v132 = *v56, v132 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 53);
          if (!result)
          {
            return result;
          }

          v133 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 53) = v132;
          v133 = (v56 + 1);
          *(a2 + 1) = v133;
        }

        *(this + 60) |= 0x400u;
        if (v14 - v133 < 2 || *v133 != 224 || v133[1] != 2)
        {
          continue;
        }

        v15 = (v133 + 2);
        *(a2 + 1) = v15;
LABEL_465:
        if (v15 >= v14 || (v134 = *v15, v134 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 54);
          if (!result)
          {
            return result;
          }

          v135 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 54) = v134;
          v135 = (v15 + 1);
          *(a2 + 1) = v135;
        }

        *(this + 60) |= 0x800u;
        if (v14 - v135 < 2 || *v135 != 232 || v135[1] != 2)
        {
          continue;
        }

        v25 = (v135 + 2);
        *(a2 + 1) = v25;
LABEL_474:
        v141 = 0;
        if (v25 >= v14 || (v136 = *v25, (v136 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141);
          if (!result)
          {
            return result;
          }

          v136 = v141;
          v137 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v137 = (v25 + 1);
          *(a2 + 1) = v137;
        }

        *(this + 197) = v136 != 0;
        *(this + 60) |= 0x1000u;
        if (v14 - v137 < 2 || *v137 != 240 || v137[1] != 34)
        {
          continue;
        }

        v35 = (v137 + 2);
        *(a2 + 1) = v35;
        goto LABEL_483;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v34 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_120;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v38 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_128;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_138;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v45 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_146;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v48 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_154;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v39 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_162;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v51 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_170;
      case 0xAu:
        if (v8 == 2)
        {
          goto LABEL_184;
        }

        goto LABEL_105;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v50 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_190;
      case 0xCu:
        if (v8 != 2)
        {
          goto LABEL_105;
        }

        v27 = *(this + 59);
        goto LABEL_198;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v32 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_204;
      case 0xEu:
        if (v8 != 2)
        {
          goto LABEL_105;
        }

        v47 = *(this + 59);
        goto LABEL_212;
      case 0xFu:
        if (v8 == 2)
        {
          goto LABEL_218;
        }

        goto LABEL_105;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v37 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_225;
      case 0x11u:
        if (v8 != 2)
        {
          goto LABEL_105;
        }

        v24 = *(this + 59);
        goto LABEL_234;
      case 0x12u:
        if (v8 == 2)
        {
          goto LABEL_241;
        }

        goto LABEL_105;
      case 0x13u:
        if (v8 == 2)
        {
          goto LABEL_248;
        }

        goto LABEL_105;
      case 0x14u:
        if (v8 == 2)
        {
          goto LABEL_255;
        }

        goto LABEL_105;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v44 = *(a2 + 1);
        v43 = *(a2 + 2);
        goto LABEL_262;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v46 = *(a2 + 1);
        v43 = *(a2 + 2);
        goto LABEL_271;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v54 = *(a2 + 1);
        v43 = *(a2 + 2);
        goto LABEL_280;
      case 0x18u:
        if (v8 != 2)
        {
          goto LABEL_105;
        }

        v57 = *(this + 59);
        goto LABEL_289;
      case 0x19u:
        if (v8 == 2)
        {
          goto LABEL_296;
        }

        goto LABEL_105;
      case 0x1Au:
        if (v8 == 2)
        {
          goto LABEL_303;
        }

        goto LABEL_105;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v61 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_310;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_319;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v58 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_328;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v59 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_337;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v52 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_346;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v41 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_355;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v53 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_364;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v26 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_373;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v23 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_382;
      case 0x24u:
        if (v8 != 2)
        {
          goto LABEL_105;
        }

        v18 = *(this + 60);
        goto LABEL_391;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_398;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_409;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v60 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_420;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v55 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_429;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v30 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_438;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v42 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_447;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v56 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_456;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_465;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_105;
        }

        v25 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_474;
      default:
        if (v7 == 558)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_105;
          }

          v35 = *(a2 + 1);
          v14 = *(a2 + 2);
LABEL_483:
          if (v35 >= v14 || (v138 = *v35, v138 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 55);
            if (!result)
            {
              return result;
            }

            v139 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            *(this + 55) = v138;
            v139 = (v35 + 1);
            *(a2 + 1) = v139;
          }

          v13 = *(this + 60) | 0x2000;
          *(this + 60) = v13;
          if (v14 - v139 >= 2 && *v139 == 250 && v139[1] == 34)
          {
            *(a2 + 1) = v139 + 2;
            goto LABEL_492;
          }

          continue;
        }

        if (v7 == 559 && v8 == 2)
        {
          v13 = *(this + 60);
LABEL_492:
          *(this + 60) = v13 | 0x4000;
          if (*(this + 28) == v4)
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

          continue;
        }

LABEL_105:
        if (v8 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

uint64_t awd::metrics::ATM_CallConnectEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 236);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 236);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 30), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 31), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 96), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 32), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  v9 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 36), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  v10 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 97), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  v11 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  v12 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x20000) == 0)
  {
LABEL_18:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  v13 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x40000) == 0)
  {
LABEL_19:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  v14 = *(v5 + 88);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x80000) == 0)
  {
LABEL_20:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  v15 = *(v5 + 104);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x100000) == 0)
  {
LABEL_21:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  v16 = *(v5 + 112);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x200000) == 0)
  {
LABEL_22:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 98), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x400000) == 0)
  {
LABEL_23:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 100), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x800000) == 0)
  {
LABEL_24:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 136), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  v17 = *(v5 + 120);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  v18 = *(v5 + 128);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  v19 = *(v5 + 144);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 236);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 140), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 152), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_80:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 156), a2, a4);
    if ((*(v5 + 236) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 99), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_80;
  }

LABEL_31:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 168), a2, a4);
LABEL_32:
  if (*(v5 + 240))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x20, *(v5 + 160), a2, a4);
  }

  if (*(v5 + 238))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 76), a2, a4);
  }

  v7 = *(v5 + 240);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x22, *(v5 + 172), a2, a4);
    v7 = *(v5 + 240);
    if ((v7 & 4) == 0)
    {
LABEL_38:
      if ((v7 & 8) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_84;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_38;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x23, *(v5 + 196), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 8) == 0)
  {
LABEL_39:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

LABEL_84:
  v20 = *(v5 + 176);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v7 = *(v5 + 240);
  if ((v7 & 0x10) == 0)
  {
LABEL_40:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x25, *(v5 + 184), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x20) == 0)
  {
LABEL_41:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x26, *(v5 + 188), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x40) == 0)
  {
LABEL_42:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 192), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x80) == 0)
  {
LABEL_43:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 200), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x100) == 0)
  {
LABEL_44:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 204), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x200) == 0)
  {
LABEL_45:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(v5 + 208), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x400) == 0)
  {
LABEL_46:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_92;
  }

LABEL_91:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 212), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x800) == 0)
  {
LABEL_47:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 216), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x1000) == 0)
  {
LABEL_48:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

LABEL_94:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 220), a2, a4);
    if ((*(v5 + 240) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_95;
  }

LABEL_93:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2D, *(v5 + 197), a2, a4);
  v7 = *(v5 + 240);
  if ((v7 & 0x2000) != 0)
  {
    goto LABEL_94;
  }

LABEL_49:
  if ((v7 & 0x4000) == 0)
  {
    return this;
  }

LABEL_95:
  v21 = *(v5 + 224);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_CallConnectEvent::ByteSize(awd::metrics::ATM_CallConnectEvent *this)
{
  v2 = *(this + 59);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
    v5 = *(this + 2);
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
      v2 = *(this + 59);
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

    v3 += v10 + v6 + 1;
    goto LABEL_16;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 59);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v11 = ((v2 >> 1) & 2) + v3;
  if ((v2 & 8) != 0)
  {
    v12 = *(this + 6);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v2 = *(this + 59);
    }

    else
    {
      v13 = 2;
    }

    v11 += v13;
  }

  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v4 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_1E51682E0), v14)) + v11);
LABEL_24:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v2 & 0x100) != 0)
  {
    v15 = *(this + 8);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 59);
    }

    else
    {
      v16 = 2;
    }

    LODWORD(v4) = v16 + v4;
    if ((v2 & 0x200) == 0)
    {
LABEL_27:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_28;
      }

LABEL_45:
      v23 = *(this + 9);
      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
        v2 = *(this + 59);
      }

      else
      {
        v24 = 2;
      }

      LODWORD(v4) = v24 + v4;
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_49;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  v17 = *(this + 5);
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
    v2 = *(this + 59);
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

  LODWORD(v4) = v4 + v22 + v18 + 1;
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_45;
  }

LABEL_28:
  if ((v2 & 0x800) == 0)
  {
    goto LABEL_58;
  }

LABEL_49:
  v25 = *(this + 6);
  v26 = *(v25 + 23);
  v27 = v26;
  v28 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v29 = *(v25 + 23);
  }

  else
  {
    v29 = v28;
  }

  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    v26 = *(v25 + 23);
    v28 = *(v25 + 8);
    v2 = *(this + 59);
    v27 = *(v25 + 23);
  }

  else
  {
    v30 = 1;
  }

  if (v27 < 0)
  {
    v26 = v28;
  }

  LODWORD(v4) = v4 + v30 + v26 + 1;
LABEL_58:
  v4 = ((v2 >> 11) & 2) + v4;
  if ((v2 & 0x2000) != 0)
  {
    v31 = *(this + 7);
    v32 = *(v31 + 23);
    v33 = v32;
    v34 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v35 = *(v31 + 23);
    }

    else
    {
      v35 = v34;
    }

    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      v32 = *(v31 + 23);
      v34 = *(v31 + 8);
      v2 = *(this + 59);
      v33 = *(v31 + 23);
    }

    else
    {
      v36 = 1;
    }

    if (v33 < 0)
    {
      v32 = v34;
    }

    v4 = (v4 + v36 + v32 + 1);
    if ((v2 & 0x4000) == 0)
    {
LABEL_60:
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_80;
    }
  }

  else if ((v2 & 0x4000) == 0)
  {
    goto LABEL_60;
  }

  v37 = *(this + 8);
  v38 = *(v37 + 23);
  v39 = v38;
  v40 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v41 = *(v37 + 23);
  }

  else
  {
    v41 = v40;
  }

  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
    v38 = *(v37 + 23);
    v40 = *(v37 + 8);
    v2 = *(this + 59);
    v39 = *(v37 + 23);
  }

  else
  {
    v42 = 1;
  }

  if (v39 < 0)
  {
    v38 = v40;
  }

  v4 = (v4 + v42 + v38 + 1);
  if ((v2 & 0x8000) != 0)
  {
LABEL_80:
    v43 = *(this + 18);
    if (v43 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
      v2 = *(this + 59);
    }

    else
    {
      v44 = 3;
    }

    v4 = (v44 + v4);
  }

LABEL_84:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_144;
  }

  if ((v2 & 0x10000) != 0)
  {
    v45 = *(this + 19);
    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
      v2 = *(this + 59);
    }

    else
    {
      v46 = 3;
    }

    LODWORD(v4) = v46 + v4;
    if ((v2 & 0x20000) == 0)
    {
LABEL_87:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_104;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  v47 = *(this + 10);
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
    v2 = *(this + 59);
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

  LODWORD(v4) = v4 + v52 + v48 + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_88:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

LABEL_113:
    v59 = *(this + 13);
    v60 = *(v59 + 23);
    v61 = v60;
    v62 = *(v59 + 8);
    if ((v60 & 0x80u) == 0)
    {
      v63 = *(v59 + 23);
    }

    else
    {
      v63 = v62;
    }

    if (v63 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63);
      v60 = *(v59 + 23);
      v62 = *(v59 + 8);
      v2 = *(this + 59);
      v61 = *(v59 + 23);
    }

    else
    {
      v64 = 1;
    }

    if (v61 < 0)
    {
      v60 = v62;
    }

    LODWORD(v4) = v4 + v64 + v60 + 2;
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_122;
  }

LABEL_104:
  v53 = *(this + 11);
  v54 = *(v53 + 23);
  v55 = v54;
  v56 = *(v53 + 8);
  if ((v54 & 0x80u) == 0)
  {
    v57 = *(v53 + 23);
  }

  else
  {
    v57 = v56;
  }

  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
    v54 = *(v53 + 23);
    v56 = *(v53 + 8);
    v2 = *(this + 59);
    v55 = *(v53 + 23);
  }

  else
  {
    v58 = 1;
  }

  if (v55 < 0)
  {
    v54 = v56;
  }

  LODWORD(v4) = v4 + v58 + v54 + 2;
  if ((v2 & 0x80000) != 0)
  {
    goto LABEL_113;
  }

LABEL_89:
  if ((v2 & 0x100000) != 0)
  {
LABEL_122:
    v65 = *(this + 14);
    v66 = *(v65 + 23);
    v67 = v66;
    v68 = *(v65 + 8);
    if ((v66 & 0x80u) == 0)
    {
      v69 = *(v65 + 23);
    }

    else
    {
      v69 = v68;
    }

    if (v69 >= 0x80)
    {
      v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
      v66 = *(v65 + 23);
      v68 = *(v65 + 8);
      v2 = *(this + 59);
      v67 = *(v65 + 23);
    }

    else
    {
      v70 = 1;
    }

    if (v67 < 0)
    {
      v66 = v68;
    }

    LODWORD(v4) = v4 + v70 + v66 + 2;
  }

LABEL_131:
  if ((v2 & 0x200000) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v2 & 0x400000) != 0)
  {
    v71 = *(this + 25);
    if (v71 >= 0x80)
    {
      v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
      v2 = *(this + 59);
    }

    else
    {
      v72 = 3;
    }

    v4 = (v72 + v4);
  }

  if ((v2 & 0x800000) != 0)
  {
    v73 = *(this + 34);
    if (v73 >= 0x80)
    {
      v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73) + 2;
      v2 = *(this + 59);
    }

    else
    {
      v74 = 3;
    }

    v4 = (v74 + v4);
  }

LABEL_144:
  if (!HIBYTE(v2))
  {
    goto LABEL_199;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v75 = *(this + 15);
    v76 = *(v75 + 23);
    v77 = v76;
    v78 = *(v75 + 8);
    if ((v76 & 0x80u) == 0)
    {
      v79 = *(v75 + 23);
    }

    else
    {
      v79 = v78;
    }

    if (v79 >= 0x80)
    {
      v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79);
      v76 = *(v75 + 23);
      v78 = *(v75 + 8);
      v2 = *(this + 59);
      v77 = *(v75 + 23);
    }

    else
    {
      v80 = 1;
    }

    if (v77 < 0)
    {
      v76 = v78;
    }

    LODWORD(v4) = v4 + v80 + v76 + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_147:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_169;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_147;
  }

  v81 = *(this + 16);
  v82 = *(v81 + 23);
  v83 = v82;
  v84 = *(v81 + 8);
  if ((v82 & 0x80u) == 0)
  {
    v85 = *(v81 + 23);
  }

  else
  {
    v85 = v84;
  }

  if (v85 >= 0x80)
  {
    v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85);
    v82 = *(v81 + 23);
    v84 = *(v81 + 8);
    v2 = *(this + 59);
    v83 = *(v81 + 23);
  }

  else
  {
    v86 = 1;
  }

  if (v83 < 0)
  {
    v82 = v84;
  }

  LODWORD(v4) = v4 + v86 + v82 + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_148:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_149;
    }

LABEL_178:
    v93 = *(this + 35);
    if (v93 >= 0x80)
    {
      v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
      v2 = *(this + 59);
    }

    else
    {
      v94 = 3;
    }

    LODWORD(v4) = v94 + v4;
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_182;
  }

LABEL_169:
  v87 = *(this + 18);
  v88 = *(v87 + 23);
  v89 = v88;
  v90 = *(v87 + 8);
  if ((v88 & 0x80u) == 0)
  {
    v91 = *(v87 + 23);
  }

  else
  {
    v91 = v90;
  }

  if (v91 >= 0x80)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
    v88 = *(v87 + 23);
    v90 = *(v87 + 8);
    v2 = *(this + 59);
    v89 = *(v87 + 23);
  }

  else
  {
    v92 = 1;
  }

  if (v89 < 0)
  {
    v88 = v90;
  }

  LODWORD(v4) = v4 + v92 + v88 + 2;
  if ((v2 & 0x8000000) != 0)
  {
    goto LABEL_178;
  }

LABEL_149:
  if ((v2 & 0x10000000) != 0)
  {
LABEL_182:
    v95 = *(this + 38);
    if (v95 >= 0x80)
    {
      v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
      v2 = *(this + 59);
    }

    else
    {
      v96 = 3;
    }

    LODWORD(v4) = v96 + v4;
  }

LABEL_186:
  if ((v2 & 0x20000000) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v2 & 0x40000000) != 0)
  {
    v97 = *(this + 39);
    if (v97 >= 0x80)
    {
      v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
      v2 = *(this + 59);
    }

    else
    {
      v98 = 3;
    }

    v4 = (v98 + v4);
  }

  if ((v2 & 0x80000000) != 0)
  {
    v99 = *(this + 42);
    if (v99 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99) + 2;
    }

    else
    {
      v100 = 3;
    }

    v4 = (v100 + v4);
  }

LABEL_199:
  v101 = *(this + 60);
  if (!v101)
  {
    goto LABEL_245;
  }

  if (v101)
  {
    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 20)) + 2;
    v101 = *(this + 60);
  }

  if ((v101 & 2) != 0)
  {
    v102 = ((2 * *(this + 43)) ^ (*(this + 43) >> 31));
    if (v102 >= 0x80)
    {
      v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102) + 2;
      v101 = *(this + 60);
    }

    else
    {
      v103 = 3;
    }

    LODWORD(v4) = v103 + v4;
  }

  if ((v101 & 4) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v101 & 8) != 0)
  {
    v104 = *(this + 22);
    v105 = *(v104 + 23);
    v106 = v105;
    v107 = *(v104 + 8);
    if ((v105 & 0x80u) == 0)
    {
      v108 = *(v104 + 23);
    }

    else
    {
      v108 = v107;
    }

    if (v108 >= 0x80)
    {
      v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108);
      v105 = *(v104 + 23);
      v107 = *(v104 + 8);
      v101 = *(this + 60);
      v106 = *(v104 + 23);
    }

    else
    {
      v109 = 1;
    }

    if (v106 < 0)
    {
      v105 = v107;
    }

    v4 = (v4 + v109 + v105 + 2);
    if ((v101 & 0x10) == 0)
    {
LABEL_212:
      if ((v101 & 0x20) == 0)
      {
        goto LABEL_213;
      }

      goto LABEL_231;
    }
  }

  else if ((v101 & 0x10) == 0)
  {
    goto LABEL_212;
  }

  v110 = *(this + 46);
  if ((v110 & 0x80000000) != 0)
  {
    v111 = 12;
  }

  else if (v110 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110) + 2;
    v101 = *(this + 60);
  }

  else
  {
    v111 = 3;
  }

  v4 = (v111 + v4);
  if ((v101 & 0x20) == 0)
  {
LABEL_213:
    if ((v101 & 0x40) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_237;
  }

LABEL_231:
  v112 = *(this + 47);
  if ((v112 & 0x80000000) != 0)
  {
    v113 = 12;
  }

  else if (v112 >= 0x80)
  {
    v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112) + 2;
    v101 = *(this + 60);
  }

  else
  {
    v113 = 3;
  }

  v4 = (v113 + v4);
  if ((v101 & 0x40) == 0)
  {
LABEL_214:
    if ((v101 & 0x80) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_241;
  }

LABEL_237:
  v114 = *(this + 48);
  if (v114 >= 0x80)
  {
    v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114) + 2;
    v101 = *(this + 60);
  }

  else
  {
    v115 = 3;
  }

  v4 = (v115 + v4);
  if ((v101 & 0x80) != 0)
  {
LABEL_241:
    v116 = *(this + 50);
    if (v116 >= 0x80)
    {
      v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116) + 2;
      v101 = *(this + 60);
    }

    else
    {
      v117 = 3;
    }

    v4 = (v117 + v4);
  }

LABEL_245:
  if ((v101 & 0xFF00) == 0)
  {
    goto LABEL_285;
  }

  if ((v101 & 0x100) != 0)
  {
    v118 = *(this + 51);
    if (v118 >= 0x80)
    {
      v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
      v101 = *(this + 60);
    }

    else
    {
      v119 = 3;
    }

    LODWORD(v4) = v119 + v4;
    if ((v101 & 0x200) == 0)
    {
LABEL_248:
      if ((v101 & 0x400) == 0)
      {
        goto LABEL_249;
      }

LABEL_259:
      v122 = *(this + 53);
      if (v122 >= 0x80)
      {
        v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122) + 2;
        v101 = *(this + 60);
      }

      else
      {
        v123 = 3;
      }

      LODWORD(v4) = v123 + v4;
      if ((v101 & 0x800) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_263;
    }
  }

  else if ((v101 & 0x200) == 0)
  {
    goto LABEL_248;
  }

  v120 = *(this + 52);
  if (v120 >= 0x80)
  {
    v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
    v101 = *(this + 60);
  }

  else
  {
    v121 = 3;
  }

  LODWORD(v4) = v121 + v4;
  if ((v101 & 0x400) != 0)
  {
    goto LABEL_259;
  }

LABEL_249:
  if ((v101 & 0x800) != 0)
  {
LABEL_263:
    v124 = *(this + 54);
    if (v124 >= 0x80)
    {
      v125 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124) + 2;
      v101 = *(this + 60);
    }

    else
    {
      v125 = 3;
    }

    LODWORD(v4) = v125 + v4;
  }

LABEL_267:
  if ((v101 & 0x1000) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v101 & 0x2000) != 0)
  {
    v126 = *(this + 55);
    if (v126 >= 0x80)
    {
      v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126) + 2;
      v101 = *(this + 60);
    }

    else
    {
      v127 = 3;
    }

    v4 = (v127 + v4);
  }

  if ((v101 & 0x4000) != 0)
  {
    v128 = *(this + 28);
    v129 = *(v128 + 23);
    v130 = v129;
    v131 = *(v128 + 8);
    if ((v129 & 0x80u) == 0)
    {
      v132 = *(v128 + 23);
    }

    else
    {
      v132 = v131;
    }

    if (v132 >= 0x80)
    {
      v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132);
      v129 = *(v128 + 23);
      v131 = *(v128 + 8);
      v130 = *(v128 + 23);
    }

    else
    {
      v133 = 1;
    }

    if (v130 < 0)
    {
      v129 = v131;
    }

    v4 = (v4 + v133 + v129 + 2);
  }

LABEL_285:
  *(this + 58) = v4;
  return v4;
}