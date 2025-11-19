void awd::metrics::ATM_CallConnectEvent::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v68);
  }

  v5 = *(lpsrc + 59);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v13 = lpsrc[1];
    *(this + 59) |= 1u;
    this[1] = v13;
    v5 = *(lpsrc + 59);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_69;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v14 = lpsrc[2];
  *(this + 59) |= 2u;
  v15 = this[2];
  if (v15 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v5 = *(lpsrc + 59);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_70;
  }

LABEL_69:
  v16 = *(lpsrc + 28);
  *(this + 59) |= 4u;
  *(this + 28) = v16;
  v5 = *(lpsrc + 59);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_72;
  }

LABEL_70:
  v17 = *(lpsrc + 6);
  if ((v17 + 1) >= 8)
  {
    __assert_rtn("set_type", "CATM.pb.h", 10746, "::awd::metrics::enum_ATM_call_type_IsValid(value)");
  }

  *(this + 59) |= 8u;
  *(this + 6) = v17;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_73:
    v19 = *(lpsrc + 30);
    *(this + 59) |= 0x20u;
    *(this + 30) = v19;
    v5 = *(lpsrc + 59);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_74;
  }

LABEL_72:
  v18 = *(lpsrc + 29);
  *(this + 59) |= 0x10u;
  *(this + 29) = v18;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_73;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_74:
  v20 = *(lpsrc + 31);
  *(this + 59) |= 0x40u;
  *(this + 31) = v20;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(lpsrc + 96);
    *(this + 59) |= 0x80u;
    *(this + 96) = v6;
    v5 = *(lpsrc + 59);
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v5 & 0x100) != 0)
  {
    v7 = *(lpsrc + 8);
    if ((v7 - 1) >= 6 && v7 != -1)
    {
      __assert_rtn("set_invite_type", "CATM.pb.h", 10857, "::awd::metrics::enum_ATM_invite_call_type_IsValid(value)");
    }

    *(this + 59) |= 0x100u;
    *(this + 8) = v7;
    v5 = *(lpsrc + 59);
  }

  if ((v5 & 0x200) != 0)
  {
    v39 = lpsrc[5];
    *(this + 59) |= 0x200u;
    v40 = this[5];
    if (v40 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v40, v39);
    v5 = *(lpsrc + 59);
    if ((v5 & 0x400) == 0)
    {
LABEL_20:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_107;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_20;
  }

  v41 = *(lpsrc + 9);
  *(this + 59) |= 0x400u;
  *(this + 9) = v41;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x800) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_110;
  }

LABEL_107:
  v42 = lpsrc[6];
  *(this + 59) |= 0x800u;
  v43 = this[6];
  if (v43 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v43, v42);
  v5 = *(lpsrc + 59);
  if ((v5 & 0x1000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_111;
  }

LABEL_110:
  v44 = *(lpsrc + 97);
  *(this + 59) |= 0x1000u;
  *(this + 97) = v44;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x2000) == 0)
  {
LABEL_23:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_114;
  }

LABEL_111:
  v45 = lpsrc[7];
  *(this + 59) |= 0x2000u;
  v46 = this[7];
  if (v46 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v46, v45);
  v5 = *(lpsrc + 59);
  if ((v5 & 0x4000) == 0)
  {
LABEL_24:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_114:
  v47 = lpsrc[8];
  *(this + 59) |= 0x4000u;
  v48 = this[8];
  if (v48 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v48, v47);
  v5 = *(lpsrc + 59);
  if ((v5 & 0x8000) != 0)
  {
LABEL_25:
    v8 = *(lpsrc + 18);
    *(this + 59) |= 0x8000u;
    *(this + 18) = v8;
    v5 = *(lpsrc + 59);
  }

LABEL_26:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v5 & 0x10000) != 0)
  {
    v21 = *(lpsrc + 19);
    *(this + 59) |= 0x10000u;
    *(this + 19) = v21;
    v5 = *(lpsrc + 59);
    if ((v5 & 0x20000) == 0)
    {
LABEL_29:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_80;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v22 = lpsrc[10];
  *(this + 59) |= 0x20000u;
  v23 = this[10];
  if (v23 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v5 = *(lpsrc + 59);
  if ((v5 & 0x40000) == 0)
  {
LABEL_30:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_80:
  v24 = lpsrc[11];
  *(this + 59) |= 0x40000u;
  v25 = this[11];
  if (v25 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v25, v24);
  v5 = *(lpsrc + 59);
  if ((v5 & 0x80000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_83:
  v26 = lpsrc[13];
  *(this + 59) |= 0x80000u;
  v27 = this[13];
  if (v27 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v27, v26);
  v5 = *(lpsrc + 59);
  if ((v5 & 0x100000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_89;
  }

LABEL_86:
  v28 = lpsrc[14];
  *(this + 59) |= 0x100000u;
  v29 = this[14];
  if (v29 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v29, v28);
  v5 = *(lpsrc + 59);
  if ((v5 & 0x200000) == 0)
  {
LABEL_33:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_90;
  }

LABEL_89:
  v30 = *(lpsrc + 98);
  *(this + 59) |= 0x200000u;
  *(this + 98) = v30;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x400000) == 0)
  {
LABEL_34:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_90:
  v31 = *(lpsrc + 25);
  *(this + 59) |= 0x400000u;
  *(this + 25) = v31;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x800000) != 0)
  {
LABEL_35:
    v9 = *(lpsrc + 34);
    *(this + 59) |= 0x800000u;
    *(this + 34) = v9;
    v5 = *(lpsrc + 59);
  }

LABEL_36:
  if (!HIBYTE(v5))
  {
    goto LABEL_45;
  }

  if ((v5 & 0x1000000) != 0)
  {
    v57 = lpsrc[15];
    *(this + 59) |= 0x1000000u;
    v58 = this[15];
    if (v58 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v58, v57);
    v5 = *(lpsrc + 59);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_39:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_134;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_39;
  }

  v59 = lpsrc[16];
  *(this + 59) |= 0x2000000u;
  v60 = this[16];
  if (v60 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v60, v59);
  v5 = *(lpsrc + 59);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_137;
  }

LABEL_134:
  v61 = lpsrc[18];
  *(this + 59) |= 0x4000000u;
  v62 = this[18];
  if (v62 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v62, v61);
  v5 = *(lpsrc + 59);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_138;
  }

LABEL_137:
  v63 = *(lpsrc + 35);
  *(this + 59) |= 0x8000000u;
  *(this + 35) = v63;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_139;
  }

LABEL_138:
  v64 = *(lpsrc + 38);
  *(this + 59) |= 0x10000000u;
  *(this + 38) = v64;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_140:
    v66 = *(lpsrc + 39);
    *(this + 59) |= 0x40000000u;
    *(this + 39) = v66;
    if ((*(lpsrc + 59) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_141;
  }

LABEL_139:
  v65 = *(lpsrc + 99);
  *(this + 59) |= 0x20000000u;
  *(this + 99) = v65;
  v5 = *(lpsrc + 59);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_140;
  }

LABEL_44:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_141:
  v67 = *(lpsrc + 42);
  *(this + 59) |= 0x80000000;
  *(this + 42) = v67;
LABEL_45:
  v10 = *(lpsrc + 60);
  if (!v10)
  {
    goto LABEL_56;
  }

  if (v10)
  {
    v32 = lpsrc[20];
    *(this + 60) |= 1u;
    this[20] = v32;
    v10 = *(lpsrc + 60);
    if ((v10 & 2) == 0)
    {
LABEL_48:
      if ((v10 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_94;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_48;
  }

  v33 = *(lpsrc + 43);
  *(this + 60) |= 2u;
  *(this + 43) = v33;
  v10 = *(lpsrc + 60);
  if ((v10 & 4) == 0)
  {
LABEL_49:
    if ((v10 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_95;
  }

LABEL_94:
  v34 = *(lpsrc + 196);
  *(this + 60) |= 4u;
  *(this + 196) = v34;
  v10 = *(lpsrc + 60);
  if ((v10 & 8) == 0)
  {
LABEL_50:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_98;
  }

LABEL_95:
  v35 = lpsrc[22];
  *(this + 60) |= 8u;
  v36 = this[22];
  if (v36 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v36, v35);
  v10 = *(lpsrc + 60);
  if ((v10 & 0x10) == 0)
  {
LABEL_51:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_100;
  }

LABEL_98:
  v37 = *(lpsrc + 46);
  if (v37 >= 3)
  {
    __assert_rtn("set_amr_format", "CATM.pb.h", 12050, "::awd::metrics::enum_codec_format_IsValid(value)");
  }

  *(this + 60) |= 0x10u;
  *(this + 46) = v37;
  v10 = *(lpsrc + 60);
  if ((v10 & 0x20) == 0)
  {
LABEL_52:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_100:
  v38 = *(lpsrc + 47);
  if (v38 >= 6)
  {
    __assert_rtn("set_codec", "CATM.pb.h", 12073, "::awd::metrics::enum_codec_type_IsValid(value)");
  }

  *(this + 60) |= 0x20u;
  *(this + 47) = v38;
  v10 = *(lpsrc + 60);
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_54;
  }

LABEL_53:
  v11 = *(lpsrc + 48);
  *(this + 60) |= 0x40u;
  *(this + 48) = v11;
  v10 = *(lpsrc + 60);
LABEL_54:
  if ((v10 & 0x80) != 0)
  {
    v12 = *(lpsrc + 50);
    *(this + 60) |= 0x80u;
    *(this + 50) = v12;
    v10 = *(lpsrc + 60);
  }

LABEL_56:
  if ((v10 & 0xFF00) == 0)
  {
    return;
  }

  if ((v10 & 0x100) != 0)
  {
    v49 = *(lpsrc + 51);
    *(this + 60) |= 0x100u;
    *(this + 51) = v49;
    v10 = *(lpsrc + 60);
    if ((v10 & 0x200) == 0)
    {
LABEL_59:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_120;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v50 = *(lpsrc + 52);
  *(this + 60) |= 0x200u;
  *(this + 52) = v50;
  v10 = *(lpsrc + 60);
  if ((v10 & 0x400) == 0)
  {
LABEL_60:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_121;
  }

LABEL_120:
  v51 = *(lpsrc + 53);
  *(this + 60) |= 0x400u;
  *(this + 53) = v51;
  v10 = *(lpsrc + 60);
  if ((v10 & 0x800) == 0)
  {
LABEL_61:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_122;
  }

LABEL_121:
  v52 = *(lpsrc + 54);
  *(this + 60) |= 0x800u;
  *(this + 54) = v52;
  v10 = *(lpsrc + 60);
  if ((v10 & 0x1000) == 0)
  {
LABEL_62:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

LABEL_123:
    v54 = *(lpsrc + 55);
    *(this + 60) |= 0x2000u;
    *(this + 55) = v54;
    if ((lpsrc[30] & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_124;
  }

LABEL_122:
  v53 = *(lpsrc + 197);
  *(this + 60) |= 0x1000u;
  *(this + 197) = v53;
  v10 = *(lpsrc + 60);
  if ((v10 & 0x2000) != 0)
  {
    goto LABEL_123;
  }

LABEL_63:
  if ((v10 & 0x4000) == 0)
  {
    return;
  }

LABEL_124:
  v55 = lpsrc[28];
  *(this + 60) |= 0x4000u;
  v56 = this[28];
  if (v56 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v56, v55);
}

void sub_1E4CF35D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::ATM_CallEndEvent_myreason::MergeFrom(awd::metrics::ATM_CallEndEvent_myreason *this, const awd::metrics::ATM_CallEndEvent_myreason *a2)
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

  v5 = MEMORY[0x1E69E5958];
  if (*(a2 + 48))
  {
    v6 = *(a2 + 1);
    *(this + 12) |= 1u;
    v7 = *(this + 1);
    if (v7 == v5)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 12);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      v9 = *(a2 + 2);
      *(this + 12) |= 4u;
      v10 = *(this + 2);
      if (v10 == v5)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
      v4 = *(a2 + 12);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 10);
  *(this + 12) |= 2u;
  *(this + 10) = v8;
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_17:
  v11 = *(a2 + 3);
  *(this + 12) |= 8u;
  v12 = *(this + 3);
  if (v12 == v5)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_20:
    v13 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v14 = *(this + 4);
    if (v14 == v5)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
  }
}

void sub_1E4CF37F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *awd::metrics::ATM_CallEndEvent_myreason::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[1];
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  v5 = v1[2];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x1E69235B0](v5, 0x1012C40EC159624);
  }

  v7 = v1[3];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x1E69235B0](v7, 0x1012C40EC159624);
  }

  v9 = v1[4];
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

void awd::metrics::ATM_CallEndEvent_myreason::~ATM_CallEndEvent_myreason(awd::metrics::ATM_CallEndEvent_myreason *this)
{
  *this = &unk_1F5EC5E30;
  awd::metrics::ATM_CallEndEvent_myreason::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC5E30;
  awd::metrics::ATM_CallEndEvent_myreason::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_CallEndEvent_myreason::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    v1 = MEMORY[0x1E69E5958];
    if (*(this + 48))
    {
      v2 = *(this + 8);
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

    *(this + 40) = 0;
    if ((*(this + 48) & 4) != 0)
    {
      v3 = *(this + 16);
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

    if ((*(this + 48) & 8) != 0)
    {
      v4 = *(this + 24);
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

    if ((*(this + 48) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v1)
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

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::ATM_CallEndEvent_myreason::MergePartialFromCodedStream(awd::metrics::ATM_CallEndEvent_myreason *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_31;
        }

        if (v8 != 2)
        {
          goto LABEL_22;
        }

        *(this + 12) |= 1u;
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
        v9 = *(a2 + 2);
        if (v12 < v9 && *v12 == 16)
        {
          v10 = v12 + 1;
          *(a2 + 1) = v10;
LABEL_31:
          if (v10 >= v9 || (v13 = *v10, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v13;
            v14 = v10 + 1;
            *(a2 + 1) = v14;
          }

          v11 = *(this + 12) | 2;
          *(this + 12) = v11;
          if (v14 < v9 && *v14 == 26)
          {
            *(a2 + 1) = v14 + 1;
LABEL_39:
            *(this + 12) = v11 | 4;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 34)
            {
              *(a2 + 1) = v15 + 1;
              goto LABEL_45;
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

        v11 = *(this + 12);
        goto LABEL_39;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

LABEL_45:
      *(this + 12) |= 8u;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 42)
      {
        *(a2 + 1) = v16 + 1;
LABEL_51:
        *(this + 12) |= 0x10u;
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

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_51;
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

uint64_t awd::metrics::ATM_CallEndEvent_myreason::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 48);
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
  v10 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_CallEndEvent_myreason::ByteSize(awd::metrics::ATM_CallEndEvent_myreason *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_50;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = *(this + 1);
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 12);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = (v9 + v5);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 10);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_19:
  if ((v2 & 4) != 0)
  {
    v13 = *(this + 2);
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
      v2 = *(this + 12);
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
    if ((v2 & 8) == 0)
    {
LABEL_21:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

  v19 = *(this + 3);
  v20 = *(v19 + 23);
  v21 = v20;
  v22 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v23 = *(v19 + 23);
  }

  else
  {
    v23 = v22;
  }

  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
    v20 = *(v19 + 23);
    v22 = *(v19 + 8);
    v2 = *(this + 12);
    v21 = *(v19 + 23);
  }

  else
  {
    v24 = 1;
  }

  if (v21 < 0)
  {
    v20 = v22;
  }

  v3 = (v3 + v24 + v20 + 1);
  if ((v2 & 0x10) != 0)
  {
LABEL_41:
    v25 = *(this + 4);
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

    v3 = (v3 + v30 + v26 + 1);
  }

LABEL_50:
  *(this + 11) = v3;
  return v3;
}

void awd::metrics::ATM_CallEndEvent_myreason::CheckTypeAndMergeFrom(awd::metrics::ATM_CallEndEvent_myreason *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::ATM_CallEndEvent_myreason::MergeFrom(this, lpsrc);
}

void awd::metrics::ATM_CallEndEvent_handover::MergeFrom(awd::metrics::ATM_CallEndEvent_handover *this, const awd::metrics::ATM_CallEndEvent_handover *a2)
{
  if (a2 == this)
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
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(this + 5) |= 2u;
      *(this + 12) = v6;
    }
  }
}

void sub_1E4CF4224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::ATM_CallEndEvent_handover::~ATM_CallEndEvent_handover(awd::metrics::ATM_CallEndEvent_handover *this)
{
  *this = &unk_1F5EC5EA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC5EA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_CallEndEvent_handover::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::ATM_CallEndEvent_handover::MergePartialFromCodedStream(awd::metrics::ATM_CallEndEvent_handover *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 2) = v8;
      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        v14 = 0;
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
          if (!result)
          {
            return result;
          }

          v11 = v14;
          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 12) = v11 != 0;
        *(this + 5) |= 2u;
        if (v12 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
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

uint64_t awd::metrics::ATM_CallEndEvent_handover::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::ATM_CallEndEvent_handover::ByteSize(awd::metrics::ATM_CallEndEvent_handover *this)
{
  LOBYTE(v2) = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 5);
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

  *(this + 4) = result;
  return result;
}

void awd::metrics::ATM_CallEndEvent_handover::CheckTypeAndMergeFrom(awd::metrics::ATM_CallEndEvent_handover *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::ATM_CallEndEvent_handover::MergeFrom(this, lpsrc);
}

double awd::metrics::ATM_CallEndEvent::SharedCtor(awd::metrics::ATM_CallEndEvent *this)
{
  *(this + 167) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 28) = 0;
  *(this + 6) = -1;
  *(this + 29) = 0;
  *(this + 31) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 4) = v1;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 6) = v1;
  *(this + 7) = v1;
  *(this + 8) = v1;
  *(this + 9) = v1;
  *(this + 10) = v1;
  *(this + 11) = v1;
  *(this + 13) = v1;
  *(this + 14) = v1;
  result = 0.0;
  *(this + 120) = 0u;
  *(this + 17) = v1;
  *(this + 19) = v1;
  *(this + 20) = v1;
  *(this + 18) = 0;
  *(this + 42) = 0;
  *(this + 172) = 0;
  *(this + 184) = 0u;
  *(this + 45) = -1;
  *(this + 25) = v1;
  *(this + 26) = 0x100000000;
  *(this + 72) = 0;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  *(this + 15) = 0u;
  *(this + 32) = v1;
  *(this + 50) = 0;
  *(this + 382) = 0u;
  *(this + 356) = 0u;
  *(this + 372) = 0u;
  *(this + 324) = 0u;
  *(this + 340) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 51) = v1;
  *(this + 52) = 0;
  *(this + 199) = 0;
  *(this + 69) = 0;
  *(this + 644) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 158) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 584) = 0u;
  *(this + 636) = 1;
  *(this + 645) = 0;
  *(this + 82) = 0;
  *(this + 81) = v1;
  *(this + 647) = 0;
  *(this + 664) = 0;
  *(this + 172) = 0;
  *(this + 42) = 0u;
  return result;
}

void awd::metrics::ATM_CallEndEvent::~ATM_CallEndEvent(awd::metrics::ATM_CallEndEvent *this)
{
  *this = &unk_1F5EC5F20;
  awd::metrics::ATM_CallEndEvent::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::ATM_CallEndEvent_myreason>::TypeHandler>(this + 70);
  v2 = *(this + 67);
  if (v2)
  {
    MEMORY[0x1E6923590](v2, 0x1000C8077774924);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::ATM_CallEndEvent_myreason>::TypeHandler>(this + 64);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 106);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 66);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::ATM_CallEndEvent::~ATM_CallEndEvent(this);

  JUMPOUT(0x1E69235B0);
}

