CMMsl *CMMsl::FitnessMachineSample::operator=(CMMsl *a1, const CMMsl::FitnessMachineSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::FitnessMachineSample::FitnessMachineSample(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FitnessMachineSample *a2, CMMsl::FitnessMachineSample *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  LODWORD(v6) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v6;
  LODWORD(v6) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v6;
  LODWORD(v6) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v6;
  LODWORD(v6) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v6;
  v7 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v8;
  LODWORD(v6) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v6;
  LODWORD(v6) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v6;
  LODWORD(v6) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  LODWORD(v6) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v6;
  LODWORD(v6) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  LODWORD(v6) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v6;
  LODWORD(v6) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v6;
  LODWORD(v6) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v6;
  LODWORD(v6) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v6;
  LODWORD(v6) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v6;
  LODWORD(v6) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LODWORD(v6) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v6;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  return result;
}

float CMMsl::FitnessMachineSample::FitnessMachineSample(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1FFC8;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

CMMsl *CMMsl::FitnessMachineSample::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FitnessMachineSample::FitnessMachineSample(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FitnessMachineSample::formatText(CMMsl::FitnessMachineSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "averageCadence", *(this + 8));
    v5 = *(this + 28);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "averageHeartRate", *(this + 9));
  v5 = *(this + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "averagePace", *(this + 10));
  v5 = *(this + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "averagePower", *(this + 11));
  v5 = *(this + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "averageSpeed", *(this + 12));
  v5 = *(this + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "crossTrainerDistance", *(this + 13));
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "elapsedTime", *(this + 1));
  v5 = *(this + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "elevationGain", *(this + 14));
  v5 = *(this + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "energy", *(this + 15));
  v5 = *(this + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  v6 = *(this + 16);
  PB::TextFormatter::format(a2, "floors");
  v5 = *(this + 28);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "globalMachtime", *(this + 2));
  v5 = *(this + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "inclination", *(this + 17));
  v5 = *(this + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "indoorBikeDistance", *(this + 18));
  v5 = *(this + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "instantaneousCadence", *(this + 19));
  v5 = *(this + 28);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "instantaneousHeartRate", *(this + 20));
  v5 = *(this + 28);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "instantaneousPace", *(this + 21));
  v5 = *(this + 28);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "instantaneousPower", *(this + 22));
  v5 = *(this + 28);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "instantaneousSpeed", *(this + 23));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "localMachtime", *(this + 3));
  v5 = *(this + 28);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "resistanceLevel", *(this + 24));
  v5 = *(this + 28);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  v7 = *(this + 25);
  PB::TextFormatter::format(a2, "stepCount");
  v5 = *(this + 28);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "strideCount", *(this + 26));
  if ((*(this + 28) & 0x400000) != 0)
  {
LABEL_24:
    PB::TextFormatter::format(a2, "treadmillDistance", *(this + 27));
  }

LABEL_25:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FitnessMachineSample::readFrom(CMMsl::FitnessMachineSample *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_132:
    v52 = v4 ^ 1;
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
        goto LABEL_132;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 28) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_61;
        case 2u:
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_61;
        case 3u:
          *(this + 28) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_61:
          v2 = *(a2 + 1) + 8;
          goto LABEL_117;
        case 4u:
          *(this + 28) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_116;
        case 5u:
          *(this + 28) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 27) = *(*a2 + v2);
          goto LABEL_116;
        case 6u:
          *(this + 28) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_116;
        case 7u:
          *(this + 28) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_116;
        case 8u:
          *(this + 28) |= 0x800u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v38 = 0;
            v39 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v40 = (v23 + v22);
            v41 = v2 - v22;
            v42 = v22 + 1;
            while (1)
            {
              if (!v41)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_126;
              }

              v43 = v42;
              v44 = *v40;
              *(a2 + 1) = v43;
              v26 |= (v44 & 0x7F) << v38;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              ++v40;
              --v41;
              v42 = v43 + 1;
              v14 = v39++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_125:
                v2 = v43;
                goto LABEL_126;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_125;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_126;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_126:
          *(this + 16) = v26;
          break;
        case 9u:
          *(this + 28) |= 0x100000u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v45 = 0;
            v46 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v47 = (v31 + v30);
            v48 = v2 - v30;
            v49 = v30 + 1;
            while (1)
            {
              if (!v48)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_130;
              }

              v50 = v49;
              v51 = *v47;
              *(a2 + 1) = v50;
              v34 |= (v51 & 0x7F) << v45;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              ++v47;
              --v48;
              v49 = v50 + 1;
              v14 = v46++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_129:
                v2 = v50;
                goto LABEL_130;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_129;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_130;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_130:
          *(this + 25) = v34;
          break;
        case 0xAu:
          *(this + 28) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_116;
        case 0xBu:
          *(this + 28) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_116;
        case 0xCu:
          *(this + 28) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_116;
        case 0xDu:
          *(this + 28) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_116;
        case 0xEu:
          *(this + 28) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_116;
        case 0xFu:
          *(this + 28) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_116;
        case 0x10u:
          *(this + 28) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_116;
        case 0x11u:
          *(this + 28) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_116;
        case 0x12u:
          *(this + 28) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_116;
        case 0x13u:
          *(this + 28) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_116;
        case 0x14u:
          *(this + 28) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_116;
        case 0x15u:
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_116;
        case 0x16u:
          *(this + 28) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_98;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_116;
        case 0x17u:
          *(this + 28) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_98:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 9) = *(*a2 + v2);
LABEL_116:
            v2 = *(a2 + 1) + 4;
LABEL_117:
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_118:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_132;
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
        goto LABEL_132;
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
      goto LABEL_118;
    }

    v52 = 0;
  }

  return v52 & 1;
}

uint64_t CMMsl::FitnessMachineSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 112);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 112);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 112);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 112);
  if ((v4 & 0x400000) == 0)
  {
LABEL_6:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 108));
  v4 = *(v3 + 112);
  if ((v4 & 0x2000) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 112);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_9:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v5 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 112);
  if ((v4 & 0x100000) == 0)
  {
LABEL_10:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v6 = *(v3 + 100);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 112);
  if ((v4 & 0x200000) == 0)
  {
LABEL_11:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 112);
  if ((v4 & 0x40000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 92));
  v4 = *(v3 + 112);
  if ((v4 & 0x80) == 0)
  {
LABEL_13:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 112);
  if ((v4 & 0x10000) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 84));
  v4 = *(v3 + 112);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 112);
  if ((v4 & 0x1000) == 0)
  {
LABEL_17:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 112);
  if ((v4 & 0x80000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 112);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 112);
  if ((v4 & 0x40) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 112);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 112);
  if ((v4 & 8) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

LABEL_46:
    this = PB::Writer::write(a2, *(v3 + 80));
    if ((*(v3 + 112) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_47;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 112);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_47:
  v7 = *(v3 + 36);

  return PB::Writer::write(a2, v7);
}

BOOL CMMsl::FitnessMachineSample::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a2 + 112);
  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 112) & 0x10) == 0;
  if ((v2 & 0x10) != 0)
  {
    return (v3 & 0x10) != 0 && *(a1 + 36) == *(a2 + 36);
  }

  return v4;
}

uint64_t CMMsl::FitnessMachineSample::hash_value(CMMsl::FitnessMachineSample *this)
{
  v1 = *(this + 28);
  if ((v1 & 4) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_47:
    v3 = 0.0;
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_48:
    v4 = 0.0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_9;
    }

LABEL_49:
    v6 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_12;
    }

LABEL_50:
    v8 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_15;
    }

LABEL_51:
    v10 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_18;
    }

LABEL_52:
    v12 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_47;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_6:
  v4 = *(this + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_49;
  }

LABEL_9:
  v5 = *(this + 15);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_50;
  }

LABEL_12:
  v7 = *(this + 27);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_51;
  }

LABEL_15:
  v9 = *(this + 18);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_52;
  }

LABEL_18:
  v11 = *(this + 13);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x800) != 0)
  {
LABEL_21:
    v13 = *(this + 16);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v13 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_22:
    v14 = *(this + 25);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_23;
    }

