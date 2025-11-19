uint64_t CMMsl::WakeGestureSample::hash_value(CMMsl::WakeGestureSample *this)
{
  v1 = *(this + 21);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_29:
    v3 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  v2 = *(this + 5);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_3:
  v3 = *(this + 6);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x200) != 0)
  {
LABEL_6:
    v4 = *(this + 17);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4 = 0;
  if ((v1 & 0x400) != 0)
  {
LABEL_7:
    v5 = *(this + 18);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v5 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_8:
    v6 = *(this + 76);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v6 = 0;
  if ((v1 & 0x10000) != 0)
  {
LABEL_9:
    v7 = *(this + 81);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v7 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_10:
    v8 = *(this + 79);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v8 = 0;
  if ((v1 & 0x8000) != 0)
  {
LABEL_11:
    v9 = *(this + 80);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_12:
    v10 = *(this + 78);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = 0;
  if ((v1 & 0x20000) != 0)
  {
LABEL_13:
    v11 = *(this + 82);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v11 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_14:
    v12 = *(this + 77);
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_39:
    v13 = 0.0;
    if (v1)
    {
      goto LABEL_18;
    }

LABEL_40:
    v14 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_38:
  v12 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  v13 = *(this + 2);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_18:
  v14 = *(this + 1);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_21:
    v15 = *(this + 15);
    if ((v1 & 8) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_22:
    v16 = *(this + 4);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((v1 & 0x100) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_42:
  v16 = 0.0;
  if ((v1 & 0x100) != 0)
  {
LABEL_25:
    v17 = *(this + 16);
    goto LABEL_44;
  }

LABEL_43:
  v17 = 0;
LABEL_44:
  if ((v1 & 4) != 0)
  {
    v18 = *(this + 3);
    if (v18 == 0.0)
    {
      v18 = 0.0;
    }

    if ((v1 & 0x40) != 0)
    {
      goto LABEL_46;
    }

LABEL_50:
    v19 = 0;
    return *&v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ *&v13 ^ *&v14 ^ v15 ^ *&v16 ^ v17 ^ *&v18 ^ v19;
  }

  v18 = 0.0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_50;
  }

LABEL_46:
  v19 = *(this + 14);
  return *&v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ *&v13 ^ *&v14 ^ v15 ^ *&v16 ^ v17 ^ *&v18 ^ v19;
}

void CMMsl::WalkingDetectionResult::~WalkingDetectionResult(CMMsl::WalkingDetectionResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WalkingDetectionResult::WalkingDetectionResult(uint64_t this, const CMMsl::WalkingDetectionResult *a2)
{
  *this = &unk_286C24638;
  *(this + 60) = 0;
  v2 = *(a2 + 30);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 8;
    *(this + 60) = 8;
    *(this + 24) = v4;
    v2 = *(a2 + 30);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 60) = v3;
    *(this + 28) = v5;
    v2 = *(a2 + 30);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 60) = v3;
    *(this + 32) = v6;
    v2 = *(a2 + 30);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 60) = v3;
  *(this + 36) = v7;
  v2 = *(a2 + 30);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 60) = v3;
  *(this + 48) = v8;
  v2 = *(a2 + 30);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 60) = v3;
  *(this + 44) = v9;
  v2 = *(a2 + 30);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 60) = v3;
  *(this + 52) = v10;
  v2 = *(a2 + 30);
  if ((v2 & 0x4000) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(a2 + 59);
  v3 |= 0x4000u;
  *(this + 60) = v3;
  *(this + 59) = v11;
  v2 = *(a2 + 30);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(a2 + 58);
  v3 |= 0x2000u;
  *(this + 60) = v3;
  *(this + 58) = v12;
  v2 = *(a2 + 30);
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = *(a2 + 57);
  v3 |= 0x1000u;
  *(this + 60) = v3;
  *(this + 57) = v13;
  v2 = *(a2 + 30);
  if ((v2 & 1) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = *(a2 + 1);
  v3 |= 1u;
  *(this + 60) = v3;
  *(this + 8) = v14;
  v2 = *(a2 + 30);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = *(a2 + 56);
  v3 |= 0x800u;
  *(this + 60) = v3;
  *(this + 56) = v15;
  v2 = *(a2 + 30);
  if ((v2 & 2) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = *(a2 + 4);
  v3 |= 2u;
  *(this + 60) = v3;
  *(this + 16) = v16;
  v2 = *(a2 + 30);
  if ((v2 & 4) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_32:
    v18 = *(a2 + 10);
    *(this + 60) = v3 | 0x80;
    *(this + 40) = v18;
    return this;
  }

LABEL_31:
  v17 = *(a2 + 5);
  v3 |= 4u;
  *(this + 60) = v3;
  *(this + 20) = v17;
  if ((*(a2 + 30) & 0x80) != 0)
  {
    goto LABEL_32;
  }

  return this;
}

CMMsl *CMMsl::WalkingDetectionResult::operator=(CMMsl *a1, const CMMsl::WalkingDetectionResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::WalkingDetectionResult::WalkingDetectionResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::WalkingDetectionResult *a2, CMMsl::WalkingDetectionResult *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v7;
  v8 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  v9 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v9;
  v10 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v10;
  LOBYTE(v3) = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v3;
  LOBYTE(v3) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v3;
  LOBYTE(v3) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v3;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  LOBYTE(v11) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  LODWORD(v11) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  return result;
}

float CMMsl::WalkingDetectionResult::WalkingDetectionResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24638;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

CMMsl *CMMsl::WalkingDetectionResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::WalkingDetectionResult::WalkingDetectionResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::WalkingDetectionResult::formatText(CMMsl::WalkingDetectionResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 30);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "dataRate", *(this + 4));
    v5 = *(this + 30);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*(this + 30) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 56);
  PB::TextFormatter::format(a2, "isInterpolated");
  v5 = *(this + 30);
  if ((v5 & 0x1000) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(this + 57);
  PB::TextFormatter::format(a2, "isMissingSamples");
  v5 = *(this + 30);
  if ((v5 & 0x2000) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(this + 58);
  PB::TextFormatter::format(a2, "isWalkingFiltered");
  v5 = *(this + 30);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(this + 59);
  PB::TextFormatter::format(a2, "isWalkingRaw");
  v5 = *(this + 30);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "maxSampleDeltaInSecond", *(this + 5));
  v5 = *(this + 30);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "pedEnergyPlane", *(this + 6));
  v5 = *(this + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "pedEnergyZ", *(this + 7));
  v5 = *(this + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "pedEnergyZByPlane", *(this + 8));
  v5 = *(this + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "pedEnergyZPeak", *(this + 9));
  v5 = *(this + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = *(this + 10);
  PB::TextFormatter::format(a2, "reversedTimestampCounts");
  v5 = *(this + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "thetaPitchFaceDeg", *(this + 11));
  v5 = *(this + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "thetaRollFaceDeg", *(this + 12));
  v5 = *(this + 30);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "thetaYawFaceDeg", *(this + 13));
  if (*(this + 30))
  {
LABEL_16:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_17:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WalkingDetectionResult::readFrom(CMMsl::WalkingDetectionResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_110:
    v60 = v4 ^ 1;
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
        goto LABEL_110;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 30) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_95;
        case 2u:
          *(this + 30) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_95;
        case 3u:
          *(this + 30) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_95;
        case 4u:
          *(this + 30) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_95;
        case 5u:
          *(this + 30) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_95;
        case 6u:
          *(this + 30) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_95;
        case 7u:
          *(this + 30) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_95;
        case 8u:
          *(this + 30) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v35 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v34 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v35 = v34 != 0;
          }

          *(this + 59) = v35;
          break;
        case 9u:
          *(this + 30) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v45 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v44 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v45 = v44 != 0;
          }

          *(this + 58) = v45;
          break;
        case 0xAu:
          *(this + 30) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v33 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v33 = v32 != 0;
          }

          *(this + 57) = v33;
          break;
        case 0xBu:
          *(this + 30) |= 1u;
          v36 = *(a2 + 1);
          v2 = *(a2 + 2);
          v37 = *a2;
          if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v2)
          {
            v53 = 0;
            v54 = 0;
            v40 = 0;
            if (v2 <= v36)
            {
              v2 = *(a2 + 1);
            }

            v55 = (v37 + v36);
            v56 = v2 - v36;
            v57 = v36 + 1;
            while (1)
            {
              if (!v56)
              {
                v40 = 0;
                *(a2 + 24) = 1;
                goto LABEL_105;
              }

              v58 = v57;
              v59 = *v55;
              *(a2 + 1) = v58;
              v40 |= (v59 & 0x7F) << v53;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v55;
              --v56;
              v57 = v58 + 1;
              v14 = v54++ > 8;
              if (v14)
              {
                v40 = 0;
LABEL_104:
                v2 = v58;
                goto LABEL_105;
              }
            }

            if (*(a2 + 24))
            {
              v40 = 0;
            }

            goto LABEL_104;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = (v37 + v36);
          v42 = v36 + 1;
          do
          {
            v2 = v42;
            *(a2 + 1) = v42;
            v43 = *v41++;
            v40 |= (v43 & 0x7F) << v38;
            if ((v43 & 0x80) == 0)
            {
              goto LABEL_105;
            }

            v38 += 7;
            ++v42;
            v14 = v39++ > 8;
          }

          while (!v14);
          v40 = 0;
LABEL_105:
          *(this + 1) = v40;
          break;
        case 0xCu:
          *(this + 30) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v31 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v30 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v31 = v30 != 0;
          }

          *(this + 56) = v31;
          break;
        case 0xDu:
          *(this + 30) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_60;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_95;
        case 0xEu:
          *(this + 30) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_60:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 5) = *(*a2 + v2);
LABEL_95:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          break;
        case 0xFu:
          *(this + 30) |= 0x80u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v48 = (v23 + v22);
            v49 = v2 - v22;
            v50 = v22 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_101;
              }

              v51 = v50;
              v52 = *v48;
              *(a2 + 1) = v51;
              v26 |= (v52 & 0x7F) << v46;
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
                LODWORD(v26) = 0;
LABEL_100:
                v2 = v51;
                goto LABEL_101;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_100;
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
              goto LABEL_101;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_101:
          *(this + 10) = v26;
          break;
        default:
          goto LABEL_17;
      }

LABEL_106:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_110;
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
        goto LABEL_110;
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
      goto LABEL_106;
    }

    v60 = 0;
  }

  return v60 & 1;
}

