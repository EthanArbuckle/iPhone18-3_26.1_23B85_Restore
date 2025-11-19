BOOL CMMsl::BatchedPPGData::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 140);
  v5 = *(a2 + 140);
  if ((v4 & 0x100) != 0)
  {
    if ((*(a2 + 140) & 0x100) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((*(a2 + 140) & 0x100) != 0)
  {
    return 0;
  }

  if ((v4 & 0x10) != 0)
  {
    if ((v5 & 0x10) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  if ((v4 & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    return 0;
  }

  if ((v4 & 0x20) != 0)
  {
    if ((v5 & 0x20) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    if ((v5 & 0x80) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
  v8 = *(a1 + 88) - v6;
  if (v8 != *(a2 + 88) - v7)
  {
    return 0;
  }

  if (memcmp(v6, v7, v8))
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);
  v11 = *(a1 + 64) - v9;
  if (v11 != *(a2 + 64) - v10 || memcmp(v9, v10, v11))
  {
    return 0;
  }

  if ((v4 & 8) != 0)
  {
    if ((v5 & 8) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v5 & 8) != 0)
  {
    return 0;
  }

  if ((v4 & 4) != 0)
  {
    if ((v5 & 4) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v5 & 4) != 0)
  {
    return 0;
  }

  if ((v4 & 2) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if ((v5 & 2) == 0 || *(a1 + 108) != *(a2 + 108))
  {
    return 0;
  }

LABEL_47:
  v13 = *(a1 + 32);
  v14 = *(a2 + 32);
  v15 = *(a1 + 40) - v13;
  if (v15 != *(a2 + 40) - v14)
  {
    return 0;
  }

  if (memcmp(v13, v14, v15))
  {
    return 0;
  }

  v16 = *(a1 + 8);
  v17 = *(a2 + 8);
  v18 = *(a1 + 16) - v16;
  if (v18 != *(a2 + 16) - v17 || memcmp(v16, v17, v18))
  {
    return 0;
  }

  result = (v5 & 1) == 0;
  if (v4)
  {
    return (v5 & 1) != 0 && *(a1 + 104) == *(a2 + 104);
  }

  return result;
}

uint64_t CMMsl::BatchedPPGData::hash_value(CMMsl::BatchedPPGData *this)
{
  v2 = *(this + 70);
  if ((v2 & 0x100) != 0)
  {
    v25 = *(this + 34);
    if ((v2 & 0x10) != 0)
    {
LABEL_3:
      v24 = *(this + 30);
      if ((v2 & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v24 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_4:
    v3 = *(this + 32);
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v3 = 0;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = *(this + 31);
  if ((v2 & 0x80) != 0)
  {
LABEL_6:
    v5 = *(this + 33);
    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  v6 = *(this + 10);
  v7 = *(this + 11);
  v8 = PBHashBytes();
  v9 = *(this + 7);
  v10 = *(this + 8);
  v11 = PBHashBytes();
  v12 = *(this + 70);
  if ((v12 & 8) == 0)
  {
    v13 = 0;
    if ((v12 & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v14 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v13 = *(this + 29);
  if ((v12 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v14 = *(this + 28);
  if ((v12 & 2) != 0)
  {
LABEL_15:
    v15 = *(this + 27);
    goto LABEL_19;
  }

LABEL_18:
  v15 = 0;
LABEL_19:
  v16 = *(this + 4);
  v17 = *(this + 5);
  v18 = PBHashBytes();
  v19 = *(this + 1);
  v20 = *(this + 2);
  v21 = PBHashBytes();
  if (*(this + 70))
  {
    v22 = *(this + 26);
  }

  else
  {
    v22 = 0;
  }

  return v24 ^ v25 ^ v3 ^ v4 ^ v5 ^ v8 ^ v11 ^ v13 ^ v14 ^ v15 ^ v18 ^ v21 ^ v22;
}

uint64_t CMMsl::BatterySaverModeStatus::BatterySaverModeStatus(uint64_t this)
{
  *this = &unk_286C1EC88;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_286C1EC88;
  *(this + 12) = 0;
  return this;
}

void CMMsl::BatterySaverModeStatus::~BatterySaverModeStatus(CMMsl::BatterySaverModeStatus *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BatterySaverModeStatus::BatterySaverModeStatus(uint64_t this, const CMMsl::BatterySaverModeStatus *a2)
{
  *this = &unk_286C1EC88;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_286C1EC88;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::BatterySaverModeStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C1EC88;
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
    v7 = &unk_286C1EC88;
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

uint64_t CMMsl::swap(uint64_t this, CMMsl::BatterySaverModeStatus *a2, CMMsl::BatterySaverModeStatus *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::BatterySaverModeStatus::BatterySaverModeStatus(uint64_t result, uint64_t a2)
{
  *result = &unk_286C1EC88;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_286C1EC88;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::BatterySaverModeStatus::formatText(CMMsl::BatterySaverModeStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 8);
    PB::TextFormatter::format(a2, "isBatterySaverModeEnabled");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BatterySaverModeStatus::readFrom(CMMsl::BatterySaverModeStatus *this, PB::Reader *a2)
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

uint64_t CMMsl::BatterySaverModeStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::write(a2);
  }

  return this;
}

BOOL CMMsl::BatterySaverModeStatus::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::BatterySaverModeStatus::hash_value(CMMsl::BatterySaverModeStatus *this)
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

uint64_t CMMsl::BatteryStatus::BatteryStatus(uint64_t this)
{
  *this = &unk_286C1ECC0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C1ECC0;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BatteryStatus::~BatteryStatus(CMMsl::BatteryStatus *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BatteryStatus::BatteryStatus(uint64_t this, const CMMsl::BatteryStatus *a2)
{
  *this = &unk_286C1ECC0;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
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
    v5 = *(a2 + 24);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 25);
    v3 |= 0x10u;
    *(this + 28) = v3;
    *(this + 25) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 5);
  v3 |= 4u;
  *(this + 28) = v3;
  *(this + 20) = v7;
  v2 = *(a2 + 28);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_14:
    v9 = *(a2 + 4);
    *(this + 28) = v3 | 2;
    *(this + 16) = v9;
    return this;
  }

LABEL_13:
  v8 = *(a2 + 26);
  v3 |= 0x20u;
  *(this + 28) = v3;
  *(this + 26) = v8;
  if ((*(a2 + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  return this;
}

uint64_t CMMsl::BatteryStatus::operator=(uint64_t a1, const CMMsl::BatteryStatus *a2)
{
  if (a1 != a2)
  {
    CMMsl::BatteryStatus::BatteryStatus(&v9, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v15;
    v15 = v3;
    LOWORD(v3) = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v3;
    LOBYTE(v3) = *(a1 + 26);
    *(a1 + 26) = v14;
    v14 = v3;
    v5 = *(a1 + 16);
    v4 = *(a1 + 20);
    v6 = v12;
    *(a1 + 16) = v11;
    *(a1 + 20) = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v11 = v5;
    v12 = v4;
    PB::Base::~Base(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BatteryStatus *a2, CMMsl::BatteryStatus *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  LOBYTE(v3) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  LOBYTE(v5) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

double CMMsl::BatteryStatus::BatteryStatus(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1ECC0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C1ECC0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::BatteryStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v15[0] = &unk_286C1ECC0;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 25);
    v7 = *(a2 + 26);
    v9 = *(a2 + 16);
    v8 = *(a2 + 20);
    v10 = *(a1 + 28);
    *(a1 + 28) = v3;
    v21 = v10;
    v11 = *(a1 + 8);
    *(a1 + 8) = v4;
    v15[1] = v11;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v5;
    v18 = v3;
    LOBYTE(v3) = *(a1 + 25);
    *(a1 + 25) = v6;
    v19 = v3;
    LOBYTE(v3) = *(a1 + 26);
    *(a1 + 26) = v7;
    v20 = v3;
    v13 = *(a1 + 16);
    v12 = *(a1 + 20);
    *(a1 + 16) = v9;
    *(a1 + 20) = v8;
    v16 = v13;
    v17 = v12;
    PB::Base::~Base(v15);
  }

  return a1;
}

uint64_t CMMsl::BatteryStatus::formatText(CMMsl::BatteryStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 8) != 0)
  {
    v7 = *(this + 24);
    PB::TextFormatter::format(a2, "charged");
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 4);
  PB::TextFormatter::format(a2, "chargerFamily");
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = *(this + 5);
  PB::TextFormatter::format(a2, "chargerType");
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = *(this + 25);
  PB::TextFormatter::format(a2, "connected");
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "level", *(this + 1));
  if ((*(this + 28) & 0x20) != 0)
  {
LABEL_7:
    v6 = *(this + 26);
    PB::TextFormatter::format(a2, "wasConnected");
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BatteryStatus::readFrom(CMMsl::BatteryStatus *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 28) |= 4u;
          v33 = *(a2 + 1);
          v2 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
          {
            v45 = 0;
            v46 = 0;
            v37 = 0;
            if (v2 <= v33)
            {
              v2 = *(a2 + 1);
            }

            v47 = (v34 + v33);
            v48 = v2 - v33;
            v49 = v33 + 1;
            while (1)
            {
              if (!v48)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_81;
              }

              v50 = v49;
              v51 = *v47;
              *(a2 + 1) = v50;
              v37 |= (v51 & 0x7F) << v45;
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
                LODWORD(v37) = 0;
                goto LABEL_80;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v37) = 0;
            }

LABEL_80:
            v2 = v50;
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

LABEL_81:
          *(this + 5) = v37;
          goto LABEL_19;
        case 5:
          *(this + 28) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v44 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v43 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v44 = v43 != 0;
          }

          *(this + 26) = v44;
          goto LABEL_19;
        case 6:
          *(this + 28) |= 2u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v52 = 0;
            v53 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(a2 + 1);
            }

            v54 = (v26 + v25);
            v55 = v2 - v25;
            v56 = v25 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_85;
              }

              v57 = v56;
              v58 = *v54;
              *(a2 + 1) = v57;
              v29 |= (v58 & 0x7F) << v52;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              ++v54;
              --v55;
              v56 = v57 + 1;
              v14 = v53++ > 8;
              if (v14)
              {
                LODWORD(v29) = 0;
                goto LABEL_84;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_84:
            v2 = v57;
          }

          else
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            while (1)
            {
              v2 = v31;
              *(a2 + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
              if (v14)
              {
                LODWORD(v29) = 0;
                break;
              }
            }
          }

LABEL_85:
          *(this + 4) = v29;
          goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 28) |= 1u;
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
        case 2:
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v42 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v41 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v42 = v41 != 0;
          }

          *(this + 24) = v42;
          goto LABEL_19;
        case 3:
          *(this + 28) |= 0x10u;
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

          *(this + 25) = v24;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v59 = 0;
      return v59 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v59 = v4 ^ 1;
  return v59 & 1;
}

uint64_t CMMsl::BatteryStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = *(v3 + 25);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 28);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = *(v3 + 26);
    this = PB::Writer::write(a2);
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = *(v3 + 20);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 28);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_13:
  v9 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::BatteryStatus::operator==(uint64_t a1, uint64_t a2)
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

  if ((*(a1 + 28) & 0x10) != 0)
  {
    if ((*(a2 + 28) & 0x10) == 0 || *(a1 + 25) != *(a2 + 25))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 0x10) != 0)
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

  if ((*(a1 + 28) & 0x20) != 0)
  {
    if ((*(a2 + 28) & 0x20) == 0 || *(a1 + 26) != *(a2 + 26))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 0x20) != 0)
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

uint64_t CMMsl::BatteryStatus::hash_value(CMMsl::BatteryStatus *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 28) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 24);
      if ((*(this + 28) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(this + 25);
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v3 = 0;
  if ((*(this + 28) & 4) != 0)
  {
LABEL_5:
    v4 = *(this + 5);
    if ((*(this + 28) & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v5 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v6 = 0;
    return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6;
  }

LABEL_13:
  v4 = 0;
  if ((*(this + 28) & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v5 = *(this + 26);
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v6 = *(this + 4);
  return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6;
}

uint64_t CMMsl::BioMotionAnchor::BioMotionAnchor(uint64_t this)
{
  *this = &unk_286C1ECF8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 52) = 0;
  return this;
}

{
  *this = &unk_286C1ECF8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 52) = 0;
  return this;
}

void CMMsl::BioMotionAnchor::~BioMotionAnchor(CMMsl::BioMotionAnchor *this)
{
  *this = &unk_286C1ECF8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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
  CMMsl::BioMotionAnchor::~BioMotionAnchor(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::BioMotionAnchor *CMMsl::BioMotionAnchor::BioMotionAnchor(CMMsl::BioMotionAnchor *this, const CMMsl::BioMotionAnchor *a2)
{
  *(this + 1) = 0;
  *this = &unk_286C1ECF8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 13) = 0;
  if (*(a2 + 5))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v4 = *(a2 + 52);
  if (v4)
  {
    v5 = *(a2 + 4);
    *(this + 52) |= 1u;
    *(this + 4) = v5;
    v4 = *(a2 + 52);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 48);
    *(this + 52) |= 2u;
    *(this + 48) = v6;
  }

  return this;
}

uint64_t CMMsl::BioMotionAnchor::operator=(uint64_t a1, const CMMsl::BioMotionAnchor *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionAnchor::BioMotionAnchor(v9, a2);
    v3 = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v7;
    LOBYTE(v6) = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v6;
    CMMsl::BioMotionAnchor::~BioMotionAnchor(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionAnchor *a2, CMMsl::BioMotionAnchor *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  LOBYTE(v7) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  return result;
}

uint64_t CMMsl::BioMotionAnchor::BioMotionAnchor(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1ECF8;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t CMMsl::BioMotionAnchor::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionAnchor::BioMotionAnchor(v9, a2);
    v3 = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v7;
    LOBYTE(v6) = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v6;
    CMMsl::BioMotionAnchor::~BioMotionAnchor(v9);
  }

  return a1;
}

uint64_t CMMsl::BioMotionAnchor::formatText(CMMsl::BioMotionAnchor *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 52))
  {
    PB::TextFormatter::format(a2, "bioMotionTimestamp", *(this + 4));
  }

  v5 = *(this + 5);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "pose");
  }

  if ((*(this + 52) & 2) != 0)
  {
    v6 = *(this + 48);
    PB::TextFormatter::format(a2, "runSmoother");
  }

  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "velocity", v9);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BioMotionAnchor::readFrom(CMMsl::BioMotionAnchor *this, PB::Reader *a2)
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
            goto LABEL_21;
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
        goto LABEL_75;
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
        goto LABEL_75;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v22 == 1)
      {
        operator new();
      }

      if (v22 != 2)
      {
        goto LABEL_17;
      }

      if ((v10 & 7) != 2)
      {
        v45 = *(this + 2);
        v44 = *(this + 3);
        if (v45 >= v44)
        {
          v47 = *(this + 1);
          v48 = v45 - v47;
          v49 = (v45 - v47) >> 3;
          v50 = v49 + 1;
          if ((v49 + 1) >> 61)
          {
LABEL_79:
            sub_25AAE66B8();
          }

          v51 = v44 - v47;
          if (v51 >> 2 > v50)
          {
            v50 = v51 >> 2;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF8)
          {
            v52 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            sub_25AD28710(v52);
          }

          v53 = (v45 - v47) >> 3;
          v54 = (8 * v49);
          v55 = (8 * v49 - 8 * v53);
          *v54 = 0;
          v46 = v54 + 1;
          memcpy(v55, v47, v48);
          v56 = *(this + 1);
          *(this + 1) = v55;
          *(this + 2) = v46;
          *(this + 3) = 0;
          if (v56)
          {
            operator delete(v56);
          }
        }

        else
        {
          *v45 = 0;
          v46 = v45 + 8;
        }

        *(this + 2) = v46;
        v57 = *(a2 + 1);
        if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(a2 + 2))
        {
LABEL_71:
          *(a2 + 24) = 1;
          goto LABEL_18;
        }

        *(v46 - 1) = *(*a2 + v57);
        goto LABEL_73;
      }

      if (PB::Reader::placeMark())
      {
LABEL_77:
        v58 = 0;
        return v58 & 1;
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
            goto LABEL_79;
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
          *(a2 + 24) = 1;
          break;
        }

        *(v27 - 1) = *(*a2 + v38);
        v24 = *(a2 + 2);
        v23 = *(a2 + 1) + 8;
        *(a2 + 1) = v23;
      }

      PB::Reader::recallMark();
LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_75;
      }
    }

    if (v22 == 3)
    {
      *(this + 52) |= 1u;
      v43 = *(a2 + 1);
      if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(a2 + 2))
      {
        goto LABEL_71;
      }

      *(this + 4) = *(*a2 + v43);
LABEL_73:
      *(a2 + 1) += 8;
      goto LABEL_18;
    }

    if (v22 == 4)
    {
      *(this + 52) |= 2u;
      v39 = *(a2 + 1);
      if (v39 >= *(a2 + 2))
      {
        v42 = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v40 = v39 + 1;
        v41 = *(*a2 + v39);
        *(a2 + 1) = v40;
        v42 = v41 != 0;
      }

      *(this + 48) = v42;
      goto LABEL_18;
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_18;
  }

LABEL_75:
  v58 = v4 ^ 1;
  return v58 & 1;
}

double CMMsl::Pose::Pose(CMMsl::Pose *this)
{
  *this = &unk_286C22AE0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C22AE0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t CMMsl::BioMotionAnchor::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
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

  v8 = *(v3 + 52);
  if (v8)
  {
    this = PB::Writer::write(a2, *(v3 + 32));
    v8 = *(v3 + 52);
  }

  if ((v8 & 2) != 0)
  {
    v9 = *(v3 + 48);

    return PB::Writer::write(a2);
  }

  return this;
}

BOOL CMMsl::BioMotionAnchor::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (!v5 || !CMMsl::Pose::operator==(v4, v5))
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

    result = (*(a2 + 52) & 2) == 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      return result;
    }

    if ((*(a2 + 52) & 2) != 0 && *(a1 + 48) == *(a2 + 48))
    {
      return 1;
    }
  }

  return 0;
}

