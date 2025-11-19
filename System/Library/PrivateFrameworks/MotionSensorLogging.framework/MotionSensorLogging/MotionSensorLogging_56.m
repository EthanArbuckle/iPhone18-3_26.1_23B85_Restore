uint64_t CMMsl::SteadinessModelGaitBaselineFeatures::hash_value(CMMsl::SteadinessModelGaitBaselineFeatures *this)
{
  v1 = *(this + 44);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    v3 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_34:
    v4 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v5 = 0.0;
    if ((*(this + 44) & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_36:
    v6 = 0.0;
    if ((*(this + 44) & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_37:
    v7 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_38:
    v8 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_21;
    }

LABEL_39:
    v9 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_34;
  }

LABEL_6:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_35;
  }

LABEL_9:
  v5 = *(this + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 44) & 0x200) == 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  v6 = *(this + 10);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((*(this + 44) & 0x100) == 0)
  {
    goto LABEL_37;
  }

LABEL_15:
  v7 = *(this + 9);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_38;
  }

LABEL_18:
  v8 = *(this + 4);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_21:
  v9 = *(this + 7);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_24:
    v10 = *(this + 5);
    if (v10 == 0.0)
    {
      v10 = 0.0;
    }

    if ((v1 & 0x20) != 0)
    {
      goto LABEL_27;
    }

LABEL_41:
    v11 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11;
  }

LABEL_40:
  v10 = 0.0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_41;
  }

LABEL_27:
  v11 = *(this + 6);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11;
}

void CMMsl::SteadinessModelHarmonicFeatures::~SteadinessModelHarmonicFeatures(CMMsl::SteadinessModelHarmonicFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::SteadinessModelHarmonicFeatures::SteadinessModelHarmonicFeatures(CMMsl::SteadinessModelHarmonicFeatures *this, const CMMsl::SteadinessModelHarmonicFeatures *a2)
{
  *this = &unk_286C23BB8;
  *(this + 62) = 0;
  v2 = *(a2 + 62);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 62) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 62);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 62) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 62);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 62) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 62);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 62) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 62) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 62) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 62) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 62) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 62) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x200) == 0)
  {
LABEL_14:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 62) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 62) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 62) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 62) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 62) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 15);
  v3 |= 0x4000u;
  *(this + 62) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x8000) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 62) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x10000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 17);
  v3 |= 0x10000u;
  *(this + 62) = v3;
  *(this + 17) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x20000) == 0)
  {
LABEL_22:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 62) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x40000) == 0)
  {
LABEL_23:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = *(a2 + 19);
  v3 |= 0x40000u;
  *(this + 62) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x80000) == 0)
  {
LABEL_24:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = *(a2 + 20);
  v3 |= 0x80000u;
  *(this + 62) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x100000) == 0)
  {
LABEL_25:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = *(a2 + 21);
  v3 |= 0x100000u;
  *(this + 62) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x200000) == 0)
  {
LABEL_26:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = *(a2 + 22);
  v3 |= 0x200000u;
  *(this + 62) = v3;
  *(this + 22) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x400000) == 0)
  {
LABEL_27:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = *(a2 + 23);
  v3 |= 0x400000u;
  *(this + 62) = v3;
  *(this + 23) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x800000) == 0)
  {
LABEL_28:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = *(a2 + 24);
  v3 |= 0x800000u;
  *(this + 62) = v3;
  *(this + 24) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = *(a2 + 25);
  v3 |= 0x1000000u;
  *(this + 62) = v3;
  *(this + 25) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 27);
  v3 |= 0x4000000u;
  *(this + 62) = v3;
  *(this + 27) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_31:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = *(a2 + 28);
  v3 |= 0x8000000u;
  *(this + 62) = v3;
  *(this + 28) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = *(a2 + 29);
  v3 |= 0x10000000u;
  *(this + 62) = v3;
  *(this + 29) = result;
  v2 = *(a2 + 62);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_33:
    if ((v2 & 0x2000000) == 0)
    {
      return result;
    }

LABEL_62:
    result = *(a2 + 26);
    *(this + 62) = v3 | 0x2000000;
    *(this + 26) = result;
    return result;
  }

LABEL_61:
  result = *(a2 + 30);
  v3 |= 0x20000000u;
  *(this + 62) = v3;
  *(this + 30) = result;
  if ((*(a2 + 62) & 0x2000000) != 0)
  {
    goto LABEL_62;
  }

  return result;
}

CMMsl *CMMsl::SteadinessModelHarmonicFeatures::operator=(CMMsl *a1, const CMMsl::SteadinessModelHarmonicFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessModelHarmonicFeatures::SteadinessModelHarmonicFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SteadinessModelHarmonicFeatures *a2, CMMsl::SteadinessModelHarmonicFeatures *a3)
{
  v3 = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  v13 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v13;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  v15 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v15;
  v16 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v16;
  v17 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v17;
  v18 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v18;
  v19 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v19;
  v20 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v20;
  v21 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v21;
  v22 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v22;
  v23 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v23;
  v24 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v24;
  v25 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v25;
  v26 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v26;
  v27 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v27;
  v28 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v28;
  v29 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v29;
  v30 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v30;
  v31 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v31;
  v32 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v32;
  result = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = result;
  return result;
}

double CMMsl::SteadinessModelHarmonicFeatures::SteadinessModelHarmonicFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23BB8;
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  result = *(a2 + 208);
  *(a1 + 208) = result;
  return result;
}

CMMsl *CMMsl::SteadinessModelHarmonicFeatures::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessModelHarmonicFeatures::SteadinessModelHarmonicFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::SteadinessModelHarmonicFeatures::formatText(CMMsl::SteadinessModelHarmonicFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 62);
  if (v5)
  {
    PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityApCv", *(this + 1));
    v5 = *(this + 62);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityApMean", *(this + 2));
  v5 = *(this + 62);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityApMedian", *(this + 3));
  v5 = *(this + 62);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityApQ5", *(this + 4));
  v5 = *(this + 62);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityApQ95", *(this + 5));
  v5 = *(this + 62);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityMlCv", *(this + 6));
  v5 = *(this + 62);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityMlMean", *(this + 7));
  v5 = *(this + 62);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityMlMedian", *(this + 8));
  v5 = *(this + 62);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityMlQ5", *(this + 9));
  v5 = *(this + 62);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityMlQ95", *(this + 10));
  v5 = *(this + 62);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityVtCv", *(this + 11));
  v5 = *(this + 62);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityVtMean", *(this + 12));
  v5 = *(this + 62);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityVtMedian", *(this + 13));
  v5 = *(this + 62);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityVtQ5", *(this + 14));
  v5 = *(this + 62);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "allBoutsStepIndexOfHarmonicityVtQ95", *(this + 15));
  v5 = *(this + 62);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityApCv", *(this + 16));
  v5 = *(this + 62);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityApMean", *(this + 17));
  v5 = *(this + 62);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityApMedian", *(this + 18));
  v5 = *(this + 62);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityApQ5", *(this + 19));
  v5 = *(this + 62);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityApQ95", *(this + 20));
  v5 = *(this + 62);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityMlCv", *(this + 21));
  v5 = *(this + 62);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityMlMean", *(this + 22));
  v5 = *(this + 62);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityMlMedian", *(this + 23));
  v5 = *(this + 62);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityMlQ5", *(this + 24));
  v5 = *(this + 62);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityMlQ95", *(this + 25));
  v5 = *(this + 62);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityVtCv", *(this + 26));
  v5 = *(this + 62);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityVtMean", *(this + 27));
  v5 = *(this + 62);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityVtMedian", *(this + 28));
  v5 = *(this + 62);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityVtQ5", *(this + 29));
  if ((*(this + 62) & 0x20000000) != 0)
  {
LABEL_31:
    PB::TextFormatter::format(a2, "allBoutsSwingIndexOfHarmonicityVtQ95", *(this + 30));
  }

LABEL_32:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SteadinessModelHarmonicFeatures::readFrom(CMMsl::SteadinessModelHarmonicFeatures *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_117:
    v22 = v4 ^ 1;
  }

  else
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_117;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 62) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_112;
        case 2u:
          *(this + 62) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_112;
        case 3u:
          *(this + 62) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_112;
        case 4u:
          *(this + 62) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_112;
        case 5u:
          *(this + 62) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_112;
        case 6u:
          *(this + 62) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_112;
        case 7u:
          *(this + 62) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_112;
        case 8u:
          *(this + 62) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_112;
        case 9u:
          *(this + 62) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_112;
        case 0xAu:
          *(this + 62) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_112;
        case 0xBu:
          *(this + 62) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_112;
        case 0xCu:
          *(this + 62) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_112;
        case 0xDu:
          *(this + 62) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_112;
        case 0xEu:
          *(this + 62) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_112;
        case 0xFu:
          *(this + 62) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_112;
        case 0x10u:
          *(this + 62) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_112;
        case 0x11u:
          *(this + 62) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_112;
        case 0x12u:
          *(this + 62) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_112;
        case 0x13u:
          *(this + 62) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_112;
        case 0x14u:
          *(this + 62) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_112;
        case 0x15u:
          *(this + 62) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_112;
        case 0x16u:
          *(this + 62) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_112;
        case 0x17u:
          *(this + 62) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_112;
        case 0x18u:
          *(this + 62) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_112;
        case 0x19u:
          *(this + 62) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_112;
        case 0x1Au:
          *(this + 62) |= 0x4000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 27) = *(*a2 + v2);
          goto LABEL_112;
        case 0x1Bu:
          *(this + 62) |= 0x8000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 28) = *(*a2 + v2);
          goto LABEL_112;
        case 0x1Cu:
          *(this + 62) |= 0x10000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 29) = *(*a2 + v2);
          goto LABEL_112;
        case 0x1Du:
          *(this + 62) |= 0x20000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_110;
          }

          *(this + 30) = *(*a2 + v2);
          goto LABEL_112;
        case 0x1Eu:
          *(this + 62) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_110:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 26) = *(*a2 + v2);
LABEL_112:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_113:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_117;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_117;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      v2 = *(a2 + 1);
      goto LABEL_113;
    }

    v22 = 0;
  }

  return v22 & 1;
}