void *awd::metrics::ATM_CallEndEvent::SharedDtor(void *this)
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

  v12 = v1[9];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x1E69235B0](v12, 0x1012C40EC159624);
  }

  v13 = v1[10];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x1E69235B0](v13, 0x1012C40EC159624);
  }

  v14 = v1[11];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x1E69235B0](v14, 0x1012C40EC159624);
  }

  v15 = v1[13];
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x1E69235B0](v15, 0x1012C40EC159624);
  }

  v16 = v1[14];
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    this = MEMORY[0x1E69235B0](v16, 0x1012C40EC159624);
  }

  v17 = v1[17];
  if (v17 != v3 && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    this = MEMORY[0x1E69235B0](v17, 0x1012C40EC159624);
  }

  v18 = v1[19];
  if (v18 != v3 && v18)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    this = MEMORY[0x1E69235B0](v18, 0x1012C40EC159624);
  }

  v19 = v1[20];
  if (v19 != v3 && v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    this = MEMORY[0x1E69235B0](v19, 0x1012C40EC159624);
  }

  v20 = v1[25];
  if (v20 != v3 && v20)
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    this = MEMORY[0x1E69235B0](v20, 0x1012C40EC159624);
  }

  v21 = v1[32];
  if (v21 != v3 && v21)
  {
    if (*(v21 + 23) < 0)
    {
      operator delete(*v21);
    }

    this = MEMORY[0x1E69235B0](v21, 0x1012C40EC159624);
  }

  v22 = v1[51];
  if (v22 != v3 && v22)
  {
    if (*(v22 + 23) < 0)
    {
      operator delete(*v22);
    }

    this = MEMORY[0x1E69235B0](v22, 0x1012C40EC159624);
  }

  v23 = v1[81];
  if (v23 != v3 && v23)
  {
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

uint64_t awd::metrics::ATM_CallEndEvent::Clear(awd::metrics::ATM_CallEndEvent *this)
{
  v2 = *(this + 168);
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
    *(this + 100) = 0;
    v2 = *(this + 168);
  }

  v4 = (this + 672);
  if ((v2 & 0xFF00) != 0)
  {
    *(this + 10) = -1;
    if ((v2 & 0x200) != 0)
    {
      v5 = *(this + 4);
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

    *(this + 11) = 0;
    if ((*(this + 673) & 8) != 0)
    {
      v6 = *(this + 6);
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

    *(this + 101) = 0;
    if ((*(this + 673) & 0x20) != 0)
    {
      v7 = *(this + 7);
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

    if ((*(this + 673) & 0x40) != 0)
    {
      v8 = *(this + 8);
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

    *(this + 24) = 0;
    v2 = *(this + 168);
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v9 = *(this + 9);
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

    if ((*(this + 674) & 2) != 0)
    {
      v10 = *(this + 10);
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

    if ((*(this + 674) & 4) != 0)
    {
      v11 = *(this + 11);
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

    if ((*(this + 674) & 8) != 0)
    {
      v12 = *(this + 13);
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

    if ((*(this + 674) & 0x10) != 0)
    {
      v13 = *(this + 14);
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

    *(this + 15) = 0;
    *(this + 32) = 0;
    v2 = *(this + 168);
  }

  if (HIBYTE(v2))
  {
    *(this + 102) = 0;
    *(this + 33) = 0;
    *(this + 36) = 0;
    if ((v2 & 0x8000000) != 0)
    {
      v14 = *(this + 17);
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

    if ((*(this + 675) & 0x10) != 0)
    {
      v15 = *(this + 19);
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

    if ((*(this + 675) & 0x20) != 0)
    {
      v16 = *(this + 20);
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

    *(this + 37) = 0;
    *(this + 42) = 0;
  }

  v17 = *(this + 676);
  if (v17)
  {
    *(this + 103) = 0;
    *(this + 43) = 0;
    *(this + 44) = 0;
    *(this + 23) = 0;
    *(this + 45) = -1;
    *(this + 48) = 0;
    *(this + 236) = 0;
    if (v17 < 0)
    {
      v18 = *(this + 25);
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

  v19 = *(this + 169);
  if ((v19 & 0xFF00) != 0)
  {
    *(this + 237) = 0;
    *(this + 49) = 0;
    *(this + 26) = 0x100000000;
    *(this + 27) = 0;
    *(this + 28) = 0;
    *(this + 58) = 0;
  }

  if ((v19 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
    *(this + 30) = 0;
    *(this + 31) = 0;
    if ((v19 & 0x200000) != 0)
    {
      v20 = *(this + 32);
      if (v20 != MEMORY[0x1E69E5958])
      {
        if (*(v20 + 23) < 0)
        {
          **v20 = 0;
          *(v20 + 8) = 0;
        }

        else
        {
          *v20 = 0;
          *(v20 + 23) = 0;
        }
      }
    }

    *(this + 238) = 0;
    v19 = *(this + 169);
  }

  if (HIBYTE(v19))
  {
    *(this + 239) = 0;
    *(this + 396) = 0;
    *(this + 300) = 0;
    *(this + 308) = 0;
    *(this + 292) = 0;
  }

  v21 = *(this + 170);
  if (v21)
  {
    *(this + 316) = 0u;
    *(this + 332) = 0u;
  }

  if ((v21 & 0xFF00) != 0)
  {
    *(this + 348) = 0u;
    *(this + 364) = 0u;
  }

  if ((v21 & 0xFF0000) != 0)
  {
    *(this + 50) = 0;
    *(this + 397) = 0;
    *(this + 388) = 0;
    *(this + 380) = 0;
    if ((v21 & 0x800000) != 0)
    {
      v22 = *(this + 51);
      if (v22 != MEMORY[0x1E69E5958])
      {
        if (*(v22 + 23) < 0)
        {
          **v22 = 0;
          *(v22 + 8) = 0;
        }

        else
        {
          *v22 = 0;
          *(v22 + 23) = 0;
        }
      }
    }
  }

  if (*(this + 683))
  {
    *(this + 52) = 0;
    *(this + 398) = 0;
    *(this + 57) = 0;
    *(this + 58) = 0;
    *(this + 56) = 0;
  }

  v23 = *(this + 171);
  if (v23)
  {
    *(this + 399) = 0;
    *(this + 126) = 0;
    *(this + 472) = 0u;
    *(this + 488) = 0u;
  }

  if ((v23 & 0xFF00) != 0)
  {
    *(this + 127) = 0;
    *(this + 620) = 0;
    *(this + 69) = 0;
    *(this + 146) = 0;
  }

  if ((v23 & 0xFF0000) != 0)
  {
    *(this + 588) = 0u;
    *(this + 604) = 0u;
  }

  if (HIBYTE(v23))
  {
    *(this + 644) = 0;
    *(this + 621) = 0;
    *(this + 628) = 0;
    *(this + 159) = 1;
  }

  v24 = *(this + 688);
  if (v24)
  {
    *(this + 645) = 0;
    *(this + 160) = 0;
    *(this + 164) = 0;
    if ((v24 & 8) != 0)
    {
      v25 = *(this + 81);
      if (v25 != MEMORY[0x1E69E5958])
      {
        if (*(v25 + 23) < 0)
        {
          **v25 = 0;
          *(v25 + 8) = 0;
        }

        else
        {
          *v25 = 0;
          *(v25 + 23) = 0;
        }
      }
    }

    *(this + 323) = 0;
    *(this + 165) = 0;
    *(this + 664) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 264);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 424);
  if (*(this + 130) >= 1)
  {
    v27 = 0;
    do
    {
      v28 = *(*(this + 64) + 8 * v27);
      result = (*(*v28 + 32))(v28);
      ++v27;
    }

    while (v27 < *(this + 130));
  }

  *(this + 130) = 0;
  *(this + 136) = 0;
  if (*(this + 142) >= 1)
  {
    v29 = 0;
    do
    {
      v30 = *(*(this + 70) + 8 * v29);
      result = (*(*v30 + 32))(v30);
      ++v29;
    }

    while (v29 < *(this + 142));
  }

  *(this + 142) = 0;
  *v4 = 0;
  *(this + 85) = 0;
  *(this + 172) = 0;
  return result;
}

uint64_t awd::metrics::ATM_CallEndEvent::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
  v4 = (this + 288);
  v5 = (this + 292);
  v6 = (this + 296);
  v7 = (this + 300);
  v8 = (this + 304);
  v9 = (this + 308);
  v10 = (this + 312);
  v537 = (this + 320);
  v538 = (this + 316);
  v535 = (this + 328);
  v536 = (this + 324);
  v533 = (this + 336);
  v534 = (this + 332);
  v531 = (this + 344);
  v532 = (this + 340);
  v529 = (this + 352);
  v530 = (this + 348);
  v527 = (this + 360);
  v528 = (this + 356);
  v525 = (this + 368);
  v526 = (this + 364);
  v523 = (this + 376);
  v524 = (this + 372);
  v521 = (this + 384);
  v522 = (this + 380);
  v519 = (this + 392);
  v520 = (this + 388);
  v517 = (this + 404);
  v518 = (this + 400);
  v502 = (this + 460);
  v504 = (this + 480);
  v509 = (this + 484);
  v515 = (this + 500);
  v516 = (this + 496);
  v513 = (this + 508);
  v514 = (this + 504);
  v493 = (this + 456);
  v494 = (this + 552);
  v492 = (this + 588);
  v495 = (this + 592);
  v496 = (this + 556);
  v498 = (this + 596);
  v499 = (this + 584);
  v503 = (this + 604);
  v506 = (this + 608);
  v507 = (this + 612);
  v508 = (this + 616);
  v511 = (this + 628);
  v512 = (this + 624);
  v510 = (this + 632);
  v497 = (this + 640);
  v505 = (this + 656);
  v500 = (this + 660);
  v501 = (this + 600);
  while (1)
  {
    while (1)
    {
LABEL_2:
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v12 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v12;
        *(a2 + 1) = v11 + 1;
        if (!v12)
        {
          return 1;
        }
      }

      v13 = v12 >> 3;
      v14 = v12 & 7;
      if (v12 >> 3 <= 0x22D)
      {
        break;
      }

      if (v12 >> 3 > 0x258)
      {
        if (v13 == 601)
        {
          if ((v12 & 7) == 0)
          {
            v50 = *(a2 + 1);
            v19 = *(a2 + 2);
            goto LABEL_636;
          }
        }

        else if (v13 == 602)
        {
          if ((v12 & 7) == 0)
          {
            v47 = *(a2 + 1);
            v19 = *(a2 + 2);
            goto LABEL_645;
          }
        }

        else if (v13 == 603 && (v12 & 7) == 0)
        {
          v21 = *(a2 + 1);
          v19 = *(a2 + 2);
          goto LABEL_654;
        }

        goto LABEL_298;
      }

      if (v13 == 558)
      {
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v49 = *(a2 + 1);
        v48 = *(a2 + 2);
LABEL_611:
        if (v49 >= v48 || (v247 = *v49, (v247 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v505);
          if (!this)
          {
            return this;
          }

          v248 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          *v505 = v247;
          v248 = (v49 + 1);
          *(a2 + 1) = v248;
        }

        v46 = *(v3 + 688) | 4;
        *(v3 + 688) = v46;
        if (v48 - v248 >= 2 && *v248 == 250 && v248[1] == 34)
        {
          *(a2 + 1) = v248 + 2;
          goto LABEL_620;
        }
      }

      else if (v13 == 559)
      {
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v46 = *(v3 + 688);
LABEL_620:
        *(v3 + 688) = v46 | 8;
        if (*(v3 + 648) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v249 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v249 >= 2 && *v249 == 128 && v249[1] == 35)
        {
          v20 = (v249 + 2);
          *(a2 + 1) = v20;
LABEL_627:
          v539[0] = 0;
          if (v20 >= v19 || (v250 = *v20, (v250 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
            if (!this)
            {
              return this;
            }

            v250 = v539[0];
            v251 = *(a2 + 1);
            v19 = *(a2 + 2);
          }

          else
          {
            v251 = (v20 + 1);
            *(a2 + 1) = v251;
          }

          *(v3 + 646) = v250 != 0;
          *(v3 + 688) |= 0x10u;
          if (v19 - v251 >= 2 && *v251 == 200 && v251[1] == 37)
          {
            v50 = (v251 + 2);
            *(a2 + 1) = v50;
LABEL_636:
            if (v50 >= v19 || (v252 = *v50, (v252 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v500);
              if (!this)
              {
                return this;
              }

              v253 = *(a2 + 1);
              v19 = *(a2 + 2);
            }

            else
            {
              *v500 = v252;
              v253 = (v50 + 1);
              *(a2 + 1) = v253;
            }

            *(v3 + 688) |= 0x20u;
            if (v19 - v253 >= 2 && *v253 == 208 && v253[1] == 37)
            {
              v47 = (v253 + 2);
              *(a2 + 1) = v47;
LABEL_645:
              v539[0] = 0;
              if (v47 >= v19 || (v254 = *v47, (v254 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                if (!this)
                {
                  return this;
                }

                v254 = v539[0];
                v255 = *(a2 + 1);
                v19 = *(a2 + 2);
              }

              else
              {
                v255 = (v47 + 1);
                *(a2 + 1) = v255;
              }

              *(v3 + 647) = v254 != 0;
              *(v3 + 688) |= 0x40u;
              if (v19 - v255 >= 2 && *v255 == 216 && v255[1] == 37)
              {
                v21 = (v255 + 2);
                *(a2 + 1) = v21;
LABEL_654:
                v539[0] = 0;
                if (v21 >= v19 || (v256 = *v21, (v256 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                  if (!this)
                  {
                    return this;
                  }

                  v256 = v539[0];
                  v257 = *(a2 + 1);
                  v19 = *(a2 + 2);
                }

                else
                {
                  v257 = v21 + 1;
                  *(a2 + 1) = v257;
                }

                *(v3 + 664) = v256 != 0;
                *(v3 + 688) |= 0x80u;
                if (v257 == v19 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  this = 1;
                  *(a2 + 36) = 1;
                  return this;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v13 == 560 && (v12 & 7) == 0)
        {
          v20 = *(a2 + 1);
          v19 = *(a2 + 2);
          goto LABEL_627;
        }

LABEL_298:
        if (v14 == 4)
        {
          return 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v12);
        if ((this & 1) == 0)
        {
          return 0;
        }
      }
    }

    switch(v13)
    {
      case 1u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v16 >= v15 || (v17 = *v16, v17 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
          if (!this)
          {
            return this;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 8) = v17;
          v18 = v16 + 1;
          *(a2 + 1) = v18;
        }

        v140 = *(v3 + 672) | 1;
        *(v3 + 672) = v140;
        if (v18 >= v15 || *v18 != 18)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v18 + 1;
LABEL_668:
        *(v3 + 672) = v140 | 2;
        if (*(v3 + 16) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v258 = *(a2 + 1);
        v98 = *(a2 + 2);
        if (v258 >= v98 || *v258 != 24)
        {
          goto LABEL_2;
        }

        v99 = v258 + 1;
        *(a2 + 1) = v99;
LABEL_674:
        v539[0] = 0;
        if (v99 >= v98 || (v259 = *v99, (v259 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v259 = v539[0];
          v260 = *(a2 + 1);
          v98 = *(a2 + 2);
        }

        else
        {
          v260 = v99 + 1;
          *(a2 + 1) = v260;
        }

        *(v3 + 28) = v259 != 0;
        *(v3 + 672) |= 4u;
        if (v260 >= v98 || *v260 != 32)
        {
          goto LABEL_2;
        }

        v139 = v260 + 1;
        *(a2 + 1) = v139;
LABEL_682:
        v539[0] = 0;
        if (v139 >= v98 || (v261 = *v139, (v261 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v261 = v539[0];
        }

        else
        {
          *(a2 + 1) = v139 + 1;
        }

        if (v261 + 1 <= 7)
        {
          *(v3 + 672) |= 8u;
          *(v3 + 24) = v261;
        }

        v262 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v262 >= v22 || *v262 != 40)
        {
          goto LABEL_2;
        }

        v113 = v262 + 1;
        *(a2 + 1) = v113;
LABEL_692:
        v539[0] = 0;
        if (v113 >= v22 || (v263 = *v113, (v263 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v263 = v539[0];
          v264 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v264 = v113 + 1;
          *(a2 + 1) = v264;
        }

        *(v3 + 29) = v263 != 0;
        *(v3 + 672) |= 0x10u;
        if (v264 >= v22 || *v264 != 48)
        {
          goto LABEL_2;
        }

        v161 = v264 + 1;
        *(a2 + 1) = v161;
LABEL_700:
        v539[0] = 0;
        if (v161 >= v22 || (v265 = *v161, (v265 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v265 = v539[0];
          v266 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v266 = v161 + 1;
          *(a2 + 1) = v266;
        }

        *(v3 + 30) = v265 != 0;
        *(v3 + 672) |= 0x20u;
        if (v266 >= v22 || *v266 != 56)
        {
          goto LABEL_2;
        }

        v23 = v266 + 1;
        *(a2 + 1) = v23;
LABEL_708:
        v539[0] = 0;
        if (v23 >= v22 || (v267 = *v23, (v267 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v267 = v539[0];
          v268 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v268 = v23 + 1;
          *(a2 + 1) = v268;
        }

        *(v3 + 31) = v267 != 0;
        *(v3 + 672) |= 0x40u;
        if (v268 >= v22 || *v268 != 64)
        {
          goto LABEL_2;
        }

        v24 = v268 + 1;
        *(a2 + 1) = v24;
LABEL_716:
        v539[0] = 0;
        if (v24 >= v22 || (v269 = *v24, (v269 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v269 = v539[0];
          v270 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v270 = v24 + 1;
          *(a2 + 1) = v270;
        }

        *(v3 + 100) = v269 != 0;
        *(v3 + 672) |= 0x80u;
        if (v270 >= v22 || *v270 != 72)
        {
          goto LABEL_2;
        }

        v90 = v270 + 1;
        *(a2 + 1) = v90;
LABEL_724:
        v539[0] = 0;
        if (v90 >= v22 || (v271 = *v90, (v271 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v271 = v539[0];
        }

        else
        {
          *(a2 + 1) = v90 + 1;
        }

        if (v271 - 1 < 6 || v271 == -1)
        {
          *(v3 + 672) |= 0x100u;
          *(v3 + 40) = v271;
        }

        v273 = *(a2 + 1);
        if (v273 >= *(a2 + 2) || *v273 != 82)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v273 + 1;
LABEL_738:
        *(v3 + 672) |= 0x200u;
        if (*(v3 + 32) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v274 = *(a2 + 1);
        v144 = *(a2 + 2);
        if (v274 >= v144 || *v274 != 88)
        {
          goto LABEL_2;
        }

        v145 = v274 + 1;
        *(a2 + 1) = v145;
LABEL_744:
        if (v145 >= v144 || (v275 = *v145, v275 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 44));
          if (!this)
          {
            return this;
          }

          v276 = *(a2 + 1);
          v144 = *(a2 + 2);
        }

        else
        {
          *(v3 + 44) = v275;
          v276 = v145 + 1;
          *(a2 + 1) = v276;
        }

        v146 = *(v3 + 672) | 0x400;
        *(v3 + 672) = v146;
        if (v276 >= v144 || *v276 != 98)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v276 + 1;
LABEL_752:
        *(v3 + 672) = v146 | 0x800;
        if (*(v3 + 48) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v277 = *(a2 + 1);
        v82 = *(a2 + 2);
        if (v277 >= v82 || *v277 != 104)
        {
          goto LABEL_2;
        }

        v83 = v277 + 1;
        *(a2 + 1) = v83;
LABEL_758:
        v539[0] = 0;
        if (v83 >= v82 || (v278 = *v83, (v278 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v278 = v539[0];
          v279 = *(a2 + 1);
          v82 = *(a2 + 2);
        }

        else
        {
          v279 = v83 + 1;
          *(a2 + 1) = v279;
        }

        *(v3 + 101) = v278 != 0;
        v156 = *(v3 + 672) | 0x1000;
        *(v3 + 672) = v156;
        if (v279 >= v82 || *v279 != 114)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v279 + 1;
LABEL_766:
        *(v3 + 672) = v156 | 0x2000;
        if (*(v3 + 56) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v280 = *(a2 + 1);
        if (v280 >= *(a2 + 2) || *v280 != 122)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v280 + 1;
LABEL_772:
        *(v3 + 672) |= 0x4000u;
        if (*(v3 + 64) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v281 = *(a2 + 1);
        v55 = *(a2 + 2);
        if (v55 - v281 < 2 || *v281 != 128 || v281[1] != 1)
        {
          goto LABEL_2;
        }

        v56 = (v281 + 2);
        *(a2 + 1) = v56;
LABEL_779:
        if (v56 >= v55 || (v282 = *v56, v282 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 96));
          if (!this)
          {
            return this;
          }

          v283 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          *(v3 + 96) = v282;
          v283 = (v56 + 1);
          *(a2 + 1) = v283;
        }

        v58 = *(v3 + 672) | 0x8000;
        *(v3 + 672) = v58;
        if (v55 - v283 < 2 || *v283 != 138 || v283[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v283 + 2;
LABEL_788:
        *(v3 + 672) = v58 | 0x10000;
        if (*(v3 + 72) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v284 = *(a2 + 1);
        if (*(a2 + 4) - v284 < 2 || *v284 != 146 || v284[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v284 + 2;
LABEL_795:
        *(v3 + 672) |= 0x40000u;
        if (*(v3 + 88) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v285 = *(a2 + 1);
        if (*(a2 + 4) - v285 < 2 || *v285 != 154 || v285[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v285 + 2;
LABEL_802:
        *(v3 + 672) |= 0x80000u;
        if (*(v3 + 104) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v286 = *(a2 + 1);
        if (*(a2 + 4) - v286 < 2 || *v286 != 162 || v286[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v286 + 2;
LABEL_809:
        *(v3 + 672) |= 0x100000u;
        if (*(v3 + 112) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v287 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v27 - v287 < 2 || *v287 != 168 || v287[1] != 1)
        {
          goto LABEL_2;
        }

        v28 = (v287 + 2);
        *(a2 + 1) = v28;
LABEL_816:
        v539[0] = 0;
        if (v28 >= v27 || (v288 = *v28, (v288 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v288 = v539[0];
          v289 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        else
        {
          v289 = (v28 + 1);
          *(a2 + 1) = v289;
        }

        *(v3 + 102) = v288 != 0;
        *(v3 + 672) |= 0x1000000u;
        if (v27 - v289 < 2 || *v289 != 176 || v289[1] != 1)
        {
          goto LABEL_2;
        }

        v57 = (v289 + 2);
        *(a2 + 1) = v57;
LABEL_825:
        if (v57 >= v27 || (v290 = *v57, v290 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 132));
          if (!this)
          {
            return this;
          }

          v291 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        else
        {
          *(v3 + 132) = v290;
          v291 = (v57 + 1);
          *(a2 + 1) = v291;
        }

        *(v3 + 672) |= 0x2000000u;
        if (v27 - v291 < 2 || *v291 != 184 || v291[1] != 1)
        {
          goto LABEL_2;
        }

        v65 = (v291 + 2);
        *(a2 + 1) = v65;
LABEL_834:
        if (v65 >= v27 || (v292 = *v65, v292 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 144));
          if (!this)
          {
            return this;
          }

          v293 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        else
        {
          *(v3 + 144) = v292;
          v293 = (v65 + 1);
          *(a2 + 1) = v293;
        }

        v33 = *(v3 + 672) | 0x4000000;
        *(v3 + 672) = v33;
        if (v27 - v293 < 2 || *v293 != 194 || v293[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v293 + 2;
LABEL_843:
        *(v3 + 672) = v33 | 0x8000000;
        if (*(v3 + 136) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v294 = *(a2 + 1);
        if (*(a2 + 4) - v294 < 2 || *v294 != 202 || v294[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v294 + 2;
LABEL_850:
        *(v3 + 672) |= 0x10000000u;
        if (*(v3 + 152) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v295 = *(a2 + 1);
        if (*(a2 + 4) - v295 < 2 || *v295 != 210 || v295[1] != 1)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v295 + 2;
LABEL_857:
        *(v3 + 672) |= 0x20000000u;
        if (*(v3 + 160) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v296 = *(a2 + 1);
        v53 = *(a2 + 2);
        if (v53 - v296 < 2 || *v296 != 216 || v296[1] != 1)
        {
          goto LABEL_2;
        }

        v169 = (v296 + 2);
        *(a2 + 1) = v169;
LABEL_864:
        if (v169 >= v53 || (v297 = *v169, v297 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 148));
          if (!this)
          {
            return this;
          }

          v298 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          *(v3 + 148) = v297;
          v298 = (v169 + 1);
          *(a2 + 1) = v298;
        }

        *(v3 + 672) |= 0x40000000u;
        if (v53 - v298 < 2 || *v298 != 224 || v298[1] != 1)
        {
          goto LABEL_2;
        }

        v54 = (v298 + 2);
        *(a2 + 1) = v54;
LABEL_873:
        if (v54 >= v53 || (v299 = *v54, v299 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 168));
          if (!this)
          {
            return this;
          }

          v300 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          *(v3 + 168) = v299;
          v300 = (v54 + 1);
          *(a2 + 1) = v300;
        }

        *(v3 + 672) |= 0x80000000;
        if (v53 - v300 < 2 || *v300 != 232 || v300[1] != 1)
        {
          goto LABEL_2;
        }

        v171 = (v300 + 2);
        *(a2 + 1) = v171;
LABEL_882:
        v539[0] = 0;
        if (v171 >= v53 || (v301 = *v171, (v301 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v301 = v539[0];
          v302 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          v302 = (v171 + 1);
          *(a2 + 1) = v302;
        }

        *(v3 + 103) = v301 != 0;
        *(v3 + 676) |= 1u;
        if (v53 - v302 < 2 || *v302 != 240 || v302[1] != 1)
        {
          goto LABEL_2;
        }

        v174 = (v302 + 2);
        *(a2 + 1) = v174;
LABEL_891:
        if (v174 >= v53 || (v303 = *v174, v303 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 172));
          if (!this)
          {
            return this;
          }

          v304 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          *(v3 + 172) = v303;
          v304 = (v174 + 1);
          *(a2 + 1) = v304;
        }

        *(v3 + 676) |= 2u;
        if (v53 - v304 < 2 || *v304 != 248 || v304[1] != 1)
        {
          goto LABEL_2;
        }

        v180 = (v304 + 2);
        *(a2 + 1) = v180;
LABEL_900:
        if (v180 >= v53 || (v305 = *v180, v305 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 176));
          if (!this)
          {
            return this;
          }

          v306 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          *(v3 + 176) = v305;
          v306 = (v180 + 1);
          *(a2 + 1) = v306;
        }

        *(v3 + 676) |= 4u;
        if (v53 - v306 < 2 || *v306 != 128 || v306[1] != 2)
        {
          goto LABEL_2;
        }

        v119 = (v306 + 2);
        *(a2 + 1) = v119;
LABEL_909:
        if (v119 >= v53 || (v307 = *v119, v307 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 184));
          if (!this)
          {
            return this;
          }

          v308 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          *(v3 + 184) = v307;
          v308 = (v119 + 1);
          *(a2 + 1) = v308;
        }

        *(v3 + 676) |= 8u;
        if (v53 - v308 < 2 || *v308 != 136 || v308[1] != 2)
        {
          goto LABEL_2;
        }

        v36 = v6;
        v177 = v5;
        v178 = v4;
        v179 = (v308 + 2);
        *(a2 + 1) = v179;
LABEL_918:
        v539[0] = 0;
        if (v179 >= v53 || (v309 = *v179, (v309 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v309 = v539[0];
        }

        else
        {
          *(a2 + 1) = v179 + 1;
        }

        this = awd::metrics::enum_ATM_CallEndReason_IsValid(v309);
        if (this)
        {
          *(v3 + 676) |= 0x10u;
          *(v3 + 180) = v309;
        }

        v310 = *(a2 + 1);
        v39 = *(a2 + 2);
        v4 = v178;
        v5 = v177;
        v6 = v36;
        if (v39 - v310 < 2 || *v310 != 144 || v310[1] != 2)
        {
          goto LABEL_2;
        }

        v37 = v5;
        v38 = v4;
        v40 = (v310 + 2);
        *(a2 + 1) = v40;
LABEL_929:
        v539[0] = 0;
        if (v40 >= v39 || (v311 = *v40, (v311 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v311 = v539[0];
        }

        else
        {
          *(a2 + 1) = v40 + 1;
        }

        this = awd::metrics::RESPONSE_Code_IsValid(v311);
        if (this)
        {
          *(v3 + 676) |= 0x20u;
          *(v3 + 192) = v311;
        }

        v312 = *(a2 + 1);
        v31 = *(a2 + 2);
        v4 = v38;
        v5 = v37;
        v6 = v36;
        if (v31 - v312 < 2 || *v312 != 152 || v312[1] != 2)
        {
          goto LABEL_2;
        }

        v173 = (v312 + 2);
        *(a2 + 1) = v173;
LABEL_940:
        v539[0] = 0;
        if (v173 >= v31 || (v313 = *v173, (v313 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v313 = v539[0];
          v314 = *(a2 + 1);
          v31 = *(a2 + 2);
        }

        else
        {
          v314 = (v173 + 1);
          *(a2 + 1) = v314;
        }

        *(v3 + 236) = v313 != 0;
        *(v3 + 676) |= 0x40u;
        if (v31 - v314 < 2 || *v314 != 160 || v314[1] != 2)
        {
          goto LABEL_2;
        }

        v122 = (v314 + 2);
        *(a2 + 1) = v122;
LABEL_949:
        if (v122 >= v31 || (v315 = *v122, v315 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 216));
          if (!this)
          {
            return this;
          }

          v316 = *(a2 + 1);
          v31 = *(a2 + 2);
        }

        else
        {
          *(v3 + 216) = v315;
          v316 = (v122 + 1);
          *(a2 + 1) = v316;
        }

        *(v3 + 676) |= 0x1000u;
        if (v31 - v316 < 2 || *v316 != 168 || v316[1] != 2)
        {
          goto LABEL_2;
        }

        v43 = (v316 + 2);
        *(a2 + 1) = v43;
LABEL_958:
        if (v43 >= v31 || (v317 = *v43, v317 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 224));
          if (!this)
          {
            return this;
          }

          v318 = *(a2 + 1);
          v31 = *(a2 + 2);
        }

        else
        {
          *(v3 + 224) = v317;
          v318 = (v43 + 1);
          *(a2 + 1) = v318;
        }

        *(v3 + 676) |= 0x2000u;
        if (v31 - v318 < 2 || *v318 != 176 || v318[1] != 2)
        {
          goto LABEL_2;
        }

        v118 = (v318 + 2);
        *(a2 + 1) = v118;
LABEL_967:
        if (v118 >= v31 || (v319 = *v118, v319 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 240));
          if (!this)
          {
            return this;
          }

          v320 = *(a2 + 1);
          v31 = *(a2 + 2);
        }

        else
        {
          *(v3 + 240) = v319;
          v320 = (v118 + 1);
          *(a2 + 1) = v320;
        }

        *(v3 + 676) |= 0x10000u;
        if (v31 - v320 < 2 || *v320 != 184 || v320[1] != 2)
        {
          goto LABEL_2;
        }

        v32 = (v320 + 2);
        *(a2 + 1) = v32;
LABEL_976:
        if (v32 >= v31 || (v321 = *v32, v321 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 244));
          if (!this)
          {
            return this;
          }

          v322 = *(a2 + 1);
          v31 = *(a2 + 2);
        }

        else
        {
          *(v3 + 244) = v321;
          v322 = (v32 + 1);
          *(a2 + 1) = v322;
        }

        *(v3 + 676) |= 0x20000u;
        if (v31 - v322 < 2 || *v322 != 192 || v322[1] != 2)
        {
          goto LABEL_2;
        }

        v175 = (v322 + 2);
        *(a2 + 1) = v175;
LABEL_985:
        if (v175 >= v31 || (v323 = *v175, (v323 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
          if (!this)
          {
            return this;
          }

          v324 = *(a2 + 1);
          v31 = *(a2 + 2);
        }

        else
        {
          *v4 = v323;
          v324 = (v175 + 1);
          *(a2 + 1) = v324;
        }

        v176 = *(v3 + 676) | 0x100000;
        *(v3 + 676) = v176;
        if (v31 - v324 < 2 || *v324 != 202 || v324[1] != 2)
        {
          goto LABEL_2;
        }

        *(a2 + 1) = v324 + 2;
LABEL_994:
        *(v3 + 676) = v176 | 0x200000;
        if (*(v3 + 256) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v325 = *(a2 + 1);
        if (*(a2 + 4) - v325 < 2 || *v325 != 210)
        {
          goto LABEL_2;
        }

        break;
      case 2u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v140 = *(v3 + 672);
        goto LABEL_668;
      case 3u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v99 = *(a2 + 1);
        v98 = *(a2 + 2);
        goto LABEL_674;
      case 4u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v139 = *(a2 + 1);
        v98 = *(a2 + 2);
        goto LABEL_682;
      case 5u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v113 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_692;
      case 6u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v161 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_700;
      case 7u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_708;
      case 8u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v24 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_716;
      case 9u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v90 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_724;
      case 0xAu:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_738;
      case 0xBu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v145 = *(a2 + 1);
        v144 = *(a2 + 2);
        goto LABEL_744;
      case 0xCu:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v146 = *(v3 + 672);
        goto LABEL_752;
      case 0xDu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v83 = *(a2 + 1);
        v82 = *(a2 + 2);
        goto LABEL_758;
      case 0xEu:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v156 = *(v3 + 672);
        goto LABEL_766;
      case 0xFu:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_772;
      case 0x10u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v56 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_779;
      case 0x11u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v58 = *(v3 + 672);
        goto LABEL_788;
      case 0x12u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_795;
      case 0x13u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_802;
      case 0x14u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_809;
      case 0x15u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_816;
      case 0x16u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v57 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_825;
      case 0x17u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v65 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_834;
      case 0x18u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v33 = *(v3 + 672);
        goto LABEL_843;
      case 0x19u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_850;
      case 0x1Au:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_857;
      case 0x1Bu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v169 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_864;
      case 0x1Cu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v54 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_873;
      case 0x1Du:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v171 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_882;
      case 0x1Eu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v174 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_891;
      case 0x1Fu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v180 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_900;
      case 0x20u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v119 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_909;
      case 0x21u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v36 = v6;
        v177 = v5;
        v178 = v4;
        v179 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_918;
      case 0x22u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v36 = v6;
        v37 = v5;
        v38 = v4;
        v40 = *(a2 + 1);
        v39 = *(a2 + 2);
        goto LABEL_929;
      case 0x23u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v173 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_940;
      case 0x24u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v122 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_949;
      case 0x25u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v43 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_958;
      case 0x26u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v118 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_967;
      case 0x27u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v32 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_976;
      case 0x28u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v175 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_985;
      case 0x29u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v176 = *(v3 + 676);
        goto LABEL_994;
      case 0x2Au:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_1015;
      case 0x2Bu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v166 = *(a2 + 1);
        v165 = *(a2 + 2);
        goto LABEL_1027;
      case 0x2Cu:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v143 = *(v3 + 676);
        goto LABEL_1036;
      case 0x2Du:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v141 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1043;
      case 0x2Eu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_1052;
      case 0x2Fu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_1063;
      case 0x30u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v85 = v6;
        v86 = v5;
        v87 = v4;
        v88 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_1072;
      case 0x31u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v91 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1083;
      case 0x32u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v60 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1092;
      case 0x33u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v35 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1101;
      case 0x34u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v170 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1110;
      case 0x35u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v42 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1119;
      case 0x36u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v123 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1128;
      case 0x37u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v68 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1137;
      case 0x38u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v167 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1146;
      case 0x39u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v164 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1155;
      case 0x3Au:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v159 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1164;
      case 0x3Bu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v61 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1173;
      case 0x3Cu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v41 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1182;
      case 0x3Du:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v71 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1191;
      case 0x3Eu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v172 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1200;
      case 0x3Fu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v76 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1209;
      case 0x40u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v59 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1218;
      case 0x41u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v129 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1227;
      case 0x42u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v101 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1236;
      case 0x43u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v114 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1245;
      case 0x44u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v130 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1254;
      case 0x45u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v127 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1263;
      case 0x46u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v100 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1272;
      case 0x47u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v152 = *(a2 + 1);
        goto LABEL_1281;
      case 0x48u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v84 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1290;
      case 0x49u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v149 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1299;
      case 0x4Au:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v67 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1308;
      case 0x4Bu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v160 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1317;
      case 0x4Cu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v158 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1326;
      case 0x4Du:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v64 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1335;
      case 0x4Eu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v162 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1344;
      case 0x4Fu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v168 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1353;
      case 0x50u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v45 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1362;
      case 0x51u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v92 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1371;
      case 0x52u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v81 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1380;
      case 0x53u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v66 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1389;
      case 0x54u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v163 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_1398;
      case 0x55u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v138 = *(v3 + 680);
        goto LABEL_1407;
      case 0x56u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v78 = *(a2 + 1);
        v77 = *(a2 + 2);
        goto LABEL_1414;
      case 0x57u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v52 = *(a2 + 1);
        v51 = *(a2 + 2);
        goto LABEL_1425;
      case 0x58u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v151 = *(a2 + 1);
        v150 = *(a2 + 2);
        goto LABEL_1436;
      case 0x59u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_1445;
      case 0x5Au:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v95 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_134;
      case 0x5Bu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v147 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_309;
      case 0x5Cu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v157 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_318;
      case 0x5Du:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v63 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_327;
      case 0x5Eu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v70 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_336;
      case 0x5Fu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v69 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_345;
      case 0x60u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v73 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_354;
      case 0x61u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v80 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_363;
      case 0x62u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v137 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_372;
      case 0x63u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v120 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_381;
      case 0x64u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v136 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_390;
      case 0x65u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v155 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_399;
      case 0x66u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v154 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_408;
      case 0x67u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v72 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_417;
      case 0x68u:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_1459;
      case 0x69u:
        if ((v12 & 7) == 0)
        {
          v181 = *(a2 + 1);
          v109 = *(a2 + 2);
          goto LABEL_1479;
        }

        if (v14 != 2)
        {
          goto LABEL_298;
        }

        v540[0] = 0;
        v104 = *(a2 + 1);
        v489 = v10;
        if (v104 >= *(a2 + 2) || *v104 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v540))
          {
            return 0;
          }

          v105 = v9;
          v106 = v7;
          v107 = v5;
          v108 = v4;
        }

        else
        {
          v105 = v9;
          v106 = v7;
          v107 = v5;
          v108 = v4;
          v540[0] = *v104;
          *(a2 + 1) = v104 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          v539[0] = 0;
          v326 = *(a2 + 1);
          if (v326 >= *(a2 + 2) || (v327 = *v326, (v327 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539))
            {
              return 0;
            }

            v327 = v539[0];
          }

          else
          {
            *(a2 + 1) = v326 + 1;
          }

          v328 = v327 != 0;
          v329 = *(v3 + 544);
          if (v329 == *(v3 + 548))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve((v3 + 536), v329 + 1);
            v329 = *(v3 + 544);
          }

          v330 = *(v3 + 536);
          *(v3 + 544) = v329 + 1;
          *(v330 + v329) = v328;
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        goto LABEL_1499;
      case 0x6Au:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v110 = *(a2 + 1);
        v109 = *(a2 + 2);
        goto LABEL_1505;
      case 0x6Bu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v153 = *(a2 + 1);
        v109 = *(a2 + 2);
        goto LABEL_1514;
      case 0x6Cu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v142 = *(a2 + 1);
        v109 = *(a2 + 2);
        goto LABEL_1523;
      case 0x6Du:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_1532;
      case 0x6Eu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v124 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_186;
      case 0x6Fu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v148 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_431;
      case 0x70u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v133 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_440;
      case 0x71u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v121 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_449;
      case 0x72u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v75 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_458;
      case 0x73u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v112 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_467;
      case 0x74u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v79 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_476;
      case 0x75u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v131 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_485;
      case 0x76u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v102 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_494;
      case 0x77u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v89 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_503;
      case 0x78u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v134 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_512;
      case 0x79u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v103 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_521;
      case 0x7Au:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v135 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_530;
      case 0x7Bu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v115 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_539;
      case 0x7Cu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v132 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_548;
      case 0x7Du:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v128 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_557;
      case 0x7Eu:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v94 = *(a2 + 1);
        v93 = *(a2 + 2);
        goto LABEL_568;
      case 0x7Fu:
        if (v14 != 2)
        {
          goto LABEL_298;
        }

        goto LABEL_577;
      case 0x80u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v111 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_584;
      case 0x81u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v116 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_593;
      case 0x82u:
        if ((v12 & 7) != 0)
        {
          goto LABEL_298;
        }

        v117 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_602;
      default:
        goto LABEL_298;
    }

    while (1)
    {
      if (v325[1] != 2)
      {
        goto LABEL_2;
      }

      *(a2 + 1) = v325 + 2;
LABEL_1015:
      v331 = *(v3 + 272);
      v332 = *(v3 + 276);
      if (v331 >= v332)
      {
        if (v332 == *(v3 + 280))
        {
          this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 264));
          v332 = *(v3 + 276);
        }

        *(v3 + 276) = v332 + 1;
        v335 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
        v336 = *(v3 + 264);
        v337 = *(v3 + 272);
        *(v3 + 272) = v337 + 1;
        *(v336 + 8 * v337) = v335;
      }

      else
      {
        v333 = *(v3 + 264);
        *(v3 + 272) = v331 + 1;
        v334 = *(v333 + 8 * v331);
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!this)
      {
        return this;
      }

      v325 = *(a2 + 1);
      v165 = *(a2 + 2);
      if (v165 - v325 < 2)
      {
        goto LABEL_2;
      }

      v338 = *v325;
      if (v338 == 216)
      {
        break;
      }

      if (v338 != 210)
      {
        goto LABEL_2;
      }
    }

    if (v325[1] == 2)
    {
      v166 = (v325 + 2);
      *(a2 + 1) = v166;
LABEL_1027:
      if (v166 >= v165 || (v339 = *v166, v339 < 0))
      {
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 228));
        if (!this)
        {
          return this;
        }

        v340 = *(a2 + 1);
        v165 = *(a2 + 2);
      }

      else
      {
        *(v3 + 228) = v339;
        v340 = (v166 + 1);
        *(a2 + 1) = v340;
      }

      v143 = *(v3 + 676) | 0x4000;
      *(v3 + 676) = v143;
      if (v165 - v340 >= 2 && *v340 == 226 && v340[1] == 2)
      {
        *(a2 + 1) = v340 + 2;
LABEL_1036:
        *(v3 + 676) = v143 | 0x80;
        if (*(v3 + 200) == MEMORY[0x1E69E5958])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v341 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v25 - v341 >= 2 && *v341 == 232 && v341[1] == 2)
        {
          v141 = (v341 + 2);
          *(a2 + 1) = v141;
LABEL_1043:
          v539[0] = 0;
          if (v141 >= v25 || (v342 = *v141, (v342 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
            if (!this)
            {
              return this;
            }

            v342 = v539[0];
            v343 = *(a2 + 1);
            v25 = *(a2 + 2);
          }

          else
          {
            v343 = (v141 + 1);
            *(a2 + 1) = v343;
          }

          *(v3 + 237) = v342 != 0;
          *(v3 + 676) |= 0x100u;
          if (v25 - v343 >= 2 && *v343 == 240 && v343[1] == 2)
          {
            v26 = (v343 + 2);
            *(a2 + 1) = v26;
LABEL_1052:
            v539[0] = 0;
            if (v26 >= v25 || (v344 = *v26, (v344 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
              if (!this)
              {
                return this;
              }

              v344 = v539[0];
            }

            else
            {
              *(a2 + 1) = v26 + 1;
            }

            if (v344 <= 3)
            {
              *(v3 + 676) |= 0x200u;
              *(v3 + 196) = v344;
            }

            v345 = *(a2 + 1);
            v29 = *(a2 + 2);
            if (v29 - v345 >= 2 && *v345 == 248 && v345[1] == 2)
            {
              v30 = (v345 + 2);
              *(a2 + 1) = v30;
LABEL_1063:
              if (v30 >= v29 || (v346 = *v30, v346 < 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 208));
                if (!this)
                {
                  return this;
                }

                v347 = *(a2 + 1);
                v29 = *(a2 + 2);
              }

              else
              {
                *(v3 + 208) = v346;
                v347 = (v30 + 1);
                *(a2 + 1) = v347;
              }

              *(v3 + 676) |= 0x400u;
              if (v29 - v347 >= 2 && *v347 == 128 && v347[1] == 3)
              {
                v85 = v6;
                v86 = v5;
                v87 = v4;
                v88 = (v347 + 2);
                *(a2 + 1) = v88;
LABEL_1072:
                v539[0] = 0;
                if (v88 >= v29 || (v348 = *v88, (v348 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                  if (!this)
                  {
                    return this;
                  }

                  v348 = v539[0];
                }

                else
                {
                  *(a2 + 1) = v88 + 1;
                }

                this = awd::metrics::session_termination_reason_IsValid(v348);
                if (this)
                {
                  *(v3 + 676) |= 0x800u;
                  *(v3 + 212) = v348;
                }

                v349 = *(a2 + 1);
                v34 = *(a2 + 2);
                v4 = v87;
                v5 = v86;
                v6 = v85;
                if (v34 - v349 >= 2 && *v349 == 136 && v349[1] == 3)
                {
                  v91 = (v349 + 2);
                  *(a2 + 1) = v91;
LABEL_1083:
                  v539[0] = 0;
                  if (v91 >= v34 || (v350 = *v91, (v350 & 0x80000000) != 0))
                  {
                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                    if (!this)
                    {
                      return this;
                    }

                    v350 = v539[0];
                    v351 = *(a2 + 1);
                    v34 = *(a2 + 2);
                  }

                  else
                  {
                    v351 = (v91 + 1);
                    *(a2 + 1) = v351;
                  }

                  *(v3 + 232) = -(v350 & 1) ^ (v350 >> 1);
                  *(v3 + 676) |= 0x8000u;
                  if (v34 - v351 >= 2 && *v351 == 144 && v351[1] == 3)
                  {
                    v60 = (v351 + 2);
                    *(a2 + 1) = v60;
LABEL_1092:
                    if (v60 >= v34 || (v352 = *v60, v352 < 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 248));
                      if (!this)
                      {
                        return this;
                      }

                      v353 = *(a2 + 1);
                      v34 = *(a2 + 2);
                    }

                    else
                    {
                      *(v3 + 248) = v352;
                      v353 = (v60 + 1);
                      *(a2 + 1) = v353;
                    }

                    *(v3 + 676) |= 0x40000u;
                    if (v34 - v353 >= 2 && *v353 == 152 && v353[1] == 3)
                    {
                      v35 = (v353 + 2);
                      *(a2 + 1) = v35;
LABEL_1101:
                      if (v35 >= v34 || (v354 = *v35, v354 < 0))
                      {
                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 252));
                        if (!this)
                        {
                          return this;
                        }

                        v355 = *(a2 + 1);
                        v34 = *(a2 + 2);
                      }

                      else
                      {
                        *(v3 + 252) = v354;
                        v355 = (v35 + 1);
                        *(a2 + 1) = v355;
                      }

                      *(v3 + 676) |= 0x80000u;
                      if (v34 - v355 >= 2 && *v355 == 160 && v355[1] == 3)
                      {
                        v170 = (v355 + 2);
                        *(a2 + 1) = v170;
LABEL_1110:
                        if (v170 >= v34 || (v356 = *v170, v356 < 0))
                        {
                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 120));
                          if (!this)
                          {
                            return this;
                          }

                          v357 = *(a2 + 1);
                          v34 = *(a2 + 2);
                        }

                        else
                        {
                          *(v3 + 120) = v356;
                          v357 = (v170 + 1);
                          *(a2 + 1) = v357;
                        }

                        *(v3 + 672) |= 0x200000u;
                        if (v34 - v357 >= 2 && *v357 == 168 && v357[1] == 3)
                        {
                          v42 = (v357 + 2);
                          *(a2 + 1) = v42;
LABEL_1119:
                          if (v42 >= v34 || (v358 = *v42, v358 < 0))
                          {
                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 124));
                            if (!this)
                            {
                              return this;
                            }

                            v359 = *(a2 + 1);
                            v34 = *(a2 + 2);
                          }

                          else
                          {
                            *(v3 + 124) = v358;
                            v359 = (v42 + 1);
                            *(a2 + 1) = v359;
                          }

                          *(v3 + 672) |= 0x400000u;
                          if (v34 - v359 >= 2 && *v359 == 176 && v359[1] == 3)
                          {
                            v123 = (v359 + 2);
                            *(a2 + 1) = v123;
LABEL_1128:
                            if (v123 >= v34 || (v360 = *v123, v360 < 0))
                            {
                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 128));
                              if (!this)
                              {
                                return this;
                              }

                              v361 = *(a2 + 1);
                              v34 = *(a2 + 2);
                            }

                            else
                            {
                              *(v3 + 128) = v360;
                              v361 = (v123 + 1);
                              *(a2 + 1) = v361;
                            }

                            *(v3 + 672) |= 0x800000u;
                            if (v34 - v361 >= 2 && *v361 == 184 && v361[1] == 3)
                            {
                              v68 = (v361 + 2);
                              *(a2 + 1) = v68;
LABEL_1137:
                              v539[0] = 0;
                              if (v68 >= v34 || (v362 = *v68, (v362 & 0x80000000) != 0))
                              {
                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                if (!this)
                                {
                                  return this;
                                }

                                v362 = v539[0];
                                v363 = *(a2 + 1);
                                v34 = *(a2 + 2);
                              }

                              else
                              {
                                v363 = (v68 + 1);
                                *(a2 + 1) = v363;
                              }

                              *(v3 + 396) = v362 != 0;
                              *(v3 + 676) |= 0x2000000u;
                              if (v34 - v363 >= 2 && *v363 == 192 && v363[1] == 3)
                              {
                                v167 = (v363 + 2);
                                *(a2 + 1) = v167;
LABEL_1146:
                                if (v167 >= v34 || (v364 = *v167, (v364 & 0x80000000) != 0))
                                {
                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                  if (!this)
                                  {
                                    return this;
                                  }

                                  v365 = *(a2 + 1);
                                  v34 = *(a2 + 2);
                                }

                                else
                                {
                                  *v5 = v364;
                                  v365 = (v167 + 1);
                                  *(a2 + 1) = v365;
                                }

                                *(v3 + 676) |= 0x4000000u;
                                if (v34 - v365 >= 2 && *v365 == 200 && v365[1] == 3)
                                {
                                  v164 = (v365 + 2);
                                  *(a2 + 1) = v164;
LABEL_1155:
                                  if (v164 >= v34 || (v366 = *v164, (v366 & 0x80000000) != 0))
                                  {
                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                    if (!this)
                                    {
                                      return this;
                                    }

                                    v367 = *(a2 + 1);
                                    v34 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *v6 = v366;
                                    v367 = (v164 + 1);
                                    *(a2 + 1) = v367;
                                  }

                                  *(v3 + 676) |= 0x8000000u;
                                  if (v34 - v367 >= 2 && *v367 == 208 && v367[1] == 3)
                                  {
                                    v159 = (v367 + 2);
                                    *(a2 + 1) = v159;
LABEL_1164:
                                    if (v159 >= v34 || (v368 = *v159, (v368 & 0x80000000) != 0))
                                    {
                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                      if (!this)
                                      {
                                        return this;
                                      }

                                      v369 = *(a2 + 1);
                                      v34 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *v7 = v368;
                                      v369 = (v159 + 1);
                                      *(a2 + 1) = v369;
                                    }

                                    *(v3 + 676) |= 0x10000000u;
                                    if (v34 - v369 >= 2 && *v369 == 216 && v369[1] == 3)
                                    {
                                      v61 = (v369 + 2);
                                      *(a2 + 1) = v61;
LABEL_1173:
                                      if (v61 >= v34 || (v370 = *v61, (v370 & 0x80000000) != 0))
                                      {
                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                        if (!this)
                                        {
                                          return this;
                                        }

                                        v371 = *(a2 + 1);
                                        v34 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *v8 = v370;
                                        v371 = (v61 + 1);
                                        *(a2 + 1) = v371;
                                      }

                                      *(v3 + 676) |= 0x20000000u;
                                      if (v34 - v371 >= 2 && *v371 == 224 && v371[1] == 3)
                                      {
                                        v41 = (v371 + 2);
                                        *(a2 + 1) = v41;
LABEL_1182:
                                        if (v41 >= v34 || (v372 = *v41, (v372 & 0x80000000) != 0))
                                        {
                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                                          if (!this)
                                          {
                                            return this;
                                          }

                                          v373 = *(a2 + 1);
                                          v34 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *v9 = v372;
                                          v373 = (v41 + 1);
                                          *(a2 + 1) = v373;
                                        }

                                        *(v3 + 676) |= 0x40000000u;
                                        if (v34 - v373 >= 2 && *v373 == 232 && v373[1] == 3)
                                        {
                                          v71 = (v373 + 2);
                                          *(a2 + 1) = v71;
LABEL_1191:
                                          if (v71 >= v34 || (v374 = *v71, (v374 & 0x80000000) != 0))
                                          {
                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
                                            if (!this)
                                            {
                                              return this;
                                            }

                                            v375 = *(a2 + 1);
                                            v34 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *v10 = v374;
                                            v375 = (v71 + 1);
                                            *(a2 + 1) = v375;
                                          }

                                          *(v3 + 676) |= 0x80000000;
                                          if (v34 - v375 >= 2 && *v375 == 240 && v375[1] == 3)
                                          {
                                            v172 = (v375 + 2);
                                            *(a2 + 1) = v172;
LABEL_1200:
                                            if (v172 >= v34 || (v376 = *v172, (v376 & 0x80000000) != 0))
                                            {
                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v538);
                                              if (!this)
                                              {
                                                return this;
                                              }

                                              v377 = *(a2 + 1);
                                              v34 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *v538 = v376;
                                              v377 = (v172 + 1);
                                              *(a2 + 1) = v377;
                                            }

                                            *(v3 + 680) |= 1u;
                                            if (v34 - v377 >= 2 && *v377 == 248 && v377[1] == 3)
                                            {
                                              v76 = (v377 + 2);
                                              *(a2 + 1) = v76;
LABEL_1209:
                                              if (v76 >= v34 || (v378 = *v76, (v378 & 0x80000000) != 0))
                                              {
                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v537);
                                                if (!this)
                                                {
                                                  return this;
                                                }

                                                v379 = *(a2 + 1);
                                                v34 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v537 = v378;
                                                v379 = (v76 + 1);
                                                *(a2 + 1) = v379;
                                              }

                                              *(v3 + 680) |= 2u;
                                              if (v34 - v379 >= 2 && *v379 == 128 && v379[1] == 4)
                                              {
                                                v59 = (v379 + 2);
                                                *(a2 + 1) = v59;
LABEL_1218:
                                                if (v59 >= v34 || (v380 = *v59, (v380 & 0x80000000) != 0))
                                                {
                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v536);
                                                  if (!this)
                                                  {
                                                    return this;
                                                  }

                                                  v381 = *(a2 + 1);
                                                  v34 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v536 = v380;
                                                  v381 = (v59 + 1);
                                                  *(a2 + 1) = v381;
                                                }

                                                *(v3 + 680) |= 4u;
                                                if (v34 - v381 >= 2 && *v381 == 136 && v381[1] == 4)
                                                {
                                                  v129 = (v381 + 2);
                                                  *(a2 + 1) = v129;
LABEL_1227:
                                                  if (v129 >= v34 || (v382 = *v129, (v382 & 0x80000000) != 0))
                                                  {
                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v535);
                                                    if (!this)
                                                    {
                                                      return this;
                                                    }

                                                    v383 = *(a2 + 1);
                                                    v34 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *v535 = v382;
                                                    v383 = (v129 + 1);
                                                    *(a2 + 1) = v383;
                                                  }

                                                  *(v3 + 680) |= 8u;
                                                  if (v34 - v383 >= 2 && *v383 == 144 && v383[1] == 4)
                                                  {
                                                    v101 = (v383 + 2);
                                                    *(a2 + 1) = v101;
LABEL_1236:
                                                    if (v101 >= v34 || (v384 = *v101, (v384 & 0x80000000) != 0))
                                                    {
                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v534);
                                                      if (!this)
                                                      {
                                                        return this;
                                                      }

                                                      v385 = *(a2 + 1);
                                                      v34 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *v534 = v384;
                                                      v385 = (v101 + 1);
                                                      *(a2 + 1) = v385;
                                                    }

                                                    *(v3 + 680) |= 0x10u;
                                                    if (v34 - v385 >= 2 && *v385 == 152 && v385[1] == 4)
                                                    {
                                                      v114 = (v385 + 2);
                                                      *(a2 + 1) = v114;
LABEL_1245:
                                                      if (v114 >= v34 || (v386 = *v114, (v386 & 0x80000000) != 0))
                                                      {
                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v533);
                                                        if (!this)
                                                        {
                                                          return this;
                                                        }

                                                        v387 = *(a2 + 1);
                                                        v34 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *v533 = v386;
                                                        v387 = (v114 + 1);
                                                        *(a2 + 1) = v387;
                                                      }

                                                      *(v3 + 680) |= 0x20u;
                                                      if (v34 - v387 >= 2 && *v387 == 160 && v387[1] == 4)
                                                      {
                                                        v130 = (v387 + 2);
                                                        *(a2 + 1) = v130;
LABEL_1254:
                                                        if (v130 >= v34 || (v388 = *v130, (v388 & 0x80000000) != 0))
                                                        {
                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v532);
                                                          if (!this)
                                                          {
                                                            return this;
                                                          }

                                                          v389 = *(a2 + 1);
                                                          v34 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *v532 = v388;
                                                          v389 = (v130 + 1);
                                                          *(a2 + 1) = v389;
                                                        }

                                                        *(v3 + 680) |= 0x40u;
                                                        if (v34 - v389 >= 2 && *v389 == 168 && v389[1] == 4)
                                                        {
                                                          v127 = (v389 + 2);
                                                          *(a2 + 1) = v127;
LABEL_1263:
                                                          if (v127 >= v34 || (v390 = *v127, (v390 & 0x80000000) != 0))
                                                          {
                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v531);
                                                            if (!this)
                                                            {
                                                              return this;
                                                            }

                                                            v391 = *(a2 + 1);
                                                            v34 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *v531 = v390;
                                                            v391 = (v127 + 1);
                                                            *(a2 + 1) = v391;
                                                          }

                                                          *(v3 + 680) |= 0x80u;
                                                          if (v34 - v391 >= 2 && *v391 == 176 && v391[1] == 4)
                                                          {
                                                            v100 = (v391 + 2);
                                                            *(a2 + 1) = v100;
LABEL_1272:
                                                            if (v100 >= v34 || (v392 = *v100, (v392 & 0x80000000) != 0))
                                                            {
                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v530);
                                                              if (!this)
                                                              {
                                                                return this;
                                                              }

                                                              v393 = *(a2 + 1);
                                                              v34 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *v530 = v392;
                                                              v393 = (v100 + 1);
                                                              *(a2 + 1) = v393;
                                                            }

                                                            *(v3 + 680) |= 0x100u;
                                                            if (v34 - v393 >= 2 && *v393 == 184 && v393[1] == 4)
                                                            {
                                                              v152 = (v393 + 2);
                                                              *(a2 + 1) = v152;
LABEL_1281:
                                                              v44 = *(a2 + 2);
                                                              if (v152 >= v44 || (v394 = *v152, (v394 & 0x80000000) != 0))
                                                              {
                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v529);
                                                                if (!this)
                                                                {
                                                                  return this;
                                                                }

                                                                v395 = *(a2 + 1);
                                                                v44 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *v529 = v394;
                                                                v395 = (v152 + 1);
                                                                *(a2 + 1) = v395;
                                                              }

                                                              *(v3 + 680) |= 0x200u;
                                                              if (v44 - v395 >= 2 && *v395 == 192 && v395[1] == 4)
                                                              {
                                                                v84 = (v395 + 2);
                                                                *(a2 + 1) = v84;
LABEL_1290:
                                                                if (v84 >= v44 || (v396 = *v84, (v396 & 0x80000000) != 0))
                                                                {
                                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v528);
                                                                  if (!this)
                                                                  {
                                                                    return this;
                                                                  }

                                                                  v397 = *(a2 + 1);
                                                                  v44 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *v528 = v396;
                                                                  v397 = (v84 + 1);
                                                                  *(a2 + 1) = v397;
                                                                }

                                                                *(v3 + 680) |= 0x400u;
                                                                if (v44 - v397 >= 2 && *v397 == 200 && v397[1] == 4)
                                                                {
                                                                  v149 = (v397 + 2);
                                                                  *(a2 + 1) = v149;
LABEL_1299:
                                                                  if (v149 >= v44 || (v398 = *v149, (v398 & 0x80000000) != 0))
                                                                  {
                                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v527);
                                                                    if (!this)
                                                                    {
                                                                      return this;
                                                                    }

                                                                    v399 = *(a2 + 1);
                                                                    v44 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    *v527 = v398;
                                                                    v399 = (v149 + 1);
                                                                    *(a2 + 1) = v399;
                                                                  }

                                                                  *(v3 + 680) |= 0x800u;
                                                                  if (v44 - v399 >= 2 && *v399 == 208 && v399[1] == 4)
                                                                  {
                                                                    v67 = (v399 + 2);
                                                                    *(a2 + 1) = v67;
LABEL_1308:
                                                                    if (v67 >= v44 || (v400 = *v67, (v400 & 0x80000000) != 0))
                                                                    {
                                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v526);
                                                                      if (!this)
                                                                      {
                                                                        return this;
                                                                      }

                                                                      v401 = *(a2 + 1);
                                                                      v44 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v526 = v400;
                                                                      v401 = (v67 + 1);
                                                                      *(a2 + 1) = v401;
                                                                    }

                                                                    *(v3 + 680) |= 0x1000u;
                                                                    if (v44 - v401 >= 2 && *v401 == 216 && v401[1] == 4)
                                                                    {
                                                                      v160 = (v401 + 2);
                                                                      *(a2 + 1) = v160;
LABEL_1317:
                                                                      if (v160 >= v44 || (v402 = *v160, (v402 & 0x80000000) != 0))
                                                                      {
                                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v525);
                                                                        if (!this)
                                                                        {
                                                                          return this;
                                                                        }

                                                                        v403 = *(a2 + 1);
                                                                        v44 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        *v525 = v402;
                                                                        v403 = (v160 + 1);
                                                                        *(a2 + 1) = v403;
                                                                      }

                                                                      *(v3 + 680) |= 0x2000u;
                                                                      if (v44 - v403 >= 2 && *v403 == 224 && v403[1] == 4)
                                                                      {
                                                                        v158 = (v403 + 2);
                                                                        *(a2 + 1) = v158;
LABEL_1326:
                                                                        if (v158 >= v44 || (v404 = *v158, (v404 & 0x80000000) != 0))
                                                                        {
                                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v524);
                                                                          if (!this)
                                                                          {
                                                                            return this;
                                                                          }

                                                                          v405 = *(a2 + 1);
                                                                          v44 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          *v524 = v404;
                                                                          v405 = (v158 + 1);
                                                                          *(a2 + 1) = v405;
                                                                        }

                                                                        *(v3 + 680) |= 0x4000u;
                                                                        if (v44 - v405 >= 2 && *v405 == 232 && v405[1] == 4)
                                                                        {
                                                                          v64 = (v405 + 2);
                                                                          *(a2 + 1) = v64;
LABEL_1335:
                                                                          if (v64 >= v44 || (v406 = *v64, (v406 & 0x80000000) != 0))
                                                                          {
                                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v523);
                                                                            if (!this)
                                                                            {
                                                                              return this;
                                                                            }

                                                                            v407 = *(a2 + 1);
                                                                            v44 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v523 = v406;
                                                                            v407 = (v64 + 1);
                                                                            *(a2 + 1) = v407;
                                                                          }

                                                                          *(v3 + 680) |= 0x8000u;
                                                                          if (v44 - v407 >= 2 && *v407 == 240 && v407[1] == 4)
                                                                          {
                                                                            v162 = (v407 + 2);
                                                                            *(a2 + 1) = v162;
LABEL_1344:
                                                                            if (v162 >= v44 || (v408 = *v162, (v408 & 0x80000000) != 0))
                                                                            {
                                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v522);
                                                                              if (!this)
                                                                              {
                                                                                return this;
                                                                              }

                                                                              v409 = *(a2 + 1);
                                                                              v44 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              *v522 = v408;
                                                                              v409 = (v162 + 1);
                                                                              *(a2 + 1) = v409;
                                                                            }

                                                                            *(v3 + 680) |= 0x10000u;
                                                                            if (v44 - v409 >= 2 && *v409 == 248 && v409[1] == 4)
                                                                            {
                                                                              v168 = (v409 + 2);
                                                                              *(a2 + 1) = v168;
LABEL_1353:
                                                                              if (v168 >= v44 || (v410 = *v168, (v410 & 0x80000000) != 0))
                                                                              {
                                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v521);
                                                                                if (!this)
                                                                                {
                                                                                  return this;
                                                                                }

                                                                                v411 = *(a2 + 1);
                                                                                v44 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *v521 = v410;
                                                                                v411 = (v168 + 1);
                                                                                *(a2 + 1) = v411;
                                                                              }

                                                                              *(v3 + 680) |= 0x20000u;
                                                                              if (v44 - v411 >= 2 && *v411 == 128 && v411[1] == 5)
                                                                              {
                                                                                v45 = (v411 + 2);
                                                                                *(a2 + 1) = v45;
LABEL_1362:
                                                                                if (v45 >= v44 || (v412 = *v45, (v412 & 0x80000000) != 0))
                                                                                {
                                                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v520);
                                                                                  if (!this)
                                                                                  {
                                                                                    return this;
                                                                                  }

                                                                                  v413 = *(a2 + 1);
                                                                                  v44 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *v520 = v412;
                                                                                  v413 = (v45 + 1);
                                                                                  *(a2 + 1) = v413;
                                                                                }

                                                                                *(v3 + 680) |= 0x40000u;
                                                                                if (v44 - v413 >= 2 && *v413 == 136 && v413[1] == 5)
                                                                                {
                                                                                  v92 = (v413 + 2);
                                                                                  *(a2 + 1) = v92;
LABEL_1371:
                                                                                  if (v92 >= v44 || (v414 = *v92, (v414 & 0x80000000) != 0))
                                                                                  {
                                                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v519);
                                                                                    if (!this)
                                                                                    {
                                                                                      return this;
                                                                                    }

                                                                                    v415 = *(a2 + 1);
                                                                                    v44 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *v519 = v414;
                                                                                    v415 = (v92 + 1);
                                                                                    *(a2 + 1) = v415;
                                                                                  }

                                                                                  *(v3 + 680) |= 0x80000u;
                                                                                  if (v44 - v415 >= 2 && *v415 == 144 && v415[1] == 5)
                                                                                  {
                                                                                    v81 = (v415 + 2);
                                                                                    *(a2 + 1) = v81;
LABEL_1380:
                                                                                    if (v81 >= v44 || (v416 = *v81, (v416 & 0x80000000) != 0))
                                                                                    {
                                                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v518);
                                                                                      if (!this)
                                                                                      {
                                                                                        return this;
                                                                                      }

                                                                                      v417 = *(a2 + 1);
                                                                                      v44 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *v518 = v416;
                                                                                      v417 = (v81 + 1);
                                                                                      *(a2 + 1) = v417;
                                                                                    }

                                                                                    *(v3 + 680) |= 0x100000u;
                                                                                    if (v44 - v417 >= 2 && *v417 == 152 && v417[1] == 5)
                                                                                    {
                                                                                      v66 = (v417 + 2);
                                                                                      *(a2 + 1) = v66;
LABEL_1389:
                                                                                      v539[0] = 0;
                                                                                      if (v66 >= v44 || (v418 = *v66, (v418 & 0x80000000) != 0))
                                                                                      {
                                                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                                                        if (!this)
                                                                                        {
                                                                                          return this;
                                                                                        }

                                                                                        v418 = v539[0];
                                                                                        v419 = *(a2 + 1);
                                                                                        v44 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v419 = (v66 + 1);
                                                                                        *(a2 + 1) = v419;
                                                                                      }

                                                                                      *(v3 + 397) = v418 != 0;
                                                                                      *(v3 + 680) |= 0x200000u;
                                                                                      if (v44 - v419 >= 2 && *v419 == 160 && v419[1] == 5)
                                                                                      {
                                                                                        v163 = (v419 + 2);
                                                                                        *(a2 + 1) = v163;
LABEL_1398:
                                                                                        if (v163 >= v44 || (v420 = *v163, (v420 & 0x80000000) != 0))
                                                                                        {
                                                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v517);
                                                                                          if (!this)
                                                                                          {
                                                                                            return this;
                                                                                          }

                                                                                          v421 = *(a2 + 1);
                                                                                          v44 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *v517 = v420;
                                                                                          v421 = (v163 + 1);
                                                                                          *(a2 + 1) = v421;
                                                                                        }

                                                                                        v138 = *(v3 + 680) | 0x400000;
                                                                                        *(v3 + 680) = v138;
                                                                                        if (v44 - v421 >= 2 && *v421 == 170 && v421[1] == 5)
                                                                                        {
                                                                                          *(a2 + 1) = v421 + 2;
LABEL_1407:
                                                                                          *(v3 + 680) = v138 | 0x800000;
                                                                                          if (*(v3 + 408) == MEMORY[0x1E69E5958])
                                                                                          {
                                                                                            operator new();
                                                                                          }

                                                                                          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                                          if (!this)
                                                                                          {
                                                                                            return this;
                                                                                          }

                                                                                          v422 = *(a2 + 1);
                                                                                          v77 = *(a2 + 2);
                                                                                          if (v77 - v422 >= 2 && *v422 == 176 && v422[1] == 5)
                                                                                          {
                                                                                            v78 = (v422 + 2);
                                                                                            *(a2 + 1) = v78;
LABEL_1414:
                                                                                            v539[0] = 0;
                                                                                            if (v78 >= v77 || (v423 = *v78, (v423 & 0x80000000) != 0))
                                                                                            {
                                                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                                                              if (!this)
                                                                                              {
                                                                                                return this;
                                                                                              }

                                                                                              v423 = v539[0];
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *(a2 + 1) = v78 + 1;
                                                                                            }

                                                                                            if (v423 <= 2)
                                                                                            {
                                                                                              *(v3 + 680) |= 0x1000000u;
                                                                                              *(v3 + 416) = v423;
                                                                                            }

                                                                                            v424 = *(a2 + 1);
                                                                                            v51 = *(a2 + 2);
                                                                                            if (v51 - v424 >= 2 && *v424 == 184 && v424[1] == 5)
                                                                                            {
                                                                                              v52 = (v424 + 2);
                                                                                              *(a2 + 1) = v52;
LABEL_1425:
                                                                                              v539[0] = 0;
                                                                                              if (v52 >= v51 || (v425 = *v52, (v425 & 0x80000000) != 0))
                                                                                              {
                                                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                                                                if (!this)
                                                                                                {
                                                                                                  return this;
                                                                                                }

                                                                                                v425 = v539[0];
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                *(a2 + 1) = v52 + 1;
                                                                                              }

                                                                                              if (v425 <= 5)
                                                                                              {
                                                                                                *(v3 + 680) |= 0x2000000u;
                                                                                                *(v3 + 420) = v425;
                                                                                              }

                                                                                              v426 = *(a2 + 1);
                                                                                              v150 = *(a2 + 2);
                                                                                              if (v150 - v426 >= 2 && *v426 == 192 && v426[1] == 5)
                                                                                              {
                                                                                                v151 = (v426 + 2);
                                                                                                *(a2 + 1) = v151;
LABEL_1436:
                                                                                                v539[0] = 0;
                                                                                                if (v151 >= v150 || (v427 = *v151, (v427 & 0x80000000) != 0))
                                                                                                {
                                                                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                                                                  if (!this)
                                                                                                  {
                                                                                                    return this;
                                                                                                  }

                                                                                                  v427 = v539[0];
                                                                                                  v428 = *(a2 + 1);
                                                                                                  v150 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v428 = (v151 + 1);
                                                                                                  *(a2 + 1) = v428;
                                                                                                }

                                                                                                *(v3 + 398) = v427 != 0;
                                                                                                *(v3 + 680) |= 0x4000000u;
                                                                                                if (v150 - v428 >= 2 && *v428 == 202)
                                                                                                {
                                                                                                  while (1)
                                                                                                  {
                                                                                                    if (v428[1] != 5)
                                                                                                    {
                                                                                                      goto LABEL_2;
                                                                                                    }

                                                                                                    *(a2 + 1) = v428 + 2;
LABEL_1445:
                                                                                                    v429 = *(v3 + 432);
                                                                                                    v430 = *(v3 + 436);
                                                                                                    if (v429 >= v430)
                                                                                                    {
                                                                                                      if (v430 == *(v3 + 440))
                                                                                                      {
                                                                                                        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 424));
                                                                                                        v430 = *(v3 + 436);
                                                                                                      }

                                                                                                      *(v3 + 436) = v430 + 1;
                                                                                                      v433 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
                                                                                                      v434 = *(v3 + 424);
                                                                                                      v435 = *(v3 + 432);
                                                                                                      *(v3 + 432) = v435 + 1;
                                                                                                      *(v434 + 8 * v435) = v433;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v431 = *(v3 + 424);
                                                                                                      *(v3 + 432) = v429 + 1;
                                                                                                      v432 = *(v431 + 8 * v429);
                                                                                                    }

                                                                                                    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                                                    if (!this)
                                                                                                    {
                                                                                                      return this;
                                                                                                    }

                                                                                                    v428 = *(a2 + 1);
                                                                                                    v62 = *(a2 + 2);
                                                                                                    if (v62 - v428 < 2)
                                                                                                    {
                                                                                                      goto LABEL_2;
                                                                                                    }

                                                                                                    v436 = *v428;
                                                                                                    if (v436 == 208)
                                                                                                    {
                                                                                                      break;
                                                                                                    }

                                                                                                    if (v436 != 202)
                                                                                                    {
                                                                                                      goto LABEL_2;
                                                                                                    }
                                                                                                  }

                                                                                                  if (v428[1] == 5)
                                                                                                  {
                                                                                                    v95 = (v428 + 2);
                                                                                                    *(a2 + 1) = v95;
LABEL_134:
                                                                                                    if (v95 >= v62 || (v96 = *v95, (v96 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v493);
                                                                                                      if (!this)
                                                                                                      {
                                                                                                        return this;
                                                                                                      }

                                                                                                      v97 = *(a2 + 1);
                                                                                                      v62 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *v493 = v96;
                                                                                                      v97 = (v95 + 1);
                                                                                                      *(a2 + 1) = v97;
                                                                                                    }

                                                                                                    *(v3 + 680) |= 0x10000000u;
                                                                                                    if (v62 - v97 >= 2 && *v97 == 216 && v97[1] == 5)
                                                                                                    {
                                                                                                      v147 = (v97 + 2);
                                                                                                      *(a2 + 1) = v147;
LABEL_309:
                                                                                                      if (v147 >= v62 || (v182 = *v147, v182 < 0))
                                                                                                      {
                                                                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 448));
                                                                                                        if (!this)
                                                                                                        {
                                                                                                          return this;
                                                                                                        }

                                                                                                        v183 = *(a2 + 1);
                                                                                                        v62 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *(v3 + 448) = v182;
                                                                                                        v183 = (v147 + 1);
                                                                                                        *(a2 + 1) = v183;
                                                                                                      }

                                                                                                      *(v3 + 680) |= 0x20000000u;
                                                                                                      if (v62 - v183 >= 2 && *v183 == 224 && v183[1] == 5)
                                                                                                      {
                                                                                                        v157 = (v183 + 2);
                                                                                                        *(a2 + 1) = v157;
LABEL_318:
                                                                                                        if (v157 >= v62 || (v184 = *v157, v184 < 0))
                                                                                                        {
                                                                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 464));
                                                                                                          if (!this)
                                                                                                          {
                                                                                                            return this;
                                                                                                          }

                                                                                                          v185 = *(a2 + 1);
                                                                                                          v62 = *(a2 + 2);
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          *(v3 + 464) = v184;
                                                                                                          v185 = (v157 + 1);
                                                                                                          *(a2 + 1) = v185;
                                                                                                        }

                                                                                                        *(v3 + 680) |= 0x40000000u;
                                                                                                        if (v62 - v185 >= 2 && *v185 == 232 && v185[1] == 5)
                                                                                                        {
                                                                                                          v63 = (v185 + 2);
                                                                                                          *(a2 + 1) = v63;
LABEL_327:
                                                                                                          if (v63 >= v62 || (v186 = *v63, (v186 & 0x80000000) != 0))
                                                                                                          {
                                                                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v502);
                                                                                                            if (!this)
                                                                                                            {
                                                                                                              return this;
                                                                                                            }

                                                                                                            v187 = *(a2 + 1);
                                                                                                            v62 = *(a2 + 2);
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            *v502 = v186;
                                                                                                            v187 = (v63 + 1);
                                                                                                            *(a2 + 1) = v187;
                                                                                                          }

                                                                                                          *(v3 + 680) |= 0x80000000;
                                                                                                          if (v62 - v187 >= 2 && *v187 == 240 && v187[1] == 5)
                                                                                                          {
                                                                                                            v70 = (v187 + 2);
                                                                                                            *(a2 + 1) = v70;
LABEL_336:
                                                                                                            if (v70 >= v62 || (v188 = *v70, (v188 & 0x80000000) != 0))
                                                                                                            {
                                                                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v504);
                                                                                                              if (!this)
                                                                                                              {
                                                                                                                return this;
                                                                                                              }

                                                                                                              v189 = *(a2 + 1);
                                                                                                              v62 = *(a2 + 2);
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              *v504 = v188;
                                                                                                              v189 = (v70 + 1);
                                                                                                              *(a2 + 1) = v189;
                                                                                                            }

                                                                                                            *(v3 + 684) |= 1u;
                                                                                                            if (v62 - v189 >= 2 && *v189 == 248 && v189[1] == 5)
                                                                                                            {
                                                                                                              v69 = (v189 + 2);
                                                                                                              *(a2 + 1) = v69;
LABEL_345:
                                                                                                              if (v69 >= v62 || (v190 = *v69, v190 < 0))
                                                                                                              {
                                                                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 472));
                                                                                                                if (!this)
                                                                                                                {
                                                                                                                  return this;
                                                                                                                }

                                                                                                                v191 = *(a2 + 1);
                                                                                                                v62 = *(a2 + 2);
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                *(v3 + 472) = v190;
                                                                                                                v191 = (v69 + 1);
                                                                                                                *(a2 + 1) = v191;
                                                                                                              }

                                                                                                              *(v3 + 684) |= 2u;
                                                                                                              if (v62 - v191 >= 2 && *v191 == 128 && v191[1] == 6)
                                                                                                              {
                                                                                                                v73 = (v191 + 2);
                                                                                                                *(a2 + 1) = v73;
LABEL_354:
                                                                                                                if (v73 >= v62 || (v192 = *v73, v192 < 0))
                                                                                                                {
                                                                                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 488));
                                                                                                                  if (!this)
                                                                                                                  {
                                                                                                                    return this;
                                                                                                                  }

                                                                                                                  v193 = *(a2 + 1);
                                                                                                                  v62 = *(a2 + 2);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  *(v3 + 488) = v192;
                                                                                                                  v193 = (v73 + 1);
                                                                                                                  *(a2 + 1) = v193;
                                                                                                                }

                                                                                                                *(v3 + 684) |= 4u;
                                                                                                                if (v62 - v193 >= 2 && *v193 == 136 && v193[1] == 6)
                                                                                                                {
                                                                                                                  v80 = (v193 + 2);
                                                                                                                  *(a2 + 1) = v80;
LABEL_363:
                                                                                                                  if (v80 >= v62 || (v194 = *v80, (v194 & 0x80000000) != 0))
                                                                                                                  {
                                                                                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v509);
                                                                                                                    if (!this)
                                                                                                                    {
                                                                                                                      return this;
                                                                                                                    }

                                                                                                                    v195 = *(a2 + 1);
                                                                                                                    v62 = *(a2 + 2);
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    *v509 = v194;
                                                                                                                    v195 = (v80 + 1);
                                                                                                                    *(a2 + 1) = v195;
                                                                                                                  }

                                                                                                                  *(v3 + 684) |= 8u;
                                                                                                                  if (v62 - v195 >= 2 && *v195 == 144 && v195[1] == 6)
                                                                                                                  {
                                                                                                                    v137 = (v195 + 2);
                                                                                                                    *(a2 + 1) = v137;
LABEL_372:
                                                                                                                    if (v137 >= v62 || (v196 = *v137, (v196 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v516);
                                                                                                                      if (!this)
                                                                                                                      {
                                                                                                                        return this;
                                                                                                                      }

                                                                                                                      v197 = *(a2 + 1);
                                                                                                                      v62 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      *v516 = v196;
                                                                                                                      v197 = (v137 + 1);
                                                                                                                      *(a2 + 1) = v197;
                                                                                                                    }

                                                                                                                    *(v3 + 684) |= 0x10u;
                                                                                                                    if (v62 - v197 >= 2 && *v197 == 152 && v197[1] == 6)
                                                                                                                    {
                                                                                                                      v120 = (v197 + 2);
                                                                                                                      *(a2 + 1) = v120;
LABEL_381:
                                                                                                                      if (v120 >= v62 || (v198 = *v120, (v198 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v515);
                                                                                                                        if (!this)
                                                                                                                        {
                                                                                                                          return this;
                                                                                                                        }

                                                                                                                        v199 = *(a2 + 1);
                                                                                                                        v62 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        *v515 = v198;
                                                                                                                        v199 = (v120 + 1);
                                                                                                                        *(a2 + 1) = v199;
                                                                                                                      }

                                                                                                                      *(v3 + 684) |= 0x20u;
                                                                                                                      if (v62 - v199 >= 2 && *v199 == 160 && v199[1] == 6)
                                                                                                                      {
                                                                                                                        v136 = (v199 + 2);
                                                                                                                        *(a2 + 1) = v136;
LABEL_390:
                                                                                                                        v539[0] = 0;
                                                                                                                        if (v136 >= v62 || (v200 = *v136, (v200 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                                                                                          if (!this)
                                                                                                                          {
                                                                                                                            return this;
                                                                                                                          }

                                                                                                                          v200 = v539[0];
                                                                                                                          v201 = *(a2 + 1);
                                                                                                                          v62 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v201 = (v136 + 1);
                                                                                                                          *(a2 + 1) = v201;
                                                                                                                        }

                                                                                                                        *(v3 + 399) = v200 != 0;
                                                                                                                        *(v3 + 684) |= 0x40u;
                                                                                                                        if (v62 - v201 >= 2 && *v201 == 168 && v201[1] == 6)
                                                                                                                        {
                                                                                                                          v155 = (v201 + 2);
                                                                                                                          *(a2 + 1) = v155;
LABEL_399:
                                                                                                                          if (v155 >= v62 || (v202 = *v155, (v202 & 0x80000000) != 0))
                                                                                                                          {
                                                                                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v514);
                                                                                                                            if (!this)
                                                                                                                            {
                                                                                                                              return this;
                                                                                                                            }

                                                                                                                            v203 = *(a2 + 1);
                                                                                                                            v62 = *(a2 + 2);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            *v514 = v202;
                                                                                                                            v203 = (v155 + 1);
                                                                                                                            *(a2 + 1) = v203;
                                                                                                                          }

                                                                                                                          *(v3 + 684) |= 0x80u;
                                                                                                                          if (v62 - v203 >= 2 && *v203 == 176 && v203[1] == 6)
                                                                                                                          {
                                                                                                                            v154 = (v203 + 2);
                                                                                                                            *(a2 + 1) = v154;
LABEL_408:
                                                                                                                            if (v154 >= v62 || (v204 = *v154, (v204 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v513);
                                                                                                                              if (!this)
                                                                                                                              {
                                                                                                                                return this;
                                                                                                                              }

                                                                                                                              v205 = *(a2 + 1);
                                                                                                                              v62 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              *v513 = v204;
                                                                                                                              v205 = (v154 + 1);
                                                                                                                              *(a2 + 1) = v205;
                                                                                                                            }

                                                                                                                            *(v3 + 684) |= 0x100u;
                                                                                                                            if (v62 - v205 >= 2 && *v205 == 184 && v205[1] == 6)
                                                                                                                            {
                                                                                                                              v72 = (v205 + 2);
                                                                                                                              *(a2 + 1) = v72;
LABEL_417:
                                                                                                                              v539[0] = 0;
                                                                                                                              if (v72 >= v62 || (v206 = *v72, (v206 & 0x80000000) != 0))
                                                                                                                              {
                                                                                                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                                                                                                if (!this)
                                                                                                                                {
                                                                                                                                  return this;
                                                                                                                                }

                                                                                                                                v206 = v539[0];
                                                                                                                                v207 = *(a2 + 1);
                                                                                                                                v62 = *(a2 + 2);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v207 = (v72 + 1);
                                                                                                                                *(a2 + 1) = v207;
                                                                                                                              }

                                                                                                                              *(v3 + 620) = v206 != 0;
                                                                                                                              *(v3 + 684) |= 0x200u;
                                                                                                                              if (v62 - v207 >= 2 && *v207 == 194)
                                                                                                                              {
                                                                                                                                break;
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
      }
    }
  }

  while (1)
  {
    if (v207[1] != 6)
    {
      goto LABEL_2;
    }

    *(a2 + 1) = v207 + 2;
LABEL_1459:
    v437 = *(v3 + 520);
    v438 = *(v3 + 524);
    if (v437 >= v438)
    {
      if (v438 == *(v3 + 528))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 512));
        v438 = *(v3 + 524);
      }

      *(v3 + 524) = v438 + 1;
      operator new();
    }

    v490 = v10;
    v439 = v9;
    v440 = v8;
    v441 = v7;
    v442 = v6;
    v443 = v5;
    v444 = v4;
    v445 = *(v3 + 512);
    *(v3 + 520) = v437 + 1;
    v446 = *(v445 + 8 * v437);
    v539[0] = 0;
    v447 = *(a2 + 1);
    if (v447 >= *(a2 + 2) || *v447 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539))
      {
        return 0;
      }
    }

    else
    {
      v539[0] = *v447;
      *(a2 + 1) = v447 + 1;
    }

    v448 = *(a2 + 14);
    v449 = *(a2 + 15);
    *(a2 + 14) = v448 + 1;
    if (v448 >= v449)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::ATM_CallEndEvent_myreason::MergePartialFromCodedStream(v446, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v450 = *(a2 + 14);
    v451 = __OFSUB__(v450, 1);
    v452 = v450 - 1;
    if (v452 < 0 == v451)
    {
      *(a2 + 14) = v452;
    }

    v207 = *(a2 + 1);
    v109 = *(a2 + 2);
    v4 = v444;
    v5 = v443;
    v6 = v442;
    v7 = v441;
    v8 = v440;
    v9 = v439;
    v10 = v490;
    if (v109 - v207 <= 1)
    {
      goto LABEL_2;
    }

    v453 = *v207;
    if (v453 == 200)
    {
      while (v207[1] == 6)
      {
        v181 = (v207 + 2);
        *(a2 + 1) = v181;
LABEL_1479:
        v539[0] = 0;
        v489 = v10;
        if (v181 >= v109 || (v454 = *v181, (v454 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
          if (!this)
          {
            return this;
          }

          v105 = v9;
          v106 = v7;
          v107 = v5;
          v108 = v4;
          v454 = v539[0];
        }

        else
        {
          v105 = v9;
          v106 = v7;
          v107 = v5;
          v108 = v4;
          *(a2 + 1) = v181 + 1;
        }

        v455 = v454 != 0;
        v456 = *(v3 + 544);
        v457 = *(v3 + 548);
        if (v456 == v457)
        {
          this = wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve((v3 + 536), v456 + 1);
          v456 = *(v3 + 544);
          v457 = *(v3 + 548);
        }

        v458 = *(v3 + 536);
        v459 = v456 + 1;
        *(v3 + 544) = v456 + 1;
        *(v458 + v456) = v455;
        if (v457 - (v456 + 1) >= 1)
        {
          v460 = v457 - v456;
          do
          {
            v461 = *(a2 + 1);
            v462 = *(a2 + 2);
            if (v462 - v461 < 2 || *v461 != 200 || v461[1] != 6)
            {
              break;
            }

            *(a2 + 1) = v461 + 2;
            v539[0] = 0;
            if ((v461 + 2) >= v462 || (v463 = v461[2], (v463 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
              if (!this)
              {
                return this;
              }

              v463 = v539[0];
              v459 = *(v3 + 544);
            }

            else
            {
              *(a2 + 1) = v461 + 3;
            }

            v464 = v463 != 0;
            if (v459 >= *(v3 + 548))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v539);
              v459 = *(v3 + 544);
            }

            v465 = *(v3 + 536);
            *(v3 + 544) = v459 + 1;
            *(v465 + v459) = v464;
            --v460;
            ++v459;
          }

          while (v460 > 1);
        }

LABEL_1499:
        v207 = *(a2 + 1);
        v109 = *(a2 + 2);
        v4 = v108;
        v5 = v107;
        v7 = v106;
        v9 = v105;
        v10 = v489;
        if (v109 - v207 <= 1)
        {
          break;
        }

        v466 = *v207;
        if (v466 == 208)
        {
          if (v207[1] == 6)
          {
            v110 = (v207 + 2);
            *(a2 + 1) = v110;
LABEL_1505:
            if (v110 >= v109 || (v467 = *v110, (v467 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v494);
              if (!this)
              {
                return this;
              }

              v468 = *(a2 + 1);
              v109 = *(a2 + 2);
            }

            else
            {
              *v494 = v467;
              v468 = (v110 + 1);
              *(a2 + 1) = v468;
            }

            *(v3 + 684) |= 0x1000u;
            if (v109 - v468 >= 2 && *v468 == 216 && v468[1] == 6)
            {
              v153 = (v468 + 2);
              *(a2 + 1) = v153;
LABEL_1514:
              if (v153 >= v109 || (v469 = *v153, (v469 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v496);
                if (!this)
                {
                  return this;
                }

                v470 = *(a2 + 1);
                v109 = *(a2 + 2);
              }

              else
              {
                *v496 = v469;
                v470 = (v153 + 1);
                *(a2 + 1) = v470;
              }

              *(v3 + 684) |= 0x2000u;
              if (v109 - v470 >= 2 && *v470 == 224 && v470[1] == 6)
              {
                v142 = (v470 + 2);
                *(a2 + 1) = v142;
LABEL_1523:
                if (v142 >= v109 || (v471 = *v142, (v471 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v499);
                  if (!this)
                  {
                    return this;
                  }

                  v472 = *(a2 + 1);
                  v109 = *(a2 + 2);
                }

                else
                {
                  *v499 = v471;
                  v472 = (v142 + 1);
                  *(a2 + 1) = v472;
                }

                *(v3 + 684) |= 0x4000u;
                if (v109 - v472 >= 2 && *v472 == 234)
                {
                  while (1)
                  {
                    if (v472[1] != 6)
                    {
                      goto LABEL_2;
                    }

                    *(a2 + 1) = v472 + 2;
LABEL_1532:
                    v473 = *(v3 + 568);
                    v474 = *(v3 + 572);
                    if (v473 >= v474)
                    {
                      if (v474 == *(v3 + 576))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 560));
                        v474 = *(v3 + 572);
                      }

                      *(v3 + 572) = v474 + 1;
                      operator new();
                    }

                    v491 = v10;
                    v475 = v9;
                    v476 = v8;
                    v477 = v7;
                    v478 = v6;
                    v479 = v5;
                    v480 = v4;
                    v481 = *(v3 + 560);
                    *(v3 + 568) = v473 + 1;
                    v482 = *(v481 + 8 * v473);
                    v539[0] = 0;
                    v483 = *(a2 + 1);
                    if (v483 >= *(a2 + 2) || *v483 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v539[0] = *v483;
                      *(a2 + 1) = v483 + 1;
                    }

                    v484 = *(a2 + 14);
                    v485 = *(a2 + 15);
                    *(a2 + 14) = v484 + 1;
                    if (v484 >= v485)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!awd::metrics::ATM_CallEndEvent_handover::MergePartialFromCodedStream(v482, a2) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v486 = *(a2 + 14);
                    v451 = __OFSUB__(v486, 1);
                    v487 = v486 - 1;
                    if (v487 < 0 == v451)
                    {
                      *(a2 + 14) = v487;
                    }

                    v472 = *(a2 + 1);
                    v74 = *(a2 + 2);
                    v4 = v480;
                    v5 = v479;
                    v6 = v478;
                    v7 = v477;
                    v8 = v476;
                    v9 = v475;
                    v10 = v491;
                    if (v74 - v472 <= 1)
                    {
                      goto LABEL_2;
                    }

                    v488 = *v472;
                    if (v488 == 240)
                    {
                      break;
                    }

                    if (v488 != 234)
                    {
                      goto LABEL_2;
                    }
                  }

                  if (v472[1] == 6)
                  {
                    v124 = (v472 + 2);
                    *(a2 + 1) = v124;
LABEL_186:
                    if (v124 >= v74 || (v125 = *v124, (v125 & 0x80000000) != 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v492);
                      if (!this)
                      {
                        return this;
                      }

                      v126 = *(a2 + 1);
                      v74 = *(a2 + 2);
                    }

                    else
                    {
                      *v492 = v125;
                      v126 = (v124 + 1);
                      *(a2 + 1) = v126;
                    }

                    *(v3 + 684) |= 0x10000u;
                    if (v74 - v126 >= 2 && *v126 == 248 && v126[1] == 6)
                    {
                      v148 = (v126 + 2);
                      *(a2 + 1) = v148;
LABEL_431:
                      if (v148 >= v74 || (v208 = *v148, (v208 & 0x80000000) != 0))
                      {
                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v495);
                        if (!this)
                        {
                          return this;
                        }

                        v209 = *(a2 + 1);
                        v74 = *(a2 + 2);
                      }

                      else
                      {
                        *v495 = v208;
                        v209 = (v148 + 1);
                        *(a2 + 1) = v209;
                      }

                      *(v3 + 684) |= 0x20000u;
                      if (v74 - v209 >= 2 && *v209 == 128 && v209[1] == 7)
                      {
                        v133 = (v209 + 2);
                        *(a2 + 1) = v133;
LABEL_440:
                        if (v133 >= v74 || (v210 = *v133, (v210 & 0x80000000) != 0))
                        {
                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v498);
                          if (!this)
                          {
                            return this;
                          }

                          v211 = *(a2 + 1);
                          v74 = *(a2 + 2);
                        }

                        else
                        {
                          *v498 = v210;
                          v211 = (v133 + 1);
                          *(a2 + 1) = v211;
                        }

                        *(v3 + 684) |= 0x40000u;
                        if (v74 - v211 >= 2 && *v211 == 136 && v211[1] == 7)
                        {
                          v121 = (v211 + 2);
                          *(a2 + 1) = v121;
LABEL_449:
                          if (v121 >= v74 || (v212 = *v121, (v212 & 0x80000000) != 0))
                          {
                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v501);
                            if (!this)
                            {
                              return this;
                            }

                            v213 = *(a2 + 1);
                            v74 = *(a2 + 2);
                          }

                          else
                          {
                            *v501 = v212;
                            v213 = (v121 + 1);
                            *(a2 + 1) = v213;
                          }

                          *(v3 + 684) |= 0x80000u;
                          if (v74 - v213 >= 2 && *v213 == 144 && v213[1] == 7)
                          {
                            v75 = (v213 + 2);
                            *(a2 + 1) = v75;
LABEL_458:
                            if (v75 >= v74 || (v214 = *v75, (v214 & 0x80000000) != 0))
                            {
                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v503);
                              if (!this)
                              {
                                return this;
                              }

                              v215 = *(a2 + 1);
                              v74 = *(a2 + 2);
                            }

                            else
                            {
                              *v503 = v214;
                              v215 = (v75 + 1);
                              *(a2 + 1) = v215;
                            }

                            *(v3 + 684) |= 0x100000u;
                            if (v74 - v215 >= 2 && *v215 == 152 && v215[1] == 7)
                            {
                              v112 = (v215 + 2);
                              *(a2 + 1) = v112;
LABEL_467:
                              if (v112 >= v74 || (v216 = *v112, (v216 & 0x80000000) != 0))
                              {
                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v506);
                                if (!this)
                                {
                                  return this;
                                }

                                v217 = *(a2 + 1);
                                v74 = *(a2 + 2);
                              }

                              else
                              {
                                *v506 = v216;
                                v217 = (v112 + 1);
                                *(a2 + 1) = v217;
                              }

                              *(v3 + 684) |= 0x200000u;
                              if (v74 - v217 >= 2 && *v217 == 160 && v217[1] == 7)
                              {
                                v79 = (v217 + 2);
                                *(a2 + 1) = v79;
LABEL_476:
                                if (v79 >= v74 || (v218 = *v79, (v218 & 0x80000000) != 0))
                                {
                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v507);
                                  if (!this)
                                  {
                                    return this;
                                  }

                                  v219 = *(a2 + 1);
                                  v74 = *(a2 + 2);
                                }

                                else
                                {
                                  *v507 = v218;
                                  v219 = (v79 + 1);
                                  *(a2 + 1) = v219;
                                }

                                *(v3 + 684) |= 0x400000u;
                                if (v74 - v219 >= 2 && *v219 == 168 && v219[1] == 7)
                                {
                                  v131 = (v219 + 2);
                                  *(a2 + 1) = v131;
LABEL_485:
                                  if (v131 >= v74 || (v220 = *v131, (v220 & 0x80000000) != 0))
                                  {
                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v508);
                                    if (!this)
                                    {
                                      return this;
                                    }

                                    v221 = *(a2 + 1);
                                    v74 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *v508 = v220;
                                    v221 = (v131 + 1);
                                    *(a2 + 1) = v221;
                                  }

                                  *(v3 + 684) |= 0x800000u;
                                  if (v74 - v221 >= 2 && *v221 == 176 && v221[1] == 7)
                                  {
                                    v102 = (v221 + 2);
                                    *(a2 + 1) = v102;
LABEL_494:
                                    if (v102 >= v74 || (v222 = *v102, (v222 & 0x80000000) != 0))
                                    {
                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v512);
                                      if (!this)
                                      {
                                        return this;
                                      }

                                      v223 = *(a2 + 1);
                                      v74 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *v512 = v222;
                                      v223 = (v102 + 1);
                                      *(a2 + 1) = v223;
                                    }

                                    *(v3 + 684) |= 0x1000000u;
                                    if (v74 - v223 >= 2 && *v223 == 184 && v223[1] == 7)
                                    {
                                      v89 = (v223 + 2);
                                      *(a2 + 1) = v89;
LABEL_503:
                                      if (v89 >= v74 || (v224 = *v89, (v224 & 0x80000000) != 0))
                                      {
                                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v511);
                                        if (!this)
                                        {
                                          return this;
                                        }

                                        v225 = *(a2 + 1);
                                        v74 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *v511 = v224;
                                        v225 = (v89 + 1);
                                        *(a2 + 1) = v225;
                                      }

                                      *(v3 + 684) |= 0x2000000u;
                                      if (v74 - v225 >= 2 && *v225 == 192 && v225[1] == 7)
                                      {
                                        v134 = (v225 + 2);
                                        *(a2 + 1) = v134;
LABEL_512:
                                        if (v134 >= v74 || (v226 = *v134, (v226 & 0x80000000) != 0))
                                        {
                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v510);
                                          if (!this)
                                          {
                                            return this;
                                          }

                                          v227 = *(a2 + 1);
                                          v74 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *v510 = v226;
                                          v227 = (v134 + 1);
                                          *(a2 + 1) = v227;
                                        }

                                        *(v3 + 684) |= 0x4000000u;
                                        if (v74 - v227 >= 2 && *v227 == 200 && v227[1] == 7)
                                        {
                                          v103 = (v227 + 2);
                                          *(a2 + 1) = v103;
LABEL_521:
                                          v539[0] = 0;
                                          if (v103 >= v74 || (v228 = *v103, (v228 & 0x80000000) != 0))
                                          {
                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                            if (!this)
                                            {
                                              return this;
                                            }

                                            v228 = v539[0];
                                            v229 = *(a2 + 1);
                                            v74 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v229 = (v103 + 1);
                                            *(a2 + 1) = v229;
                                          }

                                          *(v3 + 621) = v228 != 0;
                                          *(v3 + 684) |= 0x8000000u;
                                          if (v74 - v229 >= 2 && *v229 == 208 && v229[1] == 7)
                                          {
                                            v135 = (v229 + 2);
                                            *(a2 + 1) = v135;
LABEL_530:
                                            v539[0] = 0;
                                            if (v135 >= v74 || (v230 = *v135, (v230 & 0x80000000) != 0))
                                            {
                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                              if (!this)
                                              {
                                                return this;
                                              }

                                              v230 = v539[0];
                                              v231 = *(a2 + 1);
                                              v74 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v231 = (v135 + 1);
                                              *(a2 + 1) = v231;
                                            }

                                            *(v3 + 622) = v230 != 0;
                                            *(v3 + 684) |= 0x10000000u;
                                            if (v74 - v231 >= 2 && *v231 == 216 && v231[1] == 7)
                                            {
                                              v115 = (v231 + 2);
                                              *(a2 + 1) = v115;
LABEL_539:
                                              v539[0] = 0;
                                              if (v115 >= v74 || (v232 = *v115, (v232 & 0x80000000) != 0))
                                              {
                                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                if (!this)
                                                {
                                                  return this;
                                                }

                                                v232 = v539[0];
                                                v233 = *(a2 + 1);
                                                v74 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                v233 = (v115 + 1);
                                                *(a2 + 1) = v233;
                                              }

                                              *(v3 + 623) = v232 != 0;
                                              *(v3 + 684) |= 0x20000000u;
                                              if (v74 - v233 >= 2 && *v233 == 224 && v233[1] == 7)
                                              {
                                                v132 = (v233 + 2);
                                                *(a2 + 1) = v132;
LABEL_548:
                                                v539[0] = 0;
                                                if (v132 >= v74 || (v234 = *v132, (v234 & 0x80000000) != 0))
                                                {
                                                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                  if (!this)
                                                  {
                                                    return this;
                                                  }

                                                  v234 = v539[0];
                                                  v235 = *(a2 + 1);
                                                  v74 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  v235 = (v132 + 1);
                                                  *(a2 + 1) = v235;
                                                }

                                                *(v3 + 644) = v234 != 0;
                                                *(v3 + 684) |= 0x40000000u;
                                                if (v74 - v235 >= 2 && *v235 == 232 && v235[1] == 7)
                                                {
                                                  v128 = (v235 + 2);
                                                  *(a2 + 1) = v128;
LABEL_557:
                                                  v539[0] = 0;
                                                  if (v128 >= v74 || (v236 = *v128, (v236 & 0x80000000) != 0))
                                                  {
                                                    this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                    if (!this)
                                                    {
                                                      return this;
                                                    }

                                                    v236 = v539[0];
                                                  }

                                                  else
                                                  {
                                                    *(a2 + 1) = v128 + 1;
                                                  }

                                                  if (v236 - 1 <= 8)
                                                  {
                                                    *(v3 + 684) |= 0x80000000;
                                                    *(v3 + 636) = v236;
                                                  }

                                                  v237 = *(a2 + 1);
                                                  v93 = *(a2 + 2);
                                                  if (v93 - v237 >= 2 && *v237 == 240 && v237[1] == 7)
                                                  {
                                                    v94 = (v237 + 2);
                                                    *(a2 + 1) = v94;
LABEL_568:
                                                    v539[0] = 0;
                                                    if (v94 >= v93 || (v238 = *v94, (v238 & 0x80000000) != 0))
                                                    {
                                                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                      if (!this)
                                                      {
                                                        return this;
                                                      }

                                                      v238 = v539[0];
                                                      v239 = *(a2 + 1);
                                                      v93 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      v239 = (v94 + 1);
                                                      *(a2 + 1) = v239;
                                                    }

                                                    *(v3 + 645) = v238 != 0;
                                                    *(v3 + 688) |= 1u;
                                                    if (v93 - v239 >= 2 && *v239 == 250 && v239[1] == 7)
                                                    {
                                                      *(a2 + 1) = v239 + 2;
LABEL_577:
                                                      *(v3 + 672) |= 0x20000u;
                                                      if (*(v3 + 80) == MEMORY[0x1E69E5958])
                                                      {
                                                        operator new();
                                                      }

                                                      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                      if (!this)
                                                      {
                                                        return this;
                                                      }

                                                      v240 = *(a2 + 1);
                                                      v48 = *(a2 + 2);
                                                      if (v48 - v240 >= 2 && *v240 == 128 && v240[1] == 8)
                                                      {
                                                        v111 = (v240 + 2);
                                                        *(a2 + 1) = v111;
LABEL_584:
                                                        if (v111 >= v48 || (v241 = *v111, (v241 & 0x80000000) != 0))
                                                        {
                                                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v497);
                                                          if (!this)
                                                          {
                                                            return this;
                                                          }

                                                          v242 = *(a2 + 1);
                                                          v48 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *v497 = v241;
                                                          v242 = (v111 + 1);
                                                          *(a2 + 1) = v242;
                                                        }

                                                        *(v3 + 688) |= 2u;
                                                        if (v48 - v242 >= 2 && *v242 == 136 && v242[1] == 8)
                                                        {
                                                          v116 = (v242 + 2);
                                                          *(a2 + 1) = v116;
LABEL_593:
                                                          v539[0] = 0;
                                                          if (v116 >= v48 || (v243 = *v116, (v243 & 0x80000000) != 0))
                                                          {
                                                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                            if (!this)
                                                            {
                                                              return this;
                                                            }

                                                            v243 = v539[0];
                                                            v244 = *(a2 + 1);
                                                            v48 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            v244 = (v116 + 1);
                                                            *(a2 + 1) = v244;
                                                          }

                                                          *(v3 + 238) = v243 != 0;
                                                          *(v3 + 676) |= 0x800000u;
                                                          if (v48 - v244 >= 2 && *v244 == 144 && v244[1] == 8)
                                                          {
                                                            v117 = (v244 + 2);
                                                            *(a2 + 1) = v117;
LABEL_602:
                                                            v539[0] = 0;
                                                            if (v117 >= v48 || (v245 = *v117, (v245 & 0x80000000) != 0))
                                                            {
                                                              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v539);
                                                              if (!this)
                                                              {
                                                                return this;
                                                              }

                                                              v245 = v539[0];
                                                              v246 = *(a2 + 1);
                                                              v48 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              v246 = (v117 + 1);
                                                              *(a2 + 1) = v246;
                                                            }

                                                            *(v3 + 239) = v245 != 0;
                                                            *(v3 + 676) |= 0x1000000u;
                                                            if (v48 - v246 >= 2 && *v246 == 240 && v246[1] == 34)
                                                            {
                                                              v49 = (v246 + 2);
                                                              *(a2 + 1) = v49;
                                                              goto LABEL_611;
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
                    }
                  }
                }
              }
            }
          }

          goto LABEL_2;
        }

        if (v466 != 200)
        {
          goto LABEL_2;
        }
      }

      goto LABEL_2;
    }

    if (v453 != 194)
    {
      goto LABEL_2;
    }
  }
}

uint64_t awd::metrics::ATM_CallEndEvent::set_status_code(uint64_t a1, awd::metrics *this)
{
  v2 = this;
  result = awd::metrics::RESPONSE_Code_IsValid(this);
  if ((result & 1) == 0)
  {
    __assert_rtn("set_status_code", "CATM.pb.h", 14141, "::awd::metrics::RESPONSE_Code_IsValid(value)");
  }

  *(a1 + 676) |= 0x20u;
  *(a1 + 192) = v2;
  return result;
}

uint64_t awd::metrics::ATM_CallEndEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 672);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 672);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_161;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v27 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_162;
  }

LABEL_161:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_163;
  }

LABEL_162:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_164;
  }

LABEL_163:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_165;
  }

LABEL_164:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 30), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_166;
  }

LABEL_165:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 31), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_167;
  }

LABEL_166:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 100), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_168;
  }

LABEL_167:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 40), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_169;
  }

LABEL_168:
  v28 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_170;
  }

LABEL_169:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_171;
  }

LABEL_170:
  v29 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_172;
  }

LABEL_171:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 101), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_173;
  }

LABEL_172:
  v30 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_174;
  }

LABEL_173:
  v31 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_175;
  }

LABEL_174:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 96), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_176;
  }

LABEL_175:
  v32 = *(v5 + 72);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x40000) == 0)
  {
LABEL_19:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_177;
  }

LABEL_176:
  v33 = *(v5 + 88);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x80000) == 0)
  {
LABEL_20:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_178;
  }

LABEL_177:
  v34 = *(v5 + 104);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x100000) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_179;
  }

LABEL_178:
  v35 = *(v5 + 112);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_180;
  }

LABEL_179:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 102), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_181;
  }

LABEL_180:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 132), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_24:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_182;
  }

LABEL_181:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 144), a2, a4);
  v6 = *(v5 + 672);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_183;
  }

LABEL_182:
  v36 = *(v5 + 136);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_184;
  }

LABEL_183:
  v37 = *(v5 + 152);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_185:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 148), a2, a4);
    if ((*(v5 + 672) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_186;
  }

LABEL_184:
  v38 = *(v5 + 160);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 672);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_185;
  }

LABEL_28:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_186:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 168), a2, a4);
LABEL_29:
  v7 = *(v5 + 676);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 103), a2, a4);
    v7 = *(v5 + 676);
    if ((v7 & 2) == 0)
    {
LABEL_31:
      if ((v7 & 4) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_189;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_31;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 172), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 4) == 0)
  {
LABEL_32:
    if ((v7 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_190;
  }

LABEL_189:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 176), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 8) == 0)
  {
LABEL_33:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_191;
  }

LABEL_190:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x20, *(v5 + 184), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x10) == 0)
  {
LABEL_34:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_192;
  }

LABEL_191:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x21, *(v5 + 180), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x20) == 0)
  {
LABEL_35:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_193;
  }

LABEL_192:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x22, *(v5 + 192), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x40) == 0)
  {
LABEL_36:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_194;
  }

LABEL_193:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x23, *(v5 + 236), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x1000) == 0)
  {
LABEL_37:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_195;
  }

LABEL_194:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x24, *(v5 + 216), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x2000) == 0)
  {
LABEL_38:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_196;
  }

LABEL_195:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 224), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x10000) == 0)
  {
LABEL_39:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_197;
  }

LABEL_196:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 240), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x20000) == 0)
  {
LABEL_40:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_198;
  }

LABEL_197:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 244), a2, a4);
  v7 = *(v5 + 676);
  if ((v7 & 0x100000) == 0)
  {
LABEL_41:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_198:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 288), a2, a4);
  if ((*(v5 + 676) & 0x200000) != 0)
  {
LABEL_42:
    v8 = *(v5 + 256);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_43:
  if (*(v5 + 272) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v5 + 264) + 8 * v9);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v9;
    }

    while (v9 < *(v5 + 272));
  }

  v11 = *(v5 + 676);
  if ((v11 & 0x4000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 228), a2, a4);
    v11 = *(v5 + 676);
    if ((v11 & 0x80) == 0)
    {
LABEL_48:
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_202;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_48;
  }

  v39 = *(v5 + 200);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v11 = *(v5 + 676);
  if ((v11 & 0x100) == 0)
  {
LABEL_49:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_203;
  }

LABEL_202:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2D, *(v5 + 237), a2, a4);
  v11 = *(v5 + 676);
  if ((v11 & 0x200) == 0)
  {
LABEL_50:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_204;
  }

LABEL_203:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x2E, *(v5 + 196), a2, a4);
  v11 = *(v5 + 676);
  if ((v11 & 0x400) == 0)
  {
LABEL_51:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_205;
  }

LABEL_204:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(v5 + 208), a2, a4);
  v11 = *(v5 + 676);
  if ((v11 & 0x800) == 0)
  {
LABEL_52:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_206;
  }

LABEL_205:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x30, *(v5 + 212), a2, a4);
  v11 = *(v5 + 676);
  if ((v11 & 0x8000) == 0)
  {
LABEL_53:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_207;
  }

LABEL_206:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x31, *(v5 + 232), a2, a4);
  v11 = *(v5 + 676);
  if ((v11 & 0x40000) == 0)
  {
LABEL_54:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_207:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 248), a2, a4);
  if ((*(v5 + 676) & 0x80000) != 0)
  {
LABEL_55:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(v5 + 252), a2, a4);
  }

LABEL_56:
  v12 = *(v5 + 672);
  if ((v12 & 0x200000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 120), a2, a4);
    v12 = *(v5 + 672);
    if ((v12 & 0x400000) == 0)
    {
LABEL_58:
      if ((v12 & 0x800000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else if ((v12 & 0x400000) == 0)
  {
    goto LABEL_58;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, *(v5 + 124), a2, a4);
  if ((*(v5 + 672) & 0x800000) != 0)
  {
LABEL_59:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 128), a2, a4);
  }

LABEL_60:
  v13 = *(v5 + 676);
  if ((v13 & 0x2000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x37, *(v5 + 396), a2, a4);
    v13 = *(v5 + 676);
    if ((v13 & 0x4000000) == 0)
    {
LABEL_62:
      if ((v13 & 0x8000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_214;
    }
  }

  else if ((v13 & 0x4000000) == 0)
  {
    goto LABEL_62;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x38, *(v5 + 292), a2, a4);
  v13 = *(v5 + 676);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_63:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_215;
  }

LABEL_214:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x39, *(v5 + 296), a2, a4);
  v13 = *(v5 + 676);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_64:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_216;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3A, *(v5 + 300), a2, a4);
  v13 = *(v5 + 676);
  if ((v13 & 0x20000000) == 0)
  {
LABEL_65:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_217:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3C, *(v5 + 308), a2, a4);
    if ((*(v5 + 676) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_218;
  }

LABEL_216:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3B, *(v5 + 304), a2, a4);
  v13 = *(v5 + 676);
  if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_217;
  }

LABEL_66:
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_218:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 312), a2, a4);
LABEL_67:
  v14 = *(v5 + 680);
  if (v14)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E, *(v5 + 316), a2, a4);
    v14 = *(v5 + 680);
    if ((v14 & 2) == 0)
    {
LABEL_69:
      if ((v14 & 4) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_221;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_69;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F, *(v5 + 320), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 4) == 0)
  {
LABEL_70:
    if ((v14 & 8) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_222;
  }

LABEL_221:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x40, *(v5 + 324), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 8) == 0)
  {
LABEL_71:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_223;
  }

LABEL_222:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x41, *(v5 + 328), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x10) == 0)
  {
LABEL_72:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_224;
  }

LABEL_223:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 332), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x20) == 0)
  {
LABEL_73:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_225;
  }

LABEL_224:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 336), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x40) == 0)
  {
LABEL_74:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_226;
  }

LABEL_225:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x44, *(v5 + 340), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x80) == 0)
  {
LABEL_75:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_227;
  }

