CMMsl *CMMsl::MotionLocation::operator=(CMMsl *a1, const CMMsl::MotionLocation *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLocation::MotionLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionLocation *a2, CMMsl::MotionLocation *a3)
{
  v3 = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v3;
  v4 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v7;
  v8 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v13;
  v14 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v14;
  v15 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v15;
  LODWORD(v15) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v15;
  v16 = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v16;
  LODWORD(v15) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v15;
  LODWORD(v15) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v15;
  LODWORD(v15) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v15;
  v17 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v17;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v19;
  v20 = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v20;
  v21 = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v21;
  v22 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v22;
  v23 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v23;
  v24 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v24;
  v25 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v25;
  v26 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v26;
  LOBYTE(v22) = *(this + 216);
  *(this + 216) = *(a2 + 216);
  *(a2 + 216) = v22;
  v27 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v27;
  v28 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v28;
  result = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = result;
  v30 = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v30;
  return result;
}

double CMMsl::MotionLocation::MotionLocation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21DF8;
  *(a1 + 220) = *(a2 + 220);
  *(a2 + 220) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  result = *(a2 + 112);
  *(a1 + 112) = result;
  *(a1 + 196) = *(a2 + 196);
  return result;
}

CMMsl *CMMsl::MotionLocation::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLocation::MotionLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::MotionLocation::formatText(CMMsl::MotionLocation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 55);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitude", *(this + 1));
    v5 = *(this + 55);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "course", *(this + 2));
  v5 = *(this + 55);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "courseAccuracy", *(this + 3));
  v5 = *(this + 55);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "deltaDistance", *(this + 4));
  v5 = *(this + 55);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "deltaDistanceAccuracy", *(this + 5));
  v5 = *(this + 55);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "groundAltitude", *(this + 6));
  v5 = *(this + 55);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "groundAltitudeUncertainty", *(this + 7));
  v5 = *(this + 55);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "horizontalAccuracy", *(this + 8));
  v5 = *(this + 55);
  if ((v5 & 0x200000) == 0)
  {
LABEL_10:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "horzUncSemiMaj", *(this + 44));
  v5 = *(this + 55);
  if ((v5 & 0x400000) == 0)
  {
LABEL_11:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "horzUncSemiMajAz", *(this + 45));
  v5 = *(this + 55);
  if ((v5 & 0x800000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "horzUncSemiMin", *(this + 46));
  v5 = *(this + 55);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  v6 = *(this + 216);
  PB::TextFormatter::format(a2, "isPrefilteredLocation");
  v5 = *(this + 55);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "latitude", *(this + 9));
  v5 = *(this + 55);
  if ((v5 & 0x200) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "longitude", *(this + 10));
  v5 = *(this + 55);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  v7 = *(this + 47);
  PB::TextFormatter::format(a2, "matchQuality");
  v5 = *(this + 55);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "maxAbsSlope", *(this + 11));
  v5 = *(this + 55);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "odometer", *(this + 12));
  v5 = *(this + 55);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  v8 = *(this + 48);
  PB::TextFormatter::format(a2, "originDevice");
  v5 = *(this + 55);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "rawAltitude", *(this + 13));
  v5 = *(this + 55);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "rawUndulation", *(this + 14));
  v5 = *(this + 55);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  v9 = *(this + 49);
  PB::TextFormatter::format(a2, "rawUndulationModel");
  v5 = *(this + 55);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "rawVerticalAccuracy", *(this + 15));
  v5 = *(this + 55);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  v10 = *(this + 50);
  PB::TextFormatter::format(a2, "signalEnvironment");
  v5 = *(this + 55);
  if ((v5 & 0x8000) == 0)
  {
LABEL_25:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "slope", *(this + 16));
  v5 = *(this + 55);
  if ((v5 & 0x10000) == 0)
  {
LABEL_26:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "speed", *(this + 17));
  v5 = *(this + 55);
  if ((v5 & 0x20000) == 0)
  {
LABEL_27:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "speedAccuracy", *(this + 18));
  v5 = *(this + 55);
  if ((v5 & 0x40000) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "timestamp", *(this + 19));
  v5 = *(this + 55);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "timestampGps", *(this + 20));
  v5 = *(this + 55);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  v11 = *(this + 51);
  PB::TextFormatter::format(a2, "type");
  v5 = *(this + 55);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "undulation", *(this + 52));
  v5 = *(this + 55);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  v12 = *(this + 53);
  PB::TextFormatter::format(a2, "undulationModel");
  if ((*(this + 55) & 0x100000) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(a2, "verticalAccuracy", *(this + 21));
  }

LABEL_34:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionLocation::readFrom(CMMsl::MotionLocation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_228:
    v114 = v4 ^ 1;
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
        goto LABEL_228;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 55) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_192;
        case 2u:
          *(this + 55) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_192;
        case 3u:
          *(this + 55) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_192;
        case 4u:
          *(this + 55) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_192;
        case 5u:
          *(this + 55) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_192;
        case 6u:
          *(this + 55) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_192;
        case 7u:
          *(this + 55) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_192;
        case 8u:
          *(this + 55) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_192;
        case 9u:
          *(this + 55) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_192;
        case 0xAu:
          *(this + 55) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_192;
        case 0xBu:
          *(this + 55) |= 0x10000000u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v100 = 0;
            v101 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(a2 + 1);
            }

            v102 = (v57 + v56);
            v103 = v2 - v56;
            v104 = v56 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v60) = 0;
                *(a2 + 24) = 1;
                goto LABEL_222;
              }

              v105 = v104;
              v106 = *v102;
              *(a2 + 1) = v105;
              v60 |= (v106 & 0x7F) << v100;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              ++v102;
              --v103;
              v104 = v105 + 1;
              v14 = v101++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_221:
                v2 = v105;
                goto LABEL_222;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_221;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(a2 + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_222;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_222:
          *(this + 51) = v60;
          break;
        case 0xCu:
          *(this + 55) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_192;
        case 0xDu:
          *(this + 55) |= 0x20000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 52) = *(*a2 + v2);
          goto LABEL_56;
        case 0xEu:
          *(this + 55) |= 0x40000000u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v93 = 0;
            v94 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(a2 + 1);
            }

            v95 = (v49 + v48);
            v96 = v2 - v48;
            v97 = v48 + 1;
            while (1)
            {
              if (!v96)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_218;
              }

              v98 = v97;
              v99 = *v95;
              *(a2 + 1) = v98;
              v52 |= (v99 & 0x7F) << v93;
              if ((v99 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              ++v95;
              --v96;
              v97 = v98 + 1;
              v14 = v94++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_217:
                v2 = v98;
                goto LABEL_218;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_217;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(a2 + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_218;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_218:
          *(this + 53) = v52;
          break;
        case 0xFu:
          *(this + 55) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 44) = *(*a2 + v2);
          goto LABEL_56;
        case 0x10u:
          *(this + 55) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 46) = *(*a2 + v2);
          goto LABEL_56;
        case 0x11u:
          *(this + 55) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 45) = *(*a2 + v2);
LABEL_56:
          v2 = *(a2 + 1) + 4;
          goto LABEL_193;
        case 0x12u:
          *(this + 55) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_192;
        case 0x13u:
          *(this + 55) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_192;
        case 0x14u:
          *(this + 55) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_192;
        case 0x15u:
          *(this + 55) |= 0x2000000u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v81 = (v33 + v32);
            v82 = v2 - v32;
            v83 = v32 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_210;
              }

              v84 = v83;
              v85 = *v81;
              *(a2 + 1) = v84;
              v36 |= (v85 & 0x7F) << v79;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              ++v81;
              --v82;
              v83 = v84 + 1;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_209:
                v2 = v84;
                goto LABEL_210;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_209;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_210;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_210:
          *(this + 48) = v36;
          break;
        case 0x16u:
          *(this + 55) |= 0x8000000u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v86 = 0;
            v87 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(a2 + 1);
            }

            v88 = (v41 + v40);
            v89 = v2 - v40;
            v90 = v40 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v44) = 0;
                *(a2 + 24) = 1;
                goto LABEL_214;
              }

              v91 = v90;
              v92 = *v88;
              *(a2 + 1) = v91;
              v44 |= (v92 & 0x7F) << v86;
              if ((v92 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              ++v88;
              --v89;
              v90 = v91 + 1;
              v14 = v87++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_213:
                v2 = v91;
                goto LABEL_214;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_213;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(a2 + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_214;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_214:
          *(this + 50) = v44;
          break;
        case 0x17u:
          *(this + 55) |= 0x1000000u;
          v64 = *(a2 + 1);
          v2 = *(a2 + 2);
          v65 = *a2;
          if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v2)
          {
            v107 = 0;
            v108 = 0;
            v68 = 0;
            if (v2 <= v64)
            {
              v2 = *(a2 + 1);
            }

            v109 = (v65 + v64);
            v110 = v2 - v64;
            v111 = v64 + 1;
            while (1)
            {
              if (!v110)
              {
                LODWORD(v68) = 0;
                *(a2 + 24) = 1;
                goto LABEL_226;
              }

              v112 = v111;
              v113 = *v109;
              *(a2 + 1) = v112;
              v68 |= (v113 & 0x7F) << v107;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v107 += 7;
              ++v109;
              --v110;
              v111 = v112 + 1;
              v14 = v108++ > 8;
              if (v14)
              {
                LODWORD(v68) = 0;
LABEL_225:
                v2 = v112;
                goto LABEL_226;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v68) = 0;
            }

            goto LABEL_225;
          }

          v66 = 0;
          v67 = 0;
          v68 = 0;
          v69 = (v65 + v64);
          v70 = v64 + 1;
          do
          {
            v2 = v70;
            *(a2 + 1) = v70;
            v71 = *v69++;
            v68 |= (v71 & 0x7F) << v66;
            if ((v71 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v66 += 7;
            ++v70;
            v14 = v67++ > 8;
          }

          while (!v14);
          LODWORD(v68) = 0;
LABEL_226:
          *(this + 47) = v68;
          break;
        case 0x18u:
          *(this + 55) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_192;
        case 0x19u:
          *(this + 55) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Au:
          *(this + 55) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Bu:
          *(this + 55) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Cu:
          *(this + 55) |= 0x80000000;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v23 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v22 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v23 = v22 != 0;
          }

          *(this + 216) = v23;
          break;
        case 0x1Du:
          *(this + 55) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Eu:
          *(this + 55) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Fu:
          *(this + 55) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_140:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 14) = *(*a2 + v2);
LABEL_192:
            v2 = *(a2 + 1) + 8;
LABEL_193:
            *(a2 + 1) = v2;
          }

          break;
        case 0x20u:
          *(this + 55) |= 0x4000000u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v74 = (v25 + v24);
            v75 = v2 - v24;
            v76 = v24 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_206;
              }

              v77 = v76;
              v78 = *v74;
              *(a2 + 1) = v77;
              v28 |= (v78 & 0x7F) << v72;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              ++v74;
              --v75;
              v76 = v77 + 1;
              v14 = v73++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_205:
                v2 = v77;
                goto LABEL_206;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_205;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_206;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_206:
          *(this + 49) = v28;
          break;
        default:
          goto LABEL_17;
      }

LABEL_194:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_228;
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
        goto LABEL_228;
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
      goto LABEL_194;
    }

    v114 = 0;
  }

  return v114 & 1;
}

uint64_t CMMsl::MotionLocation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 220);
  if ((v4 & 0x40000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 152));
    v4 = *(v3 + 220);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 220);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 220);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 220);
  if ((v4 & 0x20000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 220);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 220);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 220);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 220);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 220);
  if ((v4 & 0x100000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 220);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v5 = *(v3 + 204);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 220);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 208));
  v4 = *(v3 + 220);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v6 = *(v3 + 212);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x200000) == 0)
  {
LABEL_16:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 176));
  v4 = *(v3 + 220);
  if ((v4 & 0x800000) == 0)
  {
LABEL_17:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 220);
  if ((v4 & 0x400000) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 180));
  v4 = *(v3 + 220);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 220);
  if ((v4 & 8) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 220);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 220);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v7 = *(v3 + 192);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v8 = *(v3 + 200);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v9 = *(v3 + 188);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x20) == 0)
  {
LABEL_25:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 220);
  if ((v4 & 0x40) == 0)
  {
LABEL_26:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 220);
  if ((v4 & 0x8000) == 0)
  {
LABEL_27:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 220);
  if ((v4 & 0x400) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 220);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v10 = *(v3 + 216);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x1000) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 220);
  if ((v4 & 0x4000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    this = PB::Writer::write(a2, *(v3 + 112));
    if ((*(v3 + 220) & 0x4000000) == 0)
    {
      return this;
    }

    goto LABEL_65;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 220);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x4000000) == 0)
  {
    return this;
  }

LABEL_65:
  v11 = *(v3 + 196);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::MotionLocation::hash_value(CMMsl::MotionLocation *this)
{
  v1 = *(this + 55);
  if ((v1 & 0x40000) != 0)
  {
    if (*(this + 19) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 19);
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    v43 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_8;
    }

LABEL_103:
    v42 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_11;
    }

LABEL_104:
    v41 = 0.0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_14;
    }