uint64_t CMMsl::SteadinessModelHarmonicFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 248);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 248);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 248);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 248);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 248);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 248);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 248);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 248);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 248);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 248);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 248);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 248);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 248);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 248);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 248);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 248);
  if ((v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 248);
  if ((v4 & 0x10000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 248);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 248);
  if ((v4 & 0x40000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 152));
  v4 = *(v3 + 248);
  if ((v4 & 0x80000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 248);
  if ((v4 & 0x100000) == 0)
  {
LABEL_22:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 248);
  if ((v4 & 0x200000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 176));
  v4 = *(v3 + 248);
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 248);
  if ((v4 & 0x800000) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 192));
  v4 = *(v3 + 248);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 200));
  v4 = *(v3 + 248);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 216));
  v4 = *(v3 + 248);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 224));
  v4 = *(v3 + 248);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    this = PB::Writer::write(a2, *(v3 + 240));
    if ((*(v3 + 248) & 0x2000000) == 0)
    {
      return this;
    }

    goto LABEL_61;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 232));
  v4 = *(v3 + 248);
  if ((v4 & 0x20000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((v4 & 0x2000000) == 0)
  {
    return this;
  }

LABEL_61:
  v5 = *(v3 + 208);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::SteadinessModelHarmonicFeatures::hash_value(CMMsl::SteadinessModelHarmonicFeatures *this)
{
  v1 = *(this + 62);
  if ((v1 & 1) == 0)
  {
    v35 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_117:
    v34 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_118:
    v33 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_119:
    v4 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_120:
    v5 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_17;
    }

LABEL_121:
    v6 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_21;
    }

LABEL_122:
    v7 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_25;
    }

LABEL_123:
    v8 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_29;
    }

LABEL_124:
    v9 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_33;
    }

LABEL_125:
    v10 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_37;
    }

LABEL_126:
    v11 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_41;
    }

LABEL_127:
    v12 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_45;
    }

LABEL_128:
    v13 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_49;
    }

LABEL_129:
    v14 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_53;
    }

LABEL_130:
    v15 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_57;
    }

LABEL_131:
    v16 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_61;
    }

LABEL_132:
    v17 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_65;
    }

LABEL_133:
    v18 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_69;
    }

LABEL_134:
    v19 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_73;
    }

LABEL_135:
    v20 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_77;
    }

LABEL_136:
    v21 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_81;
    }

LABEL_137:
    v22 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_85;
    }

LABEL_138:
    v23 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_89;
    }

LABEL_139:
    v24 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_93;
    }

LABEL_140:
    v25 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_97;
    }

LABEL_141:
    v26 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_101;
    }

LABEL_142:
    v27 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_105;
    }

LABEL_143:
    v28 = 0.0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_108;
    }

    goto LABEL_144;
  }

  v31 = *(this + 1);
  if (v31 == 0.0)
  {
    v31 = 0.0;
  }

  v35 = v31;
  if ((v1 & 2) == 0)
  {
    goto LABEL_117;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  v34 = v2;
  if ((v1 & 4) == 0)
  {
    goto LABEL_118;
  }

LABEL_6:
  v3 = *(this + 3);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v33 = v3;
  if ((v1 & 8) == 0)
  {
    goto LABEL_119;
  }

LABEL_9:
  if (*(this + 4) == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 4);
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_120;
  }

LABEL_13:
  if (*(this + 5) == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 5);
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_121;
  }

LABEL_17:
  if (*(this + 6) == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(this + 6);
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_122;
  }

LABEL_21:
  if (*(this + 7) == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(this + 7);
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_123;
  }

LABEL_25:
  if (*(this + 8) == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(this + 8);
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_124;
  }

LABEL_29:
  if (*(this + 9) == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 9);
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_125;
  }

LABEL_33:
  if (*(this + 10) == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 10);
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_126;
  }

LABEL_37:
  if (*(this + 11) == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(this + 11);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_127;
  }

LABEL_41:
  if (*(this + 12) == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 12);
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_128;
  }

LABEL_45:
  if (*(this + 13) == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(this + 13);
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_129;
  }

LABEL_49:
  if (*(this + 14) == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 14);
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_130;
  }

LABEL_53:
  if (*(this + 15) == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(this + 15);
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_131;
  }

LABEL_57:
  if (*(this + 16) == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(this + 16);
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_132;
  }

LABEL_61:
  if (*(this + 17) == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(this + 17);
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_133;
  }

LABEL_65:
  if (*(this + 18) == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(this + 18);
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_134;
  }

LABEL_69:
  if (*(this + 19) == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(this + 19);
  }

  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_135;
  }

LABEL_73:
  if (*(this + 20) == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(this + 20);
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_136;
  }

LABEL_77:
  if (*(this + 21) == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(this + 21);
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_137;
  }

LABEL_81:
  if (*(this + 22) == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(this + 22);
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_138;
  }

LABEL_85:
  if (*(this + 23) == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 23);
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_139;
  }

LABEL_89:
  if (*(this + 24) == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(this + 24);
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_140;
  }

LABEL_93:
  if (*(this + 25) == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(this + 25);
  }

  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_141;
  }

LABEL_97:
  if (*(this + 27) == 0.0)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(this + 27);
  }

  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_142;
  }

LABEL_101:
  if (*(this + 28) == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(this + 28);
  }

  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_143;
  }

LABEL_105:
  v28 = *(this + 29);
  if (v28 == 0.0)
  {
    v28 = 0.0;
  }

  if ((v1 & 0x20000000) != 0)
  {
LABEL_108:
    v29 = *(this + 30);
    if (v29 == 0.0)
    {
      v29 = 0.0;
    }

    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_111;
    }

LABEL_145:
    v30 = 0.0;
    return *&v34 ^ *&v35 ^ *&v33 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ *&v28 ^ *&v29 ^ *&v30;
  }

LABEL_144:
  v29 = 0.0;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_145;
  }

LABEL_111:
  v30 = *(this + 26);
  if (v30 == 0.0)
  {
    v30 = 0.0;
  }

  return *&v34 ^ *&v35 ^ *&v33 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ *&v28 ^ *&v29 ^ *&v30;
}

void CMMsl::SteadinessModelResult::~SteadinessModelResult(CMMsl::SteadinessModelResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SteadinessModelResult::SteadinessModelResult(uint64_t this, const CMMsl::SteadinessModelResult *a2)
{
  *this = &unk_286C23BF0;
  *(this + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 52) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 52);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 52) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 52) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 1);
    v3 |= 1u;
    *(this + 52) = v3;
    *(this + 8) = v6;
    v2 = *(a2 + 52);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 12);
  v3 |= 0x80u;
  *(this + 52) = v3;
  *(this + 48) = v7;
  v2 = *(a2 + 52);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 9);
  v3 |= 0x10u;
  *(this + 52) = v3;
  *(this + 36) = v8;
  v2 = *(a2 + 52);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 8);
  v3 |= 8u;
  *(this + 52) = v3;
  *(this + 32) = v9;
  v2 = *(a2 + 52);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_18:
    v11 = *(a2 + 10);
    *(this + 52) = v3 | 0x20;
    *(this + 40) = v11;
    return this;
  }

LABEL_17:
  v10 = *(a2 + 11);
  v3 |= 0x40u;
  *(this + 52) = v3;
  *(this + 44) = v10;
  if ((*(a2 + 52) & 0x20) != 0)
  {
    goto LABEL_18;
  }

  return this;
}

uint64_t CMMsl::SteadinessModelResult::operator=(uint64_t a1, const CMMsl::SteadinessModelResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessModelResult::SteadinessModelResult(v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    *&v4 = *(a1 + 48);
    *(a1 + 48) = v11;
    v11 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SteadinessModelResult *a2, CMMsl::SteadinessModelResult *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v7 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v7;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  return result;
}

double CMMsl::SteadinessModelResult::SteadinessModelResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23BF0;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  return result;
}

{
  *a1 = &unk_286C23BF0;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t CMMsl::SteadinessModelResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = &unk_286C23BF0;
    v3 = *(a2 + 24);
    v4 = *(a2 + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(a2 + 52) = 0;
    v12 = *(a1 + 24);
    v7 = *(a1 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v4;
    v11 = v7;
    v14 = *(a1 + 48);
    v8 = *(a1 + 32);
    *(a1 + 48) = v6;
    *(a1 + 32) = v5;
    v13 = v8;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::SteadinessModelResult::formatText(CMMsl::SteadinessModelResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if (v5)
  {
    PB::TextFormatter::format(a2, "likelihoodNotOK", *(this + 1));
    v5 = *(this + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "likelihoodOK", *(this + 2));
  v5 = *(this + 52);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(this + 8);
  PB::TextFormatter::format(a2, "numDaysWithDataLast30Days");
  v5 = *(this + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = *(this + 9);
  PB::TextFormatter::format(a2, "numDaysWithDataLast7Days");
  v5 = *(this + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(this + 10);
  PB::TextFormatter::format(a2, "numValidBouts28Days");
  v5 = *(this + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(a2, "rawSteadiness", *(this + 3));
    if ((*(this + 52) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  v9 = *(this + 11);
  PB::TextFormatter::format(a2, "numValidBouts7Days");
  v5 = *(this + 52);
  if ((v5 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  v10 = *(this + 12);
  PB::TextFormatter::format(a2, "rejectionStatus");
LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SteadinessModelResult::readFrom(CMMsl::SteadinessModelResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 52) |= 0x40u;
          v55 = *(a2 + 1);
          v2 = *(a2 + 2);
          v56 = *a2;
          if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v59 = 0;
            if (v2 <= v55)
            {
              v2 = *(a2 + 1);
            }

            v72 = (v56 + v55);
            v73 = v2 - v55;
            v74 = v55 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v59) = 0;
                *(a2 + 24) = 1;
                goto LABEL_132;
              }

              v75 = v74;
              v76 = *v72;
              *(a2 + 1) = v75;
              v59 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              ++v72;
              --v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                LODWORD(v59) = 0;
                goto LABEL_131;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v59) = 0;
            }

LABEL_131:
            v2 = v75;
          }

          else
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = (v56 + v55);
            v61 = v55 + 1;
            while (1)
            {
              v2 = v61;
              *(a2 + 1) = v61;
              v62 = *v60++;
              v59 |= (v62 & 0x7F) << v57;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              ++v61;
              v14 = v58++ > 8;
              if (v14)
              {
                LODWORD(v59) = 0;
                break;
              }
            }
          }

LABEL_132:
          *(this + 11) = v59;
          goto LABEL_19;
        }

        if (v22 == 8)
        {
          *(this + 52) |= 0x20u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v91 = 0;
            v92 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v93 = (v40 + v39);
            v94 = v2 - v39;
            v95 = v39 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_144;
              }

              v96 = v95;
              v97 = *v93;
              *(a2 + 1) = v96;
              v43 |= (v97 & 0x7F) << v91;
              if ((v97 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              ++v93;
              --v94;
              v95 = v96 + 1;
              v14 = v92++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_143;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_143:
            v2 = v96;
          }

          else
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = (v40 + v39);
            v45 = v39 + 1;
            while (1)
            {
              v2 = v45;
              *(a2 + 1) = v45;
              v46 = *v44++;
              v43 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                break;
              }
            }
          }

LABEL_144:
          *(this + 10) = v43;
          goto LABEL_19;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(this + 52) |= 0x10u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(a2 + 1);
            }

            v65 = (v48 + v47);
            v66 = v2 - v47;
            v67 = v47 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v51) = 0;
                *(a2 + 24) = 1;
                goto LABEL_128;
              }

              v68 = v67;
              v69 = *v65;
              *(a2 + 1) = v68;
              v51 |= (v69 & 0x7F) << v63;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v65;
              --v66;
              v67 = v68 + 1;
              v14 = v64++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                goto LABEL_127;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_127:
            v2 = v68;
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            while (1)
            {
              v2 = v53;
              *(a2 + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                break;
              }
            }
          }