LABEL_226:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x45, *(v5 + 344), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x100) == 0)
  {
LABEL_76:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_228;
  }

LABEL_227:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(v5 + 348), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x200) == 0)
  {
LABEL_77:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_229;
  }

LABEL_228:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x47, *(v5 + 352), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x400) == 0)
  {
LABEL_78:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_230;
  }

LABEL_229:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 356), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x800) == 0)
  {
LABEL_79:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_231;
  }

LABEL_230:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(v5 + 360), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x1000) == 0)
  {
LABEL_80:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_232;
  }

LABEL_231:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(v5 + 364), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x2000) == 0)
  {
LABEL_81:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_233;
  }

LABEL_232:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 368), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x4000) == 0)
  {
LABEL_82:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_234;
  }

LABEL_233:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4C, *(v5 + 372), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x8000) == 0)
  {
LABEL_83:
    if ((v14 & 0x10000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_235;
  }

LABEL_234:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4D, *(v5 + 376), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x10000) == 0)
  {
LABEL_84:
    if ((v14 & 0x20000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_236;
  }

LABEL_235:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4E, *(v5 + 380), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x20000) == 0)
  {
LABEL_85:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_237;
  }

LABEL_236:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4F, *(v5 + 384), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x40000) == 0)
  {
LABEL_86:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_238;
  }