LABEL_55:
    v16 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_26;
    }

LABEL_56:
    v18 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_29;
    }

LABEL_57:
    v20 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_32;
    }

LABEL_58:
    v22 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_35;
    }

LABEL_59:
    v24 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_60;
  }

LABEL_54:
  v14 = 0;
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_55;
  }

LABEL_23:
  v15 = *(this + 26);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_56;
  }

LABEL_26:
  v17 = *(this + 23);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_57;
  }

LABEL_29:
  v19 = *(this + 12);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_58;
  }

LABEL_32:
  v21 = *(this + 21);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_59;
  }

LABEL_35:
  v23 = *(this + 10);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x200) != 0)
  {
LABEL_38:
    v25 = *(this + 14);
    v26 = LODWORD(v25);
    if (v25 == 0.0)
    {
      v26 = 0;
    }

    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_41;
    }

LABEL_61:
    v28 = 0;
    goto LABEL_62;
  }

LABEL_60:
  v26 = 0;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_61;
  }

LABEL_41:
  v27 = *(this + 17);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

LABEL_62:
  if ((v1 & 0x80000) == 0)
  {
    v29 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_64;
    }

LABEL_85:
    v31 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_67;
    }

LABEL_86:
    v33 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_70;
    }

LABEL_87:
    v35 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_73;
    }

LABEL_88:
    v37 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_89;
  }

  v42 = *(this + 24);
  v29 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v29 = 0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_85;
  }

LABEL_64:
  v30 = *(this + 22);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_86;
  }

LABEL_67:
  v32 = *(this + 11);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_87;
  }

LABEL_70:
  v34 = *(this + 19);
  v35 = LODWORD(v34);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_88;
  }

LABEL_73:
  v36 = *(this + 8);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_76:
    v38 = *(this + 20);
    v39 = LODWORD(v38);
    if (v38 == 0.0)
    {
      v39 = 0;
    }

    if ((v1 & 0x10) != 0)
    {
      goto LABEL_79;
    }

LABEL_90:
    v41 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v13 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v31 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41;
  }

LABEL_89:
  v39 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_90;
  }

LABEL_79:
  v40 = *(this + 9);
  v41 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v13 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v31 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41;
}

uint64_t CMMsl::FlickControlParameters::FlickControlParameters(uint64_t this)
{
  *this = &unk_286C20000;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C20000;
  *(this + 28) = 0;
  return this;
}

void CMMsl::FlickControlParameters::~FlickControlParameters(CMMsl::FlickControlParameters *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::FlickControlParameters::FlickControlParameters(CMMsl::FlickControlParameters *this, const CMMsl::FlickControlParameters *a2)
{
  *this = &unk_286C20000;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 8) != 0)
  {
LABEL_5:
    result = *(a2 + 6);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 6) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 4);
    *(this + 28) = v3 | 2;
    *(this + 4) = result;
    return result;
  }

  result = *(a2 + 5);
  v3 |= 4u;
  *(this + 28) = v3;
  *(this + 5) = result;
  if ((*(a2 + 28) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::FlickControlParameters::operator=(uint64_t a1, const CMMsl::FlickControlParameters *a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickControlParameters::FlickControlParameters(&v8, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FlickControlParameters *a2, CMMsl::FlickControlParameters *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::FlickControlParameters::FlickControlParameters(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20000;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C20000;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::FlickControlParameters::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v12 = *(a1 + 28);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v6 = *(a2 + 24);
    v10[0] = &unk_286C20000;
    v10[1] = v5;
    v11 = *(a1 + 24);
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    *(a1 + 28) = v3;
    *(a1 + 24) = v6;
    *(a1 + 16) = v8;
    v10[2] = v7;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::FlickControlParameters::formatText(CMMsl::FlickControlParameters *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "maxSymmetryAllowanceFactor", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "minPeakRotationRateThresholdRps", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "minTwistAngleThresholdDeg", *(this + 6));
  if (*(this + 28))
  {
LABEL_5:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestampUs");
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FlickControlParameters::readFrom(CMMsl::FlickControlParameters *this, PB::Reader *a2)
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
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_40:
          *(a2 + 24) = 1;
          goto LABEL_56;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_50;
      }

      if (v22 == 4)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_40;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_50;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v33 = (v24 + v23);
          v34 = v2 - v23;
          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              v27 = 0;
              *(a2 + 24) = 1;
              goto LABEL_55;
            }

            v36 = v35;
            v37 = *v33;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_54;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_54:
          v2 = v36;
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
              v27 = 0;
              break;
            }
          }
        }

LABEL_55:
        *(this + 1) = v27;
        goto LABEL_56;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_40;
        }

        *(this + 6) = *(*a2 + v2);
LABEL_50:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_56;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_56:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::FlickControlParameters::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20));
      if ((*(v3 + 28) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v6 = *(v3 + 16);

  return PB::Writer::write(a2, v6);
}

BOOL CMMsl::FlickControlParameters::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    if ((*(a2 + 28) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) != 0)
  {
    return (*(a2 + 28) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::FlickControlParameters::hash_value(CMMsl::FlickControlParameters *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v3 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v1 = *(this + 1);
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = *(this + 6);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 4) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v7 = 0;
    return v3 ^ v1 ^ v5 ^ v7;
  }

LABEL_14:
  v5 = 0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v6 = *(this + 4);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7;
}

uint64_t CMMsl::FlickFPDetectorFeatures::FlickFPDetectorFeatures(uint64_t this)
{
  *this = &unk_286C20038;
  *(this + 52) = 0;
  return this;
}

{
  *this = &unk_286C20038;
  *(this + 52) = 0;
  return this;
}

void CMMsl::FlickFPDetectorFeatures::~FlickFPDetectorFeatures(CMMsl::FlickFPDetectorFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::FlickFPDetectorFeatures::FlickFPDetectorFeatures(CMMsl::FlickFPDetectorFeatures *this, const CMMsl::FlickFPDetectorFeatures *a2)
{
  *this = &unk_286C20038;
  *(this + 13) = 0;
  v2 = *(a2 + 26);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 26) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 26);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 26) & 0x200) != 0)
  {
LABEL_5:
    v5 = *(a2 + 48);
    v3 |= 0x200u;
    *(this + 26) = v3;
    *(this + 48) = v5;
    v2 = *(a2 + 26);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 4);
    v3 |= 2u;
    *(this + 26) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 26);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 5);
  v3 |= 4u;
  *(this + 26) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 26);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a2 + 6);
  v3 |= 8u;
  *(this + 26) = v3;
  *(this + 6) = v7;
  v2 = *(a2 + 26);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 26) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 26);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 26) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 26);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 26) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 26);
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      return result;
    }

LABEL_22:
    result = *(a2 + 11);
    *(this + 26) = v3 | 0x100;
    *(this + 11) = result;
    return result;
  }

LABEL_21:
  v8 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 26) = v3;
  *(this + 7) = v8;
  if ((*(a2 + 26) & 0x100) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t CMMsl::FlickFPDetectorFeatures::operator=(uint64_t a1, const CMMsl::FlickFPDetectorFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickFPDetectorFeatures::FlickFPDetectorFeatures(v10, a2);
    v3 = v13;
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    *(a1 + 16) = v12;
    *(a1 + 24) = v3;
    v6 = *(a1 + 52);
    *(a1 + 52) = v16;
    v16 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    LOBYTE(v7) = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v7;
    v12 = v4;
    v13 = v5;
    v8 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FlickFPDetectorFeatures *a2, CMMsl::FlickFPDetectorFeatures *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v9;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  return result;
}

float CMMsl::FlickFPDetectorFeatures::FlickFPDetectorFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20038;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 44);
  *(a1 + 44) = result;
  return result;
}

