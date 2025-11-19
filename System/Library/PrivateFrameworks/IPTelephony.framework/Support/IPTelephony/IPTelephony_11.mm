void awd::metrics::ATM_CallEndEvent::CheckTypeAndMergeFrom(const void **this, const void **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v175);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 33), (lpsrc + 33));
  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 53), (lpsrc + 53));
  v5 = *(this + 130);
  v6 = *(lpsrc + 130);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
  LODWORD(v7) = *(lpsrc + 130);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v175);
      }

      v9 = *(lpsrc[64] + v8);
      v10 = *(this + 130);
      v11 = *(this + 131);
      if (v10 >= v11)
      {
        if (v11 == *(this + 132))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
          v11 = *(this + 131);
        }

        *(this + 131) = v11 + 1;
        operator new();
      }

      v12 = this[64];
      *(this + 130) = v10 + 1;
      awd::metrics::ATM_CallEndEvent_myreason::MergeFrom(v12[v10], v9);
      ++v8;
      v7 = *(lpsrc + 130);
    }

    while (v8 < v7);
  }

  v13 = *(lpsrc + 136);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(this + 67, *(this + 136) + v13);
    memcpy(this[67] + *(this + 136), lpsrc[67], *(lpsrc + 136));
    *(this + 136) += *(lpsrc + 136);
  }

  v14 = *(this + 142);
  v15 = *(lpsrc + 142);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 70));
  LODWORD(v16) = *(lpsrc + 142);
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      if (v17 >= v16)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v175);
      }

      v18 = *(lpsrc[70] + v17);
      v19 = *(this + 142);
      v20 = *(this + 143);
      if (v19 >= v20)
      {
        if (v20 == *(this + 144))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 70));
          v20 = *(this + 143);
        }

        *(this + 143) = v20 + 1;
        operator new();
      }

      v21 = this[70];
      *(this + 142) = v19 + 1;
      awd::metrics::ATM_CallEndEvent_handover::MergeFrom(v21[v19], v18);
      ++v17;
      v16 = *(lpsrc + 142);
    }

    while (v17 < v16);
  }

  v22 = *(lpsrc + 168);
  if (!v22)
  {
    goto LABEL_36;
  }

  if (v22)
  {
    v40 = lpsrc[1];
    *(this + 168) |= 1u;
    this[1] = v40;
    v22 = *(lpsrc + 168);
    if ((v22 & 2) == 0)
    {
LABEL_29:
      if ((v22 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_148;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_29;
  }

  v41 = lpsrc[2];
  *(this + 168) |= 2u;
  v42 = this[2];
  if (v42 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v42, v41);
  v22 = *(lpsrc + 168);
  if ((v22 & 4) == 0)
  {
LABEL_30:
    if ((v22 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_149;
  }

LABEL_148:
  v43 = *(lpsrc + 28);
  *(this + 168) |= 4u;
  *(this + 28) = v43;
  v22 = *(lpsrc + 168);
  if ((v22 & 8) == 0)
  {
LABEL_31:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_151;
  }

LABEL_149:
  v44 = *(lpsrc + 6);
  if ((v44 + 1) >= 8)
  {
    __assert_rtn("set_type", "CATM.pb.h", 12814, "::awd::metrics::enum_ATM_call_type_IsValid(value)");
  }

  *(this + 168) |= 8u;
  *(this + 6) = v44;
  v22 = *(lpsrc + 168);
  if ((v22 & 0x10) == 0)
  {
LABEL_32:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_152:
    v46 = *(lpsrc + 30);
    *(this + 168) |= 0x20u;
    *(this + 30) = v46;
    v22 = *(lpsrc + 168);
    if ((v22 & 0x40) == 0)
    {
LABEL_34:
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_153;
  }

LABEL_151:
  v45 = *(lpsrc + 29);
  *(this + 168) |= 0x10u;
  *(this + 29) = v45;
  v22 = *(lpsrc + 168);
  if ((v22 & 0x20) != 0)
  {
    goto LABEL_152;
  }

LABEL_33:
  if ((v22 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_153:
  v47 = *(lpsrc + 31);
  *(this + 168) |= 0x40u;
  *(this + 31) = v47;
  v22 = *(lpsrc + 168);
  if ((v22 & 0x80) != 0)
  {
LABEL_35:
    v23 = *(lpsrc + 100);
    *(this + 168) |= 0x80u;
    *(this + 100) = v23;
    v22 = *(lpsrc + 168);
  }

LABEL_36:
  if ((v22 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v22 & 0x100) != 0)
  {
    v24 = *(lpsrc + 10);
    if ((v24 - 1) >= 6 && v24 != -1)
    {
      __assert_rtn("set_invite_type", "CATM.pb.h", 12925, "::awd::metrics::enum_ATM_invite_call_type_IsValid(value)");
    }

    *(this + 168) |= 0x100u;
    *(this + 10) = v24;
    v22 = *(lpsrc + 168);
  }

  if ((v22 & 0x200) != 0)
  {
    v66 = lpsrc[4];
    *(this + 168) |= 0x200u;
    v67 = this[4];
    if (v67 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v67, v66);
    v22 = *(lpsrc + 168);
    if ((v22 & 0x400) == 0)
    {
LABEL_42:
      if ((v22 & 0x800) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_186;
    }
  }

  else if ((v22 & 0x400) == 0)
  {
    goto LABEL_42;
  }

  v68 = *(lpsrc + 11);
  *(this + 168) |= 0x400u;
  *(this + 11) = v68;
  v22 = *(lpsrc + 168);
  if ((v22 & 0x800) == 0)
  {
LABEL_43:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_189;
  }

LABEL_186:
  v69 = lpsrc[6];
  *(this + 168) |= 0x800u;
  v70 = this[6];
  if (v70 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v70, v69);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x1000) == 0)
  {
LABEL_44:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_190;
  }

LABEL_189:
  v71 = *(lpsrc + 101);
  *(this + 168) |= 0x1000u;
  *(this + 101) = v71;
  v22 = *(lpsrc + 168);
  if ((v22 & 0x2000) == 0)
  {
LABEL_45:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_193;
  }

LABEL_190:
  v72 = lpsrc[7];
  *(this + 168) |= 0x2000u;
  v73 = this[7];
  if (v73 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v73, v72);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x4000) == 0)
  {
LABEL_46:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_193:
  v74 = lpsrc[8];
  *(this + 168) |= 0x4000u;
  v75 = this[8];
  if (v75 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v75, v74);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x8000) != 0)
  {
LABEL_47:
    v25 = *(lpsrc + 24);
    *(this + 168) |= 0x8000u;
    *(this + 24) = v25;
    v22 = *(lpsrc + 168);
  }

LABEL_48:
  if ((v22 & 0xFF0000) == 0)
  {
    goto LABEL_58;
  }

  if ((v22 & 0x10000) != 0)
  {
    v48 = lpsrc[9];
    *(this + 168) |= 0x10000u;
    v49 = this[9];
    if (v49 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v49, v48);
    v22 = *(lpsrc + 168);
    if ((v22 & 0x20000) == 0)
    {
LABEL_51:
      if ((v22 & 0x40000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_161;
    }
  }

  else if ((v22 & 0x20000) == 0)
  {
    goto LABEL_51;
  }

  v50 = lpsrc[10];
  *(this + 168) |= 0x20000u;
  v51 = this[10];
  if (v51 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v51, v50);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x40000) == 0)
  {
LABEL_52:
    if ((v22 & 0x80000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_164;
  }

LABEL_161:
  v52 = lpsrc[11];
  *(this + 168) |= 0x40000u;
  v53 = this[11];
  if (v53 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v53, v52);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x80000) == 0)
  {
LABEL_53:
    if ((v22 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_167;
  }

LABEL_164:
  v54 = lpsrc[13];
  *(this + 168) |= 0x80000u;
  v55 = this[13];
  if (v55 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v55, v54);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x100000) == 0)
  {
LABEL_54:
    if ((v22 & 0x200000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_170;
  }

LABEL_167:
  v56 = lpsrc[14];
  *(this + 168) |= 0x100000u;
  v57 = this[14];
  if (v57 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v57, v56);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x200000) == 0)
  {
LABEL_55:
    if ((v22 & 0x400000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_171;
  }

LABEL_170:
  v58 = *(lpsrc + 30);
  *(this + 168) |= 0x200000u;
  *(this + 30) = v58;
  v22 = *(lpsrc + 168);
  if ((v22 & 0x400000) == 0)
  {
LABEL_56:
    if ((v22 & 0x800000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_171:
  v59 = *(lpsrc + 31);
  *(this + 168) |= 0x400000u;
  *(this + 31) = v59;
  v22 = *(lpsrc + 168);
  if ((v22 & 0x800000) != 0)
  {
LABEL_57:
    v26 = *(lpsrc + 32);
    *(this + 168) |= 0x800000u;
    *(this + 32) = v26;
    v22 = *(lpsrc + 168);
  }

LABEL_58:
  if (!HIBYTE(v22))
  {
    goto LABEL_67;
  }

  if ((v22 & 0x1000000) != 0)
  {
    v133 = *(lpsrc + 102);
    *(this + 168) |= 0x1000000u;
    *(this + 102) = v133;
    v22 = *(lpsrc + 168);
    if ((v22 & 0x2000000) == 0)
    {
LABEL_61:
      if ((v22 & 0x4000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_308;
    }
  }

  else if ((v22 & 0x2000000) == 0)
  {
    goto LABEL_61;
  }

  v134 = *(lpsrc + 33);
  *(this + 168) |= 0x2000000u;
  *(this + 33) = v134;
  v22 = *(lpsrc + 168);
  if ((v22 & 0x4000000) == 0)
  {
LABEL_62:
    if ((v22 & 0x8000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_309;
  }

LABEL_308:
  v135 = *(lpsrc + 36);
  *(this + 168) |= 0x4000000u;
  *(this + 36) = v135;
  v22 = *(lpsrc + 168);
  if ((v22 & 0x8000000) == 0)
  {
LABEL_63:
    if ((v22 & 0x10000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_312;
  }

LABEL_309:
  v136 = lpsrc[17];
  *(this + 168) |= 0x8000000u;
  v137 = this[17];
  if (v137 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v137, v136);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x10000000) == 0)
  {
LABEL_64:
    if ((v22 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_315;
  }

LABEL_312:
  v138 = lpsrc[19];
  *(this + 168) |= 0x10000000u;
  v139 = this[19];
  if (v139 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v139, v138);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x20000000) == 0)
  {
LABEL_65:
    if ((v22 & 0x40000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_318:
    v142 = *(lpsrc + 37);
    *(this + 168) |= 0x40000000u;
    *(this + 37) = v142;
    if ((lpsrc[84] & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_319;
  }

LABEL_315:
  v140 = lpsrc[20];
  *(this + 168) |= 0x20000000u;
  v141 = this[20];
  if (v141 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v141, v140);
  v22 = *(lpsrc + 168);
  if ((v22 & 0x40000000) != 0)
  {
    goto LABEL_318;
  }

LABEL_66:
  if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_319:
  v143 = *(lpsrc + 42);
  *(this + 168) |= 0x80000000;
  *(this + 42) = v143;
LABEL_67:
  v27 = *(lpsrc + 169);
  if (!v27)
  {
    goto LABEL_80;
  }

  if (v27)
  {
    v60 = *(lpsrc + 103);
    *(this + 169) |= 1u;
    *(this + 103) = v60;
    v27 = *(lpsrc + 169);
    if ((v27 & 2) == 0)
    {
LABEL_70:
      if ((v27 & 4) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_175;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_70;
  }

  v61 = *(lpsrc + 43);
  *(this + 169) |= 2u;
  *(this + 43) = v61;
  v27 = *(lpsrc + 169);
  if ((v27 & 4) == 0)
  {
LABEL_71:
    if ((v27 & 8) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_176;
  }

LABEL_175:
  v62 = *(lpsrc + 44);
  *(this + 169) |= 4u;
  *(this + 44) = v62;
  v27 = *(lpsrc + 169);
  if ((v27 & 8) == 0)
  {
LABEL_72:
    if ((v27 & 0x10) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_177;
  }

LABEL_176:
  v63 = lpsrc[23];
  *(this + 169) |= 8u;
  this[23] = v63;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x10) == 0)
  {
LABEL_73:
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_179;
  }

LABEL_177:
  v64 = *(lpsrc + 45);
  if (!awd::metrics::enum_ATM_CallEndReason_IsValid(v64))
  {
    __assert_rtn("set_end_reason", "CATM.pb.h", 14118, "::awd::metrics::enum_ATM_CallEndReason_IsValid(value)");
  }

  *(this + 169) |= 0x10u;
  *(this + 45) = v64;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x20) == 0)
  {
LABEL_74:
    if ((v27 & 0x40) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_179:
  v65 = *(lpsrc + 48);
  if ((awd::metrics::RESPONSE_Code_IsValid(v65) & 1) == 0)
  {
    __assert_rtn("set_status_code", "CATM.pb.h", 14141, "::awd::metrics::RESPONSE_Code_IsValid(value)");
  }

  *(this + 169) |= 0x20u;
  *(this + 48) = v65;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x40) == 0)
  {
    goto LABEL_76;
  }

LABEL_75:
  v28 = *(lpsrc + 236);
  *(this + 169) |= 0x40u;
  *(this + 236) = v28;
  v27 = *(lpsrc + 169);
LABEL_76:
  if ((v27 & 0x80) != 0)
  {
    v29 = lpsrc[25];
    *(this + 169) |= 0x80u;
    v30 = this[25];
    if (v30 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v30, v29);
    v27 = *(lpsrc + 169);
  }

LABEL_80:
  if ((v27 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v27 & 0x100) != 0)
  {
    v31 = *(lpsrc + 237);
    *(this + 169) |= 0x100u;
    *(this + 237) = v31;
    v27 = *(lpsrc + 169);
  }

  if ((v27 & 0x200) != 0)
  {
    v32 = *(lpsrc + 49);
    if (v32 >= 4)
    {
      __assert_rtn("set_callendstatus", "CATM.pb.h", 14278, "::awd::metrics::enum_ATM_call_end_status_IsValid(value)");
    }

    *(this + 169) |= 0x200u;
    *(this + 49) = v32;
    v27 = *(lpsrc + 169);
  }

  if ((v27 & 0x400) != 0)
  {
    v33 = *(lpsrc + 52);
    *(this + 169) |= 0x400u;
    *(this + 52) = v33;
    v27 = *(lpsrc + 169);
  }

  if ((v27 & 0x800) != 0)
  {
    v34 = *(lpsrc + 53);
    if ((awd::metrics::session_termination_reason_IsValid(v34) & 1) == 0)
    {
      __assert_rtn("set_bye_reason", "CATM.pb.h", 14323, "::awd::metrics::session_termination_reason_IsValid(value)");
    }

    *(this + 169) |= 0x800u;
    *(this + 53) = v34;
    v27 = *(lpsrc + 169);
  }

  if ((v27 & 0x1000) != 0)
  {
    v112 = lpsrc[27];
    *(this + 169) |= 0x1000u;
    this[27] = v112;
    v27 = *(lpsrc + 169);
    if ((v27 & 0x2000) == 0)
    {
LABEL_93:
      if ((v27 & 0x4000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_283;
    }
  }

  else if ((v27 & 0x2000) == 0)
  {
    goto LABEL_93;
  }

  v113 = *(lpsrc + 56);
  *(this + 169) |= 0x2000u;
  *(this + 56) = v113;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x4000) == 0)
  {
LABEL_94:
    if ((v27 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_283:
  v114 = *(lpsrc + 57);
  *(this + 169) |= 0x4000u;
  *(this + 57) = v114;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x8000) != 0)
  {
LABEL_95:
    v35 = *(lpsrc + 58);
    *(this + 169) |= 0x8000u;
    *(this + 58) = v35;
    v27 = *(lpsrc + 169);
  }

LABEL_96:
  if ((v27 & 0xFF0000) == 0)
  {
    goto LABEL_105;
  }

  if ((v27 & 0x10000) != 0)
  {
    v76 = *(lpsrc + 60);
    *(this + 169) |= 0x10000u;
    *(this + 60) = v76;
    v27 = *(lpsrc + 169);
    if ((v27 & 0x20000) == 0)
    {
LABEL_99:
      if ((v27 & 0x40000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_199;
    }
  }

  else if ((v27 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

  v77 = *(lpsrc + 61);
  *(this + 169) |= 0x20000u;
  *(this + 61) = v77;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x40000) == 0)
  {
LABEL_100:
    if ((v27 & 0x80000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_200;
  }

LABEL_199:
  v78 = *(lpsrc + 62);
  *(this + 169) |= 0x40000u;
  *(this + 62) = v78;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x80000) == 0)
  {
LABEL_101:
    if ((v27 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_201;
  }

LABEL_200:
  v79 = *(lpsrc + 63);
  *(this + 169) |= 0x80000u;
  *(this + 63) = v79;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x100000) == 0)
  {
LABEL_102:
    if ((v27 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_202;
  }

LABEL_201:
  v80 = *(lpsrc + 72);
  *(this + 169) |= 0x100000u;
  *(this + 72) = v80;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x200000) == 0)
  {
LABEL_103:
    if ((v27 & 0x800000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_202:
  v81 = lpsrc[32];
  *(this + 169) |= 0x200000u;
  v82 = this[32];
  if (v82 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v82, v81);
  v27 = *(lpsrc + 169);
  if ((v27 & 0x800000) != 0)
  {
LABEL_104:
    v36 = *(lpsrc + 238);
    *(this + 169) |= 0x800000u;
    *(this + 238) = v36;
    v27 = *(lpsrc + 169);
  }

LABEL_105:
  if (!HIBYTE(v27))
  {
    goto LABEL_114;
  }

  if ((v27 & 0x1000000) != 0)
  {
    v144 = *(lpsrc + 239);
    *(this + 169) |= 0x1000000u;
    *(this + 239) = v144;
    v27 = *(lpsrc + 169);
    if ((v27 & 0x2000000) == 0)
    {
LABEL_108:
      if ((v27 & 0x4000000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_322;
    }
  }

  else if ((v27 & 0x2000000) == 0)
  {
    goto LABEL_108;
  }

  v145 = *(lpsrc + 396);
  *(this + 169) |= 0x2000000u;
  *(this + 396) = v145;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x4000000) == 0)
  {
LABEL_109:
    if ((v27 & 0x8000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_323;
  }

LABEL_322:
  v146 = *(lpsrc + 73);
  *(this + 169) |= 0x4000000u;
  *(this + 73) = v146;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x8000000) == 0)
  {
LABEL_110:
    if ((v27 & 0x10000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_324;
  }

LABEL_323:
  v147 = *(lpsrc + 74);
  *(this + 169) |= 0x8000000u;
  *(this + 74) = v147;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x10000000) == 0)
  {
LABEL_111:
    if ((v27 & 0x20000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_325;
  }

LABEL_324:
  v148 = *(lpsrc + 75);
  *(this + 169) |= 0x10000000u;
  *(this + 75) = v148;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x20000000) == 0)
  {
LABEL_112:
    if ((v27 & 0x40000000) == 0)
    {
      goto LABEL_113;
    }

LABEL_326:
    v150 = *(lpsrc + 77);
    *(this + 169) |= 0x40000000u;
    *(this + 77) = v150;
    if ((*(lpsrc + 169) & 0x80000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_327;
  }

LABEL_325:
  v149 = *(lpsrc + 76);
  *(this + 169) |= 0x20000000u;
  *(this + 76) = v149;
  v27 = *(lpsrc + 169);
  if ((v27 & 0x40000000) != 0)
  {
    goto LABEL_326;
  }

LABEL_113:
  if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_114;
  }

LABEL_327:
  v151 = *(lpsrc + 78);
  *(this + 169) |= 0x80000000;
  *(this + 78) = v151;
LABEL_114:
  v37 = *(lpsrc + 170);
  if (!v37)
  {
    goto LABEL_124;
  }

  if (v37)
  {
    v83 = *(lpsrc + 79);
    *(this + 170) |= 1u;
    *(this + 79) = v83;
    v37 = *(lpsrc + 170);
    if ((v37 & 2) == 0)
    {
LABEL_117:
      if ((v37 & 4) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_208;
    }
  }

  else if ((v37 & 2) == 0)
  {
    goto LABEL_117;
  }

  v84 = *(lpsrc + 80);
  *(this + 170) |= 2u;
  *(this + 80) = v84;
  v37 = *(lpsrc + 170);
  if ((v37 & 4) == 0)
  {
LABEL_118:
    if ((v37 & 8) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_209;
  }

LABEL_208:
  v85 = *(lpsrc + 81);
  *(this + 170) |= 4u;
  *(this + 81) = v85;
  v37 = *(lpsrc + 170);
  if ((v37 & 8) == 0)
  {
LABEL_119:
    if ((v37 & 0x10) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_210;
  }

LABEL_209:
  v86 = *(lpsrc + 82);
  *(this + 170) |= 8u;
  *(this + 82) = v86;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x10) == 0)
  {
LABEL_120:
    if ((v37 & 0x20) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_211;
  }

LABEL_210:
  v87 = *(lpsrc + 83);
  *(this + 170) |= 0x10u;
  *(this + 83) = v87;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x20) == 0)
  {
LABEL_121:
    if ((v37 & 0x40) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_212;
  }

LABEL_211:
  v88 = *(lpsrc + 84);
  *(this + 170) |= 0x20u;
  *(this + 84) = v88;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x40) == 0)
  {
LABEL_122:
    if ((v37 & 0x80) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_212:
  v89 = *(lpsrc + 85);
  *(this + 170) |= 0x40u;
  *(this + 85) = v89;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x80) != 0)
  {
LABEL_123:
    v38 = *(lpsrc + 86);
    *(this + 170) |= 0x80u;
    *(this + 86) = v38;
    v37 = *(lpsrc + 170);
  }

LABEL_124:
  if ((v37 & 0xFF00) == 0)
  {
    goto LABEL_134;
  }

  if ((v37 & 0x100) != 0)
  {
    v90 = *(lpsrc + 87);
    *(this + 170) |= 0x100u;
    *(this + 87) = v90;
    v37 = *(lpsrc + 170);
    if ((v37 & 0x200) == 0)
    {
LABEL_127:
      if ((v37 & 0x400) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_216;
    }
  }

  else if ((v37 & 0x200) == 0)
  {
    goto LABEL_127;
  }

  v91 = *(lpsrc + 88);
  *(this + 170) |= 0x200u;
  *(this + 88) = v91;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x400) == 0)
  {
LABEL_128:
    if ((v37 & 0x800) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_217;
  }

LABEL_216:
  v92 = *(lpsrc + 89);
  *(this + 170) |= 0x400u;
  *(this + 89) = v92;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x800) == 0)
  {
LABEL_129:
    if ((v37 & 0x1000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_218;
  }

LABEL_217:
  v93 = *(lpsrc + 90);
  *(this + 170) |= 0x800u;
  *(this + 90) = v93;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x1000) == 0)
  {
LABEL_130:
    if ((v37 & 0x2000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_219;
  }

LABEL_218:
  v94 = *(lpsrc + 91);
  *(this + 170) |= 0x1000u;
  *(this + 91) = v94;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x2000) == 0)
  {
LABEL_131:
    if ((v37 & 0x4000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_220;
  }

LABEL_219:
  v95 = *(lpsrc + 92);
  *(this + 170) |= 0x2000u;
  *(this + 92) = v95;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x4000) == 0)
  {
LABEL_132:
    if ((v37 & 0x8000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

LABEL_220:
  v96 = *(lpsrc + 93);
  *(this + 170) |= 0x4000u;
  *(this + 93) = v96;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x8000) != 0)
  {
LABEL_133:
    v39 = *(lpsrc + 94);
    *(this + 170) |= 0x8000u;
    *(this + 94) = v39;
    v37 = *(lpsrc + 170);
  }

LABEL_134:
  if ((v37 & 0xFF0000) == 0)
  {
    goto LABEL_232;
  }

  if ((v37 & 0x10000) != 0)
  {
    v97 = *(lpsrc + 95);
    *(this + 170) |= 0x10000u;
    *(this + 95) = v97;
    v37 = *(lpsrc + 170);
    if ((v37 & 0x20000) == 0)
    {
LABEL_137:
      if ((v37 & 0x40000) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_224;
    }
  }

  else if ((v37 & 0x20000) == 0)
  {
    goto LABEL_137;
  }

  v98 = *(lpsrc + 96);
  *(this + 170) |= 0x20000u;
  *(this + 96) = v98;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x40000) == 0)
  {
LABEL_138:
    if ((v37 & 0x80000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_225;
  }

LABEL_224:
  v99 = *(lpsrc + 97);
  *(this + 170) |= 0x40000u;
  *(this + 97) = v99;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x80000) == 0)
  {
LABEL_139:
    if ((v37 & 0x100000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_226;
  }

LABEL_225:
  v100 = *(lpsrc + 98);
  *(this + 170) |= 0x80000u;
  *(this + 98) = v100;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x100000) == 0)
  {
LABEL_140:
    if ((v37 & 0x200000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_227;
  }

LABEL_226:
  v101 = *(lpsrc + 100);
  *(this + 170) |= 0x100000u;
  *(this + 100) = v101;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x200000) == 0)
  {
LABEL_141:
    if ((v37 & 0x400000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_228;
  }

LABEL_227:
  v102 = *(lpsrc + 397);
  *(this + 170) |= 0x200000u;
  *(this + 397) = v102;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x400000) == 0)
  {
LABEL_142:
    if ((v37 & 0x800000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_229;
  }

LABEL_228:
  v103 = *(lpsrc + 101);
  *(this + 170) |= 0x400000u;
  *(this + 101) = v103;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x800000) == 0)
  {
    goto LABEL_232;
  }

LABEL_229:
  v104 = lpsrc[51];
  *(this + 170) |= 0x800000u;
  v105 = this[51];
  if (v105 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v105, v104);
  v37 = *(lpsrc + 170);
LABEL_232:
  if (!HIBYTE(v37))
  {
    goto LABEL_244;
  }

  if ((v37 & 0x1000000) != 0)
  {
    v106 = *(lpsrc + 104);
    if (v106 >= 3)
    {
      __assert_rtn("set_amr_format", "CATM.pb.h", 15432, "::awd::metrics::enum_codec_format_IsValid(value)");
    }

    *(this + 170) |= 0x1000000u;
    *(this + 104) = v106;
    v37 = *(lpsrc + 170);
  }

  if ((v37 & 0x2000000) != 0)
  {
    v107 = *(lpsrc + 105);
    if (v107 >= 6)
    {
      __assert_rtn("set_codec", "CATM.pb.h", 15455, "::awd::metrics::enum_codec_type_IsValid(value)");
    }

    *(this + 170) |= 0x2000000u;
    *(this + 105) = v107;
    v37 = *(lpsrc + 170);
  }

  if ((v37 & 0x4000000) != 0)
  {
    v170 = *(lpsrc + 398);
    *(this + 170) |= 0x4000000u;
    *(this + 398) = v170;
    v37 = *(lpsrc + 170);
    if ((v37 & 0x10000000) == 0)
    {
LABEL_241:
      if ((v37 & 0x20000000) == 0)
      {
        goto LABEL_242;
      }

      goto LABEL_360;
    }
  }

  else if ((v37 & 0x10000000) == 0)
  {
    goto LABEL_241;
  }

  v171 = *(lpsrc + 114);
  *(this + 170) |= 0x10000000u;
  *(this + 114) = v171;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x20000000) == 0)
  {
LABEL_242:
    if ((v37 & 0x40000000) == 0)
    {
      goto LABEL_243;
    }

LABEL_361:
    v173 = lpsrc[58];
    *(this + 170) |= 0x40000000u;
    this[58] = v173;
    if ((lpsrc[85] & 0x80000000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_362;
  }

LABEL_360:
  v172 = lpsrc[56];
  *(this + 170) |= 0x20000000u;
  this[56] = v172;
  v37 = *(lpsrc + 170);
  if ((v37 & 0x40000000) != 0)
  {
    goto LABEL_361;
  }

LABEL_243:
  if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_244;
  }

LABEL_362:
  v174 = *(lpsrc + 115);
  *(this + 170) |= 0x80000000;
  *(this + 115) = v174;
LABEL_244:
  v108 = *(lpsrc + 171);
  if (!v108)
  {
    goto LABEL_254;
  }

  if (v108)
  {
    v115 = *(lpsrc + 120);
    *(this + 171) |= 1u;
    *(this + 120) = v115;
    v108 = *(lpsrc + 171);
    if ((v108 & 2) == 0)
    {
LABEL_247:
      if ((v108 & 4) == 0)
      {
        goto LABEL_248;
      }

      goto LABEL_287;
    }
  }

  else if ((v108 & 2) == 0)
  {
    goto LABEL_247;
  }

  v116 = lpsrc[59];
  *(this + 171) |= 2u;
  this[59] = v116;
  v108 = *(lpsrc + 171);
  if ((v108 & 4) == 0)
  {
LABEL_248:
    if ((v108 & 8) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_288;
  }

LABEL_287:
  v117 = lpsrc[61];
  *(this + 171) |= 4u;
  this[61] = v117;
  v108 = *(lpsrc + 171);
  if ((v108 & 8) == 0)
  {
LABEL_249:
    if ((v108 & 0x10) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_289;
  }

LABEL_288:
  v118 = *(lpsrc + 121);
  *(this + 171) |= 8u;
  *(this + 121) = v118;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x10) == 0)
  {
LABEL_250:
    if ((v108 & 0x20) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_290;
  }

LABEL_289:
  v119 = *(lpsrc + 124);
  *(this + 171) |= 0x10u;
  *(this + 124) = v119;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x20) == 0)
  {
LABEL_251:
    if ((v108 & 0x40) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_291;
  }

LABEL_290:
  v120 = *(lpsrc + 125);
  *(this + 171) |= 0x20u;
  *(this + 125) = v120;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x40) == 0)
  {
LABEL_252:
    if ((v108 & 0x80) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_253;
  }

LABEL_291:
  v121 = *(lpsrc + 399);
  *(this + 171) |= 0x40u;
  *(this + 399) = v121;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x80) != 0)
  {
LABEL_253:
    v109 = *(lpsrc + 126);
    *(this + 171) |= 0x80u;
    *(this + 126) = v109;
    v108 = *(lpsrc + 171);
  }

LABEL_254:
  if ((v108 & 0xFF00) == 0)
  {
    goto LABEL_261;
  }

  if ((v108 & 0x100) != 0)
  {
    v122 = *(lpsrc + 127);
    *(this + 171) |= 0x100u;
    *(this + 127) = v122;
    v108 = *(lpsrc + 171);
    if ((v108 & 0x200) == 0)
    {
LABEL_257:
      if ((v108 & 0x1000) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_295;
    }
  }

  else if ((v108 & 0x200) == 0)
  {
    goto LABEL_257;
  }

  v123 = *(lpsrc + 620);
  *(this + 171) |= 0x200u;
  *(this + 620) = v123;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x1000) == 0)
  {
LABEL_258:
    if ((v108 & 0x2000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_296;
  }

LABEL_295:
  v124 = *(lpsrc + 138);
  *(this + 171) |= 0x1000u;
  *(this + 138) = v124;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x2000) == 0)
  {
LABEL_259:
    if ((v108 & 0x4000) == 0)
    {
      goto LABEL_261;
    }

    goto LABEL_260;
  }

LABEL_296:
  v125 = *(lpsrc + 139);
  *(this + 171) |= 0x2000u;
  *(this + 139) = v125;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x4000) != 0)
  {
LABEL_260:
    v110 = *(lpsrc + 146);
    *(this + 171) |= 0x4000u;
    *(this + 146) = v110;
    v108 = *(lpsrc + 171);
  }

LABEL_261:
  if ((v108 & 0xFF0000) == 0)
  {
    goto LABEL_271;
  }

  if ((v108 & 0x10000) != 0)
  {
    v126 = *(lpsrc + 147);
    *(this + 171) |= 0x10000u;
    *(this + 147) = v126;
    v108 = *(lpsrc + 171);
    if ((v108 & 0x20000) == 0)
    {
LABEL_264:
      if ((v108 & 0x40000) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_300;
    }
  }

  else if ((v108 & 0x20000) == 0)
  {
    goto LABEL_264;
  }

  v127 = *(lpsrc + 148);
  *(this + 171) |= 0x20000u;
  *(this + 148) = v127;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x40000) == 0)
  {
LABEL_265:
    if ((v108 & 0x80000) == 0)
    {
      goto LABEL_266;
    }

    goto LABEL_301;
  }

LABEL_300:
  v128 = *(lpsrc + 149);
  *(this + 171) |= 0x40000u;
  *(this + 149) = v128;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x80000) == 0)
  {
LABEL_266:
    if ((v108 & 0x100000) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_302;
  }

LABEL_301:
  v129 = *(lpsrc + 150);
  *(this + 171) |= 0x80000u;
  *(this + 150) = v129;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x100000) == 0)
  {
LABEL_267:
    if ((v108 & 0x200000) == 0)
    {
      goto LABEL_268;
    }

    goto LABEL_303;
  }

LABEL_302:
  v130 = *(lpsrc + 151);
  *(this + 171) |= 0x100000u;
  *(this + 151) = v130;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x200000) == 0)
  {
LABEL_268:
    if ((v108 & 0x400000) == 0)
    {
      goto LABEL_269;
    }

    goto LABEL_304;
  }

LABEL_303:
  v131 = *(lpsrc + 152);
  *(this + 171) |= 0x200000u;
  *(this + 152) = v131;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x400000) == 0)
  {
LABEL_269:
    if ((v108 & 0x800000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_270;
  }

LABEL_304:
  v132 = *(lpsrc + 153);
  *(this + 171) |= 0x400000u;
  *(this + 153) = v132;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x800000) != 0)
  {
LABEL_270:
    v111 = *(lpsrc + 154);
    *(this + 171) |= 0x800000u;
    *(this + 154) = v111;
    v108 = *(lpsrc + 171);
  }

LABEL_271:
  if (!HIBYTE(v108))
  {
    goto LABEL_337;
  }

  if ((v108 & 0x1000000) != 0)
  {
    v152 = *(lpsrc + 156);
    *(this + 171) |= 0x1000000u;
    *(this + 156) = v152;
    v108 = *(lpsrc + 171);
    if ((v108 & 0x2000000) == 0)
    {
LABEL_274:
      if ((v108 & 0x4000000) == 0)
      {
        goto LABEL_275;
      }

      goto LABEL_330;
    }
  }

  else if ((v108 & 0x2000000) == 0)
  {
    goto LABEL_274;
  }

  v153 = *(lpsrc + 157);
  *(this + 171) |= 0x2000000u;
  *(this + 157) = v153;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x4000000) == 0)
  {
LABEL_275:
    if ((v108 & 0x8000000) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_331;
  }

LABEL_330:
  v154 = *(lpsrc + 158);
  *(this + 171) |= 0x4000000u;
  *(this + 158) = v154;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x8000000) == 0)
  {
LABEL_276:
    if ((v108 & 0x10000000) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_332;
  }

LABEL_331:
  v155 = *(lpsrc + 621);
  *(this + 171) |= 0x8000000u;
  *(this + 621) = v155;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x10000000) == 0)
  {
LABEL_277:
    if ((v108 & 0x20000000) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_333;
  }

LABEL_332:
  v156 = *(lpsrc + 622);
  *(this + 171) |= 0x10000000u;
  *(this + 622) = v156;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x20000000) == 0)
  {
LABEL_278:
    if ((v108 & 0x40000000) == 0)
    {
      goto LABEL_279;
    }

LABEL_334:
    v158 = *(lpsrc + 644);
    *(this + 171) |= 0x40000000u;
    *(this + 644) = v158;
    if ((*(lpsrc + 171) & 0x80000000) == 0)
    {
      goto LABEL_337;
    }

    goto LABEL_335;
  }

LABEL_333:
  v157 = *(lpsrc + 623);
  *(this + 171) |= 0x20000000u;
  *(this + 623) = v157;
  v108 = *(lpsrc + 171);
  if ((v108 & 0x40000000) != 0)
  {
    goto LABEL_334;
  }

LABEL_279:
  if ((v108 & 0x80000000) == 0)
  {
    goto LABEL_337;
  }

LABEL_335:
  v159 = *(lpsrc + 159);
  if ((v159 - 1) >= 9)
  {
    __assert_rtn("set_end_state", "CATM.pb.h", 16323, "::awd::metrics::enum_ATM_call_state_IsValid(value)");
  }

  *(this + 171) |= 0x80000000;
  *(this + 159) = v159;
LABEL_337:
  LOBYTE(v160) = *(lpsrc + 688);
  if (!v160)
  {
    return;
  }

  if (lpsrc[86])
  {
    v162 = *(lpsrc + 645);
    *(this + 172) |= 1u;
    *(this + 645) = v162;
    v160 = *(lpsrc + 172);
    if ((v160 & 2) == 0)
    {
LABEL_340:
      if ((v160 & 4) == 0)
      {
        goto LABEL_341;
      }

      goto LABEL_350;
    }
  }

  else if ((lpsrc[86] & 2) == 0)
  {
    goto LABEL_340;
  }

  v163 = *(lpsrc + 160);
  *(this + 172) |= 2u;
  *(this + 160) = v163;
  v160 = *(lpsrc + 172);
  if ((v160 & 4) == 0)
  {
LABEL_341:
    if ((v160 & 8) == 0)
    {
      goto LABEL_342;
    }

    goto LABEL_351;
  }

LABEL_350:
  v164 = *(lpsrc + 164);
  *(this + 172) |= 4u;
  *(this + 164) = v164;
  v160 = *(lpsrc + 172);
  if ((v160 & 8) == 0)
  {
LABEL_342:
    if ((v160 & 0x10) == 0)
    {
      goto LABEL_343;
    }

    goto LABEL_354;
  }

LABEL_351:
  v165 = lpsrc[81];
  *(this + 172) |= 8u;
  v166 = this[81];
  if (v166 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v166, v165);
  v160 = *(lpsrc + 172);
  if ((v160 & 0x10) == 0)
  {
LABEL_343:
    if ((v160 & 0x20) == 0)
    {
      goto LABEL_344;
    }

    goto LABEL_355;
  }

LABEL_354:
  v167 = *(lpsrc + 646);
  *(this + 172) |= 0x10u;
  *(this + 646) = v167;
  v160 = *(lpsrc + 172);
  if ((v160 & 0x20) == 0)
  {
LABEL_344:
    if ((v160 & 0x40) == 0)
    {
      goto LABEL_345;
    }

    goto LABEL_356;
  }

LABEL_355:
  v168 = *(lpsrc + 165);
  *(this + 172) |= 0x20u;
  *(this + 165) = v168;
  v160 = *(lpsrc + 172);
  if ((v160 & 0x40) == 0)
  {
LABEL_345:
    if ((v160 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_346;
  }

LABEL_356:
  v169 = *(lpsrc + 647);
  *(this + 172) |= 0x40u;
  *(this + 647) = v169;
  if ((lpsrc[86] & 0x80) != 0)
  {
LABEL_346:
    v161 = *(lpsrc + 664);
    *(this + 172) |= 0x80u;
    *(this + 664) = v161;
  }
}

void sub_1E4CFE0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BchannelTransmitStatistics::SharedDtor(uint64_t this)
{
  if (this != MEMORY[0x1E69E5958] && this != 0)
  {
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

void awd::metrics::BchannelTransmitStatistics::~BchannelTransmitStatistics(awd::metrics::BchannelTransmitStatistics *this)
{
  *this = &unk_1F5EC5F98;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 6));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC5F98;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 6));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::BchannelTransmitStatistics::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 36) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 = *(this + 48);
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

    *(this + 88) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    *(this + 56) = 0;
    v1 = *(this + 96);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 80) = 0;
  }

  *(this + 96) = 0;
  return this;
}