LABEL_237:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x50, *(v5 + 388), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x80000) == 0)
  {
LABEL_87:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_239;
  }

LABEL_238:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x51, *(v5 + 392), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x100000) == 0)
  {
LABEL_88:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_240;
  }

LABEL_239:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x52, *(v5 + 400), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x200000) == 0)
  {
LABEL_89:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_241;
  }

LABEL_240:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x53, *(v5 + 397), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x400000) == 0)
  {
LABEL_90:
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_242;
  }

LABEL_241:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x54, *(v5 + 404), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x800000) == 0)
  {
LABEL_91:
    if ((v14 & 0x1000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_243;
  }

LABEL_242:
  v40 = *(v5 + 408);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v14 = *(v5 + 680);
  if ((v14 & 0x1000000) == 0)
  {
LABEL_92:
    if ((v14 & 0x2000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_244;
  }

LABEL_243:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x56, *(v5 + 416), a2, a4);
  v14 = *(v5 + 680);
  if ((v14 & 0x2000000) == 0)
  {
LABEL_93:
    if ((v14 & 0x4000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_244:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x57, *(v5 + 420), a2, a4);
  if ((*(v5 + 680) & 0x4000000) != 0)
  {
LABEL_94:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x58, *(v5 + 398), a2, a4);
  }

LABEL_95:
  if (*(v5 + 432) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(v5 + 424) + 8 * v15);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v15;
    }

    while (v15 < *(v5 + 432));
  }

  v17 = *(v5 + 680);
  if ((v17 & 0x10000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5A, *(v5 + 456), a2, a4);
    v17 = *(v5 + 680);
    if ((v17 & 0x20000000) == 0)
    {
LABEL_100:
      if ((v17 & 0x40000000) == 0)
      {
        goto LABEL_101;
      }

LABEL_248:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x5C, *(v5 + 464), a2, a4);
      if ((*(v5 + 680) & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_249;
    }
  }

  else if ((v17 & 0x20000000) == 0)
  {
    goto LABEL_100;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x5B, *(v5 + 448), a2, a4);
  v17 = *(v5 + 680);
  if ((v17 & 0x40000000) != 0)
  {
    goto LABEL_248;
  }

LABEL_101:
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_249:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5D, *(v5 + 460), a2, a4);
LABEL_102:
  v18 = *(v5 + 684);
  if (v18)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5E, *(v5 + 480), a2, a4);
    v18 = *(v5 + 684);
    if ((v18 & 2) == 0)
    {
LABEL_104:
      if ((v18 & 4) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_252;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_104;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x5F, *(v5 + 472), a2, a4);
  v18 = *(v5 + 684);
  if ((v18 & 4) == 0)
  {
LABEL_105:
    if ((v18 & 8) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_253;
  }

LABEL_252:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x60, *(v5 + 488), a2, a4);
  v18 = *(v5 + 684);
  if ((v18 & 8) == 0)
  {
LABEL_106:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_254;
  }

LABEL_253:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x61, *(v5 + 484), a2, a4);
  v18 = *(v5 + 684);
  if ((v18 & 0x10) == 0)
  {
LABEL_107:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_255;
  }

LABEL_254:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x62, *(v5 + 496), a2, a4);
  v18 = *(v5 + 684);
  if ((v18 & 0x20) == 0)
  {
LABEL_108:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_256;
  }