BOOL CMMsl::Pose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (*(a2 + 64))
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

  if (v7 == v6)
  {
    return 1;
  }

  v9 = v7 + 8;
  do
  {
    v10 = *v8++;
    result = *(v9 - 8) == v10;
    v12 = *(v9 - 8) != v10 || v9 == v6;
    v9 += 8;
  }

  while (!v12);
  return result;
}

uint64_t CMMsl::BioMotionAnchor::hash_value(CMMsl::BioMotionAnchor *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = CMMsl::Pose::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = PBHashBytes();
  if (*(this + 52))
  {
    v7 = *(this + 4);
    if (v7 == 0.0)
    {
      v7 = 0.0;
    }

    if ((*(this + 52) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = 0;
    return v6 ^ v3 ^ *&v7 ^ v8;
  }

  v7 = 0.0;
  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v8 = *(this + 48);
  return v6 ^ v3 ^ *&v7 ^ v8;
}

uint64_t CMMsl::BioMotionAnchor::makePose(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

void *CMMsl::BioMotionAnchorPose::BioMotionAnchorPose(void *this)
{
  *this = &unk_286C1ED30;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1ED30;
  this[1] = 0;
  return this;
}

void CMMsl::BioMotionAnchorPose::~BioMotionAnchorPose(CMMsl::BioMotionAnchorPose *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1ED30;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BioMotionAnchorPose::~BioMotionAnchorPose(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::BioMotionAnchorPose::BioMotionAnchorPose(void *this, const CMMsl::BioMotionAnchorPose *a2)
{
  *this = &unk_286C1ED30;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::BioMotionAnchorPose *CMMsl::BioMotionAnchorPose::operator=(const CMMsl::BioMotionAnchorPose *a1, const CMMsl::BioMotionAnchorPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionAnchorPose::BioMotionAnchorPose(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::BioMotionAnchorPose::~BioMotionAnchorPose(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BioMotionAnchorPose *a2, CMMsl::BioMotionAnchorPose *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::BioMotionAnchorPose::BioMotionAnchorPose(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1ED30;
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
  *a1 = &unk_286C1ED30;
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

uint64_t CMMsl::BioMotionAnchorPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1ED30;
    v6[1] = v4;
    CMMsl::BioMotionAnchorPose::~BioMotionAnchorPose(v6);
  }

  return a1;
}

uint64_t CMMsl::BioMotionAnchorPose::formatText(CMMsl::BioMotionAnchorPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BioMotionAnchorPose::readFrom(CMMsl::BioMotionAnchorPose *this, PB::Reader *a2)
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

uint64_t CMMsl::BioMotionAnchorPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::BioMotionAnchorPose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BioMotionAnchor::operator==(v2, v3);
  }

  return result;
}

CMMsl::BioMotionAnchor *CMMsl::BioMotionAnchorPose::hash_value(CMMsl::BioMotionAnchorPose *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionAnchor::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::BioMotionAnchorPose::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BioMotionClassification::BioMotionClassification(uint64_t this)
{
  *this = &unk_286C1ED68;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C1ED68;
  *(this + 48) = 0;
  return this;
}

void CMMsl::BioMotionClassification::~BioMotionClassification(CMMsl::BioMotionClassification *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::BioMotionClassification::BioMotionClassification(CMMsl::BioMotionClassification *this, const CMMsl::BioMotionClassification *a2)
{
  *this = &unk_286C1ED68;
  *(this + 12) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 5);
    v3 = 16;
    *(this + 48) = 16;
    *(this + 5) = result;
    v2 = *(a2 + 48);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 48) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 48) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 |= 8u;
    *(this + 48) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 48);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 1);
      *(this + 48) = v3 | 1;
      *(this + 1) = result;
      return result;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 48) = v3;
  *(this + 3) = result;
  if (*(a2 + 48))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::BioMotionClassification::operator=(uint64_t a1, const CMMsl::BioMotionClassification *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionClassification::BioMotionClassification(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = v10;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v7 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v7;
    v11 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionClassification *a2, CMMsl::BioMotionClassification *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::BioMotionClassification::BioMotionClassification(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1ED68;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C1ED68;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::BioMotionClassification::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = &unk_286C1ED68;
    v3 = *(a2 + 48);
    *(a2 + 48) = 0;
    v4 = *(a2 + 40);
    v14 = *(a1 + 48);
    v13 = *(a1 + 40);
    v5 = *(a1 + 24);
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    v8 = *(a2 + 24);
    *(a1 + 48) = v3;
    *(a1 + 40) = v4;
    *(a1 + 24) = v8;
    *(a1 + 8) = v7;
    v11 = v6;
    v12 = v5;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::BioMotionClassification::formatText(CMMsl::BioMotionClassification *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 48);
  if (v5)
  {
    PB::TextFormatter::format(a2, "probabilityGenericMotion", *(this + 1));
    v5 = *(this + 48);
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

  else if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "probabilityHeadMotion", *(this + 2));
  v5 = *(this + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "probabilityPedestrianMotion", *(this + 3));
  v5 = *(this + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "probabilityTorsoMotion", *(this + 4));
  if ((*(this + 48) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BioMotionClassification::readFrom(CMMsl::BioMotionClassification *this, PB::Reader *a2)
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
        *(this + 48) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_40:
          *(a2 + 24) = 1;
          goto LABEL_43;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_42;
      }

      if (v22 == 2)
      {
        *(this + 48) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_40;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_42;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 48) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_42;
        case 4:
          *(this + 48) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_42;
        case 5:
          *(this + 48) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_42:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_43;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_43:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::BioMotionClassification::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40));
    v4 = *(v3 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 48) & 1) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::BioMotionClassification::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 0x10) != 0)
  {
    if ((*(a2 + 48) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    if ((*(a2 + 48) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 8) != 0)
  {
    if ((*(a2 + 48) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 4) != 0)
  {
    if ((*(a2 + 48) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 48) & 1) == 0;
  if (*(a1 + 48))
  {
    return (*(a2 + 48) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::BioMotionClassification::hash_value(CMMsl::BioMotionClassification *this)
{
  if ((*(this + 48) & 0x10) == 0)
  {
    v1 = 0.0;
    if ((*(this + 48) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    v2 = 0.0;
    if ((*(this + 48) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_19:
    v3 = 0.0;
    if ((*(this + 48) & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v1 = *(this + 5);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 48) & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  v3 = *(this + 4);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 48) & 4) != 0)
  {
LABEL_9:
    v4 = *(this + 3);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    if (*(this + 48))
    {
      goto LABEL_12;
    }

LABEL_21:
    v5 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5;
  }

LABEL_20:
  v4 = 0.0;
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5;
}

double CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(CMMsl::BioMotionLinkLengthFitParameters *this)
{
  *this = &unk_286C1EDA0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = &unk_286C1EDA0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

void CMMsl::BioMotionLinkLengthFitParameters::~BioMotionLinkLengthFitParameters(CMMsl::BioMotionLinkLengthFitParameters *this)
{
  *this = &unk_286C1EDA0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BioMotionLinkLengthFitParameters::~BioMotionLinkLengthFitParameters(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::BioMotionLinkLengthFitParameters *CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(CMMsl::BioMotionLinkLengthFitParameters *this, const CMMsl::BioMotionLinkLengthFitParameters *a2)
{
  *this = &unk_286C1EDA0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 36) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  if ((*(a2 + 144) & 4) != 0)
  {
    v6 = *(a2 + 15);
    *(this + 144) = 4;
    *(this + 15) = v6;
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_25AD285D4(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  }

  v7 = *(a2 + 144);
  if (v7)
  {
    v10 = *(a2 + 13);
    *(this + 144) |= 1u;
    *(this + 13) = v10;
    v7 = *(a2 + 144);
    if ((v7 & 2) == 0)
    {
LABEL_7:
      if ((v7 & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      v12 = *(a2 + 16);
      *(this + 144) |= 8u;
      *(this + 16) = v12;
      if ((*(a2 + 144) & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a2 + 144) & 2) == 0)
  {
    goto LABEL_7;
  }

  v11 = *(a2 + 14);
  *(this + 144) |= 2u;
  *(this + 14) = v11;
  v7 = *(a2 + 144);
  if ((v7 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v7 & 0x10) != 0)
  {
LABEL_9:
    v8 = *(a2 + 17);
    *(this + 144) |= 0x10u;
    *(this + 17) = v8;
  }

  return this;
}

CMMsl *CMMsl::BioMotionLinkLengthFitParameters::operator=(CMMsl *a1, const CMMsl::BioMotionLinkLengthFitParameters *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BioMotionLinkLengthFitParameters::~BioMotionLinkLengthFitParameters(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionLinkLengthFitParameters *a2, CMMsl::BioMotionLinkLengthFitParameters *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  v4 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v9;
  v10 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v12;
  v13 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v13;
  v14 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v14;
  v15 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v15;
  v16 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v16;
  v17 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v17;
  v18 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v18;
  v19 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v19;
  result = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = result;
  return result;
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EDA0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 88) = 0u;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a1 + 120) = *(a2 + 120);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(a1 + 80, (a2 + 80));
  sub_25AD28758(v5, (a2 + 8));
  sub_25AD28758(v4, (a2 + 56));
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

CMMsl *CMMsl::BioMotionLinkLengthFitParameters::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BioMotionLinkLengthFitParameters::~BioMotionLinkLengthFitParameters(v5);
  }

  return a1;
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::formatText(CMMsl::BioMotionLinkLengthFitParameters *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "centerOfRotationEstVars", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "centerOfRotationEsts", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "linkLengthEstVars", v13);
  }

  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "linkLengthEsts", v16);
  }

  v17 = *(this + 144);
  if (v17)
  {
    PB::TextFormatter::format(a2, "positionResidualNormMean", *(this + 13));
    v17 = *(this + 144);
    if ((v17 & 2) == 0)
    {
LABEL_11:
      if ((v17 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((*(this + 144) & 2) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(a2, "positionResidualNormVar", *(this + 14));
  v17 = *(this + 144);
  if ((v17 & 4) == 0)
  {
LABEL_12:
    if ((v17 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "timestamp", *(this + 15));
  v17 = *(this + 144);
  if ((v17 & 8) == 0)
  {
LABEL_13:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "timestampBegin", *(this + 16));
  if ((*(this + 144) & 0x10) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "timestampEnd", *(this + 17));
  }

LABEL_15:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::readFrom(CMMsl::BioMotionLinkLengthFitParameters *this, PB::Reader *a2)
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
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_192;
            }

            v59 = *(a2 + 1);
            v60 = *(a2 + 2);
            while (v59 < v60 && (*(a2 + 24) & 1) == 0)
            {
              v62 = *(this + 11);
              v61 = *(this + 12);
              if (v62 >= v61)
              {
                v64 = *(this + 10);
                v65 = v62 - v64;
                v66 = (v62 - v64) >> 3;
                v67 = v66 + 1;
                if ((v66 + 1) >> 61)
                {
                  goto LABEL_194;
                }

                v68 = v61 - v64;
                if (v68 >> 2 > v67)
                {
                  v67 = v68 >> 2;
                }

                if (v68 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v69 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v69 = v67;
                }

                if (v69)
                {
                  sub_25AD28710(v69);
                }

                v70 = (v62 - v64) >> 3;
                v71 = (8 * v66);
                v72 = (8 * v66 - 8 * v70);
                *v71 = 0;
                v63 = v71 + 1;
                memcpy(v72, v64, v65);
                v73 = *(this + 10);
                *(this + 10) = v72;
                *(this + 11) = v63;
                *(this + 12) = 0;
                if (v73)
                {
                  operator delete(v73);
                }
              }

              else
              {
                *v62 = 0;
                v63 = v62 + 8;
              }

              *(this + 11) = v63;
              v74 = *(a2 + 1);
              if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(a2 + 2))
              {
LABEL_127:
                *(a2 + 24) = 1;
                goto LABEL_128;
              }

              *(v63 - 1) = *(*a2 + v74);
              v60 = *(a2 + 2);
              v59 = *(a2 + 1) + 8;
              *(a2 + 1) = v59;
            }

            goto LABEL_128;
          }

          v99 = *(this + 11);
          v98 = *(this + 12);
          if (v99 >= v98)
          {
            v114 = *(this + 10);
            v115 = v99 - v114;
            v116 = (v99 - v114) >> 3;
            v117 = v116 + 1;
            if ((v116 + 1) >> 61)
            {
              goto LABEL_194;
            }

            v118 = v98 - v114;
            if (v118 >> 2 > v117)
            {
              v117 = v118 >> 2;
            }

            if (v118 >= 0x7FFFFFFFFFFFFFF8)
            {
              v119 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v119 = v117;
            }

            if (v119)
            {
              sub_25AD28710(v119);
            }

            v134 = (v99 - v114) >> 3;
            v135 = (8 * v116);
            v136 = (8 * v116 - 8 * v134);
            *v135 = 0;
            v95 = v135 + 1;
            memcpy(v136, v114, v115);
            v137 = *(this + 10);
            *(this + 10) = v136;
            *(this + 11) = v95;
            *(this + 12) = 0;
            if (v137)
            {
              operator delete(v137);
            }
          }

          else
          {
            *v99 = 0;
            v95 = v99 + 8;
          }

          *(this + 11) = v95;
        }

        else
        {
          if (v23 != 4)
          {
            goto LABEL_17;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_192;
            }

            v41 = *(a2 + 1);
            v42 = *(a2 + 2);
            while (v41 < v42 && (*(a2 + 24) & 1) == 0)
            {
              v44 = *(this + 2);
              v43 = *(this + 3);
              if (v44 >= v43)
              {
                v46 = *(this + 1);
                v47 = v44 - v46;
                v48 = (v44 - v46) >> 3;
                v49 = v48 + 1;
                if ((v48 + 1) >> 61)
                {
                  goto LABEL_194;
                }

                v50 = v43 - v46;
                if (v50 >> 2 > v49)
                {
                  v49 = v50 >> 2;
                }

                if (v50 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v51 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  sub_25AD28710(v51);
                }

                v52 = (v44 - v46) >> 3;
                v53 = (8 * v48);
                v54 = (8 * v48 - 8 * v52);
                *v53 = 0;
                v45 = v53 + 1;
                memcpy(v54, v46, v47);
                v55 = *(this + 1);
                *(this + 1) = v54;
                *(this + 2) = v45;
                *(this + 3) = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *v44 = 0;
                v45 = v44 + 8;
              }

              *(this + 2) = v45;
              v56 = *(a2 + 1);
              if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
              {
                goto LABEL_127;
              }

              *(v45 - 1) = *(*a2 + v56);
              v42 = *(a2 + 2);
              v41 = *(a2 + 1) + 8;
              *(a2 + 1) = v41;
            }

            goto LABEL_128;
          }

          v97 = *(this + 2);
          v96 = *(this + 3);
          if (v97 >= v96)
          {
            v108 = *(this + 1);
            v109 = v97 - v108;
            v110 = (v97 - v108) >> 3;
            v111 = v110 + 1;
            if ((v110 + 1) >> 61)
            {
              goto LABEL_194;
            }

            v112 = v96 - v108;
            if (v112 >> 2 > v111)
            {
              v111 = v112 >> 2;
            }

            if (v112 >= 0x7FFFFFFFFFFFFFF8)
            {
              v113 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v113 = v111;
            }

            if (v113)
            {
              sub_25AD28710(v113);
            }

            v130 = (v97 - v108) >> 3;
            v131 = (8 * v110);
            v132 = (8 * v110 - 8 * v130);
            *v131 = 0;
            v95 = v131 + 1;
            memcpy(v132, v108, v109);
            v133 = *(this + 1);
            *(this + 1) = v132;
            *(this + 2) = v95;
            *(this + 3) = 0;
            if (v133)
            {
              operator delete(v133);
            }
          }

          else
          {
            *v97 = 0;
            v95 = v97 + 8;
          }

          *(this + 2) = v95;
        }

        goto LABEL_181;
      }

      if (v23 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_192;
          }

          v25 = *(a2 + 1);
          v26 = *(a2 + 2);
          while (v25 < v26 && (*(a2 + 24) & 1) == 0)
          {
            v28 = *(this + 5);
            v27 = *(this + 6);
            if (v28 >= v27)
            {
              v30 = *(this + 4);
              v31 = v28 - v30;
              v32 = (v28 - v30) >> 3;
              v33 = v32 + 1;
              if ((v32 + 1) >> 61)
              {
                goto LABEL_194;
              }

              v34 = v27 - v30;
              if (v34 >> 2 > v33)
              {
                v33 = v34 >> 2;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF8)
              {
                v35 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v33;
              }

              if (v35)
              {
                sub_25AD28710(v35);
              }

              v36 = (v28 - v30) >> 3;
              v37 = (8 * v32);
              v38 = (8 * v32 - 8 * v36);
              *v37 = 0;
              v29 = v37 + 1;
              memcpy(v38, v30, v31);
              v39 = *(this + 4);
              *(this + 4) = v38;
              *(this + 5) = v29;
              *(this + 6) = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v28 = 0;
              v29 = v28 + 8;
            }

            *(this + 5) = v29;
            v40 = *(a2 + 1);
            if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
            {
              goto LABEL_127;
            }

            *(v29 - 1) = *(*a2 + v40);
            v26 = *(a2 + 2);
            v25 = *(a2 + 1) + 8;
            *(a2 + 1) = v25;
          }

LABEL_128:
          PB::Reader::recallMark();
          goto LABEL_186;
        }

        v94 = *(this + 5);
        v93 = *(this + 6);
        if (v94 >= v93)
        {
          v102 = *(this + 4);
          v103 = v94 - v102;
          v104 = (v94 - v102) >> 3;
          v105 = v104 + 1;
          if ((v104 + 1) >> 61)
          {
            goto LABEL_194;
          }

          v106 = v93 - v102;
          if (v106 >> 2 > v105)
          {
            v105 = v106 >> 2;
          }

          if (v106 >= 0x7FFFFFFFFFFFFFF8)
          {
            v107 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v107 = v105;
          }

          if (v107)
          {
            sub_25AD28710(v107);
          }

          v126 = (v94 - v102) >> 3;
          v127 = (8 * v104);
          v128 = (8 * v104 - 8 * v126);
          *v127 = 0;
          v95 = v127 + 1;
          memcpy(v128, v102, v103);
          v129 = *(this + 4);
          *(this + 4) = v128;
          *(this + 5) = v95;
          *(this + 6) = 0;
          if (v129)
          {
            operator delete(v129);
          }
        }

        else
        {
          *v94 = 0;
          v95 = v94 + 8;
        }

        *(this + 5) = v95;
        goto LABEL_181;
      }

      *(this + 144) |= 4u;
      v58 = *(a2 + 1);
      if (v58 > 0xFFFFFFFFFFFFFFF7 || v58 + 8 > *(a2 + 2))
      {
        goto LABEL_183;
      }

      *(this + 15) = *(*a2 + v58);
    }

    else if (v23 <= 6)
    {
      if (v23 == 5)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_192:
            v143 = 0;
            return v143 & 1;
          }

          v76 = *(a2 + 1);
          v77 = *(a2 + 2);
          while (v76 < v77 && (*(a2 + 24) & 1) == 0)
          {
            v79 = *(this + 8);
            v78 = *(this + 9);
            if (v79 >= v78)
            {
              v81 = *(this + 7);
              v82 = v79 - v81;
              v83 = (v79 - v81) >> 3;
              v84 = v83 + 1;
              if ((v83 + 1) >> 61)
              {
                goto LABEL_194;
              }

              v85 = v78 - v81;
              if (v85 >> 2 > v84)
              {
                v84 = v85 >> 2;
              }

              if (v85 >= 0x7FFFFFFFFFFFFFF8)
              {
                v86 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v86 = v84;
              }

              if (v86)
              {
                sub_25AD28710(v86);
              }

              v87 = (v79 - v81) >> 3;
              v88 = (8 * v83);
              v89 = (8 * v83 - 8 * v87);
              *v88 = 0;
              v80 = v88 + 1;
              memcpy(v89, v81, v82);
              v90 = *(this + 7);
              *(this + 7) = v89;
              *(this + 8) = v80;
              *(this + 9) = 0;
              if (v90)
              {
                operator delete(v90);
              }
            }

            else
            {
              *v79 = 0;
              v80 = v79 + 8;
            }

            *(this + 8) = v80;
            v91 = *(a2 + 1);
            if (v91 > 0xFFFFFFFFFFFFFFF7 || v91 + 8 > *(a2 + 2))
            {
              goto LABEL_127;
            }

            *(v80 - 1) = *(*a2 + v91);
            v77 = *(a2 + 2);
            v76 = *(a2 + 1) + 8;
            *(a2 + 1) = v76;
          }

          goto LABEL_128;
        }

        v101 = *(this + 8);
        v100 = *(this + 9);
        if (v101 >= v100)
        {
          v120 = *(this + 7);
          v121 = v101 - v120;
          v122 = (v101 - v120) >> 3;
          v123 = v122 + 1;
          if ((v122 + 1) >> 61)
          {
LABEL_194:
            sub_25AAE66B8();
          }

          v124 = v100 - v120;
          if (v124 >> 2 > v123)
          {
            v123 = v124 >> 2;
          }

          if (v124 >= 0x7FFFFFFFFFFFFFF8)
          {
            v125 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v125 = v123;
          }

          if (v125)
          {
            sub_25AD28710(v125);
          }

          v138 = (v101 - v120) >> 3;
          v139 = (8 * v122);
          v140 = (8 * v122 - 8 * v138);
          *v139 = 0;
          v95 = v139 + 1;
          memcpy(v140, v120, v121);
          v141 = *(this + 7);
          *(this + 7) = v140;
          *(this + 8) = v95;
          *(this + 9) = 0;
          if (v141)
          {
            operator delete(v141);
          }
        }

        else
        {
          *v101 = 0;
          v95 = v101 + 8;
        }

        *(this + 8) = v95;
LABEL_181:
        v142 = *(a2 + 1);
        if (v142 > 0xFFFFFFFFFFFFFFF7 || v142 + 8 > *(a2 + 2))
        {
          goto LABEL_183;
        }

        *(v95 - 1) = *(*a2 + v142);
        goto LABEL_185;
      }

      if (v23 != 6)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_192;
        }

        goto LABEL_186;
      }

      *(this + 144) |= 1u;
      v57 = *(a2 + 1);
      if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(a2 + 2))
      {
LABEL_183:
        *(a2 + 24) = 1;
        goto LABEL_186;
      }

      *(this + 13) = *(*a2 + v57);
    }

    else
    {
      switch(v23)
      {
        case 7:
          *(this + 144) |= 2u;
          v75 = *(a2 + 1);
          if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(a2 + 2))
          {
            goto LABEL_183;
          }

          *(this + 14) = *(*a2 + v75);
          break;
        case 8:
          *(this + 144) |= 8u;
          v92 = *(a2 + 1);
          if (v92 > 0xFFFFFFFFFFFFFFF7 || v92 + 8 > *(a2 + 2))
          {
            goto LABEL_183;
          }

          *(this + 16) = *(*a2 + v92);
          break;
        case 9:
          *(this + 144) |= 0x10u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
            goto LABEL_183;
          }

          *(this + 17) = *(*a2 + v24);
          break;
        default:
          goto LABEL_17;
      }
    }

LABEL_185:
    *(a2 + 1) += 8;
LABEL_186:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v143 = v4 ^ 1;
  return v143 & 1;
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 144) & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 120));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
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

  v16 = *(v3 + 144);
  if (v16)
  {
    this = PB::Writer::write(a2, *(v3 + 104));
    v16 = *(v3 + 144);
    if ((v16 & 2) == 0)
    {
LABEL_17:
      if ((v16 & 8) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      this = PB::Writer::write(a2, *(v3 + 128));
      if ((*(v3 + 144) & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v3 + 144) & 2) == 0)
  {
    goto LABEL_17;
  }

  this = PB::Writer::write(a2, *(v3 + 112));
  v16 = *(v3 + 144);
  if ((v16 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v16 & 0x10) == 0)
  {
    return this;
  }

LABEL_23:
  v17 = *(v3 + 136);

  return PB::Writer::write(a2, v17);
}

BOOL CMMsl::BioMotionLinkLengthFitParameters::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 144) & 4) != 0)
  {
    if ((*(a2 + 144) & 4) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((*(a2 + 144) & 4) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
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

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a2 + 8);
  if (v8 - v9 != *(a2 + 16) - v10)
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

  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = *(a2 + 56);
  if (v11 - v12 != *(a2 + 64) - v13)
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

  if (*(a1 + 144))
  {
    if ((*(a2 + 144) & 1) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if (*(a2 + 144))
  {
    return 0;
  }

  if ((*(a1 + 144) & 2) != 0)
  {
    if ((*(a2 + 144) & 2) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((*(a2 + 144) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 144) & 8) != 0)
  {
    if ((*(a2 + 144) & 8) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((*(a2 + 144) & 8) != 0)
  {
    return 0;
  }

  v14 = (*(a2 + 144) & 0x10) == 0;
  if ((*(a1 + 144) & 0x10) != 0)
  {
    return (*(a2 + 144) & 0x10) != 0 && *(a1 + 136) == *(a2 + 136);
  }

  return v14;
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::hash_value(CMMsl::BioMotionLinkLengthFitParameters *this)
{
  if ((*(this + 144) & 4) != 0)
  {
    if (*(this + 15) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 15);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = PBHashBytes();
  v6 = *(this + 10);
  v7 = *(this + 11);
  v8 = PBHashBytes();
  v9 = *(this + 1);
  v10 = *(this + 2);
  v11 = PBHashBytes();
  v12 = *(this + 7);
  v13 = *(this + 8);
  v14 = PBHashBytes();
  if ((*(this + 144) & 1) == 0)
  {
    v15 = 0.0;
    if ((*(this + 144) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v16 = 0.0;
    if ((*(this + 144) & 8) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v15 = *(this + 13);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((*(this + 144) & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  v16 = *(this + 14);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  if ((*(this + 144) & 8) != 0)
  {
LABEL_11:
    v17 = *(this + 16);
    if (v17 == 0.0)
    {
      v17 = 0.0;
    }

    if ((*(this + 144) & 0x10) != 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    v18 = 0.0;
    return v5 ^ v2 ^ v8 ^ v11 ^ v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18;
  }

LABEL_21:
  v17 = 0.0;
  if ((*(this + 144) & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  v18 = *(this + 17);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  return v5 ^ v2 ^ v8 ^ v11 ^ v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::BioMotionOnlineLinkLengthUpdate(uint64_t this)
{
  *this = &unk_286C1EDD8;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1EDD8;
  *(this + 20) = 0;
  return this;
}

void CMMsl::BioMotionOnlineLinkLengthUpdate::~BioMotionOnlineLinkLengthUpdate(CMMsl::BioMotionOnlineLinkLengthUpdate *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::BioMotionOnlineLinkLengthUpdate(uint64_t this, const CMMsl::BioMotionOnlineLinkLengthUpdate *a2)
{
  *this = &unk_286C1EDD8;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 20) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(this + 20) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 18);
    *(this + 20) = v3 | 8;
    *(this + 18) = v7;
    return this;
  }

  v6 = *(a2 + 17);
  v3 |= 4u;
  *(this + 20) = v3;
  *(this + 17) = v6;
  if ((*(a2 + 20) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::operator=(uint64_t a1, const CMMsl::BioMotionOnlineLinkLengthUpdate *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionOnlineLinkLengthUpdate::BioMotionOnlineLinkLengthUpdate(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOWORD(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    LOBYTE(v3) = *(a1 + 18);
    *(a1 + 18) = v9;
    v9 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionOnlineLinkLengthUpdate *a2, CMMsl::BioMotionOnlineLinkLengthUpdate *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  LOBYTE(v3) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  LOBYTE(v3) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  return result;
}

double CMMsl::BioMotionOnlineLinkLengthUpdate::BioMotionOnlineLinkLengthUpdate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EDD8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  return result;
}

{
  *a1 = &unk_286C1EDD8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  return result;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = &unk_286C1EDD8;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 18);
    v7 = *(a1 + 20);
    *(a1 + 20) = v3;
    v13 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[1] = v8;
    LOWORD(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v11 = v3;
    LOBYTE(v3) = *(a1 + 18);
    *(a1 + 18) = v6;
    v12 = v3;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::formatText(CMMsl::BioMotionOnlineLinkLengthUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestampEnd", *(this + 1));
    v5 = *(this + 20);
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

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 16);
  PB::TextFormatter::format(a2, "updatedLinkLengthX");
  v5 = *(this + 20);
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
  v8 = *(this + 17);
  PB::TextFormatter::format(a2, "updatedLinkLengthY");
  if ((*(this + 20) & 8) != 0)
  {
LABEL_5:
    v6 = *(this + 18);
    PB::TextFormatter::format(a2, "updatedLinkLengthZ");
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::readFrom(CMMsl::BioMotionOnlineLinkLengthUpdate *this, PB::Reader *a2)
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
        *(this + 20) |= 4u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v28 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v27 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v28 = v27 != 0;
        }

        *(this + 17) = v28;
        goto LABEL_19;
      }

      if (v22 == 4)
      {
        *(this + 20) |= 8u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v26 = v25 != 0;
        }

        *(this + 18) = v26;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 20) |= 1u;
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
        *(this + 20) |= 2u;
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

        *(this + 16) = v24;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v29 = 0;
      return v29 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v29 = v4 ^ 1;
  return v29 & 1;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = v3[20];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = v3[17];
      this = PB::Writer::write(a2);
      if ((v3[20] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = v3[16];
  this = PB::Writer::write(a2);
  v4 = v3[20];
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = v3[18];

  return PB::Writer::write(a2);
}

BOOL CMMsl::BioMotionOnlineLinkLengthUpdate::operator==(uint64_t a1, uint64_t a2)
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

  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if ((*(a2 + 20) & 4) == 0 || *(a1 + 17) != *(a2 + 17))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 8) == 0;
  if ((*(a1 + 20) & 8) != 0)
  {
    return (*(a2 + 20) & 8) != 0 && *(a1 + 18) == *(a2 + 18);
  }

  return v2;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::hash_value(CMMsl::BioMotionOnlineLinkLengthUpdate *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 16);
      if ((*(this + 20) & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v3 = 0;
      if ((*(this + 20) & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v4 = 0;
      return v2 ^ *&v1 ^ v3 ^ v4;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v3 = *(this + 17);
  if ((*(this + 20) & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = *(this + 18);
  return v2 ^ *&v1 ^ v3 ^ v4;
}

double CMMsl::BioMotionPose::BioMotionPose(CMMsl::BioMotionPose *this)
{
  *this = &unk_286C1EE10;
  *(this + 36) = 0;
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
  *this = &unk_286C1EE10;
  *(this + 36) = 0;
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

void CMMsl::BioMotionPose::~BioMotionPose(CMMsl::BioMotionPose *this)
{
  *this = &unk_286C1EE10;
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
  CMMsl::BioMotionPose::~BioMotionPose(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::BioMotionPose *CMMsl::BioMotionPose::BioMotionPose(char **this, char **a2)
{
  *this = &unk_286C1EE10;
  *(this + 1) = 0u;
  v4 = this + 1;
  *(this + 7) = 0u;
  *(this + 13) = 0u;
  *(this + 36) = 0;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  *(this + 9) = 0u;
  *(this + 11) = 0u;
  this[15] = 0;
  if (this != a2)
  {
    sub_25AD285D4(v4, a2[1], a2[2], (a2[2] - a2[1]) >> 3);
    sub_25AD285D4(this + 7, a2[7], a2[8], (a2[8] - a2[7]) >> 3);
    sub_25AD285D4(this + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 3);
    sub_25AD285D4(this + 10, a2[10], a2[11], (a2[11] - a2[10]) >> 3);
    sub_25AD285D4(this + 13, a2[13], a2[14], (a2[14] - a2[13]) >> 3);
  }

  v5 = *(a2 + 144);
  if ((v5 & 4) == 0)
  {
    if ((a2[18] & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = a2[16];
    *(this + 144) |= 1u;
    this[16] = v9;
    if ((a2[18] & 2) == 0)
    {
      return this;
    }

    goto LABEL_6;
  }

  v8 = *(a2 + 35);
  *(this + 144) |= 4u;
  *(this + 35) = v8;
  v5 = *(a2 + 144);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v5 & 2) != 0)
  {
LABEL_6:
    v6 = *(a2 + 34);
    *(this + 144) |= 2u;
    *(this + 34) = v6;
  }

  return this;
}

CMMsl *CMMsl::BioMotionPose::operator=(CMMsl *a1, char **a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPose::BioMotionPose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BioMotionPose::~BioMotionPose(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionPose *a2, CMMsl::BioMotionPose *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v11;
  v12 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v12;
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
  LODWORD(v18) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v18;
  result = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = result;
  LODWORD(v18) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v18;
  return result;
}

uint64_t CMMsl::BioMotionPose::BioMotionPose(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EE10;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  v4 = a1 + 104;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(v5, (a2 + 56));
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(a1 + 80, (a2 + 80));
  sub_25AD28758(v4, (a2 + 104));
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

CMMsl *CMMsl::BioMotionPose::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPose::BioMotionPose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BioMotionPose::~BioMotionPose(v5);
  }

  return a1;
}

uint64_t CMMsl::BioMotionPose::formatText(CMMsl::BioMotionPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "attitude", v7);
  }

  if ((*(this + 144) & 2) != 0)
  {
    v8 = *(this + 34);
    PB::TextFormatter::format(a2, "modelType");
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "rotationRate", v11);
  }

  v12 = *(this + 144);
  if ((v12 & 4) != 0)
  {
    v13 = *(this + 35);
    PB::TextFormatter::format(a2, "status");
    v12 = *(this + 144);
  }

  if (v12)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 16));
  }

  v14 = *(this + 7);
  v15 = *(this + 8);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "translation", v16);
  }

  v17 = *(this + 10);
  v18 = *(this + 11);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(a2, "userAcceleration", v19);
  }

  v20 = *(this + 13);
  v21 = *(this + 14);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(a2, "velocity", v22);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BioMotionPose::readFrom(CMMsl::BioMotionPose *this, PB::Reader *a2)
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
        goto LABEL_248;
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
      v22 = v10 & 7;
      if (v22 == 4)
      {
        v4 = 0;
        goto LABEL_248;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        break;
      }

      if (v23 > 6)
      {
        if (v23 == 7)
        {
          *(this + 144) |= 1u;
          v122 = *(a2 + 1);
          if (v122 > 0xFFFFFFFFFFFFFFF7 || v122 + 8 > *(a2 + 2))
          {
LABEL_241:
            *(a2 + 24) = 1;
            goto LABEL_244;
          }

          *(this + 16) = *(*a2 + v122);
          goto LABEL_243;
        }

        if (v23 != 8)
        {
LABEL_17:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_244;
        }

        *(this + 144) |= 2u;
        v66 = *(a2 + 1);
        v65 = *(a2 + 2);
        v67 = *a2;
        if (v66 > 0xFFFFFFFFFFFFFFF5 || v66 + 10 > v65)
        {
          v136 = 0;
          v137 = 0;
          v70 = 0;
          v138 = (v67 + v66);
          v18 = v65 >= v66;
          v139 = v65 - v66;
          if (!v18)
          {
            v139 = 0;
          }

          v140 = v66 + 1;
          while (1)
          {
            if (!v139)
            {
              LODWORD(v70) = 0;
              *(a2 + 24) = 1;
              goto LABEL_223;
            }

            v141 = *v138;
            *(a2 + 1) = v140;
            v70 |= (v141 & 0x7F) << v136;
            if ((v141 & 0x80) == 0)
            {
              break;
            }

            v136 += 7;
            ++v138;
            --v139;
            ++v140;
            v14 = v137++ > 8;
            if (v14)
            {
LABEL_171:
              LODWORD(v70) = 0;
              goto LABEL_223;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v70) = 0;
          }
        }

        else
        {
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v71 = (v67 + v66);
          v72 = v66 + 1;
          while (1)
          {
            *(a2 + 1) = v72;
            v73 = *v71++;
            v70 |= (v73 & 0x7F) << v68;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            ++v72;
            v14 = v69++ > 8;
            if (v14)
            {
              goto LABEL_171;
            }
          }
        }

LABEL_223:
        *(this + 34) = v70;
      }

      else
      {
        if (v23 == 5)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_250;
            }

            v90 = *(a2 + 1);
            v91 = *(a2 + 2);
            while (v90 < v91 && (*(a2 + 24) & 1) == 0)
            {
              v93 = *(this + 14);
              v92 = *(this + 15);
              if (v93 >= v92)
              {
                v95 = *(this + 13);
                v96 = v93 - v95;
                v97 = (v93 - v95) >> 3;
                v98 = v97 + 1;
                if ((v97 + 1) >> 61)
                {
                  goto LABEL_252;
                }

                v99 = v92 - v95;
                if (v99 >> 2 > v98)
                {
                  v98 = v99 >> 2;
                }

                if (v99 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v100 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v100 = v98;
                }

                if (v100)
                {
                  sub_25AD28710(v100);
                }

                v101 = (v93 - v95) >> 3;
                v102 = (8 * v97);
                v103 = (8 * v97 - 8 * v101);
                *v102 = 0;
                v94 = v102 + 1;
                memcpy(v103, v95, v96);
                v104 = *(this + 13);
                *(this + 13) = v103;
                *(this + 14) = v94;
                *(this + 15) = 0;
                if (v104)
                {
                  operator delete(v104);
                }
              }

              else
              {
                *v93 = 0;
                v94 = v93 + 8;
              }

              *(this + 14) = v94;
              v105 = *(a2 + 1);
              if (v105 > 0xFFFFFFFFFFFFFFF7 || v105 + 8 > *(a2 + 2))
              {
LABEL_148:
                *(a2 + 24) = 1;
                goto LABEL_149;
              }

              *(v94 - 1) = *(*a2 + v105);
              v91 = *(a2 + 2);
              v90 = *(a2 + 1) + 8;
              *(a2 + 1) = v90;
            }

            goto LABEL_149;
          }

          v127 = *(this + 14);
          v126 = *(this + 15);
          if (v127 >= v126)
          {
            v152 = *(this + 13);
            v153 = v127 - v152;
            v154 = (v127 - v152) >> 3;
            v155 = v154 + 1;
            if ((v154 + 1) >> 61)
            {
              goto LABEL_252;
            }

            v156 = v126 - v152;
            if (v156 >> 2 > v155)
            {
              v155 = v156 >> 2;
            }

            if (v156 >= 0x7FFFFFFFFFFFFFF8)
            {
              v157 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v157 = v155;
            }

            if (v157)
            {
              sub_25AD28710(v157);
            }

            v180 = (v127 - v152) >> 3;
            v181 = (8 * v154);
            v182 = (8 * v154 - 8 * v180);
            *v181 = 0;
            v125 = v181 + 1;
            memcpy(v182, v152, v153);
            v183 = *(this + 13);
            *(this + 13) = v182;
            *(this + 14) = v125;
            *(this + 15) = 0;
            if (v183)
            {
              operator delete(v183);
            }
          }

          else
          {
            *v127 = 0;
            v125 = v127 + 8;
          }

          *(this + 14) = v125;
LABEL_239:
          v196 = *(a2 + 1);
          if (v196 > 0xFFFFFFFFFFFFFFF7 || v196 + 8 > *(a2 + 2))
          {
            goto LABEL_241;
          }

          *(v125 - 1) = *(*a2 + v196);
LABEL_243:
          *(a2 + 1) += 8;
          goto LABEL_244;
        }

        if (v23 != 6)
        {
          goto LABEL_17;
        }

        *(this + 144) |= 4u;
        v41 = *(a2 + 1);
        v40 = *(a2 + 2);
        v42 = *a2;
        if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
        {
          v130 = 0;
          v131 = 0;
          v45 = 0;
          v132 = (v42 + v41);
          v18 = v40 >= v41;
          v133 = v40 - v41;
          if (!v18)
          {
            v133 = 0;
          }

          v134 = v41 + 1;
          while (1)
          {
            if (!v133)
            {
              LODWORD(v45) = 0;
              *(a2 + 24) = 1;
              goto LABEL_220;
            }

            v135 = *v132;
            *(a2 + 1) = v134;
            v45 |= (v135 & 0x7F) << v130;
            if ((v135 & 0x80) == 0)
            {
              break;
            }

            v130 += 7;
            ++v132;
            --v133;
            ++v134;
            v14 = v131++ > 8;
            if (v14)
            {
LABEL_163:
              LODWORD(v45) = 0;
              goto LABEL_220;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v45) = 0;
          }
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
              goto LABEL_163;
            }
          }
        }

LABEL_220:
        *(this + 35) = v45;
      }

LABEL_244:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_248;
      }
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_250:
            v197 = 0;
            return v197 & 1;
          }

          v106 = *(a2 + 1);
          v107 = *(a2 + 2);
          while (v106 < v107 && (*(a2 + 24) & 1) == 0)
          {
            v109 = *(this + 5);
            v108 = *(this + 6);
            if (v109 >= v108)
            {
              v111 = *(this + 4);
              v112 = v109 - v111;
              v113 = (v109 - v111) >> 3;
              v114 = v113 + 1;
              if ((v113 + 1) >> 61)
              {
                goto LABEL_252;
              }

              v115 = v108 - v111;
              if (v115 >> 2 > v114)
              {
                v114 = v115 >> 2;
              }

              if (v115 >= 0x7FFFFFFFFFFFFFF8)
              {
                v116 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v116 = v114;
              }

              if (v116)
              {
                sub_25AD28710(v116);
              }

              v117 = (v109 - v111) >> 3;
              v118 = (8 * v113);
              v119 = (8 * v113 - 8 * v117);
              *v118 = 0;
              v110 = v118 + 1;
              memcpy(v119, v111, v112);
              v120 = *(this + 4);
              *(this + 4) = v119;
              *(this + 5) = v110;
              *(this + 6) = 0;
              if (v120)
              {
                operator delete(v120);
              }
            }

            else
            {
              *v109 = 0;
              v110 = v109 + 8;
            }

            *(this + 5) = v110;
            v121 = *(a2 + 1);
            if (v121 > 0xFFFFFFFFFFFFFFF7 || v121 + 8 > *(a2 + 2))
            {
              goto LABEL_148;
            }

            *(v110 - 1) = *(*a2 + v121);
            v107 = *(a2 + 2);
            v106 = *(a2 + 1) + 8;
            *(a2 + 1) = v106;
          }

          goto LABEL_149;
        }

        v129 = *(this + 5);
        v128 = *(this + 6);
        if (v129 >= v128)
        {
          v158 = *(this + 4);
          v159 = v129 - v158;
          v160 = (v129 - v158) >> 3;
          v161 = v160 + 1;
          if ((v160 + 1) >> 61)
          {
            goto LABEL_252;
          }

          v162 = v128 - v158;
          if (v162 >> 2 > v161)
          {
            v161 = v162 >> 2;
          }

          if (v162 >= 0x7FFFFFFFFFFFFFF8)
          {
            v163 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v163 = v161;
          }

          if (v163)
          {
            sub_25AD28710(v163);
          }

          v184 = (v129 - v158) >> 3;
          v185 = (8 * v160);
          v186 = (8 * v160 - 8 * v184);
          *v185 = 0;
          v125 = v185 + 1;
          memcpy(v186, v158, v159);
          v187 = *(this + 4);
          *(this + 4) = v186;
          *(this + 5) = v125;
          *(this + 6) = 0;
          if (v187)
          {
            operator delete(v187);
          }
        }

        else
        {
          *v129 = 0;
          v125 = v129 + 8;
        }

        *(this + 5) = v125;
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_250;
          }

          v49 = *(a2 + 1);
          v50 = *(a2 + 2);
          while (v49 < v50 && (*(a2 + 24) & 1) == 0)
          {
            v52 = *(this + 11);
            v51 = *(this + 12);
            if (v52 >= v51)
            {
              v54 = *(this + 10);
              v55 = v52 - v54;
              v56 = (v52 - v54) >> 3;
              v57 = v56 + 1;
              if ((v56 + 1) >> 61)
              {
                goto LABEL_252;
              }

              v58 = v51 - v54;
              if (v58 >> 2 > v57)
              {
                v57 = v58 >> 2;
              }

              if (v58 >= 0x7FFFFFFFFFFFFFF8)
              {
                v59 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v59 = v57;
              }

              if (v59)
              {
                sub_25AD28710(v59);
              }

              v60 = (v52 - v54) >> 3;
              v61 = (8 * v56);
              v62 = (8 * v56 - 8 * v60);
              *v61 = 0;
              v53 = v61 + 1;
              memcpy(v62, v54, v55);
              v63 = *(this + 10);
              *(this + 10) = v62;
              *(this + 11) = v53;
              *(this + 12) = 0;
              if (v63)
              {
                operator delete(v63);
              }
            }

            else
            {
              *v52 = 0;
              v53 = v52 + 8;
            }

            *(this + 11) = v53;
            v64 = *(a2 + 1);
            if (v64 > 0xFFFFFFFFFFFFFFF7 || v64 + 8 > *(a2 + 2))
            {
              goto LABEL_148;
            }

            *(v53 - 1) = *(*a2 + v64);
            v50 = *(a2 + 2);
            v49 = *(a2 + 1) + 8;
            *(a2 + 1) = v49;
          }

          goto LABEL_149;
        }

        v145 = *(this + 11);
        v144 = *(this + 12);
        if (v145 >= v144)
        {
          v170 = *(this + 10);
          v171 = v145 - v170;
          v172 = (v145 - v170) >> 3;
          v173 = v172 + 1;
          if ((v172 + 1) >> 61)
          {
LABEL_252:
            sub_25AAE66B8();
          }

          v174 = v144 - v170;
          if (v174 >> 2 > v173)
          {
            v173 = v174 >> 2;
          }

          if (v174 >= 0x7FFFFFFFFFFFFFF8)
          {
            v175 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v175 = v173;
          }

          if (v175)
          {
            sub_25AD28710(v175);
          }

          v192 = (v145 - v170) >> 3;
          v193 = (8 * v172);
          v194 = (8 * v172 - 8 * v192);
          *v193 = 0;
          v125 = v193 + 1;
          memcpy(v194, v170, v171);
          v195 = *(this + 10);
          *(this + 10) = v194;
          *(this + 11) = v125;
          *(this + 12) = 0;
          if (v195)
          {
            operator delete(v195);
          }
        }

        else
        {
          *v145 = 0;
          v125 = v145 + 8;
        }

        *(this + 11) = v125;
      }
    }

    else if (v23 == 1)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_250;
        }

        v74 = *(a2 + 1);
        v75 = *(a2 + 2);
        while (v74 < v75 && (*(a2 + 24) & 1) == 0)
        {
          v77 = *(this + 2);
          v76 = *(this + 3);
          if (v77 >= v76)
          {
            v79 = *(this + 1);
            v80 = v77 - v79;
            v81 = (v77 - v79) >> 3;
            v82 = v81 + 1;
            if ((v81 + 1) >> 61)
            {
              goto LABEL_252;
            }

            v83 = v76 - v79;
            if (v83 >> 2 > v82)
            {
              v82 = v83 >> 2;
            }

            if (v83 >= 0x7FFFFFFFFFFFFFF8)
            {
              v84 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v82;
            }

            if (v84)
            {
              sub_25AD28710(v84);
            }

            v85 = (v77 - v79) >> 3;
            v86 = (8 * v81);
            v87 = (8 * v81 - 8 * v85);
            *v86 = 0;
            v78 = v86 + 1;
            memcpy(v87, v79, v80);
            v88 = *(this + 1);
            *(this + 1) = v87;
            *(this + 2) = v78;
            *(this + 3) = 0;
            if (v88)
            {
              operator delete(v88);
            }
          }

          else
          {
            *v77 = 0;
            v78 = v77 + 8;
          }

          *(this + 2) = v78;
          v89 = *(a2 + 1);
          if (v89 > 0xFFFFFFFFFFFFFFF7 || v89 + 8 > *(a2 + 2))
          {
            goto LABEL_148;
          }

          *(v78 - 1) = *(*a2 + v89);
          v75 = *(a2 + 2);
          v74 = *(a2 + 1) + 8;
          *(a2 + 1) = v74;
        }

        goto LABEL_149;
      }

      v124 = *(this + 2);
      v123 = *(this + 3);
      if (v124 >= v123)
      {
        v146 = *(this + 1);
        v147 = v124 - v146;
        v148 = (v124 - v146) >> 3;
        v149 = v148 + 1;
        if ((v148 + 1) >> 61)
        {
          goto LABEL_252;
        }

        v150 = v123 - v146;
        if (v150 >> 2 > v149)
        {
          v149 = v150 >> 2;
        }

        if (v150 >= 0x7FFFFFFFFFFFFFF8)
        {
          v151 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v151 = v149;
        }

        if (v151)
        {
          sub_25AD28710(v151);
        }

        v176 = (v124 - v146) >> 3;
        v177 = (8 * v148);
        v178 = (8 * v148 - 8 * v176);
        *v177 = 0;
        v125 = v177 + 1;
        memcpy(v178, v146, v147);
        v179 = *(this + 1);
        *(this + 1) = v178;
        *(this + 2) = v125;
        *(this + 3) = 0;
        if (v179)
        {
          operator delete(v179);
        }
      }

      else
      {
        *v124 = 0;
        v125 = v124 + 8;
      }

      *(this + 2) = v125;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_17;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_250;
        }

        v24 = *(a2 + 1);
        v25 = *(a2 + 2);
        while (v24 < v25 && (*(a2 + 24) & 1) == 0)
        {
          v27 = *(this + 8);
          v26 = *(this + 9);
          if (v27 >= v26)
          {
            v29 = *(this + 7);
            v30 = v27 - v29;
            v31 = (v27 - v29) >> 3;
            v32 = v31 + 1;
            if ((v31 + 1) >> 61)
            {
              goto LABEL_252;
            }

            v33 = v26 - v29;
            if (v33 >> 2 > v32)
            {
              v32 = v33 >> 2;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              sub_25AD28710(v34);
            }

            v35 = (v27 - v29) >> 3;
            v36 = (8 * v31);
            v37 = (8 * v31 - 8 * v35);
            *v36 = 0;
            v28 = v36 + 1;
            memcpy(v37, v29, v30);
            v38 = *(this + 7);
            *(this + 7) = v37;
            *(this + 8) = v28;
            *(this + 9) = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v27 = 0;
            v28 = v27 + 8;
          }

          *(this + 8) = v28;
          v39 = *(a2 + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
          {
            goto LABEL_148;
          }

          *(v28 - 1) = *(*a2 + v39);
          v25 = *(a2 + 2);
          v24 = *(a2 + 1) + 8;
          *(a2 + 1) = v24;
        }

LABEL_149:
        PB::Reader::recallMark();
        goto LABEL_244;
      }

      v143 = *(this + 8);
      v142 = *(this + 9);
      if (v143 >= v142)
      {
        v164 = *(this + 7);
        v165 = v143 - v164;
        v166 = (v143 - v164) >> 3;
        v167 = v166 + 1;
        if ((v166 + 1) >> 61)
        {
          goto LABEL_252;
        }

        v168 = v142 - v164;
        if (v168 >> 2 > v167)
        {
          v167 = v168 >> 2;
        }

        if (v168 >= 0x7FFFFFFFFFFFFFF8)
        {
          v169 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v169 = v167;
        }

        if (v169)
        {
          sub_25AD28710(v169);
        }

        v188 = (v143 - v164) >> 3;
        v189 = (8 * v166);
        v190 = (8 * v166 - 8 * v188);
        *v189 = 0;
        v125 = v189 + 1;
        memcpy(v190, v164, v165);
        v191 = *(this + 7);
        *(this + 7) = v190;
        *(this + 8) = v125;
        *(this + 9) = 0;
        if (v191)
        {
          operator delete(v191);
        }
      }

      else
      {
        *v143 = 0;
        v125 = v143 + 8;
      }

      *(this + 8) = v125;
    }

    goto LABEL_239;
  }

LABEL_248:
  v197 = v4 ^ 1;
  return v197 & 1;
}

uint64_t CMMsl::BioMotionPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12);
  }

  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15);
  }

  v16 = *(v3 + 104);
  v17 = *(v3 + 112);
  while (v16 != v17)
  {
    v18 = *v16++;
    this = PB::Writer::write(a2, v18);
  }

  v19 = *(v3 + 144);
  if ((v19 & 4) == 0)
  {
    if ((*(v3 + 144) & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    this = PB::Writer::write(a2, *(v3 + 128));
    if ((*(v3 + 144) & 2) == 0)
    {
      return this;
    }

    goto LABEL_22;
  }

  v20 = *(v3 + 140);
  this = PB::Writer::writeVarInt(a2);
  v19 = *(v3 + 144);
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v19 & 2) == 0)
  {
    return this;
  }