uint64_t CMMsl::FlickFPDetectorFeatures::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickFPDetectorFeatures::FlickFPDetectorFeatures(v10, a2);
    v3 = v13;
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    *(a1 + 16) = v12;
    *(a1 + 24) = v3;
    v6 = *(a1 + 52);
    *(a1 + 52) = v16;
    v16 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    LOBYTE(v7) = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v7;
    v12 = v4;
    v13 = v5;
    v8 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::FlickFPDetectorFeatures::formatText(CMMsl::FlickFPDetectorFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 26);
  if ((v5 & 0x200) != 0)
  {
    v7 = *(this + 48);
    PB::TextFormatter::format(a2, "deterministicAlgoDecisionBool");
    v5 = *(this + 26);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "fGyroXLatestGyroValleyIntegratedValueLeftZCToMaxima", *(this + 4));
  v5 = *(this + 26);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "fGyroXLatestGyroValleyValueRps", *(this + 5));
  v5 = *(this + 26);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(this + 6);
  PB::TextFormatter::format(a2, "fGyroXNumPeaksInLast5sCount");
  v5 = *(this + 26);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(this + 7);
  PB::TextFormatter::format(a2, "fGyroXNumValleysInLast2s");
  v5 = *(this + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "fScreenTiltAngle2sLast", *(this + 8));
  v5 = *(this + 26);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "fWristAngleToHorizontal2sFirst", *(this + 9));
  v5 = *(this + 26);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "fWristAngleToHorizontal2sFirstToLast", *(this + 10));
  v5 = *(this + 26);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "fWristAngleToHorizontal2sLast", *(this + 11));
  if (*(this + 26))
  {
LABEL_11:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestampUs");
  }

LABEL_12:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FlickFPDetectorFeatures::readFrom(CMMsl::FlickFPDetectorFeatures *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 5)
    {
      if (v22 <= 7)
      {
        if (v22 == 6)
        {
          *(this + 26) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_66:
            *(a2 + 24) = 1;
            goto LABEL_117;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_101;
        }

        if (v22 == 7)
        {
          *(this + 26) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_101;
        }
      }

      else
      {
        switch(v22)
        {
          case 8:
            *(this + 26) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_66;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_101;
          case 9:
            *(this + 26) |= 0x10u;
            v41 = *(a2 + 1);
            v2 = *(a2 + 2);
            v42 = *a2;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v63 = 0;
              v64 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(a2 + 1);
              }

              v65 = (v42 + v41);
              v66 = v2 - v41;
              v67 = v41 + 1;
              while (1)
              {
                if (!v66)
                {
                  LODWORD(v45) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_116;
                }

                v68 = v67;
                v69 = *v65;
                *(a2 + 1) = v68;
                v45 |= (v69 & 0x7F) << v63;
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
                  LODWORD(v45) = 0;
                  goto LABEL_115;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v45) = 0;
              }

LABEL_115:
              v2 = v68;
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v46 = (v42 + v41);
              v47 = v41 + 1;
              while (1)
              {
                v2 = v47;
                *(a2 + 1) = v47;
                v48 = *v46++;
                v45 |= (v48 & 0x7F) << v43;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                ++v47;
                v14 = v44++ > 8;
                if (v14)
                {
                  LODWORD(v45) = 0;
                  break;
                }
              }
            }

LABEL_116:
            *(this + 7) = v45;
            goto LABEL_117;
          case 0xA:
            *(this + 26) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_66;
            }

            *(this + 11) = *(*a2 + v2);
            goto LABEL_101;
        }
      }
    }

    else if (v22 <= 2)
    {
      if (v22 == 1)
      {
        *(this + 26) |= 1u;
        v33 = *(a2 + 1);
        v2 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
        {
          v49 = 0;
          v50 = 0;
          v37 = 0;
          if (v2 <= v33)
          {
            v2 = *(a2 + 1);
          }

          v51 = (v34 + v33);
          v52 = v2 - v33;
          v53 = v33 + 1;
          while (1)
          {
            if (!v52)
            {
              v37 = 0;
              *(a2 + 24) = 1;
              goto LABEL_108;
            }

            v54 = v53;
            v55 = *v51;
            *(a2 + 1) = v54;
            v37 |= (v55 & 0x7F) << v49;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            ++v51;
            --v52;
            v53 = v54 + 1;
            v14 = v50++ > 8;
            if (v14)
            {
              v37 = 0;
              goto LABEL_107;
            }
          }

          if (*(a2 + 24))
          {
            v37 = 0;
          }

LABEL_107:
          v2 = v54;
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
              v37 = 0;
              break;
            }
          }
        }

LABEL_108:
        *(this + 1) = v37;
        goto LABEL_117;
      }

      if (v22 == 2)
      {
        *(this + 26) |= 0x200u;
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

        *(this + 48) = v32;
        goto LABEL_117;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 26) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_101;
        case 4:
          *(this + 26) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_101:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_117;
        case 5:
          *(this + 26) |= 8u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v58 = (v24 + v23);
            v59 = v2 - v23;
            v60 = v23 + 1;
            while (1)
            {
              if (!v59)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v61 = v60;
              v62 = *v58;
              *(a2 + 1) = v61;
              v27 |= (v62 & 0x7F) << v56;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              ++v58;
              --v59;
              v60 = v61 + 1;
              v14 = v57++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_111;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_111:
            v2 = v61;
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

LABEL_112:
          *(this + 6) = v27;
          goto LABEL_117;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v70 = 0;
      return v70 & 1;
    }

    v2 = *(a2 + 1);
LABEL_117:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t CMMsl::FlickFPDetectorFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 52);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 52) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 48);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 52);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v8 = *(v3 + 28);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 52) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 52);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x100) == 0)
  {
    return this;
  }

LABEL_21:
  v9 = *(v3 + 44);

  return PB::Writer::write(a2, v9);
}