LABEL_128:
          *(this + 9) = v51;
          goto LABEL_19;
        }

        if (v22 == 6)
        {
          *(this + 52) |= 8u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v79 = (v24 + v23);
            v80 = v2 - v23;
            v81 = v23 + 1;
            while (1)
            {
              if (!v80)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_136;
              }

              v82 = v81;
              v83 = *v79;
              *(a2 + 1) = v82;
              v27 |= (v83 & 0x7F) << v77;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              ++v79;
              --v80;
              v81 = v82 + 1;
              v14 = v78++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_135;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_135:
            v2 = v82;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_136:
          *(this + 8) = v27;
          goto LABEL_19;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 52) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_70:
          *(a2 + 24) = 1;
          goto LABEL_19;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_119;
      }

      if (v22 == 4)
      {
        *(this + 52) |= 0x80u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v84 = 0;
          v85 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v86 = (v32 + v31);
          v87 = v2 - v31;
          v88 = v31 + 1;
          while (1)
          {
            if (!v87)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_140;
            }

            v89 = v88;
            v90 = *v86;
            *(a2 + 1) = v89;
            v35 |= (v90 & 0x7F) << v84;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            ++v86;
            --v87;
            v88 = v89 + 1;
            v14 = v85++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_139;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_139:
          v2 = v89;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v2 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_140:
        *(this + 12) = v35;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 52) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_70;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_119;
      }

      if (v22 == 2)
      {
        *(this + 52) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_70;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_119:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v98 = 0;
      return v98 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v98 = v4 ^ 1;
  return v98 & 1;
}

uint64_t CMMsl::SteadinessModelResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(v3 + 36);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = *(v3 + 44);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 52) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  v7 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_17:
  v9 = *(v3 + 40);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::SteadinessModelResult::hash_value(CMMsl::SteadinessModelResult *this)
{
  if ((*(this + 52) & 4) == 0)
  {
    v1 = 0.0;
    if ((*(this + 52) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v2 = 0.0;
    if (*(this + 52))
    {
      goto LABEL_6;
    }

LABEL_18:
    v3 = 0.0;
    if ((*(this + 52) & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 52) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 52) & 0x80) != 0)
  {
LABEL_9:
    v4 = *(this + 12);
    if ((*(this + 52) & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
  if ((*(this + 52) & 0x10) != 0)
  {
LABEL_10:
    v5 = *(this + 9);
    if ((*(this + 52) & 8) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((*(this + 52) & 8) != 0)
  {
LABEL_11:
    v6 = *(this + 8);
    if ((*(this + 52) & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v7 = 0;
    if ((*(this + 52) & 0x20) != 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v8 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_21:
  v6 = 0;
  if ((*(this + 52) & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v7 = *(this + 11);
  if ((*(this + 52) & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v8 = *(this + 10);
  return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

void CMMsl::SteadinessModelTemporalDispersionFeatures::~SteadinessModelTemporalDispersionFeatures(CMMsl::SteadinessModelTemporalDispersionFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::SteadinessModelTemporalDispersionFeatures::SteadinessModelTemporalDispersionFeatures(CMMsl::SteadinessModelTemporalDispersionFeatures *this, const CMMsl::SteadinessModelTemporalDispersionFeatures *a2)
{
  *this = &unk_286C23C28;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 = 8;
    *(this + 40) = 8;
    *(this + 4) = result;
    v2 = *(a2 + 40);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 1);
    *(this + 40) = v3 | 1;
    *(this + 1) = result;
    return result;
  }

  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 40) = v3;
  *(this + 2) = result;
  if (*(a2 + 40))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::SteadinessModelTemporalDispersionFeatures::operator=(uint64_t a1, const CMMsl::SteadinessModelTemporalDispersionFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessModelTemporalDispersionFeatures::SteadinessModelTemporalDispersionFeatures(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SteadinessModelTemporalDispersionFeatures *a2, CMMsl::SteadinessModelTemporalDispersionFeatures *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::SteadinessModelTemporalDispersionFeatures::SteadinessModelTemporalDispersionFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23C28;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C23C28;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::SteadinessModelTemporalDispersionFeatures::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C23C28;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v11 = *(a1 + 40);
    v10 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *(a1 + 40) = v3;
    *(a1 + 24) = v6;
    *(a1 + 8) = v5;
    v9 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::SteadinessModelTemporalDispersionFeatures::formatText(CMMsl::SteadinessModelTemporalDispersionFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "centroidSlopeHeightNormDoubleSupportPercentageCadence", *(this + 1));
    v5 = *(this + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "centroidSlopeHeightNormWalkingSpeedStepLength", *(this + 2));
  v5 = *(this + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "l2DispersionHeightNormDoubleSupportPercentageCadence", *(this + 3));
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "l2DispersionHeightNormWalkingSpeedStepLength", *(this + 4));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SteadinessModelTemporalDispersionFeatures::readFrom(CMMsl::SteadinessModelTemporalDispersionFeatures *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 40) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 40) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 40) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SteadinessModelTemporalDispersionFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16));
      if ((*(v3 + 40) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::SteadinessModelTemporalDispersionFeatures::hash_value(CMMsl::SteadinessModelTemporalDispersionFeatures *this)
{
  if ((*(this + 40) & 8) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v2 = 0.0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 40) & 2) != 0)
  {
LABEL_6:
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if (*(this + 40))
    {
      goto LABEL_9;
    }

LABEL_17:
    v4 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
  }

LABEL_16:
  v3 = 0.0;
  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v4 = *(this + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
}

void CMMsl::SteadinessModelTemporalEntropyFeatures::~SteadinessModelTemporalEntropyFeatures(CMMsl::SteadinessModelTemporalEntropyFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::SteadinessModelTemporalEntropyFeatures::SteadinessModelTemporalEntropyFeatures(CMMsl::SteadinessModelTemporalEntropyFeatures *this, const CMMsl::SteadinessModelTemporalEntropyFeatures *a2)
{
  *this = &unk_286C23C60;
  *(this + 54) = 0;
  v2 = *(a2 + 54);
  if ((v2 & 0x80000) != 0)
  {
    result = *(a2 + 20);
    v3 = 0x80000;
    *(this + 54) = 0x80000;
    *(this + 20) = result;
    v2 = *(a2 + 54);
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40000) != 0)
  {
LABEL_5:
    result = *(a2 + 19);
    v3 |= 0x40000u;
    *(this + 54) = v3;
    *(this + 19) = result;
    v2 = *(a2 + 54);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 54) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 54);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 54) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x100000) == 0)
  {
LABEL_9:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 21);
  v3 |= 0x100000u;
  *(this + 54) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x400000) == 0)
  {
LABEL_10:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 23);
  v3 |= 0x400000u;
  *(this + 54) = v3;
  *(this + 23) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x200000) == 0)
  {
LABEL_11:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 22);
  v3 |= 0x200000u;
  *(this + 54) = v3;
  *(this + 22) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x800000) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 24);
  v3 |= 0x800000u;
  *(this + 54) = v3;
  *(this + 24) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 26);
  v3 |= 0x2000000u;
  *(this + 54) = v3;
  *(this + 26) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_14:
    if ((v2 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 25);
  v3 |= 0x1000000u;
  *(this + 54) = v3;
  *(this + 25) = result;
  v2 = *(a2 + 54);
  if ((v2 & 4) == 0)
  {
LABEL_15:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 54) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 54) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 54);
  if ((v2 & 8) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 54) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 54) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 54) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x40) == 0)
  {
LABEL_20:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 54) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x2000) == 0)
  {
LABEL_21:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 54) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x200) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 54) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 54) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x400) == 0)
  {
LABEL_24:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 54) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x4000) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 15);
  v3 |= 0x4000u;
  *(this + 54) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x8000) == 0)
  {
LABEL_26:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 54) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x20000) == 0)
  {
LABEL_27:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 54) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x10000) == 0)
  {
LABEL_28:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = *(a2 + 17);
  v3 |= 0x10000u;
  *(this + 54) = v3;
  *(this + 17) = result;
  v2 = *(a2 + 54);
  if ((v2 & 0x800) == 0)
  {
LABEL_29:
    if ((v2 & 0x1000) == 0)
    {
      return result;
    }

LABEL_54:
    result = *(a2 + 13);
    *(this + 54) = v3 | 0x1000;
    *(this + 13) = result;
    return result;
  }

LABEL_53:
  result = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 54) = v3;
  *(this + 12) = result;
  if ((*(a2 + 54) & 0x1000) != 0)
  {
    goto LABEL_54;
  }

  return result;
}

CMMsl *CMMsl::SteadinessModelTemporalEntropyFeatures::operator=(CMMsl *a1, const CMMsl::SteadinessModelTemporalEntropyFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessModelTemporalEntropyFeatures::SteadinessModelTemporalEntropyFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SteadinessModelTemporalEntropyFeatures *a2, CMMsl::SteadinessModelTemporalEntropyFeatures *a3)
{
  v3 = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v3;
  v4 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  v5 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v8;
  v9 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v9;
  v10 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v10;
  v11 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v12;
  v13 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v13;
  v14 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v14;
  v15 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v15;
  v16 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v16;
  v17 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v17;
  v18 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v18;
  v19 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v19;
  v20 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v20;
  v21 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v21;
  v22 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v22;
  v23 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v23;
  v24 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v24;
  v25 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v25;
  v26 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v26;
  v27 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v27;
  v28 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v28;
  result = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = result;
  return result;
}

double CMMsl::SteadinessModelTemporalEntropyFeatures::SteadinessModelTemporalEntropyFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23C60;
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 96) = *(a2 + 96);
  result = *(a2 + 104);
  *(a1 + 104) = result;
  return result;
}