LABEL_255:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x63, *(v5 + 500), a2, a4);
  v18 = *(v5 + 684);
  if ((v18 & 0x40) == 0)
  {
LABEL_109:
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_257;
  }

LABEL_256:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x64, *(v5 + 399), a2, a4);
  v18 = *(v5 + 684);
  if ((v18 & 0x80) == 0)
  {
LABEL_110:
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_258;
  }

LABEL_257:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x65, *(v5 + 504), a2, a4);
  v18 = *(v5 + 684);
  if ((v18 & 0x100) == 0)
  {
LABEL_111:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_258:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x66, *(v5 + 508), a2, a4);
  if ((*(v5 + 684) & 0x200) != 0)
  {
LABEL_112:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x67, *(v5 + 620), a2, a4);
  }

LABEL_113:
  if (*(v5 + 520) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x68, *(*(v5 + 512) + 8 * v19++), a2, a4);
    }

    while (v19 < *(v5 + 520));
  }

  if (*(v5 + 544) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x69, *(*(v5 + 536) + v20++), a2, a4);
    }

    while (v20 < *(v5 + 544));
  }

  v21 = *(v5 + 684);
  if ((v21 & 0x1000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6A, *(v5 + 552), a2, a4);
    v21 = *(v5 + 684);
    if ((v21 & 0x2000) == 0)
    {
LABEL_121:
      if ((v21 & 0x4000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_122;
    }
  }

  else if ((v21 & 0x2000) == 0)
  {
    goto LABEL_121;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6B, *(v5 + 556), a2, a4);
  if ((*(v5 + 684) & 0x4000) != 0)
  {
LABEL_122:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6C, *(v5 + 584), a2, a4);
  }

LABEL_123:
  if (*(v5 + 568) >= 1)
  {
    v22 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x6D, *(*(v5 + 560) + 8 * v22++), a2, a4);
    }

    while (v22 < *(v5 + 568));
  }

  v23 = *(v5 + 684);
  if ((v23 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6E, *(v5 + 588), a2, a4);
    v23 = *(v5 + 684);
    if ((v23 & 0x20000) == 0)
    {
LABEL_128:
      if ((v23 & 0x40000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_265;
    }
  }

  else if ((v23 & 0x20000) == 0)
  {
    goto LABEL_128;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6F, *(v5 + 592), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x40000) == 0)
  {
LABEL_129:
    if ((v23 & 0x80000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_266;
  }

LABEL_265:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x70, *(v5 + 596), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x80000) == 0)
  {
LABEL_130:
    if ((v23 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_267;
  }

LABEL_266:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x71, *(v5 + 600), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x100000) == 0)
  {
LABEL_131:
    if ((v23 & 0x200000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_268;
  }

LABEL_267:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x72, *(v5 + 604), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x200000) == 0)
  {
LABEL_132:
    if ((v23 & 0x400000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_269;
  }

LABEL_268:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x73, *(v5 + 608), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x400000) == 0)
  {
LABEL_133:
    if ((v23 & 0x800000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_270;
  }

LABEL_269:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x74, *(v5 + 612), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x800000) == 0)
  {
LABEL_134:
    if ((v23 & 0x1000000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_271;
  }

LABEL_270:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x75, *(v5 + 616), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x1000000) == 0)
  {
LABEL_135:
    if ((v23 & 0x2000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_272;
  }

LABEL_271:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x76, *(v5 + 624), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x2000000) == 0)
  {
LABEL_136:
    if ((v23 & 0x4000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_273;
  }

LABEL_272:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x77, *(v5 + 628), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x4000000) == 0)
  {
LABEL_137:
    if ((v23 & 0x8000000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_274;
  }

LABEL_273:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x78, *(v5 + 632), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x8000000) == 0)
  {
LABEL_138:
    if ((v23 & 0x10000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_275;
  }

LABEL_274:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x79, *(v5 + 621), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x10000000) == 0)
  {
LABEL_139:
    if ((v23 & 0x20000000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_276;
  }

LABEL_275:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x7A, *(v5 + 622), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x20000000) == 0)
  {
LABEL_140:
    if ((v23 & 0x40000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_277:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x7C, *(v5 + 644), a2, a4);
    if ((*(v5 + 684) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_278;
  }

LABEL_276:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x7B, *(v5 + 623), a2, a4);
  v23 = *(v5 + 684);
  if ((v23 & 0x40000000) != 0)
  {
    goto LABEL_277;
  }

LABEL_141:
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_142;
  }

LABEL_278:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x7D, *(v5 + 636), a2, a4);
LABEL_142:
  if (*(v5 + 688))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x7E, *(v5 + 645), a2, a4);
  }

  if ((*(v5 + 674) & 2) != 0)
  {
    v24 = *(v5 + 80);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if ((*(v5 + 688) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x80, *(v5 + 640), a2, a4);
  }

  v25 = *(v5 + 676);
  if ((v25 & 0x800000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x81, *(v5 + 238), a2, a4);
    v25 = *(v5 + 676);
  }

  if ((v25 & 0x1000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x82, *(v5 + 239), a2, a4);
  }

  v26 = *(v5 + 688);
  if ((v26 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 656), a2, a4);
    v26 = *(v5 + 688);
    if ((v26 & 8) == 0)
    {
LABEL_154:
      if ((v26 & 0x10) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_281;
    }
  }

  else if ((v26 & 8) == 0)
  {
    goto LABEL_154;
  }

  v41 = *(v5 + 648);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v26 = *(v5 + 688);
  if ((v26 & 0x10) == 0)
  {
LABEL_155:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_282;
  }

LABEL_281:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x230, *(v5 + 646), a2, a4);
  v26 = *(v5 + 688);
  if ((v26 & 0x20) == 0)
  {
LABEL_156:
    if ((v26 & 0x40) == 0)
    {
      goto LABEL_157;
    }

LABEL_283:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x25A, *(v5 + 647), a2, a4);
    if ((*(v5 + 688) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_284;
  }

LABEL_282:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x259, *(v5 + 660), a2, a4);
  v26 = *(v5 + 688);
  if ((v26 & 0x40) != 0)
  {
    goto LABEL_283;
  }

