uint64_t CMMsl::AccessoryWake::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if ((v4 & 4) != 0)
  {
    v9 = *(this + 44);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 52);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v10 = *(v3 + 48);
      this = PB::Writer::writeVarInt(a2);
      if ((*(v3 + 52) & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(this + 52) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v4 & 2) != 0)
  {
LABEL_5:
    v5 = *(v3 + 40);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_6:
  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    this = PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::AccessoryWake::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 52);
  if ((*(a1 + 52) & 4) != 0)
  {
    if ((*(a2 + 52) & 4) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 52))
  {
    if ((*(a2 + 52) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 52))
  {
    return 0;
  }

  if ((*(a1 + 52) & 8) != 0)
  {
    if ((*(a2 + 52) & 8) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 2) != 0)
  {
    if ((*(a2 + 52) & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = *(a1 + 16) - v3;
  if (v5 == *(a2 + 16) - v4)
  {
    return memcmp(v3, v4, v5) == 0;
  }

  return 0;
}

uint64_t CMMsl::AccessoryWake::hash_value(CMMsl::AccessoryWake *this)
{
  if ((*(this + 52) & 4) == 0)
  {
    v1 = 0;
    if (*(this + 52))
    {
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    if ((*(this + 52) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v3 = 0;
    if ((*(this + 52) & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v1 = *(this + 11);
  if ((*(this + 52) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 52) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v3 = *(this + 12);
  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v4 = *(this + 10);
LABEL_12:
  v5 = *(this + 2) - *(this + 1);
  return *&v2 ^ v1 ^ v3 ^ v4 ^ PBHashBytes();
}

double CMMsl::AccessoryWakeDebug::AccessoryWakeDebug(CMMsl::AccessoryWakeDebug *this)
{
  *this = &unk_286C1E860;
  *(this + 48) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  return result;
}

{
  *this = &unk_286C1E860;
  *(this + 48) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  return result;
}

void CMMsl::AccessoryWakeDebug::~AccessoryWakeDebug(CMMsl::AccessoryWakeDebug *this)
{
  *this = &unk_286C1E860;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AccessoryWakeDebug::~AccessoryWakeDebug(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::AccessoryWakeDebug *CMMsl::AccessoryWakeDebug::AccessoryWakeDebug(CMMsl::AccessoryWakeDebug *this, const CMMsl::AccessoryWakeDebug *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *this = &unk_286C1E860;
  *(this + 104) = 0u;
  *(this + 48) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  if (*(a2 + 96))
  {
    v5 = *(a2 + 19);
    *(this + 96) = 1;
    *(this + 19) = v5;
  }

  if (this != a2)
  {
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_25AD287AC(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_25AD287AC(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  v6 = *(a2 + 96);
  if ((v6 & 0x80) != 0)
  {
    v9 = *(a2 + 46);
    *(this + 96) |= 0x80u;
    *(this + 46) = v9;
    v6 = *(a2 + 96);
    if ((v6 & 0x40) == 0)
    {
LABEL_7:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 45);
  *(this + 96) |= 0x40u;
  *(this + 45) = v10;
  v6 = *(a2 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(a2 + 47);
  *(this + 96) |= 0x100u;
  *(this + 47) = v11;
  v6 = *(a2 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = *(a2 + 41);
  *(this + 96) |= 4u;
  *(this + 41) = v12;
  v6 = *(a2 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = *(a2 + 42);
  *(this + 96) |= 8u;
  *(this + 42) = v13;
  v6 = *(a2 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = *(a2 + 44);
  *(this + 96) |= 0x20u;
  *(this + 44) = v14;
  v6 = *(a2 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_12:
    if ((v6 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  v15 = *(a2 + 43);
  *(this + 96) |= 0x10u;
  *(this + 43) = v15;
  if ((*(a2 + 96) & 2) != 0)
  {
LABEL_13:
    v7 = *(a2 + 40);
    *(this + 96) |= 2u;
    *(this + 40) = v7;
  }

LABEL_14:
  if (this != a2)
  {
    sub_25AD287AC(this + 13, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
    sub_25AD287AC(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
  }

  return this;
}

CMMsl *CMMsl::AccessoryWakeDebug::operator=(CMMsl *a1, const CMMsl::AccessoryWakeDebug *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryWakeDebug::AccessoryWakeDebug(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AccessoryWakeDebug::~AccessoryWakeDebug(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccessoryWakeDebug *a2, CMMsl::AccessoryWakeDebug *a3)
{
  v3 = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v3;
  v4 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  v12 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v12;
  v13 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v13;
  v14 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v14;
  v15 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v15;
  v16 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v16;
  LODWORD(v4) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v4;
  LODWORD(v16) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v16;
  LODWORD(v16) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v16;
  LODWORD(v4) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v4;
  LODWORD(v4) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v4;
  LODWORD(v16) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v16;
  LODWORD(v4) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v4;
  result = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = result;
  v18 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v18;
  v19 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v19;
  v20 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v20;
  v21 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v21;
  v22 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v22;
  v23 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v23;
  return result;
}

uint64_t CMMsl::AccessoryWakeDebug::AccessoryWakeDebug(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E860;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v4 = a1 + 104;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 152) = *(a2 + 152);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(a1 + 80, (a2 + 80));
  sub_25AD28758(v5, (a2 + 56));
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 160) = *(a2 + 160);
  sub_25AD28758(v4, (a2 + 104));
  sub_25AD28758(a1 + 128, (a2 + 128));
  return a1;
}

CMMsl *CMMsl::AccessoryWakeDebug::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AccessoryWakeDebug::AccessoryWakeDebug(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AccessoryWakeDebug::~AccessoryWakeDebug(v5);
  }

  return a1;
}

uint64_t CMMsl::AccessoryWakeDebug::formatText(CMMsl::AccessoryWakeDebug *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "accelDecimated", v7);
  }

  if ((*(this + 96) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "accelFrontVariance", *(this + 40));
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "accelMean", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "accelNormAutocorr", v13);
  }

  v14 = *(this + 96);
  if ((v14 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "accelNormMean", *(this + 41));
    v14 = *(this + 96);
  }

  if ((v14 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "accelNormVariance", *(this + 42));
  }

  v15 = *(this + 10);
  v16 = *(this + 11);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(a2, "accelVariance", v17);
  }

  v18 = *(this + 96);
  if ((v18 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "currentAngleDelta", *(this + 43));
    v18 = *(this + 96);
    if ((v18 & 0x20) == 0)
    {
LABEL_17:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v18 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v28 = *(this + 44);
  PB::TextFormatter::format(a2, "currentMotionState");
  if ((*(this + 96) & 0x40) != 0)
  {
LABEL_18:
    v19 = *(this + 45);
    PB::TextFormatter::format(a2, "lagAtMaxAutocorr");
  }

LABEL_19:
  v20 = *(this + 13);
  v21 = *(this + 14);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(a2, "lastBaseline", v22);
  }

  v23 = *(this + 96);
  if ((v23 & 0x80) != 0)
  {
    PB::TextFormatter::format(a2, "maxAutocorr", *(this + 46));
    v23 = *(this + 96);
  }

  if (v23)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 19));
  }

  v24 = *(this + 16);
  v25 = *(this + 17);
  while (v24 != v25)
  {
    v26 = *v24++;
    PB::TextFormatter::format(a2, "walkingBaseline", v26);
  }

  if ((*(this + 96) & 0x100) != 0)
  {
    v27 = *(this + 47);
    PB::TextFormatter::format(a2, "widthAtMaxAutocorr");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AccessoryWakeDebug::readFrom(CMMsl::AccessoryWakeDebug *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_306;
  }

  do
  {
    v7 = *a2;
    if (v2 <= 0xFFFFFFFFFFFFFFF5 && v2 + 10 <= v3)
    {
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
      v22 = v10 & 7;
      if (v22 == 4)
      {
        v4 = 0;
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 96) |= 1u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_298;
          }

          *(this + 19) = *(*a2 + v23);
          v24 = *(a2 + 1) + 8;
          goto LABEL_301;
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_308;
            }

            v101 = *(a2 + 1);
            v102 = *(a2 + 2);
            while (v101 < v102 && (*(a2 + 24) & 1) == 0)
            {
              v104 = *(this + 2);
              v103 = *(this + 3);
              if (v104 >= v103)
              {
                v106 = *(this + 1);
                v107 = v104 - v106;
                v108 = (v104 - v106) >> 2;
                v109 = v108 + 1;
                if ((v108 + 1) >> 62)
                {
                  goto LABEL_310;
                }

                v110 = v103 - v106;
                if (v110 >> 1 > v109)
                {
                  v109 = v110 >> 1;
                }

                if (v110 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v111 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v111 = v109;
                }

                if (v111)
                {
                  sub_25AD288E8(v111);
                }

                v112 = (v104 - v106) >> 2;
                v113 = (4 * v108);
                v114 = (4 * v108 - 4 * v112);
                *v113 = 0;
                v105 = v113 + 1;
                memcpy(v114, v106, v107);
                v115 = *(this + 1);
                *(this + 1) = v114;
                *(this + 2) = v105;
                *(this + 3) = 0;
                if (v115)
                {
                  operator delete(v115);
                }
              }

              else
              {
                *v104 = 0;
                v105 = v104 + 4;
              }

              *(this + 2) = v105;
              v116 = *(a2 + 1);
              if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(a2 + 2))
              {
                goto LABEL_180;
              }

              *(v105 - 1) = *(*a2 + v116);
              v102 = *(a2 + 2);
              v101 = *(a2 + 1) + 4;
              *(a2 + 1) = v101;
            }

            goto LABEL_181;
          }

          v169 = *(this + 2);
          v168 = *(this + 3);
          if (v169 < v168)
          {
            *v169 = 0;
            v155 = v169 + 4;
LABEL_292:
            *(this + 2) = v155;
            goto LABEL_296;
          }

          v208 = *(this + 1);
          v209 = v169 - v208;
          v210 = (v169 - v208) >> 2;
          v211 = v210 + 1;
          if (!((v210 + 1) >> 62))
          {
            v212 = v168 - v208;
            if (v212 >> 1 > v211)
            {
              v211 = v212 >> 1;
            }

            if (v212 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v213 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v213 = v211;
            }

            if (v213)
            {
              sub_25AD288E8(v213);
            }

            v236 = (v169 - v208) >> 2;
            v237 = (4 * v210);
            v238 = (4 * v210 - 4 * v236);
            *v237 = 0;
            v155 = v237 + 1;
            memcpy(v238, v208, v209);
            v239 = *(this + 1);
            *(this + 1) = v238;
            *(this + 2) = v155;
            *(this + 3) = 0;
            if (v239)
            {
              operator delete(v239);
            }

            goto LABEL_292;
          }

          goto LABEL_310;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_308;
            }

            v60 = *(a2 + 1);
            v61 = *(a2 + 2);
            while (v60 < v61 && (*(a2 + 24) & 1) == 0)
            {
              v63 = *(this + 5);
              v62 = *(this + 6);
              if (v63 >= v62)
              {
                v65 = *(this + 4);
                v66 = v63 - v65;
                v67 = (v63 - v65) >> 2;
                v68 = v67 + 1;
                if ((v67 + 1) >> 62)
                {
                  goto LABEL_310;
                }

                v69 = v62 - v65;
                if (v69 >> 1 > v68)
                {
                  v68 = v69 >> 1;
                }

                if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v70 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = v68;
                }

                if (v70)
                {
                  sub_25AD288E8(v70);
                }

                v71 = (v63 - v65) >> 2;
                v72 = (4 * v67);
                v73 = (4 * v67 - 4 * v71);
                *v72 = 0;
                v64 = v72 + 1;
                memcpy(v73, v65, v66);
                v74 = *(this + 4);
                *(this + 4) = v73;
                *(this + 5) = v64;
                *(this + 6) = 0;
                if (v74)
                {
                  operator delete(v74);
                }
              }

              else
              {
                *v63 = 0;
                v64 = v63 + 4;
              }

              *(this + 5) = v64;
              v75 = *(a2 + 1);
              if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(a2 + 2))
              {
                goto LABEL_180;
              }

              *(v64 - 1) = *(*a2 + v75);
              v61 = *(a2 + 2);
              v60 = *(a2 + 1) + 4;
              *(a2 + 1) = v60;
            }

            goto LABEL_181;
          }

          v159 = *(this + 5);
          v158 = *(this + 6);
          if (v159 < v158)
          {
            *v159 = 0;
            v155 = v159 + 4;
LABEL_286:
            *(this + 5) = v155;
            goto LABEL_296;
          }

          v196 = *(this + 4);
          v197 = v159 - v196;
          v198 = (v159 - v196) >> 2;
          v199 = v198 + 1;
          if (!((v198 + 1) >> 62))
          {
            v200 = v158 - v196;
            if (v200 >> 1 > v199)
            {
              v199 = v200 >> 1;
            }

            if (v200 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v201 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v201 = v199;
            }

            if (v201)
            {
              sub_25AD288E8(v201);
            }

            v228 = (v159 - v196) >> 2;
            v229 = (4 * v198);
            v230 = (4 * v198 - 4 * v228);
            *v229 = 0;
            v155 = v229 + 1;
            memcpy(v230, v196, v197);
            v231 = *(this + 4);
            *(this + 4) = v230;
            *(this + 5) = v155;
            *(this + 6) = 0;
            if (v231)
            {
              operator delete(v231);
            }

            goto LABEL_286;
          }

          goto LABEL_310;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_308;
            }

            v76 = *(a2 + 1);
            v77 = *(a2 + 2);
            while (v76 < v77 && (*(a2 + 24) & 1) == 0)
            {
              v79 = *(this + 11);
              v78 = *(this + 12);
              if (v79 >= v78)
              {
                v81 = *(this + 10);
                v82 = v79 - v81;
                v83 = (v79 - v81) >> 2;
                v84 = v83 + 1;
                if ((v83 + 1) >> 62)
                {
                  goto LABEL_310;
                }

                v85 = v78 - v81;
                if (v85 >> 1 > v84)
                {
                  v84 = v85 >> 1;
                }

                if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v86 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v86 = v84;
                }

                if (v86)
                {
                  sub_25AD288E8(v86);
                }

                v87 = (v79 - v81) >> 2;
                v88 = (4 * v83);
                v89 = (4 * v83 - 4 * v87);
                *v88 = 0;
                v80 = v88 + 1;
                memcpy(v89, v81, v82);
                v90 = *(this + 10);
                *(this + 10) = v89;
                *(this + 11) = v80;
                *(this + 12) = 0;
                if (v90)
                {
                  operator delete(v90);
                }
              }

              else
              {
                *v79 = 0;
                v80 = v79 + 4;
              }

              *(this + 11) = v80;
              v91 = *(a2 + 1);
              if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(a2 + 2))
              {
                goto LABEL_180;
              }

              *(v80 - 1) = *(*a2 + v91);
              v77 = *(a2 + 2);
              v76 = *(a2 + 1) + 4;
              *(a2 + 1) = v76;
            }

            goto LABEL_181;
          }

          v167 = *(this + 11);
          v166 = *(this + 12);
          if (v167 < v166)
          {
            *v167 = 0;
            v155 = v167 + 4;
LABEL_289:
            *(this + 11) = v155;
            goto LABEL_296;
          }

          v202 = *(this + 10);
          v203 = v167 - v202;
          v204 = (v167 - v202) >> 2;
          v205 = v204 + 1;
          if (!((v204 + 1) >> 62))
          {
            v206 = v166 - v202;
            if (v206 >> 1 > v205)
            {
              v205 = v206 >> 1;
            }

            if (v206 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v207 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v207 = v205;
            }

            if (v207)
            {
              sub_25AD288E8(v207);
            }

            v232 = (v167 - v202) >> 2;
            v233 = (4 * v204);
            v234 = (4 * v204 - 4 * v232);
            *v233 = 0;
            v155 = v233 + 1;
            memcpy(v234, v202, v203);
            v235 = *(this + 10);
            *(this + 10) = v234;
            *(this + 11) = v155;
            *(this + 12) = 0;
            if (v235)
            {
              operator delete(v235);
            }

            goto LABEL_289;
          }

          goto LABEL_310;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_308;
            }

            v42 = *(a2 + 1);
            v43 = *(a2 + 2);
            while (v42 < v43 && (*(a2 + 24) & 1) == 0)
            {
              v45 = *(this + 8);
              v44 = *(this + 9);
              if (v45 >= v44)
              {
                v47 = *(this + 7);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_310;
                }

                v51 = v44 - v47;
                if (v51 >> 1 > v50)
                {
                  v50 = v51 >> 1;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v52 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  sub_25AD288E8(v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(this + 7);
                *(this + 7) = v55;
                *(this + 8) = v46;
                *(this + 9) = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v45 = 0;
                v46 = v45 + 4;
              }

              *(this + 8) = v46;
              v57 = *(a2 + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
              {
                goto LABEL_180;
              }

              *(v46 - 1) = *(*a2 + v57);
              v43 = *(a2 + 2);
              v42 = *(a2 + 1) + 4;
              *(a2 + 1) = v42;
            }

            goto LABEL_181;
          }

          v157 = *(this + 8);
          v156 = *(this + 9);
          if (v157 < v156)
          {
            *v157 = 0;
            v155 = v157 + 4;
LABEL_283:
            *(this + 8) = v155;
            goto LABEL_296;
          }

          v190 = *(this + 7);
          v191 = v157 - v190;
          v192 = (v157 - v190) >> 2;
          v193 = v192 + 1;
          if (!((v192 + 1) >> 62))
          {
            v194 = v156 - v190;
            if (v194 >> 1 > v193)
            {
              v193 = v194 >> 1;
            }

            if (v194 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v195 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v195 = v193;
            }

            if (v195)
            {
              sub_25AD288E8(v195);
            }

            v224 = (v157 - v190) >> 2;
            v225 = (4 * v192);
            v226 = (4 * v192 - 4 * v224);
            *v225 = 0;
            v155 = v225 + 1;
            memcpy(v226, v190, v191);
            v227 = *(this + 7);
            *(this + 7) = v226;
            *(this + 8) = v155;
            *(this + 9) = 0;
            if (v227)
            {
              operator delete(v227);
            }

            goto LABEL_283;
          }

          goto LABEL_310;
        case 6u:
          *(this + 96) |= 0x80u;
          v117 = *(a2 + 1);
          if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(a2 + 2))
          {
            goto LABEL_298;
          }

          *(this + 46) = *(*a2 + v117);
          goto LABEL_300;
        case 7u:
          *(this + 96) |= 0x40u;
          v135 = *(a2 + 1);
          v134 = *(a2 + 2);
          v136 = *a2;
          if (v135 <= 0xFFFFFFFFFFFFFFF5 && v135 + 10 <= v134)
          {
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = (v136 + v135);
            v141 = v135 + 1;
            do
            {
              *(a2 + 1) = v141;
              v142 = *v140++;
              v139 |= (v142 & 0x7F) << v137;
              if ((v142 & 0x80) == 0)
              {
                goto LABEL_274;
              }

              v137 += 7;
              ++v141;
              v14 = v138++ > 8;
            }

            while (!v14);
LABEL_207:
            LODWORD(v139) = 0;
            goto LABEL_274;
          }

          v170 = 0;
          v171 = 0;
          v139 = 0;
          v172 = (v136 + v135);
          v18 = v134 >= v135;
          v173 = v134 - v135;
          if (!v18)
          {
            v173 = 0;
          }

          v174 = v135 + 1;
          while (2)
          {
            if (v173)
            {
              v175 = *v172;
              *(a2 + 1) = v174;
              v139 |= (v175 & 0x7F) << v170;
              if (v175 < 0)
              {
                v170 += 7;
                ++v172;
                --v173;
                ++v174;
                v14 = v171++ > 8;
                if (v14)
                {
                  goto LABEL_207;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v139) = 0;
              }
            }

            else
            {
              LODWORD(v139) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_274:
          *(this + 45) = v139;
          goto LABEL_302;
        case 8u:
          *(this + 96) |= 0x100u;
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
                goto LABEL_271;
              }

              v95 += 7;
              ++v99;
              v14 = v96++ > 8;
            }

            while (!v14);
LABEL_195:
            LODWORD(v97) = 0;
            goto LABEL_271;
          }

          v160 = 0;
          v161 = 0;
          v97 = 0;
          v162 = (v94 + v93);
          v18 = v92 >= v93;
          v163 = v92 - v93;
          if (!v18)
          {
            v163 = 0;
          }

          v164 = v93 + 1;
          while (2)
          {
            if (v163)
            {
              v165 = *v162;
              *(a2 + 1) = v164;
              v97 |= (v165 & 0x7F) << v160;
              if (v165 < 0)
              {
                v160 += 7;
                ++v162;
                --v163;
                ++v164;
                v14 = v161++ > 8;
                if (v14)
                {
                  goto LABEL_195;
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

LABEL_271:
          *(this + 47) = v97;
          goto LABEL_302;
        case 9u:
          *(this + 96) |= 4u;
          v152 = *(a2 + 1);
          if (v152 > 0xFFFFFFFFFFFFFFFBLL || v152 + 4 > *(a2 + 2))
          {
            goto LABEL_298;
          }

          *(this + 41) = *(*a2 + v152);
          goto LABEL_300;
        case 0xAu:
          *(this + 96) |= 8u;
          v59 = *(a2 + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
          {
            goto LABEL_298;
          }

          *(this + 42) = *(*a2 + v59);
          goto LABEL_300;
        case 0xBu:
          *(this + 96) |= 0x20u;
          v144 = *(a2 + 1);
          v143 = *(a2 + 2);
          v145 = *a2;
          if (v144 <= 0xFFFFFFFFFFFFFFF5 && v144 + 10 <= v143)
          {
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = (v145 + v144);
            v150 = v144 + 1;
            do
            {
              *(a2 + 1) = v150;
              v151 = *v149++;
              v148 |= (v151 & 0x7F) << v146;
              if ((v151 & 0x80) == 0)
              {
                goto LABEL_277;
              }

              v146 += 7;
              ++v150;
              v14 = v147++ > 8;
            }

            while (!v14);
LABEL_215:
            LODWORD(v148) = 0;
            goto LABEL_277;
          }

          v176 = 0;
          v177 = 0;
          v148 = 0;
          v178 = (v145 + v144);
          v18 = v143 >= v144;
          v179 = v143 - v144;
          if (!v18)
          {
            v179 = 0;
          }

          v180 = v144 + 1;
          while (2)
          {
            if (v179)
            {
              v181 = *v178;
              *(a2 + 1) = v180;
              v148 |= (v181 & 0x7F) << v176;
              if (v181 < 0)
              {
                v176 += 7;
                ++v178;
                --v179;
                ++v180;
                v14 = v177++ > 8;
                if (v14)
                {
                  goto LABEL_215;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v148) = 0;
              }
            }

            else
            {
              LODWORD(v148) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_277:
          *(this + 44) = v148;
          goto LABEL_302;
        case 0xCu:
          *(this + 96) |= 0x10u;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
          {
            goto LABEL_298;
          }

          *(this + 43) = *(*a2 + v41);
          goto LABEL_300;
        case 0xDu:
          *(this + 96) |= 2u;
          v58 = *(a2 + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
          {
            goto LABEL_298;
          }

          *(this + 40) = *(*a2 + v58);
          goto LABEL_300;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_308;
            }

            v118 = *(a2 + 1);
            v119 = *(a2 + 2);
            while (v118 < v119 && (*(a2 + 24) & 1) == 0)
            {
              v121 = *(this + 14);
              v120 = *(this + 15);
              if (v121 >= v120)
              {
                v123 = *(this + 13);
                v124 = v121 - v123;
                v125 = (v121 - v123) >> 2;
                v126 = v125 + 1;
                if ((v125 + 1) >> 62)
                {
                  goto LABEL_310;
                }

                v127 = v120 - v123;
                if (v127 >> 1 > v126)
                {
                  v126 = v127 >> 1;
                }

                if (v127 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v128 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v128 = v126;
                }

                if (v128)
                {
                  sub_25AD288E8(v128);
                }

                v129 = (v121 - v123) >> 2;
                v130 = (4 * v125);
                v131 = (4 * v125 - 4 * v129);
                *v130 = 0;
                v122 = v130 + 1;
                memcpy(v131, v123, v124);
                v132 = *(this + 13);
                *(this + 13) = v131;
                *(this + 14) = v122;
                *(this + 15) = 0;
                if (v132)
                {
                  operator delete(v132);
                }
              }

              else
              {
                *v121 = 0;
                v122 = v121 + 4;
              }

              *(this + 14) = v122;
              v133 = *(a2 + 1);
              if (v133 > 0xFFFFFFFFFFFFFFFBLL || v133 + 4 > *(a2 + 2))
              {
                goto LABEL_180;
              }

              *(v122 - 1) = *(*a2 + v133);
              v119 = *(a2 + 2);
              v118 = *(a2 + 1) + 4;
              *(a2 + 1) = v118;
            }

            goto LABEL_181;
          }

          v183 = *(this + 14);
          v182 = *(this + 15);
          if (v183 < v182)
          {
            *v183 = 0;
            v155 = v183 + 4;
LABEL_295:
            *(this + 14) = v155;
            goto LABEL_296;
          }

          v214 = *(this + 13);
          v215 = v183 - v214;
          v216 = (v183 - v214) >> 2;
          v217 = v216 + 1;
          if (!((v216 + 1) >> 62))
          {
            v218 = v182 - v214;
            if (v218 >> 1 > v217)
            {
              v217 = v218 >> 1;
            }

            if (v218 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v219 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v219 = v217;
            }

            if (v219)
            {
              sub_25AD288E8(v219);
            }

            v240 = (v183 - v214) >> 2;
            v241 = (4 * v216);
            v242 = (4 * v216 - 4 * v240);
            *v241 = 0;
            v155 = v241 + 1;
            memcpy(v242, v214, v215);
            v243 = *(this + 13);
            *(this + 13) = v242;
            *(this + 14) = v155;
            *(this + 15) = 0;
            if (v243)
            {
              operator delete(v243);
            }

            goto LABEL_295;
          }

          goto LABEL_310;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_308;
            }

            v25 = *(a2 + 1);
            v26 = *(a2 + 2);
            while (v25 < v26 && (*(a2 + 24) & 1) == 0)
            {
              v28 = *(this + 17);
              v27 = *(this + 18);
              if (v28 >= v27)
              {
                v30 = *(this + 16);
                v31 = v28 - v30;
                v32 = (v28 - v30) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  goto LABEL_310;
                }

                v34 = v27 - v30;
                if (v34 >> 1 > v33)
                {
                  v33 = v34 >> 1;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v35 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  sub_25AD288E8(v35);
                }

                v36 = (v28 - v30) >> 2;
                v37 = (4 * v32);
                v38 = (4 * v32 - 4 * v36);
                *v37 = 0;
                v29 = v37 + 1;
                memcpy(v38, v30, v31);
                v39 = *(this + 16);
                *(this + 16) = v38;
                *(this + 17) = v29;
                *(this + 18) = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v28 = 0;
                v29 = v28 + 4;
              }

              *(this + 17) = v29;
              v40 = *(a2 + 1);
              if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
              {
LABEL_180:
                *(a2 + 24) = 1;
                break;
              }

              *(v29 - 1) = *(*a2 + v40);
              v26 = *(a2 + 2);
              v25 = *(a2 + 1) + 4;
              *(a2 + 1) = v25;
            }

LABEL_181:
            PB::Reader::recallMark();
            goto LABEL_302;
          }

          v154 = *(this + 17);
          v153 = *(this + 18);
          if (v154 >= v153)
          {
            v184 = *(this + 16);
            v185 = v154 - v184;
            v186 = (v154 - v184) >> 2;
            v187 = v186 + 1;
            if ((v186 + 1) >> 62)
            {
LABEL_310:
              sub_25AAE66B8();
            }

            v188 = v153 - v184;
            if (v188 >> 1 > v187)
            {
              v187 = v188 >> 1;
            }

            if (v188 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v189 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v189 = v187;
            }

            if (v189)
            {
              sub_25AD288E8(v189);
            }

            v220 = (v154 - v184) >> 2;
            v221 = (4 * v186);
            v222 = (4 * v186 - 4 * v220);
            *v221 = 0;
            v155 = v221 + 1;
            memcpy(v222, v184, v185);
            v223 = *(this + 16);
            *(this + 16) = v222;
            *(this + 17) = v155;
            *(this + 18) = 0;
            if (v223)
            {
              operator delete(v223);
            }
          }

          else
          {
            *v154 = 0;
            v155 = v154 + 4;
          }

          *(this + 17) = v155;
LABEL_296:
          v244 = *(a2 + 1);
          if (v244 <= 0xFFFFFFFFFFFFFFFBLL && v244 + 4 <= *(a2 + 2))
          {
            *(v155 - 1) = *(*a2 + v244);
LABEL_300:
            v24 = *(a2 + 1) + 4;
LABEL_301:
            *(a2 + 1) = v24;
          }

          else
          {
LABEL_298:
            *(a2 + 24) = 1;
          }

          goto LABEL_302;
        default:
          goto LABEL_17;
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
        goto LABEL_306;
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
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
LABEL_308:
      v245 = 0;
      return v245 & 1;
    }

LABEL_302:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  while (v2 < v3 && (*(a2 + 24) & 1) == 0);
LABEL_306:
  v245 = v4 ^ 1;
  return v245 & 1;
}

uint64_t CMMsl::AccessoryWakeDebug::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 192))
  {
    this = PB::Writer::write(a2, *(this + 152));
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12);
  }

  v13 = *(v3 + 56);
  v14 = *(v3 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15);
  }

  v16 = *(v3 + 192);
  if ((v16 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 184));
    v16 = *(v3 + 192);
    if ((v16 & 0x40) == 0)
    {
LABEL_17:
      if ((v16 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v16 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  v23 = *(v3 + 180);
  this = PB::Writer::writeVarInt(a2);
  v16 = *(v3 + 192);
  if ((v16 & 0x100) == 0)
  {
LABEL_18:
    if ((v16 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v24 = *(v3 + 188);
  this = PB::Writer::writeVarInt(a2);
  v16 = *(v3 + 192);
  if ((v16 & 4) == 0)
  {
LABEL_19:
    if ((v16 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 164));
  v16 = *(v3 + 192);
  if ((v16 & 8) == 0)
  {
LABEL_20:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 168));
  v16 = *(v3 + 192);
  if ((v16 & 0x20) == 0)
  {
LABEL_21:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_22;
    }

LABEL_37:
    this = PB::Writer::write(a2, *(v3 + 172));
    if ((*(v3 + 192) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_36:
  v25 = *(v3 + 176);
  this = PB::Writer::writeVarInt(a2);
  v16 = *(v3 + 192);
  if ((v16 & 0x10) != 0)
  {
    goto LABEL_37;
  }

LABEL_22:
  if ((v16 & 2) != 0)
  {
LABEL_23:
    this = PB::Writer::write(a2, *(v3 + 160));
  }

LABEL_24:
  v17 = *(v3 + 104);
  v18 = *(v3 + 112);
  while (v17 != v18)
  {
    v19 = *v17++;
    this = PB::Writer::write(a2, v19);
  }

  v21 = *(v3 + 128);
  v20 = *(v3 + 136);
  while (v21 != v20)
  {
    v22 = *v21++;
    this = PB::Writer::write(a2, v22);
  }

  return this;
}

BOOL CMMsl::AccessoryWakeDebug::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  v3 = *(a2 + 192);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a2 + 32);
  if (v7 - v8 != *(a2 + 40) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  v12 = *(a2 + 80);
  if (v10 - v11 != *(a2 + 88) - v12)
  {
    return 0;
  }

  while (v11 != v10)
  {
    if (*v11 != *v12)
    {
      return 0;
    }

    ++v11;
    ++v12;
  }

  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  v15 = *(a2 + 56);
  if (v13 - v14 != *(a2 + 64) - v15)
  {
    return 0;
  }

  while (v14 != v13)
  {
    if (*v14 != *v15)
    {
      return 0;
    }

    ++v14;
    ++v15;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 184) != *(a2 + 184))
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
    if ((v3 & 0x40) == 0 || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 192) & 0x100) != 0)
  {
    if ((*(a2 + 192) & 0x100) == 0 || *(a1 + 188) != *(a2 + 188))
    {
      return 0;
    }
  }

  else if ((*(a2 + 192) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 164) != *(a2 + 164))
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
    if ((v3 & 8) == 0 || *(a1 + 168) != *(a2 + 168))
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
    if ((v3 & 0x20) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v17 = *(a1 + 104);
  v16 = *(a1 + 112);
  v18 = *(a2 + 104);
  if (v16 - v17 != *(a2 + 112) - v18)
  {
    return 0;
  }

  while (v17 != v16)
  {
    if (*v17 != *v18)
    {
      return 0;
    }

    ++v17;
    ++v18;
  }

  v20 = *(a1 + 128);
  v19 = *(a1 + 136);
  v21 = *(a2 + 128);
  if (v19 - v20 != *(a2 + 136) - v21)
  {
    return 0;
  }

  if (v20 == v19)
  {
    return 1;
  }

  v22 = v20 + 4;
  do
  {
    v23 = *v21++;
    result = *(v22 - 4) == v23;
    v25 = *(v22 - 4) != v23 || v22 == v19;
    v22 += 4;
  }

  while (!v25);
  return result;
}

uint64_t CMMsl::AccessoryWakeDebug::hash_value(CMMsl::AccessoryWakeDebug *this)
{
  if (*(this + 96))
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

  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = PBHashBytes();
  v6 = *(this + 4);
  v7 = *(this + 5);
  v8 = PBHashBytes();
  v9 = *(this + 10);
  v10 = *(this + 11);
  v11 = PBHashBytes();
  v12 = *(this + 7);
  v13 = *(this + 8);
  v14 = PBHashBytes();
  v15 = *(this + 96);
  if ((v15 & 0x80) != 0)
  {
    v28 = *(this + 46);
    v16 = LODWORD(v28);
    if (v28 == 0.0)
    {
      v16 = 0;
    }

    if ((v15 & 0x40) != 0)
    {
LABEL_8:
      v17 = *(this + 45);
      if ((*(this + 96) & 0x100) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v16 = 0;
    if ((v15 & 0x40) != 0)
    {
      goto LABEL_8;
    }
  }

  v17 = 0;
  if ((*(this + 96) & 0x100) != 0)
  {
LABEL_9:
    v18 = *(this + 47);
    if ((v15 & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v20 = 0;
    if ((v15 & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    v22 = 0;
    if ((v15 & 0x20) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_27:
  v18 = 0;
  if ((v15 & 4) == 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  v19 = *(this + 41);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v15 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  v21 = *(this + 42);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v15 & 0x20) != 0)
  {
LABEL_16:
    v23 = *(this + 44);
    if ((v15 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v23 = 0;
  if ((v15 & 0x10) != 0)
  {
LABEL_17:
    v24 = *(this + 43);
    v25 = LODWORD(v24);
    if (v24 == 0.0)
    {
      v25 = 0;
    }

    if ((v15 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_32:
    v27 = 0;
    goto LABEL_33;
  }

LABEL_31:
  v25 = 0;
  if ((v15 & 2) == 0)
  {
    goto LABEL_32;
  }

LABEL_20:
  v26 = *(this + 40);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

LABEL_33:
  v29 = v5 ^ v2 ^ v8 ^ v11 ^ v14 ^ v16 ^ v17;
  v30 = *(this + 13);
  v31 = *(this + 14);
  v32 = v18 ^ v20 ^ v22 ^ v23 ^ v25 ^ v27 ^ PBHashBytes();
  v33 = *(this + 16);
  v34 = *(this + 17);
  return v29 ^ v32 ^ PBHashBytes();
}

uint64_t CMMsl::AirpodEvent::AirpodEvent(uint64_t this)
{
  *this = &unk_286C1E898;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C1E898;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void CMMsl::AirpodEvent::~AirpodEvent(CMMsl::AirpodEvent *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::AirpodEvent::AirpodEvent(uint64_t this, const CMMsl::AirpodEvent *a2)
{
  *this = &unk_286C1E898;
  *(this + 16) = 0;
  *(this + 24) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 24) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 4);
    *(this + 24) = v3 | 2;
    *(this + 16) = v6;
  }

  return this;
}

uint64_t CMMsl::AirpodEvent::operator=(uint64_t a1, const CMMsl::AirpodEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::AirpodEvent::AirpodEvent(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v4 = v10;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v9;
    *(a1 + 16) = v4;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AirpodEvent *a2, CMMsl::AirpodEvent *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(a2 + 2);
  v6 = *(this + 2);
  *(this + 2) = result;
  *(a2 + 2) = v6;
  return result;
}

double CMMsl::AirpodEvent::AirpodEvent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E898;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C1E898;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::AirpodEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v7[0] = &unk_286C1E898;
    v8 = *(a1 + 24);
    *(a1 + 24) = v3;
    v7[1] = v4;
    v7[2] = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::AirpodEvent::formatText(CMMsl::AirpodEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "eventTag");
    v5 = *(this + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 5);
  PB::TextFormatter::format(a2, "location");
  if (*(this + 24))
  {
LABEL_4:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AirpodEvent::readFrom(CMMsl::AirpodEvent *this, PB::Reader *a2)
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
          goto LABEL_17;
        }
      }

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_71;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 2u;
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
              goto LABEL_69;
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
              goto LABEL_68;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_68:
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

LABEL_69:
        *(this + 4) = v35;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 4u;
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
              goto LABEL_65;
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
              goto LABEL_64;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_64:
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

LABEL_65:
        *(this + 5) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 1u;
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
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_71;
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
  }

LABEL_71:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::AirpodEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 24) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 20);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 24) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8));
  v4 = *(v3 + 24);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::AirpodEvent::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 2) == 0;
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*(a2 + 24) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::AirpodEvent::hash_value(CMMsl::AirpodEvent *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
    return v2 ^ *&v1 ^ v3;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(this + 5);
  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(this + 4);
  return v2 ^ *&v1 ^ v3;
}

uint64_t CMMsl::Altimeter::Altimeter(uint64_t this)
{
  *this = &unk_286C1E8D0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_286C1E8D0;
  *(this + 40) = 0;
  return this;
}

void CMMsl::Altimeter::~Altimeter(CMMsl::Altimeter *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::Altimeter::Altimeter(CMMsl::Altimeter *this, const CMMsl::Altimeter *a2)
{
  *this = &unk_286C1E8D0;
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

uint64_t CMMsl::Altimeter::operator=(uint64_t a1, const CMMsl::Altimeter *a2)
{
  if (a1 != a2)
  {
    CMMsl::Altimeter::Altimeter(&v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::Altimeter *a2, CMMsl::Altimeter *a3)
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

double CMMsl::Altimeter::Altimeter(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E8D0;
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
  *a1 = &unk_286C1E8D0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::Altimeter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C1E8D0;
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

uint64_t CMMsl::Altimeter::formatText(CMMsl::Altimeter *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "machAbsTimestamp", *(this + 1));
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

  PB::TextFormatter::format(a2, "pressure", *(this + 2));
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
  PB::TextFormatter::format(a2, "relativeAltitude", *(this + 3));
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Altimeter::readFrom(CMMsl::Altimeter *this, PB::Reader *a2)
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

uint64_t CMMsl::Altimeter::writeTo(uint64_t this, PB::Writer *a2)
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

BOOL CMMsl::Altimeter::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
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

  v2 = (*(a2 + 40) & 1) == 0;
  if (*(a1 + 40))
  {
    return (*(a2 + 40) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::Altimeter::hash_value(CMMsl::Altimeter *this)
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

uint64_t CMMsl::AltimeterKF::AltimeterKF(uint64_t this)
{
  *this = &unk_286C1E908;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C1E908;
  *(this + 64) = 0;
  return this;
}

void CMMsl::AltimeterKF::~AltimeterKF(CMMsl::AltimeterKF *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::AltimeterKF::AltimeterKF(uint64_t this, const CMMsl::AltimeterKF *a2)
{
  *this = &unk_286C1E908;
  *(this + 64) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 8);
    v3 = 16;
    *(this + 64) = 16;
    *(this + 32) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 0x400) != 0)
  {
LABEL_5:
    v5 = *(a2 + 14);
    v3 |= 0x400u;
    *(this + 64) = v3;
    *(this + 56) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 7);
    v3 |= 8u;
    *(this + 64) = v3;
    *(this + 28) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 24) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 44) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 2);
  v3 |= 2u;
  *(this + 64) = v3;
  *(this + 16) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 1) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 1);
  v3 |= 1u;
  *(this + 64) = v3;
  *(this + 8) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 12);
  v3 |= 0x100u;
  *(this + 64) = v3;
  *(this + 48) = v11;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 13);
  v3 |= 0x200u;
  *(this + 64) = v3;
  *(this + 52) = v12;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 64) = v3;
  *(this + 40) = v13;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      return this;
    }

LABEL_26:
    v15 = *(a2 + 60);
    *(this + 64) = v3 | 0x800;
    *(this + 60) = v15;
    return this;
  }

LABEL_25:
  v14 = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 64) = v3;
  *(this + 36) = v14;
  if ((*(a2 + 32) & 0x800) != 0)
  {
    goto LABEL_26;
  }

  return this;
}

CMMsl *CMMsl::AltimeterKF::operator=(CMMsl *a1, const CMMsl::AltimeterKF *a2)
{
  if (a1 != a2)
  {
    CMMsl::AltimeterKF::AltimeterKF(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AltimeterKF *a2, CMMsl::AltimeterKF *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  v12 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v12;
  v13 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v13;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  LOBYTE(v10) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v10;
  return result;
}

float CMMsl::AltimeterKF::AltimeterKF(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E908;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  *(a1 + 60) = *(a2 + 60);
  return result;
}

CMMsl *CMMsl::AltimeterKF::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AltimeterKF::AltimeterKF(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::AltimeterKF::formatText(CMMsl::AltimeterKF *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "accelBiasZ", *(this + 6));
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "accelZ", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = *(this + 60);
  PB::TextFormatter::format(a2, "compensate");
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "height", *(this + 8));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "inertialCompOffset", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "inertialCompPressure", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "kfPressure", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "rawPressure", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "rawPressureTemperature", *(this + 13));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(this + 1);
  PB::TextFormatter::format(a2, "rawPressureTimestamp");
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  v8 = *(this + 2);
  PB::TextFormatter::format(a2, "timestamp");
  if ((*(this + 32) & 0x400) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "verticalSpeed", *(this + 14));
  }

LABEL_14:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AltimeterKF::readFrom(CMMsl::AltimeterKF *this, PB::Reader *a2)
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
            *(this + 32) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_77:
              *(a2 + 24) = 1;
              goto LABEL_108;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_97;
          case 0xB:
            *(this + 32) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_77;
            }

            *(this + 9) = *(*a2 + v2);
            goto LABEL_97;
          case 0xC:
            *(this + 32) |= 0x800u;
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

            *(this + 60) = v32;
            goto LABEL_108;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
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
                  v37 = 0;
                  goto LABEL_106;
                }
              }

              if (*(a2 + 24))
              {
                v37 = 0;
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
                  v37 = 0;
                  break;
                }
              }
            }

LABEL_107:
            *(this + 1) = v37;
            goto LABEL_108;
          case 8:
            *(this + 32) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_77;
            }

            *(this + 12) = *(*a2 + v2);
            goto LABEL_97;
          case 9:
            *(this + 32) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_77;
            }

            *(this + 13) = *(*a2 + v2);
            goto LABEL_97;
        }
      }
    }

    else if (v22 > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_97;
        case 5:
          *(this + 32) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_97;
        case 6:
          *(this + 32) |= 2u;
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
                v27 = 0;
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
                v27 = 0;
                goto LABEL_102;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
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
                v27 = 0;
                break;
              }
            }
          }