uint64_t awd::metrics::BchannelTransmitStatistics::MergePartialFromCodedStream(awd::metrics::BchannelTransmitStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (v7 != 5)
        {
          goto LABEL_47;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 4);
        if (result)
        {
          *(this + 24) |= 1u;
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v10 < v9 && *v10 == 16)
          {
            v11 = v10 + 1;
            *(a2 + 1) = v11;
            goto LABEL_35;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_35:
        if (v11 < v9)
        {
          v23 = *v11;
          if ((v23 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v23;
            v24 = v11 + 1;
            *(a2 + 1) = v24;
LABEL_53:
            *(this + 24) |= 2u;
            if (v24 < v9 && *v24 == 24)
            {
              v19 = v24 + 1;
              *(a2 + 1) = v19;
              goto LABEL_56;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v24 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_53;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_56:
        if (v19 >= v9 || (v30 = *v19, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v30;
          v31 = v19 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 24) |= 4u;
        if (v31 >= v9 || *v31 != 32)
        {
          continue;
        }

        v21 = v31 + 1;
        *(a2 + 1) = v21;
LABEL_64:
        if (v21 >= v9 || (v32 = *v21, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v32;
          v33 = v21 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 24) |= 8u;
        if (v33 >= v9 || *v33 != 40)
        {
          continue;
        }

        v16 = v33 + 1;
        *(a2 + 1) = v16;
LABEL_72:
        v59 = 0;
        if (v16 >= v9 || (v34 = *v16, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59);
          if (!result)
          {
            return result;
          }

          v34 = v59;
          v35 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v35 = v16 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 32) = v34 != 0;
        *(this + 24) |= 0x10u;
        if (v35 >= v9 || *v35 != 48)
        {
          continue;
        }

        v25 = v35 + 1;
        *(a2 + 1) = v25;
LABEL_80:
        if (v25 >= v9 || (v36 = *v25, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v36;
          v37 = v25 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 24) |= 0x20u;
        if (v37 >= v9 || *v37 != 56)
        {
          continue;
        }

        v27 = v37 + 1;
        *(a2 + 1) = v27;
LABEL_88:
        if (v27 >= v9 || (v38 = *v27, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v38;
          v39 = v27 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 24) |= 0x40u;
        if (v39 >= v9 || *v39 != 64)
        {
          continue;
        }

        v22 = v39 + 1;
        *(a2 + 1) = v22;
LABEL_96:
        if (v22 >= v9 || (v40 = *v22, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v40;
          v41 = v22 + 1;
          *(a2 + 1) = v41;
        }

        v29 = *(this + 24) | 0x80;
        *(this + 24) = v29;
        if (v41 >= v9 || *v41 != 74)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_104:
        *(this + 24) = v29 | 0x100;
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
        if (v42 >= v12 || *v42 != 80)
        {
          continue;
        }

        v18 = v42 + 1;
        *(a2 + 1) = v18;
LABEL_110:
        if (v18 >= v12 || (v43 = *v18, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v43;
          v44 = v18 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 24) |= 0x200u;
        if (v44 >= v12 || *v44 != 88)
        {
          continue;
        }

        v28 = v44 + 1;
        *(a2 + 1) = v28;
LABEL_118:
        if (v28 >= v12 || (v45 = *v28, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v45;
          v46 = v28 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 24) |= 0x400u;
        if (v46 >= v12 || *v46 != 96)
        {
          continue;
        }

        v15 = v46 + 1;
        *(a2 + 1) = v15;
LABEL_126:
        if (v15 >= v12 || (v47 = *v15, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v47;
          v48 = v15 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 24) |= 0x800u;
        if (v48 >= v12 || *v48 != 104)
        {
          continue;
        }

        v17 = v48 + 1;
        *(a2 + 1) = v17;
LABEL_134:
        if (v17 >= v12 || (v49 = *v17, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v49;
          v50 = v17 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 24) |= 0x1000u;
        if (v50 >= v12 || *v50 != 112)
        {
          continue;
        }

        v26 = v50 + 1;
        *(a2 + 1) = v26;
LABEL_142:
        if (v26 >= v12 || (v51 = *v26, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v51;
          v52 = v26 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 24) |= 0x2000u;
        if (v52 >= v12 || *v52 != 120)
        {
          continue;
        }

        v14 = v52 + 1;
        *(a2 + 1) = v14;
LABEL_150:
        if (v14 >= v12 || (v53 = *v14, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v53;
          v54 = (v14 + 1);
          *(a2 + 1) = v54;
        }

        *(this + 24) |= 0x4000u;
        if (v12 - v54 < 2 || *v54 != 128 || v54[1] != 1)
        {
          continue;
        }

        v20 = (v54 + 2);
        *(a2 + 1) = v20;
LABEL_159:
        if (v20 >= v12 || (v55 = *v20, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v55;
          v56 = (v20 + 1);
          *(a2 + 1) = v56;
        }

        *(this + 24) |= 0x8000u;
        if (v12 - v56 < 2 || *v56 != 136 || v56[1] != 1)
        {
          continue;
        }

        v13 = (v56 + 2);
        *(a2 + 1) = v13;
LABEL_168:
        if (v13 >= v12 || (v57 = *v13, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v57;
          v58 = v13 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 24) |= 0x10000u;
        if (v58 != v12 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_64;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_72;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v25 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_80;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_88;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_96;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_47;
        }

        v29 = *(this + 24);
        goto LABEL_104;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_110;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v28 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_118;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_126;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_134;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_142;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_150;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_159;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_168;
      default:
LABEL_47:
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

uint64_t awd::metrics::BchannelTransmitStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 96);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 96);
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
  v7 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
    if ((*(v5 + 96) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v6 & 0x10000) == 0)
  {
    return this;
  }

LABEL_35:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, v8, a2, a4);
}

uint64_t awd::metrics::BchannelTransmitStatistics::ByteSize(awd::metrics::BchannelTransmitStatistics *this)
{
  v2 = *(this + 24);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_29;
  }

  v3 = ((v2 << 31) >> 31) & 5;
  if ((v2 & 2) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 24);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 24);
  if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v5 = *(this + 5);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_13:
  v4 = ((v2 >> 3) & 2) + v3;
  if ((v2 & 0x20) != 0)
  {
    v7 = *(this + 9);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 24);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v2 & 0x40) == 0)
    {
LABEL_15:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(this + 10);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v2 & 0x80) != 0)
  {
LABEL_25:
    v11 = *(this + 11);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 24);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
  }

LABEL_29:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_38;
  }

  if ((v2 & 0x100) != 0)
  {
    v14 = *(this + 6);
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
      v2 = *(this + 24);
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

    v4 = (v4 + v19 + v15 + 1);
    if ((v2 & 0x200) == 0)
    {
LABEL_32:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_54;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v20 = *(this + 14);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_33:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_54:
  v22 = *(this + 15);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v2 & 0x800) == 0)
  {
LABEL_34:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_58:
  v24 = *(this + 16);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v2 & 0x1000) == 0)
  {
LABEL_35:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_62:
  v26 = *(this + 17);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v2 & 0x2000) == 0)
  {
LABEL_36:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_66:
  v28 = *(this + 18);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v29 = 2;
  }

  v4 = (v29 + v4);
  if ((v2 & 0x4000) == 0)
  {
LABEL_37:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

LABEL_74:
    v32 = *(this + 22);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 24);
    }

    else
    {
      v33 = 3;
    }

    v4 = (v33 + v4);
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_70:
  v30 = *(this + 19);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v31 = 2;
  }

  v4 = (v31 + v4);
  if ((v2 & 0x8000) != 0)
  {
    goto LABEL_74;
  }

LABEL_38:
  if ((v2 & 0x10000) != 0)
  {
LABEL_39:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 2;
  }

LABEL_40:
  *(this + 23) = v4;
  return v4;
}

void awd::metrics::BchannelTransmitStatistics::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v5 = *(lpsrc + 24);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v9 = *(lpsrc + 4);
    *(this + 24) |= 1u;
    *(this + 4) = v9;
    v5 = *(lpsrc + 24);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = lpsrc[1];
  *(this + 24) |= 2u;
  this[1] = v10;
  v5 = *(lpsrc + 24);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = lpsrc[3];
  *(this + 24) |= 4u;
  this[3] = v11;
  v5 = *(lpsrc + 24);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = *(lpsrc + 5);
  *(this + 24) |= 8u;
  *(this + 5) = v12;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_32:
    v14 = *(lpsrc + 9);
    *(this + 24) |= 0x20u;
    *(this + 9) = v14;
    v5 = *(lpsrc + 24);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_31:
  v13 = *(lpsrc + 32);
  *(this + 24) |= 0x10u;
  *(this + 32) = v13;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_33:
  v15 = *(lpsrc + 10);
  *(this + 24) |= 0x40u;
  *(this + 10) = v15;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 11);
    *(this + 24) |= 0x80u;
    *(this + 11) = v6;
    v5 = *(lpsrc + 24);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v5 & 0x100) != 0)
  {
    v16 = lpsrc[6];
    *(this + 24) |= 0x100u;
    v17 = this[6];
    if (v17 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v17, v16);
    v5 = *(lpsrc + 24);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(lpsrc + 14);
  *(this + 24) |= 0x200u;
  *(this + 14) = v18;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = *(lpsrc + 15);
  *(this + 24) |= 0x400u;
  *(this + 15) = v19;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = *(lpsrc + 16);
  *(this + 24) |= 0x800u;
  *(this + 16) = v20;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = *(lpsrc + 17);
  *(this + 24) |= 0x1000u;
  *(this + 17) = v21;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = *(lpsrc + 18);
  *(this + 24) |= 0x2000u;
  *(this + 18) = v22;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x4000) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_43:
  v23 = *(lpsrc + 19);
  *(this + 24) |= 0x4000u;
  *(this + 19) = v23;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    v7 = *(lpsrc + 22);
    *(this + 24) |= 0x8000u;
    *(this + 22) = v7;
    v5 = *(lpsrc + 24);
  }