LABEL_157:
  if ((v26 & 0x80) == 0)
  {
    return this;
  }

LABEL_284:
  v42 = *(v5 + 664);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x25B, v42, a2, a4);
}

uint64_t awd::metrics::ATM_CallEndEvent::ByteSize(awd::metrics::ATM_CallEndEvent *this)
{
  v2 = *(this + 168);
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
      v2 = *(this + 168);
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
  v2 = *(this + 168);
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
      v2 = *(this + 168);
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
    v15 = *(this + 10);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 168);
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
      v23 = *(this + 11);
      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
        v2 = *(this + 168);
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

  v17 = *(this + 4);
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
    v2 = *(this + 168);
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
    v2 = *(this + 168);
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
      v2 = *(this + 168);
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
    v2 = *(this + 168);
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
    v43 = *(this + 24);
    if (v43 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
      v2 = *(this + 168);
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
    goto LABEL_151;
  }

  if ((v2 & 0x10000) != 0)
  {
    v45 = *(this + 9);
    v46 = *(v45 + 23);
    v47 = v46;
    v48 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v49 = *(v45 + 23);
    }

    else
    {
      v49 = v48;
    }

    if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
      v46 = *(v45 + 23);
      v48 = *(v45 + 8);
      v2 = *(this + 168);
      v47 = *(v45 + 23);
    }

    else
    {
      v50 = 1;
    }

    if (v47 < 0)
    {
      v46 = v48;
    }

    v4 += v50 + v46 + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_87:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_112;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  v51 = *(this + 10);
  v52 = *(v51 + 23);
  v53 = v52;
  v54 = *(v51 + 8);
  if ((v52 & 0x80u) == 0)
  {
    v55 = *(v51 + 23);
  }

  else
  {
    v55 = v54;
  }

  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55);
    v52 = *(v51 + 23);
    v54 = *(v51 + 8);
    v2 = *(this + 168);
    v53 = *(v51 + 23);
  }

  else
  {
    v56 = 1;
  }

  if (v53 < 0)
  {
    v52 = v54;
  }

  v4 += v56 + v52 + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_88:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_121;
  }