LABEL_22:
  v21 = *(v3 + 136);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::BioMotionPose::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
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

  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a2 + 56);
  if (v5 - v6 != *(a2 + 64) - v7)
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

  v12 = *(a1 + 80);
  v11 = *(a1 + 88);
  v13 = *(a2 + 80);
  if (v11 - v12 != *(a2 + 88) - v13)
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

  if ((*(a1 + 144) & 4) != 0)
  {
    if ((*(a2 + 144) & 4) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((*(a2 + 144) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 144))
  {
    if ((*(a2 + 144) & 1) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if (*(a2 + 144))
  {
    return 0;
  }

  v17 = (*(a2 + 144) & 2) == 0;
  if ((*(a1 + 144) & 2) != 0)
  {
    return (*(a2 + 144) & 2) != 0 && *(a1 + 136) == *(a2 + 136);
  }

  return v17;
}

uint64_t CMMsl::BioMotionPose::hash_value(CMMsl::BioMotionPose *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = PBHashBytes();
  v5 = *(this + 7);
  v6 = *(this + 8);
  v7 = PBHashBytes();
  v8 = *(this + 4);
  v9 = *(this + 5);
  v10 = PBHashBytes();
  v11 = *(this + 10);
  v12 = *(this + 11);
  v13 = PBHashBytes();
  v14 = *(this + 13);
  v15 = *(this + 14);
  v16 = PBHashBytes();
  if ((*(this + 144) & 4) != 0)
  {
    v17 = *(this + 35);
    if (*(this + 144))
    {
LABEL_3:
      v18 = *(this + 16);
      if (v18 == 0.0)
      {
        v18 = 0.0;
      }

      if ((*(this + 144) & 2) != 0)
      {
        goto LABEL_6;
      }

LABEL_9:
      v19 = 0;
      return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v17 ^ *&v18 ^ v19;
    }
  }

  else
  {
    v17 = 0;
    if (*(this + 144))
    {
      goto LABEL_3;
    }
  }

  v18 = 0.0;
  if ((*(this + 144) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v19 = *(this + 34);
  return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v17 ^ *&v18 ^ v19;
}

uint64_t CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(uint64_t this)
{
  *this = &unk_286C1EE48;
  *(this + 8) = 0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C1EE48;
  *(this + 8) = 0;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BioMotionPredictedPose::~BioMotionPredictedPose(CMMsl::BioMotionPredictedPose *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1EE48;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BioMotionPredictedPose::~BioMotionPredictedPose(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(uint64_t this, const CMMsl::BioMotionPredictedPose *a2)
{
  *this = &unk_286C1EE48;
  *(this + 8) = 0;
  *(this + 28) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 28);
  if (v2)
  {
    v3 = *(a2 + 2);
    *(this + 28) |= 1u;
    *(this + 16) = v3;
    v2 = *(a2 + 28);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 6);
    *(this + 28) |= 2u;
    *(this + 24) = v4;
  }

  return this;
}

const CMMsl::BioMotionPredictedPose *CMMsl::BioMotionPredictedPose::operator=(const CMMsl::BioMotionPredictedPose *a1, const CMMsl::BioMotionPredictedPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(&v8, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v9;
    v9 = v3;
    v4 = v11;
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    *(a1 + 2) = v10;
    *(a1 + 3) = v4;
    v10 = v5;
    v11 = v6;
    CMMsl::BioMotionPredictedPose::~BioMotionPredictedPose(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionPredictedPose *a2, CMMsl::BioMotionPredictedPose *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  return result;
}

uint64_t CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EE48;
  *(a1 + 8) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *CMMsl::BioMotionPredictedPose::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(&v8, a2);
    v3 = a1[1];
    a1[1] = v9;
    v9 = v3;
    v4 = v11;
    v5 = a1[2];
    v6 = a1[3];
    a1[2] = v10;
    a1[3] = v4;
    v10 = v5;
    v11 = v6;
    CMMsl::BioMotionPredictedPose::~BioMotionPredictedPose(&v8);
  }

  return a1;
}

uint64_t CMMsl::BioMotionPredictedPose::formatText(CMMsl::BioMotionPredictedPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 28) & 2) != 0)
  {
    v5 = *(this + 6);
    PB::TextFormatter::format(a2, "modelType");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "state");
  }

  if (*(this + 28))
  {
    PB::TextFormatter::format(a2, "targetTimestamp", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BioMotionPredictedPose::readFrom(CMMsl::BioMotionPredictedPose *this, PB::Reader *a2)
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

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_50;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 28) |= 2u;
        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v33 = 0;
          v34 = 0;
          v29 = 0;
          v35 = (v26 + v25);
          v18 = v24 >= v25;
          v36 = v24 - v25;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v25 + 1;
          while (1)
          {
            if (!v36)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_48;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v29 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_43:
              LODWORD(v29) = 0;
              goto LABEL_48;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v29) = 0;
          }
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = (v26 + v25);
          v31 = v25 + 1;
          while (1)
          {
            *(a2 + 1) = v31;
            v32 = *v30++;
            v29 |= (v32 & 0x7F) << v27;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            ++v31;
            v14 = v28++ > 8;
            if (v14)
            {
              goto LABEL_43;
            }
          }
        }

LABEL_48:
        *(this + 6) = v29;
      }

      else if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v23 = *(a2 + 1);
        if (v23 <= 0xFFFFFFFFFFFFFFF7 && v23 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v23);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_50;
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
        goto LABEL_21;
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

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}