uint64_t CMMsl::WalkingDetectionResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 60);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 60);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 60);
  if ((v4 & 0x4000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = *(v3 + 59);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 60);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(v3 + 58);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 60);
  if ((v4 & 0x1000) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(v3 + 57);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 60);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9 = *(v3 + 56);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_14:
    if ((v4 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    this = PB::Writer::write(a2, *(v3 + 20));
    if ((*(v3 + 60) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 60);
  if ((v4 & 4) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_31:
  v10 = *(v3 + 40);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::WalkingDetectionResult::hash_value(CMMsl::WalkingDetectionResult *this)
{
  v1 = *(this + 30);
  if ((v1 & 8) == 0)
  {
    v2 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_36:
    v4 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_37:
    v6 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_9;
    }

LABEL_38:
    v8 = 0;
    if ((*(this + 30) & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    v10 = 0;
    if ((*(this + 30) & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_40:
    v12 = 0;
    if ((*(this + 30) & 0x400) != 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    v14 = 0;
    if ((*(this + 30) & 0x4000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  v25 = *(this + 6);
  v2 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v2 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_36;
  }

LABEL_3:
  v3 = *(this + 7);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_37;
  }

LABEL_6:
  v5 = *(this + 8);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_38;
  }

LABEL_9:
  v7 = *(this + 9);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((*(this + 30) & 0x200) == 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  v9 = *(this + 12);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((*(this + 30) & 0x100) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  v11 = *(this + 11);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((*(this + 30) & 0x400) == 0)
  {
    goto LABEL_41;
  }

LABEL_18:
  v13 = *(this + 13);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((*(this + 30) & 0x4000) != 0)
  {
LABEL_21:
    v15 = *(this + 59);
    if ((*(this + 30) & 0x2000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = 0;
  if ((*(this + 30) & 0x2000) != 0)
  {
LABEL_22:
    v16 = *(this + 58);
    if ((*(this + 30) & 0x1000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = 0;
  if ((*(this + 30) & 0x1000) != 0)
  {
LABEL_23:
    v17 = *(this + 57);
    if (v1)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = 0;
  if (v1)
  {
LABEL_24:
    v18 = *(this + 1);
    if ((*(this + 30) & 0x800) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = 0;
  if ((*(this + 30) & 0x800) != 0)
  {
LABEL_25:
    v19 = *(this + 56);
    if ((v1 & 2) != 0)
    {
      goto LABEL_26;
    }

LABEL_47:
    v21 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_48;
  }

LABEL_46:
  v19 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_47;
  }

LABEL_26:
  v20 = *(this + 4);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_29:
    v22 = *(this + 5);
    v23 = LODWORD(v22);
    if (v22 == 0.0)
    {
      v23 = 0;
    }

    if ((v1 & 0x80) != 0)
    {
      goto LABEL_32;
    }

LABEL_49:
    v24 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v21 ^ v23 ^ v24;
  }

LABEL_48:
  v23 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_49;
  }

LABEL_32:
  v24 = *(this + 10);
  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v21 ^ v23 ^ v24;
}

void CMMsl::WalkingSteadinessClassification::~WalkingSteadinessClassification(CMMsl::WalkingSteadinessClassification *this)
{
  *this = &unk_286C24670;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 18);
  *(this + 18) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 15);
  *(this + 15) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 13);
  *(this + 13) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 12);
  *(this + 12) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 11);
  *(this + 11) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 8);
  *(this + 8) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WalkingSteadinessClassification::~WalkingSteadinessClassification(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WalkingSteadinessClassification::WalkingSteadinessClassification(uint64_t this, const CMMsl::WalkingSteadinessClassification *a2)
{
  *this = &unk_286C24670;
  *(this + 64) = 0;
  *(this + 88) = 0u;
  *(this + 244) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0;
  v2 = *(a2 + 61);
  if ((v2 & 0x100) != 0)
  {
    v4 = *(a2 + 10);
    v3 = 256;
    *(this + 244) = 256;
    *(this + 80) = v4;
    v2 = *(a2 + 61);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    v5 = *(a2 + 9);
    v3 |= 0x80u;
    *(this + 244) = v3;
    *(this + 72) = v5;
    v2 = *(a2 + 61);
  }

LABEL_6:
  if ((v2 & 0x10000) != 0)
  {
    v12 = *(a2 + 55);
    v3 |= 0x10000u;
    *(this + 244) = v3;
    *(this + 220) = v12;
    v2 = *(a2 + 61);
    if ((v2 & 0x8000) == 0)
    {
LABEL_8:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_62;
    }
  }

  else if ((v2 & 0x8000) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(a2 + 54);
  v3 |= 0x8000u;
  *(this + 244) = v3;
  *(this + 216) = v13;
  v2 = *(a2 + 61);
  if ((v2 & 0x40000) == 0)
  {
LABEL_9:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_63;
  }

LABEL_62:
  v14 = *(a2 + 57);
  v3 |= 0x40000u;
  *(this + 244) = v3;
  *(this + 228) = v14;
  v2 = *(a2 + 61);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_10:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_63:
  v15 = *(a2 + 241);
  v3 |= 0x2000000u;
  *(this + 244) = v3;
  *(this + 241) = v15;
  v2 = *(a2 + 61);
  if ((v2 & 0x80000) == 0)
  {
LABEL_11:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_65;
  }

LABEL_64:
  v16 = *(a2 + 58);
  v3 |= 0x80000u;
  *(this + 244) = v3;
  *(this + 232) = v16;
  v2 = *(a2 + 61);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_65:
  v17 = *(a2 + 242);
  v3 |= 0x4000000u;
  *(this + 244) = v3;
  *(this + 242) = v17;
  v2 = *(a2 + 61);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_66:
  v18 = *(a2 + 22);
  v3 |= 0x200u;
  *(this + 244) = v3;
  *(this + 176) = v18;
  if ((*(a2 + 61) & 0x400000) != 0)
  {
LABEL_14:
    v6 = *(a2 + 238);
    *(this + 244) = v3 | 0x400000;
    *(this + 238) = v6;
  }

LABEL_15:
  if (*(a2 + 8))
  {
    operator new();
  }

  v7 = *(a2 + 61);
  if ((v7 & 0x800) != 0)
  {
    v19 = *(a2 + 24);
    *(this + 244) |= 0x800u;
    *(this + 192) = v19;
    v7 = *(a2 + 61);
    if ((v7 & 0x800000) == 0)
    {
LABEL_19:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_70;
    }
  }

  else if ((v7 & 0x800000) == 0)
  {
    goto LABEL_19;
  }

  v20 = *(a2 + 239);
  *(this + 244) |= 0x800000u;
  *(this + 239) = v20;
  v7 = *(a2 + 61);
  if ((v7 & 0x400) == 0)
  {
LABEL_20:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_70:
  v21 = *(a2 + 23);
  *(this + 244) |= 0x400u;
  *(this + 184) = v21;
  if ((*(a2 + 61) & 0x200000) != 0)
  {
LABEL_21:
    v8 = *(a2 + 237);
    *(this + 244) |= 0x200000u;
    *(this + 237) = v8;
  }

LABEL_22:
  if (*(a2 + 15))
  {
    operator new();
  }

  if (*(a2 + 14))
  {
    operator new();
  }

  if (*(a2 + 13))
  {
    operator new();
  }

  if (*(a2 + 12))
  {
    operator new();
  }

  if (*(a2 + 19))
  {
    operator new();
  }

  if (*(a2 + 18))
  {
    operator new();
  }

  if (*(a2 + 21))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    operator new();
  }

  if ((*(a2 + 246) & 0x10) != 0)
  {
    v9 = *(a2 + 236);
    *(this + 244) |= 0x100000u;
    *(this + 236) = v9;
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  v10 = *(a2 + 61);
  if (v10)
  {
    v22 = *(a2 + 1);
    *(this + 244) |= 1u;
    *(this + 8) = v22;
    v10 = *(a2 + 61);
    if ((v10 & 8) == 0)
    {
LABEL_44:
      if ((v10 & 0x20000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_74;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_44;
  }

  v23 = *(a2 + 4);
  *(this + 244) |= 8u;
  *(this + 32) = v23;
  v10 = *(a2 + 61);
  if ((v10 & 0x20000) == 0)
  {
LABEL_45:
    if ((v10 & 0x1000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_75;
  }

LABEL_74:
  v24 = *(a2 + 56);
  *(this + 244) |= 0x20000u;
  *(this + 224) = v24;
  v10 = *(a2 + 61);
  if ((v10 & 0x1000000) == 0)
  {
LABEL_46:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_76;
  }

LABEL_75:
  v25 = *(a2 + 240);
  *(this + 244) |= 0x1000000u;
  *(this + 240) = v25;
  v10 = *(a2 + 61);
  if ((v10 & 0x1000) == 0)
  {
LABEL_47:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_77;
  }

LABEL_76:
  v26 = *(a2 + 25);
  *(this + 244) |= 0x1000u;
  *(this + 200) = v26;
  v10 = *(a2 + 61);
  if ((v10 & 0x40) == 0)
  {
LABEL_48:
    if ((v10 & 2) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_78;
  }

LABEL_77:
  v27 = *(a2 + 7);
  *(this + 244) |= 0x40u;
  *(this + 56) = v27;
  v10 = *(a2 + 61);
  if ((v10 & 2) == 0)
  {
LABEL_49:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_79;
  }

LABEL_78:
  v28 = *(a2 + 2);
  *(this + 244) |= 2u;
  *(this + 16) = v28;
  v10 = *(a2 + 61);
  if ((v10 & 0x10) == 0)
  {
LABEL_50:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_80;
  }

LABEL_79:
  v29 = *(a2 + 5);
  *(this + 244) |= 0x10u;
  *(this + 40) = v29;
  v10 = *(a2 + 61);
  if ((v10 & 0x4000) == 0)
  {
LABEL_51:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_81;
  }

LABEL_80:
  v30 = *(a2 + 53);
  *(this + 244) |= 0x4000u;
  *(this + 212) = v30;
  v10 = *(a2 + 61);
  if ((v10 & 0x2000) == 0)
  {
LABEL_52:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_82;
  }

LABEL_81:
  v31 = *(a2 + 52);
  *(this + 244) |= 0x2000u;
  *(this + 208) = v31;
  v10 = *(a2 + 61);
  if ((v10 & 0x20) == 0)
  {
LABEL_53:
    if ((v10 & 4) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_82:
  v32 = *(a2 + 6);
  *(this + 244) |= 0x20u;
  *(this + 48) = v32;
  if ((*(a2 + 61) & 4) != 0)
  {
LABEL_54:
    v11 = *(a2 + 3);
    *(this + 244) |= 4u;
    *(this + 24) = v11;
  }

LABEL_55:
  if (*(a2 + 17))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  return this;
}

CMMsl *CMMsl::WalkingSteadinessClassification::operator=(CMMsl *a1, const CMMsl::WalkingSteadinessClassification *a2)
{
  if (a1 != a2)
  {
    CMMsl::WalkingSteadinessClassification::WalkingSteadinessClassification(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::WalkingSteadinessClassification::~WalkingSteadinessClassification(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WalkingSteadinessClassification *a2, CMMsl::WalkingSteadinessClassification *a3)
{
  v3 = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v3;
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v6;
  v7 = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v7;
  LODWORD(v5) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v5;
  LOBYTE(v7) = *(this + 241);
  *(this + 241) = *(a2 + 241);
  *(a2 + 241) = v7;
  LODWORD(v5) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v5;
  LOBYTE(v7) = *(this + 242);
  *(this + 242) = *(a2 + 242);
  *(a2 + 242) = v7;
  v8 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v8;
  LOBYTE(v7) = *(this + 238);
  *(this + 238) = *(a2 + 238);
  *(a2 + 238) = v7;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v10;
  LOBYTE(v9) = *(this + 239);
  *(this + 239) = *(a2 + 239);
  *(a2 + 239) = v9;
  v11 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v11;
  LOBYTE(v9) = *(this + 237);
  *(this + 237) = *(a2 + 237);
  *(a2 + 237) = v9;
  v12 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v12;
  v13 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v13;
  v14 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v14;
  v15 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v15;
  v16 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v16;
  v17 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v17;
  v18 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v18;
  v19 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v19;
  LOBYTE(v19) = *(this + 236);
  *(this + 236) = *(a2 + 236);
  *(a2 + 236) = v19;
  v20 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v20;
  v21 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v21;
  v22 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v22;
  LODWORD(v22) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v22;
  LOBYTE(v20) = *(this + 240);
  *(this + 240) = *(a2 + 240);
  *(a2 + 240) = v20;
  v23 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v23;
  v24 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v24;
  v25 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v25;
  v26 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v26;
  LODWORD(v20) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v20;
  LODWORD(v20) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v20;
  v27 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v27;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v29 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v29;
  v30 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v30;
  return result;
}

uint64_t CMMsl::WalkingSteadinessClassification::WalkingSteadinessClassification(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24670;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 244) = *(a2 + 244);
  *(a2 + 244) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 241) = *(a2 + 241);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 242) = *(a2 + 242);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 238) = *(a2 + 238);
  v4 = *(a2 + 64);
  *(a2 + 64) = 0;
  v5 = *(a1 + 64);
  *(a1 + 64) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 192) = *(a2 + 192);
  *(a1 + 239) = *(a2 + 239);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 237) = *(a2 + 237);
  v6 = *(a2 + 120);
  *(a2 + 120) = 0;
  v7 = *(a1 + 120);
  *(a1 + 120) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a2 + 112);
  *(a2 + 112) = 0;
  v9 = *(a1 + 112);
  *(a1 + 112) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a2 + 104);
  *(a2 + 104) = 0;
  v11 = *(a1 + 104);
  *(a1 + 104) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a2 + 96);
  *(a2 + 96) = 0;
  v13 = *(a1 + 96);
  *(a1 + 96) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a2 + 152);
  *(a2 + 152) = 0;
  v15 = *(a1 + 152);
  *(a1 + 152) = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a2 + 144);
  *(a2 + 144) = 0;
  v17 = *(a1 + 144);
  *(a1 + 144) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a2 + 168);
  *(a2 + 168) = 0;
  v19 = *(a1 + 168);
  *(a1 + 168) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(a2 + 160);
  *(a2 + 160) = 0;
  v21 = *(a1 + 160);
  *(a1 + 160) = v20;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  *(a1 + 236) = *(a2 + 236);
  v22 = *(a2 + 88);
  *(a2 + 88) = 0;
  v23 = *(a1 + 88);
  *(a1 + 88) = v22;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = *(a2 + 24);
  v24 = *(a2 + 136);
  *(a2 + 136) = 0;
  v25 = *(a1 + 136);
  *(a1 + 136) = v24;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(a2 + 128);
  *(a2 + 128) = 0;
  v27 = *(a1 + 128);
  *(a1 + 128) = v26;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  return a1;
}

CMMsl *CMMsl::WalkingSteadinessClassification::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::WalkingSteadinessClassification::WalkingSteadinessClassification(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::WalkingSteadinessClassification::~WalkingSteadinessClassification(v5);
  }

  return a1;
}

uint64_t CMMsl::WalkingSteadinessClassification::formatText(CMMsl::WalkingSteadinessClassification *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 61);
  if ((v5 & 0x100000) != 0)
  {
    v22 = *(this + 236);
    PB::TextFormatter::format(a2, "appliedBoutMetricCorrections");
    v5 = *(this + 61);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "dailyFlights30daysMax", *(this + 1));
  v5 = *(this + 61);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "dailyFlights30daysMean", *(this + 2));
  v5 = *(this + 61);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "dailySteps30DaysTotal", *(this + 3));
  v5 = *(this + 61);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "dailySteps30daysMax", *(this + 4));
  v5 = *(this + 61);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "dailySteps30daysMean", *(this + 5));
  v5 = *(this + 61);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "dailySteps7DaysTotal", *(this + 6));
  v5 = *(this + 61);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "dailySteps7daysMean", *(this + 7));
  v5 = *(this + 61);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_66:
  v23 = *(this + 52);
  PB::TextFormatter::format(a2, "daysWithSteps30Days");
  v5 = *(this + 61);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_67:
  v24 = *(this + 53);
  PB::TextFormatter::format(a2, "daysWithSteps7Days");
  if ((*(this + 61) & 0x8000) != 0)
  {
LABEL_12:
    v6 = *(this + 54);
    PB::TextFormatter::format(a2, "errorStatus");
  }

LABEL_13:
  v7 = *(this + 8);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "eventResult");
  }

  v8 = *(this + 61);
  if ((v8 & 0x200000) != 0)
  {
    v25 = *(this + 237);
    PB::TextFormatter::format(a2, "fusionSuccess");
    v8 = *(this + 61);
    if ((v8 & 0x80) == 0)
    {
LABEL_17:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_71;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  PB::TextFormatter::format(a2, "hkEndTime", *(this + 9));
  v8 = *(this + 61);
  if ((v8 & 0x100) == 0)
  {
LABEL_18:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "hkStartTime", *(this + 10));
  if ((*(this + 61) & 0x400000) != 0)
  {
LABEL_19:
    v9 = *(this + 238);
    PB::TextFormatter::format(a2, "isHistoricalCompute");
  }

LABEL_20:
  v10 = *(this + 11);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "modelBalanceFeatures");
  }

  v11 = *(this + 12);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "modelContinuousWalkingFeatures");
  }

  v12 = *(this + 13);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "modelContinuousWalkingResult");
  }

  v13 = *(this + 14);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "modelGaitBaselineFeatures");
  }

  v14 = *(this + 15);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "modelGaitBaselineResult");
  }

  v15 = *(this + 16);
  if (v15)
  {
    (*(*v15 + 32))(v15, a2, "modelHarmonicFeatures");
  }

  v16 = *(this + 17);
  if (v16)
  {
    (*(*v16 + 32))(v16, a2, "modelHarmonicResult");
  }

  v17 = *(this + 18);
  if (v17)
  {
    (*(*v17 + 32))(v17, a2, "modelTemporalDispersionFeatures");
  }

  v18 = *(this + 19);
  if (v18)
  {
    (*(*v18 + 32))(v18, a2, "modelTemporalDispersionResult");
  }

  v19 = *(this + 20);
  if (v19)
  {
    (*(*v19 + 32))(v19, a2, "modelTemporalEntropyFeatures");
  }

  v20 = *(this + 21);
  if (v20)
  {
    (*(*v20 + 32))(v20, a2, "modelTemporalEntropyResult");
  }

  v21 = *(this + 61);
  if ((v21 & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "nextClassificationTime", *(this + 22));
    v21 = *(this + 61);
    if ((v21 & 0x400) == 0)
    {
LABEL_44:
      if ((v21 & 0x10000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_75;
    }
  }

  else if ((v21 & 0x400) == 0)
  {
    goto LABEL_44;
  }

  PB::TextFormatter::format(a2, "rawSteadiness", *(this + 23));
  v21 = *(this + 61);
  if ((v21 & 0x10000) == 0)
  {
LABEL_45:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_76;
  }

LABEL_75:
  v26 = *(this + 55);
  PB::TextFormatter::format(a2, "rejectionStatus");
  v21 = *(this + 61);
  if ((v21 & 0x800) == 0)
  {
LABEL_46:
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "steadinessScore", *(this + 24));
  v21 = *(this + 61);
  if ((v21 & 0x800000) == 0)
  {
LABEL_47:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_78;
  }

LABEL_77:
  v27 = *(this + 239);
  PB::TextFormatter::format(a2, "steadinessScoreIsValid");
  v21 = *(this + 61);
  if ((v21 & 0x1000) == 0)
  {
LABEL_48:
    if ((v21 & 0x20000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(a2, "unadjustedScore", *(this + 25));
  v21 = *(this + 61);
  if ((v21 & 0x20000) == 0)
  {
LABEL_49:
    if ((v21 & 0x40000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "userAge", *(this + 56));
  v21 = *(this + 61);
  if ((v21 & 0x40000) == 0)
  {
LABEL_50:
    if ((v21 & 0x1000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(a2, "userHeight", *(this + 57));
  v21 = *(this + 61);
  if ((v21 & 0x1000000) == 0)
  {
LABEL_51:
    if ((v21 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_82;
  }

LABEL_81:
  v28 = *(this + 240);
  PB::TextFormatter::format(a2, "userIsAgeSet");
  v21 = *(this + 61);
  if ((v21 & 0x2000000) == 0)
  {
LABEL_52:
    if ((v21 & 0x4000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_83;
  }

LABEL_82:
  v29 = *(this + 241);
  PB::TextFormatter::format(a2, "userIsHeightSet");
  v21 = *(this + 61);
  if ((v21 & 0x4000000) == 0)
  {
LABEL_53:
    if ((v21 & 0x80000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_83:
  v30 = *(this + 242);
  PB::TextFormatter::format(a2, "userIsWeightSet");
  if ((*(this + 61) & 0x80000) != 0)
  {
LABEL_54:
    PB::TextFormatter::format(a2, "userWeight", *(this + 58));
  }

LABEL_55:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WalkingSteadinessClassification::readFrom(CMMsl::WalkingSteadinessClassification *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_193:
    v128 = v4 ^ 1;
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
        goto LABEL_193;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 61) |= 0x100u;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 10) = *(*a2 + v22);
          goto LABEL_171;
        case 2u:
          *(this + 61) |= 0x80u;
          v51 = *(a2 + 1);
          if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 9) = *(*a2 + v51);
          goto LABEL_171;
        case 4u:
          *(this + 61) |= 0x10000u;
          v53 = *(a2 + 1);
          v52 = *(a2 + 2);
          v54 = *a2;
          if (v53 <= 0xFFFFFFFFFFFFFFF5 && v53 + 10 <= v52)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = (v54 + v53);
            v59 = v53 + 1;
            do
            {
              *(a2 + 1) = v59;
              v60 = *v58++;
              v57 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                goto LABEL_182;
              }

              v55 += 7;
              ++v59;
              v14 = v56++ > 8;
            }

            while (!v14);
LABEL_145:
            LODWORD(v57) = 0;
            goto LABEL_182;
          }

          v109 = 0;
          v110 = 0;
          v57 = 0;
          v111 = (v54 + v53);
          v18 = v52 >= v53;
          v112 = v52 - v53;
          if (!v18)
          {
            v112 = 0;
          }

          v113 = v53 + 1;
          while (2)
          {
            if (v112)
            {
              v114 = *v111;
              *(a2 + 1) = v113;
              v57 |= (v114 & 0x7F) << v109;
              if (v114 < 0)
              {
                v109 += 7;
                ++v111;
                --v112;
                ++v113;
                v14 = v110++ > 8;
                if (v14)
                {
                  goto LABEL_145;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v57) = 0;
              }
            }

            else
            {
              LODWORD(v57) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_182:
          *(this + 55) = v57;
          goto LABEL_189;
        case 5u:
          *(this + 61) |= 0x8000u;
          v68 = *(a2 + 1);
          v67 = *(a2 + 2);
          v69 = *a2;
          if (v68 <= 0xFFFFFFFFFFFFFFF5 && v68 + 10 <= v67)
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = (v69 + v68);
            v74 = v68 + 1;
            do
            {
              *(a2 + 1) = v74;
              v75 = *v73++;
              v72 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_185;
              }

              v70 += 7;
              ++v74;
              v14 = v71++ > 8;
            }

            while (!v14);
LABEL_155:
            LODWORD(v72) = 0;
            goto LABEL_185;
          }

          v115 = 0;
          v116 = 0;
          v72 = 0;
          v117 = (v69 + v68);
          v18 = v67 >= v68;
          v118 = v67 - v68;
          if (!v18)
          {
            v118 = 0;
          }

          v119 = v68 + 1;
          while (2)
          {
            if (v118)
            {
              v120 = *v117;
              *(a2 + 1) = v119;
              v72 |= (v120 & 0x7F) << v115;
              if (v120 < 0)
              {
                v115 += 7;
                ++v117;
                --v118;
                ++v119;
                v14 = v116++ > 8;
                if (v14)
                {
                  goto LABEL_155;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v72) = 0;
              }
            }

            else
            {
              LODWORD(v72) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_185:
          *(this + 54) = v72;
          goto LABEL_189;
        case 6u:
          *(this + 61) |= 0x40000u;
          v61 = *(a2 + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 57) = *(*a2 + v61);
          goto LABEL_117;
        case 7u:
          *(this + 61) |= 0x2000000u;
          v63 = *(a2 + 1);
          if (v63 >= *(a2 + 2))
          {
            v66 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v64 = v63 + 1;
            v65 = *(*a2 + v63);
            *(a2 + 1) = v64;
            v66 = v65 != 0;
          }

          *(this + 241) = v66;
          goto LABEL_189;
        case 8u:
          *(this + 61) |= 0x80000u;
          v80 = *(a2 + 1);
          if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 58) = *(*a2 + v80);
          goto LABEL_117;
        case 9u:
          *(this + 61) |= 0x4000000u;
          v81 = *(a2 + 1);
          if (v81 >= *(a2 + 2))
          {
            v84 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v82 = v81 + 1;
            v83 = *(*a2 + v81);
            *(a2 + 1) = v82;
            v84 = v83 != 0;
          }

          *(this + 242) = v84;
          goto LABEL_189;
        case 0xAu:
          *(this + 61) |= 0x200u;
          v36 = *(a2 + 1);
          if (v36 > 0xFFFFFFFFFFFFFFF7 || v36 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 22) = *(*a2 + v36);
          goto LABEL_171;
        case 0xBu:
          *(this + 61) |= 0x400000u;
          v86 = *(a2 + 1);
          if (v86 >= *(a2 + 2))
          {
            v89 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v87 = v86 + 1;
            v88 = *(*a2 + v86);
            *(a2 + 1) = v87;
            v89 = v88 != 0;
          }

          *(this + 238) = v89;
          goto LABEL_189;
        case 0xCu:
          operator new();
        case 0xDu:
          *(this + 61) |= 0x800u;
          v62 = *(a2 + 1);
          if (v62 > 0xFFFFFFFFFFFFFFF7 || v62 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 24) = *(*a2 + v62);
          goto LABEL_171;
        case 0xEu:
          *(this + 61) |= 0x800000u;
          v45 = *(a2 + 1);
          if (v45 >= *(a2 + 2))
          {
            v48 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v46 = v45 + 1;
            v47 = *(*a2 + v45);
            *(a2 + 1) = v46;
            v48 = v47 != 0;
          }

          *(this + 239) = v48;
          goto LABEL_189;
        case 0xFu:
          *(this + 61) |= 0x400u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 23) = *(*a2 + v25);
          goto LABEL_171;
        case 0x10u:
          *(this + 61) |= 0x200000u;
          v76 = *(a2 + 1);
          if (v76 >= *(a2 + 2))
          {
            v79 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v77 = v76 + 1;
            v78 = *(*a2 + v76);
            *(a2 + 1) = v77;
            v79 = v78 != 0;
          }

          *(this + 237) = v79;
          goto LABEL_189;
        case 0x11u:
          operator new();
        case 0x12u:
          operator new();
        case 0x13u:
          operator new();
        case 0x14u:
          operator new();
        case 0x15u:
          operator new();
        case 0x16u:
          operator new();
        case 0x17u:
          operator new();
        case 0x18u:
          operator new();
        case 0x19u:
          *(this + 61) |= 0x100000u;
          v37 = *(a2 + 1);
          if (v37 >= *(a2 + 2))
          {
            v40 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v38 = v37 + 1;
            v39 = *(*a2 + v37);
            *(a2 + 1) = v38;
            v40 = v39 != 0;
          }

          *(this + 236) = v40;
          goto LABEL_189;
        case 0x1Au:
          operator new();
        case 0x1Bu:
          *(this + 61) |= 1u;
          v26 = *(a2 + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 1) = *(*a2 + v26);
          goto LABEL_171;
        case 0x1Cu:
          *(this + 61) |= 8u;
          v101 = *(a2 + 1);
          if (v101 > 0xFFFFFFFFFFFFFFF7 || v101 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 4) = *(*a2 + v101);
          goto LABEL_171;
        case 0x1Du:
          *(this + 61) |= 0x20000u;
          v99 = *(a2 + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 56) = *(*a2 + v99);
LABEL_117:
          v100 = *(a2 + 1) + 4;
          goto LABEL_172;
        case 0x1Eu:
          *(this + 61) |= 0x1000000u;
          v41 = *(a2 + 1);
          if (v41 >= *(a2 + 2))
          {
            v44 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v42 = v41 + 1;
            v43 = *(*a2 + v41);
            *(a2 + 1) = v42;
            v44 = v43 != 0;
          }

          *(this + 240) = v44;
          goto LABEL_189;
        case 0x1Fu:
          *(this + 61) |= 0x1000u;
          v49 = *(a2 + 1);
          if (v49 > 0xFFFFFFFFFFFFFFF7 || v49 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 25) = *(*a2 + v49);
          goto LABEL_171;
        case 0x20u:
          *(this + 61) |= 0x40u;
          v85 = *(a2 + 1);
          if (v85 > 0xFFFFFFFFFFFFFFF7 || v85 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 7) = *(*a2 + v85);
          goto LABEL_171;
        case 0x21u:
          *(this + 61) |= 2u;
          v50 = *(a2 + 1);
          if (v50 > 0xFFFFFFFFFFFFFFF7 || v50 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 2) = *(*a2 + v50);
          goto LABEL_171;
        case 0x22u:
          *(this + 61) |= 0x10u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 5) = *(*a2 + v23);
          goto LABEL_171;
        case 0x23u:
          *(this + 61) |= 0x4000u;
          v28 = *(a2 + 1);
          v27 = *(a2 + 2);
          v29 = *a2;
          if (v28 <= 0xFFFFFFFFFFFFFFF5 && v28 + 10 <= v27)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = (v29 + v28);
            v34 = v28 + 1;
            do
            {
              *(a2 + 1) = v34;
              v35 = *v33++;
              v32 |= (v35 & 0x7F) << v30;
              if ((v35 & 0x80) == 0)
              {
                goto LABEL_179;
              }

              v30 += 7;
              ++v34;
              v14 = v31++ > 8;
            }

            while (!v14);
LABEL_131:
            LODWORD(v32) = 0;
            goto LABEL_179;
          }

          v103 = 0;
          v104 = 0;
          v32 = 0;
          v105 = (v29 + v28);
          v18 = v27 >= v28;
          v106 = v27 - v28;
          if (!v18)
          {
            v106 = 0;
          }

          v107 = v28 + 1;
          while (2)
          {
            if (v106)
            {
              v108 = *v105;
              *(a2 + 1) = v107;
              v32 |= (v108 & 0x7F) << v103;
              if (v108 < 0)
              {
                v103 += 7;
                ++v105;
                --v106;
                ++v107;
                v14 = v104++ > 8;
                if (v14)
                {
                  goto LABEL_131;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v32) = 0;
              }
            }

            else
            {
              LODWORD(v32) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_179:
          *(this + 53) = v32;
          goto LABEL_189;
        case 0x24u:
          *(this + 61) |= 0x2000u;
          v91 = *(a2 + 1);
          v90 = *(a2 + 2);
          v92 = *a2;
          if (v91 <= 0xFFFFFFFFFFFFFFF5 && v91 + 10 <= v90)
          {
            v93 = 0;
            v94 = 0;
            v95 = 0;
            v96 = (v92 + v91);
            v97 = v91 + 1;
            do
            {
              *(a2 + 1) = v97;
              v98 = *v96++;
              v95 |= (v98 & 0x7F) << v93;
              if ((v98 & 0x80) == 0)
              {
                goto LABEL_188;
              }

              v93 += 7;
              ++v97;
              v14 = v94++ > 8;
            }

            while (!v14);
LABEL_169:
            LODWORD(v95) = 0;
            goto LABEL_188;
          }

          v121 = 0;
          v122 = 0;
          v95 = 0;
          v123 = (v92 + v91);
          v18 = v90 >= v91;
          v124 = v90 - v91;
          if (!v18)
          {
            v124 = 0;
          }

          v125 = v91 + 1;
          break;
        case 0x25u:
          *(this + 61) |= 0x20u;
          v102 = *(a2 + 1);
          if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(a2 + 2))
          {
            goto LABEL_123;
          }

          *(this + 6) = *(*a2 + v102);
          goto LABEL_171;
        case 0x26u:
          *(this + 61) |= 4u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
LABEL_123:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 3) = *(*a2 + v24);
LABEL_171:
            v100 = *(a2 + 1) + 8;
LABEL_172:
            *(a2 + 1) = v100;
          }

          goto LABEL_189;
        case 0x27u:
          operator new();
        case 0x28u:
          operator new();
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v124)
        {
          LODWORD(v95) = 0;
          *(a2 + 24) = 1;
          goto LABEL_188;
        }

        v126 = *v123;
        *(a2 + 1) = v125;
        v95 |= (v126 & 0x7F) << v121;
        if ((v126 & 0x80) == 0)
        {
          break;
        }

        v121 += 7;
        ++v123;
        --v124;
        ++v125;
        v14 = v122++ > 8;
        if (v14)
        {
          goto LABEL_169;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v95) = 0;
      }

LABEL_188:
      *(this + 52) = v95;
LABEL_189:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_193;
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
        goto LABEL_193;
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
      goto LABEL_189;
    }

    v128 = 0;
  }

  return v128 & 1;
}

uint64_t CMMsl::WalkingSteadinessClassification::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 244);
  if ((v4 & 0x100) != 0)
  {
    this = PB::Writer::write(a2, *(this + 80));
    v4 = *(v3 + 244);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 244);
  if ((v4 & 0x10000) == 0)
  {
LABEL_4:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = *(v3 + 220);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 244);
  if ((v4 & 0x8000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = *(v3 + 216);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 244);
  if ((v4 & 0x40000) == 0)
  {
LABEL_6:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 228));
  v4 = *(v3 + 244);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
  v24 = *(v3 + 241);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 244);
  if ((v4 & 0x80000) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 232));
  v4 = *(v3 + 244);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  v25 = *(v3 + 242);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 244);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_66:
  this = PB::Writer::write(a2, *(v3 + 176));
  if ((*(v3 + 244) & 0x400000) != 0)
  {
LABEL_11:
    v5 = *(v3 + 238);
    this = PB::Writer::write(a2);
  }

LABEL_12:
  v6 = *(v3 + 64);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 244);
  if ((v7 & 0x800) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 192));
    v7 = *(v3 + 244);
    if ((v7 & 0x800000) == 0)
    {
LABEL_16:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_70;
    }
  }

  else if ((v7 & 0x800000) == 0)
  {
    goto LABEL_16;
  }

  v26 = *(v3 + 239);
  this = PB::Writer::write(a2);
  v7 = *(v3 + 244);
  if ((v7 & 0x400) == 0)
  {
LABEL_17:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_70:
  this = PB::Writer::write(a2, *(v3 + 184));
  if ((*(v3 + 244) & 0x200000) != 0)
  {
LABEL_18:
    v8 = *(v3 + 237);
    this = PB::Writer::write(a2);
  }

LABEL_19:
  v9 = *(v3 + 120);
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 112);
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = *(v3 + 104);
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(v3 + 96);
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = *(v3 + 152);
  if (v13)
  {
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = *(v3 + 144);
  if (v14)
  {
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  v15 = *(v3 + 168);
  if (v15)
  {
    this = PB::Writer::writeSubmessage(a2, v15);
  }

  v16 = *(v3 + 160);
  if (v16)
  {
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  if ((*(v3 + 246) & 0x10) != 0)
  {
    v17 = *(v3 + 236);
    this = PB::Writer::write(a2);
  }

  v18 = *(v3 + 88);
  if (v18)
  {
    this = PB::Writer::writeSubmessage(a2, v18);
  }

  v19 = *(v3 + 244);
  if (v19)
  {
    this = PB::Writer::write(a2, *(v3 + 8));
    v19 = *(v3 + 244);
    if ((v19 & 8) == 0)
    {
LABEL_41:
      if ((v19 & 0x20000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_74;
    }
  }

  else if ((v19 & 8) == 0)
  {
    goto LABEL_41;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v19 = *(v3 + 244);
  if ((v19 & 0x20000) == 0)
  {
LABEL_42:
    if ((v19 & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 224));
  v19 = *(v3 + 244);
  if ((v19 & 0x1000000) == 0)
  {
LABEL_43:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_76;
  }

LABEL_75:
  v27 = *(v3 + 240);
  this = PB::Writer::write(a2);
  v19 = *(v3 + 244);
  if ((v19 & 0x1000) == 0)
  {
LABEL_44:
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = PB::Writer::write(a2, *(v3 + 200));
  v19 = *(v3 + 244);
  if ((v19 & 0x40) == 0)
  {
LABEL_45:
    if ((v19 & 2) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = PB::Writer::write(a2, *(v3 + 56));
  v19 = *(v3 + 244);
  if ((v19 & 2) == 0)
  {
LABEL_46:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = PB::Writer::write(a2, *(v3 + 16));
  v19 = *(v3 + 244);
  if ((v19 & 0x10) == 0)
  {
LABEL_47:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = PB::Writer::write(a2, *(v3 + 40));
  v19 = *(v3 + 244);
  if ((v19 & 0x4000) == 0)
  {
LABEL_48:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_81;
  }

LABEL_80:
  v28 = *(v3 + 212);
  this = PB::Writer::writeVarInt(a2);
  v19 = *(v3 + 244);
  if ((v19 & 0x2000) == 0)
  {
LABEL_49:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_82;
  }

LABEL_81:
  v29 = *(v3 + 208);
  this = PB::Writer::writeVarInt(a2);
  v19 = *(v3 + 244);
  if ((v19 & 0x20) == 0)
  {
LABEL_50:
    if ((v19 & 4) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_82:
  this = PB::Writer::write(a2, *(v3 + 48));
  if ((*(v3 + 244) & 4) != 0)
  {
LABEL_51:
    this = PB::Writer::write(a2, *(v3 + 24));
  }

LABEL_52:
  v20 = *(v3 + 136);
  if (v20)
  {
    this = PB::Writer::writeSubmessage(a2, v20);
  }

  v21 = *(v3 + 128);
  if (v21)
  {

    return PB::Writer::writeSubmessage(a2, v21);
  }

  return this;
}

unint64_t CMMsl::WalkingSteadinessClassification::hash_value(CMMsl::WalkingSteadinessClassification *this)
{
  v2 = *(this + 61);
  if ((v2 & 0x100) == 0)
  {
    v66 = 0.0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    v65 = 0.0;
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v9 = *(this + 10);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  v66 = v9;
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  v3 = *(this + 9);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v65 = v3;
  if ((v2 & 0x10000) != 0)
  {
LABEL_6:
    v64 = *(this + 55);
    if ((v2 & 0x8000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v64 = 0;
  if ((v2 & 0x8000) != 0)
  {
LABEL_7:
    v63 = *(this + 54);
    if ((v2 & 0x40000) != 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    v62 = 0;
    if ((v2 & 0x2000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_25:
  v63 = 0;
  if ((v2 & 0x40000) == 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  v4 = *(this + 57);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  v62 = v5;
  if ((v2 & 0x2000000) != 0)
  {
LABEL_11:
    v61 = *(this + 241);
    if ((v2 & 0x80000) != 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    v60 = 0;
    if ((v2 & 0x4000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_27:
  v61 = 0;
  if ((v2 & 0x80000) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v6 = *(this + 58);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  v60 = v7;
  if ((v2 & 0x4000000) != 0)
  {
LABEL_15:
    v59 = *(this + 242);
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v59 = 0;
  if ((v2 & 0x200) != 0)
  {
LABEL_16:
    v8 = *(this + 22);
    if (v8 == 0.0)
    {
      v8 = 0.0;
    }

    v58 = v8;
    if ((v2 & 0x400000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  v58 = 0.0;
  if ((v2 & 0x400000) != 0)
  {
LABEL_19:
    v57 = *(this + 238);
    goto LABEL_32;
  }

LABEL_31:
  v57 = 0;
LABEL_32:
  v10 = *(this + 8);
  if (v10)
  {
    v56 = CMMsl::SteadinessEvent::hash_value(v10);
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v56 = 0;
    if ((v2 & 0x800) == 0)
    {
LABEL_34:
      v55 = 0.0;
      if ((v2 & 0x800000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }
  }

  v12 = *(this + 24);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  v55 = v12;
  if ((v2 & 0x800000) != 0)
  {
LABEL_35:
    v54 = *(this + 239);
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

LABEL_44:
  v54 = 0;
  if ((v2 & 0x400) != 0)
  {
LABEL_36:
    v11 = *(this + 23);
    if (v11 == 0.0)
    {
      v11 = 0.0;
    }

    v53 = v11;
    if ((v2 & 0x200000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

LABEL_45:
  v53 = 0.0;
  if ((v2 & 0x200000) != 0)
  {
LABEL_39:
    v52 = *(this + 237);
    goto LABEL_47;
  }

LABEL_46:
  v52 = 0;
LABEL_47:
  v13 = *(this + 15);
  if (v13)
  {
    v51 = CMMsl::SteadinessModelResult::hash_value(v13);
  }

  else
  {
    v51 = 0;
  }

  v14 = *(this + 14);
  if (v14)
  {
    v50 = CMMsl::SteadinessModelGaitBaselineFeatures::hash_value(v14);
  }

  else
  {
    v50 = 0;
  }

  v15 = *(this + 13);
  if (v15)
  {
    v49 = CMMsl::SteadinessModelResult::hash_value(v15);
  }

  else
  {
    v49 = 0;
  }

  v16 = *(this + 12);
  if (v16)
  {
    v48 = CMMsl::SteadinessModelContinuousWalkingFeatures::hash_value(v16);
  }

  else
  {
    v48 = 0;
  }

  v17 = *(this + 19);
  if (v17)
  {
    v47 = CMMsl::SteadinessModelResult::hash_value(v17);
  }

  else
  {
    v47 = 0;
  }

  v18 = *(this + 18);
  if (v18)
  {
    v46 = CMMsl::SteadinessModelTemporalDispersionFeatures::hash_value(v18);
  }

  else
  {
    v46 = 0;
  }

  v19 = *(this + 21);
  if (v19)
  {
    v45 = CMMsl::SteadinessModelResult::hash_value(v19);
  }

  else
  {
    v45 = 0;
  }

  v20 = *(this + 20);
  if (v20)
  {
    v44 = CMMsl::SteadinessModelTemporalEntropyFeatures::hash_value(v20);
    if ((v2 & 0x100000) == 0)
    {
LABEL_70:
      v43 = 0;
      goto LABEL_73;
    }
  }

  else
  {
    v44 = 0;
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_70;
    }
  }

  v43 = *(this + 236);
LABEL_73:
  v21 = *(this + 11);
  if (v21)
  {
    v42 = CMMsl::SteadinessModelBalanceFeatures::hash_value(v21);
    if ((v2 & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v42 = 0;
    if ((v2 & 1) == 0)
    {
LABEL_75:
      v41 = 0.0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_76;
      }

LABEL_112:
      v40 = 0.0;
      if ((v2 & 0x20000) != 0)
      {
        goto LABEL_79;
      }

LABEL_113:
      v39 = 0;
      if ((v2 & 0x1000000) != 0)
      {
        goto LABEL_82;
      }

      goto LABEL_114;
    }
  }

  v33 = *(this + 1);
  if (v33 == 0.0)
  {
    v33 = 0.0;
  }

  v41 = v33;
  if ((v2 & 8) == 0)
  {
    goto LABEL_112;
  }

LABEL_76:
  v22 = *(this + 4);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  v40 = v22;
  if ((v2 & 0x20000) == 0)
  {
    goto LABEL_113;
  }

LABEL_79:
  v23 = *(this + 56);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  v39 = v24;
  if ((v2 & 0x1000000) != 0)
  {
LABEL_82:
    v38 = *(this + 240);
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_83;
    }

LABEL_115:
    v25 = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_87;
    }

LABEL_116:
    v26 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_91;
    }

LABEL_117:
    v27 = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_95;
    }

LABEL_118:
    v28 = 0;
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_99;
    }

    goto LABEL_119;
  }

LABEL_114:
  v38 = 0;
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_115;
  }

LABEL_83:
  if (*(this + 25) == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(this + 25);
  }

  if ((v2 & 0x40) == 0)
  {
    goto LABEL_116;
  }

LABEL_87:
  if (*(this + 7) == 0.0)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(this + 7);
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_117;
  }

LABEL_91:
  if (*(this + 2) == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(this + 2);
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_118;
  }

LABEL_95:
  if (*(this + 5) == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(this + 5);
  }

  if ((v2 & 0x4000) != 0)
  {
LABEL_99:
    v29 = *(this + 53);
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_100;
    }

    goto LABEL_120;
  }

LABEL_119:
  v29 = 0;
  if ((v2 & 0x2000) != 0)
  {
LABEL_100:
    v30 = *(this + 52);
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_101;
    }

    goto LABEL_121;
  }

LABEL_120:
  v30 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_101:
    if (*(this + 6) == 0.0)
    {
      v31 = 0;
    }

    else
    {
      v31 = *(this + 6);
    }

    if ((v2 & 4) != 0)
    {
      goto LABEL_105;
    }

    goto LABEL_122;
  }

LABEL_121:
  v31 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_105:
    if (*(this + 3) == 0.0)
    {
      v32 = 0;
    }

    else
    {
      v32 = *(this + 3);
    }

    goto LABEL_123;
  }

LABEL_122:
  v32 = 0;
LABEL_123:
  v34 = *(this + 17);
  if (v34)
  {
    v35 = CMMsl::SteadinessModelResult::hash_value(v34);
  }

  else
  {
    v35 = 0;
  }

  v36 = *(this + 16);
  if (v36)
  {
    v36 = CMMsl::SteadinessModelHarmonicFeatures::hash_value(v36);
  }

  return *&v65 ^ *&v66 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ *&v58 ^ v57 ^ v56 ^ *&v55 ^ v54 ^ *&v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ *&v41 ^ *&v40 ^ v39 ^ v38 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v35 ^ v36;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeEventResult(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelGaitBaselineResult(uint64_t this)
{
  if (!*(this + 120))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelGaitBaselineFeatures(uint64_t this)
{
  if (!*(this + 112))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelContinuousWalkingResult(uint64_t this)
{
  if (!*(this + 104))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelContinuousWalkingFeatures(uint64_t this)
{
  if (!*(this + 96))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelTemporalDispersionResult(uint64_t this)
{
  if (!*(this + 152))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelTemporalDispersionFeatures(uint64_t this)
{
  if (!*(this + 144))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelTemporalEntropyResult(uint64_t this)
{
  if (!*(this + 168))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelTemporalEntropyFeatures(uint64_t this)
{
  if (!*(this + 160))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelBalanceFeatures(uint64_t this)
{
  if (!*(this + 88))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelHarmonicResult(uint64_t this)
{
  if (!*(this + 136))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WalkingSteadinessClassification::makeModelHarmonicFeatures(uint64_t this)
{
  if (!*(this + 128))
  {
    operator new();
  }

  return this;
}

void CMMsl::WatchActiveCalories::~WatchActiveCalories(CMMsl::WatchActiveCalories *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::WatchActiveCalories::WatchActiveCalories(CMMsl::WatchActiveCalories *this, const CMMsl::WatchActiveCalories *a2)
{
  *this = &unk_286C246A8;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    LODWORD(result) = *(a2 + 6);
    v3 = 4;
    *(this + 28) = 4;
    *(this + 6) = LODWORD(result);
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    *(this + 28) = v3 | 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::WatchActiveCalories::operator=(uint64_t a1, const CMMsl::WatchActiveCalories *a2)
{
  if (a1 != a2)
  {
    CMMsl::WatchActiveCalories::WatchActiveCalories(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v10;
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

double CMMsl::swap(CMMsl *this, CMMsl::WatchActiveCalories *a2, CMMsl::WatchActiveCalories *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::WatchActiveCalories::WatchActiveCalories(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C246A8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C246A8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::WatchActiveCalories::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C246A8;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v12 = *(a1 + 28);
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v5;
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    *(a1 + 28) = v3;
    *(a1 + 8) = v7;
    v10 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::WatchActiveCalories::formatText(CMMsl::WatchActiveCalories *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "calories_kCal", *(this + 6));
    v5 = *(this + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "globalMachtime", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "localMachtime", *(this + 2));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WatchActiveCalories::readFrom(CMMsl::WatchActiveCalories *this, PB::Reader *a2)
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
        goto LABEL_39;
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
        goto LABEL_39;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_33:
        v2 = *(a2 + 1) + 8;
LABEL_34:
        *(a2 + 1) = v2;
        goto LABEL_35;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 6) = *(*a2 + v2);
        v2 = *(a2 + 1) + 4;
        goto LABEL_34;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_35:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_39;
      }
    }

    *(this + 28) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_31:
      *(a2 + 24) = 1;
      goto LABEL_35;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_33;
  }

LABEL_39:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::WatchActiveCalories::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 28) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::WatchActiveCalories::hash_value(CMMsl::WatchActiveCalories *this)
{
  if ((*(this + 28) & 4) != 0)
  {
    v4 = *(this + 6);
    v1 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v1 = 0;
    }

    if ((*(this + 28) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 2);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if (*(this + 28))
      {
        goto LABEL_6;
      }

LABEL_13:
      v3 = 0.0;
      return *&v2 ^ v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3;
}

void CMMsl::WatchBasalCalories::~WatchBasalCalories(CMMsl::WatchBasalCalories *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::WatchBasalCalories::WatchBasalCalories(CMMsl::WatchBasalCalories *this, const CMMsl::WatchBasalCalories *a2)
{
  *this = &unk_286C246E0;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    LODWORD(result) = *(a2 + 6);
    v3 = 4;
    *(this + 28) = 4;
    *(this + 6) = LODWORD(result);
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    *(this + 28) = v3 | 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::WatchBasalCalories::operator=(uint64_t a1, const CMMsl::WatchBasalCalories *a2)
{
  if (a1 != a2)
  {
    CMMsl::WatchBasalCalories::WatchBasalCalories(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v10;
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

double CMMsl::swap(CMMsl *this, CMMsl::WatchBasalCalories *a2, CMMsl::WatchBasalCalories *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::WatchBasalCalories::WatchBasalCalories(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C246E0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C246E0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::WatchBasalCalories::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C246E0;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v12 = *(a1 + 28);
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v5;
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    *(a1 + 28) = v3;
    *(a1 + 8) = v7;
    v10 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::WatchBasalCalories::formatText(CMMsl::WatchBasalCalories *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "calories_kCal", *(this + 6));
    v5 = *(this + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "globalMachtime", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "localMachtime", *(this + 2));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WatchBasalCalories::readFrom(CMMsl::WatchBasalCalories *this, PB::Reader *a2)
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
        goto LABEL_39;
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
        goto LABEL_39;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_33:
        v2 = *(a2 + 1) + 8;
LABEL_34:
        *(a2 + 1) = v2;
        goto LABEL_35;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 6) = *(*a2 + v2);
        v2 = *(a2 + 1) + 4;
        goto LABEL_34;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_35:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_39;
      }
    }

    *(this + 28) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_31:
      *(a2 + 24) = 1;
      goto LABEL_35;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_33;
  }

LABEL_39:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::WatchBasalCalories::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 28) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::WatchBasalCalories::hash_value(CMMsl::WatchBasalCalories *this)
{
  if ((*(this + 28) & 4) != 0)
  {
    v4 = *(this + 6);
    v1 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v1 = 0;
    }

    if ((*(this + 28) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 2);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if (*(this + 28))
      {
        goto LABEL_6;
      }

LABEL_13:
      v3 = 0.0;
      return *&v2 ^ v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3;
}

void CMMsl::WatchEnclosureMaterial::~WatchEnclosureMaterial(CMMsl::WatchEnclosureMaterial *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WatchEnclosureMaterial::WatchEnclosureMaterial(uint64_t this, const CMMsl::WatchEnclosureMaterial *a2)
{
  *this = &unk_286C24718;
  *(this + 24) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    v3 = *(a2 + 2);
    *(this + 24) = 2;
    *(this + 16) = v3;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    v4 = *(a2 + 1);
    *(this + 24) = v2;
    *(this + 8) = v4;
  }

  return this;
}

uint64_t CMMsl::WatchEnclosureMaterial::operator=(uint64_t a1, const CMMsl::WatchEnclosureMaterial *a2)
{
  if (a1 != a2)
  {
    CMMsl::WatchEnclosureMaterial::WatchEnclosureMaterial(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WatchEnclosureMaterial *a2, CMMsl::WatchEnclosureMaterial *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  return result;
}

double CMMsl::WatchEnclosureMaterial::WatchEnclosureMaterial(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24718;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

{
  *a1 = &unk_286C24718;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::WatchEnclosureMaterial::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a2 + 16);
    v5 = *(a2 + 8);
    v6 = *(a1 + 24);
    *(a1 + 24) = v3;
    v11 = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = v4;
    v10[2] = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10[0] = &unk_286C24718;
    v10[1] = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::WatchEnclosureMaterial::formatText(CMMsl::WatchEnclosureMaterial *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "enclosureMaterial");
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WatchEnclosureMaterial::readFrom(CMMsl::WatchEnclosureMaterial *this, PB::Reader *a2)
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_51;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 24) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(a2 + 1);
          }

          v32 = (v23 + v22);
          v33 = v2 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v35 = v34;
            v36 = *v32;
            *(a2 + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v32;
            --v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_45:
          v2 = v35;
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
            v2 = v28;
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

LABEL_46:
        *(this + 1) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_24:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
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
        goto LABEL_24;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::WatchEnclosureMaterial::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::WatchEnclosureMaterial::hash_value(CMMsl::WatchEnclosureMaterial *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 24))
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 1);
  return v2 ^ *&v1;
}

void CMMsl::WatchHeartRateData::~WatchHeartRateData(CMMsl::WatchHeartRateData *this)
{
  *this = &unk_286C24750;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WatchHeartRateData::~WatchHeartRateData(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WatchHeartRateData::WatchHeartRateData(uint64_t this, const CMMsl::WatchHeartRateData *a2)
{
  *this = &unk_286C24750;
  *(this + 24) = 0;
  *(this + 32) = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
    v3 = *(a2 + 2);
    *(this + 32) = 2;
    *(this + 16) = v3;
    v2 = 3;
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 32))
  {
LABEL_5:
    v4 = *(a2 + 1);
    *(this + 32) = v2;
    *(this + 8) = v4;
  }

LABEL_6:
  if (*(a2 + 3))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WatchHeartRateData::operator=(uint64_t a1, const CMMsl::WatchHeartRateData *a2)
{
  if (a1 != a2)
  {
    CMMsl::WatchHeartRateData::WatchHeartRateData(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    CMMsl::WatchHeartRateData::~WatchHeartRateData(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WatchHeartRateData *a2, CMMsl::WatchHeartRateData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t CMMsl::WatchHeartRateData::WatchHeartRateData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24750;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::WatchHeartRateData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::WatchHeartRateData::WatchHeartRateData(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    CMMsl::WatchHeartRateData::~WatchHeartRateData(v7);
  }

  return a1;
}

uint64_t CMMsl::WatchHeartRateData::formatText(CMMsl::WatchHeartRateData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "globalMachtime", *(this + 1));
    v5 = *(this + 32);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "localMachtime", *(this + 2));
  }

  v6 = *(this + 3);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WatchHeartRateData::readFrom(CMMsl::WatchHeartRateData *this, PB::Reader *a2)
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
        goto LABEL_36;
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
        goto LABEL_36;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 32) |= 2u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v23);
LABEL_31:
        *(a2 + 1) += 8;
        goto LABEL_32;
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_32:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_36;
      }
    }

    *(this + 32) |= 1u;
    v24 = *(a2 + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_32;
    }

    *(this + 1) = *(*a2 + v24);
    goto LABEL_31;
  }

LABEL_36:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t CMMsl::WatchHeartRateData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 32);
  }

  if (v4)
  {
    this = PB::Writer::write(a2, *(v3 + 8));
  }

  v5 = *(v3 + 24);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

unint64_t CMMsl::WatchHeartRateData::hash_value(CMMsl::WatchHeartRateData *this)
{
  if ((*(this + 32) & 2) != 0)
  {
    if (*(this + 2) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 2);
    }

    if (*(this + 32))
    {
      goto LABEL_3;
    }

LABEL_10:
    v2 = 0;
    goto LABEL_11;
  }

  v1 = 0;
  if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (*(this + 1) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 1);
  }

LABEL_11:
  v3 = *(this + 3);
  if (v3)
  {
    v3 = CMMsl::OnsetHeartRateData::hash_value(v3);
  }

  return v2 ^ v1 ^ v3;
}

uint64_t CMMsl::WatchHeartRateData::makeSuper(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

void CMMsl::WatchOnWristState::~WatchOnWristState(CMMsl::WatchOnWristState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WatchOnWristState::WatchOnWristState(uint64_t this, const CMMsl::WatchOnWristState *a2)
{
  *this = &unk_286C24788;
  *(this + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 8) = v4;
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
    v5 = *(a2 + 6);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 8);
    v3 |= 0x10u;
    *(this + 40) = v3;
    *(this + 32) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 8u;
  *(this + 40) = v3;
  *(this + 28) = v7;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 37);
  v3 |= 0x40u;
  *(this + 40) = v3;
  *(this + 37) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 36);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 36) = v9;
  v2 = *(a2 + 40);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_18:
    v11 = *(a2 + 2);
    *(this + 40) = v3 | 2;
    *(this + 16) = v11;
    return this;
  }

LABEL_17:
  v10 = *(a2 + 38);
  v3 |= 0x80u;
  *(this + 40) = v3;
  *(this + 38) = v10;
  if ((*(a2 + 40) & 2) != 0)
  {
    goto LABEL_18;
  }

  return this;
}

uint64_t CMMsl::WatchOnWristState::operator=(uint64_t a1, const CMMsl::WatchOnWristState *a2)
{
  if (a1 != a2)
  {
    CMMsl::WatchOnWristState::WatchOnWristState(&v9, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v17;
    v17 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v6;
    LOBYTE(v5) = *(a1 + 37);
    *(a1 + 37) = v15;
    v15 = v5;
    LOBYTE(v5) = *(a1 + 36);
    *(a1 + 36) = v14;
    v14 = v5;
    LOBYTE(v5) = *(a1 + 38);
    *(a1 + 38) = v16;
    v16 = v5;
    v7 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WatchOnWristState *a2, CMMsl::WatchOnWristState *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  LOBYTE(v7) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v7;
  LOBYTE(v7) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v7;
  LOBYTE(v7) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  return result;
}

double CMMsl::WatchOnWristState::WatchOnWristState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24788;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C24788;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::WatchOnWristState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v15[0] = &unk_286C24788;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 37);
    v7 = *(a2 + 36);
    v8 = *(a2 + 38);
    v9 = *(a2 + 16);
    v20 = *(a1 + 40);
    v10 = *(a1 + 8);
    *(a1 + 8) = v4;
    v15[1] = v10;
    v16 = *(a1 + 32);
    v11 = *(a1 + 24);
    v12 = *(a2 + 24);
    *(a1 + 40) = v3;
    *(a1 + 32) = v5;
    *(a1 + 24) = v12;
    v15[3] = v11;
    LOBYTE(v3) = *(a1 + 37);
    *(a1 + 37) = v6;
    v18 = v3;
    LOBYTE(v3) = *(a1 + 36);
    *(a1 + 36) = v7;
    v17 = v3;
    LOBYTE(v3) = *(a1 + 38);
    *(a1 + 38) = v8;
    v19 = v3;
    v13 = *(a1 + 16);
    *(a1 + 16) = v9;
    v15[2] = v13;
    PB::Base::~Base(v15);
  }

  return a1;
}

uint64_t CMMsl::WatchOnWristState::formatText(CMMsl::WatchOnWristState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "date", *(this + 1));
    v5 = *(this + 40);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 40) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 36);
  PB::TextFormatter::format(a2, "isForcedOnWristEnabled");
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(this + 37);
  PB::TextFormatter::format(a2, "isOnCharger");
  v5 = *(this + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(this + 38);
  PB::TextFormatter::format(a2, "isWristDetectionEnabled");
  v5 = *(this + 40);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = *(this + 6);
  PB::TextFormatter::format(a2, "onWrist");
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = *(this + 7);
  PB::TextFormatter::format(a2, "onWristConfidence");
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v12 = *(this + 8);
  PB::TextFormatter::format(a2, "onWristSensor");
  if ((*(this + 40) & 2) != 0)
  {
LABEL_9:
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_10:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WatchOnWristState::readFrom(CMMsl::WatchOnWristState *this, PB::Reader *a2)
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
          *(this + 40) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v60 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v59 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v60 = v59 != 0;
          }

          *(this + 38) = v60;
          goto LABEL_19;
        }

        if (v22 == 8)
        {
          *(this + 40) |= 2u;
          v41 = *(a2 + 1);
          v2 = *(a2 + 2);
          v42 = *a2;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
          {
            v82 = 0;
            v83 = 0;
            v45 = 0;
            if (v2 <= v41)
            {
              v2 = *(a2 + 1);
            }

            v84 = (v42 + v41);
            v85 = v2 - v41;
            v86 = v41 + 1;
            while (1)
            {
              if (!v85)
              {
                v45 = 0;
                *(a2 + 24) = 1;
                goto LABEL_129;
              }

              v87 = v86;
              v88 = *v84;
              *(a2 + 1) = v87;
              v45 |= (v88 & 0x7F) << v82;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              ++v84;
              --v85;
              v86 = v87 + 1;
              v14 = v83++ > 8;
              if (v14)
              {
                v45 = 0;
                goto LABEL_128;
              }
            }

            if (*(a2 + 24))
            {
              v45 = 0;
            }

LABEL_128:
            v2 = v87;
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
                v45 = 0;
                break;
              }
            }
          }

LABEL_129:
          *(this + 2) = v45;
          goto LABEL_19;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(this + 40) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v50 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v49 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v50 = v49 != 0;
          }

          *(this + 37) = v50;
          goto LABEL_19;
        }

        if (v22 == 6)
        {
          *(this + 40) |= 0x20u;
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

          *(this + 36) = v32;
          goto LABEL_19;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 40) |= 0x10u;
        v51 = *(a2 + 1);
        v2 = *(a2 + 2);
        v52 = *a2;
        if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v2)
        {
          v61 = 0;
          v62 = 0;
          v55 = 0;
          if (v2 <= v51)
          {
            v2 = *(a2 + 1);
          }

          v63 = (v52 + v51);
          v64 = v2 - v51;
          v65 = v51 + 1;
          while (1)
          {
            if (!v64)
            {
              LODWORD(v55) = 0;
              *(a2 + 24) = 1;
              goto LABEL_117;
            }

            v66 = v65;
            v67 = *v63;
            *(a2 + 1) = v66;
            v55 |= (v67 & 0x7F) << v61;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            ++v63;
            --v64;
            v65 = v66 + 1;
            v14 = v62++ > 8;
            if (v14)
            {
              LODWORD(v55) = 0;
              goto LABEL_116;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v55) = 0;
          }

LABEL_116:
          v2 = v66;
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
            v2 = v57;
            *(a2 + 1) = v57;
            v58 = *v56++;
            v55 |= (v58 & 0x7F) << v53;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            ++v57;
            v14 = v54++ > 8;
            if (v14)
            {
              LODWORD(v55) = 0;
              break;
            }
          }
        }

LABEL_117:
        *(this + 8) = v55;
        goto LABEL_19;
      }

      if (v22 == 4)
      {
        *(this + 40) |= 8u;
        v33 = *(a2 + 1);
        v2 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
        {
          v75 = 0;
          v76 = 0;
          v37 = 0;
          if (v2 <= v33)
          {
            v2 = *(a2 + 1);
          }

          v77 = (v34 + v33);
          v78 = v2 - v33;
          v79 = v33 + 1;
          while (1)
          {
            if (!v78)
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
              goto LABEL_125;
            }

            v80 = v79;
            v81 = *v77;
            *(a2 + 1) = v80;
            v37 |= (v81 & 0x7F) << v75;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            ++v77;
            --v78;
            v79 = v80 + 1;
            v14 = v76++ > 8;
            if (v14)
            {
              LODWORD(v37) = 0;
              goto LABEL_124;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v37) = 0;
          }

LABEL_124:
          v2 = v80;
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

LABEL_125:
        *(this + 7) = v37;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 40) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 40) |= 4u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v68 = 0;
          v69 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v70 = (v24 + v23);
          v71 = v2 - v23;
          v72 = v23 + 1;
          while (1)
          {
            if (!v71)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_121;
            }

            v73 = v72;
            v74 = *v70;
            *(a2 + 1) = v73;
            v27 |= (v74 & 0x7F) << v68;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            ++v70;
            --v71;
            v72 = v73 + 1;
            v14 = v69++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_120;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_120:
          v2 = v73;
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

LABEL_121:
        *(this + 6) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v89 = 0;
      return v89 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v89 = v4 ^ 1;
  return v89 & 1;
}

uint64_t CMMsl::WatchOnWristState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(v3 + 37);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v10 = *(v3 + 38);
    this = PB::Writer::write(a2);
    if ((*(v3 + 40) & 2) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  v9 = *(v3 + 36);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 40);
  if (v4 < 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_17:
  v11 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::WatchOnWristState::hash_value(CMMsl::WatchOnWristState *this)
{
  if (*(this + 40))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 40) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 6);
      if ((*(this + 40) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 40) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(this + 8);
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v3 = 0;
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    v4 = *(this + 7);
    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((*(this + 40) & 0x40) != 0)
  {
LABEL_6:
    v5 = *(this + 37);
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 40) & 0x20) != 0)
  {
LABEL_7:
    v6 = *(this + 36);
    if ((*(this + 40) & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v7 = 0;
    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v8 = 0;
    return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_17:
  v6 = 0;
  if ((*(this + 40) & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v7 = *(this + 38);
  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v8 = *(this + 2);
  return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

void CMMsl::WatchOrientationSettings::~WatchOrientationSettings(CMMsl::WatchOrientationSettings *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WatchOrientationSettings::WatchOrientationSettings(uint64_t this, const CMMsl::WatchOrientationSettings *a2)
{
  *this = &unk_286C247C0;
  *(this + 16) = 0;
  if ((*(a2 + 16) & 2) != 0)
  {
    v3 = *(a2 + 3);
    *(this + 16) = 2;
    *(this + 12) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 1) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 16))
  {
LABEL_5:
    v4 = *(a2 + 2);
    *(this + 16) = v2;
    *(this + 8) = v4;
  }

  return this;
}

uint64_t CMMsl::WatchOrientationSettings::operator=(uint64_t a1, const CMMsl::WatchOrientationSettings *a2)
{
  if (a1 != a2)
  {
    CMMsl::WatchOrientationSettings::WatchOrientationSettings(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

_DWORD *CMMsl::swap(_DWORD *this, CMMsl::WatchOrientationSettings *a2, CMMsl::WatchOrientationSettings *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  return this;
}

uint64_t CMMsl::WatchOrientationSettings::WatchOrientationSettings(uint64_t result, _DWORD *a2)
{
  *result = &unk_286C247C0;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 12) = a2[3];
  *(result + 8) = a2[2];
  return result;
}

{
  *result = &unk_286C247C0;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 12) = a2[3];
  *(result + 8) = a2[2];
  return result;
}

uint64_t CMMsl::WatchOrientationSettings::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_286C247C0;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::WatchOrientationSettings::formatText(CMMsl::WatchOrientationSettings *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "crown");
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 3);
    PB::TextFormatter::format(a2, "wrist");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WatchOrientationSettings::readFrom(CMMsl::WatchOrientationSettings *this, PB::Reader *a2)
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
        *(this + 16) |= 1u;
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
        *(this + 2) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 2u;
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
              LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_60:
        *(this + 3) = v26;
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

uint64_t CMMsl::WatchOrientationSettings::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 12);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    v6 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::WatchOrientationSettings::hash_value(CMMsl::WatchOrientationSettings *this)
{
  if ((*(this + 16) & 2) != 0)
  {
    v1 = *(this + 3);
    if (*(this + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 2);
  return v2 ^ v1;
}

uint64_t CMMsl::WifiScanEntry::WifiScanEntry(uint64_t this)
{
  *this = &unk_286C247F8;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C247F8;
  *(this + 32) = 0;
  return this;
}

void CMMsl::WifiScanEntry::~WifiScanEntry(CMMsl::WifiScanEntry *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WifiScanEntry::WifiScanEntry(uint64_t this, const CMMsl::WifiScanEntry *a2)
{
  *this = &unk_286C247F8;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 6);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 28);
    *(this + 32) = v3 | 8;
    *(this + 28) = v7;
    return this;
  }

  v6 = *(a2 + 2);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 16) = v6;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::WifiScanEntry::operator=(uint64_t a1, const CMMsl::WifiScanEntry *a2)
{
  if (a1 != a2)
  {
    CMMsl::WifiScanEntry::WifiScanEntry(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    LODWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    LOBYTE(v4) = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::WifiScanEntry *a2, CMMsl::WifiScanEntry *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LOBYTE(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  return result;
}

double CMMsl::WifiScanEntry::WifiScanEntry(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C247F8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

{
  *a1 = &unk_286C247F8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t CMMsl::WifiScanEntry::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 16);
    v7 = *(a2 + 28);
    v8 = *(a1 + 32);
    *(a1 + 32) = v3;
    v15 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12[0] = &unk_286C247F8;
    v12[1] = v9;
    LODWORD(v9) = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v9;
    v10 = *(a1 + 16);
    *(a1 + 16) = v6;
    v12[2] = v10;
    LOBYTE(v9) = *(a1 + 28);
    *(a1 + 28) = v7;
    v14 = v9;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::WifiScanEntry::formatText(CMMsl::WifiScanEntry *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "entryId");
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 28);
  PB::TextFormatter::format(a2, "isMoving");
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v8 = *(this + 6);
  PB::TextFormatter::format(a2, "rssi");
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WifiScanEntry::readFrom(CMMsl::WifiScanEntry *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 32) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_19;
      }

      if (v22 == 4)
      {
        *(this + 32) |= 8u;
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

        *(this + 28) = v32;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
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
              v37 = 0;
              *(a2 + 24) = 1;
              goto LABEL_75;
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
              v37 = 0;
              goto LABEL_74;
            }
          }

          if (*(a2 + 24))
          {
            v37 = 0;
          }

LABEL_74:
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
              v37 = 0;
              break;
            }
          }
        }

LABEL_75:
        *(this + 1) = v37;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
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
              goto LABEL_71;
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
              goto LABEL_70;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_70:
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

LABEL_71:
        *(this + 6) = -(v27 & 1) ^ (v27 >> 1);
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v55 = 0;
      return v55 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t CMMsl::WifiScanEntry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16));
      if ((*(v3 + 32) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 24);
  this = PB::Writer::writeSInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v3 + 28);

  return PB::Writer::write(a2);
}

BOOL CMMsl::WifiScanEntry::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 8) == 0;
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*(a2 + 32) & 8) != 0 && *(a1 + 28) == *(a2 + 28);
  }

  return v2;
}

uint64_t CMMsl::WifiScanEntry::hash_value(CMMsl::WifiScanEntry *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if ((*(this + 32) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 6);
      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_4:
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v4 = 0;
    return v2 ^ v1 ^ *&v3 ^ v4;
  }

LABEL_10:
  v3 = 0.0;
  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v4 = *(this + 28);
  return v2 ^ v1 ^ *&v3 ^ v4;
}

void CMMsl::WifiScanResults::~WifiScanResults(CMMsl::WifiScanResults *this)
{
  *this = &unk_286C24830;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C24830;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C24830;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::WifiScanResults::WifiScanResults(void *this, const CMMsl::WifiScanResults *a2)
{
  this[1] = 0;
  *this = &unk_286C24830;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t CMMsl::WifiScanResults::operator=(uint64_t a1, const CMMsl::WifiScanResults *a2)
{
  if (a1 != a2)
  {
    CMMsl::WifiScanResults::WifiScanResults(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_286C24830;
    v9 = &v7;
    sub_25AD28930(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::WifiScanResults *a2, CMMsl::WifiScanResults *a3)
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
  return this;
}

uint64_t CMMsl::WifiScanResults::WifiScanResults(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24830;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_286C24830;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_25AD289F0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::WifiScanResults::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C24830;
    v10 = 0uLL;
    v11 = 0;
    sub_25AD289F0(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_286C24830;
    sub_25AD28930(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::WifiScanResults::formatText(CMMsl::WifiScanResults *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "entries");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WifiScanResults::readFrom(CMMsl::WifiScanResults *this, PB::Reader *a2)
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
        goto LABEL_27;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_27;
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

LABEL_27:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::WifiScanResults::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL sub_25AD1A4B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v5 = a3;
  v6 = a1 + 8;
  do
  {
    v7 = *v5++;
    result = CMMsl::WifiScanEntry::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::WifiScanResults::hash_value(CMMsl::WifiScanResults *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::WifiScanEntry::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void CMMsl::WorkoutActivity::~WorkoutActivity(CMMsl::WorkoutActivity *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WorkoutActivity::WorkoutActivity(uint64_t this, const CMMsl::WorkoutActivity *a2)
{
  *this = &unk_286C24868;
  *(this + 16) = 0;
  if ((*(a2 + 16) & 2) != 0)
  {
    v3 = *(a2 + 3);
    *(this + 16) = 2;
    *(this + 12) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 1) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 16))
  {
LABEL_5:
    v4 = *(a2 + 2);
    *(this + 16) = v2;
    *(this + 8) = v4;
  }

  return this;
}

uint64_t CMMsl::WorkoutActivity::operator=(uint64_t a1, const CMMsl::WorkoutActivity *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutActivity::WorkoutActivity(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

_DWORD *CMMsl::swap(_DWORD *this, CMMsl::WorkoutActivity *a2, CMMsl::WorkoutActivity *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  return this;
}

uint64_t CMMsl::WorkoutActivity::WorkoutActivity(uint64_t result, _DWORD *a2)
{
  *result = &unk_286C24868;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 12) = a2[3];
  *(result + 8) = a2[2];
  return result;
}

{
  *result = &unk_286C24868;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 12) = a2[3];
  *(result + 8) = a2[2];
  return result;
}

uint64_t CMMsl::WorkoutActivity::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_286C24868;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::WorkoutActivity::formatText(CMMsl::WorkoutActivity *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "activityType");
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 3);
    PB::TextFormatter::format(a2, "motionNotification");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutActivity::readFrom(CMMsl::WorkoutActivity *this, PB::Reader *a2)
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
        *(this + 16) |= 1u;
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
        *(this + 2) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 2u;
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
              LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_60:
        *(this + 3) = v26;
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

uint64_t CMMsl::WorkoutActivity::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 12);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    v6 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::WorkoutActivity::hash_value(CMMsl::WorkoutActivity *this)
{
  if ((*(this + 16) & 2) != 0)
  {
    v1 = *(this + 3);
    if (*(this + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 2);
  return v2 ^ v1;
}

void CMMsl::WorkoutEvent::~WorkoutEvent(CMMsl::WorkoutEvent *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::WorkoutEvent::WorkoutEvent(uint64_t this, const CMMsl::WorkoutEvent *a2)
{
  *this = &unk_286C248A0;
  *(this + 64) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) != 0)
  {
    v4 = *(a2 + 15);
    v3 = 512;
    *(this + 64) = 512;
    *(this + 60) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 10);
    v3 |= 0x10u;
    *(this + 64) = v3;
    *(this + 40) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 64) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 8u;
  *(this + 64) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 64) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 13);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 52) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 14);
  v3 |= 0x100u;
  *(this + 64) = v3;
  *(this + 56) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 12);
  v3 |= 0x40u;
  *(this + 64) = v3;
  *(this + 48) = v11;
  v2 = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_22:
    v13 = *(a2 + 11);
    *(this + 64) = v3 | 0x20;
    *(this + 44) = v13;
    return this;
  }

LABEL_21:
  v12 = *(a2 + 3);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 24) = v12;
  if ((*(a2 + 32) & 0x20) != 0)
  {
    goto LABEL_22;
  }

  return this;
}