LABEL_112:
  v57 = *(this + 11);
  v58 = *(v57 + 23);
  v59 = v58;
  v60 = *(v57 + 8);
  if ((v58 & 0x80u) == 0)
  {
    v61 = *(v57 + 23);
  }

  else
  {
    v61 = v60;
  }

  if (v61 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
    v58 = *(v57 + 23);
    v60 = *(v57 + 8);
    v2 = *(this + 168);
    v59 = *(v57 + 23);
  }

  else
  {
    v62 = 1;
  }

  if (v59 < 0)
  {
    v58 = v60;
  }

  v4 += v62 + v58 + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_89:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_130;
  }

LABEL_121:
  v63 = *(this + 13);
  v64 = *(v63 + 23);
  v65 = v64;
  v66 = *(v63 + 8);
  if ((v64 & 0x80u) == 0)
  {
    v67 = *(v63 + 23);
  }

  else
  {
    v67 = v66;
  }

  if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67);
    v64 = *(v63 + 23);
    v66 = *(v63 + 8);
    v2 = *(this + 168);
    v65 = *(v63 + 23);
  }

  else
  {
    v68 = 1;
  }

  if (v65 < 0)
  {
    v64 = v66;
  }

  v4 += v68 + v64 + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_90:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_139;
  }

LABEL_130:
  v69 = *(this + 14);
  v70 = *(v69 + 23);
  v71 = v70;
  v72 = *(v69 + 8);
  if ((v70 & 0x80u) == 0)
  {
    v73 = *(v69 + 23);
  }

  else
  {
    v73 = v72;
  }

  if (v73 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73);
    v70 = *(v69 + 23);
    v72 = *(v69 + 8);
    v2 = *(this + 168);
    v71 = *(v69 + 23);
  }

  else
  {
    v74 = 1;
  }

  if (v71 < 0)
  {
    v70 = v72;
  }

  v4 += v74 + v70 + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_91:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_143;
  }

LABEL_139:
  v75 = *(this + 30);
  if (v75 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 2;
    v2 = *(this + 168);
  }

  else
  {
    v76 = 3;
  }

  v4 += v76;
  if ((v2 & 0x400000) == 0)
  {
LABEL_92:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_147;
  }

LABEL_143:
  v77 = *(this + 31);
  if (v77 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77) + 2;
    v2 = *(this + 168);
  }

  else
  {
    v78 = 3;
  }

  v4 += v78;
  if ((v2 & 0x800000) != 0)
  {
LABEL_147:
    v79 = *(this + 32);
    if (v79 >= 0x80)
    {
      v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
      v2 = *(this + 168);
    }

    else
    {
      v80 = 3;
    }

    v4 += v80;
  }

LABEL_151:
  if (!HIBYTE(v2))
  {
    goto LABEL_205;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v4 += 3;
  }

  if ((v2 & 0x2000000) != 0)
  {
    v81 = *(this + 33);
    if (v81 >= 0x80)
    {
      v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81) + 2;
      v2 = *(this + 168);
    }

    else
    {
      v82 = 3;
    }

    v4 += v82;
    if ((v2 & 0x4000000) == 0)
    {
LABEL_156:
      if ((v2 & 0x8000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_170;
    }
  }

  else if ((v2 & 0x4000000) == 0)
  {
    goto LABEL_156;
  }

  v83 = *(this + 36);
  if (v83 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
    v2 = *(this + 168);
  }

  else
  {
    v84 = 3;
  }

  v4 += v84;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_157:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_179;
  }

LABEL_170:
  v85 = *(this + 17);
  v86 = *(v85 + 23);
  v87 = v86;
  v88 = *(v85 + 8);
  if ((v86 & 0x80u) == 0)
  {
    v89 = *(v85 + 23);
  }

  else
  {
    v89 = v88;
  }

  if (v89 >= 0x80)
  {
    v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89);
    v86 = *(v85 + 23);
    v88 = *(v85 + 8);
    v2 = *(this + 168);
    v87 = *(v85 + 23);
  }

  else
  {
    v90 = 1;
  }

  if (v87 < 0)
  {
    v86 = v88;
  }

  v4 += v90 + v86 + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_158:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_188;
  }

LABEL_179:
  v91 = *(this + 19);
  v92 = *(v91 + 23);
  v93 = v92;
  v94 = *(v91 + 8);
  if ((v92 & 0x80u) == 0)
  {
    v95 = *(v91 + 23);
  }

  else
  {
    v95 = v94;
  }

  if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95);
    v92 = *(v91 + 23);
    v94 = *(v91 + 8);
    v2 = *(this + 168);
    v93 = *(v91 + 23);
  }

  else
  {
    v96 = 1;
  }

  if (v93 < 0)
  {
    v92 = v94;
  }

  v4 += v96 + v92 + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_159:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_197;
  }

LABEL_188:
  v97 = *(this + 20);
  v98 = *(v97 + 23);
  v99 = v98;
  v100 = *(v97 + 8);
  if ((v98 & 0x80u) == 0)
  {
    v101 = *(v97 + 23);
  }

  else
  {
    v101 = v100;
  }

  if (v101 >= 0x80)
  {
    v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101);
    v98 = *(v97 + 23);
    v100 = *(v97 + 8);
    v2 = *(this + 168);
    v99 = *(v97 + 23);
  }

  else
  {
    v102 = 1;
  }

  if (v99 < 0)
  {
    v98 = v100;
  }

  v4 += v102 + v98 + 2;
  if ((v2 & 0x40000000) == 0)
  {
LABEL_160:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_201;
  }

LABEL_197:
  v103 = *(this + 37);
  if (v103 >= 0x80)
  {
    v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v103) + 2;
    v2 = *(this + 168);
  }

  else
  {
    v104 = 3;
  }

  v4 += v104;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_201:
    v105 = *(this + 42);
    if (v105 >= 0x80)
    {
      v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105) + 2;
    }

    else
    {
      v106 = 3;
    }

    v4 += v106;
  }

LABEL_205:
  v107 = *(this + 169);
  if (!v107)
  {
    goto LABEL_247;
  }

  if (v107)
  {
    v4 += 3;
  }

  if ((v107 & 2) != 0)
  {
    v108 = *(this + 43);
    if (v108 >= 0x80)
    {
      v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108) + 2;
      v107 = *(this + 169);
    }

    else
    {
      v109 = 3;
    }

    v4 += v109;
    if ((v107 & 4) == 0)
    {
LABEL_210:
      if ((v107 & 8) == 0)
      {
        goto LABEL_211;
      }

      goto LABEL_222;
    }
  }

  else if ((v107 & 4) == 0)
  {
    goto LABEL_210;
  }

  v110 = *(this + 44);
  if (v110 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v111 = 3;
  }

  v4 += v111;
  if ((v107 & 8) == 0)
  {
LABEL_211:
    if ((v107 & 0x10) == 0)
    {
      goto LABEL_212;
    }

LABEL_223:
    v112 = *(this + 45);
    if ((v112 & 0x80000000) != 0)
    {
      v113 = 12;
    }

    else if (v112 >= 0x80)
    {
      v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112) + 2;
      v107 = *(this + 169);
    }

    else
    {
      v113 = 3;
    }

    v4 += v113;
    if ((v107 & 0x20) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_229;
  }

LABEL_222:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 23)) + 2;
  v107 = *(this + 169);
  if ((v107 & 0x10) != 0)
  {
    goto LABEL_223;
  }

LABEL_212:
  if ((v107 & 0x20) != 0)
  {
LABEL_229:
    v114 = *(this + 48);
    if ((v114 & 0x80000000) != 0)
    {
      v115 = 12;
    }

    else if (v114 >= 0x80)
    {
      v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114) + 2;
      v107 = *(this + 169);
    }

    else
    {
      v115 = 3;
    }

    v4 += v115;
  }

LABEL_235:
  if ((v107 & 0x40) != 0)
  {
    v4 += 3;
  }

  if ((v107 & 0x80) != 0)
  {
    v116 = *(this + 25);
    v117 = *(v116 + 23);
    v118 = v117;
    v119 = *(v116 + 8);
    if ((v117 & 0x80u) == 0)
    {
      v120 = *(v116 + 23);
    }

    else
    {
      v120 = v119;
    }

    if (v120 >= 0x80)
    {
      v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120);
      v117 = *(v116 + 23);
      v119 = *(v116 + 8);
      v107 = *(this + 169);
      v118 = *(v116 + 23);
    }

    else
    {
      v121 = 1;
    }

    if (v118 < 0)
    {
      v117 = v119;
    }

    v4 += v121 + v117 + 2;
  }

LABEL_247:
  if ((v107 & 0xFF00) == 0)
  {
    goto LABEL_287;
  }

  if ((v107 & 0x100) != 0)
  {
    v4 += 3;
  }

  if ((v107 & 0x200) != 0)
  {
    v122 = *(this + 49);
    if ((v122 & 0x80000000) != 0)
    {
      v123 = 12;
    }

    else if (v122 >= 0x80)
    {
      v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122) + 2;
      v107 = *(this + 169);
    }

    else
    {
      v123 = 3;
    }

    v4 += v123;
    if ((v107 & 0x400) == 0)
    {
LABEL_252:
      if ((v107 & 0x800) == 0)
      {
        goto LABEL_253;
      }

      goto LABEL_268;
    }
  }

  else if ((v107 & 0x400) == 0)
  {
    goto LABEL_252;
  }

  v124 = *(this + 52);
  if (v124 >= 0x80)
  {
    v125 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v125 = 3;
  }

  v4 += v125;
  if ((v107 & 0x800) == 0)
  {
LABEL_253:
    if ((v107 & 0x1000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_274;
  }

LABEL_268:
  v126 = *(this + 53);
  if ((v126 & 0x80000000) != 0)
  {
    v127 = 12;
  }

  else if (v126 >= 0x80)
  {
    v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v127 = 3;
  }

  v4 += v127;
  if ((v107 & 0x1000) == 0)
  {
LABEL_254:
    if ((v107 & 0x2000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_275;
  }

LABEL_274:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 27)) + 2;
  v107 = *(this + 169);
  if ((v107 & 0x2000) == 0)
  {
LABEL_255:
    if ((v107 & 0x4000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_279;
  }

LABEL_275:
  v128 = *(this + 56);
  if (v128 >= 0x80)
  {
    v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v129 = 3;
  }

  v4 += v129;
  if ((v107 & 0x4000) == 0)
  {
LABEL_256:
    if ((v107 & 0x8000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_283;
  }

LABEL_279:
  v130 = *(this + 57);
  if (v130 >= 0x80)
  {
    v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v131 = 3;
  }

  v4 += v131;
  if ((v107 & 0x8000) != 0)
  {
LABEL_283:
    v132 = ((2 * *(this + 58)) ^ (*(this + 58) >> 31));
    if (v132 >= 0x80)
    {
      v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132) + 2;
      v107 = *(this + 169);
    }

    else
    {
      v133 = 3;
    }

    v4 += v133;
  }

LABEL_287:
  if ((v107 & 0xFF0000) == 0)
  {
    goto LABEL_326;
  }

  if ((v107 & 0x10000) != 0)
  {
    v134 = *(this + 60);
    if (v134 >= 0x80)
    {
      v135 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v134) + 2;
      v107 = *(this + 169);
    }

    else
    {
      v135 = 3;
    }

    v4 += v135;
    if ((v107 & 0x20000) == 0)
    {
LABEL_290:
      if ((v107 & 0x40000) == 0)
      {
        goto LABEL_291;
      }

      goto LABEL_303;
    }
  }

  else if ((v107 & 0x20000) == 0)
  {
    goto LABEL_290;
  }

  v136 = *(this + 61);
  if (v136 >= 0x80)
  {
    v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v137 = 3;
  }

  v4 += v137;
  if ((v107 & 0x40000) == 0)
  {
LABEL_291:
    if ((v107 & 0x80000) == 0)
    {
      goto LABEL_292;
    }

    goto LABEL_307;
  }

LABEL_303:
  v138 = *(this + 62);
  if (v138 >= 0x80)
  {
    v139 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v138) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v139 = 3;
  }

  v4 += v139;
  if ((v107 & 0x80000) == 0)
  {
LABEL_292:
    if ((v107 & 0x100000) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_311;
  }

LABEL_307:
  v140 = *(this + 63);
  if (v140 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v140) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v141 = 3;
  }

  v4 += v141;
  if ((v107 & 0x100000) == 0)
  {
LABEL_293:
    if ((v107 & 0x200000) == 0)
    {
      goto LABEL_324;
    }

LABEL_315:
    v144 = *(this + 32);
    v145 = *(v144 + 23);
    v146 = v145;
    v147 = *(v144 + 8);
    if ((v145 & 0x80u) == 0)
    {
      v148 = *(v144 + 23);
    }

    else
    {
      v148 = v147;
    }

    if (v148 >= 0x80)
    {
      v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v148);
      v145 = *(v144 + 23);
      v147 = *(v144 + 8);
      v107 = *(this + 169);
      v146 = *(v144 + 23);
    }

    else
    {
      v149 = 1;
    }

    if (v146 < 0)
    {
      v145 = v147;
    }

    v4 += v149 + v145 + 2;
    goto LABEL_324;
  }

LABEL_311:
  v142 = *(this + 72);
  if (v142 >= 0x80)
  {
    v143 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v142) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v143 = 3;
  }

  v4 += v143;
  if ((v107 & 0x200000) != 0)
  {
    goto LABEL_315;
  }

LABEL_324:
  if ((v107 & 0x800000) != 0)
  {
    v4 += 3;
  }

LABEL_326:
  if (!HIBYTE(v107))
  {
    goto LABEL_363;
  }

  v150 = v4 + 3;
  if ((v107 & 0x1000000) == 0)
  {
    v150 = v4;
  }

  if ((v107 & 0x2000000) != 0)
  {
    v4 = v150 + 3;
  }

  else
  {
    v4 = v150;
  }

  if ((v107 & 0x4000000) != 0)
  {
    v151 = *(this + 73);
    if (v151 >= 0x80)
    {
      v152 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151) + 2;
      v107 = *(this + 169);
    }

    else
    {
      v152 = 3;
    }

    v4 += v152;
    if ((v107 & 0x8000000) == 0)
    {
LABEL_334:
      if ((v107 & 0x10000000) == 0)
      {
        goto LABEL_335;
      }

      goto LABEL_347;
    }
  }

  else if ((v107 & 0x8000000) == 0)
  {
    goto LABEL_334;
  }

  v153 = *(this + 74);
  if (v153 >= 0x80)
  {
    v154 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v153) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v154 = 3;
  }

  v4 += v154;
  if ((v107 & 0x10000000) == 0)
  {
LABEL_335:
    if ((v107 & 0x20000000) == 0)
    {
      goto LABEL_336;
    }

    goto LABEL_351;
  }

LABEL_347:
  v155 = *(this + 75);
  if (v155 >= 0x80)
  {
    v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v156 = 3;
  }

  v4 += v156;
  if ((v107 & 0x20000000) == 0)
  {
LABEL_336:
    if ((v107 & 0x40000000) == 0)
    {
      goto LABEL_337;
    }

    goto LABEL_355;
  }

LABEL_351:
  v157 = *(this + 76);
  if (v157 >= 0x80)
  {
    v158 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v157) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v158 = 3;
  }

  v4 += v158;
  if ((v107 & 0x40000000) == 0)
  {
LABEL_337:
    if ((v107 & 0x80000000) == 0)
    {
      goto LABEL_363;
    }

    goto LABEL_359;
  }

LABEL_355:
  v159 = *(this + 77);
  if (v159 >= 0x80)
  {
    v160 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159) + 2;
    v107 = *(this + 169);
  }

  else
  {
    v160 = 3;
  }

  v4 += v160;
  if ((v107 & 0x80000000) != 0)
  {
LABEL_359:
    v161 = *(this + 78);
    if (v161 >= 0x80)
    {
      v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161) + 2;
    }

    else
    {
      v162 = 3;
    }

    v4 += v162;
  }