BOOL CMMsl::FlickFPDetectorFeatures::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  v3 = *(a2 + 52);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x200) != 0)
  {
    if ((*(a2 + 52) & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x100) == 0;
  if ((*(a1 + 52) & 0x100) != 0)
  {
    return (*(a2 + 52) & 0x100) != 0 && *(a1 + 44) == *(a2 + 44);
  }

  return v4;
}

uint64_t CMMsl::FlickFPDetectorFeatures::hash_value(CMMsl::FlickFPDetectorFeatures *this)
{
  v1 = *(this + 26);
  if (v1)
  {
    v2 = *(this + 1);
    if ((*(this + 26) & 0x200) != 0)
    {
LABEL_3:
      v3 = *(this + 48);
      if ((v1 & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_26:
      v5 = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_7;
      }

LABEL_27:
      v7 = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 26) & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_27;
  }

LABEL_7:
  v6 = *(this + 5);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_10:
    v8 = *(this + 6);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v10 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    v12 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_31:
    v14 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_28:
  v8 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  v9 = *(this + 8);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  v11 = *(this + 9);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  v13 = *(this + 10);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_20:
    v15 = *(this + 7);
    if ((*(this + 26) & 0x100) != 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v17 = 0;
    return v3 ^ v2 ^ v5 ^ v7 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v17;
  }

LABEL_32:
  v15 = 0;
  if ((*(this + 26) & 0x100) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v16 = *(this + 11);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  return v3 ^ v2 ^ v5 ^ v7 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v17;
}

uint64_t CMMsl::FlickFeatures::FlickFeatures(uint64_t this)
{
  *this = &unk_286C20070;
  *(this + 100) = 0;
  return this;
}

{
  *this = &unk_286C20070;
  *(this + 100) = 0;
  return this;
}

void CMMsl::FlickFeatures::~FlickFeatures(CMMsl::FlickFeatures *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::FlickFeatures::FlickFeatures(uint64_t this, const CMMsl::FlickFeatures *a2)
{
  *this = &unk_286C20070;
  *(this + 100) = 0;
  v2 = *(a2 + 25);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 100) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 25);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 8u;
    *(this + 100) = v3;
    *(this + 32) = v5;
    v2 = *(a2 + 25);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 15);
    v3 |= 0x400u;
    *(this + 100) = v3;
    *(this + 60) = v6;
    v2 = *(a2 + 25);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 2);
  v3 |= 2u;
  *(this + 100) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 25);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(a2 + 10);
  v3 |= 0x20u;
  *(this + 100) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 25);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 100) = v3;
  *(this + 8) = v9;
  v2 = *(a2 + 25);
  if ((v2 & 0x1000) == 0)
  {
LABEL_11:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = *(a2 + 17);
  v3 |= 0x1000u;
  *(this + 100) = v3;
  *(this + 68) = v10;
  v2 = *(a2 + 25);
  if ((v2 & 0x800) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(a2 + 16);
  v3 |= 0x800u;
  *(this + 100) = v3;
  *(this + 64) = v11;
  v2 = *(a2 + 25);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = *(a2 + 12);
  v3 |= 0x80u;
  *(this + 100) = v3;
  *(this + 48) = v12;
  v2 = *(a2 + 25);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = *(a2 + 11);
  v3 |= 0x40u;
  *(this + 100) = v3;
  *(this + 44) = v13;
  v2 = *(a2 + 25);
  if ((v2 & 0x2000) == 0)
  {
LABEL_15:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = *(a2 + 18);
  v3 |= 0x2000u;
  *(this + 100) = v3;
  *(this + 72) = v14;
  v2 = *(a2 + 25);
  if ((v2 & 0x100) == 0)
  {
LABEL_16:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = *(a2 + 13);
  v3 |= 0x100u;
  *(this + 100) = v3;
  *(this + 52) = v15;
  v2 = *(a2 + 25);
  if ((v2 & 0x40000) == 0)
  {
LABEL_17:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = *(a2 + 23);
  v3 |= 0x40000u;
  *(this + 100) = v3;
  *(this + 92) = v16;
  v2 = *(a2 + 25);
  if ((v2 & 0x20000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = *(a2 + 22);
  v3 |= 0x20000u;
  *(this + 100) = v3;
  *(this + 88) = v17;
  v2 = *(a2 + 25);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = *(a2 + 14);
  v3 |= 0x200u;
  *(this + 100) = v3;
  *(this + 56) = v18;
  v2 = *(a2 + 25);
  if ((v2 & 0x10) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = *(a2 + 9);
  v3 |= 0x10u;
  *(this + 100) = v3;
  *(this + 36) = v19;
  v2 = *(a2 + 25);
  if ((v2 & 0x10000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = *(a2 + 21);
  v3 |= 0x10000u;
  *(this + 100) = v3;
  *(this + 84) = v20;
  v2 = *(a2 + 25);
  if ((v2 & 0x8000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = *(a2 + 20);
  v3 |= 0x8000u;
  *(this + 100) = v3;
  *(this + 80) = v21;
  v2 = *(a2 + 25);
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x80000) == 0)
    {
      return this;
    }

LABEL_42:
    v23 = *(a2 + 96);
    *(this + 100) = v3 | 0x80000;
    *(this + 96) = v23;
    return this;
  }

LABEL_41:
  v22 = *(a2 + 19);
  v3 |= 0x4000u;
  *(this + 100) = v3;
  *(this + 76) = v22;
  if ((*(a2 + 25) & 0x80000) != 0)
  {
    goto LABEL_42;
  }

  return this;
}

CMMsl *CMMsl::FlickFeatures::operator=(CMMsl *a1, const CMMsl::FlickFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickFeatures::FlickFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FlickFeatures *a2, CMMsl::FlickFeatures *a3)
{
  v3 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  LODWORD(v8) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v8;
  LODWORD(v8) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v8;
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  LODWORD(v8) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v9;
  v10 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v10;
  v11 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v11;
  v12 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v12;
  v13 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v13;
  v14 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v14;
  v15 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v15;
  v16 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v16;
  result = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = result;
  LOBYTE(v8) = *(this + 96);
  *(this + 96) = *(a2 + 96);
  *(a2 + 96) = v8;
  return result;
}

float CMMsl::FlickFeatures::FlickFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20070;
  *(a1 + 100) = *(a2 + 100);
  *(a2 + 100) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 76);
  *(a1 + 76) = result;
  *(a1 + 96) = *(a2 + 96);
  return result;
}

CMMsl *CMMsl::FlickFeatures::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickFeatures::FlickFeatures(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::FlickFeatures::formatText(CMMsl::FlickFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 25);
  if ((v5 & 8) != 0)
  {
    v6 = *(this + 8);
    PB::TextFormatter::format(a2, "dataBufferSize");
    v5 = *(this + 25);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "gestureLengthSeconds", *(this + 9));
  v5 = *(this + 25);
  if ((v5 & 0x80000) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(this + 96);
  PB::TextFormatter::format(a2, "isWristLooselyLevel");
  v5 = *(this + 25);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "negPeakHeight", *(this + 10));
  v5 = *(this + 25);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(this + 11);
  PB::TextFormatter::format(a2, "negPeakLeftHalfWidth");
  v5 = *(this + 25);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(this + 12);
  PB::TextFormatter::format(a2, "negPeakRightHalfWidth");
  v5 = *(this + 25);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(this + 1);
  PB::TextFormatter::format(a2, "negPeakTimestampUs");
  v5 = *(this + 25);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "negPeakTotalAngleDegrees", *(this + 13));
  v5 = *(this + 25);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "pauseBtwPeaksSeconds", *(this + 14));
  v5 = *(this + 25);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "posPeakHeight", *(this + 15));
  v5 = *(this + 25);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v11 = *(this + 16);
  PB::TextFormatter::format(a2, "posPeakLeftHalfWidth");
  v5 = *(this + 25);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v12 = *(this + 17);
  PB::TextFormatter::format(a2, "posPeakRightHalfWidth");
  v5 = *(this + 25);
  if ((v5 & 2) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v13 = *(this + 2);
  PB::TextFormatter::format(a2, "posPeakTimestampUs");
  v5 = *(this + 25);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "posPeakTotalAngleDegrees", *(this + 18));
  v5 = *(this + 25);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "rotZRangeDuringGestureRad", *(this + 19));
  v5 = *(this + 25);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "screenTiltAtEndDegrees", *(this + 20));
  v5 = *(this + 25);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "screenTiltAtStartDegrees", *(this + 21));
  v5 = *(this + 25);
  if ((v5 & 4) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = *(this + 3);
  PB::TextFormatter::format(a2, "timestampUs");
  v5 = *(this + 25);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "wristAngleDiffBtwPeaksDegrees", *(this + 22));
  if ((*(this + 25) & 0x40000) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(a2, "wristAngleToHorizontalDegrees", *(this + 23));
  }

LABEL_22:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FlickFeatures::readFrom(CMMsl::FlickFeatures *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_224:
    v144 = v4 ^ 1;
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
        goto LABEL_224;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 25) |= 4u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v109 = 0;
            v110 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v111 = (v23 + v22);
            v112 = v2 - v22;
            v113 = v22 + 1;
            while (1)
            {
              if (!v112)
              {
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_203;
              }

              v114 = v113;
              v115 = *v111;
              *(a2 + 1) = v114;
              v26 |= (v115 & 0x7F) << v109;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              ++v111;
              --v112;
              v113 = v114 + 1;
              v14 = v110++ > 8;
              if (v14)
              {
                v26 = 0;
LABEL_202:
                v2 = v114;
                goto LABEL_203;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

            goto LABEL_202;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_203;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          v26 = 0;
LABEL_203:
          *(this + 3) = v26;
          break;
        case 2u:
          *(this + 25) |= 8u;
          v54 = *(a2 + 1);
          v2 = *(a2 + 2);
          v55 = *a2;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v116 = 0;
            v117 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(a2 + 1);
            }

            v118 = (v55 + v54);
            v119 = v2 - v54;
            v120 = v54 + 1;
            while (1)
            {
              if (!v119)
              {
                LODWORD(v58) = 0;
                *(a2 + 24) = 1;
                goto LABEL_207;
              }

              v121 = v120;
              v122 = *v118;
              *(a2 + 1) = v121;
              v58 |= (v122 & 0x7F) << v116;
              if ((v122 & 0x80) == 0)
              {
                break;
              }

              v116 += 7;
              ++v118;
              --v119;
              v120 = v121 + 1;
              v14 = v117++ > 8;
              if (v14)
              {
                LODWORD(v58) = 0;
LABEL_206:
                v2 = v121;
                goto LABEL_207;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v58) = 0;
            }

            goto LABEL_206;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = (v55 + v54);
          v60 = v54 + 1;
          do
          {
            v2 = v60;
            *(a2 + 1) = v60;
            v61 = *v59++;
            v58 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_207;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          LODWORD(v58) = 0;
LABEL_207:
          *(this + 8) = v58;
          break;
        case 3u:
          *(this + 25) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_179;
        case 4u:
          *(this + 25) |= 2u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v95 = 0;
            v96 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v97 = (v39 + v38);
            v98 = v2 - v38;
            v99 = v38 + 1;
            while (1)
            {
              if (!v98)
              {
                v42 = 0;
                *(a2 + 24) = 1;
                goto LABEL_195;
              }

              v100 = v99;
              v101 = *v97;
              *(a2 + 1) = v100;
              v42 |= (v101 & 0x7F) << v95;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              ++v97;
              --v98;
              v99 = v100 + 1;
              v14 = v96++ > 8;
              if (v14)
              {
                v42 = 0;
LABEL_194:
                v2 = v100;
                goto LABEL_195;
              }
            }

            if (*(a2 + 24))
            {
              v42 = 0;
            }

            goto LABEL_194;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(a2 + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_195;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          v42 = 0;
LABEL_195:
          *(this + 2) = v42;
          break;
        case 5u:
          *(this + 25) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_179;
        case 6u:
          *(this + 25) |= 1u;
          v62 = *(a2 + 1);
          v2 = *(a2 + 2);
          v63 = *a2;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v123 = 0;
            v124 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(a2 + 1);
            }

            v125 = (v63 + v62);
            v126 = v2 - v62;
            v127 = v62 + 1;
            while (1)
            {
              if (!v126)
              {
                v66 = 0;
                *(a2 + 24) = 1;
                goto LABEL_211;
              }

              v128 = v127;
              v129 = *v125;
              *(a2 + 1) = v128;
              v66 |= (v129 & 0x7F) << v123;
              if ((v129 & 0x80) == 0)
              {
                break;
              }

              v123 += 7;
              ++v125;
              --v126;
              v127 = v128 + 1;
              v14 = v124++ > 8;
              if (v14)
              {
                v66 = 0;
LABEL_210:
                v2 = v128;
                goto LABEL_211;
              }
            }

            if (*(a2 + 24))
            {
              v66 = 0;
            }

            goto LABEL_210;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          do
          {
            v2 = v68;
            *(a2 + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              goto LABEL_211;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          v66 = 0;
LABEL_211:
          *(this + 1) = v66;
          break;
        case 7u:
          *(this + 25) |= 0x1000u;
          v70 = *(a2 + 1);
          v2 = *(a2 + 2);
          v71 = *a2;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v130 = 0;
            v131 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(a2 + 1);
            }

            v132 = (v71 + v70);
            v133 = v2 - v70;
            v134 = v70 + 1;
            while (1)
            {
              if (!v133)
              {
                LODWORD(v74) = 0;
                *(a2 + 24) = 1;
                goto LABEL_215;
              }

              v135 = v134;
              v136 = *v132;
              *(a2 + 1) = v135;
              v74 |= (v136 & 0x7F) << v130;
              if ((v136 & 0x80) == 0)
              {
                break;
              }

              v130 += 7;
              ++v132;
              --v133;
              v134 = v135 + 1;
              v14 = v131++ > 8;
              if (v14)
              {
                LODWORD(v74) = 0;
LABEL_214:
                v2 = v135;
                goto LABEL_215;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v74) = 0;
            }

            goto LABEL_214;
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = (v71 + v70);
          v76 = v70 + 1;
          do
          {
            v2 = v76;
            *(a2 + 1) = v76;
            v77 = *v75++;
            v74 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              goto LABEL_215;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          LODWORD(v74) = 0;
LABEL_215:
          *(this + 17) = v74;
          break;
        case 8u:
          *(this + 25) |= 0x800u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v102 = 0;
            v103 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v104 = (v47 + v46);
            v105 = v2 - v46;
            v106 = v46 + 1;
            while (1)
            {
              if (!v105)
              {
                LODWORD(v50) = 0;
                *(a2 + 24) = 1;
                goto LABEL_199;
              }

              v107 = v106;
              v108 = *v104;
              *(a2 + 1) = v107;
              v50 |= (v108 & 0x7F) << v102;
              if ((v108 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              ++v104;
              --v105;
              v106 = v107 + 1;
              v14 = v103++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_198:
                v2 = v107;
                goto LABEL_199;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_198;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(a2 + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_199;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_199:
          *(this + 16) = v50;
          break;
        case 9u:
          *(this + 25) |= 0x80u;
          v78 = *(a2 + 1);
          v2 = *(a2 + 2);
          v79 = *a2;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v2)
          {
            v137 = 0;
            v138 = 0;
            v82 = 0;
            if (v2 <= v78)
            {
              v2 = *(a2 + 1);
            }

            v139 = (v79 + v78);
            v140 = v2 - v78;
            v141 = v78 + 1;
            while (1)
            {
              if (!v140)
              {
                LODWORD(v82) = 0;
                *(a2 + 24) = 1;
                goto LABEL_219;
              }

              v142 = v141;
              v143 = *v139;
              *(a2 + 1) = v142;
              v82 |= (v143 & 0x7F) << v137;
              if ((v143 & 0x80) == 0)
              {
                break;
              }

              v137 += 7;
              ++v139;
              --v140;
              v141 = v142 + 1;
              v14 = v138++ > 8;
              if (v14)
              {
                LODWORD(v82) = 0;
LABEL_218:
                v2 = v142;
                goto LABEL_219;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v82) = 0;
            }

            goto LABEL_218;
          }

          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            v2 = v84;
            *(a2 + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_219;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          LODWORD(v82) = 0;
LABEL_219:
          *(this + 12) = v82;
          break;
        case 0xAu:
          *(this + 25) |= 0x40u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v88 = 0;
            v89 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v90 = (v31 + v30);
            v91 = v2 - v30;
            v92 = v30 + 1;
            while (1)
            {
              if (!v91)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_191;
              }

              v93 = v92;
              v94 = *v90;
              *(a2 + 1) = v93;
              v34 |= (v94 & 0x7F) << v88;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              ++v90;
              --v91;
              v92 = v93 + 1;
              v14 = v89++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_190:
                v2 = v93;
                goto LABEL_191;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_190;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_191;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_191:
          *(this + 11) = v34;
          break;
        case 0xBu:
          *(this + 25) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_179;
        case 0xCu:
          *(this + 25) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_179;
        case 0xDu:
          *(this + 25) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_179;
        case 0xEu:
          *(this + 25) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_179;
        case 0xFu:
          *(this + 25) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_179;
        case 0x10u:
          *(this + 25) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_179;
        case 0x11u:
          *(this + 25) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_179;
        case 0x12u:
          *(this + 25) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_102;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_179;
        case 0x13u:
          *(this + 25) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_102:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 19) = *(*a2 + v2);
LABEL_179:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          break;
        case 0x14u:
          *(this + 25) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v87 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v86 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v87 = v86 != 0;
          }

          *(this + 96) = v87;
          break;
        default:
          goto LABEL_17;
      }

LABEL_220:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_224;
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
        goto LABEL_224;
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
      goto LABEL_220;
    }

    v144 = 0;
  }

  return v144 & 1;
}

uint64_t CMMsl::FlickFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 100);
  if ((v4 & 4) != 0)
  {
    v5 = *(this + 24);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 100);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 100);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 100);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(v3 + 68);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x800) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v10 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = *(v3 + 44);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x2000) == 0)
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 100);
  if ((v4 & 0x100) == 0)
  {
LABEL_13:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 100);
  if ((v4 & 0x40000) == 0)
  {
LABEL_14:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 92));
  v4 = *(v3 + 100);
  if ((v4 & 0x20000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 100);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 100);
  if ((v4 & 0x10000) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 84));
  v4 = *(v3 + 100);
  if ((v4 & 0x8000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    this = PB::Writer::write(a2, *(v3 + 76));
    if ((*(v3 + 100) & 0x80000) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 100);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v4 & 0x80000) == 0)
  {
    return this;
  }