CMMsl *CMMsl::SteadinessModelTemporalEntropyFeatures::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::SteadinessModelTemporalEntropyFeatures::SteadinessModelTemporalEntropyFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::SteadinessModelTemporalEntropyFeatures::formatText(CMMsl::SteadinessModelTemporalEntropyFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 54);
  if (v5)
  {
    PB::TextFormatter::format(a2, "allBoutsCycleTimeEntropy5thTo95th", *(this + 1));
    v5 = *(this + 54);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "allBoutsCycleTimeEntropyMean", *(this + 2));
  v5 = *(this + 54);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "allBoutsCycleTimePoincareSd1Mean", *(this + 3));
  v5 = *(this + 54);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "allBoutsCycleTimePoincareSd1P5", *(this + 4));
  v5 = *(this + 54);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "allBoutsCycleTimePoincareSd1P95", *(this + 5));
  v5 = *(this + 54);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "allBoutsCycleTimePoincareSd2Mean", *(this + 6));
  v5 = *(this + 54);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "allBoutsCycleTimePoincareSd2P5", *(this + 7));
  v5 = *(this + 54);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "allBoutsCycleTimePoincareSd2P95", *(this + 8));
  v5 = *(this + 54);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21CycleTimeEntropy5thTo95thLog", *(this + 9));
  v5 = *(this + 54);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21CycleTimeEntropyMeanLog", *(this + 10));
  v5 = *(this + 54);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21CycleTimeEntropyP5Log", *(this + 11));
  v5 = *(this + 54);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21CycleTimePoincareSd1P5Log", *(this + 12));
  v5 = *(this + 54);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21CycleTimePoincareSd2P5Log", *(this + 13));
  v5 = *(this + 54);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21StepLengthEntropyMeanLog", *(this + 14));
  v5 = *(this + 54);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21StepLengthPoincareSd1P5Log", *(this + 15));
  v5 = *(this + 54);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21StepLengthPoincareSd1P95Log", *(this + 16));
  v5 = *(this + 54);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21StepLengthPoincareSd2MeanLog", *(this + 17));
  v5 = *(this + 54);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "allBoutsMinGaitMetrics21StepLengthPoincareSd2P5Log", *(this + 18));
  v5 = *(this + 54);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "allBoutsStepLengthEntropy5thTo95th", *(this + 19));
  v5 = *(this + 54);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "allBoutsStepLengthEntropyMean", *(this + 20));
  v5 = *(this + 54);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "allBoutsStepLengthPoincareSd1Mean", *(this + 21));
  v5 = *(this + 54);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "allBoutsStepLengthPoincareSd1P5", *(this + 22));
  v5 = *(this + 54);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "allBoutsStepLengthPoincareSd1P95", *(this + 23));
  v5 = *(this + 54);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "allBoutsStepLengthPoincareSd2Mean", *(this + 24));
  v5 = *(this + 54);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "allBoutsStepLengthPoincareSd2P5", *(this + 25));
  if ((*(this + 54) & 0x2000000) != 0)
  {
LABEL_27:
    PB::TextFormatter::format(a2, "allBoutsStepLengthPoincareSd2P95", *(this + 26));
  }

LABEL_28:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SteadinessModelTemporalEntropyFeatures::readFrom(CMMsl::SteadinessModelTemporalEntropyFeatures *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_105:
    v22 = v4 ^ 1;
  }

  else
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_105;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 54) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_100;
        case 2u:
          *(this + 54) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_100;
        case 3u:
          *(this + 54) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_100;
        case 4u:
          *(this + 54) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_100;
        case 5u:
          *(this + 54) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_100;
        case 6u:
          *(this + 54) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_100;
        case 7u:
          *(this + 54) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_100;
        case 8u:
          *(this + 54) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_100;
        case 9u:
          *(this + 54) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_100;
        case 0xAu:
          *(this + 54) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_100;
        case 0xBu:
          *(this + 54) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_100;
        case 0xCu:
          *(this + 54) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_100;
        case 0xDu:
          *(this + 54) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_100;
        case 0xEu:
          *(this + 54) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_100;
        case 0xFu:
          *(this + 54) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_100;
        case 0x10u:
          *(this + 54) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_100;
        case 0x11u:
          *(this + 54) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_100;
        case 0x12u:
          *(this + 54) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_100;
        case 0x13u:
          *(this + 54) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_100;
        case 0x14u:
          *(this + 54) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_100;
        case 0x15u:
          *(this + 54) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_100;
        case 0x16u:
          *(this + 54) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_100;
        case 0x17u:
          *(this + 54) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_100;
        case 0x18u:
          *(this + 54) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_100;
        case 0x19u:
          *(this + 54) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_100;
        case 0x1Au:
          *(this + 54) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_98:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 13) = *(*a2 + v2);
LABEL_100:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_101:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_105;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_105;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      v2 = *(a2 + 1);
      goto LABEL_101;
    }

    v22 = 0;
  }

  return v22 & 1;
}

uint64_t CMMsl::SteadinessModelTemporalEntropyFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 216);
  if ((v4 & 0x80000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 160));
    v4 = *(v3 + 216);
    if ((v4 & 0x40000) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 152));
  v4 = *(v3 + 216);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 216);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 216);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 216);
  if ((v4 & 0x400000) == 0)
  {
LABEL_7:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 216);
  if ((v4 & 0x200000) == 0)
  {
LABEL_8:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 176));
  v4 = *(v3 + 216);
  if ((v4 & 0x800000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 192));
  v4 = *(v3 + 216);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 208));
  v4 = *(v3 + 216);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 200));
  v4 = *(v3 + 216);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 216);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 216);
  if ((v4 & 8) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 216);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 216);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 216);
  if ((v4 & 0x40) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 216);
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 216);
  if ((v4 & 0x200) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 216);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 216);
  if ((v4 & 0x400) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 216);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 216);
  if ((v4 & 0x8000) == 0)
  {
LABEL_23:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 216);
  if ((v4 & 0x20000) == 0)
  {
LABEL_24:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 216);
  if ((v4 & 0x10000) == 0)
  {
LABEL_25:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    this = PB::Writer::write(a2, *(v3 + 96));
    if ((*(v3 + 216) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_53;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 216);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 0x1000) == 0)
  {
    return this;
  }

LABEL_53:
  v5 = *(v3 + 104);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::SteadinessModelTemporalEntropyFeatures::hash_value(CMMsl::SteadinessModelTemporalEntropyFeatures *this)
{
  v1 = *(this + 54);
  if ((v1 & 0x80000) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v3 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_52:
    v4 = 0.0;
    if (v1)
    {
      goto LABEL_9;
    }

LABEL_53:
    v5 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v6 = 0.0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_15;
    }

LABEL_55:
    v7 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    v8 = 0.0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    v9 = 0.0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_58:
    v10 = 0.0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_27;
    }

LABEL_59:
    v11 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v12 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_33;
    }

LABEL_61:
    v13 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_36;
    }

LABEL_62:
    v14 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_39;
    }

LABEL_63:
    v15 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_64;
  }

  v2 = *(this + 20);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v3 = *(this + 19);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_52;
  }

LABEL_6:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_9:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_54;
  }

LABEL_12:
  v6 = *(this + 21);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  v7 = *(this + 23);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_56;
  }

LABEL_18:
  v8 = *(this + 22);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  v9 = *(this + 24);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_24:
  v10 = *(this + 26);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_27:
  v11 = *(this + 25);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  v12 = *(this + 3);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_61;
  }

LABEL_33:
  v13 = *(this + 5);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_62;
  }

LABEL_36:
  v14 = *(this + 4);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_63;
  }

LABEL_39:
  v15 = *(this + 6);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_42:
    v16 = *(this + 8);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((v1 & 0x40) != 0)
    {
      goto LABEL_45;
    }

LABEL_65:
    v17 = 0.0;
    goto LABEL_66;
  }

LABEL_64:
  v16 = 0.0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_65;
  }

LABEL_45:
  v17 = *(this + 7);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

LABEL_66:
  if ((v1 & 0x2000) == 0)
  {
    v18 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_68;
    }

LABEL_98:
    v19 = 0.0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_71;
    }

LABEL_99:
    v20 = 0.0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_74;
    }

LABEL_100:
    v21 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_77;
    }

LABEL_101:
    v22 = 0.0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_80;
    }

LABEL_102:
    v23 = 0.0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_83;
    }

LABEL_103:
    v24 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_86;
    }

LABEL_104:
    v25 = 0.0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_105;
  }

  v18 = *(this + 14);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_98;
  }

LABEL_68:
  v19 = *(this + 10);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_99;
  }

LABEL_71:
  v20 = *(this + 9);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_100;
  }

LABEL_74:
  v21 = *(this + 11);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_101;
  }

LABEL_77:
  v22 = *(this + 15);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_102;
  }

LABEL_80:
  v23 = *(this + 16);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_103;
  }

LABEL_83:
  v24 = *(this + 18);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_104;
  }

LABEL_86:
  v25 = *(this + 17);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  if ((v1 & 0x800) != 0)
  {
LABEL_89:
    v26 = *(this + 12);
    if (v26 == 0.0)
    {
      v26 = 0.0;
    }

    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_92;
    }

LABEL_106:
    v27 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ *&v27;
  }

LABEL_105:
  v26 = 0.0;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_106;
  }

LABEL_92:
  v27 = *(this + 13);
  if (v27 == 0.0)
  {
    v27 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ *&v27;
}