LABEL_105:
    v40 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_106:
    v39 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_107:
    v7 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_24;
    }

LABEL_108:
    v8 = 0;
    if (v1)
    {
      goto LABEL_28;
    }

LABEL_109:
    v9 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_32;
    }

LABEL_110:
    v10 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_111;
  }

  v37 = *(this + 9);
  if (v37 == 0.0)
  {
    v37 = 0.0;
  }

  v43 = v37;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_103;
  }

LABEL_8:
  v3 = *(this + 10);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v42 = v3;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_104;
  }

LABEL_11:
  v4 = *(this + 17);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  v41 = v4;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_105;
  }

LABEL_14:
  v5 = *(this + 18);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v40 = v5;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_106;
  }

LABEL_17:
  v6 = *(this + 8);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  v39 = v6;
  if ((v1 & 2) == 0)
  {
    goto LABEL_107;
  }

LABEL_20:
  if (*(this + 2) == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(this + 2);
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_108;
  }

LABEL_24:
  if (*(this + 3) == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(this + 3);
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_109;
  }

LABEL_28:
  if (*(this + 1) == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 1);
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_110;
  }

LABEL_32:
  if (*(this + 21) == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 21);
  }

  if ((v1 & 0x10000000) != 0)
  {
LABEL_36:
    v11 = *(this + 51);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_37;
    }

LABEL_112:
    v12 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_113:
    v14 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_114;
  }

LABEL_111:
  v11 = 0;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_112;
  }

LABEL_37:
  if (*(this + 20) == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 20);
  }

  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_113;
  }

LABEL_41:
  v13 = *(this + 52);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = LODWORD(v13);
  }

  if ((v1 & 0x40000000) != 0)
  {
LABEL_45:
    v15 = *(this + 53);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_46;
    }

LABEL_115:
    v17 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_50;
    }

LABEL_116:
    v19 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_54;
    }

LABEL_117:
    v21 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_58;
    }

LABEL_118:
    v22 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_62;
    }

LABEL_119:
    v23 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_66;
    }

LABEL_120:
    v24 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_121;
  }

LABEL_114:
  v15 = 0;
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_115;
  }

LABEL_46:
  v16 = *(this + 44);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = LODWORD(v16);
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_116;
  }

LABEL_50:
  v18 = *(this + 46);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = LODWORD(v18);
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_117;
  }

LABEL_54:
  v20 = *(this + 45);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = LODWORD(v20);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_118;
  }

LABEL_58:
  if (*(this + 12) == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(this + 12);
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_119;
  }

LABEL_62:
  if (*(this + 4) == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 4);
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_120;
  }

LABEL_66:
  if (*(this + 5) == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(this + 5);
  }

  if ((v1 & 0x2000000) != 0)
  {
LABEL_70:
    v25 = *(this + 48);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_122;
  }

LABEL_121:
  v25 = 0;
  if ((v1 & 0x8000000) != 0)
  {
LABEL_71:
    v26 = *(this + 50);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_123;
  }

LABEL_122:
  v26 = 0;
  if ((v1 & 0x1000000) != 0)
  {
LABEL_72:
    v27 = *(this + 47);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_73;
    }

LABEL_124:
    v28 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_77;
    }

LABEL_125:
    v29 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_81;
    }

LABEL_126:
    v30 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_85;
    }

LABEL_127:
    v31 = 0;
    if (v1 < 0)
    {
      goto LABEL_89;
    }

    goto LABEL_128;
  }

LABEL_123:
  v27 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_124;
  }

LABEL_73:
  if (*(this + 6) == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(this + 6);
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_125;
  }

LABEL_77:
  if (*(this + 7) == 0.0)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(this + 7);
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_126;
  }

LABEL_81:
  if (*(this + 16) == 0.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(this + 16);
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_127;
  }

LABEL_85:
  if (*(this + 11) == 0.0)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(this + 11);
  }

  if (v1 < 0)
  {
LABEL_89:
    v32 = *(this + 216);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_90;
    }

LABEL_129:
    v33 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_93;
    }

LABEL_130:
    v34 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_131;
  }

LABEL_128:
  v32 = 0;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_129;
  }

LABEL_90:
  v33 = *(this + 13);
  if (v33 == 0.0)
  {
    v33 = 0.0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_130;
  }

LABEL_93:
  v34 = *(this + 15);
  if (v34 == 0.0)
  {
    v34 = 0.0;
  }

  if ((v1 & 0x2000) != 0)
  {
LABEL_96:
    v35 = *(this + 14);
    if (v35 == 0.0)
    {
      v35 = 0.0;
    }

    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_99;
    }

LABEL_132:
    v36 = 0;
    return *&v43 ^ v2 ^ *&v42 ^ *&v41 ^ *&v40 ^ *&v39 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v17 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ *&v33 ^ *&v34 ^ *&v35 ^ v36;
  }

LABEL_131:
  v35 = 0.0;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_132;
  }

LABEL_99:
  v36 = *(this + 49);
  return *&v43 ^ v2 ^ *&v42 ^ *&v41 ^ *&v40 ^ *&v39 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v17 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ *&v33 ^ *&v34 ^ *&v35 ^ v36;
}

void CMMsl::MotionLoiAltitudeData::~MotionLoiAltitudeData(CMMsl::MotionLoiAltitudeData *this)
{
  *this = &unk_286C21E30;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::MotionLoiAltitudeData::~MotionLoiAltitudeData(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::MotionLoiAltitudeData *CMMsl::MotionLoiAltitudeData::MotionLoiAltitudeData(char **this, char **a2)
{
  *this = &unk_286C21E30;
  *(this + 1) = 0u;
  v3 = this + 1;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  if (this != a2)
  {
    sub_25AD285D4(v3, a2[1], a2[2], (a2[2] - a2[1]) >> 3);
    sub_25AD285D4(this + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 3);
  }

  return this;
}

uint64_t CMMsl::MotionLoiAltitudeData::operator=(uint64_t a1, char **a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLoiAltitudeData::MotionLoiAltitudeData(&v8, a2);
    v3 = v10;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v9 = v4;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    CMMsl::MotionLoiAltitudeData::~MotionLoiAltitudeData(&v8);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::MotionLoiAltitudeData *a2, CMMsl::MotionLoiAltitudeData *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v8;
  return this;
}

uint64_t CMMsl::MotionLoiAltitudeData::MotionLoiAltitudeData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21E30;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  return a1;
}

{
  *a1 = &unk_286C21E30;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  return a1;
}

uint64_t CMMsl::MotionLoiAltitudeData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_286C21E30;
    v3 = *(a2 + 24);
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *(a2 + 48);
    v6 = *(a2 + 32);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = *(a1 + 24);
    *(a1 + 24) = v3;
    v12 = v7;
    v13 = v8;
    v9 = *(a1 + 40);
    *(a1 + 32) = v6;
    *(a1 + 48) = v5;
    v14 = v9;
    CMMsl::MotionLoiAltitudeData::~MotionLoiAltitudeData(&v11);
  }

  return a1;
}

uint64_t CMMsl::MotionLoiAltitudeData::formatText(CMMsl::MotionLoiAltitudeData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "loiAltitude", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "loiVerticalUncertainty", v10);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionLoiAltitudeData::readFrom(CMMsl::MotionLoiAltitudeData *this, PB::Reader *a2)
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
          goto LABEL_18;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_41;
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
        goto LABEL_41;
      }
    }

LABEL_18:
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    if ((v10 >> 3) == 2)
    {
      if (v22 != 2)
      {
        v59 = *(this + 5);
        v58 = *(this + 6);
        if (v59 >= v58)
        {
          v66 = *(this + 4);
          v67 = v59 - v66;
          v68 = (v59 - v66) >> 3;
          v69 = v68 + 1;
          if ((v68 + 1) >> 61)
          {
LABEL_102:
            sub_25AAE66B8();
          }

          v70 = v58 - v66;
          if (v70 >> 2 > v69)
          {
            v69 = v70 >> 2;
          }

          if (v70 >= 0x7FFFFFFFFFFFFFF8)
          {
            v71 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = v69;
          }

          if (v71)
          {
            sub_25AD28710(v71);
          }

          v76 = (v59 - v66) >> 3;
          v77 = (8 * v68);
          v78 = (8 * v68 - 8 * v76);
          *v77 = 0;
          v57 = v77 + 1;
          memcpy(v78, v66, v67);
          v79 = *(this + 4);
          *(this + 4) = v78;
          *(this + 5) = v57;
          *(this + 6) = 0;
          if (v79)
          {
            operator delete(v79);
          }
        }

        else
        {
          *v59 = 0;
          v57 = v59 + 8;
        }

        *(this + 5) = v57;
        goto LABEL_93;
      }

      if (PB::Reader::placeMark())
      {
LABEL_100:
        v81 = 0;
        return v81 & 1;
      }

      v39 = *(a2 + 1);
      v40 = *(a2 + 2);
      while (v39 < v40 && (*(a2 + 24) & 1) == 0)
      {
        v42 = *(this + 5);
        v41 = *(this + 6);
        if (v42 >= v41)
        {
          v44 = *(this + 4);
          v45 = v42 - v44;
          v46 = (v42 - v44) >> 3;
          v47 = v46 + 1;
          if ((v46 + 1) >> 61)
          {
            goto LABEL_102;
          }

          v48 = v41 - v44;
          if (v48 >> 2 > v47)
          {
            v47 = v48 >> 2;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFF8)
          {
            v49 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            sub_25AD28710(v49);
          }

          v50 = (v42 - v44) >> 3;
          v51 = (8 * v46);
          v52 = (8 * v46 - 8 * v50);
          *v51 = 0;
          v43 = v51 + 1;
          memcpy(v52, v44, v45);
          v53 = *(this + 4);
          *(this + 4) = v52;
          *(this + 5) = v43;
          *(this + 6) = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *v42 = 0;
          v43 = v42 + 8;
        }

        *(this + 5) = v43;
        v54 = *(a2 + 1);
        if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(a2 + 2))
        {
LABEL_69:
          *(a2 + 24) = 1;
          break;
        }

        *(v43 - 1) = *(*a2 + v54);
        v40 = *(a2 + 2);
        v39 = *(a2 + 1) + 8;
        *(a2 + 1) = v39;
      }
    }

    else
    {
      if ((v10 >> 3) != 1)
      {
LABEL_41:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_42;
      }

      if (v22 != 2)
      {
        v56 = *(this + 2);
        v55 = *(this + 3);
        if (v56 >= v55)
        {
          v60 = *(this + 1);
          v61 = v56 - v60;
          v62 = (v56 - v60) >> 3;
          v63 = v62 + 1;
          if ((v62 + 1) >> 61)
          {
            goto LABEL_102;
          }

          v64 = v55 - v60;
          if (v64 >> 2 > v63)
          {
            v63 = v64 >> 2;
          }

          if (v64 >= 0x7FFFFFFFFFFFFFF8)
          {
            v65 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            sub_25AD28710(v65);
          }

          v72 = (v56 - v60) >> 3;
          v73 = (8 * v62);
          v74 = (8 * v62 - 8 * v72);
          *v73 = 0;
          v57 = v73 + 1;
          memcpy(v74, v60, v61);
          v75 = *(this + 1);
          *(this + 1) = v74;
          *(this + 2) = v57;
          *(this + 3) = 0;
          if (v75)
          {
            operator delete(v75);
          }
        }

        else
        {
          *v56 = 0;
          v57 = v56 + 8;
        }

        *(this + 2) = v57;
LABEL_93:
        v80 = *(a2 + 1);
        if (v80 <= 0xFFFFFFFFFFFFFFF7 && v80 + 8 <= *(a2 + 2))
        {
          *(v57 - 1) = *(*a2 + v80);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_42;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_100;
      }

      v23 = *(a2 + 1);
      v24 = *(a2 + 2);
      while (v23 < v24 && (*(a2 + 24) & 1) == 0)
      {
        v26 = *(this + 2);
        v25 = *(this + 3);
        if (v26 >= v25)
        {
          v28 = *(this + 1);
          v29 = v26 - v28;
          v30 = (v26 - v28) >> 3;
          v31 = v30 + 1;
          if ((v30 + 1) >> 61)
          {
            goto LABEL_102;
          }

          v32 = v25 - v28;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_25AD28710(v33);
          }

          v34 = (v26 - v28) >> 3;
          v35 = (8 * v30);
          v36 = (8 * v30 - 8 * v34);
          *v35 = 0;
          v27 = v35 + 1;
          memcpy(v36, v28, v29);
          v37 = *(this + 1);
          *(this + 1) = v36;
          *(this + 2) = v27;
          *(this + 3) = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v26 = 0;
          v27 = v26 + 8;
        }

        *(this + 2) = v27;
        v38 = *(a2 + 1);
        if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(a2 + 2))
        {
          goto LABEL_69;
        }

        *(v27 - 1) = *(*a2 + v38);
        v24 = *(a2 + 2);
        v23 = *(a2 + 1) + 8;
        *(a2 + 1) = v23;
      }
    }

    PB::Reader::recallMark();
LABEL_42:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v81 = v4 ^ 1;
  return v81 & 1;
}