LABEL_24:
  if ((v5 & 0x10000) != 0)
  {
    v8 = lpsrc[10];
    *(this + 24) |= 0x10000u;
    this[10] = v8;
  }
}

void sub_1E4CFF384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BchannelReceiveStatistics::~BchannelReceiveStatistics(awd::metrics::BchannelReceiveStatistics *this)
{
  *this = &unk_1F5EC6010;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 6));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6010;
  awd::metrics::BchannelTransmitStatistics::SharedDtor(*(this + 6));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::BchannelReceiveStatistics::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 36) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 = *(this + 48);
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

    *(this + 88) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    *(this + 56) = 0;
    v1 = *(this + 96);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 80) = 0;
  }

  *(this + 96) = 0;
  return this;
}

uint64_t awd::metrics::BchannelReceiveStatistics::MergePartialFromCodedStream(awd::metrics::BchannelReceiveStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (v7 != 5)
        {
          goto LABEL_47;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 4);
        if (result)
        {
          *(this + 24) |= 1u;
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v10 < v9 && *v10 == 16)
          {
            v11 = v10 + 1;
            *(a2 + 1) = v11;
            goto LABEL_35;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_35:
        if (v11 < v9)
        {
          v23 = *v11;
          if ((v23 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v23;
            v24 = v11 + 1;
            *(a2 + 1) = v24;
LABEL_53:
            *(this + 24) |= 2u;
            if (v24 < v9 && *v24 == 24)
            {
              v19 = v24 + 1;
              *(a2 + 1) = v19;
              goto LABEL_56;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v24 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_53;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_56:
        if (v19 >= v9 || (v30 = *v19, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v30;
          v31 = v19 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 24) |= 4u;
        if (v31 >= v9 || *v31 != 32)
        {
          continue;
        }

        v21 = v31 + 1;
        *(a2 + 1) = v21;
LABEL_64:
        if (v21 >= v9 || (v32 = *v21, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v32;
          v33 = v21 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 24) |= 8u;
        if (v33 >= v9 || *v33 != 40)
        {
          continue;
        }

        v16 = v33 + 1;
        *(a2 + 1) = v16;
LABEL_72:
        v59 = 0;
        if (v16 >= v9 || (v34 = *v16, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59);
          if (!result)
          {
            return result;
          }

          v34 = v59;
          v35 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v35 = v16 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 32) = v34 != 0;
        *(this + 24) |= 0x10u;
        if (v35 >= v9 || *v35 != 48)
        {
          continue;
        }

        v25 = v35 + 1;
        *(a2 + 1) = v25;
LABEL_80:
        if (v25 >= v9 || (v36 = *v25, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v36;
          v37 = v25 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 24) |= 0x20u;
        if (v37 >= v9 || *v37 != 56)
        {
          continue;
        }

        v27 = v37 + 1;
        *(a2 + 1) = v27;
LABEL_88:
        if (v27 >= v9 || (v38 = *v27, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v38;
          v39 = v27 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 24) |= 0x40u;
        if (v39 >= v9 || *v39 != 64)
        {
          continue;
        }

        v22 = v39 + 1;
        *(a2 + 1) = v22;
LABEL_96:
        if (v22 >= v9 || (v40 = *v22, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v40;
          v41 = v22 + 1;
          *(a2 + 1) = v41;
        }

        v29 = *(this + 24) | 0x80;
        *(this + 24) = v29;
        if (v41 >= v9 || *v41 != 74)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_104:
        *(this + 24) = v29 | 0x100;
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
        if (v42 >= v12 || *v42 != 80)
        {
          continue;
        }

        v18 = v42 + 1;
        *(a2 + 1) = v18;
LABEL_110:
        if (v18 >= v12 || (v43 = *v18, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v43;
          v44 = v18 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 24) |= 0x200u;
        if (v44 >= v12 || *v44 != 88)
        {
          continue;
        }

        v28 = v44 + 1;
        *(a2 + 1) = v28;
LABEL_118:
        if (v28 >= v12 || (v45 = *v28, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v45;
          v46 = v28 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 24) |= 0x400u;
        if (v46 >= v12 || *v46 != 96)
        {
          continue;
        }

        v15 = v46 + 1;
        *(a2 + 1) = v15;
LABEL_126:
        if (v15 >= v12 || (v47 = *v15, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v47;
          v48 = v15 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 24) |= 0x800u;
        if (v48 >= v12 || *v48 != 104)
        {
          continue;
        }

        v17 = v48 + 1;
        *(a2 + 1) = v17;
LABEL_134:
        if (v17 >= v12 || (v49 = *v17, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v49;
          v50 = v17 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 24) |= 0x1000u;
        if (v50 >= v12 || *v50 != 112)
        {
          continue;
        }

        v26 = v50 + 1;
        *(a2 + 1) = v26;
LABEL_142:
        if (v26 >= v12 || (v51 = *v26, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v51;
          v52 = v26 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 24) |= 0x2000u;
        if (v52 >= v12 || *v52 != 120)
        {
          continue;
        }

        v14 = v52 + 1;
        *(a2 + 1) = v14;
LABEL_150:
        if (v14 >= v12 || (v53 = *v14, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v53;
          v54 = (v14 + 1);
          *(a2 + 1) = v54;
        }

        *(this + 24) |= 0x4000u;
        if (v12 - v54 < 2 || *v54 != 128 || v54[1] != 1)
        {
          continue;
        }

        v20 = (v54 + 2);
        *(a2 + 1) = v20;
LABEL_159:
        if (v20 >= v12 || (v55 = *v20, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v55;
          v56 = (v20 + 1);
          *(a2 + 1) = v56;
        }

        *(this + 24) |= 0x8000u;
        if (v12 - v56 < 2 || *v56 != 136 || v56[1] != 1)
        {
          continue;
        }

        v13 = (v56 + 2);
        *(a2 + 1) = v13;
LABEL_168:
        if (v13 >= v12 || (v57 = *v13, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v57;
          v58 = v13 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 24) |= 0x10000u;
        if (v58 != v12 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_64;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_72;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v25 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_80;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_88;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_96;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_47;
        }

        v29 = *(this + 24);
        goto LABEL_104;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_110;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v28 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_118;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_126;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_134;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_142;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_150;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_159;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_168;
      default:
LABEL_47:
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

uint64_t awd::metrics::BchannelReceiveStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 96);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 96);
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
  v7 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
    if ((*(v5 + 96) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v6 & 0x10000) == 0)
  {
    return this;
  }

LABEL_35:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, v8, a2, a4);
}

uint64_t awd::metrics::BchannelReceiveStatistics::ByteSize(awd::metrics::BchannelReceiveStatistics *this)
{
  v2 = *(this + 24);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_29;
  }

  v3 = ((v2 << 31) >> 31) & 5;
  if ((v2 & 2) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 24);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 24);
  if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v5 = *(this + 5);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_13:
  v4 = ((v2 >> 3) & 2) + v3;
  if ((v2 & 0x20) != 0)
  {
    v7 = *(this + 9);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 24);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v2 & 0x40) == 0)
    {
LABEL_15:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(this + 10);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v2 & 0x80) != 0)
  {
LABEL_25:
    v11 = *(this + 11);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 24);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
  }

LABEL_29:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_38;
  }

  if ((v2 & 0x100) != 0)
  {
    v14 = *(this + 6);
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
      v2 = *(this + 24);
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

    v4 = (v4 + v19 + v15 + 1);
    if ((v2 & 0x200) == 0)
    {
LABEL_32:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_54;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v20 = *(this + 14);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_33:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_54:
  v22 = *(this + 15);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v2 & 0x800) == 0)
  {
LABEL_34:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_58:
  v24 = *(this + 16);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v2 & 0x1000) == 0)
  {
LABEL_35:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_62:
  v26 = *(this + 17);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v2 & 0x2000) == 0)
  {
LABEL_36:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_66:
  v28 = *(this + 18);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v29 = 2;
  }

  v4 = (v29 + v4);
  if ((v2 & 0x4000) == 0)
  {
LABEL_37:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

LABEL_74:
    v32 = *(this + 22);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 24);
    }

    else
    {
      v33 = 3;
    }

    v4 = (v33 + v4);
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_70:
  v30 = *(this + 19);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 24);
  }

  else
  {
    v31 = 2;
  }

  v4 = (v31 + v4);
  if ((v2 & 0x8000) != 0)
  {
    goto LABEL_74;
  }

LABEL_38:
  if ((v2 & 0x10000) != 0)
  {
LABEL_39:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 2;
  }

LABEL_40:
  *(this + 23) = v4;
  return v4;
}

void awd::metrics::BchannelReceiveStatistics::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v5 = *(lpsrc + 24);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v9 = *(lpsrc + 4);
    *(this + 24) |= 1u;
    *(this + 4) = v9;
    v5 = *(lpsrc + 24);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = lpsrc[1];
  *(this + 24) |= 2u;
  this[1] = v10;
  v5 = *(lpsrc + 24);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = lpsrc[3];
  *(this + 24) |= 4u;
  this[3] = v11;
  v5 = *(lpsrc + 24);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = *(lpsrc + 5);
  *(this + 24) |= 8u;
  *(this + 5) = v12;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_32:
    v14 = *(lpsrc + 9);
    *(this + 24) |= 0x20u;
    *(this + 9) = v14;
    v5 = *(lpsrc + 24);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_31:
  v13 = *(lpsrc + 32);
  *(this + 24) |= 0x10u;
  *(this + 32) = v13;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_33:
  v15 = *(lpsrc + 10);
  *(this + 24) |= 0x40u;
  *(this + 10) = v15;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 11);
    *(this + 24) |= 0x80u;
    *(this + 11) = v6;
    v5 = *(lpsrc + 24);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v5 & 0x100) != 0)
  {
    v16 = lpsrc[6];
    *(this + 24) |= 0x100u;
    v17 = this[6];
    if (v17 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v17, v16);
    v5 = *(lpsrc + 24);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(lpsrc + 14);
  *(this + 24) |= 0x200u;
  *(this + 14) = v18;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = *(lpsrc + 15);
  *(this + 24) |= 0x400u;
  *(this + 15) = v19;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = *(lpsrc + 16);
  *(this + 24) |= 0x800u;
  *(this + 16) = v20;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = *(lpsrc + 17);
  *(this + 24) |= 0x1000u;
  *(this + 17) = v21;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = *(lpsrc + 18);
  *(this + 24) |= 0x2000u;
  *(this + 18) = v22;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x4000) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_43:
  v23 = *(lpsrc + 19);
  *(this + 24) |= 0x4000u;
  *(this + 19) = v23;
  v5 = *(lpsrc + 24);
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    v7 = *(lpsrc + 22);
    *(this + 24) |= 0x8000u;
    *(this + 22) = v7;
    v5 = *(lpsrc + 24);
  }