double CMMsl::PoseState::PoseState(CMMsl::PoseState *this)
{
  *this = &unk_286C22B18;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_286C22B18;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CMMsl::BioMotionPredictedPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 28);
  if (v5)
  {
    this = PB::Writer::write(a2, *(v3 + 16));
    v5 = *(v3 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 24);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::BioMotionPredictedPose::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::PoseState::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  result = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) == 0)
  {
    return result;
  }

  return (*(a2 + 28) & 2) != 0 && *(a1 + 24) == *(a2 + 24);
}

BOOL CMMsl::PoseState::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || !CMMsl::Pose::operator==(v4, v5))
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
  if (v6 - v7 != *(a2 + 16) - v8)
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

  result = (*(a2 + 44) & 1) == 0;
  if (*(a1 + 44))
  {
    return (*(a2 + 44) & 1) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

unint64_t CMMsl::BioMotionPredictedPose::hash_value(CMMsl::BioMotionPredictedPose *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::PoseState::hash_value(v2);
  }

  if (*(this + 28))
  {
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    return *&v3 ^ v2 ^ v4;
  }

  v3 = 0.0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(this + 6);
  return *&v3 ^ v2 ^ v4;
}

uint64_t CMMsl::BioMotionPredictedPose::makeState(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::BioMotionPropagatedAnchor::BioMotionPropagatedAnchor(void *this)
{
  *this = &unk_286C1EE80;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C1EE80;
  this[1] = 0;
  return this;
}

void CMMsl::BioMotionPropagatedAnchor::~BioMotionPropagatedAnchor(CMMsl::BioMotionPropagatedAnchor *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1EE80;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BioMotionPropagatedAnchor::~BioMotionPropagatedAnchor(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::BioMotionPropagatedAnchor::BioMotionPropagatedAnchor(void *this, const CMMsl::BioMotionPropagatedAnchor *a2)
{
  *this = &unk_286C1EE80;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::BioMotionPropagatedAnchor *CMMsl::BioMotionPropagatedAnchor::operator=(const CMMsl::BioMotionPropagatedAnchor *a1, const CMMsl::BioMotionPropagatedAnchor *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPropagatedAnchor::BioMotionPropagatedAnchor(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::BioMotionPropagatedAnchor::~BioMotionPropagatedAnchor(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BioMotionPropagatedAnchor *a2, CMMsl::BioMotionPropagatedAnchor *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::BioMotionPropagatedAnchor::BioMotionPropagatedAnchor(void *a1, uint64_t a2)
{
  *a1 = &unk_286C1EE80;
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
  *a1 = &unk_286C1EE80;
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

uint64_t CMMsl::BioMotionPropagatedAnchor::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C1EE80;
    v6[1] = v4;
    CMMsl::BioMotionPropagatedAnchor::~BioMotionPropagatedAnchor(v6);
  }

  return a1;
}

uint64_t CMMsl::BioMotionPropagatedAnchor::formatText(CMMsl::BioMotionPropagatedAnchor *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BioMotionPropagatedAnchor::readFrom(CMMsl::BioMotionPropagatedAnchor *this, PB::Reader *a2)
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

uint64_t CMMsl::PropagatedAnchor::PropagatedAnchor(uint64_t this)
{
  *this = &unk_286C22F40;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C22F40;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t CMMsl::BioMotionPropagatedAnchor::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::BioMotionPropagatedAnchor::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::PropagatedAnchor::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::PropagatedAnchor::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (!v5 || !CMMsl::Pose::operator==(v4, v5))
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
  if (v6 - v7 != *(a2 + 16) - v8)
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

  result = (*(a2 + 48) & 1) == 0;
  if (*(a1 + 48))
  {
    return (*(a2 + 48) & 1) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

CMMsl::PropagatedAnchor *CMMsl::BioMotionPropagatedAnchor::hash_value(CMMsl::BioMotionPropagatedAnchor *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::PropagatedAnchor::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::BioMotionPropagatedAnchor::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(uint64_t this)
{
  *this = &unk_286C1EEB8;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1EEB8;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::BleedToZeroCorrection::~BleedToZeroCorrection(CMMsl::BleedToZeroCorrection *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1EEB8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BleedToZeroCorrection::~BleedToZeroCorrection(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(uint64_t this, const CMMsl::BleedToZeroCorrection *a2)
{
  *this = &unk_286C1EEB8;
  *(this + 8) = 0;
  *(this + 20) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(this + 20) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

uint64_t CMMsl::BleedToZeroCorrection::operator=(uint64_t a1, const CMMsl::BleedToZeroCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::BleedToZeroCorrection::~BleedToZeroCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BleedToZeroCorrection *a2, CMMsl::BleedToZeroCorrection *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  return this;
}

uint64_t CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EEB8;
  *(a1 + 8) = 0;
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

uint64_t CMMsl::BleedToZeroCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BleedToZeroCorrection::BleedToZeroCorrection(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::BleedToZeroCorrection::~BleedToZeroCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::BleedToZeroCorrection::formatText(CMMsl::BleedToZeroCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  if (*(this + 20))
  {
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "withAnchoredStaticPose");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BleedToZeroCorrection::readFrom(CMMsl::BleedToZeroCorrection *this, PB::Reader *a2)
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
        goto LABEL_32;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2))
        {
          v25 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = v22 + 1;
          v24 = *(*a2 + v22);
          *(a2 + 1) = v23;
          v25 = v24 != 0;
        }

        *(this + 16) = v25;
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
          v27 = 0;
          return v27 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_32;
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

LABEL_32:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t CMMsl::BleedToZeroCorrection::writeTo(uint64_t this, PB::Writer *a2)
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

    return PB::Writer::write(a2);
  }

  return this;
}

BOOL CMMsl::BleedToZeroCorrection::operator==(uint64_t a1, uint64_t a2)
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

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

unint64_t CMMsl::BleedToZeroCorrection::hash_value(CMMsl::BleedToZeroCorrection *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::DeviceMotionCorrection::hash_value(v2);
  }

  if (*(this + 20))
  {
    v3 = *(this + 16);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

uint64_t CMMsl::BleedToZeroCorrection::makeCorrection(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BodyMetrics::BodyMetrics(uint64_t this)
{
  *this = &unk_286C1EEF0;
  *(this + 64) = 0;
  return this;
}

{
  *this = &unk_286C1EEF0;
  *(this + 64) = 0;
  return this;
}

void CMMsl::BodyMetrics::~BodyMetrics(CMMsl::BodyMetrics *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::BodyMetrics::BodyMetrics(CMMsl::BodyMetrics *this, const CMMsl::BodyMetrics *a2)
{
  *this = &unk_286C1EEF0;
  *(this + 16) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 16;
    *(this + 32) = 16;
    *(this + 6) = v4;
    v2 = *(a2 + 32);
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
    result = *(a2 + 7);
    v3 |= 0x20u;
    *(this + 32) = v3;
    *(this + 7) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x1000) != 0)
  {
    result = *(a2 + 14);
    v3 |= 0x1000u;
    *(this + 32) = v3;
    *(this + 14) = result;
    v2 = *(a2 + 32);
    if ((v2 & 0x800) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 13);
  v3 |= 0x800u;
  *(this + 32) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 3);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 9);
  v3 |= 0x80u;
  *(this + 32) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 8);
  v3 |= 0x40u;
  *(this + 32) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = *(a2 + 10);
  v3 |= 0x100u;
  *(this + 32) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 11);
  v3 |= 0x200u;
  *(this + 32) = v3;
  *(this + 11) = result;
  v2 = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = *(a2 + 5);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 5) = v6;
  v2 = *(a2 + 32);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(a2 + 12);
  v3 |= 0x400u;
  *(this + 32) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x2000) == 0)
  {
LABEL_16:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = *(a2 + 60);
  v3 |= 0x2000u;
  *(this + 32) = v3;
  *(this + 60) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_17:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_30:
    result = *(a2 + 2);
    *(this + 32) = v3 | 1;
    *(this + 2) = result;
    return result;
  }

LABEL_29:
  v8 = *(a2 + 4);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 4) = v8;
  if (*(a2 + 32))
  {
    goto LABEL_30;
  }

  return result;
}

CMMsl *CMMsl::BodyMetrics::operator=(CMMsl *a1, const CMMsl::BodyMetrics *a2)
{
  if (a1 != a2)
  {
    CMMsl::BodyMetrics::BodyMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::BodyMetrics *a2, CMMsl::BodyMetrics *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v6;
  v7 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  v12 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v12;
  v13 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  LOBYTE(v13) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v13;
  v15 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v15;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float CMMsl::BodyMetrics::BodyMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EEF0;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

CMMsl *CMMsl::BodyMetrics::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BodyMetrics::BodyMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::BodyMetrics::formatText(CMMsl::BodyMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "adaptiveExerciseMinuteThreshold", *(this + 2));
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "age", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 0x2000) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = *(this + 60);
  PB::TextFormatter::format(a2, "betaBlockerUse");
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = *(this + 4);
  PB::TextFormatter::format(a2, "biologicalSex");
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(this + 5);
  PB::TextFormatter::format(a2, "condition");
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(this + 6);
  PB::TextFormatter::format(a2, "gender");
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "heightM", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "hrmax", *(this + 8));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "hrmin", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "hronset", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "pal", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "runVo2max", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "vo2max", *(this + 13));
  if ((*(this + 32) & 0x1000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(a2, "weightKG", *(this + 14));
  }

LABEL_16:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BodyMetrics::readFrom(CMMsl::BodyMetrics *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_121:
    v69 = v4 ^ 1;
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
        goto LABEL_121;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 32) |= 0x10u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v64 = (v23 + v22);
            v65 = v2 - v22;
            v66 = v22 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_116;
              }

              v67 = v66;
              v68 = *v64;
              *(a2 + 1) = v67;
              v26 |= (v68 & 0x7F) << v62;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              ++v64;
              --v65;
              v66 = v67 + 1;
              v14 = v63++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_115:
                v2 = v67;
                goto LABEL_116;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_115;
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
              goto LABEL_116;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_116:
          *(this + 6) = v26;
          break;
        case 2u:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_101;
        case 3u:
          *(this + 32) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_101;
        case 4u:
          *(this + 32) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_101;
        case 5u:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_101;
        case 6u:
          *(this + 32) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_101;
        case 7u:
          *(this + 32) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_101;
        case 8u:
          *(this + 32) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_101;
        case 9u:
          *(this + 32) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_101;
        case 0xAu:
          *(this + 32) |= 8u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v55 = 0;
            v56 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(a2 + 1);
            }

            v57 = (v41 + v40);
            v58 = v2 - v40;
            v59 = v40 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v44) = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v60 = v59;
              v61 = *v57;
              *(a2 + 1) = v60;
              v44 |= (v61 & 0x7F) << v55;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              ++v57;
              --v58;
              v59 = v60 + 1;
              v14 = v56++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_111:
                v2 = v60;
                goto LABEL_112;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_111;
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
              goto LABEL_112;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_112:
          *(this + 5) = v44;
          break;
        case 0xBu:
          *(this + 32) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_73;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_101;
        case 0xCu:
          *(this + 32) |= 0x2000u;
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

          *(this + 60) = v31;
          break;
        case 0xDu:
          *(this + 32) |= 4u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v48 = 0;
            v49 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v50 = (v33 + v32);
            v51 = v2 - v32;
            v52 = v32 + 1;
            while (1)
            {
              if (!v51)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_108;
              }

              v53 = v52;
              v54 = *v50;
              *(a2 + 1) = v53;
              v36 |= (v54 & 0x7F) << v48;
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
                LODWORD(v36) = 0;
LABEL_107:
                v2 = v53;
                goto LABEL_108;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_107;
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
              goto LABEL_108;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_108:
          *(this + 4) = v36;
          break;
        case 0xEu:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_73:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 2) = *(*a2 + v2);
LABEL_101:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_117:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_121;
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
        goto LABEL_121;
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
      goto LABEL_117;
    }

    v69 = 0;
  }

  return v69 & 1;
}