uint64_t CMMsl::MotionLoiAltitudeData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v8 = *(v3 + 32);
  v7 = *(v3 + 40);
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::write(a2, v9);
  }

  return this;
}

uint64_t CMMsl::MotionLoiAltitudeData::hash_value(CMMsl::MotionLoiAltitudeData *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = PBHashBytes();
  v5 = *(this + 4);
  v6 = *(this + 5);
  return PBHashBytes() ^ v4;
}

void CMMsl::MotionLoiData::~MotionLoiData(CMMsl::MotionLoiData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MotionLoiData::MotionLoiData(uint64_t this, const CMMsl::MotionLoiData *a2)
{
  *this = &unk_286C21E68;
  *(this + 84) = -1;
  *(this + 92) = 0;
  v2 = *(a2 + 46);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 64;
    *(this + 92) = 64;
    *(this + 56) = v4;
    v2 = *(a2 + 46);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    v5 = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 92) = v3;
    *(this + 48) = v5;
    v2 = *(a2 + 46);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 4u;
    *(this + 92) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 46);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 92) = v3;
  *(this + 8) = v7;
  v2 = *(a2 + 46);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 92) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 46);
  if ((v2 & 0x200) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 20);
  v3 |= 0x200u;
  *(this + 92) = v3;
  *(this + 80) = v9;
  v2 = *(a2 + 46);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 92) = v3;
  *(this + 72) = v10;
  v2 = *(a2 + 46);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 92) = v3;
  *(this + 64) = v11;
  v2 = *(a2 + 46);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 2);
  v3 |= 2u;
  *(this + 92) = v3;
  *(this + 16) = v12;
  v2 = *(a2 + 46);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 21);
  v3 |= 0x400u;
  *(this + 92) = v3;
  *(this + 84) = v13;
  v2 = *(a2 + 46);
  if ((v2 & 8) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      return this;
    }

LABEL_26:
    v15 = *(a2 + 88);
    *(this + 92) = v3 | 0x800;
    *(this + 88) = v15;
    return this;
  }

LABEL_25:
  v14 = *(a2 + 4);
  v3 |= 8u;
  *(this + 92) = v3;
  *(this + 32) = v14;
  if ((*(a2 + 46) & 0x800) != 0)
  {
    goto LABEL_26;
  }

  return this;
}

CMMsl *CMMsl::MotionLoiData::operator=(CMMsl *a1, const CMMsl::MotionLoiData *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLoiData::MotionLoiData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionLoiData *a2, CMMsl::MotionLoiData *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v11;
  v12 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  LOBYTE(v3) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v3;
  return result;
}

double CMMsl::MotionLoiData::MotionLoiData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21E68;
  *(a1 + 84) = -1;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 88) = *(a2 + 88);
  return result;
}

CMMsl *CMMsl::MotionLoiData::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLoiData::MotionLoiData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::MotionLoiData::formatText(CMMsl::MotionLoiData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 46);
  if (v5)
  {
    PB::TextFormatter::format(a2, "arrivalDate", *(this + 1));
    v5 = *(this + 46);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(this + 46) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 20);
  PB::TextFormatter::format(a2, "confidence");
  v5 = *(this + 46);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "confidenceOfGeoLocation", *(this + 2));
  v5 = *(this + 46);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "departureDate", *(this + 3));
  v5 = *(this + 46);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "distanceToLoi", *(this + 4));
  v5 = *(this + 46);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = *(this + 88);
  PB::TextFormatter::format(a2, "hashedLatLong");
  v5 = *(this + 46);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "horizontalAccuracy", *(this + 5));
  v5 = *(this + 46);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "latitude", *(this + 6));
  v5 = *(this + 46);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "longitude", *(this + 7));
  v5 = *(this + 46);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(this + 21);
  PB::TextFormatter::format(a2, "type");
  v5 = *(this + 46);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "uncertaintyOfGeoLocation", *(this + 8));
  if ((*(this + 46) & 0x100) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "withinDistance", *(this + 9));
  }

LABEL_14:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionLoiData::readFrom(CMMsl::MotionLoiData *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 6)
    {
      if (v22 > 9)
      {
        switch(v22)
        {
          case 0xA:
            *(this + 46) |= 0x400u;
            v33 = *(a2 + 1);
            v2 = *(a2 + 2);
            v34 = *a2;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v48 = 0;
              v49 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(a2 + 1);
              }

              v50 = (v34 + v33);
              v51 = v2 - v33;
              v52 = v33 + 1;
              while (1)
              {
                if (!v51)
                {
                  LODWORD(v37) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_107;
                }

                v53 = v52;
                v54 = *v50;
                *(a2 + 1) = v53;
                v37 |= (v54 & 0x7F) << v48;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                ++v50;
                --v51;
                v52 = v53 + 1;
                v14 = v49++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  goto LABEL_106;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v37) = 0;
              }

LABEL_106:
              v2 = v53;
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                v2 = v39;
                *(a2 + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v14 = v36++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  break;
                }
              }
            }

LABEL_107:
            *(this + 21) = v37;
            goto LABEL_108;
          case 0xB:
            *(this + 46) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_77:
              *(a2 + 24) = 1;
              goto LABEL_108;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_97;
          case 0xC:
            *(this + 46) |= 0x800u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v32 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v31 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v32 = v31 != 0;
            }

            *(this + 88) = v32;
            goto LABEL_108;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 46) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_77;
            }

            *(this + 9) = *(*a2 + v2);
            goto LABEL_97;
          case 8:
            *(this + 46) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_77;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_97;
          case 9:
            *(this + 46) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_77;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_97;
        }
      }
    }

    else if (v22 > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 46) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_97;
        case 5:
          *(this + 46) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_97;
        case 6:
          *(this + 46) |= 0x200u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v41 = 0;
            v42 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v43 = (v24 + v23);
            v44 = v2 - v23;
            v45 = v23 + 1;
            while (1)
            {
              if (!v44)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_103;
              }

              v46 = v45;
              v47 = *v43;
              *(a2 + 1) = v46;
              v27 |= (v47 & 0x7F) << v41;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              ++v43;
              --v44;
              v45 = v46 + 1;
              v14 = v42++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_102;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_102:
            v2 = v46;
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

LABEL_103:
          *(this + 20) = v27;
          goto LABEL_108;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 46) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_97;
        case 2:
          *(this + 46) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_97;
        case 3:
          *(this + 46) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_97:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_108;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v55 = 0;
      return v55 & 1;
    }

    v2 = *(a2 + 1);