void CMMsl::StepCadenceToStrideLengthBin::~StepCadenceToStrideLengthBin(CMMsl::StepCadenceToStrideLengthBin *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::StepCadenceToStrideLengthBin::StepCadenceToStrideLengthBin(CMMsl::StepCadenceToStrideLengthBin *this, const CMMsl::StepCadenceToStrideLengthBin *a2)
{
  *this = &unk_286C23C98;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 8);
    v3 = 8;
    *(this + 40) = 8;
    *(this + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 40))
  {
LABEL_5:
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 40) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 40) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 3);
      *(this + 40) = v3 | 4;
      *(this + 3) = result;
      return result;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v6 = *(a2 + 9);
  v3 |= 0x10u;
  *(this + 40) = v3;
  *(this + 9) = v6;
  if ((*(a2 + 40) & 4) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::StepCadenceToStrideLengthBin::operator=(uint64_t a1, const CMMsl::StepCadenceToStrideLengthBin *a2)
{
  if (a1 != a2)
  {
    CMMsl::StepCadenceToStrideLengthBin::StepCadenceToStrideLengthBin(&v8, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v3;
    *&v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = v11;
    *(a1 + 24) = v10;
    *(a1 + 32) = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v10 = v3;
    v11 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::StepCadenceToStrideLengthBin *a2, CMMsl::StepCadenceToStrideLengthBin *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v7;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

double CMMsl::StepCadenceToStrideLengthBin::StepCadenceToStrideLengthBin(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23C98;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C23C98;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::StepCadenceToStrideLengthBin::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C23C98;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v13 = *(a1 + 40);
    v4 = *(a1 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    *(a1 + 8) = *(a2 + 8);
    v10 = v4;
    *(a1 + 40) = v3;
    v7 = *(a1 + 24);
    *&v4 = *(a1 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    v11 = v7;
    v12 = v4;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::StepCadenceToStrideLengthBin::formatText(CMMsl::StepCadenceToStrideLengthBin *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "begin", *(this + 1));
    v5 = *(this + 40);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 8);
  PB::TextFormatter::format(a2, "bin");
  v5 = *(this + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "end", *(this + 2));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v7 = *(this + 9);
  PB::TextFormatter::format(a2, "state");
  if ((*(this + 40) & 4) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "strideLength", *(this + 3));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StepCadenceToStrideLengthBin::readFrom(CMMsl::StepCadenceToStrideLengthBin *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 40) |= 8u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v48 = (v32 + v31);
          v49 = v2 - v31;
          v50 = v31 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_76;
            }

            v51 = v50;
            v52 = *v48;
            *(a2 + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            ++v48;
            --v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_75;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_75:
          v2 = v51;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v2 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_76:
        *(this + 8) = v35;
        goto LABEL_77;
      }

      if (v22 == 2)
      {
        *(this + 40) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_34:
          *(a2 + 24) = 1;
          goto LABEL_77;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_66;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 40) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_34;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_66;
        case 4:
          *(this + 40) |= 0x10u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v39 = 0;
            v40 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v41 = (v24 + v23);
            v42 = v2 - v23;
            v43 = v23 + 1;
            while (1)
            {
              if (!v42)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_72;
              }

              v44 = v43;
              v45 = *v41;
              *(a2 + 1) = v44;
              v27 |= (v45 & 0x7F) << v39;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              ++v41;
              --v42;
              v43 = v44 + 1;
              v14 = v40++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_71;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_71:
            v2 = v44;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_72:
          *(this + 9) = v27;
          goto LABEL_77;
        case 5:
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_34;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_66:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_77;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_77:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::StepCadenceToStrideLengthBin::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 8) != 0)
  {
    v5 = *(this + 32);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 40);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = *(v3 + 36);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 40) & 4) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v3 + 24);

  return PB::Writer::write(a2, v7);
}

uint64_t CMMsl::StepCadenceToStrideLengthBin::hash_value(CMMsl::StepCadenceToStrideLengthBin *this)
{
  if ((*(this + 40) & 8) == 0)
  {
    v1 = 0;
    if (*(this + 40))
    {
      goto LABEL_3;
    }

LABEL_14:
    v2 = 0.0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v3 = 0.0;
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v1 = *(this + 8);
  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 40) & 0x10) != 0)
  {
LABEL_9:
    v4 = *(this + 9);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v5 = 0.0;
    return *&v2 ^ v1 ^ *&v3 ^ v4 ^ *&v5;
  }

LABEL_16:
  v4 = 0;
  if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3 ^ v4 ^ *&v5;
}

