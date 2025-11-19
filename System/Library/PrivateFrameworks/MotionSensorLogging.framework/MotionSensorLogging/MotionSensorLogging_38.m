void CMMsl::KappaSevereCrashResult::~KappaSevereCrashResult(CMMsl::KappaSevereCrashResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::KappaSevereCrashResult::KappaSevereCrashResult(CMMsl::KappaSevereCrashResult *this, const CMMsl::KappaSevereCrashResult *a2)
{
  *this = &unk_286C21538;
  *(this + 45) = 0;
  *(this + 46) = 0;
  v2 = *(a2 + 45);
  if ((v2 & 0x800000) != 0)
  {
    result = *(a2 + 33);
    v3 = 0x800000;
    *(this + 45) = 0x800000;
    *(this + 33) = result;
    v2 = *(a2 + 45);
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x400000) != 0)
  {
LABEL_5:
    result = *(a2 + 32);
    v3 |= 0x400000uLL;
    *(this + 45) = v3;
    *(this + 32) = result;
    v2 = *(a2 + 45);
  }

LABEL_6:
  if ((v2 & 0x1000000) == 0)
  {
    if ((v2 & 0x20000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = *(a2 + 34);
  v3 |= 0x1000000uLL;
  *(this + 45) = v3;
  *(this + 34) = v7;
  if ((*(a2 + 45) & 0x20000000000000) != 0)
  {
LABEL_8:
    v5 = *(a2 + 63);
    v3 |= 0x20000000000000uLL;
    *(this + 45) = v3;
    *(this + 63) = v5;
  }

LABEL_9:
  if ((*(a2 + 368) & 2) != 0)
  {
    result = *(a2 + 75);
    v6 = 2;
    *(this + 46) = 2;
    *(this + 75) = result;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a2 + 45);
  if ((v8 & 0x800000000000000) != 0)
  {
    result = *(a2 + 69);
    v3 |= 0x800000000000000uLL;
    *(this + 45) = v3;
    *(this + 69) = result;
    v8 = *(a2 + 45);
    if ((v8 & 0x800000000000) == 0)
    {
LABEL_16:
      if ((v8 & 0x400000000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_147;
    }
  }

  else if ((v8 & 0x800000000000) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 57);
  v3 |= 0x800000000000uLL;
  *(this + 45) = v3;
  *(this + 57) = result;
  v8 = *(a2 + 45);
  if ((v8 & 0x400000000000) == 0)
  {
LABEL_17:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_148;
  }

LABEL_147:
  result = *(a2 + 56);
  v3 |= 0x400000000000uLL;
  *(this + 45) = v3;
  *(this + 56) = result;
  v8 = *(a2 + 45);
  if ((v8 & 0x200) == 0)
  {
LABEL_18:
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_149;
  }

LABEL_148:
  result = *(a2 + 19);
  v3 |= 0x200uLL;
  *(this + 45) = v3;
  *(this + 19) = result;
  v8 = *(a2 + 45);
  if ((v8 & 0x100000000000000) == 0)
  {
LABEL_19:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_150;
  }

LABEL_149:
  v46 = *(a2 + 66);
  v3 |= 0x100000000000000uLL;
  *(this + 45) = v3;
  *(this + 66) = v46;
  v8 = *(a2 + 45);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_150:
  v47 = *(a2 + 35);
  v3 |= 0x2000000uLL;
  *(this + 45) = v3;
  *(this + 35) = v47;
  if ((*(a2 + 45) & 0x10000) != 0)
  {
LABEL_21:
    result = *(a2 + 26);
    v3 |= 0x10000uLL;
    *(this + 45) = v3;
    *(this + 26) = result;
  }

LABEL_22:
  v9 = *(a2 + 46);
  if ((v9 & 0x10) != 0)
  {
    result = *(a2 + 78);
    v6 |= 0x10uLL;
    *(this + 46) = v6;
    *(this + 78) = result;
    v9 = *(a2 + 46);
  }

  if ((v9 & 0x20) != 0)
  {
    result = *(a2 + 79);
    v6 |= 0x20uLL;
    *(this + 46) = v6;
    *(this + 79) = result;
  }

  v10 = *(a2 + 45);
  if ((v10 & 0x100000000000) != 0)
  {
    v48 = *(a2 + 54);
    v3 |= 0x100000000000uLL;
    *(this + 45) = v3;
    *(this + 54) = v48;
    v10 = *(a2 + 45);
    if ((v10 & 0x40000000000) == 0)
    {
LABEL_28:
      if ((v10 & 0x8000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_154;
    }
  }

  else if ((v10 & 0x40000000000) == 0)
  {
    goto LABEL_28;
  }

  v49 = *(a2 + 52);
  v3 |= 0x40000000000uLL;
  *(this + 45) = v3;
  *(this + 52) = v49;
  v10 = *(a2 + 45);
  if ((v10 & 0x8000000000000) == 0)
  {
LABEL_29:
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_154:
  result = *(a2 + 61);
  v3 |= 0x8000000000000uLL;
  *(this + 45) = v3;
  *(this + 61) = result;
  if ((*(a2 + 45) & 0x2000000000000000) != 0)
  {
LABEL_30:
    v11 = *(a2 + 71);
    v3 |= 0x2000000000000000uLL;
    *(this + 45) = v3;
    *(this + 71) = v11;
  }

LABEL_31:
  if ((*(a2 + 368) & 4) != 0)
  {
    v12 = *(a2 + 76);
    v6 |= 4uLL;
    *(this + 46) = v6;
    *(this + 76) = v12;
  }

  v13 = *(a2 + 45);
  if ((v13 & 0x4000000) != 0)
  {
    result = *(a2 + 36);
    v3 |= 0x4000000uLL;
    *(this + 45) = v3;
    *(this + 36) = result;
    v13 = *(a2 + 45);
    if ((v13 & 0x80) == 0)
    {
LABEL_35:
      if ((v13 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_35;
  }

  v50 = *(a2 + 8);
  v3 |= 0x80uLL;
  *(this + 45) = v3;
  *(this + 8) = v50;
  if (*(a2 + 45))
  {
LABEL_36:
    v14 = *(a2 + 1);
    v3 |= 1uLL;
    *(this + 45) = v3;
    *(this + 1) = v14;
  }

LABEL_37:
  v15 = *(a2 + 46);
  if ((v15 & 0x80) != 0)
  {
    v51 = *(a2 + 321);
    v6 |= 0x80uLL;
    *(this + 46) = v6;
    *(this + 321) = v51;
    v15 = *(a2 + 46);
    if ((v15 & 0x100) == 0)
    {
LABEL_39:
      if ((v15 & 0x10000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_161;
    }
  }

  else if ((v15 & 0x100) == 0)
  {
    goto LABEL_39;
  }

  v52 = *(a2 + 322);
  v6 |= 0x100uLL;
  *(this + 46) = v6;
  *(this + 322) = v52;
  v15 = *(a2 + 46);
  if ((v15 & 0x10000) == 0)
  {
LABEL_40:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_162;
  }

LABEL_161:
  v53 = *(a2 + 330);
  v6 |= 0x10000uLL;
  *(this + 46) = v6;
  *(this + 330) = v53;
  v15 = *(a2 + 46);
  if ((v15 & 0x20000) == 0)
  {
LABEL_41:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_163;
  }

LABEL_162:
  v54 = *(a2 + 331);
  v6 |= 0x20000uLL;
  *(this + 46) = v6;
  *(this + 331) = v54;
  v15 = *(a2 + 46);
  if ((v15 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_164;
  }

LABEL_163:
  v55 = *(a2 + 342);
  v6 |= 0x10000000uLL;
  *(this + 46) = v6;
  *(this + 342) = v55;
  v15 = *(a2 + 46);
  if ((v15 & 0x4000000) == 0)
  {
LABEL_43:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_165;
  }

LABEL_164:
  v56 = *(a2 + 340);
  v6 |= 0x4000000uLL;
  *(this + 46) = v6;
  *(this + 340) = v56;
  v15 = *(a2 + 46);
  if ((v15 & 0x2000) == 0)
  {
LABEL_44:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_166;
  }

LABEL_165:
  v57 = *(a2 + 327);
  v6 |= 0x2000uLL;
  *(this + 46) = v6;
  *(this + 327) = v57;
  v15 = *(a2 + 46);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_45:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_167;
  }

LABEL_166:
  v58 = *(a2 + 343);
  v6 |= 0x20000000uLL;
  *(this + 46) = v6;
  *(this + 343) = v58;
  v15 = *(a2 + 46);
  if ((v15 & 0x40000000) == 0)
  {
LABEL_46:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_168;
  }

LABEL_167:
  v59 = *(a2 + 344);
  v6 |= 0x40000000uLL;
  *(this + 46) = v6;
  *(this + 344) = v59;
  v15 = *(a2 + 46);
  if ((v15 & 0x400) == 0)
  {
LABEL_47:
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_169;
  }

LABEL_168:
  v60 = *(a2 + 324);
  v6 |= 0x400uLL;
  *(this + 46) = v6;
  *(this + 324) = v60;
  v15 = *(a2 + 46);
  if ((v15 & 0x2000000) == 0)
  {
LABEL_48:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_170;
  }

LABEL_169:
  v61 = *(a2 + 339);
  v6 |= 0x2000000uLL;
  *(this + 46) = v6;
  *(this + 339) = v61;
  v15 = *(a2 + 46);
  if ((v15 & 0x4000) == 0)
  {
LABEL_49:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_171;
  }

LABEL_170:
  v62 = *(a2 + 328);
  v6 |= 0x4000uLL;
  *(this + 46) = v6;
  *(this + 328) = v62;
  v15 = *(a2 + 46);
  if ((v15 & 0x8000000) == 0)
  {
LABEL_50:
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_172;
  }

LABEL_171:
  v63 = *(a2 + 341);
  v6 |= 0x8000000uLL;
  *(this + 46) = v6;
  *(this + 341) = v63;
  v15 = *(a2 + 46);
  if ((v15 & 0x100000) == 0)
  {
LABEL_51:
    if ((v15 & 0x8000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_173;
  }

LABEL_172:
  v64 = *(a2 + 334);
  v6 |= 0x100000uLL;
  *(this + 46) = v6;
  *(this + 334) = v64;
  v15 = *(a2 + 46);
  if ((v15 & 0x8000000000) == 0)
  {
LABEL_52:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_174;
  }

LABEL_173:
  v65 = *(a2 + 353);
  v6 |= 0x8000000000uLL;
  *(this + 46) = v6;
  *(this + 353) = v65;
  v15 = *(a2 + 46);
  if ((v15 & 0x800000000) == 0)
  {
LABEL_53:
    if ((v15 & 0x10000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_175;
  }

LABEL_174:
  v66 = *(a2 + 349);
  v6 |= 0x800000000uLL;
  *(this + 46) = v6;
  *(this + 349) = v66;
  v15 = *(a2 + 46);
  if ((v15 & 0x10000000000) == 0)
  {
LABEL_54:
    if ((v15 & 0x1000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_176;
  }

LABEL_175:
  v67 = *(a2 + 354);
  v6 |= 0x10000000000uLL;
  *(this + 46) = v6;
  *(this + 354) = v67;
  v15 = *(a2 + 46);
  if ((v15 & 0x1000000000) == 0)
  {
LABEL_55:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_177;
  }

LABEL_176:
  v68 = *(a2 + 350);
  v6 |= 0x1000000000uLL;
  *(this + 46) = v6;
  *(this + 350) = v68;
  v15 = *(a2 + 46);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_56:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_178;
  }

LABEL_177:
  v69 = *(a2 + 345);
  v6 |= 0x80000000uLL;
  *(this + 46) = v6;
  *(this + 345) = v69;
  v15 = *(a2 + 46);
  if ((v15 & 0x1000) == 0)
  {
LABEL_57:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_179;
  }

LABEL_178:
  v70 = *(a2 + 326);
  v6 |= 0x1000uLL;
  *(this + 46) = v6;
  *(this + 326) = v70;
  v15 = *(a2 + 46);
  if ((v15 & 0x200000) == 0)
  {
LABEL_58:
    if ((v15 & 0x20000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_180;
  }

LABEL_179:
  v71 = *(a2 + 335);
  v6 |= 0x200000uLL;
  *(this + 46) = v6;
  *(this + 335) = v71;
  v15 = *(a2 + 46);
  if ((v15 & 0x20000000000) == 0)
  {
LABEL_59:
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_180:
  v72 = *(a2 + 355);
  v6 |= 0x20000000000uLL;
  *(this + 46) = v6;
  *(this + 355) = v72;
  if ((*(a2 + 46) & 0x2000000000) != 0)
  {
LABEL_60:
    v16 = *(a2 + 351);
    v6 |= 0x2000000000uLL;
    *(this + 46) = v6;
    *(this + 351) = v16;
  }

LABEL_61:
  if ((*(a2 + 362) & 2) != 0)
  {
    v17 = *(a2 + 27);
    v3 |= 0x20000uLL;
    *(this + 45) = v3;
    *(this + 27) = v17;
  }

  v18 = *(a2 + 46);
  if ((v18 & 0x800000) != 0)
  {
    v73 = *(a2 + 337);
    v6 |= 0x800000uLL;
    *(this + 46) = v6;
    *(this + 337) = v73;
    v18 = *(a2 + 46);
    if ((v18 & 0x1000000) == 0)
    {
LABEL_65:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  else if ((v18 & 0x1000000) == 0)
  {
    goto LABEL_65;
  }

  v74 = *(a2 + 338);
  v6 |= 0x1000000uLL;
  *(this + 46) = v6;
  *(this + 338) = v74;
  if ((*(a2 + 46) & 0x40) != 0)
  {
LABEL_66:
    v19 = *(a2 + 320);
    v6 |= 0x40uLL;
    *(this + 46) = v6;
    *(this + 320) = v19;
  }

LABEL_67:
  if ((*(a2 + 362) & 4) != 0)
  {
    v20 = *(a2 + 28);
    v3 |= 0x40000uLL;
    *(this + 45) = v3;
    *(this + 28) = v20;
  }

  v21 = *(a2 + 46);
  if ((v21 & 0x100000000000) != 0)
  {
    v75 = *(a2 + 358);
    v6 |= 0x100000000000uLL;
    *(this + 46) = v6;
    *(this + 358) = v75;
    v21 = *(a2 + 46);
    if ((v21 & 0x40000000000) == 0)
    {
LABEL_71:
      if ((v21 & 0x80000000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_187;
    }
  }

  else if ((v21 & 0x40000000000) == 0)
  {
    goto LABEL_71;
  }

  v76 = *(a2 + 356);
  v6 |= 0x40000000000uLL;
  *(this + 46) = v6;
  *(this + 356) = v76;
  v21 = *(a2 + 46);
  if ((v21 & 0x80000000000) == 0)
  {
LABEL_72:
    if ((v21 & 0x400000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_188;
  }

LABEL_187:
  v77 = *(a2 + 357);
  v6 |= 0x80000000000uLL;
  *(this + 46) = v6;
  *(this + 357) = v77;
  v21 = *(a2 + 46);
  if ((v21 & 0x400000000) == 0)
  {
LABEL_73:
    if ((v21 & 0x200000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_189;
  }

LABEL_188:
  v78 = *(a2 + 348);
  v6 |= 0x400000000uLL;
  *(this + 46) = v6;
  *(this + 348) = v78;
  v21 = *(a2 + 46);
  if ((v21 & 0x200000000) == 0)
  {
LABEL_74:
    if ((v21 & 0x100000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_189:
  v79 = *(a2 + 347);
  v6 |= 0x200000000uLL;
  *(this + 46) = v6;
  *(this + 347) = v79;
  if ((*(a2 + 46) & 0x100000000) != 0)
  {
LABEL_75:
    v22 = *(a2 + 346);
    v6 |= 0x100000000uLL;
    *(this + 46) = v6;
    *(this + 346) = v22;
  }

LABEL_76:
  v23 = *(a2 + 45);
  if ((v23 & 0x40000000000000) != 0)
  {
    v80 = *(a2 + 64);
    v3 |= 0x40000000000000uLL;
    *(this + 45) = v3;
    *(this + 64) = v80;
    v23 = *(a2 + 45);
    if ((v23 & 0x80000000000000) == 0)
    {
LABEL_78:
      if ((v23 & 0x8000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_193;
    }
  }

  else if ((v23 & 0x80000000000000) == 0)
  {
    goto LABEL_78;
  }

  v81 = *(a2 + 65);
  v3 |= 0x80000000000000uLL;
  *(this + 45) = v3;
  *(this + 65) = v81;
  v23 = *(a2 + 45);
  if ((v23 & 0x8000000) == 0)
  {
LABEL_79:
    if ((v23 & 0x10000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_193:
  v82 = *(a2 + 37);
  v3 |= 0x8000000uLL;
  *(this + 45) = v3;
  *(this + 37) = v82;
  if ((*(a2 + 45) & 0x10000000) != 0)
  {
LABEL_80:
    v24 = *(a2 + 38);
    v3 |= 0x10000000uLL;
    *(this + 45) = v3;
    *(this + 38) = v24;
  }

LABEL_81:
  v25 = *(a2 + 46);
  if ((v25 & 0x40000) != 0)
  {
    v26 = *(a2 + 332);
    v6 |= 0x40000uLL;
    *(this + 46) = v6;
    *(this + 332) = v26;
    v25 = *(a2 + 46);
  }

  if ((v25 & 0x8000) != 0)
  {
    v27 = *(a2 + 329);
    v6 |= 0x8000uLL;
    *(this + 46) = v6;
    *(this + 329) = v27;
  }

  v28 = *(a2 + 45);
  if ((v28 & 0x4000000000) != 0)
  {
    v83 = *(a2 + 48);
    v3 |= 0x4000000000uLL;
    *(this + 45) = v3;
    *(this + 48) = v83;
    v28 = *(a2 + 45);
    if ((v28 & 0x80000) == 0)
    {
LABEL_87:
      if ((v28 & 0x2000000000) == 0)
      {
        goto LABEL_88;
      }

LABEL_197:
      v85 = *(a2 + 47);
      v3 |= 0x2000000000uLL;
      *(this + 45) = v3;
      *(this + 47) = v85;
      if ((*(a2 + 45) & 0x8000000000000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_198;
    }
  }

  else if ((v28 & 0x80000) == 0)
  {
    goto LABEL_87;
  }

  v84 = *(a2 + 29);
  v3 |= 0x80000uLL;
  *(this + 45) = v3;
  *(this + 29) = v84;
  v28 = *(a2 + 45);
  if ((v28 & 0x2000000000) != 0)
  {
    goto LABEL_197;
  }

LABEL_88:
  if ((v28 & 0x8000000000000000) == 0)
  {
    goto LABEL_89;
  }

LABEL_198:
  result = *(a2 + 73);
  v3 |= 0x8000000000000000;
  *(this + 45) = v3;
  *(this + 73) = result;
LABEL_89:
  if (*(a2 + 368))
  {
    result = *(a2 + 74);
    v6 |= 1uLL;
    *(this + 46) = v6;
    *(this + 74) = result;
  }

  v29 = *(a2 + 45);
  if ((v29 & 0x400000000000000) != 0)
  {
    result = *(a2 + 68);
    v3 |= 0x400000000000000uLL;
    *(this + 45) = v3;
    *(this + 68) = result;
    v29 = *(a2 + 45);
    if ((v29 & 0x1000000000000000) == 0)
    {
LABEL_93:
      if ((v29 & 0x4000000000000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_94;
    }
  }

  else if ((v29 & 0x1000000000000000) == 0)
  {
    goto LABEL_93;
  }

  v86 = *(a2 + 70);
  v3 |= 0x1000000000000000uLL;
  *(this + 45) = v3;
  *(this + 70) = v86;
  if ((*(a2 + 45) & 0x4000000000000000) != 0)
  {
LABEL_94:
    v30 = *(a2 + 72);
    v3 |= 0x4000000000000000uLL;
    *(this + 45) = v3;
    *(this + 72) = v30;
  }

LABEL_95:
  if ((*(a2 + 369) & 8) != 0)
  {
    v31 = *(a2 + 325);
    v6 |= 0x800uLL;
    *(this + 46) = v6;
    *(this + 325) = v31;
  }

  v32 = *(a2 + 45);
  if ((v32 & 0x4000) != 0)
  {
    v87 = *(a2 + 24);
    v3 |= 0x4000uLL;
    *(this + 45) = v3;
    *(this + 24) = v87;
    v32 = *(a2 + 45);
    if ((v32 & 0x1000) == 0)
    {
LABEL_99:
      if ((v32 & 0x200000000000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_204;
    }
  }

  else if ((v32 & 0x1000) == 0)
  {
    goto LABEL_99;
  }

  result = *(a2 + 22);
  v3 |= 0x1000uLL;
  *(this + 45) = v3;
  *(this + 22) = result;
  v32 = *(a2 + 45);
  if ((v32 & 0x200000000000) == 0)
  {
LABEL_100:
    if ((v32 & 0x200000000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_205;
  }

LABEL_204:
  v88 = *(a2 + 55);
  v3 |= 0x200000000000uLL;
  *(this + 45) = v3;
  *(this + 55) = v88;
  v32 = *(a2 + 45);
  if ((v32 & 0x200000000000000) == 0)
  {
LABEL_101:
    if ((v32 & 0x40) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_206;
  }

LABEL_205:
  v89 = *(a2 + 67);
  v3 |= 0x200000000000000uLL;
  *(this + 45) = v3;
  *(this + 67) = v89;
  v32 = *(a2 + 45);
  if ((v32 & 0x40) == 0)
  {
LABEL_102:
    if ((v32 & 0x1000000000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_207;
  }

LABEL_206:
  v90 = *(a2 + 7);
  v3 |= 0x40uLL;
  *(this + 45) = v3;
  *(this + 7) = v90;
  v32 = *(a2 + 45);
  if ((v32 & 0x1000000000000) == 0)
  {
LABEL_103:
    if ((v32 & 0x2000000000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_208;
  }

LABEL_207:
  v91 = *(a2 + 58);
  v3 |= 0x1000000000000uLL;
  *(this + 45) = v3;
  *(this + 58) = v91;
  v32 = *(a2 + 45);
  if ((v32 & 0x2000000000000) == 0)
  {
LABEL_104:
    if ((v32 & 0x100000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_209;
  }

LABEL_208:
  v92 = *(a2 + 59);
  v3 |= 0x2000000000000uLL;
  *(this + 45) = v3;
  *(this + 59) = v92;
  v32 = *(a2 + 45);
  if ((v32 & 0x100000) == 0)
  {
LABEL_105:
    if ((v32 & 0x400) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_210;
  }

LABEL_209:
  result = *(a2 + 30);
  v3 |= 0x100000uLL;
  *(this + 45) = v3;
  *(this + 30) = result;
  v32 = *(a2 + 45);
  if ((v32 & 0x400) == 0)
  {
LABEL_106:
    if ((v32 & 0x200000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_211;
  }

LABEL_210:
  result = *(a2 + 20);
  v3 |= 0x400uLL;
  *(this + 45) = v3;
  *(this + 20) = result;
  v32 = *(a2 + 45);
  if ((v32 & 0x200000) == 0)
  {
LABEL_107:
    if ((v32 & 0x800) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_212;
  }

LABEL_211:
  result = *(a2 + 31);
  v3 |= 0x200000uLL;
  *(this + 45) = v3;
  *(this + 31) = result;
  v32 = *(a2 + 45);
  if ((v32 & 0x800) == 0)
  {
LABEL_108:
    if ((v32 & 0x100) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_212:
  result = *(a2 + 21);
  v3 |= 0x800uLL;
  *(this + 45) = v3;
  *(this + 21) = result;
  if ((*(a2 + 45) & 0x100) != 0)
  {
LABEL_109:
    result = *(a2 + 18);
    v3 |= 0x100uLL;
    *(this + 45) = v3;
    *(this + 18) = result;
  }

LABEL_110:
  v33 = *(a2 + 46);
  if ((v33 & 0x400000) != 0)
  {
    v34 = *(a2 + 336);
    v6 |= 0x400000uLL;
    *(this + 46) = v6;
    *(this + 336) = v34;
    v33 = *(a2 + 46);
  }

  if ((v33 & 8) != 0)
  {
    v35 = *(a2 + 77);
    v6 |= 8uLL;
    *(this + 46) = v6;
    *(this + 77) = v35;
  }

  v36 = *(a2 + 45);
  if ((v36 & 0x20000000) != 0)
  {
    v37 = *(a2 + 39);
    v3 |= 0x20000000uLL;
    *(this + 45) = v3;
    *(this + 39) = v37;
    v36 = *(a2 + 45);
  }

  if ((v36 & 0x80000000) != 0)
  {
    v38 = *(a2 + 41);
    v3 |= 0x80000000uLL;
    *(this + 45) = v3;
    *(this + 41) = v38;
  }

  if ((*(a2 + 372) & 0x40) != 0)
  {
    v39 = *(a2 + 352);
    v6 |= 0x4000000000uLL;
    *(this + 46) = v6;
    *(this + 352) = v39;
  }

  v40 = *(a2 + 45);
  if ((v40 & 0x100000000) != 0)
  {
    v93 = *(a2 + 42);
    v3 |= 0x100000000uLL;
    *(this + 45) = v3;
    *(this + 42) = v93;
    v40 = *(a2 + 45);
    if ((v40 & 0x40000000) == 0)
    {
LABEL_122:
      if ((v40 & 0x10000000000000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_216;
    }
  }

  else if ((v40 & 0x40000000) == 0)
  {
    goto LABEL_122;
  }

  v94 = *(a2 + 40);
  v3 |= 0x40000000uLL;
  *(this + 45) = v3;
  *(this + 40) = v94;
  v40 = *(a2 + 45);
  if ((v40 & 0x10000000000000) == 0)
  {
LABEL_123:
    if ((v40 & 0x8000000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_217;
  }

LABEL_216:
  result = *(a2 + 62);
  v3 |= 0x10000000000000uLL;
  *(this + 45) = v3;
  *(this + 62) = result;
  v40 = *(a2 + 45);
  if ((v40 & 0x8000000000) == 0)
  {
LABEL_124:
    if ((v40 & 0x10000000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_218;
  }

LABEL_217:
  v95 = *(a2 + 49);
  v3 |= 0x8000000000uLL;
  *(this + 45) = v3;
  *(this + 49) = v95;
  v40 = *(a2 + 45);
  if ((v40 & 0x10000000000) == 0)
  {
LABEL_125:
    if ((v40 & 0x8000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_219;
  }

LABEL_218:
  v96 = *(a2 + 50);
  v3 |= 0x10000000000uLL;
  *(this + 45) = v3;
  *(this + 50) = v96;
  v40 = *(a2 + 45);
  if ((v40 & 0x8000) == 0)
  {
LABEL_126:
    if ((v40 & 0x80000000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_220;
  }

LABEL_219:
  result = *(a2 + 25);
  v3 |= 0x8000uLL;
  *(this + 45) = v3;
  *(this + 25) = result;
  v40 = *(a2 + 45);
  if ((v40 & 0x80000000000) == 0)
  {
LABEL_127:
    if ((v40 & 0x20000000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_221;
  }

LABEL_220:
  v97 = *(a2 + 53);
  v3 |= 0x80000000000uLL;
  *(this + 45) = v3;
  *(this + 53) = v97;
  v40 = *(a2 + 45);
  if ((v40 & 0x20000000000) == 0)
  {
LABEL_128:
    if ((v40 & 0x1000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_222;
  }

LABEL_221:
  v98 = *(a2 + 51);
  v3 |= 0x20000000000uLL;
  *(this + 45) = v3;
  *(this + 51) = v98;
  v40 = *(a2 + 45);
  if ((v40 & 0x1000000000) == 0)
  {
LABEL_129:
    if ((v40 & 0x200000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_223;
  }

LABEL_222:
  v99 = *(a2 + 46);
  v3 |= 0x1000000000uLL;
  *(this + 45) = v3;
  *(this + 46) = v99;
  v40 = *(a2 + 45);
  if ((v40 & 0x200000000) == 0)
  {
LABEL_130:
    if ((v40 & 0x800000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_131;
  }

LABEL_223:
  v100 = *(a2 + 43);
  v3 |= 0x200000000uLL;
  *(this + 45) = v3;
  *(this + 43) = v100;
  if ((*(a2 + 45) & 0x800000000) != 0)
  {
LABEL_131:
    v41 = *(a2 + 45);
    *(this + 45) = v3 | 0x800000000;
    *(this + 45) = v41;
  }

LABEL_132:
  v42 = *(a2 + 46);
  if ((v42 & 0x200) != 0)
  {
    v43 = *(a2 + 323);
    v6 |= 0x200uLL;
    *(this + 46) = v6;
    *(this + 323) = v43;
    v42 = *(a2 + 46);
  }

  if ((v42 & 0x80000) != 0)
  {
    v44 = *(a2 + 333);
    *(this + 46) = v6 | 0x80000;
    *(this + 333) = v44;
  }

  v45 = *(a2 + 45);
  if ((v45 & 0x400000000) != 0)
  {
    v101 = *(a2 + 44);
    *(this + 45) |= 0x400000000uLL;
    *(this + 44) = v101;
    v45 = *(a2 + 45);
    if ((v45 & 2) == 0)
    {
LABEL_138:
      if ((v45 & 0x20) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_227;
    }
  }

  else if ((v45 & 2) == 0)
  {
    goto LABEL_138;
  }

  v102 = *(a2 + 2);
  *(this + 45) |= 2uLL;
  *(this + 2) = v102;
  v45 = *(a2 + 45);
  if ((v45 & 0x20) == 0)
  {
LABEL_139:
    if ((v45 & 4) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_228;
  }

LABEL_227:
  v103 = *(a2 + 6);
  *(this + 45) |= 0x20uLL;
  *(this + 6) = v103;
  v45 = *(a2 + 45);
  if ((v45 & 4) == 0)
  {
LABEL_140:
    if ((v45 & 8) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_229;
  }

LABEL_228:
  v104 = *(a2 + 3);
  *(this + 45) |= 4uLL;
  *(this + 3) = v104;
  v45 = *(a2 + 45);
  if ((v45 & 8) == 0)
  {
LABEL_141:
    if ((v45 & 0x10) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_230;
  }

LABEL_229:
  v105 = *(a2 + 4);
  *(this + 45) |= 8uLL;
  *(this + 4) = v105;
  v45 = *(a2 + 45);
  if ((v45 & 0x10) == 0)
  {
LABEL_142:
    if ((v45 & 0x4000000000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_231;
  }

LABEL_230:
  v106 = *(a2 + 5);
  *(this + 45) |= 0x10uLL;
  *(this + 5) = v106;
  v45 = *(a2 + 45);
  if ((v45 & 0x4000000000000) == 0)
  {
LABEL_143:
    if ((v45 & 0x2000) == 0)
    {
      return result;
    }

LABEL_232:
    result = *(a2 + 23);
    *(this + 45) |= 0x2000uLL;
    *(this + 23) = result;
    return result;
  }

LABEL_231:
  v107 = *(a2 + 60);
  *(this + 45) |= 0x4000000000000uLL;
  *(this + 60) = v107;
  if ((*(a2 + 45) & 0x2000) != 0)
  {
    goto LABEL_232;
  }

  return result;
}

CMMsl *CMMsl::KappaSevereCrashResult::operator=(CMMsl *a1, const CMMsl::KappaSevereCrashResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaSevereCrashResult::KappaSevereCrashResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaSevereCrashResult *a2, CMMsl::KappaSevereCrashResult *a3)
{
  v3 = *(this + 360);
  *(this + 360) = *(a2 + 360);
  *(a2 + 360) = v3;
  LODWORD(v3) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v3;
  LODWORD(v3) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  v4 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v4;
  v5 = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v5;
  LODWORD(v3) = *(this + 75);
  *(this + 75) = *(a2 + 75);
  *(a2 + 75) = v3;
  LODWORD(v3) = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v3;
  LODWORD(v3) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v3;
  LODWORD(v3) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v3;
  LODWORD(v3) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v3;
  v6 = *(this + 66);
  *(this + 66) = *(a2 + 66);
  *(a2 + 66) = v6;
  v7 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v7;
  LODWORD(v3) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
  LODWORD(v3) = *(this + 78);
  *(this + 78) = *(a2 + 78);
  *(a2 + 78) = v3;
  LODWORD(v3) = *(this + 79);
  *(this + 79) = *(a2 + 79);
  *(a2 + 79) = v3;
  v8 = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v8;
  v9 = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v9;
  LODWORD(v3) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v3;
  v10 = *(this + 71);
  *(this + 71) = *(a2 + 71);
  *(a2 + 71) = v10;
  v11 = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v11;
  LODWORD(v3) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v13;
  LOBYTE(v13) = *(this + 321);
  *(this + 321) = *(a2 + 321);
  *(a2 + 321) = v13;
  LOBYTE(v13) = *(this + 322);
  *(this + 322) = *(a2 + 322);
  *(a2 + 322) = v13;
  LOBYTE(v13) = *(this + 330);
  *(this + 330) = *(a2 + 330);
  *(a2 + 330) = v13;
  LOBYTE(v13) = *(this + 331);
  *(this + 331) = *(a2 + 331);
  *(a2 + 331) = v13;
  LOBYTE(v13) = *(this + 342);
  *(this + 342) = *(a2 + 342);
  *(a2 + 342) = v13;
  LOBYTE(v13) = *(this + 340);
  *(this + 340) = *(a2 + 340);
  *(a2 + 340) = v13;
  LOBYTE(v13) = *(this + 327);
  *(this + 327) = *(a2 + 327);
  *(a2 + 327) = v13;
  LOBYTE(v13) = *(this + 343);
  *(this + 343) = *(a2 + 343);
  *(a2 + 343) = v13;
  LOBYTE(v13) = *(this + 344);
  *(this + 344) = *(a2 + 344);
  *(a2 + 344) = v13;
  LOBYTE(v13) = *(this + 324);
  *(this + 324) = *(a2 + 324);
  *(a2 + 324) = v13;
  LOBYTE(v13) = *(this + 339);
  *(this + 339) = *(a2 + 339);
  *(a2 + 339) = v13;
  LOBYTE(v13) = *(this + 328);
  *(this + 328) = *(a2 + 328);
  *(a2 + 328) = v13;
  LOBYTE(v13) = *(this + 341);
  *(this + 341) = *(a2 + 341);
  *(a2 + 341) = v13;
  LOBYTE(v13) = *(this + 334);
  *(this + 334) = *(a2 + 334);
  *(a2 + 334) = v13;
  LOBYTE(v13) = *(this + 353);
  *(this + 353) = *(a2 + 353);
  *(a2 + 353) = v13;
  LOBYTE(v13) = *(this + 349);
  *(this + 349) = *(a2 + 349);
  *(a2 + 349) = v13;
  LOBYTE(v13) = *(this + 354);
  *(this + 354) = *(a2 + 354);
  *(a2 + 354) = v13;
  LOBYTE(v13) = *(this + 350);
  *(this + 350) = *(a2 + 350);
  *(a2 + 350) = v13;
  LOBYTE(v13) = *(this + 345);
  *(this + 345) = *(a2 + 345);
  *(a2 + 345) = v13;
  LOBYTE(v13) = *(this + 326);
  *(this + 326) = *(a2 + 326);
  *(a2 + 326) = v13;
  LOBYTE(v13) = *(this + 335);
  *(this + 335) = *(a2 + 335);
  *(a2 + 335) = v13;
  LOBYTE(v13) = *(this + 355);
  *(this + 355) = *(a2 + 355);
  *(a2 + 355) = v13;
  LOBYTE(v13) = *(this + 351);
  *(this + 351) = *(a2 + 351);
  *(a2 + 351) = v13;
  LODWORD(v13) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v13;
  LOBYTE(v13) = *(this + 337);
  *(this + 337) = *(a2 + 337);
  *(a2 + 337) = v13;
  LOBYTE(v13) = *(this + 338);
  *(this + 338) = *(a2 + 338);
  *(a2 + 338) = v13;
  LOBYTE(v13) = *(this + 320);
  *(this + 320) = *(a2 + 320);
  *(a2 + 320) = v13;
  LODWORD(v13) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v13;
  LOBYTE(v13) = *(this + 358);
  *(this + 358) = *(a2 + 358);
  *(a2 + 358) = v13;
  LOBYTE(v13) = *(this + 356);
  *(this + 356) = *(a2 + 356);
  *(a2 + 356) = v13;
  LOBYTE(v13) = *(this + 357);
  *(this + 357) = *(a2 + 357);
  *(a2 + 357) = v13;
  LOBYTE(v13) = *(this + 348);
  *(this + 348) = *(a2 + 348);
  *(a2 + 348) = v13;
  LOBYTE(v13) = *(this + 347);
  *(this + 347) = *(a2 + 347);
  *(a2 + 347) = v13;
  LOBYTE(v13) = *(this + 346);
  *(this + 346) = *(a2 + 346);
  *(a2 + 346) = v13;
  LODWORD(v13) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v13;
  LODWORD(v13) = *(this + 65);
  *(this + 65) = *(a2 + 65);
  *(a2 + 65) = v13;
  LODWORD(v13) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v13;
  LODWORD(v13) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v13;
  LOBYTE(v13) = *(this + 332);
  *(this + 332) = *(a2 + 332);
  *(a2 + 332) = v13;
  LOBYTE(v13) = *(this + 329);
  *(this + 329) = *(a2 + 329);
  *(a2 + 329) = v13;
  LODWORD(v13) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v13;
  LODWORD(v13) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v13;
  LODWORD(v13) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v13;
  LODWORD(v3) = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v3;
  LODWORD(v3) = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v3;
  LODWORD(v3) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v3;
  LODWORD(v13) = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v13;
  LODWORD(v13) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v13;
  LOBYTE(v13) = *(this + 325);
  *(this + 325) = *(a2 + 325);
  *(a2 + 325) = v13;
  LODWORD(v13) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v13;
  LODWORD(v3) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  LODWORD(v13) = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v13;
  LODWORD(v13) = *(this + 67);
  *(this + 67) = *(a2 + 67);
  *(a2 + 67) = v13;
  v14 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v14;
  LODWORD(v14) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v14;
  LODWORD(v14) = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v14;
  LODWORD(v3) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v3;
  LODWORD(v3) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  LODWORD(v3) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v3;
  LODWORD(v3) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v3;
  LODWORD(v3) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  LOBYTE(v14) = *(this + 336);
  *(this + 336) = *(a2 + 336);
  *(a2 + 336) = v14;
  LODWORD(v14) = *(this + 77);
  *(this + 77) = *(a2 + 77);
  *(a2 + 77) = v14;
  LODWORD(v14) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v14;
  LODWORD(v14) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v14;
  LOBYTE(v14) = *(this + 352);
  *(this + 352) = *(a2 + 352);
  *(a2 + 352) = v14;
  LODWORD(v14) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v14;
  LODWORD(v14) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v14;
  LODWORD(v3) = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v3;
  LODWORD(v14) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v14;
  LODWORD(v14) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v14;
  LODWORD(v3) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  LODWORD(v14) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v14;
  LODWORD(v14) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v14;
  LODWORD(v14) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v14;
  LODWORD(v14) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v14;
  LODWORD(v14) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v14;
  LOBYTE(v14) = *(this + 323);
  *(this + 323) = *(a2 + 323);
  *(a2 + 323) = v14;
  LOBYTE(v14) = *(this + 333);
  *(this + 333) = *(a2 + 333);
  *(a2 + 333) = v14;
  LODWORD(v14) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v14;
  v15 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v15;
  v16 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v16;
  v17 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v17;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v19;
  LODWORD(v19) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v19;
  result = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = result;
  return result;
}

float CMMsl::KappaSevereCrashResult::KappaSevereCrashResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21538;
  *(a1 + 360) = *(a2 + 360);
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 252) = *(a2 + 252);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 321) = *(a2 + 321);
  *(a1 + 322) = *(a2 + 322);
  *(a1 + 330) = *(a2 + 330);
  *(a1 + 331) = *(a2 + 331);
  *(a1 + 342) = *(a2 + 342);
  *(a1 + 340) = *(a2 + 340);
  *(a1 + 327) = *(a2 + 327);
  *(a1 + 343) = *(a2 + 343);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 339) = *(a2 + 339);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 341) = *(a2 + 341);
  *(a1 + 334) = *(a2 + 334);
  *(a1 + 353) = *(a2 + 353);
  *(a1 + 349) = *(a2 + 349);
  *(a1 + 354) = *(a2 + 354);
  *(a1 + 350) = *(a2 + 350);
  *(a1 + 345) = *(a2 + 345);
  *(a1 + 326) = *(a2 + 326);
  *(a1 + 335) = *(a2 + 335);
  *(a1 + 355) = *(a2 + 355);
  *(a1 + 351) = *(a2 + 351);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 337) = *(a2 + 337);
  *(a1 + 338) = *(a2 + 338);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 358) = *(a2 + 358);
  *(a1 + 356) = *(a2 + 356);
  *(a1 + 357) = *(a2 + 357);
  *(a1 + 348) = *(a2 + 348);
  *(a1 + 347) = *(a2 + 347);
  *(a1 + 346) = *(a2 + 346);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 332) = *(a2 + 332);
  *(a1 + 329) = *(a2 + 329);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 325) = *(a2 + 325);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 323) = *(a2 + 323);
  *(a1 + 333) = *(a2 + 333);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 240) = *(a2 + 240);
  result = *(a2 + 92);
  *(a1 + 92) = result;
  return result;
}

CMMsl *CMMsl::KappaSevereCrashResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaSevereCrashResult::KappaSevereCrashResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaSevereCrashResult::formatText(CMMsl::KappaSevereCrashResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 368) & 0x40) != 0)
  {
    v5 = *(this + 320);
    PB::TextFormatter::format(a2, "anyLowSense");
  }

  v6 = *(this + 45);
  if ((v6 & 0x100) != 0)
  {
    PB::TextFormatter::format(a2, "autocorrelationPeriodicCount", *(this + 18));
    v6 = *(this + 45);
  }

  if ((v6 & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "autocorrelationPeriodicCountThreshold", *(this + 19));
  }

  if ((*(this + 368) & 0x80) != 0)
  {
    v7 = *(this + 321);
    PB::TextFormatter::format(a2, "crashDetectorDecision");
  }

  v8 = *(this + 45);
  if (v8)
  {
    v26 = *(this + 1);
    PB::TextFormatter::format(a2, "crashTimestamp");
    v8 = *(this + 45);
    if ((v8 & 0x400) == 0)
    {
LABEL_11:
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_131;
    }
  }

  else if ((v8 & 0x400) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(a2, "cumulativeRotation", *(this + 20));
  v8 = *(this + 45);
  if ((v8 & 0x800) == 0)
  {
LABEL_12:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_132;
  }

LABEL_131:
  PB::TextFormatter::format(a2, "cumulativeRotationHarmonicMean", *(this + 21));
  v8 = *(this + 45);
  if ((v8 & 0x1000) == 0)
  {
LABEL_13:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_133;
  }

LABEL_132:
  PB::TextFormatter::format(a2, "currentCadence", *(this + 22));
  v8 = *(this + 45);
  if ((v8 & 0x2000) == 0)
  {
LABEL_14:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_134;
  }

LABEL_133:
  PB::TextFormatter::format(a2, "deltaRealTrigger", *(this + 23));
  v8 = *(this + 45);
  if ((v8 & 0x4000) == 0)
  {
LABEL_15:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_135;
  }

LABEL_134:
  v27 = *(this + 24);
  PB::TextFormatter::format(a2, "deltaSteps");
  v8 = *(this + 45);
  if ((v8 & 0x8000) == 0)
  {
LABEL_16:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_135:
  PB::TextFormatter::format(a2, "distanceToNearestRoad", *(this + 25));
  if ((*(this + 45) & 0x10000) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(a2, "distanceToNearestRoadThreshold", *(this + 26));
  }

LABEL_18:
  v9 = *(this + 46);
  if ((v9 & 0x100) != 0)
  {
    v28 = *(this + 322);
    PB::TextFormatter::format(a2, "earlyCrashDetectorDecision");
    v9 = *(this + 46);
    if ((v9 & 0x200) == 0)
    {
LABEL_20:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v29 = *(this + 323);
  PB::TextFormatter::format(a2, "escalationCandidate");
  if ((*(this + 46) & 0x400) != 0)
  {
LABEL_21:
    v10 = *(this + 324);
    PB::TextFormatter::format(a2, "escalationCandidateSuppressed");
  }

LABEL_22:
  v11 = *(this + 45);
  if ((v11 & 0x20000) != 0)
  {
    v12 = *(this + 27);
    PB::TextFormatter::format(a2, "faultCounter");
    v11 = *(this + 45);
  }

  if ((v11 & 2) != 0)
  {
    v13 = *(this + 2);
    PB::TextFormatter::format(a2, "firstTimestampMAPDecision");
  }

  if ((*(this + 369) & 8) != 0)
  {
    v14 = *(this + 325);
    PB::TextFormatter::format(a2, "hasSteps");
  }

  if ((*(this + 362) & 4) != 0)
  {
    v15 = *(this + 28);
    PB::TextFormatter::format(a2, "highSensitivityBitmap");
  }

  v16 = *(this + 46);
  if ((v16 & 0x1000) != 0)
  {
    v30 = *(this + 326);
    PB::TextFormatter::format(a2, "isAirbagDetectedOverWindow");
    v16 = *(this + 46);
    if ((v16 & 0x2000) == 0)
    {
LABEL_32:
      if ((v16 & 0x4000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_142;
    }
  }

  else if ((v16 & 0x2000) == 0)
  {
    goto LABEL_32;
  }

  v31 = *(this + 327);
  PB::TextFormatter::format(a2, "isAutocorrelationDecided");
  v16 = *(this + 46);
  if ((v16 & 0x4000) == 0)
  {
LABEL_33:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_143;
  }

LABEL_142:
  v32 = *(this + 328);
  PB::TextFormatter::format(a2, "isCrashDetected");
  v16 = *(this + 46);
  if ((v16 & 0x8000) == 0)
  {
LABEL_34:
    if ((v16 & 0x10000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_144;
  }

LABEL_143:
  v33 = *(this + 329);
  PB::TextFormatter::format(a2, "isDecisionMadeAtBoundary");
  v16 = *(this + 46);
  if ((v16 & 0x10000) == 0)
  {
LABEL_35:
    if ((v16 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_145;
  }

LABEL_144:
  v34 = *(this + 330);
  PB::TextFormatter::format(a2, "isDescalationDecided");
  v16 = *(this + 46);
  if ((v16 & 0x20000) == 0)
  {
LABEL_36:
    if ((v16 & 0x40000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_146;
  }

LABEL_145:
  v35 = *(this + 331);
  PB::TextFormatter::format(a2, "isDescalationRequired");
  v16 = *(this + 46);
  if ((v16 & 0x40000) == 0)
  {
LABEL_37:
    if ((v16 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_147;
  }

LABEL_146:
  v36 = *(this + 332);
  PB::TextFormatter::format(a2, "isEvaluatingMovingGps");
  v16 = *(this + 46);
  if ((v16 & 0x80000) == 0)
  {
LABEL_38:
    if ((v16 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_148;
  }

LABEL_147:
  v37 = *(this + 333);
  PB::TextFormatter::format(a2, "isFreeFallDetectedEpoch");
  v16 = *(this + 46);
  if ((v16 & 0x100000) == 0)
  {
LABEL_39:
    if ((v16 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_149;
  }

LABEL_148:
  v38 = *(this + 334);
  PB::TextFormatter::format(a2, "isHighSpeedCrashDetected");
  v16 = *(this + 46);
  if ((v16 & 0x200000) == 0)
  {
LABEL_40:
    if ((v16 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_150;
  }

LABEL_149:
  v39 = *(this + 335);
  PB::TextFormatter::format(a2, "isHighSpeedCrashDetectedOverWindow");
  v16 = *(this + 46);
  if ((v16 & 0x400000) == 0)
  {
LABEL_41:
    if ((v16 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_151;
  }

LABEL_150:
  v40 = *(this + 336);
  PB::TextFormatter::format(a2, "isHighSpeedDetectedOverWindow");
  v16 = *(this + 46);
  if ((v16 & 0x800000) == 0)
  {
LABEL_42:
    if ((v16 & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_152;
  }

LABEL_151:
  v41 = *(this + 337);
  PB::TextFormatter::format(a2, "isLowSensCrashDetected");
  v16 = *(this + 46);
  if ((v16 & 0x1000000) == 0)
  {
LABEL_43:
    if ((v16 & 0x2000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_153;
  }

LABEL_152:
  v42 = *(this + 338);
  PB::TextFormatter::format(a2, "isLowSensRolloverCrashDetected");
  v16 = *(this + 46);
  if ((v16 & 0x2000000) == 0)
  {
LABEL_44:
    if ((v16 & 0x4000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_154;
  }

LABEL_153:
  v43 = *(this + 339);
  PB::TextFormatter::format(a2, "isMAPFPDecided");
  v16 = *(this + 46);
  if ((v16 & 0x4000000) == 0)
  {
LABEL_45:
    if ((v16 & 0x8000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_155;
  }

LABEL_154:
  v44 = *(this + 340);
  PB::TextFormatter::format(a2, "isQuiescenceDecided");
  v16 = *(this + 46);
  if ((v16 & 0x8000000) == 0)
  {
LABEL_46:
    if ((v16 & 0x10000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_156;
  }

LABEL_155:
  v45 = *(this + 341);
  PB::TextFormatter::format(a2, "isRolloverCrashDetected");
  v16 = *(this + 46);
  if ((v16 & 0x10000000) == 0)
  {
LABEL_47:
    if ((v16 & 0x20000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_157;
  }

LABEL_156:
  v46 = *(this + 342);
  PB::TextFormatter::format(a2, "isStepsDecided");
  v16 = *(this + 46);
  if ((v16 & 0x20000000) == 0)
  {
LABEL_48:
    if ((v16 & 0x40000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_157:
  v47 = *(this + 343);
  PB::TextFormatter::format(a2, "isTriggerClustersDecided");
  if ((*(this + 46) & 0x40000000) != 0)
  {
LABEL_49:
    v17 = *(this + 344);
    PB::TextFormatter::format(a2, "isUshaFPDecided");
  }

LABEL_50:
  v18 = *(this + 45);
  if ((v18 & 4) != 0)
  {
    v48 = *(this + 3);
    PB::TextFormatter::format(a2, "lastLocalRealTriggerTimestamp");
    v18 = *(this + 45);
    if ((v18 & 8) == 0)
    {
LABEL_52:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_161;
    }
  }

  else if ((v18 & 8) == 0)
  {
    goto LABEL_52;
  }

  v49 = *(this + 4);
  PB::TextFormatter::format(a2, "lastRemoteRealTriggerTimestamp");
  v18 = *(this + 45);
  if ((v18 & 0x10) == 0)
  {
LABEL_53:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_162;
  }

LABEL_161:
  v50 = *(this + 5);
  PB::TextFormatter::format(a2, "lastRemoteSampleTimestamp");
  v18 = *(this + 45);
  if ((v18 & 0x20) == 0)
  {
LABEL_54:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_163;
  }

LABEL_162:
  v51 = *(this + 6);
  PB::TextFormatter::format(a2, "lastTimestampMAPDecision");
  v18 = *(this + 45);
  if ((v18 & 0x80000) == 0)
  {
LABEL_55:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_164;
  }

LABEL_163:
  v52 = *(this + 29);
  PB::TextFormatter::format(a2, "lowSpeedOrFakeCountAtBoundaryThreshold");
  v18 = *(this + 45);
  if ((v18 & 0x100000) == 0)
  {
LABEL_56:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_165;
  }

LABEL_164:
  PB::TextFormatter::format(a2, "maxPulse", *(this + 30));
  v18 = *(this + 45);
  if ((v18 & 0x200000) == 0)
  {
LABEL_57:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_166;
  }

LABEL_165:
  PB::TextFormatter::format(a2, "maxPulseHarmonicMean", *(this + 31));
  v18 = *(this + 45);
  if ((v18 & 0x400000) == 0)
  {
LABEL_58:
    if ((v18 & 0x800000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_167;
  }

LABEL_166:
  PB::TextFormatter::format(a2, "maximumHoldDuration", *(this + 32));
  v18 = *(this + 45);
  if ((v18 & 0x800000) == 0)
  {
LABEL_59:
    if ((v18 & 0x1000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_168;
  }

LABEL_167:
  PB::TextFormatter::format(a2, "minimumHoldDuration", *(this + 33));
  v18 = *(this + 45);
  if ((v18 & 0x1000000) == 0)
  {
LABEL_60:
    if ((v18 & 0x2000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_169;
  }

LABEL_168:
  v53 = *(this + 34);
  PB::TextFormatter::format(a2, "movingCountThreshold");
  v18 = *(this + 45);
  if ((v18 & 0x2000000) == 0)
  {
LABEL_61:
    if ((v18 & 0x4000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_170;
  }

LABEL_169:
  v54 = *(this + 35);
  PB::TextFormatter::format(a2, "movingCountThresholdFromSydneyB");
  v18 = *(this + 45);
  if ((v18 & 0x4000000) == 0)
  {
LABEL_62:
    if ((v18 & 0x8000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_171;
  }

LABEL_170:
  PB::TextFormatter::format(a2, "movingGpsBlockoutWindow", *(this + 36));
  v18 = *(this + 45);
  if ((v18 & 0x8000000) == 0)
  {
LABEL_63:
    if ((v18 & 0x10000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_172;
  }

LABEL_171:
  v55 = *(this + 37);
  PB::TextFormatter::format(a2, "movingGpsCount");
  v18 = *(this + 45);
  if ((v18 & 0x10000000) == 0)
  {
LABEL_64:
    if ((v18 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_173;
  }

LABEL_172:
  v56 = *(this + 38);
  PB::TextFormatter::format(a2, "movingGpsCountTotal");
  v18 = *(this + 45);
  if ((v18 & 0x20000000) == 0)
  {
LABEL_65:
    if ((v18 & 0x40000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_174;
  }

LABEL_173:
  v57 = *(this + 39);
  PB::TextFormatter::format(a2, "numAudioSkiing");
  v18 = *(this + 45);
  if ((v18 & 0x40000000) == 0)
  {
LABEL_66:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_175;
  }

LABEL_174:
  v58 = *(this + 40);
  PB::TextFormatter::format(a2, "numAudioSkiingThreshold");
  v18 = *(this + 45);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v18 & 0x100000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_176;
  }

LABEL_175:
  v59 = *(this + 41);
  PB::TextFormatter::format(a2, "numBaroIncreasesSkiing");
  v18 = *(this + 45);
  if ((v18 & 0x100000000) == 0)
  {
LABEL_68:
    if ((v18 & 0x200000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_177;
  }

LABEL_176:
  v60 = *(this + 42);
  PB::TextFormatter::format(a2, "numBaroIncreasesSkiingThreshold");
  v18 = *(this + 45);
  if ((v18 & 0x200000000) == 0)
  {
LABEL_69:
    if ((v18 & 0x400000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_178;
  }

LABEL_177:
  v61 = *(this + 43);
  PB::TextFormatter::format(a2, "numDeescalationAOI");
  v18 = *(this + 45);
  if ((v18 & 0x400000000) == 0)
  {
LABEL_70:
    if ((v18 & 0x800000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_179;
  }

LABEL_178:
  v62 = *(this + 44);
  PB::TextFormatter::format(a2, "numDeescalationMAP");
  v18 = *(this + 45);
  if ((v18 & 0x800000000) == 0)
  {
LABEL_71:
    if ((v18 & 0x1000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_180;
  }

LABEL_179:
  v63 = *(this + 45);
  PB::TextFormatter::format(a2, "numDeescalationTwoLevel");
  v18 = *(this + 45);
  if ((v18 & 0x1000000000) == 0)
  {
LABEL_72:
    if ((v18 & 0x2000000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_181;
  }

LABEL_180:
  v64 = *(this + 46);
  PB::TextFormatter::format(a2, "numDeescalationUsha");
  v18 = *(this + 45);
  if ((v18 & 0x2000000000) == 0)
  {
LABEL_73:
    if ((v18 & 0x4000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_182;
  }

LABEL_181:
  v65 = *(this + 47);
  PB::TextFormatter::format(a2, "numGpsSamplesInHistory");
  v18 = *(this + 45);
  if ((v18 & 0x4000000000) == 0)
  {
LABEL_74:
    if ((v18 & 0x8000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_183;
  }

LABEL_182:
  v66 = *(this + 48);
  PB::TextFormatter::format(a2, "numLowOrFakeGpsSamplesInHistory");
  v18 = *(this + 45);
  if ((v18 & 0x8000000000) == 0)
  {
LABEL_75:
    if ((v18 & 0x10000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_184;
  }

LABEL_183:
  v67 = *(this + 49);
  PB::TextFormatter::format(a2, "numTriggersWithRecentSkiLiftDetected");
  v18 = *(this + 45);
  if ((v18 & 0x10000000000) == 0)
  {
LABEL_76:
    if ((v18 & 0x20000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_185;
  }

LABEL_184:
  v68 = *(this + 50);
  PB::TextFormatter::format(a2, "numTriggersWithTrueBtHint");
  v18 = *(this + 45);
  if ((v18 & 0x20000000000) == 0)
  {
LABEL_77:
    if ((v18 & 0x40000000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_186;
  }

LABEL_185:
  v69 = *(this + 51);
  PB::TextFormatter::format(a2, "numUshaCPEpoch");
  v18 = *(this + 45);
  if ((v18 & 0x40000000000) == 0)
  {
LABEL_78:
    if ((v18 & 0x80000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_187;
  }

LABEL_186:
  v70 = *(this + 52);
  PB::TextFormatter::format(a2, "numUshaCPEpochThreshold");
  v18 = *(this + 45);
  if ((v18 & 0x80000000000) == 0)
  {
LABEL_79:
    if ((v18 & 0x100000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_188;
  }

LABEL_187:
  v71 = *(this + 53);
  PB::TextFormatter::format(a2, "numUshaFPEpoch");
  v18 = *(this + 45);
  if ((v18 & 0x100000000000) == 0)
  {
LABEL_80:
    if ((v18 & 0x200000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_189;
  }

LABEL_188:
  v72 = *(this + 54);
  PB::TextFormatter::format(a2, "numUshaFPEpochThreshold");
  v18 = *(this + 45);
  if ((v18 & 0x200000000000) == 0)
  {
LABEL_81:
    if ((v18 & 0x400000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_190;
  }

LABEL_189:
  v73 = *(this + 55);
  PB::TextFormatter::format(a2, "pedometerArmConstrainedState");
  v18 = *(this + 45);
  if ((v18 & 0x400000000000) == 0)
  {
LABEL_82:
    if ((v18 & 0x800000000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_191;
  }

LABEL_190:
  PB::TextFormatter::format(a2, "quiescenceCumulativeRotationHarmonicMeanThreshold", *(this + 56));
  v18 = *(this + 45);
  if ((v18 & 0x800000000000) == 0)
  {
LABEL_83:
    if ((v18 & 0x1000000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_192;
  }

LABEL_191:
  PB::TextFormatter::format(a2, "quiescenceMaxPulseHarmonicMeanThreshold", *(this + 57));
  v18 = *(this + 45);
  if ((v18 & 0x1000000000000) == 0)
  {
LABEL_84:
    if ((v18 & 0x2000000000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_193;
  }

LABEL_192:
  v74 = *(this + 58);
  PB::TextFormatter::format(a2, "quiescencePulseEpochCount");
  v18 = *(this + 45);
  if ((v18 & 0x2000000000000) == 0)
  {
LABEL_85:
    if ((v18 & 0x4000000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_194;
  }

LABEL_193:
  v75 = *(this + 59);
  PB::TextFormatter::format(a2, "quiescenceSpinEpochCount");
  v18 = *(this + 45);
  if ((v18 & 0x4000000000000) == 0)
  {
LABEL_86:
    if ((v18 & 0x8000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_194:
  v76 = *(this + 60);
  PB::TextFormatter::format(a2, "sameEventState");
  if ((*(this + 45) & 0x8000000000000) != 0)
  {
LABEL_87:
    PB::TextFormatter::format(a2, "secondDeescalationHoldDuration", *(this + 61));
  }

LABEL_88:
  v19 = *(this + 46);
  if ((v19 & 0x80000000) != 0)
  {
    v77 = *(this + 345);
    PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfAutocorrelationCondition");
    v19 = *(this + 46);
    if ((v19 & 0x100000000) == 0)
    {
LABEL_90:
      if ((v19 & 0x200000000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_198;
    }
  }

  else if ((v19 & 0x100000000) == 0)
  {
    goto LABEL_90;
  }

  v78 = *(this + 346);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfCrashClassifierCondition");
  v19 = *(this + 46);
  if ((v19 & 0x200000000) == 0)
  {
LABEL_91:
    if ((v19 & 0x400000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_199;
  }

LABEL_198:
  v79 = *(this + 347);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfJointDetectionCondition");
  v19 = *(this + 46);
  if ((v19 & 0x400000000) == 0)
  {
LABEL_92:
    if ((v19 & 0x800000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_200;
  }

LABEL_199:
  v80 = *(this + 348);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfMAPFPCondition");
  v19 = *(this + 46);
  if ((v19 & 0x800000000) == 0)
  {
LABEL_93:
    if ((v19 & 0x1000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_201;
  }

LABEL_200:
  v81 = *(this + 349);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfMovingCondition");
  v19 = *(this + 46);
  if ((v19 & 0x1000000000) == 0)
  {
LABEL_94:
    if ((v19 & 0x2000000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_202;
  }

LABEL_201:
  v82 = *(this + 350);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfQuiescenceCondition");
  v19 = *(this + 46);
  if ((v19 & 0x2000000000) == 0)
  {
LABEL_95:
    if ((v19 & 0x4000000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_203;
  }

LABEL_202:
  v83 = *(this + 351);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfSkiLiftCondition");
  v19 = *(this + 46);
  if ((v19 & 0x4000000000) == 0)
  {
LABEL_96:
    if ((v19 & 0x8000000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_204;
  }

LABEL_203:
  v84 = *(this + 352);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfSkiingCondition");
  v19 = *(this + 46);
  if ((v19 & 0x8000000000) == 0)
  {
LABEL_97:
    if ((v19 & 0x10000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_205;
  }

LABEL_204:
  v85 = *(this + 353);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfStaticCondition");
  v19 = *(this + 46);
  if ((v19 & 0x10000000000) == 0)
  {
LABEL_98:
    if ((v19 & 0x20000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_206;
  }

LABEL_205:
  v86 = *(this + 354);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfStepsCondition");
  v19 = *(this + 46);
  if ((v19 & 0x20000000000) == 0)
  {
LABEL_99:
    if ((v19 & 0x40000000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_207;
  }

LABEL_206:
  v87 = *(this + 355);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfTriggerClustersCondition");
  v19 = *(this + 46);
  if ((v19 & 0x40000000000) == 0)
  {
LABEL_100:
    if ((v19 & 0x80000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_208;
  }

LABEL_207:
  v88 = *(this + 356);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfTwoLevelSensitivityCondition");
  v19 = *(this + 46);
  if ((v19 & 0x80000000000) == 0)
  {
LABEL_101:
    if ((v19 & 0x100000000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

LABEL_208:
  v89 = *(this + 357);
  PB::TextFormatter::format(a2, "shouldDeescalateBecauseOfUshaFPCondition");
  if ((*(this + 46) & 0x100000000000) != 0)
  {
LABEL_102:
    v20 = *(this + 358);
    PB::TextFormatter::format(a2, "shouldEnableHighSensBecauseOfDistanceToRoadCondition");
  }

LABEL_103:
  v21 = *(this + 45);
  if ((v21 & 0x10000000000000) != 0)
  {
    PB::TextFormatter::format(a2, "skiingPressureChangeOverEpochThreshold", *(this + 62));
    v21 = *(this + 45);
    if ((v21 & 0x20000000000000) == 0)
    {
LABEL_105:
      if ((v21 & 0x40000000000000) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_212;
    }
  }

  else if ((v21 & 0x20000000000000) == 0)
  {
    goto LABEL_105;
  }

  v90 = *(this + 63);
  PB::TextFormatter::format(a2, "staticCountThreshold");
  v21 = *(this + 45);
  if ((v21 & 0x40000000000000) == 0)
  {
LABEL_106:
    if ((v21 & 0x80000000000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_213;
  }

LABEL_212:
  v91 = *(this + 64);
  PB::TextFormatter::format(a2, "staticGpsCount");
  v21 = *(this + 45);
  if ((v21 & 0x80000000000000) == 0)
  {
LABEL_107:
    if ((v21 & 0x100000000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_214;
  }

LABEL_213:
  v92 = *(this + 65);
  PB::TextFormatter::format(a2, "staticGpsCountTotal");
  v21 = *(this + 45);
  if ((v21 & 0x100000000000000) == 0)
  {
LABEL_108:
    if ((v21 & 0x200000000000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_215;
  }

LABEL_214:
  v93 = *(this + 66);
  PB::TextFormatter::format(a2, "stationaryCountMissingAsNoOpThreshold");
  v21 = *(this + 45);
  if ((v21 & 0x200000000000000) == 0)
  {
LABEL_109:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_216;
  }

LABEL_215:
  v94 = *(this + 67);
  PB::TextFormatter::format(a2, "stepCountEventTimestamp");
  v21 = *(this + 45);
  if ((v21 & 0x40) == 0)
  {
LABEL_110:
    if ((v21 & 0x400000000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_217;
  }

LABEL_216:
  v95 = *(this + 7);
  PB::TextFormatter::format(a2, "stepCountEventTimestamp64");
  v21 = *(this + 45);
  if ((v21 & 0x400000000000000) == 0)
  {
LABEL_111:
    if ((v21 & 0x800000000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_218;
  }

LABEL_217:
  PB::TextFormatter::format(a2, "stepsCadence", *(this + 68));
  v21 = *(this + 45);
  if ((v21 & 0x800000000000000) == 0)
  {
LABEL_112:
    if ((v21 & 0x1000000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_219;
  }

LABEL_218:
  PB::TextFormatter::format(a2, "stepsCadenceThreshold", *(this + 69));
  v21 = *(this + 45);
  if ((v21 & 0x1000000000000000) == 0)
  {
LABEL_113:
    if ((v21 & 0x2000000000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_220;
  }

LABEL_219:
  v96 = *(this + 70);
  PB::TextFormatter::format(a2, "stepsCount");
  v21 = *(this + 45);
  if ((v21 & 0x2000000000000000) == 0)
  {
LABEL_114:
    if ((v21 & 0x4000000000000000) == 0)
    {
      goto LABEL_115;
    }

LABEL_221:
    v98 = *(this + 72);
    PB::TextFormatter::format(a2, "stepsDeescalatedAtOpp");
    if ((*(this + 45) & 0x8000000000000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_222;
  }

LABEL_220:
  v97 = *(this + 71);
  PB::TextFormatter::format(a2, "stepsCountThreshold");
  v21 = *(this + 45);
  if ((v21 & 0x4000000000000000) != 0)
  {
    goto LABEL_221;
  }

LABEL_115:
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_116;
  }

LABEL_222:
  PB::TextFormatter::format(a2, "stepsEpochCount", *(this + 73));
LABEL_116:
  v22 = *(this + 46);
  if (v22)
  {
    PB::TextFormatter::format(a2, "stepsPerMinute", *(this + 74));
    v22 = *(this + 46);
    if ((v22 & 2) == 0)
    {
LABEL_118:
      if ((v22 & 4) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_119;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_118;
  }

  PB::TextFormatter::format(a2, "stepsPerMinuteThreshold", *(this + 75));
  if ((*(this + 46) & 4) != 0)
  {
LABEL_119:
    v23 = *(this + 76);
    PB::TextFormatter::format(a2, "stepsSecondOpportunityLookbackLength");
  }

LABEL_120:
  if ((*(this + 360) & 0x80) != 0)
  {
    v24 = *(this + 8);
    PB::TextFormatter::format(a2, "timestamp");
  }

  v25 = *(this + 46);
  if ((v25 & 8) != 0)
  {
    v99 = *(this + 77);
    PB::TextFormatter::format(a2, "triggerClusterDeescalationWindowBoundary");
    v25 = *(this + 46);
    if ((v25 & 0x10) == 0)
    {
LABEL_124:
      if ((v25 & 0x20) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }
  }

  else if ((v25 & 0x10) == 0)
  {
    goto LABEL_124;
  }

  PB::TextFormatter::format(a2, "ushaCumulativeRotationThreshold", *(this + 78));
  if ((*(this + 46) & 0x20) != 0)
  {
LABEL_125:
    PB::TextFormatter::format(a2, "ushaPeakPressureThreshold", *(this + 79));
  }

LABEL_126:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaSevereCrashResult::readFrom(CMMsl::KappaSevereCrashResult *this, PB::Reader *a2)
{
  v3 = (a2 + 8);
  v2 = *(a2 + 1);
  v5 = a2 + 24;
  v4 = *(a2 + 24);
  v6 = *(a2 + 2);
  if (v2 >= v6 || (*(a2 + 24) & 1) != 0)
  {
LABEL_1183:
    v896 = v4 ^ 1;
    return v896 & 1;
  }

  while (1)
  {
    v9 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v6)
    {
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v19 = (v9 + v2);
      v20 = v6 >= v2;
      v21 = v6 - v2;
      if (!v20)
      {
        v21 = 0;
      }

      v22 = v2 + 1;
      while (1)
      {
        if (!v21)
        {
          v12 = 0;
          *v5 = 1;
          goto LABEL_21;
        }

        v23 = *v19;
        *v3 = v22;
        v12 |= (v23 & 0x7F) << v17;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        ++v19;
        --v21;
        ++v22;
        v16 = v18++ > 8;
        if (v16)
        {
LABEL_17:
          v12 = 0;
          goto LABEL_21;
        }
      }

      if (*v5)
      {
        v12 = 0;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = (v9 + v2);
      v14 = v2 + 1;
      while (1)
      {
        *v3 = v14;
        v15 = *v13++;
        v12 |= (v15 & 0x7F) << v10;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        ++v14;
        v16 = v11++ > 8;
        if (v16)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_21:
    v4 = *v5;
    if ((*v5 & 1) != 0 || (v12 & 7) == 4)
    {
      goto LABEL_1183;
    }

    v24 = v12 >> 3;
    if ((v12 >> 3) <= 400)
    {
      if ((v12 >> 3) <= 0x190)
      {
        switch(v24)
        {
          case 301:
            *(this + 46) |= 0x4000uLL;
            v36 = *(a2 + 1);
            if (v36 >= *(a2 + 2))
            {
              v39 = 0;
              *v5 = 1;
            }

            else
            {
              v37 = v36 + 1;
              v38 = *(*a2 + v36);
              *(a2 + 1) = v37;
              v39 = v38 != 0;
            }

            *(this + 328) = v39;
            goto LABEL_996;
          case 302:
            *(this + 46) |= 0x8000000uLL;
            v347 = *(a2 + 1);
            if (v347 >= *(a2 + 2))
            {
              v350 = 0;
              *v5 = 1;
            }

            else
            {
              v348 = v347 + 1;
              v349 = *(*a2 + v347);
              *(a2 + 1) = v348;
              v350 = v349 != 0;
            }

            *(this + 341) = v350;
            goto LABEL_996;
          case 303:
            *(this + 46) |= 0x100000uLL;
            v308 = *(a2 + 1);
            if (v308 >= *(a2 + 2))
            {
              v311 = 0;
              *v5 = 1;
            }

            else
            {
              v309 = v308 + 1;
              v310 = *(*a2 + v308);
              *(a2 + 1) = v309;
              v311 = v310 != 0;
            }

            *(this + 334) = v311;
            goto LABEL_996;
          case 304:
            *(this + 46) |= 0x8000000000uLL;
            v339 = *(a2 + 1);
            if (v339 >= *(a2 + 2))
            {
              v342 = 0;
              *v5 = 1;
            }

            else
            {
              v340 = v339 + 1;
              v341 = *(*a2 + v339);
              *(a2 + 1) = v340;
              v342 = v341 != 0;
            }

            *(this + 353) = v342;
            goto LABEL_996;
          case 305:
            *(this + 46) |= 0x800000000uLL;
            v286 = *(a2 + 1);
            if (v286 >= *(a2 + 2))
            {
              v289 = 0;
              *v5 = 1;
            }

            else
            {
              v287 = v286 + 1;
              v288 = *(*a2 + v286);
              *(a2 + 1) = v287;
              v289 = v288 != 0;
            }

            *(this + 349) = v289;
            goto LABEL_996;
          case 306:
            *(this + 46) |= 0x10000000000uLL;
            v395 = *(a2 + 1);
            if (v395 >= *(a2 + 2))
            {
              v398 = 0;
              *v5 = 1;
            }

            else
            {
              v396 = v395 + 1;
              v397 = *(*a2 + v395);
              *(a2 + 1) = v396;
              v398 = v397 != 0;
            }

            *(this + 354) = v398;
            goto LABEL_996;
          case 307:
            *(this + 46) |= 0x1000000000uLL;
            v421 = *(a2 + 1);
            if (v421 >= *(a2 + 2))
            {
              v424 = 0;
              *v5 = 1;
            }

            else
            {
              v422 = v421 + 1;
              v423 = *(*a2 + v421);
              *(a2 + 1) = v422;
              v424 = v423 != 0;
            }

            *(this + 350) = v424;
            goto LABEL_996;
          case 308:
            *(this + 46) |= 0x80000000uLL;
            v343 = *(a2 + 1);
            if (v343 >= *(a2 + 2))
            {
              v346 = 0;
              *v5 = 1;
            }

            else
            {
              v344 = v343 + 1;
              v345 = *(*a2 + v343);
              *(a2 + 1) = v344;
              v346 = v345 != 0;
            }

            *(this + 345) = v346;
            goto LABEL_996;
          case 309:
            *(this + 46) |= 0x1000uLL;
            v433 = *(a2 + 1);
            if (v433 >= *(a2 + 2))
            {
              v436 = 0;
              *v5 = 1;
            }

            else
            {
              v434 = v433 + 1;
              v435 = *(*a2 + v433);
              *(a2 + 1) = v434;
              v436 = v435 != 0;
            }

            *(this + 326) = v436;
            goto LABEL_996;
          case 310:
            *(this + 46) |= 0x200000uLL;
            v304 = *(a2 + 1);
            if (v304 >= *(a2 + 2))
            {
              v307 = 0;
              *v5 = 1;
            }

            else
            {
              v305 = v304 + 1;
              v306 = *(*a2 + v304);
              *(a2 + 1) = v305;
              v307 = v306 != 0;
            }

            *(this + 335) = v307;
            goto LABEL_996;
          case 311:
            *(this + 46) |= 0x20000000000uLL;
            v429 = *(a2 + 1);
            if (v429 >= *(a2 + 2))
            {
              v432 = 0;
              *v5 = 1;
            }

            else
            {
              v430 = v429 + 1;
              v431 = *(*a2 + v429);
              *(a2 + 1) = v430;
              v432 = v431 != 0;
            }

            *(this + 355) = v432;
            goto LABEL_996;
          case 312:
            *(this + 46) |= 0x2000000000uLL;
            v282 = *(a2 + 1);
            if (v282 >= *(a2 + 2))
            {
              v285 = 0;
              *v5 = 1;
            }

            else
            {
              v283 = v282 + 1;
              v284 = *(*a2 + v282);
              *(a2 + 1) = v283;
              v285 = v284 != 0;
            }

            *(this + 351) = v285;
            goto LABEL_996;
          case 313:
            *(this + 45) |= 0x20000uLL;
            v296 = *(a2 + 1);
            v295 = *(a2 + 2);
            v297 = *a2;
            if (v296 <= 0xFFFFFFFFFFFFFFF5 && v296 + 10 <= v295)
            {
              v298 = 0;
              v299 = 0;
              v300 = 0;
              v301 = (v297 + v296);
              v302 = v296 + 1;
              do
              {
                *v3 = v302;
                v303 = *v301++;
                v300 |= (v303 & 0x7F) << v298;
                if ((v303 & 0x80) == 0)
                {
                  goto LABEL_1099;
                }

                v298 += 7;
                ++v302;
                v16 = v299++ > 8;
              }

              while (!v16);
LABEL_745:
              LODWORD(v300) = 0;
              goto LABEL_1099;
            }

            v751 = 0;
            v752 = 0;
            v300 = 0;
            v753 = (v297 + v296);
            v20 = v295 >= v296;
            v754 = v295 - v296;
            if (!v20)
            {
              v754 = 0;
            }

            v755 = v296 + 1;
            while (2)
            {
              if (v754)
              {
                v756 = *v753;
                *v3 = v755;
                v300 |= (v756 & 0x7F) << v751;
                if (v756 < 0)
                {
                  v751 += 7;
                  ++v753;
                  --v754;
                  ++v755;
                  v16 = v752++ > 8;
                  if (v16)
                  {
                    goto LABEL_745;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v300) = 0;
                }
              }

              else
              {
                LODWORD(v300) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1099:
            *(this + 27) = v300;
            goto LABEL_996;
          case 314:
            *(this + 46) |= 0x800000uLL;
            v407 = *(a2 + 1);
            if (v407 >= *(a2 + 2))
            {
              v410 = 0;
              *v5 = 1;
            }

            else
            {
              v408 = v407 + 1;
              v409 = *(*a2 + v407);
              *(a2 + 1) = v408;
              v410 = v409 != 0;
            }

            *(this + 337) = v410;
            goto LABEL_996;
          case 315:
            *(this + 46) |= 0x1000000uLL;
            v268 = *(a2 + 1);
            if (v268 >= *(a2 + 2))
            {
              v271 = 0;
              *v5 = 1;
            }

            else
            {
              v269 = v268 + 1;
              v270 = *(*a2 + v268);
              *(a2 + 1) = v269;
              v271 = v270 != 0;
            }

            *(this + 338) = v271;
            goto LABEL_996;
          case 316:
            *(this + 46) |= 0x40uLL;
            v318 = *(a2 + 1);
            if (v318 >= *(a2 + 2))
            {
              v321 = 0;
              *v5 = 1;
            }

            else
            {
              v319 = v318 + 1;
              v320 = *(*a2 + v318);
              *(a2 + 1) = v319;
              v321 = v320 != 0;
            }

            *(this + 320) = v321;
            goto LABEL_996;
          case 317:
            *(this + 45) |= 0x40000uLL;
            v260 = *(a2 + 1);
            v259 = *(a2 + 2);
            v261 = *a2;
            if (v260 <= 0xFFFFFFFFFFFFFFF5 && v260 + 10 <= v259)
            {
              v262 = 0;
              v263 = 0;
              v264 = 0;
              v265 = (v261 + v260);
              v266 = v260 + 1;
              do
              {
                *v3 = v266;
                v267 = *v265++;
                v264 |= (v267 & 0x7F) << v262;
                if ((v267 & 0x80) == 0)
                {
                  goto LABEL_1093;
                }

                v262 += 7;
                ++v266;
                v16 = v263++ > 8;
              }

              while (!v16);
LABEL_725:
              LODWORD(v264) = 0;
              goto LABEL_1093;
            }

            v739 = 0;
            v740 = 0;
            v264 = 0;
            v741 = (v261 + v260);
            v20 = v259 >= v260;
            v742 = v259 - v260;
            if (!v20)
            {
              v742 = 0;
            }

            v743 = v260 + 1;
            break;
          case 318:
            *(this + 46) |= 0x100000000000uLL;
            v364 = *(a2 + 1);
            if (v364 >= *(a2 + 2))
            {
              v367 = 0;
              *v5 = 1;
            }

            else
            {
              v365 = v364 + 1;
              v366 = *(*a2 + v364);
              *(a2 + 1) = v365;
              v367 = v366 != 0;
            }

            *(this + 358) = v367;
            goto LABEL_996;
          case 319:
            *(this + 46) |= 0x40000000000uLL;
            v425 = *(a2 + 1);
            if (v425 >= *(a2 + 2))
            {
              v428 = 0;
              *v5 = 1;
            }

            else
            {
              v426 = v425 + 1;
              v427 = *(*a2 + v425);
              *(a2 + 1) = v426;
              v428 = v427 != 0;
            }

            *(this + 356) = v428;
            goto LABEL_996;
          case 320:
            *(this + 46) |= 0x80000000000uLL;
            v488 = *(a2 + 1);
            if (v488 >= *(a2 + 2))
            {
              v491 = 0;
              *v5 = 1;
            }

            else
            {
              v489 = v488 + 1;
              v490 = *(*a2 + v488);
              *(a2 + 1) = v489;
              v491 = v490 != 0;
            }

            *(this + 357) = v491;
            goto LABEL_996;
          case 321:
            *(this + 46) |= 0x400000000uLL;
            v391 = *(a2 + 1);
            if (v391 >= *(a2 + 2))
            {
              v394 = 0;
              *v5 = 1;
            }

            else
            {
              v392 = v391 + 1;
              v393 = *(*a2 + v391);
              *(a2 + 1) = v392;
              v394 = v393 != 0;
            }

            *(this + 348) = v394;
            goto LABEL_996;
          case 322:
            *(this + 46) |= 0x200000000uLL;
            v403 = *(a2 + 1);
            if (v403 >= *(a2 + 2))
            {
              v406 = 0;
              *v5 = 1;
            }

            else
            {
              v404 = v403 + 1;
              v405 = *(*a2 + v403);
              *(a2 + 1) = v404;
              v406 = v405 != 0;
            }

            *(this + 347) = v406;
            goto LABEL_996;
          case 323:
            *(this + 46) |= 0x100000000uLL;
            v484 = *(a2 + 1);
            if (v484 >= *(a2 + 2))
            {
              v487 = 0;
              *v5 = 1;
            }

            else
            {
              v485 = v484 + 1;
              v486 = *(*a2 + v484);
              *(a2 + 1) = v485;
              v487 = v486 != 0;
            }

            *(this + 346) = v487;
            goto LABEL_996;
          default:
            JUMPOUT(0);
        }

        while (1)
        {
          if (!v742)
          {
            LODWORD(v264) = 0;
            *v5 = 1;
            goto LABEL_1093;
          }

          v744 = *v741;
          *v3 = v743;
          v264 |= (v744 & 0x7F) << v739;
          if ((v744 & 0x80) == 0)
          {
            break;
          }

          v739 += 7;
          ++v741;
          --v742;
          ++v743;
          v16 = v740++ > 8;
          if (v16)
          {
            goto LABEL_725;
          }
        }

        if (*v5)
        {
          LODWORD(v264) = 0;
        }

LABEL_1093:
        *(this + 28) = v264;
      }

      else
      {
        switch(v24)
        {
          case 1:
            *(this + 45) |= 0x800000uLL;
            v25 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 33) = *(*a2 + v25);
            goto LABEL_995;
          case 2:
            *(this + 45) |= 0x400000uLL;
            v411 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v411 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 32) = *(*a2 + v411);
            goto LABEL_995;
          case 3:
            *(this + 45) |= 0x1000000uLL;
            v352 = *(a2 + 1);
            v351 = *(a2 + 2);
            v353 = *a2;
            if (v352 <= 0xFFFFFFFFFFFFFFF5 && v352 + 10 <= v351)
            {
              v354 = 0;
              v355 = 0;
              v356 = 0;
              v357 = (v353 + v352);
              v358 = v352 + 1;
              do
              {
                *v3 = v358;
                v359 = *v357++;
                v356 |= (v359 & 0x7F) << v354;
                if ((v359 & 0x80) == 0)
                {
                  goto LABEL_1105;
                }

                v354 += 7;
                ++v358;
                v16 = v355++ > 8;
              }

              while (!v16);
LABEL_779:
              LODWORD(v356) = 0;
              goto LABEL_1105;
            }

            v763 = 0;
            v764 = 0;
            v356 = 0;
            v765 = (v353 + v352);
            v20 = v351 >= v352;
            v766 = v351 - v352;
            if (!v20)
            {
              v766 = 0;
            }

            v767 = v352 + 1;
            while (2)
            {
              if (v766)
              {
                v768 = *v765;
                *v3 = v767;
                v356 |= (v768 & 0x7F) << v763;
                if (v768 < 0)
                {
                  v763 += 7;
                  ++v765;
                  --v766;
                  ++v767;
                  v16 = v764++ > 8;
                  if (v16)
                  {
                    goto LABEL_779;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v356) = 0;
                }
              }

              else
              {
                LODWORD(v356) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1105:
            *(this + 34) = v356;
            goto LABEL_996;
          case 4:
            *(this + 45) |= 0x20000000000000uLL;
            v378 = *(a2 + 1);
            v377 = *(a2 + 2);
            v379 = *a2;
            if (v378 <= 0xFFFFFFFFFFFFFFF5 && v378 + 10 <= v377)
            {
              v380 = 0;
              v381 = 0;
              v382 = 0;
              v383 = (v379 + v378);
              v384 = v378 + 1;
              do
              {
                *v3 = v384;
                v385 = *v383++;
                v382 |= (v385 & 0x7F) << v380;
                if ((v385 & 0x80) == 0)
                {
                  goto LABEL_1111;
                }

                v380 += 7;
                ++v384;
                v16 = v381++ > 8;
              }

              while (!v16);
LABEL_803:
              LODWORD(v382) = 0;
              goto LABEL_1111;
            }

            v775 = 0;
            v776 = 0;
            v382 = 0;
            v777 = (v379 + v378);
            v20 = v377 >= v378;
            v778 = v377 - v378;
            if (!v20)
            {
              v778 = 0;
            }

            v779 = v378 + 1;
            while (2)
            {
              if (v778)
              {
                v780 = *v777;
                *v3 = v779;
                v382 |= (v780 & 0x7F) << v775;
                if (v780 < 0)
                {
                  v775 += 7;
                  ++v777;
                  --v778;
                  ++v779;
                  v16 = v776++ > 8;
                  if (v16)
                  {
                    goto LABEL_803;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v382) = 0;
                }
              }

              else
              {
                LODWORD(v382) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1111:
            *(this + 63) = v382;
            goto LABEL_996;
          case 5:
            *(this + 46) |= 2uLL;
            v312 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v312 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 75) = *(*a2 + v312);
            goto LABEL_995;
          case 6:
            *(this + 45) |= 0x800000000000000uLL;
            v446 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v446 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 69) = *(*a2 + v446);
            goto LABEL_995;
          case 7:
            *(this + 45) |= 0x800000000000uLL;
            v452 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v452 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 57) = *(*a2 + v452);
            goto LABEL_995;
          case 8:
            *(this + 45) |= 0x400000000000uLL;
            v390 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v390 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 56) = *(*a2 + v390);
            goto LABEL_995;
          case 9:
            *(this + 45) |= 0x200uLL;
            v475 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v475 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 19) = *(*a2 + v475);
            goto LABEL_995;
          case 10:
            *(this + 45) |= 0x100000000000000uLL;
            v327 = *(a2 + 1);
            v326 = *(a2 + 2);
            v328 = *a2;
            if (v327 <= 0xFFFFFFFFFFFFFFF5 && v327 + 10 <= v326)
            {
              v329 = 0;
              v330 = 0;
              v331 = 0;
              v332 = (v328 + v327);
              v333 = v327 + 1;
              do
              {
                *v3 = v333;
                v334 = *v332++;
                v331 |= (v334 & 0x7F) << v329;
                if ((v334 & 0x80) == 0)
                {
                  goto LABEL_1102;
                }

                v329 += 7;
                ++v333;
                v16 = v330++ > 8;
              }

              while (!v16);
LABEL_763:
              LODWORD(v331) = 0;
              goto LABEL_1102;
            }

            v757 = 0;
            v758 = 0;
            v331 = 0;
            v759 = (v328 + v327);
            v20 = v326 >= v327;
            v760 = v326 - v327;
            if (!v20)
            {
              v760 = 0;
            }

            v761 = v327 + 1;
            while (2)
            {
              if (v760)
              {
                v762 = *v759;
                *v3 = v761;
                v331 |= (v762 & 0x7F) << v757;
                if (v762 < 0)
                {
                  v757 += 7;
                  ++v759;
                  --v760;
                  ++v761;
                  v16 = v758++ > 8;
                  if (v16)
                  {
                    goto LABEL_763;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v331) = 0;
                }
              }

              else
              {
                LODWORD(v331) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1102:
            *(this + 66) = v331;
            goto LABEL_996;
          case 11:
            *(this + 45) |= 0x2000000uLL;
            v467 = *(a2 + 1);
            v466 = *(a2 + 2);
            v468 = *a2;
            if (v467 <= 0xFFFFFFFFFFFFFFF5 && v467 + 10 <= v466)
            {
              v469 = 0;
              v470 = 0;
              v471 = 0;
              v472 = (v468 + v467);
              v473 = v467 + 1;
              do
              {
                *v3 = v473;
                v474 = *v472++;
                v471 |= (v474 & 0x7F) << v469;
                if ((v474 & 0x80) == 0)
                {
                  goto LABEL_1126;
                }

                v469 += 7;
                ++v473;
                v16 = v470++ > 8;
              }

              while (!v16);
LABEL_867:
              LODWORD(v471) = 0;
              goto LABEL_1126;
            }

            v805 = 0;
            v806 = 0;
            v471 = 0;
            v807 = (v468 + v467);
            v20 = v466 >= v467;
            v808 = v466 - v467;
            if (!v20)
            {
              v808 = 0;
            }

            v809 = v467 + 1;
            while (2)
            {
              if (v808)
              {
                v810 = *v807;
                *v3 = v809;
                v471 |= (v810 & 0x7F) << v805;
                if (v810 < 0)
                {
                  v805 += 7;
                  ++v807;
                  --v808;
                  ++v809;
                  v16 = v806++ > 8;
                  if (v16)
                  {
                    goto LABEL_867;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v471) = 0;
                }
              }

              else
              {
                LODWORD(v471) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1126:
            *(this + 35) = v471;
            goto LABEL_996;
          case 12:
            *(this + 45) |= 0x10000uLL;
            v290 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v290 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 26) = *(*a2 + v290);
            goto LABEL_995;
          case 13:
            *(this + 46) |= 0x10uLL;
            v317 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v317 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 78) = *(*a2 + v317);
            goto LABEL_995;
          case 14:
            *(this + 46) |= 0x20uLL;
            v451 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v451 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 79) = *(*a2 + v451);
            goto LABEL_995;
          case 15:
            *(this + 45) |= 0x100000000000uLL;
            v274 = *(a2 + 1);
            v273 = *(a2 + 2);
            v275 = *a2;
            if (v274 <= 0xFFFFFFFFFFFFFFF5 && v274 + 10 <= v273)
            {
              v276 = 0;
              v277 = 0;
              v278 = 0;
              v279 = (v275 + v274);
              v280 = v274 + 1;
              do
              {
                *v3 = v280;
                v281 = *v279++;
                v278 |= (v281 & 0x7F) << v276;
                if ((v281 & 0x80) == 0)
                {
                  goto LABEL_1096;
                }

                v276 += 7;
                ++v280;
                v16 = v277++ > 8;
              }

              while (!v16);
LABEL_735:
              LODWORD(v278) = 0;
              goto LABEL_1096;
            }

            v745 = 0;
            v746 = 0;
            v278 = 0;
            v747 = (v275 + v274);
            v20 = v273 >= v274;
            v748 = v273 - v274;
            if (!v20)
            {
              v748 = 0;
            }

            v749 = v274 + 1;
            while (2)
            {
              if (v748)
              {
                v750 = *v747;
                *v3 = v749;
                v278 |= (v750 & 0x7F) << v745;
                if (v750 < 0)
                {
                  v745 += 7;
                  ++v747;
                  --v748;
                  ++v749;
                  v16 = v746++ > 8;
                  if (v16)
                  {
                    goto LABEL_735;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v278) = 0;
                }
              }

              else
              {
                LODWORD(v278) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1096:
            *(this + 54) = v278;
            goto LABEL_996;
          case 16:
            *(this + 45) |= 0x40000000000uLL;
            v369 = *(a2 + 1);
            v368 = *(a2 + 2);
            v370 = *a2;
            if (v369 <= 0xFFFFFFFFFFFFFFF5 && v369 + 10 <= v368)
            {
              v371 = 0;
              v372 = 0;
              v373 = 0;
              v374 = (v370 + v369);
              v375 = v369 + 1;
              do
              {
                *v3 = v375;
                v376 = *v374++;
                v373 |= (v376 & 0x7F) << v371;
                if ((v376 & 0x80) == 0)
                {
                  goto LABEL_1108;
                }

                v371 += 7;
                ++v375;
                v16 = v372++ > 8;
              }

              while (!v16);
LABEL_795:
              LODWORD(v373) = 0;
              goto LABEL_1108;
            }

            v769 = 0;
            v770 = 0;
            v373 = 0;
            v771 = (v370 + v369);
            v20 = v368 >= v369;
            v772 = v368 - v369;
            if (!v20)
            {
              v772 = 0;
            }

            v773 = v369 + 1;
            while (2)
            {
              if (v772)
              {
                v774 = *v771;
                *v3 = v773;
                v373 |= (v774 & 0x7F) << v769;
                if (v774 < 0)
                {
                  v769 += 7;
                  ++v771;
                  --v772;
                  ++v773;
                  v16 = v770++ > 8;
                  if (v16)
                  {
                    goto LABEL_795;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v373) = 0;
                }
              }

              else
              {
                LODWORD(v373) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1108:
            *(this + 52) = v373;
            goto LABEL_996;
          case 17:
            *(this + 45) |= 0x8000000000000uLL;
            v272 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v272 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 61) = *(*a2 + v272);
            goto LABEL_995;
          case 18:
            *(this + 45) |= 0x2000000000000000uLL;
            v438 = *(a2 + 1);
            v437 = *(a2 + 2);
            v439 = *a2;
            if (v438 <= 0xFFFFFFFFFFFFFFF5 && v438 + 10 <= v437)
            {
              v440 = 0;
              v441 = 0;
              v442 = 0;
              v443 = (v439 + v438);
              v444 = v438 + 1;
              do
              {
                *v3 = v444;
                v445 = *v443++;
                v442 |= (v445 & 0x7F) << v440;
                if ((v445 & 0x80) == 0)
                {
                  goto LABEL_1120;
                }

                v440 += 7;
                ++v444;
                v16 = v441++ > 8;
              }

              while (!v16);
LABEL_843:
              LODWORD(v442) = 0;
              goto LABEL_1120;
            }

            v793 = 0;
            v794 = 0;
            v442 = 0;
            v795 = (v439 + v438);
            v20 = v437 >= v438;
            v796 = v437 - v438;
            if (!v20)
            {
              v796 = 0;
            }

            v797 = v438 + 1;
            while (2)
            {
              if (v796)
              {
                v798 = *v795;
                *v3 = v797;
                v442 |= (v798 & 0x7F) << v793;
                if (v798 < 0)
                {
                  v793 += 7;
                  ++v795;
                  --v796;
                  ++v797;
                  v16 = v794++ > 8;
                  if (v16)
                  {
                    goto LABEL_843;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v442) = 0;
                }
              }

              else
              {
                LODWORD(v442) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1120:
            *(this + 71) = v442;
            goto LABEL_996;
          case 19:
            *(this + 46) |= 4uLL;
            v458 = *(a2 + 1);
            v457 = *(a2 + 2);
            v459 = *a2;
            if (v458 <= 0xFFFFFFFFFFFFFFF5 && v458 + 10 <= v457)
            {
              v460 = 0;
              v461 = 0;
              v462 = 0;
              v463 = (v459 + v458);
              v464 = v458 + 1;
              do
              {
                *v3 = v464;
                v465 = *v463++;
                v462 |= (v465 & 0x7F) << v460;
                if ((v465 & 0x80) == 0)
                {
                  goto LABEL_1123;
                }

                v460 += 7;
                ++v464;
                v16 = v461++ > 8;
              }

              while (!v16);
LABEL_857:
              LODWORD(v462) = 0;
              goto LABEL_1123;
            }

            v799 = 0;
            v800 = 0;
            v462 = 0;
            v801 = (v459 + v458);
            v20 = v457 >= v458;
            v802 = v457 - v458;
            if (!v20)
            {
              v802 = 0;
            }

            v803 = v458 + 1;
            while (2)
            {
              if (v802)
              {
                v804 = *v801;
                *v3 = v803;
                v462 |= (v804 & 0x7F) << v799;
                if (v804 < 0)
                {
                  v799 += 7;
                  ++v801;
                  --v802;
                  ++v803;
                  v16 = v800++ > 8;
                  if (v16)
                  {
                    goto LABEL_857;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v462) = 0;
                }
              }

              else
              {
                LODWORD(v462) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1123:
            *(this + 76) = v462;
            goto LABEL_996;
          case 20:
            *(this + 45) |= 0x4000000uLL;
            v492 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v492 + 4 > *(a2 + 2))
            {
              goto LABEL_494;
            }

            *(this + 36) = *(*a2 + v492);
            goto LABEL_995;
          default:
            switch(v24)
            {
              case 'e':
                *(this + 45) |= 0x80uLL;
                v41 = *(a2 + 1);
                v40 = *(a2 + 2);
                v42 = *a2;
                if (v41 <= 0xFFFFFFFFFFFFFFF5 && v41 + 10 <= v40)
                {
                  v43 = 0;
                  v44 = 0;
                  v45 = 0;
                  v46 = (v42 + v41);
                  v47 = v41 + 1;
                  do
                  {
                    *v3 = v47;
                    v48 = *v46++;
                    v45 |= (v48 & 0x7F) << v43;
                    if ((v48 & 0x80) == 0)
                    {
                      goto LABEL_1114;
                    }

                    v43 += 7;
                    ++v47;
                    v16 = v44++ > 8;
                  }

                  while (!v16);
LABEL_813:
                  v45 = 0;
                  goto LABEL_1114;
                }

                v781 = 0;
                v782 = 0;
                v45 = 0;
                v783 = (v42 + v41);
                v20 = v40 >= v41;
                v784 = v40 - v41;
                if (!v20)
                {
                  v784 = 0;
                }

                v785 = v41 + 1;
                while (2)
                {
                  if (v784)
                  {
                    v786 = *v783;
                    *v3 = v785;
                    v45 |= (v786 & 0x7F) << v781;
                    if (v786 < 0)
                    {
                      v781 += 7;
                      ++v783;
                      --v784;
                      ++v785;
                      v16 = v782++ > 8;
                      if (v16)
                      {
                        goto LABEL_813;
                      }

                      continue;
                    }

                    if (*v5)
                    {
                      v45 = 0;
                    }
                  }

                  else
                  {
                    v45 = 0;
                    *v5 = 1;
                  }

                  break;
                }

LABEL_1114:
                *(this + 8) = v45;
                goto LABEL_996;
              case 'f':
                *(this + 45) |= 1uLL;
                v413 = *(a2 + 1);
                v412 = *(a2 + 2);
                v414 = *a2;
                if (v413 <= 0xFFFFFFFFFFFFFFF5 && v413 + 10 <= v412)
                {
                  v415 = 0;
                  v416 = 0;
                  v417 = 0;
                  v418 = (v414 + v413);
                  v419 = v413 + 1;
                  do
                  {
                    *v3 = v419;
                    v420 = *v418++;
                    v417 |= (v420 & 0x7F) << v415;
                    if ((v420 & 0x80) == 0)
                    {
                      goto LABEL_1117;
                    }

                    v415 += 7;
                    ++v419;
                    v16 = v416++ > 8;
                  }

                  while (!v16);
LABEL_823:
                  v417 = 0;
                  goto LABEL_1117;
                }

                v787 = 0;
                v788 = 0;
                v417 = 0;
                v789 = (v414 + v413);
                v20 = v412 >= v413;
                v790 = v412 - v413;
                if (!v20)
                {
                  v790 = 0;
                }

                v791 = v413 + 1;
                break;
              case 'g':
                *(this + 46) |= 0x80uLL;
                v360 = *(a2 + 1);
                if (v360 >= *(a2 + 2))
                {
                  v363 = 0;
                  *v5 = 1;
                }

                else
                {
                  v361 = v360 + 1;
                  v362 = *(*a2 + v360);
                  *(a2 + 1) = v361;
                  v363 = v362 != 0;
                }

                *(this + 321) = v363;
                goto LABEL_996;
              case 'h':
                *(this + 46) |= 0x100uLL;
                v386 = *(a2 + 1);
                if (v386 >= *(a2 + 2))
                {
                  v389 = 0;
                  *v5 = 1;
                }

                else
                {
                  v387 = v386 + 1;
                  v388 = *(*a2 + v386);
                  *(a2 + 1) = v387;
                  v389 = v388 != 0;
                }

                *(this + 322) = v389;
                goto LABEL_996;
              case 'i':
                *(this + 46) |= 0x10000uLL;
                v313 = *(a2 + 1);
                if (v313 >= *(a2 + 2))
                {
                  v316 = 0;
                  *v5 = 1;
                }

                else
                {
                  v314 = v313 + 1;
                  v315 = *(*a2 + v313);
                  *(a2 + 1) = v314;
                  v316 = v315 != 0;
                }

                *(this + 330) = v316;
                goto LABEL_996;
              case 'j':
                *(this + 46) |= 0x20000uLL;
                v447 = *(a2 + 1);
                if (v447 >= *(a2 + 2))
                {
                  v450 = 0;
                  *v5 = 1;
                }

                else
                {
                  v448 = v447 + 1;
                  v449 = *(*a2 + v447);
                  *(a2 + 1) = v448;
                  v450 = v449 != 0;
                }

                *(this + 331) = v450;
                goto LABEL_996;
              case 'k':
                *(this + 46) |= 0x10000000uLL;
                v453 = *(a2 + 1);
                if (v453 >= *(a2 + 2))
                {
                  v456 = 0;
                  *v5 = 1;
                }

                else
                {
                  v454 = v453 + 1;
                  v455 = *(*a2 + v453);
                  *(a2 + 1) = v454;
                  v456 = v455 != 0;
                }

                *(this + 342) = v456;
                goto LABEL_996;
              case 'l':
                *(this + 46) |= 0x4000000uLL;
                v399 = *(a2 + 1);
                if (v399 >= *(a2 + 2))
                {
                  v402 = 0;
                  *v5 = 1;
                }

                else
                {
                  v400 = v399 + 1;
                  v401 = *(*a2 + v399);
                  *(a2 + 1) = v400;
                  v402 = v401 != 0;
                }

                *(this + 340) = v402;
                goto LABEL_996;
              case 'm':
                *(this + 46) |= 0x2000uLL;
                v480 = *(a2 + 1);
                if (v480 >= *(a2 + 2))
                {
                  v483 = 0;
                  *v5 = 1;
                }

                else
                {
                  v481 = v480 + 1;
                  v482 = *(*a2 + v480);
                  *(a2 + 1) = v481;
                  v483 = v482 != 0;
                }

                *(this + 327) = v483;
                goto LABEL_996;
              case 'n':
                *(this + 46) |= 0x20000000uLL;
                v335 = *(a2 + 1);
                if (v335 >= *(a2 + 2))
                {
                  v338 = 0;
                  *v5 = 1;
                }

                else
                {
                  v336 = v335 + 1;
                  v337 = *(*a2 + v335);
                  *(a2 + 1) = v336;
                  v338 = v337 != 0;
                }

                *(this + 343) = v338;
                goto LABEL_996;
              case 'o':
                *(this + 46) |= 0x40000000uLL;
                v476 = *(a2 + 1);
                if (v476 >= *(a2 + 2))
                {
                  v479 = 0;
                  *v5 = 1;
                }

                else
                {
                  v477 = v476 + 1;
                  v478 = *(*a2 + v476);
                  *(a2 + 1) = v477;
                  v479 = v478 != 0;
                }

                *(this + 344) = v479;
                goto LABEL_996;
              case 'p':
                *(this + 46) |= 0x400uLL;
                v291 = *(a2 + 1);
                if (v291 >= *(a2 + 2))
                {
                  v294 = 0;
                  *v5 = 1;
                }

                else
                {
                  v292 = v291 + 1;
                  v293 = *(*a2 + v291);
                  *(a2 + 1) = v292;
                  v294 = v293 != 0;
                }

                *(this + 324) = v294;
                goto LABEL_996;
              case 'q':
                *(this + 46) |= 0x2000000uLL;
                v322 = *(a2 + 1);
                if (v322 >= *(a2 + 2))
                {
                  v325 = 0;
                  *v5 = 1;
                }

                else
                {
                  v323 = v322 + 1;
                  v324 = *(*a2 + v322);
                  *(a2 + 1) = v323;
                  v325 = v324 != 0;
                }

                *(this + 339) = v325;
                goto LABEL_996;
              default:
                goto LABEL_194;
            }

            break;
        }

        while (1)
        {
          if (!v790)
          {
            v417 = 0;
            *v5 = 1;
            goto LABEL_1117;
          }

          v792 = *v789;
          *v3 = v791;
          v417 |= (v792 & 0x7F) << v787;
          if ((v792 & 0x80) == 0)
          {
            break;
          }

          v787 += 7;
          ++v789;
          --v790;
          ++v791;
          v16 = v788++ > 8;
          if (v16)
          {
            goto LABEL_823;
          }
        }

        if (*v5)
        {
          v417 = 0;
        }

LABEL_1117:
        *(this + 1) = v417;
      }

      goto LABEL_996;
    }

    if (v24 <= 901)
    {
      break;
    }

    if (v24 <= 1200)
    {
      if (v24 <= 1102)
      {
        if (v24 > 1100)
        {
          if (v24 == 1101)
          {
            *(this + 45) |= 0x20000000uLL;
            v148 = *(a2 + 1);
            v147 = *(a2 + 2);
            v149 = *a2;
            if (v148 > 0xFFFFFFFFFFFFFFF5 || v148 + 10 > v147)
            {
              v619 = 0;
              v620 = 0;
              v152 = 0;
              v621 = (v149 + v148);
              v20 = v147 >= v148;
              v622 = v147 - v148;
              if (!v20)
              {
                v622 = 0;
              }

              v623 = v148 + 1;
              while (1)
              {
                if (!v622)
                {
                  LODWORD(v152) = 0;
                  *v5 = 1;
                  goto LABEL_1006;
                }

                v624 = *v621;
                *v3 = v623;
                v152 |= (v624 & 0x7F) << v619;
                if ((v624 & 0x80) == 0)
                {
                  break;
                }

                v619 += 7;
                ++v621;
                --v622;
                ++v623;
                v16 = v620++ > 8;
                if (v16)
                {
LABEL_555:
                  LODWORD(v152) = 0;
                  goto LABEL_1006;
                }
              }

              if (*v5)
              {
                LODWORD(v152) = 0;
              }
            }

            else
            {
              v150 = 0;
              v151 = 0;
              v152 = 0;
              v153 = (v149 + v148);
              v154 = v148 + 1;
              while (1)
              {
                *v3 = v154;
                v155 = *v153++;
                v152 |= (v155 & 0x7F) << v150;
                if ((v155 & 0x80) == 0)
                {
                  break;
                }

                v150 += 7;
                ++v154;
                v16 = v151++ > 8;
                if (v16)
                {
                  goto LABEL_555;
                }
              }
            }

LABEL_1006:
            *(this + 39) = v152;
          }

          else
          {
            *(this + 45) |= 0x80000000uLL;
            v102 = *(a2 + 1);
            v101 = *(a2 + 2);
            v103 = *a2;
            if (v102 > 0xFFFFFFFFFFFFFFF5 || v102 + 10 > v101)
            {
              v643 = 0;
              v644 = 0;
              v106 = 0;
              v645 = (v103 + v102);
              v20 = v101 >= v102;
              v646 = v101 - v102;
              if (!v20)
              {
                v646 = 0;
              }

              v647 = v102 + 1;
              while (1)
              {
                if (!v646)
                {
                  LODWORD(v106) = 0;
                  *v5 = 1;
                  goto LABEL_1018;
                }

                v648 = *v645;
                *v3 = v647;
                v106 |= (v648 & 0x7F) << v643;
                if ((v648 & 0x80) == 0)
                {
                  break;
                }

                v643 += 7;
                ++v645;
                --v646;
                ++v647;
                v16 = v644++ > 8;
                if (v16)
                {
LABEL_591:
                  LODWORD(v106) = 0;
                  goto LABEL_1018;
                }
              }

              if (*v5)
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              v104 = 0;
              v105 = 0;
              v106 = 0;
              v107 = (v103 + v102);
              v108 = v102 + 1;
              while (1)
              {
                *v3 = v108;
                v109 = *v107++;
                v106 |= (v109 & 0x7F) << v104;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v104 += 7;
                ++v108;
                v16 = v105++ > 8;
                if (v16)
                {
                  goto LABEL_591;
                }
              }
            }

LABEL_1018:
            *(this + 41) = v106;
          }

          goto LABEL_996;
        }

        if (v24 == 902)
        {
          *(this + 46) |= 0x400000uLL;
          v139 = *(a2 + 1);
          if (v139 >= *(a2 + 2))
          {
            v142 = 0;
            *v5 = 1;
          }

          else
          {
            v140 = v139 + 1;
            v141 = *(*a2 + v139);
            *(a2 + 1) = v140;
            v142 = v141 != 0;
          }

          *(this + 336) = v142;
          goto LABEL_996;
        }

        if (v24 == 1001)
        {
          *(this + 46) |= 8uLL;
          v51 = *(a2 + 1);
          v50 = *(a2 + 2);
          v52 = *a2;
          if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
          {
            v631 = 0;
            v632 = 0;
            v55 = 0;
            v633 = (v52 + v51);
            v20 = v50 >= v51;
            v634 = v50 - v51;
            if (!v20)
            {
              v634 = 0;
            }

            v635 = v51 + 1;
            while (1)
            {
              if (!v634)
              {
                LODWORD(v55) = 0;
                *v5 = 1;
                goto LABEL_1012;
              }

              v636 = *v633;
              *v3 = v635;
              v55 |= (v636 & 0x7F) << v631;
              if ((v636 & 0x80) == 0)
              {
                break;
              }

              v631 += 7;
              ++v633;
              --v634;
              ++v635;
              v16 = v632++ > 8;
              if (v16)
              {
LABEL_575:
                LODWORD(v55) = 0;
                goto LABEL_1012;
              }
            }

            if (*v5)
            {
              LODWORD(v55) = 0;
            }
          }

          else
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = (v52 + v51);
            v57 = v51 + 1;
            while (1)
            {
              *v3 = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v57;
              v16 = v54++ > 8;
              if (v16)
              {
                goto LABEL_575;
              }
            }
          }

LABEL_1012:
          *(this + 77) = v55;
          goto LABEL_996;
        }

        goto LABEL_194;
      }

      if (v24 <= 1104)
      {
        if (v24 == 1103)
        {
          *(this + 46) |= 0x4000000000uLL;
          v143 = *(a2 + 1);
          if (v143 >= *(a2 + 2))
          {
            v146 = 0;
            *v5 = 1;
          }

          else
          {
            v144 = v143 + 1;
            v145 = *(*a2 + v143);
            *(a2 + 1) = v144;
            v146 = v145 != 0;
          }

          *(this + 352) = v146;
        }

        else
        {
          *(this + 45) |= 0x100000000uLL;
          v70 = *(a2 + 1);
          v69 = *(a2 + 2);
          v71 = *a2;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v69)
          {
            v637 = 0;
            v638 = 0;
            v74 = 0;
            v639 = (v71 + v70);
            v20 = v69 >= v70;
            v640 = v69 - v70;
            if (!v20)
            {
              v640 = 0;
            }

            v641 = v70 + 1;
            while (1)
            {
              if (!v640)
              {
                LODWORD(v74) = 0;
                *v5 = 1;
                goto LABEL_1015;
              }

              v642 = *v639;
              *v3 = v641;
              v74 |= (v642 & 0x7F) << v637;
              if ((v642 & 0x80) == 0)
              {
                break;
              }

              v637 += 7;
              ++v639;
              --v640;
              ++v641;
              v16 = v638++ > 8;
              if (v16)
              {
LABEL_583:
                LODWORD(v74) = 0;
                goto LABEL_1015;
              }
            }

            if (*v5)
            {
              LODWORD(v74) = 0;
            }
          }

          else
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            v75 = (v71 + v70);
            v76 = v70 + 1;
            while (1)
            {
              *v3 = v76;
              v77 = *v75++;
              v74 |= (v77 & 0x7F) << v72;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              ++v76;
              v16 = v73++ > 8;
              if (v16)
              {
                goto LABEL_583;
              }
            }
          }

LABEL_1015:
          *(this + 42) = v74;
        }

        goto LABEL_996;
      }

      if (v24 == 1105)
      {
        *(this + 45) |= 0x40000000uLL;
        v157 = *(a2 + 1);
        v156 = *(a2 + 2);
        v158 = *a2;
        if (v157 > 0xFFFFFFFFFFFFFFF5 || v157 + 10 > v156)
        {
          v625 = 0;
          v626 = 0;
          v161 = 0;
          v627 = (v158 + v157);
          v20 = v156 >= v157;
          v628 = v156 - v157;
          if (!v20)
          {
            v628 = 0;
          }

          v629 = v157 + 1;
          while (1)
          {
            if (!v628)
            {
              LODWORD(v161) = 0;
              *v5 = 1;
              goto LABEL_1009;
            }

            v630 = *v627;
            *v3 = v629;
            v161 |= (v630 & 0x7F) << v625;
            if ((v630 & 0x80) == 0)
            {
              break;
            }

            v625 += 7;
            ++v627;
            --v628;
            ++v629;
            v16 = v626++ > 8;
            if (v16)
            {
LABEL_563:
              LODWORD(v161) = 0;
              goto LABEL_1009;
            }
          }

          if (*v5)
          {
            LODWORD(v161) = 0;
          }
        }

        else
        {
          v159 = 0;
          v160 = 0;
          v161 = 0;
          v162 = (v158 + v157);
          v163 = v157 + 1;
          while (1)
          {
            *v3 = v163;
            v164 = *v162++;
            v161 |= (v164 & 0x7F) << v159;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v159 += 7;
            ++v163;
            v16 = v160++ > 8;
            if (v16)
            {
              goto LABEL_563;
            }
          }
        }

LABEL_1009:
        *(this + 40) = v161;
        goto LABEL_996;
      }

      if (v24 != 1106)
      {
        goto LABEL_194;
      }

      *(this + 45) |= 0x10000000000000uLL;
      v110 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(a2 + 2))
      {
LABEL_494:
        *v5 = 1;
        goto LABEL_996;
      }

      *(this + 62) = *(*a2 + v110);
      goto LABEL_995;
    }

    switch(v24)
    {
      case 1301:
        *(this + 45) |= 0x8000uLL;
        v35 = *v3;
        if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(a2 + 2))
        {
          goto LABEL_494;
        }

        *(this + 25) = *(*a2 + v35);
        goto LABEL_995;
      case 1302:
        *(this + 45) |= 0x80000000000uLL;
        v571 = *(a2 + 1);
        v570 = *(a2 + 2);
        v572 = *a2;
        if (v571 <= 0xFFFFFFFFFFFFFFF5 && v571 + 10 <= v570)
        {
          v573 = 0;
          v574 = 0;
          v575 = 0;
          v576 = (v572 + v571);
          v577 = v571 + 1;
          do
          {
            *v3 = v577;
            v578 = *v576++;
            v575 |= (v578 & 0x7F) << v573;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1170;
            }

            v573 += 7;
            ++v577;
            v16 = v574++ > 8;
          }

          while (!v16);
LABEL_957:
          LODWORD(v575) = 0;
          goto LABEL_1170;
        }

        v865 = 0;
        v866 = 0;
        v575 = 0;
        v867 = (v572 + v571);
        v20 = v570 >= v571;
        v868 = v570 - v571;
        if (!v20)
        {
          v868 = 0;
        }

        v869 = v571 + 1;
        while (2)
        {
          if (v868)
          {
            v870 = *v867;
            *v3 = v869;
            v575 |= (v870 & 0x7F) << v865;
            if (v870 < 0)
            {
              v865 += 7;
              ++v867;
              --v868;
              ++v869;
              v16 = v866++ > 8;
              if (v16)
              {
                goto LABEL_957;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v575) = 0;
            }
          }

          else
          {
            LODWORD(v575) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1170:
        *(this + 53) = v575;
        break;
      case 1303:
        *(this + 45) |= 0x20000000000uLL;
        v539 = *(a2 + 1);
        v538 = *(a2 + 2);
        v540 = *a2;
        if (v539 <= 0xFFFFFFFFFFFFFFF5 && v539 + 10 <= v538)
        {
          v541 = 0;
          v542 = 0;
          v543 = 0;
          v544 = (v540 + v539);
          v545 = v539 + 1;
          do
          {
            *v3 = v545;
            v546 = *v544++;
            v543 |= (v546 & 0x7F) << v541;
            if ((v546 & 0x80) == 0)
            {
              goto LABEL_1161;
            }

            v541 += 7;
            ++v545;
            v16 = v542++ > 8;
          }

          while (!v16);
LABEL_933:
          LODWORD(v543) = 0;
          goto LABEL_1161;
        }

        v847 = 0;
        v848 = 0;
        v543 = 0;
        v849 = (v540 + v539);
        v20 = v538 >= v539;
        v850 = v538 - v539;
        if (!v20)
        {
          v850 = 0;
        }

        v851 = v539 + 1;
        while (2)
        {
          if (v850)
          {
            v852 = *v849;
            *v3 = v851;
            v543 |= (v852 & 0x7F) << v847;
            if (v852 < 0)
            {
              v847 += 7;
              ++v849;
              --v850;
              ++v851;
              v16 = v848++ > 8;
              if (v16)
              {
                goto LABEL_933;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v543) = 0;
            }
          }

          else
          {
            LODWORD(v543) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1161:
        *(this + 51) = v543;
        break;
      case 1304:
        *(this + 45) |= 0x1000000000uLL;
        v558 = *(a2 + 1);
        v557 = *(a2 + 2);
        v559 = *a2;
        if (v558 <= 0xFFFFFFFFFFFFFFF5 && v558 + 10 <= v557)
        {
          v560 = 0;
          v561 = 0;
          v562 = 0;
          v563 = (v559 + v558);
          v564 = v558 + 1;
          do
          {
            *v3 = v564;
            v565 = *v563++;
            v562 |= (v565 & 0x7F) << v560;
            if ((v565 & 0x80) == 0)
            {
              goto LABEL_1167;
            }

            v560 += 7;
            ++v564;
            v16 = v561++ > 8;
          }

          while (!v16);
LABEL_949:
          LODWORD(v562) = 0;
          goto LABEL_1167;
        }

        v859 = 0;
        v860 = 0;
        v562 = 0;
        v861 = (v559 + v558);
        v20 = v557 >= v558;
        v862 = v557 - v558;
        if (!v20)
        {
          v862 = 0;
        }

        v863 = v558 + 1;
        while (2)
        {
          if (v862)
          {
            v864 = *v861;
            *v3 = v863;
            v562 |= (v864 & 0x7F) << v859;
            if (v864 < 0)
            {
              v859 += 7;
              ++v861;
              --v862;
              ++v863;
              v16 = v860++ > 8;
              if (v16)
              {
                goto LABEL_949;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v562) = 0;
            }
          }

          else
          {
            LODWORD(v562) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1167:
        *(this + 46) = v562;
        break;
      case 1305:
        *(this + 45) |= 0x200000000uLL;
        v512 = *(a2 + 1);
        v511 = *(a2 + 2);
        v513 = *a2;
        if (v512 <= 0xFFFFFFFFFFFFFFF5 && v512 + 10 <= v511)
        {
          v514 = 0;
          v515 = 0;
          v516 = 0;
          v517 = (v513 + v512);
          v518 = v512 + 1;
          do
          {
            *v3 = v518;
            v519 = *v517++;
            v516 |= (v519 & 0x7F) << v514;
            if ((v519 & 0x80) == 0)
            {
              goto LABEL_1149;
            }

            v514 += 7;
            ++v518;
            v16 = v515++ > 8;
          }

          while (!v16);
LABEL_901:
          LODWORD(v516) = 0;
          goto LABEL_1149;
        }

        v823 = 0;
        v824 = 0;
        v516 = 0;
        v825 = (v513 + v512);
        v20 = v511 >= v512;
        v826 = v511 - v512;
        if (!v20)
        {
          v826 = 0;
        }

        v827 = v512 + 1;
        while (2)
        {
          if (v826)
          {
            v828 = *v825;
            *v3 = v827;
            v516 |= (v828 & 0x7F) << v823;
            if (v828 < 0)
            {
              v823 += 7;
              ++v825;
              --v826;
              ++v827;
              v16 = v824++ > 8;
              if (v16)
              {
                goto LABEL_901;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v516) = 0;
            }
          }

          else
          {
            LODWORD(v516) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1149:
        *(this + 43) = v516;
        break;
      case 1306:
        *(this + 45) |= 0x800000000uLL;
        v580 = *(a2 + 1);
        v579 = *(a2 + 2);
        v581 = *a2;
        if (v580 <= 0xFFFFFFFFFFFFFFF5 && v580 + 10 <= v579)
        {
          v582 = 0;
          v583 = 0;
          v584 = 0;
          v585 = (v581 + v580);
          v586 = v580 + 1;
          do
          {
            *v3 = v586;
            v587 = *v585++;
            v584 |= (v587 & 0x7F) << v582;
            if ((v587 & 0x80) == 0)
            {
              goto LABEL_1173;
            }

            v582 += 7;
            ++v586;
            v16 = v583++ > 8;
          }

          while (!v16);
LABEL_967:
          LODWORD(v584) = 0;
          goto LABEL_1173;
        }

        v871 = 0;
        v872 = 0;
        v584 = 0;
        v873 = (v581 + v580);
        v20 = v579 >= v580;
        v874 = v579 - v580;
        if (!v20)
        {
          v874 = 0;
        }

        v875 = v580 + 1;
        while (2)
        {
          if (v874)
          {
            v876 = *v873;
            *v3 = v875;
            v584 |= (v876 & 0x7F) << v871;
            if (v876 < 0)
            {
              v871 += 7;
              ++v873;
              --v874;
              ++v875;
              v16 = v872++ > 8;
              if (v16)
              {
                goto LABEL_967;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v584) = 0;
            }
          }

          else
          {
            LODWORD(v584) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1173:
        *(this + 45) = v584;
        break;
      case 1307:
        *(this + 46) |= 0x200uLL;
        v597 = *(a2 + 1);
        if (v597 >= *(a2 + 2))
        {
          v600 = 0;
          *v5 = 1;
        }

        else
        {
          v598 = v597 + 1;
          v599 = *(*a2 + v597);
          *(a2 + 1) = v598;
          v600 = v599 != 0;
        }

        *(this + 323) = v600;
        break;
      case 1308:
        *(this + 46) |= 0x80000uLL;
        v566 = *(a2 + 1);
        if (v566 >= *(a2 + 2))
        {
          v569 = 0;
          *v5 = 1;
        }

        else
        {
          v567 = v566 + 1;
          v568 = *(*a2 + v566);
          *(a2 + 1) = v567;
          v569 = v568 != 0;
        }

        *(this + 333) = v569;
        break;
      case 1309:
        *(this + 45) |= 0x400000000uLL;
        v611 = *(a2 + 1);
        v610 = *(a2 + 2);
        v612 = *a2;
        if (v611 <= 0xFFFFFFFFFFFFFFF5 && v611 + 10 <= v610)
        {
          v613 = 0;
          v614 = 0;
          v615 = 0;
          v616 = (v612 + v611);
          v617 = v611 + 1;
          do
          {
            *v3 = v617;
            v618 = *v616++;
            v615 |= (v618 & 0x7F) << v613;
            if ((v618 & 0x80) == 0)
            {
              goto LABEL_1182;
            }

            v613 += 7;
            ++v617;
            v16 = v614++ > 8;
          }

          while (!v16);
LABEL_991:
          LODWORD(v615) = 0;
          goto LABEL_1182;
        }

        v889 = 0;
        v890 = 0;
        v615 = 0;
        v891 = (v612 + v611);
        v20 = v610 >= v611;
        v892 = v610 - v611;
        if (!v20)
        {
          v892 = 0;
        }

        v893 = v611 + 1;
        while (2)
        {
          if (v892)
          {
            v894 = *v891;
            *v3 = v893;
            v615 |= (v894 & 0x7F) << v889;
            if (v894 < 0)
            {
              v889 += 7;
              ++v891;
              --v892;
              ++v893;
              v16 = v890++ > 8;
              if (v16)
              {
                goto LABEL_991;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v615) = 0;
            }
          }

          else
          {
            LODWORD(v615) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1182:
        *(this + 44) = v615;
        break;
      case 1310:
        *(this + 45) |= 2uLL;
        v530 = *(a2 + 1);
        v529 = *(a2 + 2);
        v531 = *a2;
        if (v530 <= 0xFFFFFFFFFFFFFFF5 && v530 + 10 <= v529)
        {
          v532 = 0;
          v533 = 0;
          v534 = 0;
          v535 = (v531 + v530);
          v536 = v530 + 1;
          do
          {
            *v3 = v536;
            v537 = *v535++;
            v534 |= (v537 & 0x7F) << v532;
            if ((v537 & 0x80) == 0)
            {
              goto LABEL_1155;
            }

            v532 += 7;
            ++v536;
            v16 = v533++ > 8;
          }

          while (!v16);
LABEL_917:
          v534 = 0;
          goto LABEL_1155;
        }

        v835 = 0;
        v836 = 0;
        v534 = 0;
        v837 = (v531 + v530);
        v20 = v529 >= v530;
        v838 = v529 - v530;
        if (!v20)
        {
          v838 = 0;
        }

        v839 = v530 + 1;
        while (2)
        {
          if (v838)
          {
            v840 = *v837;
            *v3 = v839;
            v534 |= (v840 & 0x7F) << v835;
            if (v840 < 0)
            {
              v835 += 7;
              ++v837;
              --v838;
              ++v839;
              v16 = v836++ > 8;
              if (v16)
              {
                goto LABEL_917;
              }

              continue;
            }

            if (*v5)
            {
              v534 = 0;
            }
          }

          else
          {
            v534 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1155:
        *(this + 2) = v534;
        break;
      case 1311:
        *(this + 45) |= 0x20uLL;
        v602 = *(a2 + 1);
        v601 = *(a2 + 2);
        v603 = *a2;
        if (v602 <= 0xFFFFFFFFFFFFFFF5 && v602 + 10 <= v601)
        {
          v604 = 0;
          v605 = 0;
          v606 = 0;
          v607 = (v603 + v602);
          v608 = v602 + 1;
          do
          {
            *v3 = v608;
            v609 = *v607++;
            v606 |= (v609 & 0x7F) << v604;
            if ((v609 & 0x80) == 0)
            {
              goto LABEL_1179;
            }

            v604 += 7;
            ++v608;
            v16 = v605++ > 8;
          }

          while (!v16);
LABEL_983:
          v606 = 0;
          goto LABEL_1179;
        }

        v883 = 0;
        v884 = 0;
        v606 = 0;
        v885 = (v603 + v602);
        v20 = v601 >= v602;
        v886 = v601 - v602;
        if (!v20)
        {
          v886 = 0;
        }

        v887 = v602 + 1;
        while (2)
        {
          if (v886)
          {
            v888 = *v885;
            *v3 = v887;
            v606 |= (v888 & 0x7F) << v883;
            if (v888 < 0)
            {
              v883 += 7;
              ++v885;
              --v886;
              ++v887;
              v16 = v884++ > 8;
              if (v16)
              {
                goto LABEL_983;
              }

              continue;
            }

            if (*v5)
            {
              v606 = 0;
            }
          }

          else
          {
            v606 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1179:
        *(this + 6) = v606;
        break;
      case 1312:
        *(this + 45) |= 4uLL;
        v503 = *(a2 + 1);
        v502 = *(a2 + 2);
        v504 = *a2;
        if (v503 <= 0xFFFFFFFFFFFFFFF5 && v503 + 10 <= v502)
        {
          v505 = 0;
          v506 = 0;
          v507 = 0;
          v508 = (v504 + v503);
          v509 = v503 + 1;
          do
          {
            *v3 = v509;
            v510 = *v508++;
            v507 |= (v510 & 0x7F) << v505;
            if ((v510 & 0x80) == 0)
            {
              goto LABEL_1146;
            }

            v505 += 7;
            ++v509;
            v16 = v506++ > 8;
          }

          while (!v16);
LABEL_893:
          v507 = 0;
          goto LABEL_1146;
        }

        v817 = 0;
        v818 = 0;
        v507 = 0;
        v819 = (v504 + v503);
        v20 = v502 >= v503;
        v820 = v502 - v503;
        if (!v20)
        {
          v820 = 0;
        }

        v821 = v503 + 1;
        while (2)
        {
          if (v820)
          {
            v822 = *v819;
            *v3 = v821;
            v507 |= (v822 & 0x7F) << v817;
            if (v822 < 0)
            {
              v817 += 7;
              ++v819;
              --v820;
              ++v821;
              v16 = v818++ > 8;
              if (v16)
              {
                goto LABEL_893;
              }

              continue;
            }

            if (*v5)
            {
              v507 = 0;
            }
          }

          else
          {
            v507 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1146:
        *(this + 3) = v507;
        break;
      case 1313:
        *(this + 45) |= 8uLL;
        v521 = *(a2 + 1);
        v520 = *(a2 + 2);
        v522 = *a2;
        if (v521 <= 0xFFFFFFFFFFFFFFF5 && v521 + 10 <= v520)
        {
          v523 = 0;
          v524 = 0;
          v525 = 0;
          v526 = (v522 + v521);
          v527 = v521 + 1;
          do
          {
            *v3 = v527;
            v528 = *v526++;
            v525 |= (v528 & 0x7F) << v523;
            if ((v528 & 0x80) == 0)
            {
              goto LABEL_1152;
            }

            v523 += 7;
            ++v527;
            v16 = v524++ > 8;
          }

          while (!v16);
LABEL_909:
          v525 = 0;
          goto LABEL_1152;
        }

        v829 = 0;
        v830 = 0;
        v525 = 0;
        v831 = (v522 + v521);
        v20 = v520 >= v521;
        v832 = v520 - v521;
        if (!v20)
        {
          v832 = 0;
        }

        v833 = v521 + 1;
        while (2)
        {
          if (v832)
          {
            v834 = *v831;
            *v3 = v833;
            v525 |= (v834 & 0x7F) << v829;
            if (v834 < 0)
            {
              v829 += 7;
              ++v831;
              --v832;
              ++v833;
              v16 = v830++ > 8;
              if (v16)
              {
                goto LABEL_909;
              }

              continue;
            }

            if (*v5)
            {
              v525 = 0;
            }
          }

          else
          {
            v525 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1152:
        *(this + 4) = v525;
        break;
      case 1314:
        *(this + 45) |= 0x10uLL;
        v589 = *(a2 + 1);
        v588 = *(a2 + 2);
        v590 = *a2;
        if (v589 <= 0xFFFFFFFFFFFFFFF5 && v589 + 10 <= v588)
        {
          v591 = 0;
          v592 = 0;
          v593 = 0;
          v594 = (v590 + v589);
          v595 = v589 + 1;
          do
          {
            *v3 = v595;
            v596 = *v594++;
            v593 |= (v596 & 0x7F) << v591;
            if ((v596 & 0x80) == 0)
            {
              goto LABEL_1176;
            }

            v591 += 7;
            ++v595;
            v16 = v592++ > 8;
          }

          while (!v16);
LABEL_975:
          v593 = 0;
          goto LABEL_1176;
        }

        v877 = 0;
        v878 = 0;
        v593 = 0;
        v879 = (v590 + v589);
        v20 = v588 >= v589;
        v880 = v588 - v589;
        if (!v20)
        {
          v880 = 0;
        }

        v881 = v589 + 1;
        while (2)
        {
          if (v880)
          {
            v882 = *v879;
            *v3 = v881;
            v593 |= (v882 & 0x7F) << v877;
            if (v882 < 0)
            {
              v877 += 7;
              ++v879;
              --v880;
              ++v881;
              v16 = v878++ > 8;
              if (v16)
              {
                goto LABEL_975;
              }

              continue;
            }

            if (*v5)
            {
              v593 = 0;
            }
          }

          else
          {
            v593 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1176:
        *(this + 5) = v593;
        break;
      case 1315:
        *(this + 45) |= 0x4000000000000uLL;
        v494 = *(a2 + 1);
        v493 = *(a2 + 2);
        v495 = *a2;
        if (v494 <= 0xFFFFFFFFFFFFFFF5 && v494 + 10 <= v493)
        {
          v496 = 0;
          v497 = 0;
          v498 = 0;
          v499 = (v495 + v494);
          v500 = v494 + 1;
          do
          {
            *v3 = v500;
            v501 = *v499++;
            v498 |= (v501 & 0x7F) << v496;
            if ((v501 & 0x80) == 0)
            {
              goto LABEL_1143;
            }

            v496 += 7;
            ++v500;
            v16 = v497++ > 8;
          }

          while (!v16);
LABEL_885:
          LODWORD(v498) = 0;
          goto LABEL_1143;
        }

        v811 = 0;
        v812 = 0;
        v498 = 0;
        v813 = (v495 + v494);
        v20 = v493 >= v494;
        v814 = v493 - v494;
        if (!v20)
        {
          v814 = 0;
        }

        v815 = v494 + 1;
        while (2)
        {
          if (v814)
          {
            v816 = *v813;
            *v3 = v815;
            v498 |= (v816 & 0x7F) << v811;
            if (v816 < 0)
            {
              v811 += 7;
              ++v813;
              --v814;
              ++v815;
              v16 = v812++ > 8;
              if (v16)
              {
                goto LABEL_885;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v498) = 0;
            }
          }

          else
          {
            LODWORD(v498) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1143:
        *(this + 60) = v498;
        break;
      case 1316:
        *(this + 45) |= 0x2000uLL;
        v547 = *v3;
        if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v547 + 4 > *(a2 + 2))
        {
          goto LABEL_494;
        }

        *(this + 23) = *(*a2 + v547);
        goto LABEL_995;
      default:
        if (v24 == 1201)
        {
          *(this + 45) |= 0x8000000000uLL;
          v549 = *(a2 + 1);
          v548 = *(a2 + 2);
          v550 = *a2;
          if (v549 > 0xFFFFFFFFFFFFFFF5 || v549 + 10 > v548)
          {
            v853 = 0;
            v854 = 0;
            v553 = 0;
            v855 = (v550 + v549);
            v20 = v548 >= v549;
            v856 = v548 - v549;
            if (!v20)
            {
              v856 = 0;
            }

            v857 = v549 + 1;
            while (1)
            {
              if (!v856)
              {
                LODWORD(v553) = 0;
                *v5 = 1;
                goto LABEL_1164;
              }

              v858 = *v855;
              *v3 = v857;
              v553 |= (v858 & 0x7F) << v853;
              if ((v858 & 0x80) == 0)
              {
                break;
              }

              v853 += 7;
              ++v855;
              --v856;
              ++v857;
              v16 = v854++ > 8;
              if (v16)
              {
LABEL_941:
                LODWORD(v553) = 0;
                goto LABEL_1164;
              }
            }

            if (*v5)
            {
              LODWORD(v553) = 0;
            }
          }

          else
          {
            v551 = 0;
            v552 = 0;
            v553 = 0;
            v554 = (v550 + v549);
            v555 = v549 + 1;
            while (1)
            {
              *v3 = v555;
              v556 = *v554++;
              v553 |= (v556 & 0x7F) << v551;
              if ((v556 & 0x80) == 0)
              {
                break;
              }

              v551 += 7;
              ++v555;
              v16 = v552++ > 8;
              if (v16)
              {
                goto LABEL_941;
              }
            }
          }

LABEL_1164:
          *(this + 49) = v553;
          break;
        }

        if (v24 != 1202)
        {
          goto LABEL_194;
        }

        *(this + 45) |= 0x10000000000uLL;
        v131 = *(a2 + 1);
        v130 = *(a2 + 2);
        v132 = *a2;
        if (v131 > 0xFFFFFFFFFFFFFFF5 || v131 + 10 > v130)
        {
          v841 = 0;
          v842 = 0;
          v135 = 0;
          v843 = (v132 + v131);
          v20 = v130 >= v131;
          v844 = v130 - v131;
          if (!v20)
          {
            v844 = 0;
          }

          v845 = v131 + 1;
          while (1)
          {
            if (!v844)
            {
              LODWORD(v135) = 0;
              *v5 = 1;
              goto LABEL_1158;
            }

            v846 = *v843;
            *v3 = v845;
            v135 |= (v846 & 0x7F) << v841;
            if ((v846 & 0x80) == 0)
            {
              break;
            }

            v841 += 7;
            ++v843;
            --v844;
            ++v845;
            v16 = v842++ > 8;
            if (v16)
            {
LABEL_925:
              LODWORD(v135) = 0;
              goto LABEL_1158;
            }
          }

          if (*v5)
          {
            LODWORD(v135) = 0;
          }
        }

        else
        {
          v133 = 0;
          v134 = 0;
          v135 = 0;
          v136 = (v132 + v131);
          v137 = v131 + 1;
          while (1)
          {
            *v3 = v137;
            v138 = *v136++;
            v135 |= (v138 & 0x7F) << v133;
            if ((v138 & 0x80) == 0)
            {
              break;
            }

            v133 += 7;
            ++v137;
            v16 = v134++ > 8;
            if (v16)
            {
              goto LABEL_925;
            }
          }
        }

LABEL_1158:
        *(this + 50) = v135;
        break;
    }

LABEL_996:
    v2 = *(a2 + 1);
    v6 = *(a2 + 2);
    v4 = *(a2 + 24);
    if (v2 >= v6 || (*(a2 + 24) & 1) != 0)
    {
      goto LABEL_1183;
    }
  }

  if (v24 <= 504)
  {
    if (v24 <= 406)
    {
      if (v24 > 403)
      {
        if (v24 == 404)
        {
          *(this + 45) |= 0x10000000uLL;
          v175 = *(a2 + 1);
          v174 = *(a2 + 2);
          v176 = *a2;
          if (v175 > 0xFFFFFFFFFFFFFFF5 || v175 + 10 > v174)
          {
            v655 = 0;
            v656 = 0;
            v179 = 0;
            v657 = (v176 + v175);
            v20 = v174 >= v175;
            v658 = v174 - v175;
            if (!v20)
            {
              v658 = 0;
            }

            v659 = v175 + 1;
            while (1)
            {
              if (!v658)
              {
                LODWORD(v179) = 0;
                *v5 = 1;
                goto LABEL_1051;
              }

              v660 = *v657;
              *v3 = v659;
              v179 |= (v660 & 0x7F) << v655;
              if ((v660 & 0x80) == 0)
              {
                break;
              }

              v655 += 7;
              ++v657;
              --v658;
              ++v659;
              v16 = v656++ > 8;
              if (v16)
              {
LABEL_607:
                LODWORD(v179) = 0;
                goto LABEL_1051;
              }
            }

            if (*v5)
            {
              LODWORD(v179) = 0;
            }
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            v180 = (v176 + v175);
            v181 = v175 + 1;
            while (1)
            {
              *v3 = v181;
              v182 = *v180++;
              v179 |= (v182 & 0x7F) << v177;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v177 += 7;
              ++v181;
              v16 = v178++ > 8;
              if (v16)
              {
                goto LABEL_607;
              }
            }
          }

LABEL_1051:
          *(this + 38) = v179;
        }

        else if (v24 == 405)
        {
          *(this + 46) |= 0x40000uLL;
          v192 = *(a2 + 1);
          if (v192 >= *(a2 + 2))
          {
            v195 = 0;
            *v5 = 1;
          }

          else
          {
            v193 = v192 + 1;
            v194 = *(*a2 + v192);
            *(a2 + 1) = v193;
            v195 = v194 != 0;
          }

          *(this + 332) = v195;
        }

        else
        {
          *(this + 46) |= 0x8000uLL;
          v78 = *(a2 + 1);
          if (v78 >= *(a2 + 2))
          {
            v81 = 0;
            *v5 = 1;
          }

          else
          {
            v79 = v78 + 1;
            v80 = *(*a2 + v78);
            *(a2 + 1) = v79;
            v81 = v80 != 0;
          }

          *(this + 329) = v81;
        }

        goto LABEL_996;
      }

      switch(v24)
      {
        case 0x191:
          *(this + 45) |= 0x40000000000000uLL;
          v166 = *(a2 + 1);
          v165 = *(a2 + 2);
          v167 = *a2;
          if (v166 > 0xFFFFFFFFFFFFFFF5 || v166 + 10 > v165)
          {
            v649 = 0;
            v650 = 0;
            v170 = 0;
            v651 = (v167 + v166);
            v20 = v165 >= v166;
            v652 = v165 - v166;
            if (!v20)
            {
              v652 = 0;
            }

            v653 = v166 + 1;
            while (1)
            {
              if (!v652)
              {
                LODWORD(v170) = 0;
                *v5 = 1;
                goto LABEL_1048;
              }

              v654 = *v651;
              *v3 = v653;
              v170 |= (v654 & 0x7F) << v649;
              if ((v654 & 0x80) == 0)
              {
                break;
              }

              v649 += 7;
              ++v651;
              --v652;
              ++v653;
              v16 = v650++ > 8;
              if (v16)
              {
LABEL_599:
                LODWORD(v170) = 0;
                goto LABEL_1048;
              }
            }

            if (*v5)
            {
              LODWORD(v170) = 0;
            }
          }

          else
          {
            v168 = 0;
            v169 = 0;
            v170 = 0;
            v171 = (v167 + v166);
            v172 = v166 + 1;
            while (1)
            {
              *v3 = v172;
              v173 = *v171++;
              v170 |= (v173 & 0x7F) << v168;
              if ((v173 & 0x80) == 0)
              {
                break;
              }

              v168 += 7;
              ++v172;
              v16 = v169++ > 8;
              if (v16)
              {
                goto LABEL_599;
              }
            }
          }

LABEL_1048:
          *(this + 64) = v170;
          goto LABEL_996;
        case 0x192:
          *(this + 45) |= 0x80000000000000uLL;
          v184 = *(a2 + 1);
          v183 = *(a2 + 2);
          v185 = *a2;
          if (v184 > 0xFFFFFFFFFFFFFFF5 || v184 + 10 > v183)
          {
            v661 = 0;
            v662 = 0;
            v188 = 0;
            v663 = (v185 + v184);
            v20 = v183 >= v184;
            v664 = v183 - v184;
            if (!v20)
            {
              v664 = 0;
            }

            v665 = v184 + 1;
            while (1)
            {
              if (!v664)
              {
                LODWORD(v188) = 0;
                *v5 = 1;
                goto LABEL_1054;
              }

              v666 = *v663;
              *v3 = v665;
              v188 |= (v666 & 0x7F) << v661;
              if ((v666 & 0x80) == 0)
              {
                break;
              }

              v661 += 7;
              ++v663;
              --v664;
              ++v665;
              v16 = v662++ > 8;
              if (v16)
              {
LABEL_615:
                LODWORD(v188) = 0;
                goto LABEL_1054;
              }
            }

            if (*v5)
            {
              LODWORD(v188) = 0;
            }
          }

          else
          {
            v186 = 0;
            v187 = 0;
            v188 = 0;
            v189 = (v185 + v184);
            v190 = v184 + 1;
            while (1)
            {
              *v3 = v190;
              v191 = *v189++;
              v188 |= (v191 & 0x7F) << v186;
              if ((v191 & 0x80) == 0)
              {
                break;
              }

              v186 += 7;
              ++v190;
              v16 = v187++ > 8;
              if (v16)
              {
                goto LABEL_615;
              }
            }
          }

LABEL_1054:
          *(this + 65) = v188;
          goto LABEL_996;
        case 0x193:
          *(this + 45) |= 0x8000000uLL;
          v61 = *(a2 + 1);
          v60 = *(a2 + 2);
          v62 = *a2;
          if (v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v60)
          {
            v667 = 0;
            v668 = 0;
            v65 = 0;
            v669 = (v62 + v61);
            v20 = v60 >= v61;
            v670 = v60 - v61;
            if (!v20)
            {
              v670 = 0;
            }

            v671 = v61 + 1;
            while (1)
            {
              if (!v670)
              {
                LODWORD(v65) = 0;
                *v5 = 1;
                goto LABEL_1057;
              }

              v672 = *v669;
              *v3 = v671;
              v65 |= (v672 & 0x7F) << v667;
              if ((v672 & 0x80) == 0)
              {
                break;
              }

              v667 += 7;
              ++v669;
              --v670;
              ++v671;
              v16 = v668++ > 8;
              if (v16)
              {
LABEL_625:
                LODWORD(v65) = 0;
                goto LABEL_1057;
              }
            }

            if (*v5)
            {
              LODWORD(v65) = 0;
            }
          }

          else
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = (v62 + v61);
            v67 = v61 + 1;
            while (1)
            {
              *v3 = v67;
              v68 = *v66++;
              v65 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v67;
              v16 = v64++ > 8;
              if (v16)
              {
                goto LABEL_625;
              }
            }
          }

LABEL_1057:
          *(this + 37) = v65;
          goto LABEL_996;
      }

      goto LABEL_194;
    }

    if (v24 <= 500)
    {
      switch(v24)
      {
        case 0x197:
          *(this + 45) |= 0x4000000000uLL;
          v242 = *(a2 + 1);
          v241 = *(a2 + 2);
          v243 = *a2;
          if (v242 > 0xFFFFFFFFFFFFFFF5 || v242 + 10 > v241)
          {
            v715 = 0;
            v716 = 0;
            v246 = 0;
            v717 = (v243 + v242);
            v20 = v241 >= v242;
            v718 = v241 - v242;
            if (!v20)
            {
              v718 = 0;
            }

            v719 = v242 + 1;
            while (1)
            {
              if (!v718)
              {
                LODWORD(v246) = 0;
                *v5 = 1;
                goto LABEL_1081;
              }

              v720 = *v717;
              *v3 = v719;
              v246 |= (v720 & 0x7F) << v715;
              if ((v720 & 0x80) == 0)
              {
                break;
              }

              v715 += 7;
              ++v717;
              --v718;
              ++v719;
              v16 = v716++ > 8;
              if (v16)
              {
LABEL_693:
                LODWORD(v246) = 0;
                goto LABEL_1081;
              }
            }

            if (*v5)
            {
              LODWORD(v246) = 0;
            }
          }

          else
          {
            v244 = 0;
            v245 = 0;
            v246 = 0;
            v247 = (v243 + v242);
            v248 = v242 + 1;
            while (1)
            {
              *v3 = v248;
              v249 = *v247++;
              v246 |= (v249 & 0x7F) << v244;
              if ((v249 & 0x80) == 0)
              {
                break;
              }

              v244 += 7;
              ++v248;
              v16 = v245++ > 8;
              if (v16)
              {
                goto LABEL_693;
              }
            }
          }

LABEL_1081:
          *(this + 48) = v246;
          goto LABEL_996;
        case 0x198:
          *(this + 45) |= 0x80000uLL;
          v251 = *(a2 + 1);
          v250 = *(a2 + 2);
          v252 = *a2;
          if (v251 > 0xFFFFFFFFFFFFFFF5 || v251 + 10 > v250)
          {
            v727 = 0;
            v728 = 0;
            v255 = 0;
            v729 = (v252 + v251);
            v20 = v250 >= v251;
            v730 = v250 - v251;
            if (!v20)
            {
              v730 = 0;
            }

            v731 = v251 + 1;
            while (1)
            {
              if (!v730)
              {
                LODWORD(v255) = 0;
                *v5 = 1;
                goto LABEL_1087;
              }

              v732 = *v729;
              *v3 = v731;
              v255 |= (v732 & 0x7F) << v727;
              if ((v732 & 0x80) == 0)
              {
                break;
              }

              v727 += 7;
              ++v729;
              --v730;
              ++v731;
              v16 = v728++ > 8;
              if (v16)
              {
LABEL_709:
                LODWORD(v255) = 0;
                goto LABEL_1087;
              }
            }

            if (*v5)
            {
              LODWORD(v255) = 0;
            }
          }

          else
          {
            v253 = 0;
            v254 = 0;
            v255 = 0;
            v256 = (v252 + v251);
            v257 = v251 + 1;
            while (1)
            {
              *v3 = v257;
              v258 = *v256++;
              v255 |= (v258 & 0x7F) << v253;
              if ((v258 & 0x80) == 0)
              {
                break;
              }

              v253 += 7;
              ++v257;
              v16 = v254++ > 8;
              if (v16)
              {
                goto LABEL_709;
              }
            }
          }

LABEL_1087:
          *(this + 29) = v255;
          goto LABEL_996;
        case 0x199:
          *(this + 45) |= 0x2000000000uLL;
          v93 = *(a2 + 1);
          v92 = *(a2 + 2);
          v94 = *a2;
          if (v93 > 0xFFFFFFFFFFFFFFF5 || v93 + 10 > v92)
          {
            v733 = 0;
            v734 = 0;
            v97 = 0;
            v735 = (v94 + v93);
            v20 = v92 >= v93;
            v736 = v92 - v93;
            if (!v20)
            {
              v736 = 0;
            }

            v737 = v93 + 1;
            while (1)
            {
              if (!v736)
              {
                LODWORD(v97) = 0;
                *v5 = 1;
                goto LABEL_1090;
              }

              v738 = *v735;
              *v3 = v737;
              v97 |= (v738 & 0x7F) << v733;
              if ((v738 & 0x80) == 0)
              {
                break;
              }

              v733 += 7;
              ++v735;
              --v736;
              ++v737;
              v16 = v734++ > 8;
              if (v16)
              {
LABEL_717:
                LODWORD(v97) = 0;
                goto LABEL_1090;
              }
            }

            if (*v5)
            {
              LODWORD(v97) = 0;
            }
          }

          else
          {
            v95 = 0;
            v96 = 0;
            v97 = 0;
            v98 = (v94 + v93);
            v99 = v93 + 1;
            while (1)
            {
              *v3 = v99;
              v100 = *v98++;
              v97 |= (v100 & 0x7F) << v95;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              ++v99;
              v16 = v96++ > 8;
              if (v16)
              {
                goto LABEL_717;
              }
            }
          }

LABEL_1090:
          *(this + 47) = v97;
          goto LABEL_996;
      }

      goto LABEL_194;
    }

    if (v24 > 502)
    {
      if (v24 != 503)
      {
        *(this + 45) |= 0x1000000000000000uLL;
        v122 = *(a2 + 1);
        v121 = *(a2 + 2);
        v123 = *a2;
        if (v122 > 0xFFFFFFFFFFFFFFF5 || v122 + 10 > v121)
        {
          v709 = 0;
          v710 = 0;
          v126 = 0;
          v711 = (v123 + v122);
          v20 = v121 >= v122;
          v712 = v121 - v122;
          if (!v20)
          {
            v712 = 0;
          }

          v713 = v122 + 1;
          while (1)
          {
            if (!v712)
            {
              LODWORD(v126) = 0;
              *v5 = 1;
              goto LABEL_1078;
            }

            v714 = *v711;
            *v3 = v713;
            v126 |= (v714 & 0x7F) << v709;
            if ((v714 & 0x80) == 0)
            {
              break;
            }

            v709 += 7;
            ++v711;
            --v712;
            ++v713;
            v16 = v710++ > 8;
            if (v16)
            {
LABEL_683:
              LODWORD(v126) = 0;
              goto LABEL_1078;
            }
          }

          if (*v5)
          {
            LODWORD(v126) = 0;
          }
        }

        else
        {
          v124 = 0;
          v125 = 0;
          v126 = 0;
          v127 = (v123 + v122);
          v128 = v122 + 1;
          while (1)
          {
            *v3 = v128;
            v129 = *v127++;
            v126 |= (v129 & 0x7F) << v124;
            if ((v129 & 0x80) == 0)
            {
              break;
            }

            v124 += 7;
            ++v128;
            v16 = v125++ > 8;
            if (v16)
            {
              goto LABEL_683;
            }
          }
        }

LABEL_1078:
        *(this + 70) = v126;
        goto LABEL_996;
      }

      *(this + 45) |= 0x400000000000000uLL;
      v240 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v240 + 4 > *(a2 + 2))
      {
        goto LABEL_494;
      }

      *(this + 68) = *(*a2 + v240);
    }

    else if (v24 == 501)
    {
      *(this + 45) |= 0x8000000000000000;
      v239 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v239 + 4 > *(a2 + 2))
      {
        goto LABEL_494;
      }

      *(this + 73) = *(*a2 + v239);
    }

    else
    {
      *(this + 46) |= 1uLL;
      v49 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(a2 + 2))
      {
        goto LABEL_494;
      }

      *(this + 74) = *(*a2 + v49);
    }

LABEL_995:
    *(a2 + 1) += 4;
    goto LABEL_996;
  }

  if (v24 > 700)
  {
    if (v24 <= 801)
    {
      if (v24 == 701)
      {
        *(this + 45) |= 0x1000000000000uLL;
        v218 = *(a2 + 1);
        v217 = *(a2 + 2);
        v219 = *a2;
        if (v218 > 0xFFFFFFFFFFFFFFF5 || v218 + 10 > v217)
        {
          v697 = 0;
          v698 = 0;
          v222 = 0;
          v699 = (v219 + v218);
          v20 = v217 >= v218;
          v700 = v217 - v218;
          if (!v20)
          {
            v700 = 0;
          }

          v701 = v218 + 1;
          while (1)
          {
            if (!v700)
            {
              LODWORD(v222) = 0;
              *v5 = 1;
              goto LABEL_1072;
            }

            v702 = *v699;
            *v3 = v701;
            v222 |= (v702 & 0x7F) << v697;
            if ((v702 & 0x80) == 0)
            {
              break;
            }

            v697 += 7;
            ++v699;
            --v700;
            ++v701;
            v16 = v698++ > 8;
            if (v16)
            {
LABEL_667:
              LODWORD(v222) = 0;
              goto LABEL_1072;
            }
          }

          if (*v5)
          {
            LODWORD(v222) = 0;
          }
        }

        else
        {
          v220 = 0;
          v221 = 0;
          v222 = 0;
          v223 = (v219 + v218);
          v224 = v218 + 1;
          while (1)
          {
            *v3 = v224;
            v225 = *v223++;
            v222 |= (v225 & 0x7F) << v220;
            if ((v225 & 0x80) == 0)
            {
              break;
            }

            v220 += 7;
            ++v224;
            v16 = v221++ > 8;
            if (v16)
            {
              goto LABEL_667;
            }
          }
        }

LABEL_1072:
        *(this + 58) = v222;
        goto LABEL_996;
      }

      if (v24 == 702)
      {
        *(this + 45) |= 0x2000000000000uLL;
        v231 = *(a2 + 1);
        v230 = *(a2 + 2);
        v232 = *a2;
        if (v231 > 0xFFFFFFFFFFFFFFF5 || v231 + 10 > v230)
        {
          v703 = 0;
          v704 = 0;
          v235 = 0;
          v705 = (v232 + v231);
          v20 = v230 >= v231;
          v706 = v230 - v231;
          if (!v20)
          {
            v706 = 0;
          }

          v707 = v231 + 1;
          while (1)
          {
            if (!v706)
            {
              LODWORD(v235) = 0;
              *v5 = 1;
              goto LABEL_1075;
            }

            v708 = *v705;
            *v3 = v707;
            v235 |= (v708 & 0x7F) << v703;
            if ((v708 & 0x80) == 0)
            {
              break;
            }

            v703 += 7;
            ++v705;
            --v706;
            ++v707;
            v16 = v704++ > 8;
            if (v16)
            {
LABEL_675:
              LODWORD(v235) = 0;
              goto LABEL_1075;
            }
          }

          if (*v5)
          {
            LODWORD(v235) = 0;
          }
        }

        else
        {
          v233 = 0;
          v234 = 0;
          v235 = 0;
          v236 = (v232 + v231);
          v237 = v231 + 1;
          while (1)
          {
            *v3 = v237;
            v238 = *v236++;
            v235 |= (v238 & 0x7F) << v233;
            if ((v238 & 0x80) == 0)
            {
              break;
            }

            v233 += 7;
            ++v237;
            v16 = v234++ > 8;
            if (v16)
            {
              goto LABEL_675;
            }
          }
        }

LABEL_1075:
        *(this + 59) = v235;
        goto LABEL_996;
      }

      if (v24 != 801)
      {
        goto LABEL_194;
      }

      *(this + 45) |= 0x100000uLL;
      v91 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(a2 + 2))
      {
        goto LABEL_494;
      }

      *(this + 30) = *(*a2 + v91);
    }

    else if (v24 > 803)
    {
      if (v24 == 804)
      {
        *(this + 45) |= 0x800uLL;
        v207 = *v3;
        if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v207 + 4 > *(a2 + 2))
        {
          goto LABEL_494;
        }

        *(this + 21) = *(*a2 + v207);
      }

      else
      {
        if (v24 != 901)
        {
          goto LABEL_194;
        }

        *(this + 45) |= 0x100uLL;
        v120 = *v3;
        if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(a2 + 2))
        {
          goto LABEL_494;
        }

        *(this + 18) = *(*a2 + v120);
      }
    }

    else if (v24 == 802)
    {
      *(this + 45) |= 0x400uLL;
      v197 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v197 + 4 > *(a2 + 2))
      {
        goto LABEL_494;
      }

      *(this + 20) = *(*a2 + v197);
    }

    else
    {
      *(this + 45) |= 0x200000uLL;
      v59 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
      {
        goto LABEL_494;
      }

      *(this + 31) = *(*a2 + v59);
    }

    goto LABEL_995;
  }

  if (v24 > 602)
  {
    if (v24 > 604)
    {
      if (v24 == 605)
      {
        *(this + 45) |= 0x200000000000000uLL;
        v199 = *(a2 + 1);
        v198 = *(a2 + 2);
        v200 = *a2;
        if (v199 > 0xFFFFFFFFFFFFFFF5 || v199 + 10 > v198)
        {
          v685 = 0;
          v686 = 0;
          v203 = 0;
          v687 = (v200 + v199);
          v20 = v198 >= v199;
          v688 = v198 - v199;
          if (!v20)
          {
            v688 = 0;
          }

          v689 = v199 + 1;
          while (1)
          {
            if (!v688)
            {
              LODWORD(v203) = 0;
              *v5 = 1;
              goto LABEL_1066;
            }

            v690 = *v687;
            *v3 = v689;
            v203 |= (v690 & 0x7F) << v685;
            if ((v690 & 0x80) == 0)
            {
              break;
            }

            v685 += 7;
            ++v687;
            --v688;
            ++v689;
            v16 = v686++ > 8;
            if (v16)
            {
LABEL_649:
              LODWORD(v203) = 0;
              goto LABEL_1066;
            }
          }

          if (*v5)
          {
            LODWORD(v203) = 0;
          }
        }

        else
        {
          v201 = 0;
          v202 = 0;
          v203 = 0;
          v204 = (v200 + v199);
          v205 = v199 + 1;
          while (1)
          {
            *v3 = v205;
            v206 = *v204++;
            v203 |= (v206 & 0x7F) << v201;
            if ((v206 & 0x80) == 0)
            {
              break;
            }

            v201 += 7;
            ++v205;
            v16 = v202++ > 8;
            if (v16)
            {
              goto LABEL_649;
            }
          }
        }

LABEL_1066:
        *(this + 67) = v203;
        goto LABEL_996;
      }

      if (v24 == 606)
      {
        *(this + 45) |= 0x40uLL;
        v112 = *(a2 + 1);
        v111 = *(a2 + 2);
        v113 = *a2;
        if (v112 > 0xFFFFFFFFFFFFFFF5 || v112 + 10 > v111)
        {
          v679 = 0;
          v680 = 0;
          v116 = 0;
          v681 = (v113 + v112);
          v20 = v111 >= v112;
          v682 = v111 - v112;
          if (!v20)
          {
            v682 = 0;
          }

          v683 = v112 + 1;
          while (1)
          {
            if (!v682)
            {
              v116 = 0;
              *v5 = 1;
              goto LABEL_1063;
            }

            v684 = *v681;
            *v3 = v683;
            v116 |= (v684 & 0x7F) << v679;
            if ((v684 & 0x80) == 0)
            {
              break;
            }

            v679 += 7;
            ++v681;
            --v682;
            ++v683;
            v16 = v680++ > 8;
            if (v16)
            {
LABEL_641:
              v116 = 0;
              goto LABEL_1063;
            }
          }

          if (*v5)
          {
            v116 = 0;
          }
        }

        else
        {
          v114 = 0;
          v115 = 0;
          v116 = 0;
          v117 = (v113 + v112);
          v118 = v112 + 1;
          while (1)
          {
            *v3 = v118;
            v119 = *v117++;
            v116 |= (v119 & 0x7F) << v114;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v114 += 7;
            ++v118;
            v16 = v115++ > 8;
            if (v16)
            {
              goto LABEL_641;
            }
          }
        }

LABEL_1063:
        *(this + 7) = v116;
        goto LABEL_996;
      }

      goto LABEL_194;
    }

    if (v24 != 603)
    {
      *(this + 45) |= 0x200000000000uLL;
      v27 = *(a2 + 1);
      v26 = *(a2 + 2);
      v28 = *a2;
      if (v27 > 0xFFFFFFFFFFFFFFF5 || v27 + 10 > v26)
      {
        v673 = 0;
        v674 = 0;
        v31 = 0;
        v675 = (v28 + v27);
        v20 = v26 >= v27;
        v676 = v26 - v27;
        if (!v20)
        {
          v676 = 0;
        }

        v677 = v27 + 1;
        while (1)
        {
          if (!v676)
          {
            LODWORD(v31) = 0;
            *v5 = 1;
            goto LABEL_1060;
          }

          v678 = *v675;
          *v3 = v677;
          v31 |= (v678 & 0x7F) << v673;
          if ((v678 & 0x80) == 0)
          {
            break;
          }

          v673 += 7;
          ++v675;
          --v676;
          ++v677;
          v16 = v674++ > 8;
          if (v16)
          {
LABEL_633:
            LODWORD(v31) = 0;
            goto LABEL_1060;
          }
        }

        if (*v5)
        {
          LODWORD(v31) = 0;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = (v28 + v27);
        v33 = v27 + 1;
        while (1)
        {
          *v3 = v33;
          v34 = *v32++;
          v31 |= (v34 & 0x7F) << v29;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          ++v33;
          v16 = v30++ > 8;
          if (v16)
          {
            goto LABEL_633;
          }
        }
      }

LABEL_1060:
      *(this + 55) = v31;
      goto LABEL_996;
    }

    *(this + 45) |= 0x1000uLL;
    v196 = *v3;
    if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v196 + 4 > *(a2 + 2))
    {
      goto LABEL_494;
    }

    *(this + 22) = *(*a2 + v196);
    goto LABEL_995;
  }

  switch(v24)
  {
    case 0x1F9:
      *(this + 45) |= 0x4000000000000000uLL;
      v209 = *(a2 + 1);
      v208 = *(a2 + 2);
      v210 = *a2;
      if (v209 > 0xFFFFFFFFFFFFFFF5 || v209 + 10 > v208)
      {
        v691 = 0;
        v692 = 0;
        v213 = 0;
        v693 = (v210 + v209);
        v20 = v208 >= v209;
        v694 = v208 - v209;
        if (!v20)
        {
          v694 = 0;
        }

        v695 = v209 + 1;
        while (1)
        {
          if (!v694)
          {
            LODWORD(v213) = 0;
            *v5 = 1;
            goto LABEL_1069;
          }

          v696 = *v693;
          *v3 = v695;
          v213 |= (v696 & 0x7F) << v691;
          if ((v696 & 0x80) == 0)
          {
            break;
          }

          v691 += 7;
          ++v693;
          --v694;
          ++v695;
          v16 = v692++ > 8;
          if (v16)
          {
LABEL_659:
            LODWORD(v213) = 0;
            goto LABEL_1069;
          }
        }

        if (*v5)
        {
          LODWORD(v213) = 0;
        }
      }

      else
      {
        v211 = 0;
        v212 = 0;
        v213 = 0;
        v214 = (v210 + v209);
        v215 = v209 + 1;
        while (1)
        {
          *v3 = v215;
          v216 = *v214++;
          v213 |= (v216 & 0x7F) << v211;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          ++v215;
          v16 = v212++ > 8;
          if (v16)
          {
            goto LABEL_659;
          }
        }
      }

LABEL_1069:
      *(this + 72) = v213;
      goto LABEL_996;
    case 0x259:
      *(this + 46) |= 0x800uLL;
      v226 = *(a2 + 1);
      if (v226 >= *(a2 + 2))
      {
        v229 = 0;
        *v5 = 1;
      }

      else
      {
        v227 = v226 + 1;
        v228 = *(*a2 + v226);
        *(a2 + 1) = v227;
        v229 = v228 != 0;
      }

      *(this + 325) = v229;
      goto LABEL_996;
    case 0x25A:
      *(this + 45) |= 0x4000uLL;
      v83 = *(a2 + 1);
      v82 = *(a2 + 2);
      v84 = *a2;
      if (v83 > 0xFFFFFFFFFFFFFFF5 || v83 + 10 > v82)
      {
        v721 = 0;
        v722 = 0;
        v87 = 0;
        v723 = (v84 + v83);
        v20 = v82 >= v83;
        v724 = v82 - v83;
        if (!v20)
        {
          v724 = 0;
        }

        v725 = v83 + 1;
        while (1)
        {
          if (!v724)
          {
            LODWORD(v87) = 0;
            *v5 = 1;
            goto LABEL_1084;
          }

          v726 = *v723;
          *v3 = v725;
          v87 |= (v726 & 0x7F) << v721;
          if ((v726 & 0x80) == 0)
          {
            break;
          }

          v721 += 7;
          ++v723;
          --v724;
          ++v725;
          v16 = v722++ > 8;
          if (v16)
          {
LABEL_701:
            LODWORD(v87) = 0;
            goto LABEL_1084;
          }
        }

        if (*v5)
        {
          LODWORD(v87) = 0;
        }
      }

      else
      {
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v88 = (v84 + v83);
        v89 = v83 + 1;
        while (1)
        {
          *v3 = v89;
          v90 = *v88++;
          v87 |= (v90 & 0x7F) << v85;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          ++v89;
          v16 = v86++ > 8;
          if (v16)
          {
            goto LABEL_701;
          }
        }
      }

LABEL_1084:
      *(this + 24) = v87;
      goto LABEL_996;
  }

LABEL_194:
  if (PB::Reader::skip(a2))
  {
    goto LABEL_996;
  }

  v896 = 0;
  return v896 & 1;
}

uint64_t CMMsl::KappaSevereCrashResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 360);
  if ((v4 & 0x800000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 132));
    v4 = *(v3 + 360);
    if ((v4 & 0x400000) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_141;
    }
  }

  else if ((v4 & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 360);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x20000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_141:
  v44 = *(v3 + 136);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 360) & 0x20000000000000) != 0)
  {
LABEL_5:
    v5 = *(v3 + 252);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_6:
  if ((*(v3 + 368) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 300));
  }

  v6 = *(v3 + 360);
  if ((v6 & 0x800000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 276));
    v6 = *(v3 + 360);
    if ((v6 & 0x800000000000) == 0)
    {
LABEL_10:
      if ((v6 & 0x400000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_145;
    }
  }

  else if ((v6 & 0x800000000000) == 0)
  {
    goto LABEL_10;
  }

  this = PB::Writer::write(a2, *(v3 + 228));
  v6 = *(v3 + 360);
  if ((v6 & 0x400000000000) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_146;
  }

LABEL_145:
  this = PB::Writer::write(a2, *(v3 + 224));
  v6 = *(v3 + 360);
  if ((v6 & 0x200) == 0)
  {
LABEL_12:
    if ((v6 & 0x100000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_147;
  }

LABEL_146:
  this = PB::Writer::write(a2, *(v3 + 76));
  v6 = *(v3 + 360);
  if ((v6 & 0x100000000000000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_148;
  }

LABEL_147:
  v45 = *(v3 + 264);
  this = PB::Writer::writeVarInt(a2);
  v6 = *(v3 + 360);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_14:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_148:
  v46 = *(v3 + 140);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 360) & 0x10000) != 0)
  {
LABEL_15:
    this = PB::Writer::write(a2, *(v3 + 104));
  }

LABEL_16:
  v7 = *(v3 + 368);
  if ((v7 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 312));
    v7 = *(v3 + 368);
  }

  if ((v7 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 316));
  }

  v8 = *(v3 + 360);
  if ((v8 & 0x100000000000) != 0)
  {
    v47 = *(v3 + 216);
    this = PB::Writer::writeVarInt(a2);
    v8 = *(v3 + 360);
    if ((v8 & 0x40000000000) == 0)
    {
LABEL_22:
      if ((v8 & 0x8000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_152;
    }
  }

  else if ((v8 & 0x40000000000) == 0)
  {
    goto LABEL_22;
  }

  v48 = *(v3 + 208);
  this = PB::Writer::writeVarInt(a2);
  v8 = *(v3 + 360);
  if ((v8 & 0x8000000000000) == 0)
  {
LABEL_23:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_152:
  this = PB::Writer::write(a2, *(v3 + 244));
  if ((*(v3 + 360) & 0x2000000000000000) != 0)
  {
LABEL_24:
    v9 = *(v3 + 284);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_25:
  if ((*(v3 + 368) & 4) != 0)
  {
    v10 = *(v3 + 304);
    this = PB::Writer::writeVarInt(a2);
  }

  v11 = *(v3 + 360);
  if ((v11 & 0x4000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 144));
    v11 = *(v3 + 360);
    if ((v11 & 0x80) == 0)
    {
LABEL_29:
      if ((v11 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_29;
  }

  v49 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  if (*(v3 + 360))
  {
LABEL_30:
    v12 = *(v3 + 8);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_31:
  v13 = *(v3 + 368);
  if ((v13 & 0x80) != 0)
  {
    v50 = *(v3 + 321);
    this = PB::Writer::write(a2);
    v13 = *(v3 + 368);
    if ((v13 & 0x100) == 0)
    {
LABEL_33:
      if ((v13 & 0x10000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_159;
    }
  }

  else if ((v13 & 0x100) == 0)
  {
    goto LABEL_33;
  }

  v51 = *(v3 + 322);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x10000) == 0)
  {
LABEL_34:
    if ((v13 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_160;
  }

LABEL_159:
  v52 = *(v3 + 330);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x20000) == 0)
  {
LABEL_35:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_161;
  }

LABEL_160:
  v53 = *(v3 + 331);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_162;
  }

LABEL_161:
  v54 = *(v3 + 342);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_163;
  }

LABEL_162:
  v55 = *(v3 + 340);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x2000) == 0)
  {
LABEL_38:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_164;
  }

LABEL_163:
  v56 = *(v3 + 327);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x20000000) == 0)
  {
LABEL_39:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_165;
  }

LABEL_164:
  v57 = *(v3 + 343);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x40000000) == 0)
  {
LABEL_40:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_166;
  }

LABEL_165:
  v58 = *(v3 + 344);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x400) == 0)
  {
LABEL_41:
    if ((v13 & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_167;
  }

LABEL_166:
  v59 = *(v3 + 324);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x2000000) == 0)
  {
LABEL_42:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_168;
  }

LABEL_167:
  v60 = *(v3 + 339);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x4000) == 0)
  {
LABEL_43:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_169;
  }

LABEL_168:
  v61 = *(v3 + 328);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_44:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_170;
  }

LABEL_169:
  v62 = *(v3 + 341);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x100000) == 0)
  {
LABEL_45:
    if ((v13 & 0x8000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_171;
  }

LABEL_170:
  v63 = *(v3 + 334);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x8000000000) == 0)
  {
LABEL_46:
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_172;
  }

LABEL_171:
  v64 = *(v3 + 353);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x800000000) == 0)
  {
LABEL_47:
    if ((v13 & 0x10000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_173;
  }

LABEL_172:
  v65 = *(v3 + 349);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x10000000000) == 0)
  {
LABEL_48:
    if ((v13 & 0x1000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_174;
  }

LABEL_173:
  v66 = *(v3 + 354);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x1000000000) == 0)
  {
LABEL_49:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_175;
  }

LABEL_174:
  v67 = *(v3 + 350);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_50:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_176;
  }

LABEL_175:
  v68 = *(v3 + 345);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x1000) == 0)
  {
LABEL_51:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_177;
  }

LABEL_176:
  v69 = *(v3 + 326);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x200000) == 0)
  {
LABEL_52:
    if ((v13 & 0x20000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_178;
  }

LABEL_177:
  v70 = *(v3 + 335);
  this = PB::Writer::write(a2);
  v13 = *(v3 + 368);
  if ((v13 & 0x20000000000) == 0)
  {
LABEL_53:
    if ((v13 & 0x2000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_178:
  v71 = *(v3 + 355);
  this = PB::Writer::write(a2);
  if ((*(v3 + 368) & 0x2000000000) != 0)
  {
LABEL_54:
    v14 = *(v3 + 351);
    this = PB::Writer::write(a2);
  }

LABEL_55:
  if ((*(v3 + 362) & 2) != 0)
  {
    v15 = *(v3 + 108);
    this = PB::Writer::writeVarInt(a2);
  }

  v16 = *(v3 + 368);
  if ((v16 & 0x800000) != 0)
  {
    v72 = *(v3 + 337);
    this = PB::Writer::write(a2);
    v16 = *(v3 + 368);
    if ((v16 & 0x1000000) == 0)
    {
LABEL_59:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((v16 & 0x1000000) == 0)
  {
    goto LABEL_59;
  }

  v73 = *(v3 + 338);
  this = PB::Writer::write(a2);
  if ((*(v3 + 368) & 0x40) != 0)
  {
LABEL_60:
    v17 = *(v3 + 320);
    this = PB::Writer::write(a2);
  }

LABEL_61:
  if ((*(v3 + 362) & 4) != 0)
  {
    v18 = *(v3 + 112);
    this = PB::Writer::writeVarInt(a2);
  }

  v19 = *(v3 + 368);
  if ((v19 & 0x100000000000) != 0)
  {
    v74 = *(v3 + 358);
    this = PB::Writer::write(a2);
    v19 = *(v3 + 368);
    if ((v19 & 0x40000000000) == 0)
    {
LABEL_65:
      if ((v19 & 0x80000000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_185;
    }
  }

  else if ((v19 & 0x40000000000) == 0)
  {
    goto LABEL_65;
  }

  v75 = *(v3 + 356);
  this = PB::Writer::write(a2);
  v19 = *(v3 + 368);
  if ((v19 & 0x80000000000) == 0)
  {
LABEL_66:
    if ((v19 & 0x400000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_186;
  }

LABEL_185:
  v76 = *(v3 + 357);
  this = PB::Writer::write(a2);
  v19 = *(v3 + 368);
  if ((v19 & 0x400000000) == 0)
  {
LABEL_67:
    if ((v19 & 0x200000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_187;
  }

LABEL_186:
  v77 = *(v3 + 348);
  this = PB::Writer::write(a2);
  v19 = *(v3 + 368);
  if ((v19 & 0x200000000) == 0)
  {
LABEL_68:
    if ((v19 & 0x100000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_187:
  v78 = *(v3 + 347);
  this = PB::Writer::write(a2);
  if ((*(v3 + 368) & 0x100000000) != 0)
  {
LABEL_69:
    v20 = *(v3 + 346);
    this = PB::Writer::write(a2);
  }

LABEL_70:
  v21 = *(v3 + 360);
  if ((v21 & 0x40000000000000) != 0)
  {
    v79 = *(v3 + 256);
    this = PB::Writer::writeVarInt(a2);
    v21 = *(v3 + 360);
    if ((v21 & 0x80000000000000) == 0)
    {
LABEL_72:
      if ((v21 & 0x8000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_191;
    }
  }

  else if ((v21 & 0x80000000000000) == 0)
  {
    goto LABEL_72;
  }

  v80 = *(v3 + 260);
  this = PB::Writer::writeVarInt(a2);
  v21 = *(v3 + 360);
  if ((v21 & 0x8000000) == 0)
  {
LABEL_73:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_191:
  v81 = *(v3 + 148);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 360) & 0x10000000) != 0)
  {
LABEL_74:
    v22 = *(v3 + 152);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_75:
  v23 = *(v3 + 368);
  if ((v23 & 0x40000) != 0)
  {
    v24 = *(v3 + 332);
    this = PB::Writer::write(a2);
    v23 = *(v3 + 368);
  }

  if ((v23 & 0x8000) != 0)
  {
    v25 = *(v3 + 329);
    this = PB::Writer::write(a2);
  }

  v26 = *(v3 + 360);
  if ((v26 & 0x4000000000) != 0)
  {
    v82 = *(v3 + 192);
    this = PB::Writer::writeVarInt(a2);
    v26 = *(v3 + 360);
    if ((v26 & 0x80000) == 0)
    {
LABEL_81:
      if ((v26 & 0x2000000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_195:
      v84 = *(v3 + 188);
      this = PB::Writer::writeVarInt(a2);
      if ((*(v3 + 360) & 0x8000000000000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_196;
    }
  }

  else if ((v26 & 0x80000) == 0)
  {
    goto LABEL_81;
  }

  v83 = *(v3 + 116);
  this = PB::Writer::writeVarInt(a2);
  v26 = *(v3 + 360);
  if ((v26 & 0x2000000000) != 0)
  {
    goto LABEL_195;
  }

LABEL_82:
  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_196:
  this = PB::Writer::write(a2, *(v3 + 292));
LABEL_83:
  if (*(v3 + 368))
  {
    this = PB::Writer::write(a2, *(v3 + 296));
  }

  v27 = *(v3 + 360);
  if ((v27 & 0x400000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 272));
    v27 = *(v3 + 360);
    if ((v27 & 0x1000000000000000) == 0)
    {
LABEL_87:
      if ((v27 & 0x4000000000000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }
  }

  else if ((v27 & 0x1000000000000000) == 0)
  {
    goto LABEL_87;
  }

  v85 = *(v3 + 280);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 360) & 0x4000000000000000) != 0)
  {
LABEL_88:
    v28 = *(v3 + 288);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_89:
  if ((*(v3 + 369) & 8) != 0)
  {
    v29 = *(v3 + 325);
    this = PB::Writer::write(a2);
  }

  v30 = *(v3 + 360);
  if ((v30 & 0x4000) != 0)
  {
    v86 = *(v3 + 96);
    this = PB::Writer::writeVarInt(a2);
    v30 = *(v3 + 360);
    if ((v30 & 0x1000) == 0)
    {
LABEL_93:
      if ((v30 & 0x200000000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_202;
    }
  }

  else if ((v30 & 0x1000) == 0)
  {
    goto LABEL_93;
  }

  this = PB::Writer::write(a2, *(v3 + 88));
  v30 = *(v3 + 360);
  if ((v30 & 0x200000000000) == 0)
  {
LABEL_94:
    if ((v30 & 0x200000000000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_203;
  }

LABEL_202:
  v87 = *(v3 + 220);
  this = PB::Writer::writeVarInt(a2);
  v30 = *(v3 + 360);
  if ((v30 & 0x200000000000000) == 0)
  {
LABEL_95:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_204;
  }

LABEL_203:
  v88 = *(v3 + 268);
  this = PB::Writer::writeVarInt(a2);
  v30 = *(v3 + 360);
  if ((v30 & 0x40) == 0)
  {
LABEL_96:
    if ((v30 & 0x1000000000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_205;
  }

LABEL_204:
  v89 = *(v3 + 56);
  this = PB::Writer::writeVarInt(a2);
  v30 = *(v3 + 360);
  if ((v30 & 0x1000000000000) == 0)
  {
LABEL_97:
    if ((v30 & 0x2000000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_206;
  }

LABEL_205:
  v90 = *(v3 + 232);
  this = PB::Writer::writeVarInt(a2);
  v30 = *(v3 + 360);
  if ((v30 & 0x2000000000000) == 0)
  {
LABEL_98:
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_207;
  }

LABEL_206:
  v91 = *(v3 + 236);
  this = PB::Writer::writeVarInt(a2);
  v30 = *(v3 + 360);
  if ((v30 & 0x100000) == 0)
  {
LABEL_99:
    if ((v30 & 0x400) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_208;
  }

LABEL_207:
  this = PB::Writer::write(a2, *(v3 + 120));
  v30 = *(v3 + 360);
  if ((v30 & 0x400) == 0)
  {
LABEL_100:
    if ((v30 & 0x200000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_209;
  }

LABEL_208:
  this = PB::Writer::write(a2, *(v3 + 80));
  v30 = *(v3 + 360);
  if ((v30 & 0x200000) == 0)
  {
LABEL_101:
    if ((v30 & 0x800) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_210;
  }

LABEL_209:
  this = PB::Writer::write(a2, *(v3 + 124));
  v30 = *(v3 + 360);
  if ((v30 & 0x800) == 0)
  {
LABEL_102:
    if ((v30 & 0x100) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

LABEL_210:
  this = PB::Writer::write(a2, *(v3 + 84));
  if ((*(v3 + 360) & 0x100) != 0)
  {
LABEL_103:
    this = PB::Writer::write(a2, *(v3 + 72));
  }

LABEL_104:
  v31 = *(v3 + 368);
  if ((v31 & 0x400000) != 0)
  {
    v32 = *(v3 + 336);
    this = PB::Writer::write(a2);
    v31 = *(v3 + 368);
  }

  if ((v31 & 8) != 0)
  {
    v33 = *(v3 + 308);
    this = PB::Writer::writeVarInt(a2);
  }

  v34 = *(v3 + 360);
  if ((v34 & 0x20000000) != 0)
  {
    v35 = *(v3 + 156);
    this = PB::Writer::writeVarInt(a2);
    v34 = *(v3 + 360);
  }

  if ((v34 & 0x80000000) != 0)
  {
    v36 = *(v3 + 164);
    this = PB::Writer::writeVarInt(a2);
  }

  if ((*(v3 + 372) & 0x40) != 0)
  {
    v37 = *(v3 + 352);
    this = PB::Writer::write(a2);
  }

  v38 = *(v3 + 360);
  if ((v38 & 0x100000000) != 0)
  {
    v92 = *(v3 + 168);
    this = PB::Writer::writeVarInt(a2);
    v38 = *(v3 + 360);
    if ((v38 & 0x40000000) == 0)
    {
LABEL_116:
      if ((v38 & 0x10000000000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_214;
    }
  }

  else if ((v38 & 0x40000000) == 0)
  {
    goto LABEL_116;
  }

  v93 = *(v3 + 160);
  this = PB::Writer::writeVarInt(a2);
  v38 = *(v3 + 360);
  if ((v38 & 0x10000000000000) == 0)
  {
LABEL_117:
    if ((v38 & 0x8000000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_215;
  }

LABEL_214:
  this = PB::Writer::write(a2, *(v3 + 248));
  v38 = *(v3 + 360);
  if ((v38 & 0x8000000000) == 0)
  {
LABEL_118:
    if ((v38 & 0x10000000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_216;
  }

LABEL_215:
  v94 = *(v3 + 196);
  this = PB::Writer::writeVarInt(a2);
  v38 = *(v3 + 360);
  if ((v38 & 0x10000000000) == 0)
  {
LABEL_119:
    if ((v38 & 0x8000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_217;
  }

LABEL_216:
  v95 = *(v3 + 200);
  this = PB::Writer::writeVarInt(a2);
  v38 = *(v3 + 360);
  if ((v38 & 0x8000) == 0)
  {
LABEL_120:
    if ((v38 & 0x80000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_218;
  }

LABEL_217:
  this = PB::Writer::write(a2, *(v3 + 100));
  v38 = *(v3 + 360);
  if ((v38 & 0x80000000000) == 0)
  {
LABEL_121:
    if ((v38 & 0x20000000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_219;
  }

LABEL_218:
  v96 = *(v3 + 212);
  this = PB::Writer::writeVarInt(a2);
  v38 = *(v3 + 360);
  if ((v38 & 0x20000000000) == 0)
  {
LABEL_122:
    if ((v38 & 0x1000000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_220;
  }

LABEL_219:
  v97 = *(v3 + 204);
  this = PB::Writer::writeVarInt(a2);
  v38 = *(v3 + 360);
  if ((v38 & 0x1000000000) == 0)
  {
LABEL_123:
    if ((v38 & 0x200000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_221;
  }

LABEL_220:
  v98 = *(v3 + 184);
  this = PB::Writer::writeVarInt(a2);
  v38 = *(v3 + 360);
  if ((v38 & 0x200000000) == 0)
  {
LABEL_124:
    if ((v38 & 0x800000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_221:
  v99 = *(v3 + 172);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 360) & 0x800000000) != 0)
  {
LABEL_125:
    v39 = *(v3 + 180);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_126:
  v40 = *(v3 + 368);
  if ((v40 & 0x200) != 0)
  {
    v41 = *(v3 + 323);
    this = PB::Writer::write(a2);
    v40 = *(v3 + 368);
  }

  if ((v40 & 0x80000) != 0)
  {
    v42 = *(v3 + 333);
    this = PB::Writer::write(a2);
  }

  v43 = *(v3 + 360);
  if ((v43 & 0x400000000) != 0)
  {
    v100 = *(v3 + 176);
    this = PB::Writer::writeVarInt(a2);
    v43 = *(v3 + 360);
    if ((v43 & 2) == 0)
    {
LABEL_132:
      if ((v43 & 0x20) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_225;
    }
  }

  else if ((v43 & 2) == 0)
  {
    goto LABEL_132;
  }

  v101 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v43 = *(v3 + 360);
  if ((v43 & 0x20) == 0)
  {
LABEL_133:
    if ((v43 & 4) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_226;
  }

LABEL_225:
  v102 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v43 = *(v3 + 360);
  if ((v43 & 4) == 0)
  {
LABEL_134:
    if ((v43 & 8) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_227;
  }

LABEL_226:
  v103 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v43 = *(v3 + 360);
  if ((v43 & 8) == 0)
  {
LABEL_135:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_228;
  }

LABEL_227:
  v104 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v43 = *(v3 + 360);
  if ((v43 & 0x10) == 0)
  {
LABEL_136:
    if ((v43 & 0x4000000000000) == 0)
    {
      goto LABEL_137;
    }

LABEL_229:
    v106 = *(v3 + 240);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 360) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_230;
  }

LABEL_228:
  v105 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v43 = *(v3 + 360);
  if ((v43 & 0x4000000000000) != 0)
  {
    goto LABEL_229;
  }

LABEL_137:
  if ((v43 & 0x2000) == 0)
  {
    return this;
  }

LABEL_230:
  v107 = *(v3 + 92);

  return PB::Writer::write(a2, v107);
}