LABEL_41:
  v13 = *(v3 + 96);

  return PB::Writer::write(a2);
}

BOOL CMMsl::FlickFeatures::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 100);
  v3 = *(a2 + 100);
  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x80000) == 0;
  if ((v2 & 0x80000) != 0)
  {
    return (v3 & 0x80000) != 0 && *(a1 + 96) == *(a2 + 96);
  }

  return v4;
}

uint64_t CMMsl::FlickFeatures::hash_value(CMMsl::FlickFeatures *this)
{
  v1 = *(this + 25);
  if ((v1 & 4) != 0)
  {
    v2 = *(this + 3);
    if ((v1 & 8) != 0)
    {
LABEL_3:
      v3 = *(this + 8);
      if ((v1 & 0x400) != 0)
      {
        goto LABEL_4;
      }

LABEL_36:
      v5 = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_36;
  }

LABEL_4:
  v4 = *(this + 15);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = *(this + 2);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_38:
    v8 = 0;
    if (v1)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_37:
  v6 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_38;
  }

LABEL_8:
  v7 = *(this + 10);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if (v1)
  {
LABEL_11:
    v9 = *(this + 1);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v9 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_12:
    v10 = *(this + 17);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v10 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_13:
    v11 = *(this + 16);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v11 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v12 = *(this + 12);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v12 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_15:
    v13 = *(this + 11);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_16;
    }

LABEL_44:
    v15 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_19;
    }