void CMMsl::StepCountEntry::~StepCountEntry(CMMsl::StepCountEntry *this)
{
  *this = &unk_286C23CD0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    sub_25AD28A30(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::StepCountEntry::~StepCountEntry(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::StepCountEntry::StepCountEntry(uint64_t this, const CMMsl::StepCountEntry *a2)
{
  *this = &unk_286C23CD0;
  *(this + 8) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 152) = 0;
  v2 = *(a2 + 38);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 11);
    v3 = 128;
    *(this + 152) = 128;
    *(this + 88) = v4;
    v2 = *(a2 + 38);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 10);
    v3 |= 0x40u;
    *(this + 152) = v3;
    *(this + 80) = v5;
    v2 = *(a2 + 38);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v7 = *(a2 + 6);
    v3 |= 0x10u;
    *(this + 152) = v3;
    *(this + 48) = v7;
    v2 = *(a2 + 38);
    if ((v2 & 0x100) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 0x100) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 24);
  v3 |= 0x100u;
  *(this + 152) = v3;
  *(this + 96) = v8;
  v2 = *(a2 + 38);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 5);
  v3 |= 8u;
  *(this + 152) = v3;
  *(this + 40) = v9;
  v2 = *(a2 + 38);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 152) = v3;
  *(this + 64) = v10;
  v2 = *(a2 + 38);
  if ((v2 & 0x4000) == 0)
  {
LABEL_11:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 30);
  v3 |= 0x4000u;
  *(this + 152) = v3;
  *(this + 120) = v11;
  v2 = *(a2 + 38);
  if ((v2 & 0x8000) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 31);
  v3 |= 0x8000u;
  *(this + 152) = v3;
  *(this + 124) = v12;
  v2 = *(a2 + 38);
  if ((v2 & 4) == 0)
  {
LABEL_13:
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 4);
  v3 |= 4u;
  *(this + 152) = v3;
  *(this + 32) = v13;
  v2 = *(a2 + 38);
  if ((v2 & 2) == 0)
  {
LABEL_14:
    if ((v2 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 3);
  v3 |= 2u;
  *(this + 152) = v3;
  *(this + 24) = v14;
  v2 = *(a2 + 38);
  if ((v2 & 1) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_27:
  v15 = *(a2 + 2);
  v3 |= 1u;
  *(this + 152) = v3;
  *(this + 16) = v15;
  if ((*(a2 + 38) & 0x80000) != 0)
  {
LABEL_16:
    v6 = *(a2 + 35);
    *(this + 152) = v3 | 0x80000;
    *(this + 140) = v6;
  }

LABEL_17:
  if (*(a2 + 9))
  {
    operator new();
  }

  v16 = *(a2 + 38);
  if ((v16 & 0x200000) != 0)
  {
    v17 = *(a2 + 148);
    *(this + 152) |= 0x200000u;
    *(this + 148) = v17;
    v16 = *(a2 + 38);
  }

  if ((v16 & 0x400000) != 0)
  {
    v18 = *(a2 + 149);
    *(this + 152) |= 0x400000u;
    *(this + 149) = v18;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v19 = *(a2 + 38);
  if ((v19 & 0x40000) != 0)
  {
    v22 = *(a2 + 34);
    *(this + 152) |= 0x40000u;
    *(this + 136) = v22;
    v19 = *(a2 + 38);
    if ((v19 & 0x100000) == 0)
    {
LABEL_37:
      if ((v19 & 0x20000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_51;
    }
  }

  else if ((v19 & 0x100000) == 0)
  {
    goto LABEL_37;
  }

  v23 = *(a2 + 36);
  *(this + 152) |= 0x100000u;
  *(this + 144) = v23;
  v19 = *(a2 + 38);
  if ((v19 & 0x20000) == 0)
  {
LABEL_38:
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = *(a2 + 33);
  *(this + 152) |= 0x20000u;
  *(this + 132) = v24;
  v19 = *(a2 + 38);
  if ((v19 & 0x400) == 0)
  {
LABEL_39:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = *(a2 + 26);
  *(this + 152) |= 0x400u;
  *(this + 104) = v25;
  v19 = *(a2 + 38);
  if ((v19 & 0x800) == 0)
  {
LABEL_40:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = *(a2 + 27);
  *(this + 152) |= 0x800u;
  *(this + 108) = v26;
  v19 = *(a2 + 38);
  if ((v19 & 0x2000) == 0)
  {
LABEL_41:
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = *(a2 + 29);
  *(this + 152) |= 0x2000u;
  *(this + 116) = v27;
  v19 = *(a2 + 38);
  if ((v19 & 0x200) == 0)
  {
LABEL_42:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_55:
  v28 = *(a2 + 25);
  *(this + 152) |= 0x200u;
  *(this + 100) = v28;
  if ((*(a2 + 38) & 0x1000) != 0)
  {
LABEL_43:
    v20 = *(a2 + 28);
    *(this + 152) |= 0x1000u;
    *(this + 112) = v20;
  }

LABEL_44:
  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 154))
  {
    v21 = *(a2 + 32);
    *(this + 152) |= 0x10000u;
    *(this + 128) = v21;
  }

  return this;
}

CMMsl *CMMsl::StepCountEntry::operator=(CMMsl *a1, const CMMsl::StepCountEntry *a2)
{
  if (a1 != a2)
  {
    CMMsl::StepCountEntry::StepCountEntry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::StepCountEntry::~StepCountEntry(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::StepCountEntry *a2, CMMsl::StepCountEntry *a3)
{
  v3 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  v4 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v10;
  v11 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v13;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v15 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v15;
  v16 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v16;
  LOBYTE(v16) = *(this + 148);
  *(this + 148) = *(a2 + 148);
  *(a2 + 148) = v16;
  LOBYTE(v16) = *(this + 149);
  *(this + 149) = *(a2 + 149);
  *(a2 + 149) = v16;
  v17 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v17;
  LODWORD(v17) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v17;
  LODWORD(v17) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v17;
  LODWORD(v17) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v17;
  LODWORD(v17) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v17;
  LODWORD(v17) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v17;
  LODWORD(v17) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v17;
  LODWORD(v17) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v17;
  LODWORD(v17) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v17;
  v18 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v18;
  LODWORD(v18) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v18;
  return result;
}

uint64_t CMMsl::StepCountEntry::StepCountEntry(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23CD0;
  *(a1 + 8) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 140) = *(a2 + 140);
  v4 = *(a2 + 72);
  *(a2 + 72) = 0;
  v5 = *(a1 + 72);
  *(a1 + 72) = v4;
  if (v5)
  {
    sub_25AD28A30(v5);
  }

  *(a1 + 148) = *(a2 + 148);
  *(a1 + 149) = *(a2 + 149);
  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 56);
  *(a2 + 56) = 0;
  v9 = *(a1 + 56);
  *(a1 + 56) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 128) = *(a2 + 128);
  return a1;
}

CMMsl *CMMsl::StepCountEntry::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::StepCountEntry::StepCountEntry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::StepCountEntry::~StepCountEntry(v5);
  }

  return a1;
}

uint64_t CMMsl::StepCountEntry::formatText(CMMsl::StepCountEntry *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "accelerometerPace");
  }

  v6 = *(this + 38);
  if (v6)
  {
    PB::TextFormatter::format(a2, "activeTime", *(this + 2));
    v6 = *(this + 38);
    if ((v6 & 0x100) == 0)
    {
LABEL_5:
      if ((v6 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_5;
  }

  v13 = *(this + 24);
  PB::TextFormatter::format(a2, "count");
  v6 = *(this + 38);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "currentCadence", *(this + 3));
  v6 = *(this + 38);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "currentPace", *(this + 4));
  v6 = *(this + 38);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "distance", *(this + 5));
  v6 = *(this + 38);
  if ((v6 & 0x200) == 0)
  {
LABEL_9:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(this + 25);
  PB::TextFormatter::format(a2, "distanceSource");
  v6 = *(this + 38);
  if ((v6 & 0x400) == 0)
  {
LABEL_10:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(this + 26);
  PB::TextFormatter::format(a2, "elevationAscended");
  v6 = *(this + 38);
  if ((v6 & 0x800) == 0)
  {
LABEL_11:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = *(this + 27);
  PB::TextFormatter::format(a2, "elevationDescended");
  v6 = *(this + 38);
  if ((v6 & 0x1000) == 0)
  {
LABEL_12:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = *(this + 28);
  PB::TextFormatter::format(a2, "falseStepDetectorState");
  v6 = *(this + 38);
  if ((v6 & 0x2000) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *(this + 29);
  PB::TextFormatter::format(a2, "falseStepsSuppressed");
  v6 = *(this + 38);
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "firstStepTime", *(this + 6));
  v6 = *(this + 38);
  if ((v6 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = *(this + 30);
  PB::TextFormatter::format(a2, "floorsAscended");
  v6 = *(this + 38);
  if ((v6 & 0x8000) == 0)
  {
LABEL_16:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = *(this + 31);
  PB::TextFormatter::format(a2, "floorsDescended");
  v6 = *(this + 38);
  if ((v6 & 0x200000) == 0)
  {
LABEL_17:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_49:
  v21 = *(this + 148);
  PB::TextFormatter::format(a2, "isOdometerDistance");
  if ((*(this + 38) & 0x400000) != 0)
  {
LABEL_18:
    v7 = *(this + 149);
    PB::TextFormatter::format(a2, "isOdometerPace");
  }

LABEL_19:
  v8 = *(this + 7);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "movementStats");
  }

  v9 = *(this + 38);
  if ((v9 & 0x10000) != 0)
  {
    v22 = *(this + 32);
    PB::TextFormatter::format(a2, "paceSource");
    v9 = *(this + 38);
    if ((v9 & 0x20000) == 0)
    {
LABEL_23:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_53;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_23;
  }

  v23 = *(this + 33);
  PB::TextFormatter::format(a2, "pedometerArmConstrainedState");
  v9 = *(this + 38);
  if ((v9 & 0x40000) == 0)
  {
LABEL_24:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  v24 = *(this + 34);
  PB::TextFormatter::format(a2, "pushCount");
  v9 = *(this + 38);
  if ((v9 & 0x20) == 0)
  {
LABEL_25:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "rawDistance", *(this + 8));
  if ((*(this + 38) & 0x80000) != 0)
  {
LABEL_26:
    v10 = *(this + 35);
    PB::TextFormatter::format(a2, "recordId");
  }

LABEL_27:
  if (*(this + 9))
  {
    PB::TextFormatter::format();
  }

  v11 = *(this + 38);
  if ((v11 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "startTime", *(this + 10));
    v11 = *(this + 38);
    if ((v11 & 0x80) == 0)
    {
LABEL_31:
      if ((v11 & 0x100000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_31;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 11));
  if ((*(this + 38) & 0x100000) != 0)
  {
LABEL_32:
    v12 = *(this + 36);
    PB::TextFormatter::format(a2, "workoutType");
  }

LABEL_33:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::StepCountEntry::readFrom(CMMsl::StepCountEntry *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_308:
    v233 = v4 ^ 1;
  }

  else
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_308;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 38) |= 0x80u;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 11) = *(*a2 + v22);
          goto LABEL_254;
        case 2u:
          *(this + 38) |= 0x40u;
          v75 = *(a2 + 1);
          if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 10) = *(*a2 + v75);
          goto LABEL_254;
        case 3u:
          *(this + 38) |= 0x10u;
          v56 = *(a2 + 1);
          if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 6) = *(*a2 + v56);
          goto LABEL_254;
        case 4u:
          *(this + 38) |= 0x100u;
          v58 = *(a2 + 1);
          v57 = *(a2 + 2);
          v59 = *a2;
          if (v58 <= 0xFFFFFFFFFFFFFFF5 && v58 + 10 <= v57)
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = (v59 + v58);
            v64 = v58 + 1;
            do
            {
              *(a2 + 1) = v64;
              v65 = *v63++;
              v62 |= (v65 & 0x7F) << v60;
              if ((v65 & 0x80) == 0)
              {
                goto LABEL_279;
              }

              v60 += 7;
              ++v64;
              v14 = v61++ > 8;
            }

            while (!v14);
LABEL_178:
            LODWORD(v62) = 0;
            goto LABEL_279;
          }

          v173 = 0;
          v174 = 0;
          v62 = 0;
          v175 = (v59 + v58);
          v18 = v57 >= v58;
          v176 = v57 - v58;
          if (!v18)
          {
            v176 = 0;
          }

          v177 = v58 + 1;
          while (2)
          {
            if (v176)
            {
              v178 = *v175;
              *(a2 + 1) = v177;
              v62 |= (v178 & 0x7F) << v173;
              if (v178 < 0)
              {
                v173 += 7;
                ++v175;
                --v176;
                ++v177;
                v14 = v174++ > 8;
                if (v14)
                {
                  goto LABEL_178;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v62) = 0;
              }
            }

            else
            {
              LODWORD(v62) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_279:
          *(this + 24) = v62;
          goto LABEL_18;
        case 5u:
          *(this + 38) |= 8u;
          v45 = *(a2 + 1);
          if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 5) = *(*a2 + v45);
          goto LABEL_254;
        case 6u:
          *(this + 38) |= 0x20u;
          v94 = *(a2 + 1);
          if (v94 > 0xFFFFFFFFFFFFFFF7 || v94 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 8) = *(*a2 + v94);
          goto LABEL_254;
        case 7u:
          *(this + 38) |= 0x4000u;
          v109 = *(a2 + 1);
          v108 = *(a2 + 2);
          v110 = *a2;
          if (v109 <= 0xFFFFFFFFFFFFFFF5 && v109 + 10 <= v108)
          {
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = (v110 + v109);
            v115 = v109 + 1;
            do
            {
              *(a2 + 1) = v115;
              v116 = *v114++;
              v113 |= (v116 & 0x7F) << v111;
              if ((v116 & 0x80) == 0)
              {
                goto LABEL_294;
              }

              v111 += 7;
              ++v115;
              v14 = v112++ > 8;
            }

            while (!v14);
LABEL_218:
            LODWORD(v113) = 0;
            goto LABEL_294;
          }

          v203 = 0;
          v204 = 0;
          v113 = 0;
          v205 = (v110 + v109);
          v18 = v108 >= v109;
          v206 = v108 - v109;
          if (!v18)
          {
            v206 = 0;
          }

          v207 = v109 + 1;
          while (2)
          {
            if (v206)
            {
              v208 = *v205;
              *(a2 + 1) = v207;
              v113 |= (v208 & 0x7F) << v203;
              if (v208 < 0)
              {
                v203 += 7;
                ++v205;
                --v206;
                ++v207;
                v14 = v204++ > 8;
                if (v14)
                {
                  goto LABEL_218;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v113) = 0;
              }
            }

            else
            {
              LODWORD(v113) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_294:
          *(this + 30) = v113;
          goto LABEL_18;
        case 8u:
          *(this + 38) |= 0x8000u;
          v67 = *(a2 + 1);
          v66 = *(a2 + 2);
          v68 = *a2;
          if (v67 <= 0xFFFFFFFFFFFFFFF5 && v67 + 10 <= v66)
          {
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = (v68 + v67);
            v73 = v67 + 1;
            do
            {
              *(a2 + 1) = v73;
              v74 = *v72++;
              v71 |= (v74 & 0x7F) << v69;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_282;
              }

              v69 += 7;
              ++v73;
              v14 = v70++ > 8;
            }

            while (!v14);
LABEL_186:
            LODWORD(v71) = 0;
            goto LABEL_282;
          }

          v179 = 0;
          v180 = 0;
          v71 = 0;
          v181 = (v68 + v67);
          v18 = v66 >= v67;
          v182 = v66 - v67;
          if (!v18)
          {
            v182 = 0;
          }

          v183 = v67 + 1;
          while (2)
          {
            if (v182)
            {
              v184 = *v181;
              *(a2 + 1) = v183;
              v71 |= (v184 & 0x7F) << v179;
              if (v184 < 0)
              {
                v179 += 7;
                ++v181;
                --v182;
                ++v183;
                v14 = v180++ > 8;
                if (v14)
                {
                  goto LABEL_186;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v71) = 0;
              }
            }

            else
            {
              LODWORD(v71) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_282:
          *(this + 31) = v71;
          goto LABEL_18;
        case 9u:
          *(this + 38) |= 4u;
          v127 = *(a2 + 1);
          if (v127 > 0xFFFFFFFFFFFFFFF7 || v127 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 4) = *(*a2 + v127);
          goto LABEL_254;
        case 0xAu:
          *(this + 38) |= 2u;
          v46 = *(a2 + 1);
          if (v46 > 0xFFFFFFFFFFFFFFF7 || v46 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 3) = *(*a2 + v46);
          goto LABEL_254;
        case 0xBu:
          *(this + 38) |= 1u;
          v126 = *(a2 + 1);
          if (v126 > 0xFFFFFFFFFFFFFFF7 || v126 + 8 > *(a2 + 2))
          {
LABEL_123:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 2) = *(*a2 + v126);
LABEL_254:
            *(a2 + 1) += 8;
          }

          goto LABEL_18;
        case 0xCu:
          *(this + 38) |= 0x80000u;
          v37 = *(a2 + 1);
          v36 = *(a2 + 2);
          v38 = *a2;
          if (v37 <= 0xFFFFFFFFFFFFFFF5 && v37 + 10 <= v36)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v38 + v37);
            v43 = v37 + 1;
            do
            {
              *(a2 + 1) = v43;
              v44 = *v42++;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                goto LABEL_273;
              }

              v39 += 7;
              ++v43;
              v14 = v40++ > 8;
            }

            while (!v14);
LABEL_162:
            LODWORD(v41) = 0;
            goto LABEL_273;
          }

          v161 = 0;
          v162 = 0;
          v41 = 0;
          v163 = (v38 + v37);
          v18 = v36 >= v37;
          v164 = v36 - v37;
          if (!v18)
          {
            v164 = 0;
          }

          v165 = v37 + 1;
          while (2)
          {
            if (v164)
            {
              v166 = *v163;
              *(a2 + 1) = v165;
              v41 |= (v166 & 0x7F) << v161;
              if (v166 < 0)
              {
                v161 += 7;
                ++v163;
                --v164;
                ++v165;
                v14 = v162++ > 8;
                if (v14)
                {
                  goto LABEL_162;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v41) = 0;
              }
            }

            else
            {
              LODWORD(v41) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_273:
          *(this + 35) = v41;
          goto LABEL_18;
        case 0xDu:
          operator new();
        case 0xEu:
          *(this + 38) |= 0x200000u;
          v104 = *(a2 + 1);
          if (v104 >= *(a2 + 2))
          {
            v107 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v105 = v104 + 1;
            v106 = *(*a2 + v104);
            *(a2 + 1) = v105;
            v107 = v106 != 0;
          }

          *(this + 148) = v107;
          goto LABEL_18;
        case 0xFu:
          *(this + 38) |= 0x400000u;
          v32 = *(a2 + 1);
          if (v32 >= *(a2 + 2))
          {
            v35 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v33 = v32 + 1;
            v34 = *(*a2 + v32);
            *(a2 + 1) = v33;
            v35 = v34 != 0;
          }

          *(this + 149) = v35;
          goto LABEL_18;
        case 0x10u:
          operator new();
        case 0x11u:
          *(this + 38) |= 0x40000u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_270;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_152:
            LODWORD(v28) = 0;
            goto LABEL_270;
          }

          v155 = 0;
          v156 = 0;
          v28 = 0;
          v157 = (v25 + v24);
          v18 = v23 >= v24;
          v158 = v23 - v24;
          if (!v18)
          {
            v158 = 0;
          }

          v159 = v24 + 1;
          while (2)
          {
            if (v158)
            {
              v160 = *v157;
              *(a2 + 1) = v159;
              v28 |= (v160 & 0x7F) << v155;
              if (v160 < 0)
              {
                v155 += 7;
                ++v157;
                --v158;
                ++v159;
                v14 = v156++ > 8;
                if (v14)
                {
                  goto LABEL_152;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_270:
          *(this + 34) = v28;
          goto LABEL_18;
        case 0x12u:
          *(this + 38) |= 0x100000u;
          v77 = *(a2 + 1);
          v76 = *(a2 + 2);
          v78 = *a2;
          if (v77 <= 0xFFFFFFFFFFFFFFF5 && v77 + 10 <= v76)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            v82 = (v78 + v77);
            v83 = v77 + 1;
            do
            {
              *(a2 + 1) = v83;
              v84 = *v82++;
              v81 |= (v84 & 0x7F) << v79;
              if ((v84 & 0x80) == 0)
              {
                goto LABEL_285;
              }

              v79 += 7;
              ++v83;
              v14 = v80++ > 8;
            }

            while (!v14);
LABEL_194:
            LODWORD(v81) = 0;
            goto LABEL_285;
          }

          v185 = 0;
          v186 = 0;
          v81 = 0;
          v187 = (v78 + v77);
          v18 = v76 >= v77;
          v188 = v76 - v77;
          if (!v18)
          {
            v188 = 0;
          }

          v189 = v77 + 1;
          while (2)
          {
            if (v188)
            {
              v190 = *v187;
              *(a2 + 1) = v189;
              v81 |= (v190 & 0x7F) << v185;
              if (v190 < 0)
              {
                v185 += 7;
                ++v187;
                --v188;
                ++v189;
                v14 = v186++ > 8;
                if (v14)
                {
                  goto LABEL_194;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              LODWORD(v81) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_285:
          *(this + 36) = v81;
          goto LABEL_18;
        case 0x13u:
          *(this + 38) |= 0x20000u;
          v118 = *(a2 + 1);
          v117 = *(a2 + 2);
          v119 = *a2;
          if (v118 <= 0xFFFFFFFFFFFFFFF5 && v118 + 10 <= v117)
          {
            v120 = 0;
            v121 = 0;
            v122 = 0;
            v123 = (v119 + v118);
            v124 = v118 + 1;
            do
            {
              *(a2 + 1) = v124;
              v125 = *v123++;
              v122 |= (v125 & 0x7F) << v120;
              if ((v125 & 0x80) == 0)
              {
                goto LABEL_297;
              }

              v120 += 7;
              ++v124;
              v14 = v121++ > 8;
            }

            while (!v14);
LABEL_226:
            LODWORD(v122) = 0;
            goto LABEL_297;
          }

          v209 = 0;
          v210 = 0;
          v122 = 0;
          v211 = (v119 + v118);
          v18 = v117 >= v118;
          v212 = v117 - v118;
          if (!v18)
          {
            v212 = 0;
          }

          v213 = v118 + 1;
          while (2)
          {
            if (v212)
            {
              v214 = *v211;
              *(a2 + 1) = v213;
              v122 |= (v214 & 0x7F) << v209;
              if (v214 < 0)
              {
                v209 += 7;
                ++v211;
                --v212;
                ++v213;
                v14 = v210++ > 8;
                if (v14)
                {
                  goto LABEL_226;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v122) = 0;
              }
            }

            else
            {
              LODWORD(v122) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_297:
          *(this + 33) = v122;
          goto LABEL_18;
        case 0x14u:
          *(this + 38) |= 0x400u;
          v138 = *(a2 + 1);
          v137 = *(a2 + 2);
          v139 = *a2;
          if (v138 <= 0xFFFFFFFFFFFFFFF5 && v138 + 10 <= v137)
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = (v139 + v138);
            v144 = v138 + 1;
            do
            {
              *(a2 + 1) = v144;
              v145 = *v143++;
              v142 |= (v145 & 0x7F) << v140;
              if ((v145 & 0x80) == 0)
              {
                goto LABEL_303;
              }

              v140 += 7;
              ++v144;
              v14 = v141++ > 8;
            }

            while (!v14);
LABEL_244:
            LODWORD(v142) = 0;
            goto LABEL_303;
          }

          v221 = 0;
          v222 = 0;
          v142 = 0;
          v223 = (v139 + v138);
          v18 = v137 >= v138;
          v224 = v137 - v138;
          if (!v18)
          {
            v224 = 0;
          }

          v225 = v138 + 1;
          while (2)
          {
            if (v224)
            {
              v226 = *v223;
              *(a2 + 1) = v225;
              v142 |= (v226 & 0x7F) << v221;
              if (v226 < 0)
              {
                v221 += 7;
                ++v223;
                --v224;
                ++v225;
                v14 = v222++ > 8;
                if (v14)
                {
                  goto LABEL_244;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v142) = 0;
              }
            }

            else
            {
              LODWORD(v142) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_303:
          *(this + 26) = v142;
          goto LABEL_18;
        case 0x15u:
          *(this + 38) |= 0x800u;
          v86 = *(a2 + 1);
          v85 = *(a2 + 2);
          v87 = *a2;
          if (v86 <= 0xFFFFFFFFFFFFFFF5 && v86 + 10 <= v85)
          {
            v88 = 0;
            v89 = 0;
            v90 = 0;
            v91 = (v87 + v86);
            v92 = v86 + 1;
            do
            {
              *(a2 + 1) = v92;
              v93 = *v91++;
              v90 |= (v93 & 0x7F) << v88;
              if ((v93 & 0x80) == 0)
              {
                goto LABEL_288;
              }

              v88 += 7;
              ++v92;
              v14 = v89++ > 8;
            }

            while (!v14);
LABEL_202:
            LODWORD(v90) = 0;
            goto LABEL_288;
          }

          v191 = 0;
          v192 = 0;
          v90 = 0;
          v193 = (v87 + v86);
          v18 = v85 >= v86;
          v194 = v85 - v86;
          if (!v18)
          {
            v194 = 0;
          }

          v195 = v86 + 1;
          while (2)
          {
            if (v194)
            {
              v196 = *v193;
              *(a2 + 1) = v195;
              v90 |= (v196 & 0x7F) << v191;
              if (v196 < 0)
              {
                v191 += 7;
                ++v193;
                --v194;
                ++v195;
                v14 = v192++ > 8;
                if (v14)
                {
                  goto LABEL_202;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v90) = 0;
              }
            }

            else
            {
              LODWORD(v90) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_288:
          *(this + 27) = v90;
          goto LABEL_18;
        case 0x16u:
          *(this + 38) |= 0x2000u;
          v96 = *(a2 + 1);
          v95 = *(a2 + 2);
          v97 = *a2;
          if (v96 <= 0xFFFFFFFFFFFFFFF5 && v96 + 10 <= v95)
          {
            v98 = 0;
            v99 = 0;
            v100 = 0;
            v101 = (v97 + v96);
            v102 = v96 + 1;
            do
            {
              *(a2 + 1) = v102;
              v103 = *v101++;
              v100 |= (v103 & 0x7F) << v98;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_291;
              }

              v98 += 7;
              ++v102;
              v14 = v99++ > 8;
            }

            while (!v14);
LABEL_210:
            LODWORD(v100) = 0;
            goto LABEL_291;
          }

          v197 = 0;
          v198 = 0;
          v100 = 0;
          v199 = (v97 + v96);
          v18 = v95 >= v96;
          v200 = v95 - v96;
          if (!v18)
          {
            v200 = 0;
          }

          v201 = v96 + 1;
          while (2)
          {
            if (v200)
            {
              v202 = *v199;
              *(a2 + 1) = v201;
              v100 |= (v202 & 0x7F) << v197;
              if (v202 < 0)
              {
                v197 += 7;
                ++v199;
                --v200;
                ++v201;
                v14 = v198++ > 8;
                if (v14)
                {
                  goto LABEL_210;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v100) = 0;
              }
            }

            else
            {
              LODWORD(v100) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_291:
          *(this + 29) = v100;
          goto LABEL_18;
        case 0x17u:
          *(this + 38) |= 0x200u;
          v129 = *(a2 + 1);
          v128 = *(a2 + 2);
          v130 = *a2;
          if (v129 <= 0xFFFFFFFFFFFFFFF5 && v129 + 10 <= v128)
          {
            v131 = 0;
            v132 = 0;
            v133 = 0;
            v134 = (v130 + v129);
            v135 = v129 + 1;
            do
            {
              *(a2 + 1) = v135;
              v136 = *v134++;
              v133 |= (v136 & 0x7F) << v131;
              if ((v136 & 0x80) == 0)
              {
                goto LABEL_300;
              }

              v131 += 7;
              ++v135;
              v14 = v132++ > 8;
            }

            while (!v14);
LABEL_236:
            LODWORD(v133) = 0;
            goto LABEL_300;
          }

          v215 = 0;
          v216 = 0;
          v133 = 0;
          v217 = (v130 + v129);
          v18 = v128 >= v129;
          v218 = v128 - v129;
          if (!v18)
          {
            v218 = 0;
          }

          v219 = v129 + 1;
          while (2)
          {
            if (v218)
            {
              v220 = *v217;
              *(a2 + 1) = v219;
              v133 |= (v220 & 0x7F) << v215;
              if (v220 < 0)
              {
                v215 += 7;
                ++v217;
                --v218;
                ++v219;
                v14 = v216++ > 8;
                if (v14)
                {
                  goto LABEL_236;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v133) = 0;
              }
            }

            else
            {
              LODWORD(v133) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_300:
          *(this + 25) = v133;
          goto LABEL_18;
        case 0x18u:
          *(this + 38) |= 0x1000u;
          v147 = *(a2 + 1);
          v146 = *(a2 + 2);
          v148 = *a2;
          if (v147 <= 0xFFFFFFFFFFFFFFF5 && v147 + 10 <= v146)
          {
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = (v148 + v147);
            v153 = v147 + 1;
            do
            {
              *(a2 + 1) = v153;
              v154 = *v152++;
              v151 |= (v154 & 0x7F) << v149;
              if ((v154 & 0x80) == 0)
              {
                goto LABEL_306;
              }

              v149 += 7;
              ++v153;
              v14 = v150++ > 8;
            }

            while (!v14);
LABEL_252:
            LODWORD(v151) = 0;
            goto LABEL_306;
          }

          v227 = 0;
          v228 = 0;
          v151 = 0;
          v229 = (v148 + v147);
          v18 = v146 >= v147;
          v230 = v146 - v147;
          if (!v18)
          {
            v230 = 0;
          }

          v231 = v147 + 1;
          while (2)
          {
            if (v230)
            {
              v232 = *v229;
              *(a2 + 1) = v231;
              v151 |= (v232 & 0x7F) << v227;
              if (v232 < 0)
              {
                v227 += 7;
                ++v229;
                --v230;
                ++v231;
                v14 = v228++ > 8;
                if (v14)
                {
                  goto LABEL_252;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v151) = 0;
              }
            }

            else
            {
              LODWORD(v151) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_306:
          *(this + 28) = v151;
          goto LABEL_18;
        case 0x19u:
          operator new();
        case 0x1Au:
          *(this + 38) |= 0x10000u;
          v48 = *(a2 + 1);
          v47 = *(a2 + 2);
          v49 = *a2;
          if (v48 <= 0xFFFFFFFFFFFFFFF5 && v48 + 10 <= v47)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = (v49 + v48);
            v54 = v48 + 1;
            do
            {
              *(a2 + 1) = v54;
              v55 = *v53++;
              v52 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                goto LABEL_276;
              }

              v50 += 7;
              ++v54;
              v14 = v51++ > 8;
            }

            while (!v14);
LABEL_170:
            LODWORD(v52) = 0;
            goto LABEL_276;
          }

          v167 = 0;
          v168 = 0;
          v52 = 0;
          v169 = (v49 + v48);
          v18 = v47 >= v48;
          v170 = v47 - v48;
          if (!v18)
          {
            v170 = 0;
          }

          v171 = v48 + 1;
          break;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v170)
        {
          LODWORD(v52) = 0;
          *(a2 + 24) = 1;
          goto LABEL_276;
        }

        v172 = *v169;
        *(a2 + 1) = v171;
        v52 |= (v172 & 0x7F) << v167;
        if ((v172 & 0x80) == 0)
        {
          break;
        }

        v167 += 7;
        ++v169;
        --v170;
        ++v171;
        v14 = v168++ > 8;
        if (v14)
        {
          goto LABEL_170;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v52) = 0;
      }

LABEL_276:
      *(this + 32) = v52;
LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_308;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_308;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      goto LABEL_18;
    }

    v233 = 0;
  }

  return v233 & 1;
}

uint64_t CMMsl::StepCountEntry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 152);
  if ((v4 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(this + 88));
    v4 = *(v3 + 152);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 152);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 152);
  if ((v4 & 0x100) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = *(v3 + 96);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 152);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 152);
  if ((v4 & 0x4000) == 0)
  {
LABEL_8:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(v3 + 120);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x8000) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(v3 + 124);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 4) == 0)
  {
LABEL_10:
    if ((v4 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 152);
  if ((v4 & 2) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 152);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 16));
  if ((*(v3 + 152) & 0x80000) != 0)
  {
LABEL_13:
    v5 = *(v3 + 140);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_14:
  if (*(v3 + 72))
  {
    this = PB::Writer::write();
  }

  v6 = *(v3 + 152);
  if ((v6 & 0x200000) != 0)
  {
    v7 = *(v3 + 148);
    this = PB::Writer::write(a2);
    v6 = *(v3 + 152);
  }

  if ((v6 & 0x400000) != 0)
  {
    v8 = *(v3 + 149);
    this = PB::Writer::write(a2);
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 152);
  if ((v10 & 0x40000) != 0)
  {
    v16 = *(v3 + 136);
    this = PB::Writer::writeVarInt(a2);
    v10 = *(v3 + 152);
    if ((v10 & 0x100000) == 0)
    {
LABEL_24:
      if ((v10 & 0x20000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_49;
    }
  }

  else if ((v10 & 0x100000) == 0)
  {
    goto LABEL_24;
  }

  v17 = *(v3 + 144);
  this = PB::Writer::writeVarInt(a2);
  v10 = *(v3 + 152);
  if ((v10 & 0x20000) == 0)
  {
LABEL_25:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  v18 = *(v3 + 132);
  this = PB::Writer::writeVarInt(a2);
  v10 = *(v3 + 152);
  if ((v10 & 0x400) == 0)
  {
LABEL_26:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  v19 = *(v3 + 104);
  this = PB::Writer::writeVarInt(a2);
  v10 = *(v3 + 152);
  if ((v10 & 0x800) == 0)
  {
LABEL_27:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = *(v3 + 108);
  this = PB::Writer::writeVarInt(a2);
  v10 = *(v3 + 152);
  if ((v10 & 0x2000) == 0)
  {
LABEL_28:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  v21 = *(v3 + 116);
  this = PB::Writer::writeVarInt(a2);
  v10 = *(v3 + 152);
  if ((v10 & 0x200) == 0)
  {
LABEL_29:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_53:
  v22 = *(v3 + 100);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 152) & 0x1000) != 0)
  {
LABEL_30:
    v11 = *(v3 + 112);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_31:
  v12 = *(v3 + 56);
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  if (*(v3 + 154))
  {
    v23 = *(v3 + 128);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

unint64_t CMMsl::StepCountEntry::hash_value(CMMsl::StepCountEntry *this)
{
  v2 = *(this + 38);
  if ((v2 & 0x80) == 0)
  {
    v37 = 0.0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_34:
    v36 = 0.0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_35:
    v35 = 0.0;
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

  v12 = *(this + 11);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  v37 = v12;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_3:
  v3 = *(this + 10);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v36 = v3;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_6:
  v4 = *(this + 6);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  v35 = v4;
  if ((v2 & 0x100) != 0)
  {
LABEL_9:
    v34 = *(this + 24);
    if ((v2 & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_37:
    v33 = 0.0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_13;
    }

LABEL_38:
    v32 = 0.0;
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_36:
  v34 = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_37;
  }

LABEL_10:
  v5 = *(this + 5);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v33 = v5;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_38;
  }

LABEL_13:
  v6 = *(this + 8);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  v32 = v6;
  if ((v2 & 0x4000) != 0)
  {
LABEL_16:
    v31 = *(this + 30);
    if ((v2 & 0x8000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  v31 = 0;
  if ((v2 & 0x8000) != 0)
  {
LABEL_17:
    v7 = *(this + 31);
    if ((v2 & 4) != 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    v8 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_22;
    }

LABEL_42:
    v9 = 0;
    if (v2)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

LABEL_40:
  v7 = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_41;
  }

LABEL_18:
  if (*(this + 4) == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_42;
  }

LABEL_22:
  if (*(this + 3) == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 3);
  }

  if (v2)
  {
LABEL_26:
    if (*(this + 2) == 0.0)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(this + 2);
    }

    if ((v2 & 0x80000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_43:
  v10 = 0;
  if ((v2 & 0x80000) != 0)
  {
LABEL_30:
    v11 = *(this + 35);
    goto LABEL_45;
  }

LABEL_44:
  v11 = 0;
LABEL_45:
  v13 = *(this + 9);
  if (v13)
  {
    v14 = sub_25AD28AE4(v13);
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_47;
    }

LABEL_50:
    v15 = *(this + 148);
    if ((v2 & 0x400000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_51;
  }

  v14 = 0;
  if ((v2 & 0x200000) != 0)
  {
    goto LABEL_50;
  }

LABEL_47:
  v15 = 0;
  if ((v2 & 0x400000) != 0)
  {
LABEL_48:
    v16 = *(this + 149);
    goto LABEL_52;
  }

LABEL_51:
  v16 = 0;
LABEL_52:
  v17 = *(this + 1);
  if (v17)
  {
    v17 = CMMsl::AccelerometerPace::hash_value(v17);
  }

  if ((v2 & 0x40000) != 0)
  {
    v18 = *(this + 34);
    if ((v2 & 0x100000) != 0)
    {
LABEL_56:
      v19 = *(this + 36);
      if ((v2 & 0x20000) != 0)
      {
        goto LABEL_57;
      }

      goto LABEL_65;
    }
  }

  else
  {
    v18 = 0;
    if ((v2 & 0x100000) != 0)
    {
      goto LABEL_56;
    }
  }

  v19 = 0;
  if ((v2 & 0x20000) != 0)
  {
LABEL_57:
    v20 = *(this + 33);
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_66;
  }

LABEL_65:
  v20 = 0;
  if ((v2 & 0x400) != 0)
  {
LABEL_58:
    v21 = *(this + 26);
    if ((v2 & 0x800) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_67;
  }

LABEL_66:
  v21 = 0;
  if ((v2 & 0x800) != 0)
  {
LABEL_59:
    v22 = *(this + 27);
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_68;
  }

LABEL_67:
  v22 = 0;
  if ((v2 & 0x2000) != 0)
  {
LABEL_60:
    v23 = *(this + 29);
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_61;
    }

LABEL_69:
    v24 = 0;
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_62;
    }

LABEL_70:
    v25 = 0;
    goto LABEL_71;
  }

LABEL_68:
  v23 = 0;
  if ((v2 & 0x200) == 0)
  {
    goto LABEL_69;
  }

LABEL_61:
  v24 = *(this + 25);
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_70;
  }

LABEL_62:
  v25 = *(this + 28);
LABEL_71:
  v26 = *(this + 7);
  if (v26)
  {
    v27 = *(v26 + 8);
    v28 = v27 == 0.0 || (*(v26 + 12) & 1) == 0;
    v26 = LODWORD(v27);
    if (v28)
    {
      v26 = 0;
    }
  }

  if ((v2 & 0x10000) != 0)
  {
    v29 = *(this + 32);
  }

  else
  {
    v29 = 0;
  }

  return *&v36 ^ *&v37 ^ *&v35 ^ v34 ^ *&v33 ^ *&v32 ^ v31 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v29;
}