uint64_t CMMsl::BodyMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(this + 24);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 12));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(v3 + 20);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 0x2000) == 0)
  {
LABEL_13:
    if ((v4 & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v8 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 64) & 1) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  v7 = *(v3 + 60);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_29:
  v9 = *(v3 + 8);

  return PB::Writer::write(a2, v9);
}

BOOL CMMsl::BodyMetrics::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x1000) != 0)
  {
    if ((*(a2 + 64) & 0x1000) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x1000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x800) != 0)
  {
    if ((*(a2 + 64) & 0x800) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 36) != *(a2 + 36))
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
    if ((v3 & 0x40) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x100) != 0)
  {
    if ((*(a2 + 64) & 0x100) == 0 || *(a1 + 40) != *(a2 + 40))
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
    if ((*(a2 + 64) & 0x200) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x400) != 0)
  {
    if ((*(a2 + 64) & 0x400) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x2000) != 0)
  {
    if ((*(a2 + 64) & 0x2000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 1) == 0;
  if (v2)
  {
    return (v3 & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v4;
}

uint64_t CMMsl::BodyMetrics::hash_value(CMMsl::BodyMetrics *this)
{
  v1 = *(this + 32);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_37:
    v4 = 0;
    if ((*(this + 32) & 0x1000) != 0)
    {
      goto LABEL_6;
    }

LABEL_38:
    v6 = 0;
    if ((*(this + 32) & 0x800) != 0)
    {
      goto LABEL_9;
    }

LABEL_39:
    v8 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_40:
    v10 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_41:
    v12 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_42:
    v14 = 0;
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_21;
    }

LABEL_43:
    v16 = 0;
    if ((*(this + 32) & 0x200) != 0)
    {
      goto LABEL_24;
    }

LABEL_44:
    v18 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_45;
  }

  v2 = *(this + 6);
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_37;
  }

LABEL_3:
  v3 = *(this + 7);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((*(this + 32) & 0x1000) == 0)
  {
    goto LABEL_38;
  }

LABEL_6:
  v5 = *(this + 14);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((*(this + 32) & 0x800) == 0)
  {
    goto LABEL_39;
  }

LABEL_9:
  v7 = *(this + 13);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_40;
  }