LABEL_45:
    v17 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_46:
    v19 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_25;
    }

LABEL_47:
    v21 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_48;
  }

LABEL_43:
  v13 = 0;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  v14 = *(this + 18);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_45;
  }

LABEL_19:
  v16 = *(this + 13);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_46;
  }

LABEL_22:
  v18 = *(this + 23);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_47;
  }

LABEL_25:
  v20 = *(this + 22);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((v1 & 0x200) != 0)
  {
LABEL_28:
    v22 = *(this + 14);
    v23 = LODWORD(v22);
    if (v22 == 0.0)
    {
      v23 = 0;
    }

    if ((v1 & 0x10) != 0)
    {
      goto LABEL_31;
    }

LABEL_49:
    v25 = 0;
    goto LABEL_50;
  }

LABEL_48:
  v23 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_49;
  }

LABEL_31:
  v24 = *(this + 9);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

LABEL_50:
  if ((v1 & 0x10000) == 0)
  {
    v26 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_52;
    }

LABEL_62:
    v28 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_63;
  }

  v32 = *(this + 21);
  v26 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v26 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_62;
  }

LABEL_52:
  v27 = *(this + 20);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  if ((v1 & 0x4000) != 0)
  {
LABEL_55:
    v29 = *(this + 19);
    v30 = LODWORD(v29);
    if (v29 == 0.0)
    {
      v30 = 0;
    }

    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_58;
    }

LABEL_64:
    v31 = 0;
    return v3 ^ v2 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v25 ^ v26 ^ v28 ^ v30 ^ v31;
  }

LABEL_63:
  v30 = 0;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_64;
  }

LABEL_58:
  v31 = *(this + 96);
  return v3 ^ v2 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v25 ^ v26 ^ v28 ^ v30 ^ v31;
}

uint64_t CMMsl::FlickGesture::FlickGesture(uint64_t this)
{
  *this = &unk_286C200A8;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C200A8;
  *(this + 20) = 0;
  return this;
}

void CMMsl::FlickGesture::~FlickGesture(CMMsl::FlickGesture *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::FlickGesture::FlickGesture(uint64_t this, const CMMsl::FlickGesture *a2)
{
  *this = &unk_286C200A8;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::FlickGesture::operator=(uint64_t a1, const CMMsl::FlickGesture *a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickGesture::FlickGesture(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 16);
    LODWORD(v3) = *(a1 + 20);
    v5 = v10;
    *(a1 + 16) = v9;
    *(a1 + 20) = v5;
    v9 = v4;
    v10 = v3;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::FlickGesture *a2, CMMsl::FlickGesture *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t CMMsl::FlickGesture::FlickGesture(uint64_t result, uint64_t a2)
{
  *result = &unk_286C200A8;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = &unk_286C200A8;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::FlickGesture::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v8[0] = &unk_286C200A8;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    v6 = *(a1 + 20);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::FlickGesture::formatText(CMMsl::FlickGesture *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "state");
    v5 = *(this + 20);
  }

  if (v5)
  {
    v7 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FlickGesture::readFrom(CMMsl::FlickGesture *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
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
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_69;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v30 = *(a2 + 1);
        v2 = *(a2 + 2);
        v31 = *a2;
        if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
        {
          v45 = 0;
          v46 = 0;
          v34 = 0;
          if (v2 <= v30)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v47 = (v31 + v30);
          v48 = v3 - v30;
          v49 = v30 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v34) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v50 = v49;
            v51 = *v47;
            *(a2 + 1) = v50;
            v34 |= (v51 & 0x7F) << v45;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            ++v47;
            --v48;
            v49 = v50 + 1;
            v14 = v46++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v34) = 0;
          }

LABEL_63:
          v3 = v50;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          while (1)
          {
            v3 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 4) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v38 = 0;
          v39 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v40 = (v23 + v22);
          v41 = v3 - v22;
          v42 = v22 + 1;
          while (1)
          {
            if (!v41)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v43 = v42;
            v44 = *v40;
            *(a2 + 1) = v43;
            v26 |= (v44 & 0x7F) << v38;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            ++v40;
            --v41;
            v42 = v43 + 1;
            v14 = v39++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_59:
          v3 = v43;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v3 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              v26 = 0;
              break;
            }
          }
        }

LABEL_60:
        *(this + 1) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v52 = 0;
          return v52 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
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
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_69:
  v52 = v4 ^ 1;
  return v52 & 1;
}

uint64_t CMMsl::FlickGesture::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::FlickGesture::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::FlickGesture::hash_value(CMMsl::FlickGesture *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ v1;
}

void *CMMsl::FlickGyroMaxima::FlickGyroMaxima(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_286C200E0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_286C200E0;
  return this;
}

void CMMsl::FlickGyroMaxima::~FlickGyroMaxima(CMMsl::FlickGyroMaxima *this)
{
  v2 = *(this + 1);
  *this = &unk_286C200E0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::FlickGyroMaxima::~FlickGyroMaxima(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::FlickGyroMaxima::FlickGyroMaxima(uint64_t this, const CMMsl::FlickGyroMaxima *a2)
{
  *this = &unk_286C200E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 4);
    *(this + 20) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

const CMMsl::FlickGyroMaxima *CMMsl::FlickGyroMaxima::operator=(const CMMsl::FlickGyroMaxima *a1, const CMMsl::FlickGyroMaxima *a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickGyroMaxima::FlickGyroMaxima(v6, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v7;
    v7 = v3;
    v4 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v4;
    CMMsl::FlickGyroMaxima::~FlickGyroMaxima(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::FlickGyroMaxima *a2, CMMsl::FlickGyroMaxima *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t CMMsl::FlickGyroMaxima::FlickGyroMaxima(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C200E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t CMMsl::FlickGyroMaxima::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickGyroMaxima::FlickGyroMaxima(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::FlickGyroMaxima::~FlickGyroMaxima(v6);
  }

  return a1;
}

uint64_t CMMsl::FlickGyroMaxima::formatText(CMMsl::FlickGyroMaxima *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 20))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "axis");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FlickGyroMaxima::readFrom(CMMsl::FlickGyroMaxima *this, PB::Reader *a2)
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
        goto LABEL_47;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v33 = (v24 + v23);
          v18 = v22 >= v23;
          v34 = v22 - v23;
          if (!v18)
          {
            v34 = 0;
          }

          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v36 = *v33;
            *(a2 + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_38:
              LODWORD(v27) = 0;
              goto LABEL_42;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }
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
              goto LABEL_38;
            }
          }
        }

LABEL_42:
        *(this + 4) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