LABEL_108:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t CMMsl::MotionLoiData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 92);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(this + 56));
    v4 = *(v3 + 92);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = *(v3 + 80);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 32));
    if ((*(v3 + 92) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  v6 = *(v3 + 84);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 92);
  if ((v4 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v7 = *(v3 + 88);

  return PB::Writer::write(a2);
}

uint64_t CMMsl::MotionLoiData::hash_value(CMMsl::MotionLoiData *this)
{
  v1 = *(this + 46);
  if ((v1 & 0x40) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
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
    if (v1)
    {
      goto LABEL_9;
    }

LABEL_35:
    v5 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_36:
    v6 = 0.0;
    if ((*(this + 46) & 0x200) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v2 = *(this + 7);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = *(this + 6);
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

  if ((v1 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_9:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  v6 = *(this + 5);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((*(this + 46) & 0x200) != 0)
  {
LABEL_15:
    v7 = *(this + 20);
    if ((*(this + 46) & 0x100) != 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    v8 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_19;
    }

LABEL_39:
    v9 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_22;
    }

LABEL_40:
    v10 = 0.0;
    if ((*(this + 46) & 0x400) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

LABEL_37:
  v7 = 0;
  if ((*(this + 46) & 0x100) == 0)
  {
    goto LABEL_38;
  }

LABEL_16:
  v8 = *(this + 9);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  v9 = *(this + 8);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  v10 = *(this + 2);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((*(this + 46) & 0x400) != 0)
  {
LABEL_25:
    v11 = *(this + 21);
    if ((v1 & 8) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

LABEL_41:
  v11 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_26:
    v12 = *(this + 4);
    if (v12 == 0.0)
    {
      v12 = 0.0;
    }

    if ((*(this + 46) & 0x800) != 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    v13 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ v11 ^ *&v12 ^ v13;
  }

LABEL_42:
  v12 = 0.0;
  if ((*(this + 46) & 0x800) == 0)
  {
    goto LABEL_43;
  }

LABEL_29:
  v13 = *(this + 88);
  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ v11 ^ *&v12 ^ v13;
}

void CMMsl::MotionStateUpdate::~MotionStateUpdate(CMMsl::MotionStateUpdate *this)
{
  *this = &unk_286C21EA0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::MotionStateUpdate::~MotionStateUpdate(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MotionStateUpdate::MotionStateUpdate(uint64_t this, const CMMsl::MotionStateUpdate *a2)
{
  *this = &unk_286C21EA0;
  *(this + 32) = 0;
  *(this + 192) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 0x8000) != 0)
  {
    v4 = *(a2 + 25);
    v3 = 0x8000;
    *(this + 192) = 0x8000;
    *(this + 100) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100) != 0)
  {
LABEL_5:
    v5 = *(a2 + 18);
    v3 |= 0x100uLL;
    *(this + 192) = v3;
    *(this + 72) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 0x10000) != 0)
  {
    v9 = *(a2 + 26);
    v3 |= 0x10000uLL;
    *(this + 192) = v3;
    *(this + 104) = v9;
    v2 = *(a2 + 24);
    if ((v2 & 0x20000) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_49;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 27);
  v3 |= 0x20000uLL;
  *(this + 192) = v3;
  *(this + 108) = v10;
  v2 = *(a2 + 24);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  v11 = *(a2 + 21);
  v3 |= 0x800uLL;
  *(this + 192) = v3;
  *(this + 84) = v11;
  v2 = *(a2 + 24);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  v12 = *(a2 + 37);
  v3 |= 0x8000000uLL;
  *(this + 192) = v3;
  *(this + 148) = v12;
  v2 = *(a2 + 24);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  v13 = *(a2 + 23);
  v3 |= 0x2000uLL;
  *(this + 192) = v3;
  *(this + 92) = v13;
  v2 = *(a2 + 24);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  v14 = *(a2 + 22);
  v3 |= 0x1000uLL;
  *(this + 192) = v3;
  *(this + 88) = v14;
  v2 = *(a2 + 24);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  v15 = *(a2 + 34);
  v3 |= 0x1000000uLL;
  *(this + 192) = v3;
  *(this + 136) = v15;
  v2 = *(a2 + 24);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  v16 = *(a2 + 5);
  v3 |= 8uLL;
  *(this + 192) = v3;
  *(this + 40) = v16;
  v2 = *(a2 + 24);
  if ((v2 & 1) == 0)
  {
LABEL_15:
    if ((v2 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  v17 = *(a2 + 1);
  v3 |= 1uLL;
  *(this + 192) = v3;
  *(this + 8) = v17;
  v2 = *(a2 + 24);
  if ((v2 & 4) == 0)
  {
LABEL_16:
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  v18 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 192) = v3;
  *(this + 24) = v18;
  v2 = *(a2 + 24);
  if ((v2 & 2) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  v19 = *(a2 + 2);
  v3 |= 2uLL;
  *(this + 192) = v3;
  *(this + 16) = v19;
  v2 = *(a2 + 24);
  if ((v2 & 0x80) == 0)
  {
LABEL_18:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = *(a2 + 17);
  v3 |= 0x80uLL;
  *(this + 192) = v3;
  *(this + 68) = v20;
  v2 = *(a2 + 24);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  v21 = *(a2 + 39);
  v3 |= 0x20000000uLL;
  *(this + 192) = v3;
  *(this + 156) = v21;
  v2 = *(a2 + 24);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = *(a2 + 36);
  v3 |= 0x4000000uLL;
  *(this + 192) = v3;
  *(this + 144) = v22;
  v2 = *(a2 + 24);
  if ((v2 & 0x4000) == 0)
  {
LABEL_21:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = *(a2 + 24);
  v3 |= 0x4000uLL;
  *(this + 192) = v3;
  *(this + 96) = v23;
  v2 = *(a2 + 24);
  if ((v2 & 0x400000) == 0)
  {
LABEL_22:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  v24 = *(a2 + 32);
  v3 |= 0x400000uLL;
  *(this + 192) = v3;
  *(this + 128) = v24;
  v2 = *(a2 + 24);
  if ((v2 & 0x200000) == 0)
  {
LABEL_23:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  v25 = *(a2 + 31);
  v3 |= 0x200000uLL;
  *(this + 192) = v3;
  *(this + 124) = v25;
  v2 = *(a2 + 24);
  if ((v2 & 0x800000) == 0)
  {
LABEL_24:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  v26 = *(a2 + 33);
  v3 |= 0x800000uLL;
  *(this + 192) = v3;
  *(this + 132) = v26;
  v2 = *(a2 + 24);
  if ((v2 & 0x10) == 0)
  {
LABEL_25:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  v27 = *(a2 + 6);
  v3 |= 0x10uLL;
  *(this + 192) = v3;
  *(this + 48) = v27;
  v2 = *(a2 + 24);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  v28 = *(a2 + 45);
  v3 |= 0x800000000uLL;
  *(this + 192) = v3;
  *(this + 180) = v28;
  v2 = *(a2 + 24);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_27:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  v29 = *(a2 + 40);
  v3 |= 0x40000000uLL;
  *(this + 192) = v3;
  *(this + 160) = v29;
  v2 = *(a2 + 24);
  if ((v2 & 0x100000) == 0)
  {
LABEL_28:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  v30 = *(a2 + 30);
  v3 |= 0x100000uLL;
  *(this + 192) = v3;
  *(this + 120) = v30;
  v2 = *(a2 + 24);
  if ((v2 & 0x80000) == 0)
  {
LABEL_29:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_69:
  v31 = *(a2 + 29);
  v3 |= 0x80000uLL;
  *(this + 192) = v3;
  *(this + 116) = v31;
  if ((*(a2 + 24) & 0x40000) != 0)
  {
LABEL_30:
    v6 = *(a2 + 28);
    *(this + 192) = v3 | 0x40000;
    *(this + 112) = v6;
  }

LABEL_31:
  if (*(a2 + 4))
  {
    operator new();
  }

  v7 = *(a2 + 24);
  if ((v7 & 0x400) != 0)
  {
    v32 = *(a2 + 20);
    *(this + 192) |= 0x400uLL;
    *(this + 80) = v32;
    v7 = *(a2 + 24);
    if ((v7 & 0x200) == 0)
    {
LABEL_35:
      if ((v7 & 0x2000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_73;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_35;
  }

  v33 = *(a2 + 19);
  *(this + 192) |= 0x200uLL;
  *(this + 76) = v33;
  v7 = *(a2 + 24);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v7 & 0x1000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = *(a2 + 35);
  *(this + 192) |= 0x2000000uLL;
  *(this + 140) = v34;
  v7 = *(a2 + 24);
  if ((v7 & 0x1000000000) == 0)
  {
LABEL_37:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = *(a2 + 46);
  *(this + 192) |= 0x1000000000uLL;
  *(this + 184) = v35;
  v7 = *(a2 + 24);
  if ((v7 & 0x20) == 0)
  {
LABEL_38:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_76;
  }

LABEL_75:
  v36 = *(a2 + 7);
  *(this + 192) |= 0x20uLL;
  *(this + 56) = v36;
  v7 = *(a2 + 24);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = *(a2 + 38);
  *(this + 192) |= 0x10000000uLL;
  *(this + 152) = v37;
  v7 = *(a2 + 24);
  if ((v7 & 0x2000000000) == 0)
  {
LABEL_40:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_78;
  }

LABEL_77:
  v38 = *(a2 + 47);
  *(this + 192) |= 0x2000000000uLL;
  *(this + 188) = v38;
  v7 = *(a2 + 24);
  if ((v7 & 0x40) == 0)
  {
LABEL_41:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = *(a2 + 16);
  *(this + 192) |= 0x40uLL;
  *(this + 64) = v39;
  v7 = *(a2 + 24);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_42:
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = *(a2 + 41);
  *(this + 192) |= 0x80000000uLL;
  *(this + 164) = v40;
  v7 = *(a2 + 24);
  if ((v7 & 0x100000000) == 0)
  {
LABEL_43:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = *(a2 + 42);
  *(this + 192) |= 0x100000000uLL;
  *(this + 168) = v41;
  v7 = *(a2 + 24);
  if ((v7 & 0x200000000) == 0)
  {
LABEL_44:
    if ((v7 & 0x400000000) == 0)
    {
      return this;
    }

    goto LABEL_45;
  }

LABEL_81:
  v42 = *(a2 + 43);
  *(this + 192) |= 0x200000000uLL;
  *(this + 172) = v42;
  if ((*(a2 + 24) & 0x400000000) == 0)
  {
    return this;
  }

LABEL_45:
  v8 = *(a2 + 44);
  *(this + 192) |= 0x400000000uLL;
  *(this + 176) = v8;
  return this;
}

CMMsl *CMMsl::MotionStateUpdate::operator=(CMMsl *a1, const CMMsl::MotionStateUpdate *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionStateUpdate::MotionStateUpdate(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::MotionStateUpdate::~MotionStateUpdate(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::MotionStateUpdate *a2, CMMsl::MotionStateUpdate *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  LODWORD(v3) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  LODWORD(v3) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  LODWORD(v3) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
  LODWORD(v3) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v3;
  LODWORD(v3) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v3;
  LODWORD(v3) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v3;
  LODWORD(v3) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  LODWORD(v3) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  LODWORD(v3) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v3;
  v5 = *(this + 3);
  v4 = *(this + 4);
  v6 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v6;
  *(a2 + 3) = v5;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  LODWORD(v7) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v7;
  LODWORD(v7) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  LODWORD(v8) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v8;
  LODWORD(v8) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v8;
  LODWORD(v8) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v8;
  LODWORD(v8) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v8;
  LODWORD(v8) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v10;
  LODWORD(v10) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v10;
  LODWORD(v10) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v10;
  LODWORD(v10) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v10;
  LODWORD(v10) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v10;
  LODWORD(v10) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v10;
  *(a2 + 28) = v8;
  *(a2 + 4) = v4;
  LODWORD(v10) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v10;
  LODWORD(v10) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v10;
  LODWORD(v10) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v10;
  LODWORD(v4) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v4;
  v11 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  LODWORD(v11) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v11;
  LODWORD(v11) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v11;
  LODWORD(v11) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  LODWORD(v10) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v10;
  LODWORD(v10) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v10;
  result = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = result;
  LODWORD(v11) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v11;
  return result;
}

uint64_t CMMsl::MotionStateUpdate::MotionStateUpdate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21EA0;
  *(a1 + 32) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 24) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

CMMsl *CMMsl::MotionStateUpdate::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionStateUpdate::MotionStateUpdate(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::MotionStateUpdate::~MotionStateUpdate(v5);
  }

  return a1;
}

uint64_t CMMsl::MotionStateUpdate::formatText(CMMsl::MotionStateUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 0x40) != 0)
  {
    v10 = *(this + 16);
    PB::TextFormatter::format(a2, "alsLux");
    v5 = *(this + 24);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 17);
  PB::TextFormatter::format(a2, "caltype");
  v5 = *(this + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v12 = *(this + 18);
  PB::TextFormatter::format(a2, "confidence");
  v5 = *(this + 24);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "drivingArmLikelihoodSum", *(this + 19));
  v5 = *(this + 24);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "drivingStowedLikelihoodSum", *(this + 20));
  v5 = *(this + 24);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v13 = *(this + 21);
  PB::TextFormatter::format(a2, "exitState");
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "hidTimestamp", *(this + 1));
  v5 = *(this + 24);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(this + 22);
  PB::TextFormatter::format(a2, "isMoving");
  v5 = *(this + 24);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(this + 23);
  PB::TextFormatter::format(a2, "isVehicular");
  v5 = *(this + 24);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "machineFrequency", *(this + 24));
  v5 = *(this + 24);
  if ((v5 & 0x8000) == 0)
  {
LABEL_12:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  v16 = *(this + 25);
  PB::TextFormatter::format(a2, "motionType");
  v5 = *(this + 24);
  if ((v5 & 0x10000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  v17 = *(this + 26);
  PB::TextFormatter::format(a2, "mounted");
  v5 = *(this + 24);
  if ((v5 & 0x20000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  v18 = *(this + 27);
  PB::TextFormatter::format(a2, "mountedConfidence");
  v5 = *(this + 24);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  v19 = *(this + 2);
  PB::TextFormatter::format(a2, "now");
  v5 = *(this + 24);
  if ((v5 & 0x40000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  v20 = *(this + 28);
  PB::TextFormatter::format(a2, "rawConfidence");
  v5 = *(this + 24);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  v21 = *(this + 29);
  PB::TextFormatter::format(a2, "rawIsVehicular");
  v5 = *(this + 24);
  if ((v5 & 0x100000) == 0)
  {
LABEL_18:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  v22 = *(this + 30);
  PB::TextFormatter::format(a2, "rawMotionType");
  v5 = *(this + 24);
  if ((v5 & 0x200000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "rowStrokeAmplitude", *(this + 31));
  v5 = *(this + 24);
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "rowStrokeFrequency", *(this + 32));
  v5 = *(this + 24);
  if ((v5 & 0x800000) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "rowStrokePower", *(this + 33));
  v5 = *(this + 24);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  v23 = *(this + 34);
  PB::TextFormatter::format(a2, "seq");
  v5 = *(this + 24);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "ssLikelihoodSum", *(this + 35));
  v5 = *(this + 24);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_24:
    if ((v5 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  v24 = *(this + 36);
  PB::TextFormatter::format(a2, "standing");
  v5 = *(this + 24);
  if ((v5 & 4) == 0)
  {
LABEL_25:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  v25 = *(this + 3);
  PB::TextFormatter::format(a2, "startTime");
  v5 = *(this + 24);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  v26 = *(this + 37);
  PB::TextFormatter::format(a2, "turn");
  v5 = *(this + 24);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  v27 = *(this + 38);
  PB::TextFormatter::format(a2, "typeYouth");
  v5 = *(this + 24);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "vectorMagnitude", *(this + 39));
  v5 = *(this + 24);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  v28 = *(this + 40);
  PB::TextFormatter::format(a2, "vehicleExitState");
  v5 = *(this + 24);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "vehicleProbabilityLongTermMean0", *(this + 41));
  v5 = *(this + 24);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "vehicleProbabilityLongTermMean1", *(this + 42));
  v5 = *(this + 24);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "vehicleProbabilityLongTermMean2", *(this + 43));
  v5 = *(this + 24);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_77:
  v29 = *(this + 44);
  PB::TextFormatter::format(a2, "vehicleType");
  if ((*(this + 24) & 0x800000000) != 0)
  {
LABEL_34:
    v6 = *(this + 45);
    PB::TextFormatter::format(a2, "vehicularConfidence");
  }

LABEL_35:
  v7 = *(this + 4);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "vehicularFlags");
  }

  v8 = *(this + 24);
  if ((v8 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "wallStartTime", *(this + 5));
    v8 = *(this + 24);
    if ((v8 & 0x10) == 0)
    {
LABEL_39:
      if ((v8 & 0x1000000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_81;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_39;
  }

  v30 = *(this + 6);
  PB::TextFormatter::format(a2, "workoutDetectionTime");
  v8 = *(this + 24);
  if ((v8 & 0x1000000000) == 0)
  {
LABEL_40:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_82;
  }

LABEL_81:
  v31 = *(this + 46);
  PB::TextFormatter::format(a2, "workoutDetectionType");
  v8 = *(this + 24);
  if ((v8 & 0x20) == 0)
  {
LABEL_41:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_82:
  v32 = *(this + 7);
  PB::TextFormatter::format(a2, "workoutEscalationTime");
  if ((*(this + 24) & 0x2000000000) != 0)
  {
LABEL_42:
    v9 = *(this + 47);
    PB::TextFormatter::format(a2, "youthClassificationReason");
  }

LABEL_43:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionStateUpdate::readFrom(CMMsl::MotionStateUpdate *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_543:
    v411 = v4 ^ 1;
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
        goto LABEL_543;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 24) |= 0x8000uLL;
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          v24 = *a2;
          if (v23 <= 0xFFFFFFFFFFFFFFF5 && v23 + 10 <= v22)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            do
            {
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_502;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
            }

            while (!v14);
LABEL_334:
            LODWORD(v27) = 0;
            goto LABEL_502;
          }

          v327 = 0;
          v328 = 0;
          v27 = 0;
          v329 = (v24 + v23);
          v18 = v22 >= v23;
          v330 = v22 - v23;
          if (!v18)
          {
            v330 = 0;
          }

          v331 = v23 + 1;
          while (2)
          {
            if (v330)
            {
              v332 = *v329;
              *(a2 + 1) = v331;
              v27 |= (v332 & 0x7F) << v327;
              if (v332 < 0)
              {
                v327 += 7;
                ++v329;
                --v330;
                ++v331;
                v14 = v328++ > 8;
                if (v14)
                {
                  goto LABEL_334;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }
            }

            else
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_502:
          *(this + 25) = v27;
          goto LABEL_18;
        case 2u:
          *(this + 24) |= 0x100uLL;
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
                goto LABEL_505;
              }

              v140 += 7;
              ++v144;
              v14 = v141++ > 8;
            }

            while (!v14);
LABEL_342:
            LODWORD(v142) = 0;
            goto LABEL_505;
          }

          v333 = 0;
          v334 = 0;
          v142 = 0;
          v335 = (v139 + v138);
          v18 = v137 >= v138;
          v336 = v137 - v138;
          if (!v18)
          {
            v336 = 0;
          }

          v337 = v138 + 1;
          while (2)
          {
            if (v336)
            {
              v338 = *v335;
              *(a2 + 1) = v337;
              v142 |= (v338 & 0x7F) << v333;
              if (v338 < 0)
              {
                v333 += 7;
                ++v335;
                --v336;
                ++v337;
                v14 = v334++ > 8;
                if (v14)
                {
                  goto LABEL_342;
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

LABEL_505:
          *(this + 18) = v142;
          goto LABEL_18;
        case 3u:
          *(this + 24) |= 0x10000uLL;
          v102 = *(a2 + 1);
          v101 = *(a2 + 2);
          v103 = *a2;
          if (v102 <= 0xFFFFFFFFFFFFFFF5 && v102 + 10 <= v101)
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
            v107 = (v103 + v102);
            v108 = v102 + 1;
            do
            {
              *(a2 + 1) = v108;
              v109 = *v107++;
              v106 |= (v109 & 0x7F) << v104;
              if ((v109 & 0x80) == 0)
              {
                goto LABEL_490;
              }

              v104 += 7;
              ++v108;
              v14 = v105++ > 8;
            }

            while (!v14);
LABEL_302:
            LODWORD(v106) = 0;
            goto LABEL_490;
          }

          v303 = 0;
          v304 = 0;
          v106 = 0;
          v305 = (v103 + v102);
          v18 = v101 >= v102;
          v306 = v101 - v102;
          if (!v18)
          {
            v306 = 0;
          }

          v307 = v102 + 1;
          while (2)
          {
            if (v306)
            {
              v308 = *v305;
              *(a2 + 1) = v307;
              v106 |= (v308 & 0x7F) << v303;
              if (v308 < 0)
              {
                v303 += 7;
                ++v305;
                --v306;
                ++v307;
                v14 = v304++ > 8;
                if (v14)
                {
                  goto LABEL_302;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              LODWORD(v106) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_490:
          *(this + 26) = v106;
          goto LABEL_18;
        case 4u:
          *(this + 24) |= 0x20000uLL;
          v120 = *(a2 + 1);
          v119 = *(a2 + 2);
          v121 = *a2;
          if (v120 <= 0xFFFFFFFFFFFFFFF5 && v120 + 10 <= v119)
          {
            v122 = 0;
            v123 = 0;
            v124 = 0;
            v125 = (v121 + v120);
            v126 = v120 + 1;
            do
            {
              *(a2 + 1) = v126;
              v127 = *v125++;
              v124 |= (v127 & 0x7F) << v122;
              if ((v127 & 0x80) == 0)
              {
                goto LABEL_496;
              }

              v122 += 7;
              ++v126;
              v14 = v123++ > 8;
            }

            while (!v14);
LABEL_318:
            LODWORD(v124) = 0;
            goto LABEL_496;
          }

          v315 = 0;
          v316 = 0;
          v124 = 0;
          v317 = (v121 + v120);
          v18 = v119 >= v120;
          v318 = v119 - v120;
          if (!v18)
          {
            v318 = 0;
          }

          v319 = v120 + 1;
          while (2)
          {
            if (v318)
            {
              v320 = *v317;
              *(a2 + 1) = v319;
              v124 |= (v320 & 0x7F) << v315;
              if (v320 < 0)
              {
                v315 += 7;
                ++v317;
                --v318;
                ++v319;
                v14 = v316++ > 8;
                if (v14)
                {
                  goto LABEL_318;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v124) = 0;
              }
            }

            else
            {
              LODWORD(v124) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_496:
          *(this + 27) = v124;
          goto LABEL_18;
        case 5u:
          *(this + 24) |= 0x800uLL;
          v65 = *(a2 + 1);
          v64 = *(a2 + 2);
          v66 = *a2;
          if (v65 <= 0xFFFFFFFFFFFFFFF5 && v65 + 10 <= v64)
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = (v66 + v65);
            v71 = v65 + 1;
            do
            {
              *(a2 + 1) = v71;
              v72 = *v70++;
              v69 |= (v72 & 0x7F) << v67;
              if ((v72 & 0x80) == 0)
              {
                goto LABEL_478;
              }

              v67 += 7;
              ++v71;
              v14 = v68++ > 8;
            }

            while (!v14);
LABEL_270:
            LODWORD(v69) = 0;
            goto LABEL_478;
          }

          v279 = 0;
          v280 = 0;
          v69 = 0;
          v281 = (v66 + v65);
          v18 = v64 >= v65;
          v282 = v64 - v65;
          if (!v18)
          {
            v282 = 0;
          }

          v283 = v65 + 1;
          while (2)
          {
            if (v282)
            {
              v284 = *v281;
              *(a2 + 1) = v283;
              v69 |= (v284 & 0x7F) << v279;
              if (v284 < 0)
              {
                v279 += 7;
                ++v281;
                --v282;
                ++v283;
                v14 = v280++ > 8;
                if (v14)
                {
                  goto LABEL_270;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v69) = 0;
              }
            }

            else
            {
              LODWORD(v69) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_478:
          *(this + 21) = v69;
          goto LABEL_18;
        case 6u:
          *(this + 24) |= 0x8000000uLL;
          v166 = *(a2 + 1);
          v165 = *(a2 + 2);
          v167 = *a2;
          if (v166 <= 0xFFFFFFFFFFFFFFF5 && v166 + 10 <= v165)
          {
            v168 = 0;
            v169 = 0;
            v170 = 0;
            v171 = (v167 + v166);
            v172 = v166 + 1;
            do
            {
              *(a2 + 1) = v172;
              v173 = *v171++;
              v170 |= (v173 & 0x7F) << v168;
              if ((v173 & 0x80) == 0)
              {
                goto LABEL_514;
              }

              v168 += 7;
              ++v172;
              v14 = v169++ > 8;
            }

            while (!v14);
LABEL_366:
            LODWORD(v170) = 0;
            goto LABEL_514;
          }

          v351 = 0;
          v352 = 0;
          v170 = 0;
          v353 = (v167 + v166);
          v18 = v165 >= v166;
          v354 = v165 - v166;
          if (!v18)
          {
            v354 = 0;
          }

          v355 = v166 + 1;
          while (2)
          {
            if (v354)
            {
              v356 = *v353;
              *(a2 + 1) = v355;
              v170 |= (v356 & 0x7F) << v351;
              if (v356 < 0)
              {
                v351 += 7;
                ++v353;
                --v354;
                ++v355;
                v14 = v352++ > 8;
                if (v14)
                {
                  goto LABEL_366;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v170) = 0;
              }
            }

            else
            {
              LODWORD(v170) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_514:
          *(this + 37) = v170;
          goto LABEL_18;
        case 7u:
          *(this + 24) |= 0x2000uLL;
          v193 = *(a2 + 1);
          v192 = *(a2 + 2);
          v194 = *a2;
          if (v193 <= 0xFFFFFFFFFFFFFFF5 && v193 + 10 <= v192)
          {
            v195 = 0;
            v196 = 0;
            v197 = 0;
            v198 = (v194 + v193);
            v199 = v193 + 1;
            do
            {
              *(a2 + 1) = v199;
              v200 = *v198++;
              v197 |= (v200 & 0x7F) << v195;
              if ((v200 & 0x80) == 0)
              {
                goto LABEL_523;
              }

              v195 += 7;
              ++v199;
              v14 = v196++ > 8;
            }

            while (!v14);
LABEL_390:
            LODWORD(v197) = 0;
            goto LABEL_523;
          }

          v369 = 0;
          v370 = 0;
          v197 = 0;
          v371 = (v194 + v193);
          v18 = v192 >= v193;
          v372 = v192 - v193;
          if (!v18)
          {
            v372 = 0;
          }

          v373 = v193 + 1;
          while (2)
          {
            if (v372)
            {
              v374 = *v371;
              *(a2 + 1) = v373;
              v197 |= (v374 & 0x7F) << v369;
              if (v374 < 0)
              {
                v369 += 7;
                ++v371;
                --v372;
                ++v373;
                v14 = v370++ > 8;
                if (v14)
                {
                  goto LABEL_390;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v197) = 0;
              }
            }

            else
            {
              LODWORD(v197) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_523:
          *(this + 23) = v197;
          goto LABEL_18;
        case 8u:
          *(this + 24) |= 0x1000uLL;
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
                goto LABEL_499;
              }

              v131 += 7;
              ++v135;
              v14 = v132++ > 8;
            }

            while (!v14);
LABEL_326:
            LODWORD(v133) = 0;
            goto LABEL_499;
          }

          v321 = 0;
          v322 = 0;
          v133 = 0;
          v323 = (v130 + v129);
          v18 = v128 >= v129;
          v324 = v128 - v129;
          if (!v18)
          {
            v324 = 0;
          }

          v325 = v129 + 1;
          while (2)
          {
            if (v324)
            {
              v326 = *v323;
              *(a2 + 1) = v325;
              v133 |= (v326 & 0x7F) << v321;
              if (v326 < 0)
              {
                v321 += 7;
                ++v323;
                --v324;
                ++v325;
                v14 = v322++ > 8;
                if (v14)
                {
                  goto LABEL_326;
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

LABEL_499:
          *(this + 22) = v133;
          goto LABEL_18;
        case 9u:
          *(this + 24) |= 0x1000000uLL;
          v205 = *(a2 + 1);
          v204 = *(a2 + 2);
          v206 = *a2;
          if (v205 <= 0xFFFFFFFFFFFFFFF5 && v205 + 10 <= v204)
          {
            v207 = 0;
            v208 = 0;
            v209 = 0;
            v210 = (v206 + v205);
            v211 = v205 + 1;
            do
            {
              *(a2 + 1) = v211;
              v212 = *v210++;
              v209 |= (v212 & 0x7F) << v207;
              if ((v212 & 0x80) == 0)
              {
                goto LABEL_526;
              }

              v207 += 7;
              ++v211;
              v14 = v208++ > 8;
            }

            while (!v14);
LABEL_398:
            LODWORD(v209) = 0;
            goto LABEL_526;
          }

          v375 = 0;
          v376 = 0;
          v209 = 0;
          v377 = (v206 + v205);
          v18 = v204 >= v205;
          v378 = v204 - v205;
          if (!v18)
          {
            v378 = 0;
          }

          v379 = v205 + 1;
          while (2)
          {
            if (v378)
            {
              v380 = *v377;
              *(a2 + 1) = v379;
              v209 |= (v380 & 0x7F) << v375;
              if (v380 < 0)
              {
                v375 += 7;
                ++v377;
                --v378;
                ++v379;
                v14 = v376++ > 8;
                if (v14)
                {
                  goto LABEL_398;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v209) = 0;
              }
            }

            else
            {
              LODWORD(v209) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_526:
          *(this + 34) = v209;
          goto LABEL_18;
        case 0xAu:
          *(this + 24) |= 8uLL;
          v82 = *(a2 + 1);
          if (v82 > 0xFFFFFFFFFFFFFFF7 || v82 + 8 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 5) = *(*a2 + v82);
          goto LABEL_186;
        case 0xBu:
          *(this + 24) |= 1uLL;
          v202 = *(a2 + 1);
          if (v202 > 0xFFFFFFFFFFFFFFF7 || v202 + 8 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 1) = *(*a2 + v202);
LABEL_186:
          v203 = *(a2 + 1) + 8;
          goto LABEL_441;
        case 0xCu:
          *(this + 24) |= 4uLL;
          v56 = *(a2 + 1);
          v55 = *(a2 + 2);
          v57 = *a2;
          if (v56 <= 0xFFFFFFFFFFFFFFF5 && v56 + 10 <= v55)
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            do
            {
              *(a2 + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                goto LABEL_475;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
            }

            while (!v14);
LABEL_262:
            v60 = 0;
            goto LABEL_475;
          }

          v273 = 0;
          v274 = 0;
          v60 = 0;
          v275 = (v57 + v56);
          v18 = v55 >= v56;
          v276 = v55 - v56;
          if (!v18)
          {
            v276 = 0;
          }

          v277 = v56 + 1;
          while (2)
          {
            if (v276)
            {
              v278 = *v275;
              *(a2 + 1) = v277;
              v60 |= (v278 & 0x7F) << v273;
              if (v278 < 0)
              {
                v273 += 7;
                ++v275;
                --v276;
                ++v277;
                v14 = v274++ > 8;
                if (v14)
                {
                  goto LABEL_262;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v60 = 0;
              }
            }

            else
            {
              v60 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_475:
          *(this + 3) = v60;
          goto LABEL_18;
        case 0xDu:
          *(this + 24) |= 2uLL;
          v74 = *(a2 + 1);
          v73 = *(a2 + 2);
          v75 = *a2;
          if (v74 <= 0xFFFFFFFFFFFFFFF5 && v74 + 10 <= v73)
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = (v75 + v74);
            v80 = v74 + 1;
            do
            {
              *(a2 + 1) = v80;
              v81 = *v79++;
              v78 |= (v81 & 0x7F) << v76;
              if ((v81 & 0x80) == 0)
              {
                goto LABEL_481;
              }

              v76 += 7;
              ++v80;
              v14 = v77++ > 8;
            }

            while (!v14);
LABEL_278:
            v78 = 0;
            goto LABEL_481;
          }

          v285 = 0;
          v286 = 0;
          v78 = 0;
          v287 = (v75 + v74);
          v18 = v73 >= v74;
          v288 = v73 - v74;
          if (!v18)
          {
            v288 = 0;
          }

          v289 = v74 + 1;
          while (2)
          {
            if (v288)
            {
              v290 = *v287;
              *(a2 + 1) = v289;
              v78 |= (v290 & 0x7F) << v285;
              if (v290 < 0)
              {
                v285 += 7;
                ++v287;
                --v288;
                ++v289;
                v14 = v286++ > 8;
                if (v14)
                {
                  goto LABEL_278;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v78 = 0;
              }
            }

            else
            {
              v78 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_481:
          *(this + 2) = v78;
          goto LABEL_18;
        case 0xEu:
          *(this + 24) |= 0x80uLL;
          v184 = *(a2 + 1);
          v183 = *(a2 + 2);
          v185 = *a2;
          if (v184 <= 0xFFFFFFFFFFFFFFF5 && v184 + 10 <= v183)
          {
            v186 = 0;
            v187 = 0;
            v188 = 0;
            v189 = (v185 + v184);
            v190 = v184 + 1;
            do
            {
              *(a2 + 1) = v190;
              v191 = *v189++;
              v188 |= (v191 & 0x7F) << v186;
              if ((v191 & 0x80) == 0)
              {
                goto LABEL_520;
              }

              v186 += 7;
              ++v190;
              v14 = v187++ > 8;
            }

            while (!v14);
LABEL_382:
            LODWORD(v188) = 0;
            goto LABEL_520;
          }

          v363 = 0;
          v364 = 0;
          v188 = 0;
          v365 = (v185 + v184);
          v18 = v183 >= v184;
          v366 = v183 - v184;
          if (!v18)
          {
            v366 = 0;
          }

          v367 = v184 + 1;
          while (2)
          {
            if (v366)
            {
              v368 = *v365;
              *(a2 + 1) = v367;
              v188 |= (v368 & 0x7F) << v363;
              if (v368 < 0)
              {
                v363 += 7;
                ++v365;
                --v366;
                ++v367;
                v14 = v364++ > 8;
                if (v14)
                {
                  goto LABEL_382;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v188) = 0;
              }
            }

            else
            {
              LODWORD(v188) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_520:
          *(this + 17) = v188;
          goto LABEL_18;
        case 0xFu:
          *(this + 24) |= 0x20000000uLL;
          v45 = *(a2 + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 39) = *(*a2 + v45);
          goto LABEL_440;
        case 0x10u:
          *(this + 24) |= 0x4000000uLL;
          v111 = *(a2 + 1);
          v110 = *(a2 + 2);
          v112 = *a2;
          if (v111 <= 0xFFFFFFFFFFFFFFF5 && v111 + 10 <= v110)
          {
            v113 = 0;
            v114 = 0;
            v115 = 0;
            v116 = (v112 + v111);
            v117 = v111 + 1;
            do
            {
              *(a2 + 1) = v117;
              v118 = *v116++;
              v115 |= (v118 & 0x7F) << v113;
              if ((v118 & 0x80) == 0)
              {
                goto LABEL_493;
              }

              v113 += 7;
              ++v117;
              v14 = v114++ > 8;
            }

            while (!v14);
LABEL_310:
            LODWORD(v115) = 0;
            goto LABEL_493;
          }

          v309 = 0;
          v310 = 0;
          v115 = 0;
          v311 = (v112 + v111);
          v18 = v110 >= v111;
          v312 = v110 - v111;
          if (!v18)
          {
            v312 = 0;
          }

          v313 = v111 + 1;
          while (2)
          {
            if (v312)
            {
              v314 = *v311;
              *(a2 + 1) = v313;
              v115 |= (v314 & 0x7F) << v309;
              if (v314 < 0)
              {
                v309 += 7;
                ++v311;
                --v312;
                ++v313;
                v14 = v310++ > 8;
                if (v14)
                {
                  goto LABEL_310;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v115) = 0;
              }
            }

            else
            {
              LODWORD(v115) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_493:
          *(this + 36) = v115;
          goto LABEL_18;
        case 0x11u:
          *(this + 24) |= 0x4000uLL;
          v44 = *(a2 + 1);
          if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 24) = *(*a2 + v44);
          goto LABEL_440;
        case 0x12u:
          *(this + 24) |= 0x400000uLL;
          v155 = *(a2 + 1);
          if (v155 > 0xFFFFFFFFFFFFFFFBLL || v155 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 32) = *(*a2 + v155);
          goto LABEL_440;
        case 0x13u:
          *(this + 24) |= 0x200000uLL;
          v201 = *(a2 + 1);
          if (v201 > 0xFFFFFFFFFFFFFFFBLL || v201 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 31) = *(*a2 + v201);
          goto LABEL_440;
        case 0x14u:
          *(this + 24) |= 0x800000uLL;
          v240 = *(a2 + 1);
          if (v240 > 0xFFFFFFFFFFFFFFFBLL || v240 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 33) = *(*a2 + v240);
          goto LABEL_440;
        case 0x15u:
          *(this + 24) |= 0x10uLL;
          v157 = *(a2 + 1);
          v156 = *(a2 + 2);
          v158 = *a2;
          if (v157 <= 0xFFFFFFFFFFFFFFF5 && v157 + 10 <= v156)
          {
            v159 = 0;
            v160 = 0;
            v161 = 0;
            v162 = (v158 + v157);
            v163 = v157 + 1;
            do
            {
              *(a2 + 1) = v163;
              v164 = *v162++;
              v161 |= (v164 & 0x7F) << v159;
              if ((v164 & 0x80) == 0)
              {
                goto LABEL_511;
              }

              v159 += 7;
              ++v163;
              v14 = v160++ > 8;
            }

            while (!v14);
LABEL_358:
            v161 = 0;
            goto LABEL_511;
          }

          v345 = 0;
          v346 = 0;
          v161 = 0;
          v347 = (v158 + v157);
          v18 = v156 >= v157;
          v348 = v156 - v157;
          if (!v18)
          {
            v348 = 0;
          }

          v349 = v157 + 1;
          while (2)
          {
            if (v348)
            {
              v350 = *v347;
              *(a2 + 1) = v349;
              v161 |= (v350 & 0x7F) << v345;
              if (v350 < 0)
              {
                v345 += 7;
                ++v347;
                --v348;
                ++v349;
                v14 = v346++ > 8;
                if (v14)
                {
                  goto LABEL_358;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v161 = 0;
              }
            }

            else
            {
              v161 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_511:
          *(this + 6) = v161;
          goto LABEL_18;
        case 0x16u:
          *(this + 24) |= 0x800000000uLL;
          v175 = *(a2 + 1);
          v174 = *(a2 + 2);
          v176 = *a2;
          if (v175 <= 0xFFFFFFFFFFFFFFF5 && v175 + 10 <= v174)
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            v180 = (v176 + v175);
            v181 = v175 + 1;
            do
            {
              *(a2 + 1) = v181;
              v182 = *v180++;
              v179 |= (v182 & 0x7F) << v177;
              if ((v182 & 0x80) == 0)
              {
                goto LABEL_517;
              }

              v177 += 7;
              ++v181;
              v14 = v178++ > 8;
            }

            while (!v14);
LABEL_374:
            LODWORD(v179) = 0;
            goto LABEL_517;
          }

          v357 = 0;
          v358 = 0;
          v179 = 0;
          v359 = (v176 + v175);
          v18 = v174 >= v175;
          v360 = v174 - v175;
          if (!v18)
          {
            v360 = 0;
          }

          v361 = v175 + 1;
          while (2)
          {
            if (v360)
            {
              v362 = *v359;
              *(a2 + 1) = v361;
              v179 |= (v362 & 0x7F) << v357;
              if (v362 < 0)
              {
                v357 += 7;
                ++v359;
                --v360;
                ++v361;
                v14 = v358++ > 8;
                if (v14)
                {
                  goto LABEL_374;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v179) = 0;
              }
            }

            else
            {
              LODWORD(v179) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_517:
          *(this + 45) = v179;
          goto LABEL_18;
        case 0x17u:
          *(this + 24) |= 0x40000000uLL;
          v232 = *(a2 + 1);
          v231 = *(a2 + 2);
          v233 = *a2;
          if (v232 <= 0xFFFFFFFFFFFFFFF5 && v232 + 10 <= v231)
          {
            v234 = 0;
            v235 = 0;
            v236 = 0;
            v237 = (v233 + v232);
            v238 = v232 + 1;
            do
            {
              *(a2 + 1) = v238;
              v239 = *v237++;
              v236 |= (v239 & 0x7F) << v234;
              if ((v239 & 0x80) == 0)
              {
                goto LABEL_535;
              }

              v234 += 7;
              ++v238;
              v14 = v235++ > 8;
            }

            while (!v14);
LABEL_422:
            LODWORD(v236) = 0;
            goto LABEL_535;
          }

          v393 = 0;
          v394 = 0;
          v236 = 0;
          v395 = (v233 + v232);
          v18 = v231 >= v232;
          v396 = v231 - v232;
          if (!v18)
          {
            v396 = 0;
          }

          v397 = v232 + 1;
          while (2)
          {
            if (v396)
            {
              v398 = *v395;
              *(a2 + 1) = v397;
              v236 |= (v398 & 0x7F) << v393;
              if (v398 < 0)
              {
                v393 += 7;
                ++v395;
                --v396;
                ++v397;
                v14 = v394++ > 8;
                if (v14)
                {
                  goto LABEL_422;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v236) = 0;
              }
            }

            else
            {
              LODWORD(v236) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_535:
          *(this + 40) = v236;
          goto LABEL_18;
        case 0x18u:
          *(this + 24) |= 0x100000uLL;
          v242 = *(a2 + 1);
          v241 = *(a2 + 2);
          v243 = *a2;
          if (v242 <= 0xFFFFFFFFFFFFFFF5 && v242 + 10 <= v241)
          {
            v244 = 0;
            v245 = 0;
            v246 = 0;
            v247 = (v243 + v242);
            v248 = v242 + 1;
            do
            {
              *(a2 + 1) = v248;
              v249 = *v247++;
              v246 |= (v249 & 0x7F) << v244;
              if ((v249 & 0x80) == 0)
              {
                goto LABEL_538;
              }

              v244 += 7;
              ++v248;
              v14 = v245++ > 8;
            }

            while (!v14);
LABEL_430:
            LODWORD(v246) = 0;
            goto LABEL_538;
          }

          v399 = 0;
          v400 = 0;
          v246 = 0;
          v401 = (v243 + v242);
          v18 = v241 >= v242;
          v402 = v241 - v242;
          if (!v18)
          {
            v402 = 0;
          }

          v403 = v242 + 1;
          while (2)
          {
            if (v402)
            {
              v404 = *v401;
              *(a2 + 1) = v403;
              v246 |= (v404 & 0x7F) << v399;
              if (v404 < 0)
              {
                v399 += 7;
                ++v401;
                --v402;
                ++v403;
                v14 = v400++ > 8;
                if (v14)
                {
                  goto LABEL_430;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v246) = 0;
              }
            }

            else
            {
              LODWORD(v246) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_538:
          *(this + 30) = v246;
          goto LABEL_18;
        case 0x19u:
          *(this + 24) |= 0x80000uLL;
          v93 = *(a2 + 1);
          v92 = *(a2 + 2);
          v94 = *a2;
          if (v93 <= 0xFFFFFFFFFFFFFFF5 && v93 + 10 <= v92)
          {
            v95 = 0;
            v96 = 0;
            v97 = 0;
            v98 = (v94 + v93);
            v99 = v93 + 1;
            do
            {
              *(a2 + 1) = v99;
              v100 = *v98++;
              v97 |= (v100 & 0x7F) << v95;
              if ((v100 & 0x80) == 0)
              {
                goto LABEL_487;
              }

              v95 += 7;
              ++v99;
              v14 = v96++ > 8;
            }

            while (!v14);
LABEL_294:
            LODWORD(v97) = 0;
            goto LABEL_487;
          }

          v297 = 0;
          v298 = 0;
          v97 = 0;
          v299 = (v94 + v93);
          v18 = v92 >= v93;
          v300 = v92 - v93;
          if (!v18)
          {
            v300 = 0;
          }

          v301 = v93 + 1;
          while (2)
          {
            if (v300)
            {
              v302 = *v299;
              *(a2 + 1) = v301;
              v97 |= (v302 & 0x7F) << v297;
              if (v302 < 0)
              {
                v297 += 7;
                ++v299;
                --v300;
                ++v301;
                v14 = v298++ > 8;
                if (v14)
                {
                  goto LABEL_294;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v97) = 0;
              }
            }

            else
            {
              LODWORD(v97) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_487:
          *(this + 29) = v97;
          goto LABEL_18;
        case 0x1Au:
          *(this + 24) |= 0x40000uLL;
          v84 = *(a2 + 1);
          v83 = *(a2 + 2);
          v85 = *a2;
          if (v84 <= 0xFFFFFFFFFFFFFFF5 && v84 + 10 <= v83)
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v89 = (v85 + v84);
            v90 = v84 + 1;
            do
            {
              *(a2 + 1) = v90;
              v91 = *v89++;
              v88 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                goto LABEL_484;
              }

              v86 += 7;
              ++v90;
              v14 = v87++ > 8;
            }

            while (!v14);
LABEL_286:
            LODWORD(v88) = 0;
            goto LABEL_484;
          }

          v291 = 0;
          v292 = 0;
          v88 = 0;
          v293 = (v85 + v84);
          v18 = v83 >= v84;
          v294 = v83 - v84;
          if (!v18)
          {
            v294 = 0;
          }

          v295 = v84 + 1;
          while (2)
          {
            if (v294)
            {
              v296 = *v293;
              *(a2 + 1) = v295;
              v88 |= (v296 & 0x7F) << v291;
              if (v296 < 0)
              {
                v291 += 7;
                ++v293;
                --v294;
                ++v295;
                v14 = v292++ > 8;
                if (v14)
                {
                  goto LABEL_286;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v88) = 0;
              }
            }

            else
            {
              LODWORD(v88) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_484:
          *(this + 28) = v88;
          goto LABEL_18;
        case 0x1Bu:
          operator new();
        case 0x1Cu:
          *(this + 24) |= 0x400uLL;
          v34 = *(a2 + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 20) = *(*a2 + v34);
          goto LABEL_440;
        case 0x1Du:
          *(this + 24) |= 0x200uLL;
          v250 = *(a2 + 1);
          if (v250 > 0xFFFFFFFFFFFFFFFBLL || v250 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 19) = *(*a2 + v250);
          goto LABEL_440;
        case 0x1Eu:
          *(this + 24) |= 0x2000000uLL;
          v251 = *(a2 + 1);
          if (v251 > 0xFFFFFFFFFFFFFFFBLL || v251 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 35) = *(*a2 + v251);
          goto LABEL_440;
        case 0x1Fu:
          *(this + 24) |= 0x1000000000uLL;
          v214 = *(a2 + 1);
          v213 = *(a2 + 2);
          v215 = *a2;
          if (v214 <= 0xFFFFFFFFFFFFFFF5 && v214 + 10 <= v213)
          {
            v216 = 0;
            v217 = 0;
            v218 = 0;
            v219 = (v215 + v214);
            v220 = v214 + 1;
            do
            {
              *(a2 + 1) = v220;
              v221 = *v219++;
              v218 |= (v221 & 0x7F) << v216;
              if ((v221 & 0x80) == 0)
              {
                goto LABEL_529;
              }

              v216 += 7;
              ++v220;
              v14 = v217++ > 8;
            }

            while (!v14);
LABEL_406:
            LODWORD(v218) = 0;
            goto LABEL_529;
          }

          v381 = 0;
          v382 = 0;
          v218 = 0;
          v383 = (v215 + v214);
          v18 = v213 >= v214;
          v384 = v213 - v214;
          if (!v18)
          {
            v384 = 0;
          }

          v385 = v214 + 1;
          while (2)
          {
            if (v384)
            {
              v386 = *v383;
              *(a2 + 1) = v385;
              v218 |= (v386 & 0x7F) << v381;
              if (v386 < 0)
              {
                v381 += 7;
                ++v383;
                --v384;
                ++v385;
                v14 = v382++ > 8;
                if (v14)
                {
                  goto LABEL_406;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v218) = 0;
              }
            }

            else
            {
              LODWORD(v218) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_529:
          *(this + 46) = v218;
          goto LABEL_18;
        case 0x20u:
          *(this + 24) |= 0x20uLL;
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
                goto LABEL_508;
              }

              v149 += 7;
              ++v153;
              v14 = v150++ > 8;
            }

            while (!v14);
LABEL_350:
            v151 = 0;
            goto LABEL_508;
          }

          v339 = 0;
          v340 = 0;
          v151 = 0;
          v341 = (v148 + v147);
          v18 = v146 >= v147;
          v342 = v146 - v147;
          if (!v18)
          {
            v342 = 0;
          }

          v343 = v147 + 1;
          while (2)
          {
            if (v342)
            {
              v344 = *v341;
              *(a2 + 1) = v343;
              v151 |= (v344 & 0x7F) << v339;
              if (v344 < 0)
              {
                v339 += 7;
                ++v341;
                --v342;
                ++v343;
                v14 = v340++ > 8;
                if (v14)
                {
                  goto LABEL_350;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v151 = 0;
              }
            }

            else
            {
              v151 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_508:
          *(this + 7) = v151;
          goto LABEL_18;
        case 0x21u:
          *(this + 24) |= 0x10000000uLL;
          v223 = *(a2 + 1);
          v222 = *(a2 + 2);
          v224 = *a2;
          if (v223 <= 0xFFFFFFFFFFFFFFF5 && v223 + 10 <= v222)
          {
            v225 = 0;
            v226 = 0;
            v227 = 0;
            v228 = (v224 + v223);
            v229 = v223 + 1;
            do
            {
              *(a2 + 1) = v229;
              v230 = *v228++;
              v227 |= (v230 & 0x7F) << v225;
              if ((v230 & 0x80) == 0)
              {
                goto LABEL_532;
              }

              v225 += 7;
              ++v229;
              v14 = v226++ > 8;
            }

            while (!v14);
LABEL_414:
            LODWORD(v227) = 0;
            goto LABEL_532;
          }

          v387 = 0;
          v388 = 0;
          v227 = 0;
          v389 = (v224 + v223);
          v18 = v222 >= v223;
          v390 = v222 - v223;
          if (!v18)
          {
            v390 = 0;
          }

          v391 = v223 + 1;
          while (2)
          {
            if (v390)
            {
              v392 = *v389;
              *(a2 + 1) = v391;
              v227 |= (v392 & 0x7F) << v387;
              if (v392 < 0)
              {
                v387 += 7;
                ++v389;
                --v390;
                ++v391;
                v14 = v388++ > 8;
                if (v14)
                {
                  goto LABEL_414;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v227) = 0;
              }
            }

            else
            {
              LODWORD(v227) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_532:
          *(this + 38) = v227;
          goto LABEL_18;
        case 0x22u:
          *(this + 24) |= 0x2000000000uLL;
          v47 = *(a2 + 1);
          v46 = *(a2 + 2);
          v48 = *a2;
          if (v47 <= 0xFFFFFFFFFFFFFFF5 && v47 + 10 <= v46)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            do
            {
              *(a2 + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                goto LABEL_472;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
            }

            while (!v14);
LABEL_254:
            LODWORD(v51) = 0;
            goto LABEL_472;
          }

          v267 = 0;
          v268 = 0;
          v51 = 0;
          v269 = (v48 + v47);
          v18 = v46 >= v47;
          v270 = v46 - v47;
          if (!v18)
          {
            v270 = 0;
          }

          v271 = v47 + 1;
          while (2)
          {
            if (v270)
            {
              v272 = *v269;
              *(a2 + 1) = v271;
              v51 |= (v272 & 0x7F) << v267;
              if (v272 < 0)
              {
                v267 += 7;
                ++v269;
                --v270;
                ++v271;
                v14 = v268++ > 8;
                if (v14)
                {
                  goto LABEL_254;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v51) = 0;
              }
            }

            else
            {
              LODWORD(v51) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_472:
          *(this + 47) = v51;
          goto LABEL_18;
        case 0x23u:
          *(this + 24) |= 0x40uLL;
          v36 = *(a2 + 1);
          v35 = *(a2 + 2);
          v37 = *a2;
          if (v36 <= 0xFFFFFFFFFFFFFFF5 && v36 + 10 <= v35)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = (v37 + v36);
            v42 = v36 + 1;
            do
            {
              *(a2 + 1) = v42;
              v43 = *v41++;
              v40 |= (v43 & 0x7F) << v38;
              if ((v43 & 0x80) == 0)
              {
                goto LABEL_469;
              }

              v38 += 7;
              ++v42;
              v14 = v39++ > 8;
            }

            while (!v14);
LABEL_246:
            LODWORD(v40) = 0;
            goto LABEL_469;
          }

          v261 = 0;
          v262 = 0;
          v40 = 0;
          v263 = (v37 + v36);
          v18 = v35 >= v36;
          v264 = v35 - v36;
          if (!v18)
          {
            v264 = 0;
          }

          v265 = v36 + 1;
          while (2)
          {
            if (v264)
            {
              v266 = *v263;
              *(a2 + 1) = v265;
              v40 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                ++v263;
                --v264;
                ++v265;
                v14 = v262++ > 8;
                if (v14)
                {
                  goto LABEL_246;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v40) = 0;
              }
            }

            else
            {
              LODWORD(v40) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_469:
          *(this + 16) = v40;
          goto LABEL_18;
        case 0x24u:
          *(this + 24) |= 0x80000000uLL;
          v32 = *(a2 + 1);
          if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 41) = *(*a2 + v32);
          goto LABEL_440;
        case 0x25u:
          *(this + 24) |= 0x100000000uLL;
          v33 = *(a2 + 1);
          if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
          {
            goto LABEL_230;
          }

          *(this + 42) = *(*a2 + v33);
          goto LABEL_440;
        case 0x26u:
          *(this + 24) |= 0x200000000uLL;
          v31 = *(a2 + 1);
          if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(a2 + 2))
          {
LABEL_230:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 43) = *(*a2 + v31);
LABEL_440:
            v203 = *(a2 + 1) + 4;
LABEL_441:
            *(a2 + 1) = v203;
          }

          goto LABEL_18;
        case 0x27u:
          *(this + 24) |= 0x400000000uLL;
          v253 = *(a2 + 1);
          v252 = *(a2 + 2);
          v254 = *a2;
          if (v253 <= 0xFFFFFFFFFFFFFFF5 && v253 + 10 <= v252)
          {
            v255 = 0;
            v256 = 0;
            v257 = 0;
            v258 = (v254 + v253);
            v259 = v253 + 1;
            do
            {
              *(a2 + 1) = v259;
              v260 = *v258++;
              v257 |= (v260 & 0x7F) << v255;
              if ((v260 & 0x80) == 0)
              {
                goto LABEL_541;
              }

              v255 += 7;
              ++v259;
              v14 = v256++ > 8;
            }

            while (!v14);
LABEL_438:
            LODWORD(v257) = 0;
            goto LABEL_541;
          }

          v405 = 0;
          v406 = 0;
          v257 = 0;
          v407 = (v254 + v253);
          v18 = v252 >= v253;
          v408 = v252 - v253;
          if (!v18)
          {
            v408 = 0;
          }

          v409 = v253 + 1;
          break;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v408)
        {
          LODWORD(v257) = 0;
          *(a2 + 24) = 1;
          goto LABEL_541;
        }

        v410 = *v407;
        *(a2 + 1) = v409;
        v257 |= (v410 & 0x7F) << v405;
        if ((v410 & 0x80) == 0)
        {
          break;
        }

        v405 += 7;
        ++v407;
        --v408;
        ++v409;
        v14 = v406++ > 8;
        if (v14)
        {
          goto LABEL_438;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v257) = 0;
      }

LABEL_541:
      *(this + 44) = v257;
LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_543;
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
        goto LABEL_543;
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

    v411 = 0;
  }

  return v411 & 1;
}

uint64_t CMMsl::VehicularFlagsData::VehicularFlagsData(uint64_t this)
{
  *this = &unk_286C24328;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C24328;
  *(this + 20) = 0;
  return this;
}

uint64_t CMMsl::MotionStateUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 192);
  if ((v4 & 0x8000) != 0)
  {
    v8 = *(this + 100);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 192);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v4 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(v3 + 72);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x10000) == 0)
  {
LABEL_4:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(v3 + 104);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x20000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = *(v3 + 108);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  v12 = *(v3 + 84);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  v13 = *(v3 + 148);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v14 = *(v3 + 92);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = *(v3 + 88);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  v16 = *(v3 + 136);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 192);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 192);
  if ((v4 & 4) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  v17 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 2) == 0)
  {
LABEL_14:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  v18 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x80) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  v19 = *(v3 + 68);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 156));
  v4 = *(v3 + 192);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = *(v3 + 144);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x4000) == 0)
  {
LABEL_18:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 192);
  if ((v4 & 0x400000) == 0)
  {
LABEL_19:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 192);
  if ((v4 & 0x200000) == 0)
  {
LABEL_20:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 124));
  v4 = *(v3 + 192);
  if ((v4 & 0x800000) == 0)
  {
LABEL_21:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 132));
  v4 = *(v3 + 192);
  if ((v4 & 0x10) == 0)
  {
LABEL_22:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(v3 + 180);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  v23 = *(v3 + 160);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x100000) == 0)
  {
LABEL_25:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  v24 = *(v3 + 120);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 192);
  if ((v4 & 0x80000) == 0)
  {
LABEL_26:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_67:
  v25 = *(v3 + 116);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 192) & 0x40000) != 0)
  {
LABEL_27:
    v5 = *(v3 + 112);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_28:
  v6 = *(v3 + 32);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 192);
  if ((v7 & 0x400) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 80));
    v7 = *(v3 + 192);
    if ((v7 & 0x200) == 0)
    {
LABEL_32:
      if ((v7 & 0x2000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_71;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  this = PB::Writer::write(a2, *(v3 + 76));
  v7 = *(v3 + 192);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v7 & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::write(a2, *(v3 + 140));
  v7 = *(v3 + 192);
  if ((v7 & 0x1000000000) == 0)
  {
LABEL_34:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v26 = *(v3 + 184);
  this = PB::Writer::writeVarInt(a2);
  v7 = *(v3 + 192);
  if ((v7 & 0x20) == 0)
  {
LABEL_35:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  v27 = *(v3 + 56);
  this = PB::Writer::writeVarInt(a2);
  v7 = *(v3 + 192);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  v28 = *(v3 + 152);
  this = PB::Writer::writeVarInt(a2);
  v7 = *(v3 + 192);
  if ((v7 & 0x2000000000) == 0)
  {
LABEL_37:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_76;
  }

LABEL_75:
  v29 = *(v3 + 188);
  this = PB::Writer::writeVarInt(a2);
  v7 = *(v3 + 192);
  if ((v7 & 0x40) == 0)
  {
LABEL_38:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_76:
  v30 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v7 = *(v3 + 192);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_39:
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = PB::Writer::write(a2, *(v3 + 164));
  v7 = *(v3 + 192);
  if ((v7 & 0x100000000) == 0)
  {
LABEL_40:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_79:
    this = PB::Writer::write(a2, *(v3 + 172));
    if ((*(v3 + 192) & 0x400000000) == 0)
    {
      return this;
    }

    goto LABEL_80;
  }

LABEL_78:
  this = PB::Writer::write(a2, *(v3 + 168));
  v7 = *(v3 + 192);
  if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_79;
  }

LABEL_41:
  if ((v7 & 0x400000000) == 0)
  {
    return this;
  }

LABEL_80:
  v31 = *(v3 + 176);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::VehicularFlagsData::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 20) & 0x10) != 0)
  {
    if ((*(a2 + 20) & 0x10) == 0 || *(a1 + 15) != *(a2 + 15))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if ((*(a2 + 20) & 8) == 0 || *(a1 + 14) != *(a2 + 14))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 20) & 0x20) != 0)
  {
    if ((*(a2 + 20) & 0x20) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if ((*(a2 + 20) & 4) == 0 || *(a1 + 13) != *(a2 + 13))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 1) == 0;
  if (*(a1 + 20))
  {
    return (*(a2 + 20) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

unint64_t CMMsl::MotionStateUpdate::hash_value(CMMsl::MotionStateUpdate *this)
{
  v1 = this;
  v2 = *(this + 24);
  if ((v2 & 0x8000) != 0)
  {
    v3 = *(this + 25);
    if ((v2 & 0x100) != 0)
    {
LABEL_3:
      v4 = *(this + 18);
      if ((v2 & 0x10000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((v2 & 0x10000) != 0)
  {
LABEL_4:
    v5 = *(this + 26);
    if ((v2 & 0x20000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  v5 = 0;
  if ((v2 & 0x20000) != 0)
  {
LABEL_5:
    v6 = *(this + 27);
    if ((v2 & 0x800) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  v6 = 0;
  if ((v2 & 0x800) != 0)
  {
LABEL_6:
    v7 = *(this + 21);
    if ((v2 & 0x8000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  v7 = 0;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_7:
    v8 = *(this + 37);
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v8 = 0;
  if ((v2 & 0x2000) != 0)
  {
LABEL_8:
    v9 = *(this + 23);
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  v9 = 0;
  if ((v2 & 0x1000) != 0)
  {
LABEL_9:
    v10 = *(this + 22);
    if ((v2 & 0x1000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  v10 = 0;
  if ((v2 & 0x1000000) != 0)
  {
LABEL_10:
    v11 = *(this + 34);
    if ((v2 & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_54:
    v12 = 0;
    if (v2)
    {
      goto LABEL_15;
    }

LABEL_55:
    v13 = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_53:
  v11 = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_54;
  }

LABEL_11:
  if (*(this + 5) == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 5);
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  if (*(this + 1) == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(this + 1);
  }

  if ((v2 & 4) != 0)
  {
LABEL_19:
    v14 = *(this + 3);
    if ((v2 & 2) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  v14 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_20:
    v15 = *(this + 2);
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  v15 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_21:
    v16 = *(this + 17);
    if ((v2 & 0x20000000) != 0)
    {
      goto LABEL_22;
    }

LABEL_59:
    v18 = 0;
    if ((v2 & 0x4000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_58:
  v16 = 0;
  if ((v2 & 0x20000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_22:
  v17 = *(this + 39);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = LODWORD(v17);
  }

  if ((v2 & 0x4000000) != 0)
  {
LABEL_26:
    v71 = *(this + 36);
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_27;
    }

LABEL_61:
    v70 = 0;
    if ((v2 & 0x400000) != 0)
    {
      goto LABEL_30;
    }

LABEL_62:
    v69 = 0;
    if ((v2 & 0x200000) != 0)
    {
      goto LABEL_33;
    }

LABEL_63:
    v68 = 0;
    if ((v2 & 0x800000) != 0)
    {
      goto LABEL_36;
    }

LABEL_64:
    v67 = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_65;
  }

LABEL_60:
  v71 = 0;
  if ((v2 & 0x4000) == 0)
  {
    goto LABEL_61;
  }

LABEL_27:
  v19 = *(this + 24);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  v70 = v20;
  if ((v2 & 0x400000) == 0)
  {
    goto LABEL_62;
  }

LABEL_30:
  v21 = *(this + 32);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  v69 = v22;
  if ((v2 & 0x200000) == 0)
  {
    goto LABEL_63;
  }

LABEL_33:
  v23 = *(this + 31);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  v68 = v24;
  if ((v2 & 0x800000) == 0)
  {
    goto LABEL_64;
  }

LABEL_36:
  v25 = *(this + 33);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  v67 = v26;
  if ((v2 & 0x10) != 0)
  {
LABEL_39:
    v66 = *(this + 6);
    if ((v2 & 0x800000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_66;
  }

LABEL_65:
  v66 = 0;
  if ((v2 & 0x800000000) != 0)
  {
LABEL_40:
    v65 = *(this + 45);
    if ((v2 & 0x40000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_67;
  }

LABEL_66:
  v65 = 0;
  if ((v2 & 0x40000000) != 0)
  {
LABEL_41:
    v64 = *(this + 40);
    if ((v2 & 0x100000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_68;
  }

LABEL_67:
  v64 = 0;
  if ((v2 & 0x100000) != 0)
  {
LABEL_42:
    v63 = *(this + 30);
    if ((v2 & 0x80000) != 0)
    {
      goto LABEL_43;
    }

LABEL_69:
    v62 = 0;
    if ((v2 & 0x40000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_70;
  }

LABEL_68:
  v63 = 0;
  if ((v2 & 0x80000) == 0)
  {
    goto LABEL_69;
  }

LABEL_43:
  v62 = *(this + 29);
  if ((v2 & 0x40000) != 0)
  {
LABEL_44:
    v61 = *(this + 28);
    goto LABEL_71;
  }

LABEL_70:
  v61 = 0;
LABEL_71:
  v27 = *(this + 4);
  if (v27)
  {
    v57 = v8;
    v58 = v9;
    v28 = v3;
    v60 = v11;
    v29 = v4;
    v59 = v13;
    v30 = v5;
    v55 = v14;
    v56 = v16;
    v31 = v6;
    v32 = v15;
    v33 = v7;
    v34 = v12;
    v35 = v1;
    v27 = CMMsl::VehicularFlagsData::hash_value(v27);
    v1 = v35;
    v12 = v34;
    v7 = v33;
    v15 = v32;
    v6 = v31;
    v14 = v55;
    v16 = v56;
    v5 = v30;
    v4 = v29;
    v9 = v58;
    v13 = v59;
    v11 = v60;
    v3 = v28;
    v8 = v57;
  }

  if ((v2 & 0x400) == 0)
  {
    v36 = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_75;
    }

LABEL_99:
    v38 = 0;
    if ((v2 & 0x2000000) != 0)
    {
      goto LABEL_78;
    }

LABEL_100:
    v40 = 0;
    if ((v2 & 0x1000000000) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_101;
  }

  v53 = *(v1 + 20);
  v36 = LODWORD(v53);
  if (v53 == 0.0)
  {
    v36 = 0;
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_99;
  }

LABEL_75:
  v37 = *(v1 + 19);
  v38 = LODWORD(v37);
  if (v37 == 0.0)
  {
    v38 = 0;
  }

  if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_78:
  v39 = *(v1 + 35);
  v40 = LODWORD(v39);
  if (v39 == 0.0)
  {
    v40 = 0;
  }

  if ((v2 & 0x1000000000) != 0)
  {
LABEL_81:
    v41 = *(v1 + 46);
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_102;
  }

LABEL_101:
  v41 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_82:
    v42 = *(v1 + 7);
    if ((v2 & 0x10000000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_103;
  }

LABEL_102:
  v42 = 0;
  if ((v2 & 0x10000000) != 0)
  {
LABEL_83:
    v43 = *(v1 + 38);
    if ((v2 & 0x2000000000) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_104;
  }

LABEL_103:
  v43 = 0;
  if ((v2 & 0x2000000000) != 0)
  {
LABEL_84:
    v44 = *(v1 + 47);
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_105;
  }

LABEL_104:
  v44 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_85:
    v45 = *(v1 + 16);
    if ((v2 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

LABEL_106:
    v47 = 0;
    if ((v2 & 0x100000000) != 0)
    {
      goto LABEL_89;
    }

LABEL_107:
    v49 = 0;
    if ((v2 & 0x200000000) != 0)
    {
      goto LABEL_92;
    }

    goto LABEL_108;
  }

LABEL_105:
  v45 = 0;
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_106;
  }

LABEL_86:
  v46 = *(v1 + 41);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  if ((v2 & 0x100000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_89:
  v48 = *(v1 + 42);
  v49 = LODWORD(v48);
  if (v48 == 0.0)
  {
    v49 = 0;
  }

  if ((v2 & 0x200000000) != 0)
  {
LABEL_92:
    v50 = *(v1 + 43);
    v51 = LODWORD(v50);
    if (v50 == 0.0)
    {
      v51 = 0;
    }

    if ((v2 & 0x400000000) != 0)
    {
      goto LABEL_95;
    }

LABEL_109:
    v52 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v18 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v27 ^ v36 ^ v38 ^ v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v47 ^ v49 ^ v51 ^ v52;
  }

LABEL_108:
  v51 = 0;
  if ((v2 & 0x400000000) == 0)
  {
    goto LABEL_109;
  }

LABEL_95:
  v52 = *(v1 + 44);
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v18 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v27 ^ v36 ^ v38 ^ v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v47 ^ v49 ^ v51 ^ v52;
}

uint64_t CMMsl::MotionStateUpdate::makeVehicularFlags(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

void CMMsl::MotionWifiAssociation::~MotionWifiAssociation(CMMsl::MotionWifiAssociation *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MotionWifiAssociation::MotionWifiAssociation(uint64_t this, const CMMsl::MotionWifiAssociation *a2)
{
  *this = &unk_286C21ED8;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::MotionWifiAssociation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C21ED8;
    v3 = *(a2 + 8);
    v4 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12) & 1;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v7 = &unk_286C21ED8;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::MotionWifiAssociation *a2, CMMsl::MotionWifiAssociation *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::MotionWifiAssociation::formatText(CMMsl::MotionWifiAssociation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 8);
    PB::TextFormatter::format(a2, "isWifiAssociated");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionWifiAssociation::readFrom(CMMsl::MotionWifiAssociation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
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
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v23 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v22 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v23 = v22 != 0;
        }

        *(this + 8) = v23;
      }

      else
      {
LABEL_22:
        if (!PB::Reader::skip(a2))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
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
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t CMMsl::MotionWifiAssociation::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t CMMsl::MotionWifiAssociation::hash_value(CMMsl::MotionWifiAssociation *this)
{
  if (*(this + 12))
  {
    return *(this + 8);
  }

  else
  {
    return 0;
  }
}

void CMMsl::MotionWifiLocation::~MotionWifiLocation(CMMsl::MotionWifiLocation *this)
{
  v2 = *(this + 1);
  *this = &unk_286C21F10;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::MotionWifiLocation::~MotionWifiLocation(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::MotionWifiLocation::MotionWifiLocation(void *this, const CMMsl::MotionWifiLocation *a2)
{
  *this = &unk_286C21F10;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::MotionWifiLocation *CMMsl::MotionWifiLocation::operator=(const CMMsl::MotionWifiLocation *a1, const CMMsl::MotionWifiLocation *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionWifiLocation::MotionWifiLocation(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::MotionWifiLocation::~MotionWifiLocation(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::MotionWifiLocation *a2, CMMsl::MotionWifiLocation *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::MotionWifiLocation::MotionWifiLocation(void *a1, uint64_t a2)
{
  *a1 = &unk_286C21F10;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C21F10;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::MotionWifiLocation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C21F10;
    v6[1] = v4;
    CMMsl::MotionWifiLocation::~MotionWifiLocation(v6);
  }

  return a1;
}

uint64_t CMMsl::MotionWifiLocation::formatText(CMMsl::MotionWifiLocation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionWifiLocation::readFrom(CMMsl::MotionWifiLocation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}