LABEL_103:
          *(this + 2) = v27;
          goto LABEL_108;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_97;
        case 2:
          *(this + 32) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_97;
        case 3:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 7) = *(*a2 + v2);
LABEL_97:
          v2 = *(a2 + 1) + 4;
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

uint64_t CMMsl::AltimeterKF::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 64);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 64) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = PB::Writer::write(a2, *(v3 + 36));
    if ((*(v3 + 64) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v7 = *(v3 + 60);

  return PB::Writer::write(a2);
}

BOOL CMMsl::AltimeterKF::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x400) != 0)
  {
    if ((*(a2 + 64) & 0x400) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
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
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
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

  if ((*(a1 + 64) & 0x100) != 0)
  {
    if ((*(a2 + 64) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x200) != 0)
  {
    if ((*(a2 + 64) & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x800) == 0;
  if ((*(a1 + 64) & 0x800) != 0)
  {
    return (*(a2 + 64) & 0x800) != 0 && *(a1 + 60) == *(a2 + 60);
  }

  return v4;
}

uint64_t CMMsl::AltimeterKF::hash_value(CMMsl::AltimeterKF *this)
{
  v1 = *(this + 32);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0;
    if ((*(this + 32) & 0x400) != 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    v4 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_34:
    v6 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v8 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_12;
    }

LABEL_36:
    v10 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v22 = *(this + 8);
  v2 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v2 = 0;
  }

  if ((*(this + 32) & 0x400) == 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = *(this + 14);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_6:
  v5 = *(this + 7);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_35;
  }

LABEL_9:
  v7 = *(this + 6);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  v9 = *(this + 11);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 2);
    if (v1)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v11 = 0;
  if (v1)
  {
LABEL_16:
    v12 = *(this + 1);
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_17;
    }

LABEL_39:
    v14 = 0;
    if ((*(this + 32) & 0x200) != 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    v16 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_23;
    }

LABEL_41:
    v18 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

LABEL_38:
  v12 = 0;
  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_39;
  }

LABEL_17:
  v13 = *(this + 12);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((*(this + 32) & 0x200) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  v15 = *(this + 13);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_23:
  v17 = *(this + 10);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_26:
    v19 = *(this + 9);
    v20 = LODWORD(v19);
    if (v19 == 0.0)
    {
      v20 = 0;
    }

    if ((*(this + 32) & 0x800) != 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    v21 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v11 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v21;
  }

LABEL_42:
  v20 = 0;
  if ((*(this + 32) & 0x800) == 0)
  {
    goto LABEL_43;
  }

LABEL_29:
  v21 = *(this + 60);
  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v11 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v21;
}

uint64_t CMMsl::AnchorCorrection::AnchorCorrection(uint64_t this)
{
  *this = &unk_286C1E940;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C1E940;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

void CMMsl::AnchorCorrection::~AnchorCorrection(CMMsl::AnchorCorrection *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1E940;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AnchorCorrection::~AnchorCorrection(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::AnchorCorrection::AnchorCorrection(uint64_t this, const CMMsl::AnchorCorrection *a2)
{
  *this = &unk_286C1E940;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    v2 = *(a2 + 2);
    *(this + 24) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

uint64_t CMMsl::AnchorCorrection::operator=(uint64_t a1, const CMMsl::AnchorCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::AnchorCorrection::AnchorCorrection(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::AnchorCorrection::~AnchorCorrection(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AnchorCorrection *a2, CMMsl::AnchorCorrection *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

uint64_t CMMsl::AnchorCorrection::AnchorCorrection(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E940;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
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

uint64_t CMMsl::AnchorCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AnchorCorrection::AnchorCorrection(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::AnchorCorrection::~AnchorCorrection(&v7);
  }

  return a1;
}

uint64_t CMMsl::AnchorCorrection::formatText(CMMsl::AnchorCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "lastConvergenceTimestamp", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AnchorCorrection::readFrom(CMMsl::AnchorCorrection *this, PB::Reader *a2)
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
        goto LABEL_31;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 24) |= 1u;
        v22 = *(a2 + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v22);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
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
          v23 = 0;
          return v23 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_31;
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

LABEL_31:
  v23 = v4 ^ 1;
  return v23 & 1;
}

double CMMsl::DeviceMotionCorrection::DeviceMotionCorrection(CMMsl::DeviceMotionCorrection *this)
{
  *this = &unk_286C1F708;
  *(this + 40) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  return result;
}

{
  *this = &unk_286C1F708;
  *(this + 40) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  return result;
}

uint64_t CMMsl::AnchorCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 24))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL CMMsl::AnchorCorrection::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::DeviceMotionCorrection::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 24) & 1) == 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 24) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

BOOL CMMsl::DeviceMotionCorrection::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 160);
  if (*(a1 + 160))
  {
    if ((*(a2 + 160) & 1) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if (*(a2 + 160))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a2 + 32);
  if (v3 - v4 != *(a2 + 40) - v5)
  {
    return 0;
  }

  while (v4 != v3)
  {
    if (*v4 != *v5)
    {
      return 0;
    }

    ++v4;
    ++v5;
  }

  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a2 + 56);
  if (v6 - v7 != *(a2 + 64) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
  }

  v10 = *(a1 + 104);
  v9 = *(a1 + 112);
  v11 = *(a2 + 104);
  if (v9 - v10 != *(a2 + 112) - v11)
  {
    return 0;
  }

  while (v10 != v9)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
  }

  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v14 = *(a2 + 8);
  if (v12 - v13 != *(a2 + 16) - v14)
  {
    return 0;
  }

  while (v13 != v12)
  {
    if (*v13 != *v14)
    {
      return 0;
    }

    ++v13;
    ++v14;
  }

  v16 = *(a1 + 80);
  v15 = *(a1 + 88);
  v17 = *(a2 + 80);
  if (v15 - v16 != *(a2 + 88) - v17)
  {
    return 0;
  }

  while (v16 != v15)
  {
    if (*v16 != *v17)
    {
      return 0;
    }

    ++v16;
    ++v17;
  }

  v19 = *(a1 + 128);
  v18 = *(a1 + 136);
  v20 = *(a2 + 128);
  if (v18 - v19 != *(a2 + 136) - v20)
  {
    return 0;
  }

  if (v19 == v18)
  {
    return 1;
  }

  v21 = v19 + 4;
  do
  {
    v22 = *v20++;
    result = *(v21 - 4) == v22;
    v24 = *(v21 - 4) != v22 || v21 == v18;
    v21 += 4;
  }

  while (!v24);
  return result;
}