LABEL_22:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
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

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::FlickMaxima::FlickMaxima(uint64_t this)
{
  *this = &unk_286C20150;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C20150;
  *(this + 68) = 0;
  return this;
}

uint64_t CMMsl::FlickGyroMaxima::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::FlickGyroMaxima::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::FlickMaxima::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

BOOL CMMsl::FlickMaxima::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x100) != 0)
  {
    if ((*(a2 + 68) & 0x100) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x200) != 0)
  {
    if ((*(a2 + 68) & 0x200) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 52) == *(a2 + 52);
  }

  return v4;
}

unint64_t CMMsl::FlickGyroMaxima::hash_value(CMMsl::FlickGyroMaxima *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::FlickMaxima::hash_value(v2);
  }

  if (*(this + 20))
  {
    v3 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

uint64_t CMMsl::FlickGyroMaxima::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::FlickLPFDM6Data::FlickLPFDM6Data(uint64_t this)
{
  *this = &unk_286C20118;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C20118;
  *(this + 40) = 0;
  return this;
}

void CMMsl::FlickLPFDM6Data::~FlickLPFDM6Data(CMMsl::FlickLPFDM6Data *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::FlickLPFDM6Data::FlickLPFDM6Data(CMMsl::FlickLPFDM6Data *this, const CMMsl::FlickLPFDM6Data *a2)
{
  *this = &unk_286C20118;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 0x10) != 0)
  {
LABEL_5:
    result = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 40) = v3;
    *(this + 7) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 40) = v3;
    *(this + 8) = result;
    v2 = *(a2 + 40);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 40) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 40);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = *(a2 + 4);
  v3 |= 2u;
  *(this + 40) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_16:
    result = *(a2 + 6);
    *(this + 40) = v3 | 8;
    *(this + 6) = result;
    return result;
  }

LABEL_15:
  result = *(a2 + 5);
  v3 |= 4u;
  *(this + 40) = v3;
  *(this + 5) = result;
  if ((*(a2 + 40) & 8) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t CMMsl::FlickLPFDM6Data::operator=(uint64_t a1, const CMMsl::FlickLPFDM6Data *a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickLPFDM6Data::FlickLPFDM6Data(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FlickLPFDM6Data *a2, CMMsl::FlickLPFDM6Data *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::FlickLPFDM6Data::FlickLPFDM6Data(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20118;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C20118;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::FlickLPFDM6Data::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 8);
    v13 = *(a1 + 40);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[0] = &unk_286C20118;
    v10[1] = v5;
    v12 = *(a1 + 32);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    *(a1 + 40) = v3;
    *(a1 + 32) = v8;
    *(a1 + 16) = v7;
    v11 = v6;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::FlickLPFDM6Data::formatText(CMMsl::FlickLPFDM6Data *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "gravityXG", *(this + 4));
    v5 = *(this + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "gravityYG", *(this + 5));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "gravityZG", *(this + 6));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "omegaXRps", *(this + 7));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "omegaYRps", *(this + 8));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "omegaZRps", *(this + 9));
  if (*(this + 40))
  {
LABEL_8:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestampUs");
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FlickLPFDM6Data::readFrom(CMMsl::FlickLPFDM6Data *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 40) |= 1u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v31 = 0;
            v32 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v33 = (v24 + v23);
            v34 = v2 - v23;
            v35 = v23 + 1;
            while (1)
            {
              if (!v34)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_68;
              }

              v36 = v35;
              v37 = *v33;
              *(a2 + 1) = v36;
              v27 |= (v37 & 0x7F) << v31;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              ++v33;
              --v34;
              v35 = v36 + 1;
              v14 = v32++ > 8;
              if (v14)
              {
                v27 = 0;
                goto LABEL_67;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_67:
            v2 = v36;
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
                v27 = 0;
                break;
              }
            }
          }

LABEL_68:
          *(this + 1) = v27;
          goto LABEL_69;
        case 2:
          *(this + 40) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_53:
            *(a2 + 24) = 1;
            goto LABEL_69;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_63;
        case 3:
          *(this + 40) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_63;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 40) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_53;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_63;
      }

      if (v22 == 7)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_53;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_63;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 40) |= 0x40u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_53;
        }

        *(this + 9) = *(*a2 + v2);
        goto LABEL_63;
      }

      if (v22 == 5)
      {
        *(this + 40) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_53;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_63:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_69;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_69:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::FlickLPFDM6Data::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 20));
    if ((*(v3 + 40) & 8) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_15:
  v6 = *(v3 + 24);

  return PB::Writer::write(a2, v6);
}

BOOL CMMsl::FlickLPFDM6Data::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x40) != 0)
  {
    if ((*(a2 + 40) & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 8) == 0;
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*(a2 + 40) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::FlickLPFDM6Data::hash_value(CMMsl::FlickLPFDM6Data *this)
{
  if ((*(this + 40) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = 0;
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v5 = 0;
    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    v7 = 0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    v9 = 0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v1 = *(this + 1);
  if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = *(this + 7);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 40) & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  v4 = *(this + 8);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 40) & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  v6 = *(this + 9);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v8 = *(this + 4);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 40) & 4) != 0)
  {
LABEL_15:
    v10 = *(this + 5);
    v11 = LODWORD(v10);
    if (v10 == 0.0)
    {
      v11 = 0;
    }

    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_27:
    v13 = 0;
    return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13;
  }

LABEL_26:
  v11 = 0;
  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v12 = *(this + 6);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13;
}

void CMMsl::FlickMaxima::~FlickMaxima(CMMsl::FlickMaxima *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::FlickMaxima::FlickMaxima(CMMsl::FlickMaxima *this, const CMMsl::FlickMaxima *a2)
{
  *this = &unk_286C20150;
  *(this + 17) = 0;
  v2 = *(a2 + 34);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 34) = 16;
    *(this + 5) = v4;
    v2 = *(a2 + 34);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 34) & 0x100) != 0)
  {
LABEL_5:
    result = *(a2 + 15);
    v3 |= 0x100u;
    *(this + 34) = v3;
    *(this + 15) = result;
    v2 = *(a2 + 34);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 64);
    v3 |= 0x200u;
    *(this + 34) = v3;
    *(this + 64) = v6;
    v2 = *(a2 + 34);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 2);
  v3 |= 2u;
  *(this + 34) = v3;
  *(this + 2) = v7;
  v2 = *(a2 + 34);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 4);
  v3 |= 8u;
  *(this + 34) = v3;
  *(this + 4) = v8;
  v2 = *(a2 + 34);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 34) = v3;
  *(this + 1) = v9;
  v2 = *(a2 + 34);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 3);
  v3 |= 4u;
  *(this + 34) = v3;
  *(this + 3) = v10;
  v2 = *(a2 + 34);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 14);
  v3 |= 0x80u;
  *(this + 34) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 34);
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_22:
    result = *(a2 + 13);
    *(this + 34) = v3 | 0x40;
    *(this + 13) = result;
    return result;
  }

LABEL_21:
  result = *(a2 + 12);
  v3 |= 0x20u;
  *(this + 34) = v3;
  *(this + 12) = result;
  if ((*(a2 + 34) & 0x40) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t CMMsl::FlickMaxima::operator=(uint64_t a1, const CMMsl::FlickMaxima *a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickMaxima::FlickMaxima(v10, a2);
    v3 = *(a1 + 68);
    *(a1 + 68) = v16;
    v16 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    LOBYTE(v4) = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::FlickMaxima *a2, CMMsl::FlickMaxima *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v5;
  LOBYTE(v4) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v4;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  result = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = result;
  return result;
}

float CMMsl::FlickMaxima::FlickMaxima(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20150;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 52);
  *(a1 + 52) = result;
  return result;
}