LABEL_363:
  v163 = *(this + 170);
  if (!v163)
  {
    goto LABEL_405;
  }

  if (v163)
  {
    v164 = *(this + 79);
    if (v164 >= 0x80)
    {
      v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v164) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v165 = 3;
    }

    v4 += v165;
    if ((v163 & 2) == 0)
    {
LABEL_366:
      if ((v163 & 4) == 0)
      {
        goto LABEL_367;
      }

      goto LABEL_381;
    }
  }

  else if ((v163 & 2) == 0)
  {
    goto LABEL_366;
  }

  v166 = *(this + 80);
  if (v166 >= 0x80)
  {
    v167 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v166) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v167 = 3;
  }

  v4 += v167;
  if ((v163 & 4) == 0)
  {
LABEL_367:
    if ((v163 & 8) == 0)
    {
      goto LABEL_368;
    }

    goto LABEL_385;
  }

LABEL_381:
  v168 = *(this + 81);
  if (v168 >= 0x80)
  {
    v169 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v168) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v169 = 3;
  }

  v4 += v169;
  if ((v163 & 8) == 0)
  {
LABEL_368:
    if ((v163 & 0x10) == 0)
    {
      goto LABEL_369;
    }

    goto LABEL_389;
  }

LABEL_385:
  v170 = *(this + 82);
  if (v170 >= 0x80)
  {
    v171 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v170) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v171 = 3;
  }

  v4 += v171;
  if ((v163 & 0x10) == 0)
  {
LABEL_369:
    if ((v163 & 0x20) == 0)
    {
      goto LABEL_370;
    }

    goto LABEL_393;
  }

LABEL_389:
  v172 = *(this + 83);
  if (v172 >= 0x80)
  {
    v173 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v172) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v173 = 3;
  }

  v4 += v173;
  if ((v163 & 0x20) == 0)
  {
LABEL_370:
    if ((v163 & 0x40) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_397;
  }

LABEL_393:
  v174 = *(this + 84);
  if (v174 >= 0x80)
  {
    v175 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v174) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v175 = 3;
  }

  v4 += v175;
  if ((v163 & 0x40) == 0)
  {
LABEL_371:
    if ((v163 & 0x80) == 0)
    {
      goto LABEL_405;
    }

    goto LABEL_401;
  }

LABEL_397:
  v176 = *(this + 85);
  if (v176 >= 0x80)
  {
    v177 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v176) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v177 = 3;
  }

  v4 += v177;
  if ((v163 & 0x80) != 0)
  {
LABEL_401:
    v178 = *(this + 86);
    if (v178 >= 0x80)
    {
      v179 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v178) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v179 = 3;
    }

    v4 += v179;
  }

LABEL_405:
  if ((v163 & 0xFF00) == 0)
  {
    goto LABEL_447;
  }

  if ((v163 & 0x100) != 0)
  {
    v180 = *(this + 87);
    if (v180 >= 0x80)
    {
      v181 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v180) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v181 = 3;
    }

    v4 += v181;
    if ((v163 & 0x200) == 0)
    {
LABEL_408:
      if ((v163 & 0x400) == 0)
      {
        goto LABEL_409;
      }

      goto LABEL_423;
    }
  }

  else if ((v163 & 0x200) == 0)
  {
    goto LABEL_408;
  }

  v182 = *(this + 88);
  if (v182 >= 0x80)
  {
    v183 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v182) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v183 = 3;
  }

  v4 += v183;
  if ((v163 & 0x400) == 0)
  {
LABEL_409:
    if ((v163 & 0x800) == 0)
    {
      goto LABEL_410;
    }

    goto LABEL_427;
  }

LABEL_423:
  v184 = *(this + 89);
  if (v184 >= 0x80)
  {
    v185 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v184) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v185 = 3;
  }

  v4 += v185;
  if ((v163 & 0x800) == 0)
  {
LABEL_410:
    if ((v163 & 0x1000) == 0)
    {
      goto LABEL_411;
    }

    goto LABEL_431;
  }

LABEL_427:
  v186 = *(this + 90);
  if (v186 >= 0x80)
  {
    v187 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v186) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v187 = 3;
  }

  v4 += v187;
  if ((v163 & 0x1000) == 0)
  {
LABEL_411:
    if ((v163 & 0x2000) == 0)
    {
      goto LABEL_412;
    }

    goto LABEL_435;
  }

LABEL_431:
  v188 = *(this + 91);
  if (v188 >= 0x80)
  {
    v189 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v188) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v189 = 3;
  }

  v4 += v189;
  if ((v163 & 0x2000) == 0)
  {
LABEL_412:
    if ((v163 & 0x4000) == 0)
    {
      goto LABEL_413;
    }

    goto LABEL_439;
  }

LABEL_435:
  v190 = *(this + 92);
  if (v190 >= 0x80)
  {
    v191 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v190) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v191 = 3;
  }

  v4 += v191;
  if ((v163 & 0x4000) == 0)
  {
LABEL_413:
    if ((v163 & 0x8000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_443;
  }

LABEL_439:
  v192 = *(this + 93);
  if (v192 >= 0x80)
  {
    v193 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v192) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v193 = 3;
  }

  v4 += v193;
  if ((v163 & 0x8000) != 0)
  {
LABEL_443:
    v194 = *(this + 94);
    if (v194 >= 0x80)
    {
      v195 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v194) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v195 = 3;
    }

    v4 += v195;
  }

LABEL_447:
  if ((v163 & 0xFF0000) == 0)
  {
    goto LABEL_491;
  }

  if ((v163 & 0x10000) != 0)
  {
    v196 = *(this + 95);
    if (v196 >= 0x80)
    {
      v197 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v196) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v197 = 3;
    }

    v4 += v197;
    if ((v163 & 0x20000) == 0)
    {
LABEL_450:
      if ((v163 & 0x40000) == 0)
      {
        goto LABEL_451;
      }

      goto LABEL_462;
    }
  }

  else if ((v163 & 0x20000) == 0)
  {
    goto LABEL_450;
  }

  v198 = *(this + 96);
  if (v198 >= 0x80)
  {
    v199 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v198) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v199 = 3;
  }

  v4 += v199;
  if ((v163 & 0x40000) == 0)
  {
LABEL_451:
    if ((v163 & 0x80000) == 0)
    {
      goto LABEL_452;
    }

LABEL_466:
    v202 = *(this + 98);
    if (v202 >= 0x80)
    {
      v203 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v202) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v203 = 3;
    }

    v4 += v203;
    if ((v163 & 0x100000) == 0)
    {
      goto LABEL_474;
    }

    goto LABEL_470;
  }

LABEL_462:
  v200 = *(this + 97);
  if (v200 >= 0x80)
  {
    v201 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v200) + 2;
    v163 = *(this + 170);
  }

  else
  {
    v201 = 3;
  }

  v4 += v201;
  if ((v163 & 0x80000) != 0)
  {
    goto LABEL_466;
  }

LABEL_452:
  if ((v163 & 0x100000) != 0)
  {
LABEL_470:
    v204 = *(this + 100);
    if (v204 >= 0x80)
    {
      v205 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v204) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v205 = 3;
    }

    v4 += v205;
  }

LABEL_474:
  if ((v163 & 0x200000) != 0)
  {
    v4 += 3;
  }

  if ((v163 & 0x400000) != 0)
  {
    v206 = *(this + 101);
    if (v206 >= 0x80)
    {
      v207 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v206) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v207 = 3;
    }

    v4 += v207;
  }

  if ((v163 & 0x800000) != 0)
  {
    v208 = *(this + 51);
    v209 = *(v208 + 23);
    v210 = v209;
    v211 = *(v208 + 8);
    if ((v209 & 0x80u) == 0)
    {
      v212 = *(v208 + 23);
    }

    else
    {
      v212 = v211;
    }

    if (v212 >= 0x80)
    {
      v213 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v212);
      v209 = *(v208 + 23);
      v211 = *(v208 + 8);
      v163 = *(this + 170);
      v210 = *(v208 + 23);
    }

    else
    {
      v213 = 1;
    }

    if (v210 < 0)
    {
      v209 = v211;
    }

    v4 += v213 + v209 + 2;
  }

LABEL_491:
  if (!HIBYTE(v163))
  {
    goto LABEL_523;
  }

  if ((v163 & 0x1000000) != 0)
  {
    v214 = *(this + 104);
    if ((v214 & 0x80000000) != 0)
    {
      v215 = 12;
    }

    else if (v214 >= 0x80)
    {
      v215 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v214) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v215 = 3;
    }

    v4 += v215;
  }

  if ((v163 & 0x2000000) != 0)
  {
    v216 = *(this + 105);
    if ((v216 & 0x80000000) != 0)
    {
      v217 = 12;
    }

    else if (v216 >= 0x80)
    {
      v217 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v216) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v217 = 3;
    }

    v4 += v217;
  }

  if ((v163 & 0x4000000) != 0)
  {
    v4 += 3;
  }

  if ((v163 & 0x10000000) != 0)
  {
    v218 = *(this + 114);
    if (v218 >= 0x80)
    {
      v219 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v218) + 2;
      v163 = *(this + 170);
    }

    else
    {
      v219 = 3;
    }

    v4 += v219;
    if ((v163 & 0x20000000) == 0)
    {
LABEL_510:
      if ((v163 & 0x40000000) == 0)
      {
        goto LABEL_511;
      }

LABEL_518:
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 58)) + 2;
      if ((*(this + 170) & 0x80000000) == 0)
      {
        goto LABEL_523;
      }

      goto LABEL_519;
    }
  }

  else if ((v163 & 0x20000000) == 0)
  {
    goto LABEL_510;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 56)) + 2;
  v163 = *(this + 170);
  if ((v163 & 0x40000000) != 0)
  {
    goto LABEL_518;
  }

LABEL_511:
  if ((v163 & 0x80000000) == 0)
  {
    goto LABEL_523;
  }

LABEL_519:
  v220 = *(this + 115);
  if (v220 >= 0x80)
  {
    v221 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v220) + 2;
  }

  else
  {
    v221 = 3;
  }

  v4 += v221;
LABEL_523:
  v222 = *(this + 171);
  if (!v222)
  {
    goto LABEL_556;
  }

  if (v222)
  {
    v223 = *(this + 120);
    if (v223 >= 0x80)
    {
      v224 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v223) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v224 = 3;
    }

    v4 += v224;
    if ((v222 & 2) == 0)
    {
LABEL_526:
      if ((v222 & 4) == 0)
      {
        goto LABEL_527;
      }

      goto LABEL_536;
    }
  }

  else if ((v222 & 2) == 0)
  {
    goto LABEL_526;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 59)) + 2;
  v222 = *(this + 171);
  if ((v222 & 4) == 0)
  {
LABEL_527:
    if ((v222 & 8) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_537;
  }

LABEL_536:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 61)) + 2;
  v222 = *(this + 171);
  if ((v222 & 8) == 0)
  {
LABEL_528:
    if ((v222 & 0x10) == 0)
    {
      goto LABEL_529;
    }

LABEL_541:
    v227 = *(this + 124);
    if (v227 >= 0x80)
    {
      v228 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v227) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v228 = 3;
    }

    v4 += v228;
    if ((v222 & 0x20) == 0)
    {
      goto LABEL_549;
    }

    goto LABEL_545;
  }

LABEL_537:
  v225 = *(this + 121);
  if (v225 >= 0x80)
  {
    v226 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v225) + 2;
    v222 = *(this + 171);
  }

  else
  {
    v226 = 3;
  }

  v4 += v226;
  if ((v222 & 0x10) != 0)
  {
    goto LABEL_541;
  }

LABEL_529:
  if ((v222 & 0x20) != 0)
  {
LABEL_545:
    v229 = *(this + 125);
    if (v229 >= 0x80)
    {
      v230 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v229) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v230 = 3;
    }

    v4 += v230;
  }

LABEL_549:
  if ((v222 & 0x40) != 0)
  {
    v4 += 3;
  }

  if ((v222 & 0x80) != 0)
  {
    v231 = *(this + 126);
    if (v231 >= 0x80)
    {
      v232 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v231) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v232 = 3;
    }

    v4 += v232;
  }

LABEL_556:
  if ((v222 & 0xFF00) == 0)
  {
    goto LABEL_580;
  }

  if ((v222 & 0x100) != 0)
  {
    v233 = *(this + 127);
    if (v233 >= 0x80)
    {
      v234 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v233) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v234 = 3;
    }

    v4 += v234;
  }

  if ((v222 & 0x200) != 0)
  {
    v4 += 3;
  }

  if ((v222 & 0x1000) != 0)
  {
    v235 = *(this + 138);
    if (v235 >= 0x80)
    {
      v236 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v235) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v236 = 3;
    }

    v4 += v236;
    if ((v222 & 0x2000) == 0)
    {
LABEL_566:
      if ((v222 & 0x4000) == 0)
      {
        goto LABEL_580;
      }

      goto LABEL_576;
    }
  }

  else if ((v222 & 0x2000) == 0)
  {
    goto LABEL_566;
  }

  v237 = *(this + 139);
  if (v237 >= 0x80)
  {
    v238 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v237) + 2;
    v222 = *(this + 171);
  }

  else
  {
    v238 = 3;
  }

  v4 += v238;
  if ((v222 & 0x4000) != 0)
  {
LABEL_576:
    v239 = *(this + 146);
    if (v239 >= 0x80)
    {
      v240 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v239) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v240 = 3;
    }

    v4 += v240;
  }

LABEL_580:
  if ((v222 & 0xFF0000) == 0)
  {
    goto LABEL_622;
  }

  if ((v222 & 0x10000) != 0)
  {
    v241 = *(this + 147);
    if (v241 >= 0x80)
    {
      v242 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v241) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v242 = 3;
    }

    v4 += v242;
    if ((v222 & 0x20000) == 0)
    {
LABEL_583:
      if ((v222 & 0x40000) == 0)
      {
        goto LABEL_584;
      }

      goto LABEL_598;
    }
  }

  else if ((v222 & 0x20000) == 0)
  {
    goto LABEL_583;
  }

  v243 = *(this + 148);
  if (v243 >= 0x80)
  {
    v244 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v243) + 2;
    v222 = *(this + 171);
  }

  else
  {
    v244 = 3;
  }

  v4 += v244;
  if ((v222 & 0x40000) == 0)
  {
LABEL_584:
    if ((v222 & 0x80000) == 0)
    {
      goto LABEL_585;
    }

    goto LABEL_602;
  }

LABEL_598:
  v245 = *(this + 149);
  if (v245 >= 0x80)
  {
    v246 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v245) + 2;
    v222 = *(this + 171);
  }

  else
  {
    v246 = 3;
  }

  v4 += v246;
  if ((v222 & 0x80000) == 0)
  {
LABEL_585:
    if ((v222 & 0x100000) == 0)
    {
      goto LABEL_586;
    }

    goto LABEL_606;
  }

LABEL_602:
  v247 = *(this + 150);
  if (v247 >= 0x80)
  {
    v248 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v247) + 2;
    v222 = *(this + 171);
  }

  else
  {
    v248 = 3;
  }

  v4 += v248;
  if ((v222 & 0x100000) == 0)
  {
LABEL_586:
    if ((v222 & 0x200000) == 0)
    {
      goto LABEL_587;
    }

    goto LABEL_610;
  }

LABEL_606:
  v249 = *(this + 151);
  if (v249 >= 0x80)
  {
    v250 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v249) + 2;
    v222 = *(this + 171);
  }

  else
  {
    v250 = 3;
  }

  v4 += v250;
  if ((v222 & 0x200000) == 0)
  {
LABEL_587:
    if ((v222 & 0x400000) == 0)
    {
      goto LABEL_588;
    }

    goto LABEL_614;
  }

LABEL_610:
  v251 = *(this + 152);
  if (v251 >= 0x80)
  {
    v252 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v251) + 2;
    v222 = *(this + 171);
  }

  else
  {
    v252 = 3;
  }

  v4 += v252;
  if ((v222 & 0x400000) == 0)
  {
LABEL_588:
    if ((v222 & 0x800000) == 0)
    {
      goto LABEL_622;
    }

    goto LABEL_618;
  }

LABEL_614:
  v253 = *(this + 153);
  if (v253 >= 0x80)
  {
    v254 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v253) + 2;
    v222 = *(this + 171);
  }

  else
  {
    v254 = 3;
  }

  v4 += v254;
  if ((v222 & 0x800000) != 0)
  {
LABEL_618:
    v255 = *(this + 154);
    if (v255 >= 0x80)
    {
      v256 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v255) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v256 = 3;
    }

    v4 += v256;
  }

LABEL_622:
  if (!HIBYTE(v222))
  {
    goto LABEL_655;
  }

  if ((v222 & 0x1000000) == 0)
  {
    if ((v222 & 0x2000000) == 0)
    {
      goto LABEL_625;
    }

LABEL_631:
    v259 = *(this + 157);
    if (v259 >= 0x80)
    {
      v260 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v259) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v260 = 3;
    }

    v4 += v260;
    if ((v222 & 0x4000000) == 0)
    {
      goto LABEL_639;
    }

    goto LABEL_635;
  }

  v257 = *(this + 156);
  if (v257 >= 0x80)
  {
    v258 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v257) + 2;
    v222 = *(this + 171);
  }

  else
  {
    v258 = 3;
  }

  v4 += v258;
  if ((v222 & 0x2000000) != 0)
  {
    goto LABEL_631;
  }

LABEL_625:
  if ((v222 & 0x4000000) != 0)
  {
LABEL_635:
    v261 = *(this + 158);
    if (v261 >= 0x80)
    {
      v262 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v261) + 2;
      v222 = *(this + 171);
    }

    else
    {
      v262 = 3;
    }

    v4 += v262;
  }

LABEL_639:
  v263 = v4 + 3;
  if ((v222 & 0x8000000) == 0)
  {
    v263 = v4;
  }

  if ((v222 & 0x10000000) != 0)
  {
    v263 += 3;
  }

  if ((v222 & 0x20000000) != 0)
  {
    v263 += 3;
  }

  if ((v222 & 0x40000000) != 0)
  {
    v4 = v263 + 3;
  }

  else
  {
    v4 = v263;
  }

  if ((v222 & 0x80000000) != 0)
  {
    v264 = *(this + 159);
    if ((v264 & 0x80000000) != 0)
    {
      v265 = 12;
    }

    else if (v264 >= 0x80)
    {
      v265 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v264) + 2;
    }

    else
    {
      v265 = 3;
    }

    v4 += v265;
  }

LABEL_655:
  LOBYTE(v266) = *(this + 688);
  if (!v266)
  {
    goto LABEL_691;
  }

  if (*(this + 688))
  {
    v4 += 3;
  }

  if ((*(this + 688) & 2) == 0)
  {
    if ((*(this + 688) & 4) == 0)
    {
      goto LABEL_660;
    }

LABEL_666:
    v269 = *(this + 164);
    if (v269 >= 0x80)
    {
      v270 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v269) + 2;
      v266 = *(this + 172);
    }

    else
    {
      v270 = 3;
    }

    v4 += v270;
    if ((v266 & 8) == 0)
    {
      goto LABEL_679;
    }

LABEL_670:
    v271 = *(this + 81);
    v272 = *(v271 + 23);
    v273 = v272;
    v274 = *(v271 + 8);
    if ((v272 & 0x80u) == 0)
    {
      v275 = *(v271 + 23);
    }

    else
    {
      v275 = v274;
    }

    if (v275 >= 0x80)
    {
      v276 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v275);
      v272 = *(v271 + 23);
      v274 = *(v271 + 8);
      v266 = *(this + 172);
      v273 = *(v271 + 23);
    }

    else
    {
      v276 = 1;
    }

    if (v273 < 0)
    {
      v272 = v274;
    }

    v4 += v276 + v272 + 2;
    goto LABEL_679;
  }

  v267 = *(this + 160);
  if (v267 >= 0x80)
  {
    v268 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v267) + 2;
    v266 = *(this + 172);
  }

  else
  {
    v268 = 3;
  }

  v4 += v268;
  if ((v266 & 4) != 0)
  {
    goto LABEL_666;
  }

LABEL_660:
  if ((v266 & 8) != 0)
  {
    goto LABEL_670;
  }

LABEL_679:
  if ((v266 & 0x10) != 0)
  {
    v4 += 3;
  }

  if ((v266 & 0x20) != 0)
  {
    v277 = *(this + 165);
    if (v277 >= 0x80)
    {
      v278 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v277) + 2;
      v266 = *(this + 172);
    }

    else
    {
      v278 = 3;
    }

    v4 += v278;
  }

  v279 = v4 + 3;
  if ((v266 & 0x40) == 0)
  {
    v279 = v4;
  }

  if ((v266 & 0x80) != 0)
  {
    v4 = v279 + 3;
  }

  else
  {
    v4 = v279;
  }

LABEL_691:
  v280 = *(this + 68);
  v281 = v4 + 2 * v280;
  if (v280 >= 1)
  {
    for (i = 0; i < v280; ++i)
    {
      v283 = *(*(this + 33) + 8 * i);
      v284 = *(v283 + 23);
      v285 = v284;
      v286 = *(v283 + 8);
      if ((v284 & 0x80u) == 0)
      {
        v287 = *(v283 + 23);
      }

      else
      {
        v287 = v286;
      }

      if (v287 >= 0x80)
      {
        v288 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v287);
        v284 = *(v283 + 23);
        v286 = *(v283 + 8);
        v280 = *(this + 68);
        v285 = *(v283 + 23);
      }

      else
      {
        v288 = 1;
      }

      if (v285 < 0)
      {
        v284 = v286;
      }

      v281 += v288 + v284;
    }
  }

  v289 = *(this + 108);
  v290 = v281 + 2 * v289;
  if (v289 >= 1)
  {
    for (j = 0; j < v289; ++j)
    {
      v292 = *(*(this + 53) + 8 * j);
      v293 = *(v292 + 23);
      v294 = v293;
      v295 = *(v292 + 8);
      if ((v293 & 0x80u) == 0)
      {
        v296 = *(v292 + 23);
      }

      else
      {
        v296 = v295;
      }

      if (v296 >= 0x80)
      {
        v297 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v296);
        v293 = *(v292 + 23);
        v295 = *(v292 + 8);
        v289 = *(this + 108);
        v294 = *(v292 + 23);
      }

      else
      {
        v297 = 1;
      }

      if (v294 < 0)
      {
        v293 = v295;
      }

      v290 += v297 + v293;
    }
  }

  v298 = *(this + 130);
  v299 = v290 + 2 * v298;
  if (v298 >= 1)
  {
    v300 = 0;
    do
    {
      v301 = awd::metrics::ATM_CallEndEvent_myreason::ByteSize(*(*(this + 64) + 8 * v300));
      v302 = v301;
      if (v301 >= 0x80)
      {
        v303 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v301);
      }

      else
      {
        v303 = 1;
      }

      v299 += v302 + v303;
      ++v300;
    }

    while (v300 < *(this + 130));
  }

  v304 = *(this + 142);
  v305 = (3 * *(this + 136) + v299 + 2 * v304);
  if (v304 >= 1)
  {
    v306 = 0;
    do
    {
      v307 = awd::metrics::ATM_CallEndEvent_handover::ByteSize(*(*(this + 70) + 8 * v306));
      v308 = v307;
      if (v307 >= 0x80)
      {
        v309 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v307);
      }

      else
      {
        v309 = 1;
      }

      v305 = (v308 + v305 + v309);
      ++v306;
    }

    while (v306 < *(this + 142));
  }

  *(this + 167) = v305;
  return v305;
}