unint64_t CMMsl::AnchorCorrection::hash_value(CMMsl::AnchorCorrection *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::DeviceMotionCorrection::hash_value(v2);
  }

  if (*(this + 24))
  {
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }
  }

  else
  {
    v3 = 0.0;
  }

  return *&v3 ^ v2;
}

uint64_t CMMsl::AnchorCorrection::makeCorrection(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AnchorMotionCorrespondence::AnchorMotionCorrespondence(uint64_t this)
{
  *this = &unk_286C1E978;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C1E978;
  *(this + 44) = 0;
  return this;
}

void CMMsl::AnchorMotionCorrespondence::~AnchorMotionCorrespondence(CMMsl::AnchorMotionCorrespondence *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::AnchorMotionCorrespondence::AnchorMotionCorrespondence(CMMsl::AnchorMotionCorrespondence *this, const CMMsl::AnchorMotionCorrespondence *a2)
{
  *this = &unk_286C1E978;
  *(this + 11) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 = 8;
    *(this + 44) = 8;
    *(this + 4) = result;
    v2 = *(a2 + 44);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 1);
      *(this + 44) = v3 | 1;
      *(this + 1) = result;
      return result;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(a2 + 40);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 40) = v5;
  if (*(a2 + 44))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::AnchorMotionCorrespondence::operator=(uint64_t a1, const CMMsl::AnchorMotionCorrespondence *a2)
{
  if (a1 != a2)
  {
    CMMsl::AnchorMotionCorrespondence::AnchorMotionCorrespondence(&v7, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v11;
    v11 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AnchorMotionCorrespondence *a2, CMMsl::AnchorMotionCorrespondence *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LOBYTE(v3) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::AnchorMotionCorrespondence::AnchorMotionCorrespondence(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1E978;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C1E978;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::AnchorMotionCorrespondence::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = &unk_286C1E978;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 40);
    v14 = *(a1 + 44);
    v12 = *(a1 + 24);
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;
    v13 = v5;
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    v8 = *(a2 + 24);
    *(a1 + 44) = v3;
    *(a1 + 24) = v8;
    *(a1 + 8) = v7;
    v11 = v6;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::AnchorMotionCorrespondence::formatText(CMMsl::AnchorMotionCorrespondence *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "dThetaNorm", *(this + 1));
    v5 = *(this + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "lastCorrespondenceTimestamp", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "lastUpdateTimestamp", *(this + 3));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v6 = *(this + 40);
  PB::TextFormatter::format(a2, "state");
  if ((*(this + 44) & 8) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AnchorMotionCorrespondence::readFrom(CMMsl::AnchorMotionCorrespondence *this, PB::Reader *a2)
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
        *(this + 44) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_39:
          *(a2 + 24) = 1;
          goto LABEL_44;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_43;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_39;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_43;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_39;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_43;
        case 4:
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v24 = v23 != 0;
          }

          *(this + 40) = v24;
          goto LABEL_44;
        case 5:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_39;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_43:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_44;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v25 = 0;
      return v25 & 1;
    }

    v2 = *(a2 + 1);
LABEL_44:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::AnchorMotionCorrespondence::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = *(v3 + 40);
    this = PB::Writer::write(a2);
    if ((*(v3 + 44) & 1) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_11:
  v6 = *(v3 + 8);

  return PB::Writer::write(a2, v6);
}

BOOL CMMsl::AnchorMotionCorrespondence::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 8) != 0)
  {
    if ((*(a2 + 44) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 4) != 0)
  {
    if ((*(a2 + 44) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 0x10) != 0)
  {
    if ((*(a2 + 44) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 44) & 1) == 0;
  if (*(a1 + 44))
  {
    return (*(a2 + 44) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::AnchorMotionCorrespondence::hash_value(CMMsl::AnchorMotionCorrespondence *this)
{
  if ((*(this + 44) & 8) == 0)
  {
    v1 = 0.0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v2 = 0.0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v3 = 0.0;
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v1 = *(this + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 44) & 0x10) != 0)
  {
LABEL_9:
    v4 = *(this + 40);
    if (*(this + 44))
    {
      goto LABEL_10;
    }

LABEL_19:
    v5 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ *&v5;
  }

LABEL_18:
  v4 = 0;
  if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ *&v5;
}

void *CMMsl::AppleCV3DSLAMState::AppleCV3DSLAMState(void *this)
{
  *this = &unk_286C1E9B0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1E9B0;
  this[1] = 0;
  return this;
}

void CMMsl::AppleCV3DSLAMState::~AppleCV3DSLAMState(CMMsl::AppleCV3DSLAMState *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1E9B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AppleCV3DSLAMState::~AppleCV3DSLAMState(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::AppleCV3DSLAMState::AppleCV3DSLAMState(void *this, const CMMsl::AppleCV3DSLAMState *a2)
{
  *this = &unk_286C1E9B0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AppleCV3DSLAMState *CMMsl::AppleCV3DSLAMState::operator=(const CMMsl::AppleCV3DSLAMState *a1, const CMMsl::AppleCV3DSLAMState *a2)
{
  if (a1 != a2)
  {
    CMMsl::AppleCV3DSLAMState::AppleCV3DSLAMState(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AppleCV3DSLAMState::~AppleCV3DSLAMState(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AppleCV3DSLAMState *a2, CMMsl::AppleCV3DSLAMState *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AppleCV3DSLAMState::AppleCV3DSLAMState(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1E9B0;
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
  *a1 = &unk_286C1E9B0;
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

uint64_t CMMsl::AppleCV3DSLAMState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1E9B0;
    v6[1] = v4;
    CMMsl::AppleCV3DSLAMState::~AppleCV3DSLAMState(v6);
  }

  return a1;
}

uint64_t CMMsl::AppleCV3DSLAMState::formatText(CMMsl::AppleCV3DSLAMState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AppleCV3DSLAMState::readFrom(CMMsl::AppleCV3DSLAMState *this, PB::Reader *a2)
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

double CMMsl::CV3DSLAMState::CV3DSLAMState(CMMsl::CV3DSLAMState *this)
{
  *this = &unk_286C1F120;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_286C1F120;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

uint64_t CMMsl::AppleCV3DSLAMState::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::AppleCV3DSLAMState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::CV3DSLAMState::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::CV3DSLAMState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if ((*(a2 + 88) & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (*(a2 + 88))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a2 + 8);
  if (v3 - v4 != *(a2 + 16) - v5)
  {
    return 0;
  }

  while (v4 != v3)
  {
    if (*v4 != *v5)
    {
      return 0;
    }

    ++v4;
    ++v5;
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 32);
  if (v6 - v7 != *(a2 + 40) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
  }

  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a2 + 56);
  if (v9 - v10 != *(a2 + 64) - v11)
  {
    return 0;
  }

  if (v10 == v9)
  {
    return 1;
  }

  v12 = v10 + 8;
  do
  {
    v13 = *v11++;
    result = *(v12 - 8) == v13;
    v15 = *(v12 - 8) != v13 || v12 == v9;
    v12 += 8;
  }

  while (!v15);
  return result;
}

CMMsl::CV3DSLAMState *CMMsl::AppleCV3DSLAMState::hash_value(CMMsl::AppleCV3DSLAMState *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::CV3DSLAMState::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AppleCV3DSLAMState::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::AudioAFDeviceMotion::AudioAFDeviceMotion(void *this)
{
  *this = &unk_286C1E9E8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1E9E8;
  this[1] = 0;
  return this;
}

void CMMsl::AudioAFDeviceMotion::~AudioAFDeviceMotion(CMMsl::AudioAFDeviceMotion *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1E9E8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AudioAFDeviceMotion::~AudioAFDeviceMotion(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::AudioAFDeviceMotion::AudioAFDeviceMotion(void *this, const CMMsl::AudioAFDeviceMotion *a2)
{
  *this = &unk_286C1E9E8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AudioAFDeviceMotion *CMMsl::AudioAFDeviceMotion::operator=(const CMMsl::AudioAFDeviceMotion *a1, const CMMsl::AudioAFDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::AudioAFDeviceMotion::AudioAFDeviceMotion(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AudioAFDeviceMotion::~AudioAFDeviceMotion(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AudioAFDeviceMotion *a2, CMMsl::AudioAFDeviceMotion *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AudioAFDeviceMotion::AudioAFDeviceMotion(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1E9E8;
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
  *a1 = &unk_286C1E9E8;
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

uint64_t CMMsl::AudioAFDeviceMotion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1E9E8;
    v6[1] = v4;
    CMMsl::AudioAFDeviceMotion::~AudioAFDeviceMotion(v6);
  }

  return a1;
}

uint64_t CMMsl::AudioAFDeviceMotion::formatText(CMMsl::AudioAFDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AudioAFDeviceMotion::readFrom(CMMsl::AudioAFDeviceMotion *this, PB::Reader *a2)
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

double CMMsl::AudioAccessoryDeviceMotion::AudioAccessoryDeviceMotion(CMMsl::AudioAccessoryDeviceMotion *this)
{
  *this = &unk_286C1EA20;
  *(this + 11) = 0;
  *(this + 31) = 0;
  *(this + 33) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C1EA20;
  *(this + 11) = 0;
  *(this + 31) = 0;
  *(this + 33) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t CMMsl::AudioAFDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::AudioAFDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::AudioAccessoryDeviceMotion::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::AudioAccessoryDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  if (v4)
  {
    if (!v5 || !CMMsl::AuxiliaryDeviceMotion::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v6 - v7 == *(a2 + 16) - v8)
  {
    while (v7 != v6)
    {
      if (*v7 != *v8)
      {
        return 0;
      }

      ++v7;
      ++v8;
    }

    v9 = *(a1 + 132);
    v10 = *(a2 + 132);
    if ((v9 & 0x100) != 0)
    {
      if ((*(a2 + 132) & 0x100) == 0 || *(a1 + 112) != *(a2 + 112))
      {
        return 0;
      }
    }

    else if ((*(a2 + 132) & 0x100) != 0)
    {
      return 0;
    }

    if ((v9 & 0x80) != 0)
    {
      if ((v10 & 0x80) == 0 || *(a1 + 108) != *(a2 + 108))
      {
        return 0;
      }
    }

    else if ((v10 & 0x80) != 0)
    {
      return 0;
    }

    if ((v9 & 0x40) != 0)
    {
      if ((v10 & 0x40) == 0 || *(a1 + 104) != *(a2 + 104))
      {
        return 0;
      }
    }

    else if ((v10 & 0x40) != 0)
    {
      return 0;
    }

    if ((*(a1 + 132) & 0x400) != 0)
    {
      if ((*(a2 + 132) & 0x400) == 0 || *(a1 + 120) != *(a2 + 120))
      {
        return 0;
      }
    }

    else if ((*(a2 + 132) & 0x400) != 0)
    {
      return 0;
    }

    if ((v9 & 2) != 0)
    {
      if ((v10 & 2) == 0 || *(a1 + 64) != *(a2 + 64))
      {
        return 0;
      }
    }

    else if ((v10 & 2) != 0)
    {
      return 0;
    }

    if ((*(a1 + 132) & 0x800) != 0)
    {
      if ((*(a2 + 132) & 0x800) == 0 || *(a1 + 124) != *(a2 + 124))
      {
        return 0;
      }
    }

    else if ((*(a2 + 132) & 0x800) != 0)
    {
      return 0;
    }

    if (v9)
    {
      if ((v10 & 1) == 0 || *(a1 + 56) != *(a2 + 56))
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if ((v9 & 0x20) != 0)
    {
      if ((v10 & 0x20) == 0 || *(a1 + 100) != *(a2 + 100))
      {
        return 0;
      }
    }

    else if ((v10 & 0x20) != 0)
    {
      return 0;
    }

    if ((*(a1 + 132) & 0x200) != 0)
    {
      if ((*(a2 + 132) & 0x200) == 0 || *(a1 + 116) != *(a2 + 116))
      {
        return 0;
      }
    }

    else if ((*(a2 + 132) & 0x200) != 0)
    {
      return 0;
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(a2 + 32);
    if (v11 - v12 == *(a2 + 40) - v13)
    {
      while (v12 != v11)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
      }

      if ((v9 & 0x10) != 0)
      {
        if ((v10 & 0x10) == 0 || *(a1 + 96) != *(a2 + 96))
        {
          return 0;
        }
      }

      else if ((v10 & 0x10) != 0)
      {
        return 0;
      }

      if ((*(a1 + 132) & 0x2000) != 0)
      {
        if ((*(a2 + 132) & 0x2000) == 0 || *(a1 + 129) != *(a2 + 129))
        {
          return 0;
        }
      }

      else if ((*(a2 + 132) & 0x2000) != 0)
      {
        return 0;
      }

      if ((v9 & 8) != 0)
      {
        if ((v10 & 8) == 0 || *(a1 + 80) != *(a2 + 80))
        {
          return 0;
        }
      }

      else if ((v10 & 8) != 0)
      {
        return 0;
      }

      if ((v9 & 4) != 0)
      {
        if ((v10 & 4) == 0 || *(a1 + 72) != *(a2 + 72))
        {
          return 0;
        }
      }

      else if ((v10 & 4) != 0)
      {
        return 0;
      }

      if ((*(a1 + 132) & 0x1000) != 0)
      {
        if ((*(a2 + 132) & 0x1000) == 0 || *(a1 + 128) != *(a2 + 128))
        {
          return 0;
        }
      }

      else if ((*(a2 + 132) & 0x1000) != 0)
      {
        return 0;
      }

      result = (v10 & 0x4000) == 0;
      if ((*(a1 + 132) & 0x4000) == 0)
      {
        return result;
      }

      if ((*(a2 + 132) & 0x4000) != 0 && *(a1 + 130) == *(a2 + 130))
      {
        return 1;
      }
    }
  }

  return 0;
}

CMMsl::AudioAccessoryDeviceMotion *CMMsl::AudioAFDeviceMotion::hash_value(CMMsl::AudioAFDeviceMotion *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AudioAccessoryDeviceMotion::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AudioAFDeviceMotion::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::AudioAccessoryDeviceMotion::~AudioAccessoryDeviceMotion(CMMsl::AudioAccessoryDeviceMotion *this)
{
  *this = &unk_286C1EA20;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AudioAccessoryDeviceMotion::~AudioAccessoryDeviceMotion(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::AudioAccessoryDeviceMotion *CMMsl::AudioAccessoryDeviceMotion::AudioAccessoryDeviceMotion(CMMsl::AudioAccessoryDeviceMotion *this, const CMMsl::AudioAccessoryDeviceMotion *a2)
{
  *this = &unk_286C1EA20;
  *(this + 8) = 0u;
  *(this + 11) = 0;
  *(this + 31) = 0;
  *(this + 33) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 11))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v4 = *(a2 + 66);
  if ((v4 & 0x100) != 0)
  {
    v9 = *(a2 + 28);
    *(this + 66) |= 0x100u;
    *(this + 28) = v9;
    v4 = *(a2 + 66);
    if ((v4 & 0x80) == 0)
    {
LABEL_7:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 27);
  *(this + 66) |= 0x80u;
  *(this + 27) = v10;
  v4 = *(a2 + 66);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 26);
  *(this + 66) |= 0x40u;
  *(this + 26) = v11;
  v4 = *(a2 + 66);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 30);
  *(this + 66) |= 0x400u;
  *(this + 30) = v12;
  v4 = *(a2 + 66);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 8);
  *(this + 66) |= 2u;
  *(this + 8) = v13;
  v4 = *(a2 + 66);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 31);
  *(this + 66) |= 0x800u;
  *(this + 31) = v14;
  v4 = *(a2 + 66);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 7);
  *(this + 66) |= 1u;
  *(this + 7) = v15;
  v4 = *(a2 + 66);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_32:
  v16 = *(a2 + 25);
  *(this + 66) |= 0x20u;
  *(this + 25) = v16;
  if ((*(a2 + 66) & 0x200) != 0)
  {
LABEL_14:
    v5 = *(a2 + 29);
    *(this + 66) |= 0x200u;
    *(this + 29) = v5;
  }

LABEL_15:
  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v6 = *(a2 + 66);
  if ((v6 & 0x10) != 0)
  {
    v17 = *(a2 + 24);
    *(this + 66) |= 0x10u;
    *(this + 24) = v17;
    v6 = *(a2 + 66);
    if ((v6 & 0x2000) == 0)
    {
LABEL_19:
      if ((v6 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }
  }

  else if ((*(a2 + 66) & 0x2000) == 0)
  {
    goto LABEL_19;
  }

  v18 = *(a2 + 129);
  *(this + 66) |= 0x2000u;
  *(this + 129) = v18;
  v6 = *(a2 + 66);
  if ((v6 & 8) == 0)
  {
LABEL_20:
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = *(a2 + 10);
  *(this + 66) |= 8u;
  *(this + 10) = v19;
  v6 = *(a2 + 66);
  if ((v6 & 4) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

LABEL_38:
    v21 = *(a2 + 128);
    *(this + 66) |= 0x1000u;
    *(this + 128) = v21;
    if ((*(a2 + 66) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_37:
  v20 = *(a2 + 9);
  *(this + 66) |= 4u;
  *(this + 9) = v20;
  v6 = *(a2 + 66);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v6 & 0x4000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 130);
    *(this + 66) |= 0x4000u;
    *(this + 130) = v7;
  }

  return this;
}

CMMsl *CMMsl::AudioAccessoryDeviceMotion::operator=(CMMsl *a1, const CMMsl::AudioAccessoryDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::AudioAccessoryDeviceMotion::AudioAccessoryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AudioAccessoryDeviceMotion::~AudioAccessoryDeviceMotion(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AudioAccessoryDeviceMotion *a2, CMMsl::AudioAccessoryDeviceMotion *a3)
{
  v3 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v3;
  v4 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v8;
  LODWORD(v7) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v7;
  LODWORD(v7) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v7;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  v12 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v12;
  v14 = *(this + 6);
  v13 = *(this + 7);
  v15 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v15;
  LODWORD(v9) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v9;
  LODWORD(v9) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v9;
  *(a2 + 6) = v14;
  *(a2 + 7) = v13;
  LODWORD(v13) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v13;
  LOBYTE(v13) = *(this + 129);
  *(this + 129) = *(a2 + 129);
  *(a2 + 129) = v13;
  v16 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v16;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  LOBYTE(v13) = *(this + 128);
  *(this + 128) = *(a2 + 128);
  *(a2 + 128) = v13;
  LOBYTE(v13) = *(this + 130);
  *(this + 130) = *(a2 + 130);
  *(a2 + 130) = v13;
  return result;
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::AudioAccessoryDeviceMotion(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *a1 = &unk_286C1EA20;
  *(a1 + 88) = 0;
  *(a1 + 124) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 132) = *(a2 + 132);
  *(a2 + 132) = 0;
  v5 = *(a2 + 88);
  *(a2 + 88) = 0;
  v6 = *(a1 + 88);
  *(a1 + 88) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 116) = *(a2 + 116);
  sub_25AD28758(a1 + 32, (a2 + 32));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 130) = *(a2 + 130);
  return a1;
}

CMMsl *CMMsl::AudioAccessoryDeviceMotion::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AudioAccessoryDeviceMotion::AudioAccessoryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AudioAccessoryDeviceMotion::~AudioAccessoryDeviceMotion(v5);
  }

  return a1;
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::formatText(CMMsl::AudioAccessoryDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 66);
  if ((v5 & 0x10) != 0)
  {
    v16 = *(this + 24);
    PB::TextFormatter::format(a2, "activity");
    v5 = *(this + 66);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "arrivalTimestamp", *(this + 25));
  if (*(this + 66))
  {
LABEL_4:
    v6 = *(this + 7);
    PB::TextFormatter::format(a2, "btcTimestamp");
  }

LABEL_5:
  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "filteredAcceleration", v9);
  }

  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "gyroBias", v12);
  }

  v13 = *(this + 66);
  if ((v13 & 0x1000) != 0)
  {
    v17 = *(this + 128);
    PB::TextFormatter::format(a2, "isIEDEnabled");
    v13 = *(this + 66);
    if ((v13 & 0x2000) == 0)
    {
LABEL_11:
      if ((v13 & 0x4000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  else if ((*(this + 66) & 0x2000) == 0)
  {
    goto LABEL_11;
  }

  v18 = *(this + 129);
  PB::TextFormatter::format(a2, "isInEar");
  v13 = *(this + 66);
  if ((v13 & 0x4000) == 0)
  {
LABEL_12:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = *(this + 130);
  PB::TextFormatter::format(a2, "isVirtual");
  v13 = *(this + 66);
  if ((v13 & 0x40) == 0)
  {
LABEL_13:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = *(this + 26);
  PB::TextFormatter::format(a2, "location");
  v13 = *(this + 66);
  if ((v13 & 0x80) == 0)
  {
LABEL_14:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = *(this + 27);
  PB::TextFormatter::format(a2, "quiescentMode");
  v13 = *(this + 66);
  if ((v13 & 0x100) == 0)
  {
LABEL_15:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "quiescentNoise", *(this + 28));
  v13 = *(this + 66);
  if ((v13 & 0x200) == 0)
  {
LABEL_16:
    if ((v13 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "sampleLatency", *(this + 29));
  v13 = *(this + 66);
  if ((v13 & 2) == 0)
  {
LABEL_17:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "sensorTimeUponReceival", *(this + 8));
  v13 = *(this + 66);
  if ((v13 & 0x400) == 0)
  {
LABEL_18:
    if ((v13 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = *(this + 30);
  PB::TextFormatter::format(a2, "sequenceNumber");
  v13 = *(this + 66);
  if ((v13 & 4) == 0)
  {
LABEL_19:
    if ((v13 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "sourceTimestampToCFAbsoluteTime", *(this + 9));
  if ((*(this + 66) & 8) != 0)
  {
LABEL_20:
    PB::TextFormatter::format(a2, "sourceTimestampToMachContinuous", *(this + 10));
  }

LABEL_21:
  v14 = *(this + 11);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "super");
  }

  if ((*(this + 66) & 0x800) != 0)
  {
    v15 = *(this + 31);
    PB::TextFormatter::format(a2, "timeSyncStatus");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::readFrom(CMMsl::AudioAccessoryDeviceMotion *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_245;
  }

  do
  {
    v7 = *a2;
    if (v2 <= 0xFFFFFFFFFFFFFFF5 && v2 + 10 <= v3)
    {
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
      v22 = v10 & 7;
      if (v22 == 4)
      {
        v4 = 0;
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          operator new();
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_247;
            }

            v83 = *(a2 + 1);
            v84 = *(a2 + 2);
            while (v83 < v84 && (*(a2 + 24) & 1) == 0)
            {
              v86 = *(this + 2);
              v85 = *(this + 3);
              if (v86 >= v85)
              {
                v88 = *(this + 1);
                v89 = v86 - v88;
                v90 = (v86 - v88) >> 2;
                v91 = v90 + 1;
                if ((v90 + 1) >> 62)
                {
                  goto LABEL_249;
                }

                v92 = v85 - v88;
                if (v92 >> 1 > v91)
                {
                  v91 = v92 >> 1;
                }

                if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v93 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v93 = v91;
                }

                if (v93)
                {
                  sub_25AD288E8(v93);
                }

                v94 = (v86 - v88) >> 2;
                v95 = (4 * v90);
                v96 = (4 * v90 - 4 * v94);
                *v95 = 0;
                v87 = v95 + 1;
                memcpy(v96, v88, v89);
                v97 = *(this + 1);
                *(this + 1) = v96;
                *(this + 2) = v87;
                *(this + 3) = 0;
                if (v97)
                {
                  operator delete(v97);
                }
              }

              else
              {
                *v86 = 0;
                v87 = v86 + 4;
              }

              *(this + 2) = v87;
              v98 = *(a2 + 1);
              if (v98 > 0xFFFFFFFFFFFFFFFBLL || v98 + 4 > *(a2 + 2))
              {
                goto LABEL_187;
              }

              *(v87 - 1) = *(*a2 + v98);
              v84 = *(a2 + 2);
              v83 = *(a2 + 1) + 4;
              *(a2 + 1) = v83;
            }

            goto LABEL_188;
          }

          v156 = *(this + 2);
          v155 = *(this + 3);
          if (v156 < v155)
          {
            *v156 = 0;
            v130 = v156 + 4;
LABEL_234:
            *(this + 2) = v130;
            goto LABEL_235;
          }

          v175 = *(this + 1);
          v176 = v156 - v175;
          v177 = (v156 - v175) >> 2;
          v178 = v177 + 1;
          if (!((v177 + 1) >> 62))
          {
            v179 = v155 - v175;
            if (v179 >> 1 > v178)
            {
              v178 = v179 >> 1;
            }

            if (v179 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v180 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v180 = v178;
            }

            if (v180)
            {
              sub_25AD288E8(v180);
            }

            v185 = (v156 - v175) >> 2;
            v186 = (4 * v177);
            v187 = (4 * v177 - 4 * v185);
            *v186 = 0;
            v130 = v186 + 1;
            memcpy(v187, v175, v176);
            v188 = *(this + 1);
            *(this + 1) = v187;
            *(this + 2) = v130;
            *(this + 3) = 0;
            if (v188)
            {
              operator delete(v188);
            }

            goto LABEL_234;
          }

          goto LABEL_249;
        case 3u:
          *(this + 66) |= 0x100u;
          v63 = *(a2 + 1);
          if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(a2 + 2))
          {
            goto LABEL_237;
          }

          *(this + 28) = *(*a2 + v63);
          goto LABEL_239;
        case 4u:
          *(this + 66) |= 0x80u;
          v66 = *(a2 + 1);
          v65 = *(a2 + 2);
          v67 = *a2;
          if (v66 <= 0xFFFFFFFFFFFFFFF5 && v66 + 10 <= v65)
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            do
            {
              *(a2 + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_219;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
            }

            while (!v14);
LABEL_156:
            LODWORD(v70) = 0;
            goto LABEL_219;
          }

          v143 = 0;
          v144 = 0;
          v70 = 0;
          v145 = (v67 + v66);
          v18 = v65 >= v66;
          v146 = v65 - v66;
          if (!v18)
          {
            v146 = 0;
          }

          v147 = v66 + 1;
          while (2)
          {
            if (v146)
            {
              v148 = *v145;
              *(a2 + 1) = v147;
              v70 |= (v148 & 0x7F) << v143;
              if (v148 < 0)
              {
                v143 += 7;
                ++v145;
                --v146;
                ++v147;
                v14 = v144++ > 8;
                if (v14)
                {
                  goto LABEL_156;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v70) = 0;
              }
            }

            else
            {
              LODWORD(v70) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_219:
          *(this + 27) = v70;
          goto LABEL_241;
        case 5u:
          *(this + 66) |= 0x40u;
          v45 = *(a2 + 1);
          v44 = *(a2 + 2);
          v46 = *a2;
          if (v45 <= 0xFFFFFFFFFFFFFFF5 && v45 + 10 <= v44)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = (v46 + v45);
            v51 = v45 + 1;
            do
            {
              *(a2 + 1) = v51;
              v52 = *v50++;
              v49 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                goto LABEL_213;
              }

              v47 += 7;
              ++v51;
              v14 = v48++ > 8;
            }

            while (!v14);
LABEL_140:
            LODWORD(v49) = 0;
            goto LABEL_213;
          }

          v131 = 0;
          v132 = 0;
          v49 = 0;
          v133 = (v46 + v45);
          v18 = v44 >= v45;
          v134 = v44 - v45;
          if (!v18)
          {
            v134 = 0;
          }

          v135 = v45 + 1;
          while (2)
          {
            if (v134)
            {
              v136 = *v133;
              *(a2 + 1) = v135;
              v49 |= (v136 & 0x7F) << v131;
              if (v136 < 0)
              {
                v131 += 7;
                ++v133;
                --v134;
                ++v135;
                v14 = v132++ > 8;
                if (v14)
                {
                  goto LABEL_140;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v49) = 0;
              }
            }

            else
            {
              LODWORD(v49) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_213:
          *(this + 26) = v49;
          goto LABEL_241;
        case 6u:
          *(this + 66) |= 0x400u;
          v104 = *(a2 + 1);
          v103 = *(a2 + 2);
          v105 = *a2;
          if (v104 <= 0xFFFFFFFFFFFFFFF5 && v104 + 10 <= v103)
          {
            v106 = 0;
            v107 = 0;
            v108 = 0;
            v109 = (v105 + v104);
            v110 = v104 + 1;
            do
            {
              *(a2 + 1) = v110;
              v111 = *v109++;
              v108 |= (v111 & 0x7F) << v106;
              if ((v111 & 0x80) == 0)
              {
                goto LABEL_225;
              }

              v106 += 7;
              ++v110;
              v14 = v107++ > 8;
            }

            while (!v14);
LABEL_176:
            LODWORD(v108) = 0;
            goto LABEL_225;
          }

          v157 = 0;
          v158 = 0;
          v108 = 0;
          v159 = (v105 + v104);
          v18 = v103 >= v104;
          v160 = v103 - v104;
          if (!v18)
          {
            v160 = 0;
          }

          v161 = v104 + 1;
          while (2)
          {
            if (v160)
            {
              v162 = *v159;
              *(a2 + 1) = v161;
              v108 |= (v162 & 0x7F) << v157;
              if (v162 < 0)
              {
                v157 += 7;
                ++v159;
                --v160;
                ++v161;
                v14 = v158++ > 8;
                if (v14)
                {
                  goto LABEL_176;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v108) = 0;
              }
            }

            else
            {
              LODWORD(v108) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_225:
          *(this + 30) = v108;
          goto LABEL_241;
        case 7u:
          *(this + 66) |= 2u;
          v116 = *(a2 + 1);
          if (v116 > 0xFFFFFFFFFFFFFFF7 || v116 + 8 > *(a2 + 2))
          {
            goto LABEL_237;
          }

          *(this + 8) = *(*a2 + v116);
          goto LABEL_118;
        case 8u:
          *(this + 66) |= 0x800u;
          v75 = *(a2 + 1);
          v74 = *(a2 + 2);
          v76 = *a2;
          if (v75 <= 0xFFFFFFFFFFFFFFF5 && v75 + 10 <= v74)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = (v76 + v75);
            v81 = v75 + 1;
            do
            {
              *(a2 + 1) = v81;
              v82 = *v80++;
              v79 |= (v82 & 0x7F) << v77;
              if ((v82 & 0x80) == 0)
              {
                goto LABEL_222;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_164:
            LODWORD(v79) = 0;
            goto LABEL_222;
          }

          v149 = 0;
          v150 = 0;
          v79 = 0;
          v151 = (v76 + v75);
          v18 = v74 >= v75;
          v152 = v74 - v75;
          if (!v18)
          {
            v152 = 0;
          }

          v153 = v75 + 1;
          while (2)
          {
            if (v152)
            {
              v154 = *v151;
              *(a2 + 1) = v153;
              v79 |= (v154 & 0x7F) << v149;
              if (v154 < 0)
              {
                v149 += 7;
                ++v151;
                --v152;
                ++v153;
                v14 = v150++ > 8;
                if (v14)
                {
                  goto LABEL_164;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v79) = 0;
              }
            }

            else
            {
              LODWORD(v79) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_222:
          *(this + 31) = v79;
          goto LABEL_241;
        case 9u:
          *(this + 66) |= 1u;
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
                goto LABEL_228;
              }

              v122 += 7;
              ++v126;
              v14 = v123++ > 8;
            }

            while (!v14);
LABEL_184:
            v124 = 0;
            goto LABEL_228;
          }

          v163 = 0;
          v164 = 0;
          v124 = 0;
          v165 = (v121 + v120);
          v18 = v119 >= v120;
          v166 = v119 - v120;
          if (!v18)
          {
            v166 = 0;
          }

          v167 = v120 + 1;
          while (2)
          {
            if (v166)
            {
              v168 = *v165;
              *(a2 + 1) = v167;
              v124 |= (v168 & 0x7F) << v163;
              if (v168 < 0)
              {
                v163 += 7;
                ++v165;
                --v166;
                ++v167;
                v14 = v164++ > 8;
                if (v14)
                {
                  goto LABEL_184;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v124 = 0;
              }
            }

            else
            {
              v124 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_228:
          *(this + 7) = v124;
          goto LABEL_241;
        case 0xAu:
          *(this + 66) |= 0x20u;
          v62 = *(a2 + 1);
          if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(a2 + 2))
          {
            goto LABEL_237;
          }

          *(this + 25) = *(*a2 + v62);
          goto LABEL_239;
        case 0xBu:
          *(this + 66) |= 0x200u;
          v118 = *(a2 + 1);
          if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(a2 + 2))
          {
            goto LABEL_237;
          }

          *(this + 29) = *(*a2 + v118);
          goto LABEL_239;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_247;
            }

            v28 = *(a2 + 1);
            v29 = *(a2 + 2);
            while (v28 < v29 && (*(a2 + 24) & 1) == 0)
            {
              v31 = *(this + 5);
              v30 = *(this + 6);
              if (v31 >= v30)
              {
                v33 = *(this + 4);
                v34 = v31 - v33;
                v35 = (v31 - v33) >> 2;
                v36 = v35 + 1;
                if ((v35 + 1) >> 62)
                {
                  goto LABEL_249;
                }

                v37 = v30 - v33;
                if (v37 >> 1 > v36)
                {
                  v36 = v37 >> 1;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v38 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v36;
                }

                if (v38)
                {
                  sub_25AD288E8(v38);
                }

                v39 = (v31 - v33) >> 2;
                v40 = (4 * v35);
                v41 = (4 * v35 - 4 * v39);
                *v40 = 0;
                v32 = v40 + 1;
                memcpy(v41, v33, v34);
                v42 = *(this + 4);
                *(this + 4) = v41;
                *(this + 5) = v32;
                *(this + 6) = 0;
                if (v42)
                {
                  operator delete(v42);
                }
              }

              else
              {
                *v31 = 0;
                v32 = v31 + 4;
              }

              *(this + 5) = v32;
              v43 = *(a2 + 1);
              if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(a2 + 2))
              {
LABEL_187:
                *(a2 + 24) = 1;
                break;
              }

              *(v32 - 1) = *(*a2 + v43);
              v29 = *(a2 + 2);
              v28 = *(a2 + 1) + 4;
              *(a2 + 1) = v28;
            }

LABEL_188:
            PB::Reader::recallMark();
            goto LABEL_241;
          }

          v129 = *(this + 5);
          v128 = *(this + 6);
          if (v129 >= v128)
          {
            v169 = *(this + 4);
            v170 = v129 - v169;
            v171 = (v129 - v169) >> 2;
            v172 = v171 + 1;
            if ((v171 + 1) >> 62)
            {
LABEL_249:
              sub_25AAE66B8();
            }

            v173 = v128 - v169;
            if (v173 >> 1 > v172)
            {
              v172 = v173 >> 1;
            }

            if (v173 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v174 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v174 = v172;
            }

            if (v174)
            {
              sub_25AD288E8(v174);
            }

            v181 = (v129 - v169) >> 2;
            v182 = (4 * v171);
            v183 = (4 * v171 - 4 * v181);
            *v182 = 0;
            v130 = v182 + 1;
            memcpy(v183, v169, v170);
            v184 = *(this + 4);
            *(this + 4) = v183;
            *(this + 5) = v130;
            *(this + 6) = 0;
            if (v184)
            {
              operator delete(v184);
            }
          }

          else
          {
            *v129 = 0;
            v130 = v129 + 4;
          }

          *(this + 5) = v130;
LABEL_235:
          v189 = *(a2 + 1);
          if (v189 <= 0xFFFFFFFFFFFFFFFBLL && v189 + 4 <= *(a2 + 2))
          {
            *(v130 - 1) = *(*a2 + v189);
LABEL_239:
            v117 = *(a2 + 1) + 4;
LABEL_240:
            *(a2 + 1) = v117;
          }

          else
          {
LABEL_237:
            *(a2 + 24) = 1;
          }

          goto LABEL_241;
        case 0xDu:
          *(this + 66) |= 0x10u;
          v54 = *(a2 + 1);
          v53 = *(a2 + 2);
          v55 = *a2;
          if (v54 <= 0xFFFFFFFFFFFFFFF5 && v54 + 10 <= v53)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = (v55 + v54);
            v60 = v54 + 1;
            do
            {
              *(a2 + 1) = v60;
              v61 = *v59++;
              v58 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                goto LABEL_216;
              }

              v56 += 7;
              ++v60;
              v14 = v57++ > 8;
            }

            while (!v14);
LABEL_148:
            LODWORD(v58) = 0;
            goto LABEL_216;
          }

          v137 = 0;
          v138 = 0;
          v58 = 0;
          v139 = (v55 + v54);
          v18 = v53 >= v54;
          v140 = v53 - v54;
          if (!v18)
          {
            v140 = 0;
          }

          v141 = v54 + 1;
          while (2)
          {
            if (v140)
            {
              v142 = *v139;
              *(a2 + 1) = v141;
              v58 |= (v142 & 0x7F) << v137;
              if (v142 < 0)
              {
                v137 += 7;
                ++v139;
                --v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
                  goto LABEL_148;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              LODWORD(v58) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_216:
          *(this + 24) = v58;
          goto LABEL_241;
        case 0xEu:
          *(this + 66) |= 0x2000u;
          v112 = *(a2 + 1);
          if (v112 >= *(a2 + 2))
          {
            v115 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v113 = v112 + 1;
            v114 = *(*a2 + v112);
            *(a2 + 1) = v113;
            v115 = v114 != 0;
          }

          *(this + 129) = v115;
          goto LABEL_241;
        case 0xFu:
          *(this + 66) |= 8u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
          {
            goto LABEL_237;
          }

          *(this + 10) = *(*a2 + v27);
          goto LABEL_118;
        case 0x10u:
          *(this + 66) |= 4u;
          v64 = *(a2 + 1);
          if (v64 > 0xFFFFFFFFFFFFFFF7 || v64 + 8 > *(a2 + 2))
          {
            goto LABEL_237;
          }

          *(this + 9) = *(*a2 + v64);
LABEL_118:
          v117 = *(a2 + 1) + 8;
          goto LABEL_240;
        case 0x11u:
          *(this + 66) |= 0x1000u;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2))
          {
            v26 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*a2 + v23);
            *(a2 + 1) = v24;
            v26 = v25 != 0;
          }

          *(this + 128) = v26;
          goto LABEL_241;
        case 0x12u:
          *(this + 66) |= 0x4000u;
          v99 = *(a2 + 1);
          if (v99 >= *(a2 + 2))
          {
            v102 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v100 = v99 + 1;
            v101 = *(*a2 + v99);
            *(a2 + 1) = v100;
            v102 = v101 != 0;
          }

          *(this + 130) = v102;
          goto LABEL_241;
        default:
          goto LABEL_17;
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
        goto LABEL_245;
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
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
LABEL_247:
      v190 = 0;
      return v190 & 1;
    }

LABEL_241:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  while (v2 < v3 && (*(a2 + 24) & 1) == 0);
LABEL_245:
  v190 = v4 ^ 1;
  return v190 & 1;
}

double CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(CMMsl::AuxiliaryDeviceMotion *this)
{
  *this = &unk_286C1EA58;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  return result;
}

{
  *this = &unk_286C1EA58;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  return result;
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 88);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  v8 = *(v3 + 132);
  if ((v8 & 0x100) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 112));
    v8 = *(v3 + 132);
    if ((v8 & 0x80) == 0)
    {
LABEL_8:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(v3 + 108);
  this = PB::Writer::writeVarInt(a2);
  v8 = *(v3 + 132);
  if ((v8 & 0x40) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = *(v3 + 104);
  this = PB::Writer::writeVarInt(a2);
  v8 = *(v3 + 132);
  if ((v8 & 0x400) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = *(v3 + 120);
  this = PB::Writer::writeVarInt(a2);
  v8 = *(v3 + 132);
  if ((v8 & 2) == 0)
  {
LABEL_11:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 64));
  v8 = *(v3 + 132);
  if ((v8 & 0x800) == 0)
  {
LABEL_12:
    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(v3 + 124);
  this = PB::Writer::writeVarInt(a2);
  v8 = *(v3 + 132);
  if ((v8 & 1) == 0)
  {
LABEL_13:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    this = PB::Writer::write(a2, *(v3 + 100));
    if ((*(v3 + 132) & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_32:
  v17 = *(v3 + 56);
  this = PB::Writer::writeVarInt(a2);
  v8 = *(v3 + 132);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_14:
  if ((v8 & 0x200) != 0)
  {
LABEL_15:
    this = PB::Writer::write(a2, *(v3 + 116));
  }

LABEL_16:
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::write(a2, v11);
  }

  v12 = *(v3 + 132);
  if ((v12 & 0x10) != 0)
  {
    v18 = *(v3 + 96);
    this = PB::Writer::writeVarInt(a2);
    v12 = *(v3 + 132);
    if ((v12 & 0x2000) == 0)
    {
LABEL_21:
      if ((v12 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }
  }

  else if ((*(v3 + 132) & 0x2000) == 0)
  {
    goto LABEL_21;
  }

  v19 = *(v3 + 129);
  this = PB::Writer::write(a2);
  v12 = *(v3 + 132);
  if ((v12 & 8) == 0)
  {
LABEL_22:
    if ((v12 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 80));
  v12 = *(v3 + 132);
  if ((v12 & 4) == 0)
  {
LABEL_23:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    v20 = *(v3 + 128);
    this = PB::Writer::write(a2);
    if ((*(v3 + 132) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_40;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 72));
  v12 = *(v3 + 132);
  if ((v12 & 0x1000) != 0)
  {
    goto LABEL_39;
  }

LABEL_24:
  if ((v12 & 0x4000) == 0)
  {
    return this;
  }

LABEL_40:
  v21 = *(v3 + 130);

  return PB::Writer::write(a2);
}

BOOL CMMsl::AuxiliaryDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 152) & 2) != 0)
  {
    if ((*(a2 + 152) & 2) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((*(a2 + 152) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a2 + 56);
  if (v2 - v3 != *(a2 + 64) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  v7 = *(a2 + 80);
  if (v5 - v6 != *(a2 + 88) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a2 + 32);
  if (v8 - v9 != *(a2 + 40) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a2 + 8);
  if (v11 - v12 != *(a2 + 16) - v13)
  {
    return 0;
  }

  while (v12 != v11)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    ++v12;
    ++v13;
  }

  if ((*(a1 + 152) & 8) != 0)
  {
    if ((*(a2 + 152) & 8) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((*(a2 + 152) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 152))
  {
    if ((*(a2 + 152) & 1) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if (*(a2 + 152))
  {
    return 0;
  }

  v15 = *(a1 + 104);
  v14 = *(a1 + 112);
  v16 = *(a2 + 104);
  if (v14 - v15 != *(a2 + 112) - v16)
  {
    return 0;
  }

  while (v15 != v14)
  {
    if (*v15 != *v16)
    {
      return 0;
    }

    ++v15;
    ++v16;
  }

  v17 = (*(a2 + 152) & 4) == 0;
  if ((*(a1 + 152) & 4) != 0)
  {
    return (*(a2 + 152) & 4) != 0 && *(a1 + 144) == *(a2 + 144);
  }

  return v17;
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::hash_value(CMMsl::AudioAccessoryDeviceMotion *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    v30 = CMMsl::AuxiliaryDeviceMotion::hash_value(v2);
  }

  else
  {
    v30 = 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  v29 = PBHashBytes();
  v5 = *(this + 66);
  if ((v5 & 0x100) != 0)
  {
    v17 = *(this + 28);
    if (v17 == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = LODWORD(v17);
    }

    if ((v5 & 0x80) != 0)
    {
LABEL_6:
      v7 = *(this + 27);
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v6 = 0;
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((v5 & 0x40) != 0)
  {
LABEL_7:
    v8 = *(this + 26);
    if ((*(this + 66) & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = 0;
  if ((*(this + 66) & 0x400) != 0)
  {
LABEL_8:
    v9 = *(this + 30);
    if ((v5 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v10 = 0;
    if ((*(this + 66) & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_28:
  v9 = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  if (*(this + 8) == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 8);
  }

  if ((*(this + 66) & 0x800) != 0)
  {
LABEL_13:
    v11 = *(this + 31);
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = 0;
  if (v5)
  {
LABEL_14:
    v12 = *(this + 7);
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = 0;
  if ((v5 & 0x20) != 0)
  {
LABEL_15:
    v13 = *(this + 25);
    if (v13 == 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = LODWORD(v13);
    }

    if ((*(this + 66) & 0x200) != 0)
    {
      goto LABEL_19;
    }

LABEL_33:
    v16 = 0;
    goto LABEL_34;
  }

LABEL_32:
  v14 = 0;
  if ((*(this + 66) & 0x200) == 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  v15 = *(this + 29);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = LODWORD(v15);
  }

LABEL_34:
  v18 = *(this + 4);
  v19 = *(this + 5);
  v20 = PBHashBytes();
  v21 = *(this + 66);
  if ((v21 & 0x10) != 0)
  {
    v22 = *(this + 24);
    if ((*(this + 66) & 0x2000) != 0)
    {
LABEL_36:
      v23 = *(this + 129);
      if ((v21 & 8) != 0)
      {
        goto LABEL_37;
      }

LABEL_47:
      v24 = 0.0;
      if ((v21 & 4) != 0)
      {
        goto LABEL_40;
      }

LABEL_48:
      v25 = 0.0;
      if ((*(this + 66) & 0x1000) != 0)
      {
        goto LABEL_43;
      }

LABEL_49:
      v26 = 0;
      if ((*(this + 66) & 0x4000) != 0)
      {
        goto LABEL_44;
      }

LABEL_50:
      v27 = 0;
      return v29 ^ v30 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v16 ^ v20 ^ v22 ^ v23 ^ *&v24 ^ *&v25 ^ v26 ^ v27;
    }
  }

  else
  {
    v22 = 0;
    if ((*(this + 66) & 0x2000) != 0)
    {
      goto LABEL_36;
    }
  }

  v23 = 0;
  if ((v21 & 8) == 0)
  {
    goto LABEL_47;
  }

LABEL_37:
  v24 = *(this + 10);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  if ((v21 & 4) == 0)
  {
    goto LABEL_48;
  }

LABEL_40:
  v25 = *(this + 9);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  if ((*(this + 66) & 0x1000) == 0)
  {
    goto LABEL_49;
  }

LABEL_43:
  v26 = *(this + 128);
  if ((*(this + 66) & 0x4000) == 0)
  {
    goto LABEL_50;
  }

LABEL_44:
  v27 = *(this + 130);
  return v29 ^ v30 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v16 ^ v20 ^ v22 ^ v23 ^ *&v24 ^ *&v25 ^ v26 ^ v27;
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::makeSuper(uint64_t this)
{
  if (!*(this + 88))
  {
    operator new();
  }

  return this;
}

void CMMsl::AuxiliaryDeviceMotion::~AuxiliaryDeviceMotion(CMMsl::AuxiliaryDeviceMotion *this)
{
  *this = &unk_286C1EA58;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AuxiliaryDeviceMotion::~AuxiliaryDeviceMotion(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::AuxiliaryDeviceMotion *CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(CMMsl::AuxiliaryDeviceMotion *this, const CMMsl::AuxiliaryDeviceMotion *a2)
{
  *this = &unk_286C1EA58;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 104) = 0u;
  *(this + 38) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 15) = 0;
  if ((*(a2 + 152) & 2) != 0)
  {
    v6 = *(a2 + 17);
    *(this + 152) = 2;
    *(this + 17) = v6;
  }

  if (this != a2)
  {
    sub_25AD287AC(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
    sub_25AD287AC(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v7 = *(a2 + 152);
  if ((v7 & 8) != 0)
  {
    v8 = *(a2 + 37);
    *(this + 152) |= 8u;
    *(this + 37) = v8;
    v7 = *(a2 + 152);
  }

  if (v7)
  {
    v9 = *(a2 + 16);
    *(this + 152) |= 1u;
    *(this + 16) = v9;
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 13, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
  }

  if ((*(a2 + 152) & 4) != 0)
  {
    v10 = *(a2 + 36);
    *(this + 152) |= 4u;
    *(this + 36) = v10;
  }

  return this;
}

CMMsl *CMMsl::AuxiliaryDeviceMotion::operator=(CMMsl *a1, const CMMsl::AuxiliaryDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AuxiliaryDeviceMotion::~AuxiliaryDeviceMotion(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AuxiliaryDeviceMotion *a2, CMMsl::AuxiliaryDeviceMotion *a3)
{
  v3 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v9;
  v10 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v11;
  v12 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v12;
  v13 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v13;
  v14 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v14;
  v15 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v15;
  LODWORD(v15) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v15;
  v16 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v16;
  v17 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v17;
  v19 = *(this + 15);
  v18 = *(this + 16);
  v20 = *(a2 + 16);
  *(this + 15) = *(a2 + 15);
  *(this + 16) = v20;
  result = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = result;
  *(a2 + 15) = v19;
  *(a2 + 16) = v18;
  LODWORD(v18) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v18;
  return result;
}

uint64_t CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EA58;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v4 = a1 + 104;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 56) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 136) = *(a2 + 136);
  sub_25AD28758(a1 + 56, (a2 + 56));
  sub_25AD28758(a1 + 80, (a2 + 80));
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v5, (a2 + 8));
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 128) = *(a2 + 128);
  sub_25AD28758(v4, (a2 + 104));
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

CMMsl *CMMsl::AuxiliaryDeviceMotion::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AuxiliaryDeviceMotion::~AuxiliaryDeviceMotion(v5);
  }

  return a1;
}

uint64_t CMMsl::AuxiliaryDeviceMotion::formatText(CMMsl::AuxiliaryDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "acceleration", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "biasCovariance", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "quaternion", v13);
  }

  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "rotationRate", v16);
  }

  v17 = *(this + 152);
  if (v17)
  {
    v21 = *(this + 16);
    PB::TextFormatter::format(a2, "sensorTime");
    v17 = *(this + 152);
    if ((v17 & 4) == 0)
    {
LABEL_11:
      if ((v17 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((*(this + 152) & 4) == 0)
  {
    goto LABEL_11;
  }

  v22 = *(this + 36);
  PB::TextFormatter::format(a2, "status");
  v17 = *(this + 152);
  if ((v17 & 8) == 0)
  {
LABEL_12:
    if ((v17 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v23 = *(this + 37);
  PB::TextFormatter::format(a2, "statusDeprecated");
  if ((*(this + 152) & 2) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "timestamp", *(this + 17));
  }

LABEL_14:
  v18 = *(this + 13);
  v19 = *(this + 14);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(a2, "userAcceleration", v20);
  }

  return MEMORY[0x2821A4560](a2);
}