uint64_t CMMsl::FlickMaxima::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::FlickMaxima::FlickMaxima(v10, a2);
    v3 = *(a1 + 68);
    *(a1 + 68) = v16;
    v16 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    LOBYTE(v4) = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::FlickMaxima::formatText(CMMsl::FlickMaxima *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 34);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "integratedValueLeftZCToMaxima", *(this + 12));
    v5 = *(this + 34);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "integratedValueLeftZCToRightHalf", *(this + 13));
  v5 = *(this + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "integratedValueLeftZCToRightZC", *(this + 14));
  v5 = *(this + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(this + 64);
  PB::TextFormatter::format(a2, "isPeak");
  v5 = *(this + 34);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(this + 1);
  PB::TextFormatter::format(a2, "timestampLeftHalfCrossingUs");
  v5 = *(this + 34);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(this + 2);
  PB::TextFormatter::format(a2, "timestampLeftZeroCrossingUs");
  v5 = *(this + 34);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(this + 3);
  PB::TextFormatter::format(a2, "timestampRightHalfCrossingUs");
  v5 = *(this + 34);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(this + 4);
  PB::TextFormatter::format(a2, "timestampRightZeroCrossingUs");
  v5 = *(this + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v11 = *(this + 5);
  PB::TextFormatter::format(a2, "timestampUs");
  if ((*(this + 34) & 0x100) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "value", *(this + 15));
  }

LABEL_12:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::FlickMaxima::readFrom(CMMsl::FlickMaxima *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 5)
    {
      if (v22 <= 7)
      {
        if (v22 == 6)
        {
          *(this + 34) |= 1u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(a2 + 1);
            }

            v81 = (v48 + v47);
            v82 = v2 - v47;
            v83 = v47 + 1;
            while (1)
            {
              if (!v82)
              {
                v51 = 0;
                *(a2 + 24) = 1;
                goto LABEL_142;
              }

              v84 = v83;
              v85 = *v81;
              *(a2 + 1) = v84;
              v51 |= (v85 & 0x7F) << v79;
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
                v51 = 0;
                goto LABEL_141;
              }
            }

            if (*(a2 + 24))
            {
              v51 = 0;
            }

LABEL_141:
            v2 = v84;
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
                v51 = 0;
                break;
              }
            }
          }

LABEL_142:
          *(this + 1) = v51;
          goto LABEL_151;
        }

        if (v22 == 7)
        {
          *(this + 34) |= 4u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v65 = 0;
            v66 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v67 = (v32 + v31);
            v68 = v2 - v31;
            v69 = v31 + 1;
            while (1)
            {
              if (!v68)
              {
                v35 = 0;
                *(a2 + 24) = 1;
                goto LABEL_134;
              }

              v70 = v69;
              v71 = *v67;
              *(a2 + 1) = v70;
              v35 |= (v71 & 0x7F) << v65;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              ++v67;
              --v68;
              v69 = v70 + 1;
              v14 = v66++ > 8;
              if (v14)
              {
                v35 = 0;
                goto LABEL_133;
              }
            }

            if (*(a2 + 24))
            {
              v35 = 0;
            }

LABEL_133:
            v2 = v70;
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
                v35 = 0;
                break;
              }
            }
          }

LABEL_134:
          *(this + 3) = v35;
          goto LABEL_151;
        }
      }

      else
      {
        switch(v22)
        {
          case 8:
            *(this + 34) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_81:
              *(a2 + 24) = 1;
              goto LABEL_151;
            }

            *(this + 14) = *(*a2 + v2);
            goto LABEL_125;
          case 9:
            *(this + 34) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_81;
            }

            *(this + 12) = *(*a2 + v2);
            goto LABEL_125;
          case 0xA:
            *(this + 34) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_81;
            }

            *(this + 13) = *(*a2 + v2);
            goto LABEL_125;
        }
      }
    }

    else if (v22 <= 2)
    {
      if (v22 == 1)
      {
        *(this + 34) |= 0x10u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v72 = 0;
          v73 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v2 = *(a2 + 1);
          }

          v74 = (v40 + v39);
          v75 = v2 - v39;
          v76 = v39 + 1;
          while (1)
          {
            if (!v75)
            {
              v43 = 0;
              *(a2 + 24) = 1;
              goto LABEL_138;
            }

            v77 = v76;
            v78 = *v74;
            *(a2 + 1) = v77;
            v43 |= (v78 & 0x7F) << v72;
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
              v43 = 0;
              goto LABEL_137;
            }
          }

          if (*(a2 + 24))
          {
            v43 = 0;
          }

LABEL_137:
          v2 = v77;
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
              v43 = 0;
              break;
            }
          }
        }

LABEL_138:
        *(this + 5) = v43;
        goto LABEL_151;
      }

      if (v22 == 2)
      {
        *(this + 34) |= 0x100u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_81;
        }

        *(this + 15) = *(*a2 + v2);
LABEL_125:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_151;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 34) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v56 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v55 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v56 = v55 != 0;
          }

          *(this + 64) = v56;
          goto LABEL_151;
        case 4:
          *(this + 34) |= 2u;
          v57 = *(a2 + 1);
          v2 = *(a2 + 2);
          v58 = *a2;
          if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
          {
            v93 = 0;
            v94 = 0;
            v61 = 0;
            if (v2 <= v57)
            {
              v2 = *(a2 + 1);
            }

            v95 = (v58 + v57);
            v96 = v2 - v57;
            v97 = v57 + 1;
            while (1)
            {
              if (!v96)
              {
                v61 = 0;
                *(a2 + 24) = 1;
                goto LABEL_150;
              }

              v98 = v97;
              v99 = *v95;
              *(a2 + 1) = v98;
              v61 |= (v99 & 0x7F) << v93;
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
                v61 = 0;
                goto LABEL_149;
              }
            }

            if (*(a2 + 24))
            {
              v61 = 0;
            }

LABEL_149:
            v2 = v98;
          }

          else
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = (v58 + v57);
            v63 = v57 + 1;
            while (1)
            {
              v2 = v63;
              *(a2 + 1) = v63;
              v64 = *v62++;
              v61 |= (v64 & 0x7F) << v59;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              ++v63;
              v14 = v60++ > 8;
              if (v14)
              {
                v61 = 0;
                break;
              }
            }
          }

LABEL_150:
          *(this + 2) = v61;
          goto LABEL_151;
        case 5:
          *(this + 34) |= 8u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v86 = 0;
            v87 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v88 = (v24 + v23);
            v89 = v2 - v23;
            v90 = v23 + 1;
            while (1)
            {
              if (!v89)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_146;
              }

              v91 = v90;
              v92 = *v88;
              *(a2 + 1) = v91;
              v27 |= (v92 & 0x7F) << v86;
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
                v27 = 0;
                goto LABEL_145;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_145:
            v2 = v91;
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
                v27 = 0;
                break;
              }
            }
          }

LABEL_146:
          *(this + 4) = v27;
          goto LABEL_151;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v100 = 0;
      return v100 & 1;
    }

    v2 = *(a2 + 1);
LABEL_151:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t CMMsl::FlickMaxima::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(this + 40);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 68);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 68) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(v3 + 64);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = PB::Writer::write(a2, *(v3 + 48));
    if ((*(v3 + 68) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_21:
  v11 = *(v3 + 52);

  return PB::Writer::write(a2, v11);
}

uint64_t CMMsl::FlickMaxima::hash_value(CMMsl::FlickMaxima *this)
{
  v1 = *(this + 34);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0;
    if ((*(this + 34) & 0x100) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v4 = 0;
    if ((*(this + 34) & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v2 = *(this + 5);
  if ((*(this + 34) & 0x100) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v3 = *(this + 15);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 34) & 0x200) != 0)
  {
LABEL_6:
    v5 = *(this + 64);
    if ((v1 & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v5 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = *(this + 2);
    if ((v1 & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v6 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_8:
    v7 = *(this + 4);
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = 0;
  if (v1)
  {
LABEL_9:
    v8 = *(this + 1);
    if ((v1 & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_10:
    v9 = *(this + 3);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_27:
    v11 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_26:
  v9 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  v10 = *(this + 14);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_14:
    v12 = *(this + 12);
    v13 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v13 = 0;
    }

    if ((v1 & 0x40) != 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    v15 = 0;
    return v4 ^ v2 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v13 ^ v15;
  }

LABEL_28:
  v13 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  v14 = *(this + 13);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  return v4 ^ v2 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v13 ^ v15;
}