LABEL_12:
  v9 = *(this + 3);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_41;
  }

LABEL_15:
  v11 = *(this + 9);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_42;
  }

LABEL_18:
  v13 = *(this + 8);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_43;
  }

LABEL_21:
  v15 = *(this + 10);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((*(this + 32) & 0x200) == 0)
  {
    goto LABEL_44;
  }

LABEL_24:
  v17 = *(this + 11);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_27:
    v19 = *(this + 5);
    if ((*(this + 32) & 0x400) != 0)
    {
      goto LABEL_28;
    }

LABEL_46:
    v21 = 0;
    if ((*(this + 32) & 0x2000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

LABEL_45:
  v19 = 0;
  if ((*(this + 32) & 0x400) == 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  v20 = *(this + 12);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((*(this + 32) & 0x2000) != 0)
  {
LABEL_31:
    v22 = *(this + 60);
    if ((v1 & 4) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_32:
    v23 = *(this + 4);
    if (v1)
    {
      goto LABEL_33;
    }

LABEL_49:
    v25 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v25;
  }

LABEL_48:
  v23 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_33:
  v24 = *(this + 2);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v19 ^ v21 ^ v22 ^ v23 ^ v25;
}

void *CMMsl::BraveHeartAccel::BraveHeartAccel(void *this)
{
  *this = &unk_286C1EF28;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_286C1EF28;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void CMMsl::BraveHeartAccel::~BraveHeartAccel(CMMsl::BraveHeartAccel *this)
{
  *this = &unk_286C1EF28;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1EF28;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C1EF28;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}