LABEL_24:
  if ((v5 & 0x10000) != 0)
  {
    v8 = lpsrc[10];
    *(this + 24) |= 0x10000u;
    this[10] = v8;
  }
}

void sub_1E4D005B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::~Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock(awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this)
{
  *this = &unk_1F5EC6088;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6088;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 64) = 0;
    *(this + 56) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::MergePartialFromCodedStream(awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 5)
        {
          goto LABEL_47;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 2);
        if (result)
        {
          *(this + 18) |= 1u;
          v8 = *(a2 + 1);
          if (v8 < *(a2 + 2) && *v8 == 21)
          {
            *(a2 + 1) = v8 + 1;
            goto LABEL_27;
          }

          continue;
        }

        return result;
      case 2u:
        if (v6 != 5)
        {
          goto LABEL_47;
        }

LABEL_27:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 3);
        if (result)
        {
          *(this + 18) |= 2u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 29)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_31;
          }

          continue;
        }

        return result;
      case 3u:
        if (v6 != 5)
        {
          goto LABEL_47;
        }

LABEL_31:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 4);
        if (result)
        {
          *(this + 18) |= 4u;
          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v17 < v9 && *v17 == 32)
          {
            v14 = v17 + 1;
            *(a2 + 1) = v14;
            goto LABEL_35;
          }

          continue;
        }

        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_35:
        if (v14 < v9)
        {
          v18 = *v14;
          if ((v18 & 0x80000000) == 0)
          {
            *(this + 5) = v18;
            v19 = v14 + 1;
            *(a2 + 1) = v19;
LABEL_53:
            *(this + 18) |= 8u;
            if (v19 < v9 && *v19 == 40)
            {
              v11 = v19 + 1;
              *(a2 + 1) = v11;
              goto LABEL_56;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (result)
        {
          v19 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_53;
        }

        break;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_56:
        if (v11 >= v9 || (v25 = *v11, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v25;
          v26 = v11 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 18) |= 0x10u;
        if (v26 >= v9 || *v26 != 48)
        {
          continue;
        }

        v20 = v26 + 1;
        *(a2 + 1) = v20;
LABEL_64:
        if (v20 >= v9 || (v27 = *v20, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v27;
          v28 = v20 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 18) |= 0x20u;
        if (v28 >= v9 || *v28 != 56)
        {
          continue;
        }

        v22 = v28 + 1;
        *(a2 + 1) = v22;
LABEL_72:
        if (v22 >= v9 || (v29 = *v22, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v29;
          v30 = v22 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 18) |= 0x40u;
        if (v30 >= v9 || *v30 != 64)
        {
          continue;
        }

        v15 = v30 + 1;
        *(a2 + 1) = v15;
LABEL_80:
        if (v15 >= v9 || (v31 = *v15, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v31;
          v32 = v15 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 18) |= 0x80u;
        if (v32 >= v9 || *v32 != 72)
        {
          continue;
        }

        v24 = v32 + 1;
        *(a2 + 1) = v24;
LABEL_88:
        if (v24 >= v9 || (v33 = *v24, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v33;
          v34 = v24 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 18) |= 0x100u;
        if (v34 >= v9 || *v34 != 80)
        {
          continue;
        }

        v13 = v34 + 1;
        *(a2 + 1) = v13;
LABEL_96:
        if (v13 >= v9 || (v35 = *v13, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v35;
          v36 = v13 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 18) |= 0x200u;
        if (v36 >= v9 || *v36 != 88)
        {
          continue;
        }

        v23 = v36 + 1;
        *(a2 + 1) = v23;
LABEL_104:
        if (v23 >= v9 || (v37 = *v23, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v37;
          v38 = v23 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 18) |= 0x400u;
        if (v38 >= v9 || *v38 != 96)
        {
          continue;
        }

        v10 = v38 + 1;
        *(a2 + 1) = v10;
LABEL_112:
        if (v10 >= v9 || (v39 = *v10, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v39;
          v40 = v10 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 18) |= 0x800u;
        if (v40 >= v9 || *v40 != 104)
        {
          continue;
        }

        v12 = v40 + 1;
        *(a2 + 1) = v12;
LABEL_120:
        if (v12 >= v9 || (v41 = *v12, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v41;
          v42 = v12 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 18) |= 0x1000u;
        if (v42 >= v9 || *v42 != 112)
        {
          continue;
        }

        v21 = v42 + 1;
        *(a2 + 1) = v21;
LABEL_128:
        if (v21 >= v9 || (v43 = *v21, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v43;
          v44 = v21 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 18) |= 0x2000u;
        if (v44 != v9 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_64;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_72;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_80;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v24 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_88;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_96;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_104;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_112;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_120;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_128;
      default:
LABEL_47:
        if (v6 == 4)
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

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 64), a2, a4);
    if ((*(v5 + 72) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xE, v7, a2, a4);
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::ByteSize(awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_34;
  }

  v3 = (v2 << 31 >> 31) & 5;
  if ((v2 & 2) != 0)
  {
    v3 += 5;
  }

  if ((v2 & 4) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v5 = *(this + 5);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    if ((v2 & 0x10) == 0)
    {
LABEL_9:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(this + 6);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_22:
  v9 = *(this + 7);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(this + 8);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v2 & 0x80) != 0)
  {
LABEL_30:
    v13 = *(this + 9);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
  }

LABEL_34:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v2 & 0x100) != 0)
  {
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
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

  v18 = *(this + 11);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_38:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

LABEL_51:
  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v2 & 0x800) == 0)
  {
LABEL_39:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_40;
    }

LABEL_59:
    v24 = *(this + 16);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v25 = 2;
    }

    v4 = (v25 + v4);
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

LABEL_55:
  v22 = *(this + 13);
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
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_59;
  }

LABEL_40:
  if ((v2 & 0x2000) != 0)
  {
LABEL_41:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

LABEL_42:
  *(this + 17) = v4;
  return v4;
}

void awd::metrics::Local_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v5 = *(lpsrc + 18);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v8 = *(lpsrc + 2);
    *(this + 18) |= 1u;
    *(this + 2) = v8;
    v5 = *(lpsrc + 18);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(lpsrc + 3);
  *(this + 18) |= 2u;
  *(this + 3) = v9;
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

LABEL_25:
  v10 = *(lpsrc + 4);
  *(this + 18) |= 4u;
  *(this + 4) = v10;
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
  v11 = *(lpsrc + 5);
  *(this + 18) |= 8u;
  *(this + 5) = v11;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v13 = *(lpsrc + 7);
    *(this + 18) |= 0x20u;
    *(this + 7) = v13;
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

    goto LABEL_29;
  }

LABEL_27:
  v12 = *(lpsrc + 6);
  *(this + 18) |= 0x10u;
  *(this + 6) = v12;
  v5 = *(lpsrc + 18);
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
  v14 = *(lpsrc + 8);
  *(this + 18) |= 0x40u;
  *(this + 8) = v14;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 9);
    *(this + 18) |= 0x80u;
    *(this + 9) = v6;
    v5 = *(lpsrc + 18);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    v15 = *(lpsrc + 10);
    *(this + 18) |= 0x100u;
    *(this + 10) = v15;
    v5 = *(lpsrc + 18);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v16 = *(lpsrc + 11);
  *(this + 18) |= 0x200u;
  *(this + 11) = v16;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(lpsrc + 12);
  *(this + 18) |= 0x400u;
  *(this + 12) = v17;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(lpsrc + 13);
  *(this + 18) |= 0x800u;
  *(this + 13) = v18;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_35:
  v19 = *(lpsrc + 16);
  *(this + 18) |= 0x1000u;
  *(this + 16) = v19;
  if ((lpsrc[9] & 0x2000) != 0)
  {
LABEL_21:
    v7 = lpsrc[7];
    *(this + 18) |= 0x2000u;
    this[7] = v7;
  }
}

void sub_1E4D013A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::~Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock(awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this)
{
  *this = &unk_1F5EC6100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 64) = 0;
    *(this + 56) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::MergePartialFromCodedStream(awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 5)
        {
          goto LABEL_47;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 2);
        if (result)
        {
          *(this + 18) |= 1u;
          v8 = *(a2 + 1);
          if (v8 < *(a2 + 2) && *v8 == 21)
          {
            *(a2 + 1) = v8 + 1;
            goto LABEL_27;
          }

          continue;
        }

        return result;
      case 2u:
        if (v6 != 5)
        {
          goto LABEL_47;
        }

LABEL_27:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 3);
        if (result)
        {
          *(this + 18) |= 2u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 29)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_31;
          }

          continue;
        }

        return result;
      case 3u:
        if (v6 != 5)
        {
          goto LABEL_47;
        }

LABEL_31:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 4);
        if (result)
        {
          *(this + 18) |= 4u;
          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v17 < v9 && *v17 == 32)
          {
            v14 = v17 + 1;
            *(a2 + 1) = v14;
            goto LABEL_35;
          }

          continue;
        }

        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_35:
        if (v14 < v9)
        {
          v18 = *v14;
          if ((v18 & 0x80000000) == 0)
          {
            *(this + 5) = v18;
            v19 = v14 + 1;
            *(a2 + 1) = v19;
LABEL_53:
            *(this + 18) |= 8u;
            if (v19 < v9 && *v19 == 40)
            {
              v11 = v19 + 1;
              *(a2 + 1) = v11;
              goto LABEL_56;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (result)
        {
          v19 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_53;
        }

        break;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_56:
        if (v11 >= v9 || (v25 = *v11, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v25;
          v26 = v11 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 18) |= 0x10u;
        if (v26 >= v9 || *v26 != 48)
        {
          continue;
        }

        v20 = v26 + 1;
        *(a2 + 1) = v20;
LABEL_64:
        if (v20 >= v9 || (v27 = *v20, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v27;
          v28 = v20 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 18) |= 0x20u;
        if (v28 >= v9 || *v28 != 56)
        {
          continue;
        }

        v22 = v28 + 1;
        *(a2 + 1) = v22;
LABEL_72:
        if (v22 >= v9 || (v29 = *v22, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v29;
          v30 = v22 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 18) |= 0x40u;
        if (v30 >= v9 || *v30 != 64)
        {
          continue;
        }

        v15 = v30 + 1;
        *(a2 + 1) = v15;
LABEL_80:
        if (v15 >= v9 || (v31 = *v15, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v31;
          v32 = v15 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 18) |= 0x80u;
        if (v32 >= v9 || *v32 != 72)
        {
          continue;
        }

        v24 = v32 + 1;
        *(a2 + 1) = v24;
LABEL_88:
        if (v24 >= v9 || (v33 = *v24, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v33;
          v34 = v24 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 18) |= 0x100u;
        if (v34 >= v9 || *v34 != 80)
        {
          continue;
        }

        v13 = v34 + 1;
        *(a2 + 1) = v13;
LABEL_96:
        if (v13 >= v9 || (v35 = *v13, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v35;
          v36 = v13 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 18) |= 0x200u;
        if (v36 >= v9 || *v36 != 88)
        {
          continue;
        }

        v23 = v36 + 1;
        *(a2 + 1) = v23;
LABEL_104:
        if (v23 >= v9 || (v37 = *v23, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v37;
          v38 = v23 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 18) |= 0x400u;
        if (v38 >= v9 || *v38 != 96)
        {
          continue;
        }

        v10 = v38 + 1;
        *(a2 + 1) = v10;
LABEL_112:
        if (v10 >= v9 || (v39 = *v10, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v39;
          v40 = v10 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 18) |= 0x800u;
        if (v40 >= v9 || *v40 != 104)
        {
          continue;
        }

        v12 = v40 + 1;
        *(a2 + 1) = v12;
LABEL_120:
        if (v12 >= v9 || (v41 = *v12, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v41;
          v42 = v12 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 18) |= 0x1000u;
        if (v42 >= v9 || *v42 != 112)
        {
          continue;
        }

        v21 = v42 + 1;
        *(a2 + 1) = v21;
LABEL_128:
        if (v21 >= v9 || (v43 = *v21, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v43;
          v44 = v21 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 18) |= 0x2000u;
        if (v44 != v9 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_64;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_72;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_80;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v24 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_88;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_96;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_104;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_112;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_120;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_128;
      default:
LABEL_47:
        if (v6 == 4)
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

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 64), a2, a4);
    if ((*(v5 + 72) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xE, v7, a2, a4);
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::ByteSize(awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_34;
  }

  v3 = (v2 << 31 >> 31) & 5;
  if ((v2 & 2) != 0)
  {
    v3 += 5;
  }

  if ((v2 & 4) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v5 = *(this + 5);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    if ((v2 & 0x10) == 0)
    {
LABEL_9:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(this + 6);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_22:
  v9 = *(this + 7);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(this + 8);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v2 & 0x80) != 0)
  {
LABEL_30:
    v13 = *(this + 9);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
  }

LABEL_34:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v2 & 0x100) != 0)
  {
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
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

  v18 = *(this + 11);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_38:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

LABEL_51:
  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v2 & 0x800) == 0)
  {
LABEL_39:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_40;
    }

LABEL_59:
    v24 = *(this + 16);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v25 = 2;
    }

    v4 = (v25 + v4);
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

LABEL_55:
  v22 = *(this + 13);
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
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_59;
  }

LABEL_40:
  if ((v2 & 0x2000) != 0)
  {
LABEL_41:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

LABEL_42:
  *(this + 17) = v4;
  return v4;
}

void awd::metrics::Remote_SoundUMB_Dchannel_XR_StatisticsSummaryReportBlock::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v5 = *(lpsrc + 18);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v8 = *(lpsrc + 2);
    *(this + 18) |= 1u;
    *(this + 2) = v8;
    v5 = *(lpsrc + 18);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(lpsrc + 3);
  *(this + 18) |= 2u;
  *(this + 3) = v9;
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

LABEL_25:
  v10 = *(lpsrc + 4);
  *(this + 18) |= 4u;
  *(this + 4) = v10;
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
  v11 = *(lpsrc + 5);
  *(this + 18) |= 8u;
  *(this + 5) = v11;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v13 = *(lpsrc + 7);
    *(this + 18) |= 0x20u;
    *(this + 7) = v13;
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

    goto LABEL_29;
  }

LABEL_27:
  v12 = *(lpsrc + 6);
  *(this + 18) |= 0x10u;
  *(this + 6) = v12;
  v5 = *(lpsrc + 18);
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
  v14 = *(lpsrc + 8);
  *(this + 18) |= 0x40u;
  *(this + 8) = v14;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 9);
    *(this + 18) |= 0x80u;
    *(this + 9) = v6;
    v5 = *(lpsrc + 18);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    v15 = *(lpsrc + 10);
    *(this + 18) |= 0x100u;
    *(this + 10) = v15;
    v5 = *(lpsrc + 18);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v16 = *(lpsrc + 11);
  *(this + 18) |= 0x200u;
  *(this + 11) = v16;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(lpsrc + 12);
  *(this + 18) |= 0x400u;
  *(this + 12) = v17;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(lpsrc + 13);
  *(this + 18) |= 0x800u;
  *(this + 13) = v18;
  v5 = *(lpsrc + 18);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_35:
  v19 = *(lpsrc + 16);
  *(this + 18) |= 0x1000u;
  *(this + 16) = v19;
  if ((lpsrc[9] & 0x2000) != 0)
  {
LABEL_21:
    v7 = lpsrc[7];
    *(this + 18) |= 0x2000u;
    this[7] = v7;
  }
}

void sub_1E4D02198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::~Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock(awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this)
{
  *this = &unk_1F5EC6178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC6178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::Clear(uint64_t this)
{
  v1 = *(this + 100);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
  }

  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::MergePartialFromCodedStream(awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 5)
        {
          goto LABEL_54;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 2);
        if (result)
        {
          *(this + 25) |= 1u;
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v9 < v8 && *v9 == 16)
          {
            v10 = v9 + 1;
            *(a2 + 1) = v10;
            goto LABEL_30;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_30:
        if (v10 < v8)
        {
          v19 = *v10;
          if ((v19 & 0x80000000) == 0)
          {
            *(this + 3) = v19;
            v20 = v10 + 1;
            *(a2 + 1) = v20;
LABEL_60:
            *(this + 25) |= 2u;
            if (v20 < v8 && *v20 == 24)
            {
              v16 = v20 + 1;
              *(a2 + 1) = v16;
              goto LABEL_63;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (result)
        {
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_60;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_63:
        if (v16 >= v8 || (v32 = *v16, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v32;
          v33 = v16 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 25) |= 4u;
        if (v33 >= v8 || *v33 != 32)
        {
          continue;
        }

        v25 = v33 + 1;
        *(a2 + 1) = v25;
LABEL_71:
        if (v25 >= v8 || (v34 = *v25, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v34;
          v35 = v25 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 25) |= 8u;
        if (v35 >= v8 || *v35 != 40)
        {
          continue;
        }

        v26 = v35 + 1;
        *(a2 + 1) = v26;
LABEL_79:
        if (v26 >= v8 || (v36 = *v26, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v36;
          v37 = v26 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 25) |= 0x10u;
        if (v37 >= v8 || *v37 != 48)
        {
          continue;
        }

        v17 = v37 + 1;
        *(a2 + 1) = v17;
LABEL_87:
        if (v17 >= v8 || (v38 = *v17, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v38;
          v39 = v17 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 25) |= 0x20u;
        if (v39 >= v8 || *v39 != 56)
        {
          continue;
        }

        v21 = v39 + 1;
        *(a2 + 1) = v21;
LABEL_95:
        if (v21 >= v8 || (v40 = *v21, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v40;
          v41 = v21 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 25) |= 0x40u;
        if (v41 >= v8 || *v41 != 64)
        {
          continue;
        }

        v22 = v41 + 1;
        *(a2 + 1) = v22;
LABEL_103:
        if (v22 >= v8 || (v42 = *v22, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v42;
          v43 = v22 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 25) |= 0x80u;
        if (v43 >= v8 || *v43 != 72)
        {
          continue;
        }

        v28 = v43 + 1;
        *(a2 + 1) = v28;
LABEL_111:
        if (v28 >= v8 || (v44 = *v28, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v44;
          v45 = v28 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 25) |= 0x100u;
        if (v45 >= v8 || *v45 != 80)
        {
          continue;
        }

        v27 = v45 + 1;
        *(a2 + 1) = v27;
LABEL_119:
        if (v27 >= v8 || (v46 = *v27, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v46;
          v47 = v27 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 25) |= 0x200u;
        if (v47 >= v8 || *v47 != 88)
        {
          continue;
        }

        v13 = v47 + 1;
        *(a2 + 1) = v13;
LABEL_127:
        if (v13 >= v8 || (v48 = *v13, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v48;
          v49 = v13 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 25) |= 0x400u;
        if (v49 >= v8 || *v49 != 96)
        {
          continue;
        }

        v18 = v49 + 1;
        *(a2 + 1) = v18;
LABEL_135:
        if (v18 >= v8 || (v50 = *v18, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v50;
          v51 = v18 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 25) |= 0x800u;
        if (v51 >= v8 || *v51 != 112)
        {
          continue;
        }

        v14 = v51 + 1;
        *(a2 + 1) = v14;
LABEL_143:
        if (v14 >= v8 || (v52 = *v14, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v52;
          v53 = v14 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 25) |= 0x1000u;
        if (v53 >= v8 || *v53 != 120)
        {
          continue;
        }

        v12 = v53 + 1;
        *(a2 + 1) = v12;
LABEL_151:
        if (v12 >= v8 || (v54 = *v12, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v54;
          v55 = (v12 + 1);
          *(a2 + 1) = v55;
        }

        *(this + 25) |= 0x2000u;
        if (v8 - v55 < 2 || *v55 != 128 || v55[1] != 1)
        {
          continue;
        }

        v23 = (v55 + 2);
        *(a2 + 1) = v23;
LABEL_160:
        if (v23 >= v8 || (v56 = *v23, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v56;
          v57 = (v23 + 1);
          *(a2 + 1) = v57;
        }

        *(this + 25) |= 0x4000u;
        if (v8 - v57 < 2 || *v57 != 136 || v57[1] != 1)
        {
          continue;
        }

        v24 = (v57 + 2);
        *(a2 + 1) = v24;
LABEL_169:
        if (v24 >= v8 || (v58 = *v24, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v58;
          v59 = (v24 + 1);
          *(a2 + 1) = v59;
        }

        *(this + 25) |= 0x8000u;
        if (v8 - v59 < 2 || *v59 != 144 || v59[1] != 1)
        {
          continue;
        }

        v30 = (v59 + 2);
        *(a2 + 1) = v30;
LABEL_178:
        if (v30 >= v8 || (v60 = *v30, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v60;
          v61 = (v30 + 1);
          *(a2 + 1) = v61;
        }

        *(this + 25) |= 0x10000u;
        if (v8 - v61 < 2 || *v61 != 152 || v61[1] != 1)
        {
          continue;
        }

        v29 = (v61 + 2);
        *(a2 + 1) = v29;
LABEL_187:
        if (v29 >= v8 || (v62 = *v29, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v62;
          v63 = (v29 + 1);
          *(a2 + 1) = v63;
        }

        *(this + 25) |= 0x20000u;
        if (v8 - v63 < 2 || *v63 != 160 || v63[1] != 1)
        {
          continue;
        }

        v11 = (v63 + 2);
        *(a2 + 1) = v11;
LABEL_196:
        if (v11 >= v8 || (v64 = *v11, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v64;
          v65 = (v11 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 25) |= 0x40000u;
        if (v8 - v65 < 2 || *v65 != 168 || v65[1] != 1)
        {
          continue;
        }

        v15 = (v65 + 2);
        *(a2 + 1) = v15;
LABEL_205:
        if (v15 >= v8 || (v66 = *v15, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v66;
          v67 = (v15 + 1);
          *(a2 + 1) = v67;
        }

        *(this + 25) |= 0x80000u;
        if (v8 - v67 < 2 || *v67 != 176 || v67[1] != 1)
        {
          continue;
        }

        v31 = (v67 + 2);
        *(a2 + 1) = v31;
LABEL_214:
        if (v31 >= v8 || (v68 = *v31, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v68;
          v69 = v31 + 1;
          *(a2 + 1) = v69;
        }

        *(this + 25) |= 0x100000u;
        if (v69 != v8 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_71;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_79;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_87;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_95;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_103;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_111;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_119;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_127;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_135;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_143;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_151;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_160;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_169;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_178;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_187;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_196;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_205;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v31 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_214;
      default:
LABEL_54:
        if (v6 == 4)
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

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::ByteSize(awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this)
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

void awd::metrics::Local_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

void sub_1E4D0364C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::~Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock(awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this)
{
  *this = &unk_1F5EC61F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC61F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::Clear(uint64_t this)
{
  v1 = *(this + 100);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
  }

  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock::MergePartialFromCodedStream(awd::metrics::Remote_SoundUMB_Dchannel_XR_VoIPMetricsReportBlock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 5)
        {
          goto LABEL_54;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, this + 2);
        if (result)
        {
          *(this + 25) |= 1u;
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v9 < v8 && *v9 == 16)
          {
            v10 = v9 + 1;
            *(a2 + 1) = v10;
            goto LABEL_30;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_30:
        if (v10 < v8)
        {
          v19 = *v10;
          if ((v19 & 0x80000000) == 0)
          {
            *(this + 3) = v19;
            v20 = v10 + 1;
            *(a2 + 1) = v20;
LABEL_60:
            *(this + 25) |= 2u;
            if (v20 < v8 && *v20 == 24)
            {
              v16 = v20 + 1;
              *(a2 + 1) = v16;
              goto LABEL_63;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (result)
        {
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_60;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_63:
        if (v16 >= v8 || (v32 = *v16, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v32;
          v33 = v16 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 25) |= 4u;
        if (v33 >= v8 || *v33 != 32)
        {
          continue;
        }

        v25 = v33 + 1;
        *(a2 + 1) = v25;
LABEL_71:
        if (v25 >= v8 || (v34 = *v25, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v34;
          v35 = v25 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 25) |= 8u;
        if (v35 >= v8 || *v35 != 40)
        {
          continue;
        }

        v26 = v35 + 1;
        *(a2 + 1) = v26;
LABEL_79:
        if (v26 >= v8 || (v36 = *v26, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v36;
          v37 = v26 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 25) |= 0x10u;
        if (v37 >= v8 || *v37 != 48)
        {
          continue;
        }

        v17 = v37 + 1;
        *(a2 + 1) = v17;
LABEL_87:
        if (v17 >= v8 || (v38 = *v17, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v38;
          v39 = v17 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 25) |= 0x20u;
        if (v39 >= v8 || *v39 != 56)
        {
          continue;
        }

        v21 = v39 + 1;
        *(a2 + 1) = v21;
LABEL_95:
        if (v21 >= v8 || (v40 = *v21, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v40;
          v41 = v21 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 25) |= 0x40u;
        if (v41 >= v8 || *v41 != 64)
        {
          continue;
        }

        v22 = v41 + 1;
        *(a2 + 1) = v22;
LABEL_103:
        if (v22 >= v8 || (v42 = *v22, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v42;
          v43 = v22 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 25) |= 0x80u;
        if (v43 >= v8 || *v43 != 72)
        {
          continue;
        }

        v28 = v43 + 1;
        *(a2 + 1) = v28;
LABEL_111:
        if (v28 >= v8 || (v44 = *v28, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v44;
          v45 = v28 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 25) |= 0x100u;
        if (v45 >= v8 || *v45 != 80)
        {
          continue;
        }

        v27 = v45 + 1;
        *(a2 + 1) = v27;
LABEL_119:
        if (v27 >= v8 || (v46 = *v27, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v46;
          v47 = v27 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 25) |= 0x200u;
        if (v47 >= v8 || *v47 != 88)
        {
          continue;
        }

        v13 = v47 + 1;
        *(a2 + 1) = v13;
LABEL_127:
        if (v13 >= v8 || (v48 = *v13, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v48;
          v49 = v13 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 25) |= 0x400u;
        if (v49 >= v8 || *v49 != 96)
        {
          continue;
        }

        v18 = v49 + 1;
        *(a2 + 1) = v18;
LABEL_135:
        if (v18 >= v8 || (v50 = *v18, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v50;
          v51 = v18 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 25) |= 0x800u;
        if (v51 >= v8 || *v51 != 112)
        {
          continue;
        }

        v14 = v51 + 1;
        *(a2 + 1) = v14;
LABEL_143:
        if (v14 >= v8 || (v52 = *v14, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v52;
          v53 = v14 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 25) |= 0x1000u;
        if (v53 >= v8 || *v53 != 120)
        {
          continue;
        }

        v12 = v53 + 1;
        *(a2 + 1) = v12;
LABEL_151:
        if (v12 >= v8 || (v54 = *v12, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v54;
          v55 = (v12 + 1);
          *(a2 + 1) = v55;
        }

        *(this + 25) |= 0x2000u;
        if (v8 - v55 < 2 || *v55 != 128 || v55[1] != 1)
        {
          continue;
        }

        v23 = (v55 + 2);
        *(a2 + 1) = v23;
LABEL_160:
        if (v23 >= v8 || (v56 = *v23, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v56;
          v57 = (v23 + 1);
          *(a2 + 1) = v57;
        }

        *(this + 25) |= 0x4000u;
        if (v8 - v57 < 2 || *v57 != 136 || v57[1] != 1)
        {
          continue;
        }

        v24 = (v57 + 2);
        *(a2 + 1) = v24;
LABEL_169:
        if (v24 >= v8 || (v58 = *v24, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v58;
          v59 = (v24 + 1);
          *(a2 + 1) = v59;
        }

        *(this + 25) |= 0x8000u;
        if (v8 - v59 < 2 || *v59 != 144 || v59[1] != 1)
        {
          continue;
        }

        v30 = (v59 + 2);
        *(a2 + 1) = v30;
LABEL_178:
        if (v30 >= v8 || (v60 = *v30, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v60;
          v61 = (v30 + 1);
          *(a2 + 1) = v61;
        }

        *(this + 25) |= 0x10000u;
        if (v8 - v61 < 2 || *v61 != 152 || v61[1] != 1)
        {
          continue;
        }

        v29 = (v61 + 2);
        *(a2 + 1) = v29;
LABEL_187:
        if (v29 >= v8 || (v62 = *v29, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v62;
          v63 = (v29 + 1);
          *(a2 + 1) = v63;
        }

        *(this + 25) |= 0x20000u;
        if (v8 - v63 < 2 || *v63 != 160 || v63[1] != 1)
        {
          continue;
        }

        v11 = (v63 + 2);
        *(a2 + 1) = v11;
LABEL_196:
        if (v11 >= v8 || (v64 = *v11, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v64;
          v65 = (v11 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 25) |= 0x40000u;
        if (v8 - v65 < 2 || *v65 != 168 || v65[1] != 1)
        {
          continue;
        }

        v15 = (v65 + 2);
        *(a2 + 1) = v15;
LABEL_205:
        if (v15 >= v8 || (v66 = *v15, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v66;
          v67 = (v15 + 1);
          *(a2 + 1) = v67;
        }

        *(this + 25) |= 0x80000u;
        if (v8 - v67 < 2 || *v67 != 176 || v67[1] != 1)
        {
          continue;
        }

        v31 = (v67 + 2);
        *(a2 + 1) = v31;
LABEL_214:
        if (v31 >= v8 || (v68 = *v31, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v68;
          v69 = v31 + 1;
          *(a2 + 1) = v69;
        }

        *(this + 25) |= 0x100000u;
        if (v69 != v8 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_71;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_79;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_87;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_95;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_103;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_111;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_119;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_127;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_135;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_143;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_151;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_160;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_169;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_178;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_187;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_196;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_205;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_54;
        }

        v31 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_214;
      default:
LABEL_54:
        if (v6 == 4)
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