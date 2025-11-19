uint64_t CMMsl::KappaActivityWatch::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 104))
  {
    v4 = *(this + 56);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeVarInt(a2);
  }

  v8 = *(v3 + 104);
  if ((v8 & 0x100) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 100));
    v8 = *(v3 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_8:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  this = PB::Writer::write(a2, *(v3 + 92));
  v8 = *(v3 + 104);
  if ((v8 & 0x80) == 0)
  {
LABEL_9:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 96));
  v8 = *(v3 + 104);
  if ((v8 & 0x20) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    v15 = *(v3 + 64);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 104) & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  v14 = *(v3 + 88);
  this = PB::Writer::writeVarInt(a2);
  v8 = *(v3 + 104);
  if ((v8 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  if ((v8 & 4) != 0)
  {
LABEL_12:
    v9 = *(v3 + 72);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_13:
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::writeVarInt(a2);
  }

  v13 = *(v3 + 104);
  if ((v13 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 84));
    v13 = *(v3 + 104);
  }

  if ((v13 & 8) != 0)
  {
    v16 = *(v3 + 80);

    return PB::Writer::write(a2, v16);
  }

  return this;
}

uint64_t CMMsl::KappaActivityWatch::hash_value(CMMsl::KappaActivityWatch *this)
{
  if (*(this + 52))
  {
    v2 = *(this + 7);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = PBHashBytes();
  v6 = *(this + 52);
  if ((v6 & 0x100) == 0)
  {
    v7 = 0;
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v9 = 0;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    v11 = 0;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  v15 = *(this + 25);
  if (v15 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v15);
  }

  if ((v6 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v8 = *(this + 23);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = LODWORD(v8);
  }

  if ((v6 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  v10 = *(this + 24);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = LODWORD(v10);
  }

  if ((v6 & 0x20) != 0)
  {
LABEL_14:
    v12 = *(this + 22);
    if ((v6 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_24:
    v13 = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_23:
  v12 = 0;
  if ((v6 & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  v13 = *(this + 8);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    v14 = *(this + 9);
    goto LABEL_26;
  }

LABEL_25:
  v14 = 0;
LABEL_26:
  v16 = *(this + 1);
  v17 = *(this + 2);
  v18 = PBHashBytes();
  v19 = *(this + 52);
  if ((v19 & 0x10) != 0)
  {
    v23 = *(this + 21);
    v20 = LODWORD(v23);
    if (v23 == 0.0)
    {
      v20 = 0;
    }

    if ((v19 & 8) != 0)
    {
      goto LABEL_28;
    }

LABEL_34:
    v22 = 0;
    return v5 ^ v2 ^ v7 ^ v9 ^ v11 ^ v12 ^ v13 ^ v14 ^ v18 ^ v20 ^ v22;
  }

  v20 = 0;
  if ((v19 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  v21 = *(this + 20);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  return v5 ^ v2 ^ v7 ^ v9 ^ v11 ^ v12 ^ v13 ^ v14 ^ v18 ^ v20 ^ v22;
}

void CMMsl::KappaAirbagResult::~KappaAirbagResult(CMMsl::KappaAirbagResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::KappaAirbagResult::KappaAirbagResult(uint64_t this, const CMMsl::KappaAirbagResult *a2)
{
  *this = &unk_286C21030;
  *(this + 68) = 0;
  v2 = *(a2 + 34);
  if ((v2 & 0x400) != 0)
  {
    v4 = *(a2 + 64);
    v3 = 1024;
    *(this + 68) = 1024;
    *(this + 64) = v4;
    v2 = *(a2 + 34);
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
    v5 = *(a2 + 13);
    v3 |= 0x80u;
    *(this + 68) = v3;
    *(this + 52) = v5;
    v2 = *(a2 + 34);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 12);
    v3 |= 0x40u;
    *(this + 68) = v3;
    *(this + 48) = v6;
    v2 = *(a2 + 34);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 15);
  v3 |= 0x200u;
  *(this + 68) = v3;
  *(this + 60) = v7;
  v2 = *(a2 + 34);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 14);
  v3 |= 0x100u;
  *(this + 68) = v3;
  *(this + 56) = v8;
  v2 = *(a2 + 34);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 3);
  v3 |= 4u;
  *(this + 68) = v3;
  *(this + 24) = v9;
  v2 = *(a2 + 34);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 10);
  v3 |= 0x10u;
  *(this + 68) = v3;
  *(this + 40) = v10;
  v2 = *(a2 + 34);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 1);
  v3 |= 1u;
  *(this + 68) = v3;
  *(this + 8) = v11;
  v2 = *(a2 + 34);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 2);
  v3 |= 2u;
  *(this + 68) = v3;
  *(this + 16) = v12;
  v2 = *(a2 + 34);
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_24:
    v14 = *(a2 + 4);
    *(this + 68) = v3 | 8;
    *(this + 32) = v14;
    return this;
  }

LABEL_23:
  v13 = *(a2 + 11);
  v3 |= 0x20u;
  *(this + 68) = v3;
  *(this + 44) = v13;
  if ((*(a2 + 34) & 8) != 0)
  {
    goto LABEL_24;
  }

  return this;
}

CMMsl *CMMsl::KappaAirbagResult::operator=(CMMsl *a1, const CMMsl::KappaAirbagResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaAirbagResult::KappaAirbagResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaAirbagResult *a2, CMMsl::KappaAirbagResult *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  LOBYTE(v3) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v3;
  v4 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  v5 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v6;
  v7 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  LODWORD(v8) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  return result;
}

float CMMsl::KappaAirbagResult::KappaAirbagResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21030;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 44);
  *(a1 + 44) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

CMMsl *CMMsl::KappaAirbagResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaAirbagResult::KappaAirbagResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaAirbagResult::formatText(CMMsl::KappaAirbagResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 34);
  if ((v5 & 0x10) != 0)
  {
    v6 = *(this + 10);
    PB::TextFormatter::format(a2, "diffPeakTimestampTrigger");
    v5 = *(this + 34);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 1);
  PB::TextFormatter::format(a2, "epochFirstTimestamp");
  v5 = *(this + 34);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(this + 2);
  PB::TextFormatter::format(a2, "epochLastTimestamp");
  v5 = *(this + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "maxAccelNormInWindow", *(this + 11));
  v5 = *(this + 34);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(this + 64);
  PB::TextFormatter::format(a2, "pass");
  v5 = *(this + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "peakPressure", *(this + 12));
  v5 = *(this + 34);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(this + 3);
  PB::TextFormatter::format(a2, "peakTimestamp");
  v5 = *(this + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(this + 13);
  PB::TextFormatter::format(a2, "pressureODR");
  v5 = *(this + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "riseTime", *(this + 14));
  v5 = *(this + 34);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v12 = *(this + 4);
  PB::TextFormatter::format(a2, "timestamp");
  if ((*(this + 34) & 0x200) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "width", *(this + 15));
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaAirbagResult::readFrom(CMMsl::KappaAirbagResult *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 34) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v48 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v47 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v48 = v47 != 0;
          }

          *(this + 64) = v48;
          goto LABEL_19;
        }

        if (v22 == 2)
        {
          *(this + 34) |= 0x80u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v75 = (v40 + v39);
            v76 = v2 - v39;
            v77 = v39 + 1;
            while (1)
            {
              if (!v76)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_154;
              }

              v78 = v77;
              v79 = *v75;
              *(a2 + 1) = v78;
              v43 |= (v79 & 0x7F) << v73;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              ++v75;
              --v76;
              v77 = v78 + 1;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_153;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_153:
            v2 = v78;
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

LABEL_154:
          *(this + 13) = v43;
          goto LABEL_19;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 34) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_78:
              *(a2 + 24) = 1;
              goto LABEL_19;
            }

            *(this + 12) = *(*a2 + v2);
            goto LABEL_144;
          case 4:
            *(this + 34) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_78;
            }

            *(this + 15) = *(*a2 + v2);
            goto LABEL_144;
          case 5:
            *(this + 34) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_78;
            }

            *(this + 14) = *(*a2 + v2);
            goto LABEL_144;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 34) |= 2u;
          v65 = *(a2 + 1);
          v2 = *(a2 + 2);
          v66 = *a2;
          if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
          {
            v108 = 0;
            v109 = 0;
            v69 = 0;
            if (v2 <= v65)
            {
              v2 = *(a2 + 1);
            }

            v110 = (v66 + v65);
            v111 = v2 - v65;
            v112 = v65 + 1;
            while (1)
            {
              if (!v111)
              {
                v69 = 0;
                *(a2 + 24) = 1;
                goto LABEL_174;
              }

              v113 = v112;
              v114 = *v110;
              *(a2 + 1) = v113;
              v69 |= (v114 & 0x7F) << v108;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              ++v110;
              --v111;
              v112 = v113 + 1;
              v14 = v109++ > 8;
              if (v14)
              {
                v69 = 0;
                goto LABEL_173;
              }
            }

            if (*(a2 + 24))
            {
              v69 = 0;
            }

LABEL_173:
            v2 = v113;
          }

          else
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = (v66 + v65);
            v71 = v65 + 1;
            while (1)
            {
              v2 = v71;
              *(a2 + 1) = v71;
              v72 = *v70++;
              v69 |= (v72 & 0x7F) << v67;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              ++v71;
              v14 = v68++ > 8;
              if (v14)
              {
                v69 = 0;
                break;
              }
            }
          }

LABEL_174:
          *(this + 2) = v69;
          goto LABEL_19;
        case 0xA:
          *(this + 34) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_78;
          }

          *(this + 11) = *(*a2 + v2);
LABEL_144:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_19;
        case 0xB:
          *(this + 34) |= 8u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v96 = (v32 + v31);
            v97 = v2 - v31;
            v98 = v31 + 1;
            while (1)
            {
              if (!v97)
              {
                v35 = 0;
                *(a2 + 24) = 1;
                goto LABEL_166;
              }

              v99 = v98;
              v100 = *v96;
              *(a2 + 1) = v99;
              v35 |= (v100 & 0x7F) << v94;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              ++v96;
              --v97;
              v98 = v99 + 1;
              v14 = v95++ > 8;
              if (v14)
              {
                v35 = 0;
                goto LABEL_165;
              }
            }

            if (*(a2 + 24))
            {
              v35 = 0;
            }

LABEL_165:
            v2 = v99;
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

LABEL_166:
          *(this + 4) = v35;
          goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 34) |= 4u;
          v57 = *(a2 + 1);
          v2 = *(a2 + 2);
          v58 = *a2;
          if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v61 = 0;
            if (v2 <= v57)
            {
              v2 = *(a2 + 1);
            }

            v103 = (v58 + v57);
            v104 = v2 - v57;
            v105 = v57 + 1;
            while (1)
            {
              if (!v104)
              {
                v61 = 0;
                *(a2 + 24) = 1;
                goto LABEL_170;
              }

              v106 = v105;
              v107 = *v103;
              *(a2 + 1) = v106;
              v61 |= (v107 & 0x7F) << v101;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              ++v103;
              --v104;
              v105 = v106 + 1;
              v14 = v102++ > 8;
              if (v14)
              {
                v61 = 0;
                goto LABEL_169;
              }
            }

            if (*(a2 + 24))
            {
              v61 = 0;
            }

LABEL_169:
            v2 = v106;
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

LABEL_170:
          *(this + 3) = v61;
          goto LABEL_19;
        case 7:
          *(this + 34) |= 0x10u;
          v49 = *(a2 + 1);
          v2 = *(a2 + 2);
          v50 = *a2;
          if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v53 = 0;
            if (v2 <= v49)
            {
              v2 = *(a2 + 1);
            }

            v82 = (v50 + v49);
            v83 = v2 - v49;
            v84 = v49 + 1;
            while (1)
            {
              if (!v83)
              {
                LODWORD(v53) = 0;
                *(a2 + 24) = 1;
                goto LABEL_158;
              }

              v85 = v84;
              v86 = *v82;
              *(a2 + 1) = v85;
              v53 |= (v86 & 0x7F) << v80;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              ++v82;
              --v83;
              v84 = v85 + 1;
              v14 = v81++ > 8;
              if (v14)
              {
                LODWORD(v53) = 0;
                goto LABEL_157;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v53) = 0;
            }

LABEL_157:
            v2 = v85;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            while (1)
            {
              v2 = v55;
              *(a2 + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
                LODWORD(v53) = 0;
                break;
              }
            }
          }

LABEL_158:
          *(this + 10) = v53;
          goto LABEL_19;
        case 8:
          *(this + 34) |= 1u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v89 = (v24 + v23);
            v90 = v2 - v23;
            v91 = v23 + 1;
            while (1)
            {
              if (!v90)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_162;
              }

              v92 = v91;
              v93 = *v89;
              *(a2 + 1) = v92;
              v27 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              ++v89;
              --v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                v27 = 0;
                goto LABEL_161;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_161:
            v2 = v92;
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

LABEL_162:
          *(this + 1) = v27;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v115 = 0;
      return v115 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t CMMsl::KappaAirbagResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if ((v4 & 0x400) != 0)
  {
    v5 = *(this + 64);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 68);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 52);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 44));
    if ((*(v3 + 68) & 8) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  v10 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_23:
  v11 = *(v3 + 32);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::KappaAirbagResult::hash_value(CMMsl::KappaAirbagResult *this)
{
  v1 = *(this + 34);
  if ((v1 & 0x400) != 0)
  {
    v2 = *(this + 64);
    if ((v1 & 0x80) != 0)
    {
LABEL_3:
      v3 = *(this + 13);
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_4;
      }

LABEL_23:
      v5 = 0;
      if ((*(this + 34) & 0x200) != 0)
      {
        goto LABEL_7;
      }

LABEL_24:
      v7 = 0;
      if ((*(this + 34) & 0x100) != 0)
      {
        goto LABEL_10;
      }

LABEL_25:
      v9 = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_4:
  v4 = *(this + 12);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 34) & 0x200) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v6 = *(this + 15);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 34) & 0x100) == 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  v8 = *(this + 14);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_13:
    v10 = *(this + 3);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_14:
    v11 = *(this + 10);
    if (v1)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = 0;
  if (v1)
  {
LABEL_15:
    v12 = *(this + 1);
    if ((v1 & 2) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_16:
    v13 = *(this + 2);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_17:
    v14 = *(this + 11);
    v15 = LODWORD(v14);
    if (v14 == 0.0)
    {
      v15 = 0;
    }

    if ((v1 & 8) != 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    v16 = 0;
    return v3 ^ v2 ^ v5 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16;
  }

LABEL_30:
  v15 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = *(this + 4);
  return v3 ^ v2 ^ v5 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16;
}

void CMMsl::KappaAudioResult::~KappaAudioResult(CMMsl::KappaAudioResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::KappaAudioResult::KappaAudioResult(CMMsl::KappaAudioResult *this, const CMMsl::KappaAudioResult *a2)
{
  *this = &unk_286C21068;
  *(this + 27) = 0;
  v2 = *(a2 + 27);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 100);
    v3 = 0x800000;
    *(this + 27) = 0x800000;
    *(this + 100) = v4;
    v2 = *(a2 + 27);
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 21);
    v3 |= 0x80000u;
    *(this + 27) = v3;
    *(this + 21) = v5;
    v2 = *(a2 + 27);
  }

LABEL_6:
  if ((v2 & 0x20000) != 0)
  {
    result = *(a2 + 19);
    v3 |= 0x20000u;
    *(this + 27) = v3;
    *(this + 19) = result;
    v2 = *(a2 + 27);
    if ((v2 & 0x10000) == 0)
    {
LABEL_8:
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 18);
  v3 |= 0x10000u;
  *(this + 27) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x8000) == 0)
  {
LABEL_9:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 17);
  v3 |= 0x8000u;
  *(this + 27) = v3;
  *(this + 17) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x200000) == 0)
  {
LABEL_10:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 23);
  v3 |= 0x200000u;
  *(this + 27) = v3;
  *(this + 23) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x40000) == 0)
  {
LABEL_11:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 20);
  v3 |= 0x40000u;
  *(this + 27) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x400000) == 0)
  {
LABEL_12:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 24);
  v3 |= 0x400000u;
  *(this + 27) = v3;
  *(this + 24) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x1000) == 0)
  {
LABEL_13:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 14);
  v3 |= 0x1000u;
  *(this + 27) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x100000) == 0)
  {
LABEL_14:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 22);
  v3 |= 0x100000u;
  *(this + 27) = v3;
  *(this + 22) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x4000) == 0)
  {
LABEL_15:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 16);
  v3 |= 0x4000u;
  *(this + 27) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x2000) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = *(a2 + 15);
  v3 |= 0x2000u;
  *(this + 27) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  v7 = *(a2 + 103);
  v3 |= 0x4000000u;
  *(this + 27) = v3;
  *(this + 103) = v7;
  v2 = *(a2 + 27);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  v8 = *(a2 + 102);
  v3 |= 0x2000000u;
  *(this + 27) = v3;
  *(this + 102) = v8;
  v2 = *(a2 + 27);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  v9 = *(a2 + 101);
  v3 |= 0x1000000u;
  *(this + 27) = v3;
  *(this + 101) = v9;
  v2 = *(a2 + 27);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_20:
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  v10 = *(a2 + 104);
  v3 |= 0x8000000u;
  *(this + 27) = v3;
  *(this + 104) = v10;
  v2 = *(a2 + 27);
  if ((v2 & 2) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  v11 = *(a2 + 3);
  v3 |= 2u;
  *(this + 27) = v3;
  *(this + 3) = v11;
  v2 = *(a2 + 27);
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 13);
  v3 |= 0x800u;
  *(this + 27) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  v12 = *(a2 + 10);
  v3 |= 0x100u;
  *(this + 27) = v3;
  *(this + 10) = v12;
  v2 = *(a2 + 27);
  if ((v2 & 0x80) == 0)
  {
LABEL_24:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = *(a2 + 9);
  v3 |= 0x80u;
  *(this + 27) = v3;
  *(this + 9) = v13;
  v2 = *(a2 + 27);
  if ((v2 & 0x40) == 0)
  {
LABEL_25:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = *(a2 + 8);
  v3 |= 0x40u;
  *(this + 27) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x20) == 0)
  {
LABEL_26:
    if ((v2 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = *(a2 + 7);
  v3 |= 0x20u;
  *(this + 27) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 27);
  if ((v2 & 8) == 0)
  {
LABEL_27:
    if ((v2 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = *(a2 + 5);
  v3 |= 8u;
  *(this + 27) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 27);
  if ((v2 & 4) == 0)
  {
LABEL_28:
    if ((v2 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = *(a2 + 4);
  v3 |= 4u;
  *(this + 27) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 27);
  if ((v2 & 1) == 0)
  {
LABEL_29:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = *(a2 + 2);
  v3 |= 1u;
  *(this + 27) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x10) == 0)
  {
LABEL_30:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = *(a2 + 6);
  v3 |= 0x10u;
  *(this + 27) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 27);
  if ((v2 & 0x400) == 0)
  {
LABEL_31:
    if ((v2 & 0x200) == 0)
    {
      return result;
    }

LABEL_58:
    result = *(a2 + 11);
    *(this + 27) = v3 | 0x200;
    *(this + 11) = result;
    return result;
  }

LABEL_57:
  result = *(a2 + 12);
  v3 |= 0x400u;
  *(this + 27) = v3;
  *(this + 12) = result;
  if ((*(a2 + 27) & 0x200) != 0)
  {
    goto LABEL_58;
  }

  return result;
}

CMMsl *CMMsl::KappaAudioResult::operator=(CMMsl *a1, const CMMsl::KappaAudioResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaAudioResult::KappaAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaAudioResult *a2, CMMsl::KappaAudioResult *a3)
{
  v3 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v3;
  LOBYTE(v3) = *(this + 100);
  *(this + 100) = *(a2 + 100);
  *(a2 + 100) = v3;
  v4 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  v5 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v5;
  v6 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v6;
  v7 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v7;
  v8 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v8;
  v9 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v9;
  v10 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v10;
  v11 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v11;
  v12 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v12;
  v13 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v13;
  v14 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v14;
  LOBYTE(v4) = *(this + 103);
  *(this + 103) = *(a2 + 103);
  *(a2 + 103) = v4;
  LOBYTE(v4) = *(this + 102);
  *(this + 102) = *(a2 + 102);
  *(a2 + 102) = v4;
  LOBYTE(v4) = *(this + 101);
  *(this + 101) = *(a2 + 101);
  *(a2 + 101) = v4;
  LOBYTE(v4) = *(this + 104);
  *(this + 104) = *(a2 + 104);
  *(a2 + 104) = v4;
  v15 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v15;
  v16 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v16;
  v17 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v17;
  v18 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v18;
  v19 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v19;
  v20 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v20;
  v21 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v21;
  v22 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v22;
  v23 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v23;
  v24 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v24;
  v25 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v25;
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  return result;
}

float CMMsl::KappaAudioResult::KappaAudioResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21068;
  *(a1 + 108) = *(a2 + 108);
  *(a2 + 108) = 0;
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 103) = *(a2 + 103);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 101) = *(a2 + 101);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 44);
  *(a1 + 44) = result;
  return result;
}

CMMsl *CMMsl::KappaAudioResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaAudioResult::KappaAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaAudioResult::formatText(CMMsl::KappaAudioResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 27);
  if (v5)
  {
    PB::TextFormatter::format(a2, "configDelaySpreadFpThreshold", *(this + 2));
    v5 = *(this + 27);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 3);
  PB::TextFormatter::format(a2, "configFeatureSamples");
  v5 = *(this + 27);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "configNonPlanarDelaySpreadThreshold", *(this + 4));
  v5 = *(this + 27);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "configNonPlanarPaprThreshold", *(this + 5));
  v5 = *(this + 27);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "configPeakEnergyFpThreshold", *(this + 6));
  v5 = *(this + 27);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "configPlanarDelaySpreadThreshold", *(this + 7));
  v5 = *(this + 27);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "configPlanarPaprThreshold", *(this + 8));
  v5 = *(this + 27);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  v7 = *(this + 9);
  PB::TextFormatter::format(a2, "configPostTriggerLimitTime");
  v5 = *(this + 27);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  v8 = *(this + 10);
  PB::TextFormatter::format(a2, "configPreTriggerLimitTime");
  v5 = *(this + 27);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "configRawRmsMaxFpThreshold", *(this + 11));
  v5 = *(this + 27);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "configRawRmsMeanFpThreshold", *(this + 12));
  v5 = *(this + 27);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "configRmsClipMinAmp", *(this + 13));
  v5 = *(this + 27);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "delaySpread", *(this + 14));
  v5 = *(this + 27);
  if ((v5 & 0x800000) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(this + 100);
  PB::TextFormatter::format(a2, "isAudioTPQ");
  v5 = *(this + 27);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  v10 = *(this + 101);
  PB::TextFormatter::format(a2, "isFpThresholdsMet");
  v5 = *(this + 27);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v11 = *(this + 102);
  PB::TextFormatter::format(a2, "isNonPlanarTp");
  v5 = *(this + 27);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v12 = *(this + 103);
  PB::TextFormatter::format(a2, "isPlanarTp");
  v5 = *(this + 27);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = *(this + 104);
  PB::TextFormatter::format(a2, "isTauBarWithinRange");
  v5 = *(this + 27);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "papr", *(this + 15));
  v5 = *(this + 27);
  if ((v5 & 0x4000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "peakEnergy", *(this + 16));
  v5 = *(this + 27);
  if ((v5 & 0x8000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "rawRmsMax", *(this + 17));
  v5 = *(this + 27);
  if ((v5 & 0x10000) == 0)
  {
LABEL_23:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "rawRmsMean", *(this + 18));
  v5 = *(this + 27);
  if ((v5 & 0x20000) == 0)
  {
LABEL_24:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "rawRmsSum", *(this + 19));
  v5 = *(this + 27);
  if ((v5 & 0x40000) == 0)
  {
LABEL_25:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "rmsClipSum", *(this + 20));
  v5 = *(this + 27);
  if ((v5 & 0x80000) == 0)
  {
LABEL_26:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  v14 = *(this + 21);
  PB::TextFormatter::format(a2, "sampleCount");
  v5 = *(this + 27);
  if ((v5 & 0x100000) == 0)
  {
LABEL_27:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "t2TimesRmsClipSum", *(this + 22));
  v5 = *(this + 27);
  if ((v5 & 0x200000) == 0)
  {
LABEL_28:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "tTimesRmsClipSum", *(this + 23));
  if ((*(this + 27) & 0x400000) != 0)
  {
LABEL_29:
    PB::TextFormatter::format(a2, "tauBar", *(this + 24));
  }

LABEL_30:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaAudioResult::readFrom(CMMsl::KappaAudioResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_184:
    v92 = v4 ^ 1;
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
        goto LABEL_184;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 27) |= 0x800000u;
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

          *(this + 100) = v23;
          break;
        case 2u:
          *(this + 27) |= 0x80000u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v73 = (v39 + v38);
            v74 = v2 - v38;
            v75 = v38 + 1;
            while (1)
            {
              if (!v74)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_174;
              }

              v76 = v75;
              v77 = *v73;
              *(a2 + 1) = v76;
              v42 |= (v77 & 0x7F) << v71;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              ++v73;
              --v74;
              v75 = v76 + 1;
              v14 = v72++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_173:
                v2 = v76;
                goto LABEL_174;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_173;
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
              goto LABEL_174;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_174:
          *(this + 21) = v42;
          break;
        case 3u:
          *(this + 27) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_159;
        case 4u:
          *(this + 27) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_159;
        case 5u:
          *(this + 27) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_159;
        case 6u:
          *(this + 27) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_159;
        case 7u:
          *(this + 27) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_159;
        case 8u:
          *(this + 27) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_159;
        case 9u:
          *(this + 27) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_159;
        case 0xAu:
          *(this + 27) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_159;
        case 0xBu:
          *(this + 27) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_159;
        case 0xCu:
          *(this + 27) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_159;
        case 0xDu:
          *(this + 27) |= 0x4000000u;
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

          *(this + 103) = v35;
          break;
        case 0xEu:
          *(this + 27) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v47 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v46 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v47 = v46 != 0;
          }

          *(this + 102) = v47;
          break;
        case 0xFu:
          *(this + 27) |= 0x1000000u;
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

          *(this + 101) = v33;
          break;
        case 0x10u:
          *(this + 27) |= 0x8000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v37 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v36 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v37 = v36 != 0;
          }

          *(this + 104) = v37;
          break;
        case 0x11u:
          *(this + 27) |= 2u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v66 = (v25 + v24);
            v67 = v2 - v24;
            v68 = v24 + 1;
            while (1)
            {
              if (!v67)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_170;
              }

              v69 = v68;
              v70 = *v66;
              *(a2 + 1) = v69;
              v28 |= (v70 & 0x7F) << v64;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              ++v66;
              --v67;
              v68 = v69 + 1;
              v14 = v65++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_169:
                v2 = v69;
                goto LABEL_170;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_169;
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
              goto LABEL_170;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_170:
          *(this + 3) = v28;
          break;
        case 0x12u:
          *(this + 27) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_159;
        case 0x13u:
          *(this + 27) |= 0x100u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(a2 + 1);
            }

            v80 = (v49 + v48);
            v81 = v2 - v48;
            v82 = v48 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_178;
              }

              v83 = v82;
              v84 = *v80;
              *(a2 + 1) = v83;
              v52 |= (v84 & 0x7F) << v78;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              ++v80;
              --v81;
              v82 = v83 + 1;
              v14 = v79++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_177:
                v2 = v83;
                goto LABEL_178;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_177;
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
              goto LABEL_178;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_178:
          *(this + 10) = v52;
          break;
        case 0x14u:
          *(this + 27) |= 0x80u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v85 = 0;
            v86 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(a2 + 1);
            }

            v87 = (v57 + v56);
            v88 = v2 - v56;
            v89 = v56 + 1;
            while (1)
            {
              if (!v88)
              {
                LODWORD(v60) = 0;
                *(a2 + 24) = 1;
                goto LABEL_182;
              }

              v90 = v89;
              v91 = *v87;
              *(a2 + 1) = v90;
              v60 |= (v91 & 0x7F) << v85;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              ++v87;
              --v88;
              v89 = v90 + 1;
              v14 = v86++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_181:
                v2 = v90;
                goto LABEL_182;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_181;
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
              goto LABEL_182;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_182:
          *(this + 9) = v60;
          break;
        case 0x15u:
          *(this + 27) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_159;
        case 0x16u:
          *(this + 27) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_159;
        case 0x17u:
          *(this + 27) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_159;
        case 0x18u:
          *(this + 27) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_159;
        case 0x19u:
          *(this + 27) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_159;
        case 0x1Au:
          *(this + 27) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_159;
        case 0x1Bu:
          *(this + 27) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_115;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_159;
        case 0x1Cu:
          *(this + 27) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_115:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 11) = *(*a2 + v2);
LABEL_159:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_160:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_184;
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
        goto LABEL_184;
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
      goto LABEL_160;
    }

    v92 = 0;
  }

  return v92 & 1;
}

uint64_t CMMsl::KappaAudioResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 108);
  if ((v4 & 0x800000) != 0)
  {
    v5 = *(this + 100);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 108);
    if ((v4 & 0x80000) == 0)
    {
LABEL_3:
      if ((v4 & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 84);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 108);
  if ((v4 & 0x20000) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 108);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 108);
  if ((v4 & 0x8000) == 0)
  {
LABEL_6:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 108);
  if ((v4 & 0x200000) == 0)
  {
LABEL_7:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 92));
  v4 = *(v3 + 108);
  if ((v4 & 0x40000) == 0)
  {
LABEL_8:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 108);
  if ((v4 & 0x400000) == 0)
  {
LABEL_9:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 108);
  if ((v4 & 0x1000) == 0)
  {
LABEL_10:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 108);
  if ((v4 & 0x100000) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 108);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 108);
  if ((v4 & 0x2000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 108);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v7 = *(v3 + 103);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 108);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v8 = *(v3 + 102);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 108);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v9 = *(v3 + 101);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 108);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_17:
    if ((v4 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(v3 + 104);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 108);
  if ((v4 & 2) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = *(v3 + 12);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 108);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 108);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v12 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 108);
  if ((v4 & 0x80) == 0)
  {
LABEL_21:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v13 = *(v3 + 36);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 108);
  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 108);
  if ((v4 & 0x20) == 0)
  {
LABEL_23:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 108);
  if ((v4 & 8) == 0)
  {
LABEL_24:
    if ((v4 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 108);
  if ((v4 & 4) == 0)
  {
LABEL_25:
    if ((v4 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 108);
  if ((v4 & 1) == 0)
  {
LABEL_26:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 108);
  if ((v4 & 0x10) == 0)
  {
LABEL_27:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    this = PB::Writer::write(a2, *(v3 + 48));
    if ((*(v3 + 108) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_57;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 108);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  if ((v4 & 0x200) == 0)
  {
    return this;
  }

LABEL_57:
  v14 = *(v3 + 44);

  return PB::Writer::write(a2, v14);
}

uint64_t CMMsl::KappaAudioResult::hash_value(CMMsl::KappaAudioResult *this)
{
  v1 = *(this + 27);
  if ((v1 & 0x800000) != 0)
  {
    v2 = *(this + 100);
    if ((v1 & 0x80000) != 0)
    {
LABEL_3:
      v3 = *(this + 21);
      if ((v1 & 0x20000) != 0)
      {
        goto LABEL_4;
      }

LABEL_40:
      v5 = 0;
      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_7;
      }

LABEL_41:
      v7 = 0;
      if ((v1 & 0x8000) != 0)
      {
        goto LABEL_10;
      }

LABEL_42:
      v9 = 0;
      if ((v1 & 0x200000) != 0)
      {
        goto LABEL_13;
      }

LABEL_43:
      v11 = 0;
      if ((v1 & 0x40000) != 0)
      {
        goto LABEL_16;
      }

LABEL_44:
      v13 = 0;
      if ((v1 & 0x400000) != 0)
      {
        goto LABEL_19;
      }

LABEL_45:
      v15 = 0;
      if ((v1 & 0x1000) != 0)
      {
        goto LABEL_22;
      }

LABEL_46:
      v17 = 0;
      if ((v1 & 0x100000) != 0)
      {
        goto LABEL_25;
      }

LABEL_47:
      v19 = 0;
      if ((v1 & 0x4000) != 0)
      {
        goto LABEL_28;
      }

LABEL_48:
      v21 = 0;
      if ((v1 & 0x2000) != 0)
      {
        goto LABEL_31;
      }

LABEL_49:
      v23 = 0;
      if ((v1 & 0x4000000) != 0)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_40;
  }

LABEL_4:
  v4 = *(this + 19);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_41;
  }

LABEL_7:
  v6 = *(this + 18);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_42;
  }

LABEL_10:
  v8 = *(this + 17);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_43;
  }

LABEL_13:
  v10 = *(this + 23);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  v12 = *(this + 20);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_45;
  }

LABEL_19:
  v14 = *(this + 24);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

LABEL_22:
  v16 = *(this + 14);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_47;
  }

LABEL_25:
  v18 = *(this + 22);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_48;
  }

LABEL_28:
  v20 = *(this + 16);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_49;
  }

LABEL_31:
  v22 = *(this + 15);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  if ((v1 & 0x4000000) != 0)
  {
LABEL_34:
    v24 = *(this + 103);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = 0;
  if ((v1 & 0x2000000) != 0)
  {
LABEL_35:
    v25 = *(this + 102);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_36;
    }

LABEL_52:
    v26 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_53;
  }

LABEL_51:
  v25 = 0;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_36:
  v26 = *(this + 101);
  if ((v1 & 0x8000000) != 0)
  {
LABEL_37:
    v27 = *(this + 104);
    goto LABEL_54;
  }

LABEL_53:
  v27 = 0;
LABEL_54:
  if ((v1 & 2) == 0)
  {
    v28 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_56;
    }

LABEL_86:
    v30 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_87;
  }

  v28 = *(this + 3);
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_86;
  }

LABEL_56:
  v29 = *(this + 13);
  v30 = LODWORD(v29);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_59:
    v31 = *(this + 10);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_87:
  v31 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_60:
    v32 = *(this + 9);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_61;
    }

LABEL_89:
    v34 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_64;
    }

LABEL_90:
    v36 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_67;
    }

LABEL_91:
    v38 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_70;
    }

LABEL_92:
    v40 = 0;
    if (v1)
    {
      goto LABEL_73;
    }

LABEL_93:
    v42 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_76;
    }

LABEL_94:
    v44 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_95;
  }

LABEL_88:
  v32 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_89;
  }

LABEL_61:
  v33 = *(this + 8);
  v34 = LODWORD(v33);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_90;
  }

LABEL_64:
  v35 = *(this + 7);
  v36 = LODWORD(v35);
  if (v35 == 0.0)
  {
    v36 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_91;
  }

LABEL_67:
  v37 = *(this + 5);
  v38 = LODWORD(v37);
  if (v37 == 0.0)
  {
    v38 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_92;
  }

LABEL_70:
  v39 = *(this + 4);
  v40 = LODWORD(v39);
  if (v39 == 0.0)
  {
    v40 = 0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_73:
  v41 = *(this + 2);
  v42 = LODWORD(v41);
  if (v41 == 0.0)
  {
    v42 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_94;
  }

LABEL_76:
  v43 = *(this + 6);
  v44 = LODWORD(v43);
  if (v43 == 0.0)
  {
    v44 = 0;
  }

  if ((v1 & 0x400) != 0)
  {
LABEL_79:
    v45 = *(this + 12);
    v46 = LODWORD(v45);
    if (v45 == 0.0)
    {
      v46 = 0;
    }

    if ((v1 & 0x200) != 0)
    {
      goto LABEL_82;
    }

LABEL_96:
    v48 = 0;
    return v3 ^ v2 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v30 ^ v31 ^ v32 ^ v34 ^ v36 ^ v38 ^ v40 ^ v42 ^ v44 ^ v46 ^ v48;
  }

LABEL_95:
  v46 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_96;
  }

LABEL_82:
  v47 = *(this + 11);
  v48 = LODWORD(v47);
  if (v47 == 0.0)
  {
    v48 = 0;
  }

  return v3 ^ v2 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v30 ^ v31 ^ v32 ^ v34 ^ v36 ^ v38 ^ v40 ^ v42 ^ v44 ^ v46 ^ v48;
}

void CMMsl::KappaBaroResult::~KappaBaroResult(CMMsl::KappaBaroResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::KappaBaroResult::KappaBaroResult(CMMsl::KappaBaroResult *this, const CMMsl::KappaBaroResult *a2)
{
  *this = &unk_286C210A0;
  *(this + 38) = 0;
  v2 = *(a2 + 38);
  if ((v2 & 0x20000000) != 0)
  {
    v4 = *(a2 + 148);
    v3 = 0x20000000;
    *(this + 38) = 0x20000000;
    *(this + 148) = v4;
    v2 = *(a2 + 38);
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200000) != 0)
  {
LABEL_5:
    result = *(a2 + 29);
    v3 |= 0x200000u;
    *(this + 38) = v3;
    *(this + 29) = result;
    v2 = *(a2 + 38);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 4u;
    *(this + 38) = v3;
    *(this + 3) = v6;
    v2 = *(a2 + 38);
    if ((v2 & 0x10000000) == 0)
    {
LABEL_8:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 0x10000000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 36);
  v3 |= 0x10000000u;
  *(this + 38) = v3;
  *(this + 36) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 34);
  v3 |= 0x4000000u;
  *(this + 38) = v3;
  *(this + 34) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x100000) == 0)
  {
LABEL_10:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  v7 = *(a2 + 28);
  v3 |= 0x100000u;
  *(this + 38) = v3;
  *(this + 28) = v7;
  v2 = *(a2 + 38);
  if ((v2 & 0x40000) == 0)
  {
LABEL_11:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v8 = *(a2 + 26);
  v3 |= 0x40000u;
  *(this + 38) = v3;
  *(this + 26) = v8;
  v2 = *(a2 + 38);
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 38) = v3;
  *(this + 5) = v9;
  v2 = *(a2 + 38);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 35);
  v3 |= 0x8000000u;
  *(this + 38) = v3;
  *(this + 35) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x8000) == 0)
  {
LABEL_14:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v10 = *(a2 + 23);
  v3 |= 0x8000u;
  *(this + 38) = v3;
  *(this + 23) = v10;
  v2 = *(a2 + 38);
  if ((v2 & 0x4000) == 0)
  {
LABEL_15:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v11 = *(a2 + 22);
  v3 |= 0x4000u;
  *(this + 38) = v3;
  *(this + 22) = v11;
  v2 = *(a2 + 38);
  if ((v2 & 0x800000) == 0)
  {
LABEL_16:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 31);
  v3 |= 0x800000u;
  *(this + 38) = v3;
  *(this + 31) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x400000) == 0)
  {
LABEL_17:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 30);
  v3 |= 0x400000u;
  *(this + 38) = v3;
  *(this + 30) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 32);
  v3 |= 0x1000000u;
  *(this + 38) = v3;
  *(this + 32) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x2000) == 0)
  {
LABEL_19:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 21);
  v3 |= 0x2000u;
  *(this + 38) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x1000) == 0)
  {
LABEL_20:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 20);
  v3 |= 0x1000u;
  *(this + 38) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x800) == 0)
  {
LABEL_21:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 19);
  v3 |= 0x800u;
  *(this + 38) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x400) == 0)
  {
LABEL_22:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 18);
  v3 |= 0x400u;
  *(this + 38) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x200) == 0)
  {
LABEL_23:
    if ((v2 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = *(a2 + 17);
  v3 |= 0x200u;
  *(this + 38) = v3;
  *(this + 17) = result;
  v2 = *(a2 + 38);
  if ((v2 & 1) == 0)
  {
LABEL_24:
    if ((v2 & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  v12 = *(a2 + 1);
  v3 |= 1u;
  *(this + 38) = v3;
  *(this + 1) = v12;
  v2 = *(a2 + 38);
  if ((v2 & 2) == 0)
  {
LABEL_25:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  v13 = *(a2 + 2);
  v3 |= 2u;
  *(this + 38) = v3;
  *(this + 2) = v13;
  v2 = *(a2 + 38);
  if ((v2 & 0x10000) == 0)
  {
LABEL_26:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = *(a2 + 24);
  v3 |= 0x10000u;
  *(this + 38) = v3;
  *(this + 24) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x20) == 0)
  {
LABEL_27:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 38) = v3;
  *(this + 6) = v14;
  v2 = *(a2 + 38);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = *(a2 + 33);
  v3 |= 0x2000000u;
  *(this + 38) = v3;
  *(this + 33) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x20000) == 0)
  {
LABEL_29:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = *(a2 + 25);
  v3 |= 0x20000u;
  *(this + 38) = v3;
  *(this + 25) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x100) == 0)
  {
LABEL_30:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 16);
  v3 |= 0x100u;
  *(this + 38) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 38);
  if ((v2 & 0x80000) == 0)
  {
LABEL_31:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

LABEL_59:
  v15 = *(a2 + 27);
  v3 |= 0x80000u;
  *(this + 38) = v3;
  *(this + 27) = v15;
  v2 = *(a2 + 38);
  if ((v2 & 0x40) == 0)
  {
LABEL_32:
    if ((v2 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = *(a2 + 14);
  v3 |= 0x40u;
  *(this + 38) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 38);
  if ((v2 & 8) == 0)
  {
LABEL_33:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_62:
    result = *(a2 + 15);
    *(this + 38) = v3 | 0x80;
    *(this + 15) = result;
    return result;
  }

LABEL_61:
  v16 = *(a2 + 4);
  v3 |= 8u;
  *(this + 38) = v3;
  *(this + 4) = v16;
  if ((*(a2 + 38) & 0x80) != 0)
  {
    goto LABEL_62;
  }

  return result;
}

CMMsl *CMMsl::KappaBaroResult::operator=(CMMsl *a1, const CMMsl::KappaBaroResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaBaroResult::KappaBaroResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaBaroResult *a2, CMMsl::KappaBaroResult *a3)
{
  v3 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  LOBYTE(v3) = *(this + 148);
  *(this + 148) = *(a2 + 148);
  *(a2 + 148) = v3;
  v4 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v6;
  v7 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v7;
  LODWORD(v5) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v5;
  LODWORD(v5) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v5;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v9;
  LODWORD(v8) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v8;
  LODWORD(v8) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v8;
  v10 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v10;
  v11 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v11;
  v12 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  v13 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v13;
  v14 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v14;
  v15 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v15;
  v16 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v16;
  v17 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v17;
  v18 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v18;
  v19 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v19;
  v20 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v20;
  v21 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v21;
  v22 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v22;
  v23 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v23;
  v24 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v24;
  LODWORD(v21) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v21;
  v25 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v25;
  v26 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v26;
  result = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = result;
  return result;
}

float CMMsl::KappaBaroResult::KappaBaroResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C210A0;
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 60);
  *(a1 + 60) = result;
  return result;
}

CMMsl *CMMsl::KappaBaroResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaBaroResult::KappaBaroResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaBaroResult::formatText(CMMsl::KappaBaroResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 38);
  if ((v5 & 0x20000000) != 0)
  {
    v6 = *(this + 148);
    PB::TextFormatter::format(a2, "airbagDetected");
    v5 = *(this + 38);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "configMaximumAccelBaroTimeDifferenceThreshold", *(this + 14));
  v5 = *(this + 38);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "configMinimumAccelNormInWindowThreshold", *(this + 15));
  v5 = *(this + 38);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "configMinimumAccelNormOverEpochThreshold", *(this + 16));
  v5 = *(this + 38);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "configMinimumAccelNormThreshold", *(this + 17));
  v5 = *(this + 38);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "configMinimumWidthThreshold", *(this + 18));
  v5 = *(this + 38);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "configPeakPressureThreshold", *(this + 19));
  v5 = *(this + 38);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "configRiseTimeThreshold", *(this + 20));
  v5 = *(this + 38);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "configWidthThreshold", *(this + 21));
  v5 = *(this + 38);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v7 = *(this + 22);
  PB::TextFormatter::format(a2, "diffPeakTimeTrigger");
  v5 = *(this + 38);
  if ((v5 & 0x8000) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v8 = *(this + 23);
  PB::TextFormatter::format(a2, "diffTimeTrigger");
  v5 = *(this + 38);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(this + 1);
  PB::TextFormatter::format(a2, "epochFirstTimestamp");
  v5 = *(this + 38);
  if ((v5 & 2) == 0)
  {
LABEL_14:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v10 = *(this + 2);
  PB::TextFormatter::format(a2, "epochLastTimestamp");
  v5 = *(this + 38);
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v11 = *(this + 3);
  PB::TextFormatter::format(a2, "eventStartTime");
  v5 = *(this + 38);
  if ((v5 & 0x10000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "maxAccelNormInWindow", *(this + 24));
  v5 = *(this + 38);
  if ((v5 & 0x20000) == 0)
  {
LABEL_17:
    if ((v5 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "maxAccelNormOverEpoch", *(this + 25));
  v5 = *(this + 38);
  if ((v5 & 8) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(this + 4);
  PB::TextFormatter::format(a2, "maxAccelNormOverEpochTimestamp");
  v5 = *(this + 38);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(this + 26);
  PB::TextFormatter::format(a2, "numAirbags");
  v5 = *(this + 38);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(this + 27);
  PB::TextFormatter::format(a2, "numBarosInEpoch");
  v5 = *(this + 38);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(this + 28);
  PB::TextFormatter::format(a2, "odr");
  v5 = *(this + 38);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "peakPressure", *(this + 29));
  v5 = *(this + 38);
  if ((v5 & 0x10) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v16 = *(this + 5);
  PB::TextFormatter::format(a2, "peakTimestamp");
  v5 = *(this + 38);
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
  PB::TextFormatter::format(a2, "postEventPressureMedian", *(this + 30));
  v5 = *(this + 38);
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
  PB::TextFormatter::format(a2, "preEventPressureMedian", *(this + 31));
  v5 = *(this + 38);
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
  PB::TextFormatter::format(a2, "prePostEventPressureMedian", *(this + 32));
  v5 = *(this + 38);
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
  PB::TextFormatter::format(a2, "pressureMedian", *(this + 33));
  v5 = *(this + 38);
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
  PB::TextFormatter::format(a2, "riseTime", *(this + 34));
  v5 = *(this + 38);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "riseTimeTo80", *(this + 35));
  v5 = *(this + 38);
  if ((v5 & 0x20) == 0)
  {
LABEL_30:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_63:
  v17 = *(this + 6);
  PB::TextFormatter::format(a2, "timestamp");
  if ((*(this + 38) & 0x10000000) != 0)
  {
LABEL_31:
    PB::TextFormatter::format(a2, "width", *(this + 36));
  }

LABEL_32:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaBaroResult::readFrom(CMMsl::KappaBaroResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_294:
    v210 = v4 ^ 1;
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
        goto LABEL_294;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 38) |= 0x20000000u;
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

          *(this + 148) = v25;
          goto LABEL_246;
        case 2u:
          *(this + 38) |= 0x200000u;
          v63 = *(a2 + 1);
          if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 29) = *(*a2 + v63);
          goto LABEL_245;
        case 3u:
          *(this + 38) |= 4u;
          v44 = *(a2 + 1);
          v43 = *(a2 + 2);
          v45 = *a2;
          if (v44 <= 0xFFFFFFFFFFFFFFF5 && v44 + 10 <= v43)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = (v45 + v44);
            v50 = v44 + 1;
            do
            {
              *(a2 + 1) = v50;
              v51 = *v49++;
              v48 |= (v51 & 0x7F) << v46;
              if ((v51 & 0x80) == 0)
              {
                goto LABEL_265;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_169:
            v48 = 0;
            goto LABEL_265;
          }

          v149 = 0;
          v150 = 0;
          v48 = 0;
          v151 = (v45 + v44);
          v18 = v43 >= v44;
          v152 = v43 - v44;
          if (!v18)
          {
            v152 = 0;
          }

          v153 = v44 + 1;
          while (2)
          {
            if (v152)
            {
              v154 = *v151;
              *(a2 + 1) = v153;
              v48 |= (v154 & 0x7F) << v149;
              if (v154 < 0)
              {
                v149 += 7;
                ++v151;
                --v152;
                ++v153;
                v14 = v150++ > 8;
                if (v14)
                {
                  goto LABEL_169;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v48 = 0;
              }
            }

            else
            {
              v48 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_265:
          *(this + 3) = v48;
          goto LABEL_246;
        case 4u:
          *(this + 38) |= 0x10000000u;
          v53 = *(a2 + 1);
          if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 36) = *(*a2 + v53);
          goto LABEL_245;
        case 5u:
          *(this + 38) |= 0x4000000u;
          v30 = *(a2 + 1);
          if (v30 > 0xFFFFFFFFFFFFFFFBLL || v30 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 34) = *(*a2 + v30);
          goto LABEL_245;
        case 6u:
          *(this + 38) |= 0x100000u;
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
                goto LABEL_274;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_195:
            LODWORD(v79) = 0;
            goto LABEL_274;
          }

          v167 = 0;
          v168 = 0;
          v79 = 0;
          v169 = (v76 + v75);
          v18 = v74 >= v75;
          v170 = v74 - v75;
          if (!v18)
          {
            v170 = 0;
          }

          v171 = v75 + 1;
          while (2)
          {
            if (v170)
            {
              v172 = *v169;
              *(a2 + 1) = v171;
              v79 |= (v172 & 0x7F) << v167;
              if (v172 < 0)
              {
                v167 += 7;
                ++v169;
                --v170;
                ++v171;
                v14 = v168++ > 8;
                if (v14)
                {
                  goto LABEL_195;
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

LABEL_274:
          *(this + 28) = v79;
          goto LABEL_246;
        case 7u:
          *(this + 38) |= 0x40000u;
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
                goto LABEL_277;
              }

              v88 += 7;
              ++v92;
              v14 = v89++ > 8;
            }

            while (!v14);
LABEL_203:
            LODWORD(v90) = 0;
            goto LABEL_277;
          }

          v173 = 0;
          v174 = 0;
          v90 = 0;
          v175 = (v87 + v86);
          v18 = v85 >= v86;
          v176 = v85 - v86;
          if (!v18)
          {
            v176 = 0;
          }

          v177 = v86 + 1;
          while (2)
          {
            if (v176)
            {
              v178 = *v175;
              *(a2 + 1) = v177;
              v90 |= (v178 & 0x7F) << v173;
              if (v178 < 0)
              {
                v173 += 7;
                ++v175;
                --v176;
                ++v177;
                v14 = v174++ > 8;
                if (v14)
                {
                  goto LABEL_203;
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

LABEL_277:
          *(this + 26) = v90;
          goto LABEL_246;
        case 8u:
          *(this + 38) |= 0x10u;
          v55 = *(a2 + 1);
          v54 = *(a2 + 2);
          v56 = *a2;
          if (v55 <= 0xFFFFFFFFFFFFFFF5 && v55 + 10 <= v54)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = (v56 + v55);
            v61 = v55 + 1;
            do
            {
              *(a2 + 1) = v61;
              v62 = *v60++;
              v59 |= (v62 & 0x7F) << v57;
              if ((v62 & 0x80) == 0)
              {
                goto LABEL_268;
              }

              v57 += 7;
              ++v61;
              v14 = v58++ > 8;
            }

            while (!v14);
LABEL_177:
            v59 = 0;
            goto LABEL_268;
          }

          v155 = 0;
          v156 = 0;
          v59 = 0;
          v157 = (v56 + v55);
          v18 = v54 >= v55;
          v158 = v54 - v55;
          if (!v18)
          {
            v158 = 0;
          }

          v159 = v55 + 1;
          while (2)
          {
            if (v158)
            {
              v160 = *v157;
              *(a2 + 1) = v159;
              v59 |= (v160 & 0x7F) << v155;
              if (v160 < 0)
              {
                v155 += 7;
                ++v157;
                --v158;
                ++v159;
                v14 = v156++ > 8;
                if (v14)
                {
                  goto LABEL_177;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v59 = 0;
              }
            }

            else
            {
              v59 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_268:
          *(this + 5) = v59;
          goto LABEL_246;
        case 9u:
          *(this + 38) |= 0x8000000u;
          v104 = *(a2 + 1);
          if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 35) = *(*a2 + v104);
          goto LABEL_245;
        case 0xAu:
          *(this + 38) |= 0x8000u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_262;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_161:
            LODWORD(v37) = 0;
            goto LABEL_262;
          }

          v143 = 0;
          v144 = 0;
          v37 = 0;
          v145 = (v34 + v33);
          v18 = v32 >= v33;
          v146 = v32 - v33;
          if (!v18)
          {
            v146 = 0;
          }

          v147 = v33 + 1;
          while (2)
          {
            if (v146)
            {
              v148 = *v145;
              *(a2 + 1) = v147;
              v37 |= (v148 & 0x7F) << v143;
              if (v148 < 0)
              {
                v143 += 7;
                ++v145;
                --v146;
                ++v147;
                v14 = v144++ > 8;
                if (v14)
                {
                  goto LABEL_161;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_262:
          *(this + 23) = v37;
          goto LABEL_246;
        case 0xBu:
          *(this + 38) |= 0x4000u;
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
                goto LABEL_280;
              }

              v98 += 7;
              ++v102;
              v14 = v99++ > 8;
            }

            while (!v14);
LABEL_211:
            LODWORD(v100) = 0;
            goto LABEL_280;
          }

          v179 = 0;
          v180 = 0;
          v100 = 0;
          v181 = (v97 + v96);
          v18 = v95 >= v96;
          v182 = v95 - v96;
          if (!v18)
          {
            v182 = 0;
          }

          v183 = v96 + 1;
          while (2)
          {
            if (v182)
            {
              v184 = *v181;
              *(a2 + 1) = v183;
              v100 |= (v184 & 0x7F) << v179;
              if (v184 < 0)
              {
                v179 += 7;
                ++v181;
                --v182;
                ++v183;
                v14 = v180++ > 8;
                if (v14)
                {
                  goto LABEL_211;
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

LABEL_280:
          *(this + 22) = v100;
          goto LABEL_246;
        case 0xCu:
          *(this + 38) |= 0x800000u;
          v29 = *(a2 + 1);
          if (v29 > 0xFFFFFFFFFFFFFFFBLL || v29 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 31) = *(*a2 + v29);
          goto LABEL_245;
        case 0xDu:
          *(this + 38) |= 0x400000u;
          v31 = *(a2 + 1);
          if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 30) = *(*a2 + v31);
          goto LABEL_245;
        case 0xEu:
          *(this + 38) |= 0x1000000u;
          v84 = *(a2 + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 32) = *(*a2 + v84);
          goto LABEL_245;
        case 0xFu:
          *(this + 38) |= 0x2000u;
          v28 = *(a2 + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 21) = *(*a2 + v28);
          goto LABEL_245;
        case 0x10u:
          *(this + 38) |= 0x1000u;
          v52 = *(a2 + 1);
          if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 20) = *(*a2 + v52);
          goto LABEL_245;
        case 0x11u:
          *(this + 38) |= 0x800u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFFBLL || v27 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 19) = *(*a2 + v27);
          goto LABEL_245;
        case 0x12u:
          *(this + 38) |= 0x400u;
          v64 = *(a2 + 1);
          if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 18) = *(*a2 + v64);
          goto LABEL_245;
        case 0x13u:
          *(this + 38) |= 0x200u;
          v94 = *(a2 + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 17) = *(*a2 + v94);
          goto LABEL_245;
        case 0x14u:
          *(this + 38) |= 1u;
          v115 = *(a2 + 1);
          v114 = *(a2 + 2);
          v116 = *a2;
          if (v115 <= 0xFFFFFFFFFFFFFFF5 && v115 + 10 <= v114)
          {
            v117 = 0;
            v118 = 0;
            v119 = 0;
            v120 = (v116 + v115);
            v121 = v115 + 1;
            do
            {
              *(a2 + 1) = v121;
              v122 = *v120++;
              v119 |= (v122 & 0x7F) << v117;
              if ((v122 & 0x80) == 0)
              {
                goto LABEL_286;
              }

              v117 += 7;
              ++v121;
              v14 = v118++ > 8;
            }

            while (!v14);
LABEL_227:
            v119 = 0;
            goto LABEL_286;
          }

          v191 = 0;
          v192 = 0;
          v119 = 0;
          v193 = (v116 + v115);
          v18 = v114 >= v115;
          v194 = v114 - v115;
          if (!v18)
          {
            v194 = 0;
          }

          v195 = v115 + 1;
          while (2)
          {
            if (v194)
            {
              v196 = *v193;
              *(a2 + 1) = v195;
              v119 |= (v196 & 0x7F) << v191;
              if (v196 < 0)
              {
                v191 += 7;
                ++v193;
                --v194;
                ++v195;
                v14 = v192++ > 8;
                if (v14)
                {
                  goto LABEL_227;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v119 = 0;
              }
            }

            else
            {
              v119 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_286:
          *(this + 1) = v119;
          goto LABEL_246;
        case 0x15u:
          *(this + 38) |= 2u;
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
                goto LABEL_271;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
            }

            while (!v14);
LABEL_187:
            v70 = 0;
            goto LABEL_271;
          }

          v161 = 0;
          v162 = 0;
          v70 = 0;
          v163 = (v67 + v66);
          v18 = v65 >= v66;
          v164 = v65 - v66;
          if (!v18)
          {
            v164 = 0;
          }

          v165 = v66 + 1;
          while (2)
          {
            if (v164)
            {
              v166 = *v163;
              *(a2 + 1) = v165;
              v70 |= (v166 & 0x7F) << v161;
              if (v166 < 0)
              {
                v161 += 7;
                ++v163;
                --v164;
                ++v165;
                v14 = v162++ > 8;
                if (v14)
                {
                  goto LABEL_187;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v70 = 0;
              }
            }

            else
            {
              v70 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_271:
          *(this + 2) = v70;
          goto LABEL_246;
        case 0x16u:
          *(this + 38) |= 0x10000u;
          v83 = *(a2 + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 24) = *(*a2 + v83);
          goto LABEL_245;
        case 0x17u:
          *(this + 38) |= 0x20u;
          v106 = *(a2 + 1);
          v105 = *(a2 + 2);
          v107 = *a2;
          if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            do
            {
              *(a2 + 1) = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                goto LABEL_283;
              }

              v108 += 7;
              ++v112;
              v14 = v109++ > 8;
            }

            while (!v14);
LABEL_219:
            v110 = 0;
            goto LABEL_283;
          }

          v185 = 0;
          v186 = 0;
          v110 = 0;
          v187 = (v107 + v106);
          v18 = v105 >= v106;
          v188 = v105 - v106;
          if (!v18)
          {
            v188 = 0;
          }

          v189 = v106 + 1;
          while (2)
          {
            if (v188)
            {
              v190 = *v187;
              *(a2 + 1) = v189;
              v110 |= (v190 & 0x7F) << v185;
              if (v190 < 0)
              {
                v185 += 7;
                ++v187;
                --v188;
                ++v189;
                v14 = v186++ > 8;
                if (v14)
                {
                  goto LABEL_219;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v110 = 0;
              }
            }

            else
            {
              v110 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_283:
          *(this + 6) = v110;
          goto LABEL_246;
        case 0x18u:
          *(this + 38) |= 0x2000000u;
          v123 = *(a2 + 1);
          if (v123 > 0xFFFFFFFFFFFFFFFBLL || v123 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 33) = *(*a2 + v123);
          goto LABEL_245;
        case 0x19u:
          *(this + 38) |= 0x20000u;
          v42 = *(a2 + 1);
          if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 25) = *(*a2 + v42);
          goto LABEL_245;
        case 0x1Au:
          *(this + 38) |= 0x100u;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 16) = *(*a2 + v41);
          goto LABEL_245;
        case 0x1Bu:
          *(this + 38) |= 0x80000u;
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
                goto LABEL_292;
              }

              v137 += 7;
              ++v141;
              v14 = v138++ > 8;
            }

            while (!v14);
LABEL_243:
            LODWORD(v139) = 0;
            goto LABEL_292;
          }

          v203 = 0;
          v204 = 0;
          v139 = 0;
          v205 = (v136 + v135);
          v18 = v134 >= v135;
          v206 = v134 - v135;
          if (!v18)
          {
            v206 = 0;
          }

          v207 = v135 + 1;
          while (2)
          {
            if (v206)
            {
              v208 = *v205;
              *(a2 + 1) = v207;
              v139 |= (v208 & 0x7F) << v203;
              if (v208 < 0)
              {
                v203 += 7;
                ++v205;
                --v206;
                ++v207;
                v14 = v204++ > 8;
                if (v14)
                {
                  goto LABEL_243;
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

LABEL_292:
          *(this + 27) = v139;
          goto LABEL_246;
        case 0x1Cu:
          *(this + 38) |= 0x40u;
          v26 = *(a2 + 1);
          if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(a2 + 2))
          {
            goto LABEL_146;
          }

          *(this + 14) = *(*a2 + v26);
          goto LABEL_245;
        case 0x1Du:
          *(this + 38) |= 8u;
          v125 = *(a2 + 1);
          v124 = *(a2 + 2);
          v126 = *a2;
          if (v125 <= 0xFFFFFFFFFFFFFFF5 && v125 + 10 <= v124)
          {
            v127 = 0;
            v128 = 0;
            v129 = 0;
            v130 = (v126 + v125);
            v131 = v125 + 1;
            do
            {
              *(a2 + 1) = v131;
              v132 = *v130++;
              v129 |= (v132 & 0x7F) << v127;
              if ((v132 & 0x80) == 0)
              {
                goto LABEL_289;
              }

              v127 += 7;
              ++v131;
              v14 = v128++ > 8;
            }

            while (!v14);
LABEL_235:
            v129 = 0;
            goto LABEL_289;
          }

          v197 = 0;
          v198 = 0;
          v129 = 0;
          v199 = (v126 + v125);
          v18 = v124 >= v125;
          v200 = v124 - v125;
          if (!v18)
          {
            v200 = 0;
          }

          v201 = v125 + 1;
          break;
        case 0x1Eu:
          *(this + 38) |= 0x80u;
          v133 = *(a2 + 1);
          if (v133 <= 0xFFFFFFFFFFFFFFFBLL && v133 + 4 <= *(a2 + 2))
          {
            *(this + 15) = *(*a2 + v133);
LABEL_245:
            *(a2 + 1) += 4;
          }

          else
          {
LABEL_146:
            *(a2 + 24) = 1;
          }

          goto LABEL_246;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v200)
        {
          v129 = 0;
          *(a2 + 24) = 1;
          goto LABEL_289;
        }

        v202 = *v199;
        *(a2 + 1) = v201;
        v129 |= (v202 & 0x7F) << v197;
        if ((v202 & 0x80) == 0)
        {
          break;
        }

        v197 += 7;
        ++v199;
        --v200;
        ++v201;
        v14 = v198++ > 8;
        if (v14)
        {
          goto LABEL_235;
        }
      }

      if (*(a2 + 24))
      {
        v129 = 0;
      }

LABEL_289:
      *(this + 4) = v129;
LABEL_246:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_294;
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
        goto LABEL_294;
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
      goto LABEL_246;
    }

    v210 = 0;
  }

  return v210 & 1;
}

uint64_t CMMsl::KappaBaroResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 152);
  if ((v4 & 0x20000000) != 0)
  {
    v5 = *(this + 148);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 152);
    if ((v4 & 0x200000) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 116));
  v4 = *(v3 + 152);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 152);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 152);
  if ((v4 & 0x100000) == 0)
  {
LABEL_7:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = *(v3 + 112);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x40000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v8 = *(v3 + 104);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v9 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 140));
  v4 = *(v3 + 152);
  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = *(v3 + 92);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(v3 + 88);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x800000) == 0)
  {
LABEL_13:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 124));
  v4 = *(v3 + 152);
  if ((v4 & 0x400000) == 0)
  {
LABEL_14:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 152);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 152);
  if ((v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 84));
  v4 = *(v3 + 152);
  if ((v4 & 0x1000) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 152);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 152);
  if ((v4 & 0x400) == 0)
  {
LABEL_19:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 152);
  if ((v4 & 0x200) == 0)
  {
LABEL_20:
    if ((v4 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 152);
  if ((v4 & 1) == 0)
  {
LABEL_21:
    if ((v4 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 2) == 0)
  {
LABEL_22:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x10000) == 0)
  {
LABEL_23:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 152);
  if ((v4 & 0x20) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v14 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 132));
  v4 = *(v3 + 152);
  if ((v4 & 0x20000) == 0)
  {
LABEL_26:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 100));
  v4 = *(v3 + 152);
  if ((v4 & 0x100) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 152);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v15 = *(v3 + 108);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 152);
  if ((v4 & 0x40) == 0)
  {
LABEL_29:
    if ((v4 & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v16 = *(v3 + 32);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 152) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_61;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 152);
  if ((v4 & 8) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_61:
  v17 = *(v3 + 60);

  return PB::Writer::write(a2, v17);
}

uint64_t CMMsl::KappaBaroResult::hash_value(CMMsl::KappaBaroResult *this)
{
  v1 = *(this + 38);
  if ((v1 & 0x20000000) == 0)
  {
    v51 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_3;
    }

LABEL_84:
    v50 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_85;
  }

  v51 = *(this + 148);
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_84;
  }

LABEL_3:
  v2 = *(this + 29);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  v50 = v3;
  if ((v1 & 4) != 0)
  {
LABEL_6:
    v49 = *(this + 3);
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_86:
    v5 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_11;
    }

LABEL_87:
    v7 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_88;
  }

LABEL_85:
  v49 = 0;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_86;
  }

LABEL_7:
  v4 = *(this + 36);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = LODWORD(v4);
  }

  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_87;
  }

LABEL_11:
  v6 = *(this + 34);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v6);
  }

  if ((v1 & 0x100000) != 0)
  {
LABEL_15:
    v8 = *(this + 28);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_89;
  }

LABEL_88:
  v8 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_16:
    v9 = *(this + 26);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_90;
  }

LABEL_89:
  v9 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_17:
    v10 = *(this + 5);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_91:
    v12 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_92;
  }

LABEL_90:
  v10 = 0;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_91;
  }

LABEL_18:
  v11 = *(this + 35);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = LODWORD(v11);
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_22:
    v13 = *(this + 23);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_93;
  }

LABEL_92:
  v13 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_23:
    v14 = *(this + 22);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_24;
    }

LABEL_94:
    v16 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_28;
    }

LABEL_95:
    v18 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_96:
    v20 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_36;
    }

LABEL_97:
    v22 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_40;
    }

LABEL_98:
    v24 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_44;
    }

LABEL_99:
    v26 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_48;
    }

LABEL_100:
    v28 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_52;
    }

LABEL_101:
    v30 = 0;
    if (v1)
    {
      goto LABEL_56;
    }

    goto LABEL_102;
  }

LABEL_93:
  v14 = 0;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_94;
  }

LABEL_24:
  v15 = *(this + 31);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = LODWORD(v15);
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_95;
  }

LABEL_28:
  v17 = *(this + 30);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = LODWORD(v17);
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_96;
  }

LABEL_32:
  v19 = *(this + 32);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = LODWORD(v19);
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_97;
  }

LABEL_36:
  v21 = *(this + 21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = LODWORD(v21);
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_98;
  }

LABEL_40:
  v23 = *(this + 20);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = LODWORD(v23);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_99;
  }

LABEL_44:
  v25 = *(this + 19);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  else
  {
    v26 = LODWORD(v25);
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_100;
  }

LABEL_48:
  v27 = *(this + 18);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v28 = LODWORD(v27);
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_101;
  }

LABEL_52:
  v29 = *(this + 17);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = LODWORD(v29);
  }

  if (v1)
  {
LABEL_56:
    v31 = *(this + 1);
    if ((v1 & 2) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_103;
  }

LABEL_102:
  v31 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_57:
    v32 = *(this + 2);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_58;
    }

LABEL_104:
    v34 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_105;
  }

LABEL_103:
  v32 = 0;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_104;
  }

LABEL_58:
  v33 = *(this + 24);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v34 = LODWORD(v33);
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_62:
    v35 = *(this + 6);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_63;
    }

LABEL_106:
    v37 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_67;
    }

LABEL_107:
    v39 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_71;
    }

LABEL_108:
    v41 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_109;
  }

LABEL_105:
  v35 = 0;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_106;
  }

LABEL_63:
  v36 = *(this + 33);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  else
  {
    v37 = LODWORD(v36);
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_107;
  }

LABEL_67:
  v38 = *(this + 25);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  else
  {
    v39 = LODWORD(v38);
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_108;
  }

LABEL_71:
  v40 = *(this + 16);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  else
  {
    v41 = LODWORD(v40);
  }

  if ((v1 & 0x80000) != 0)
  {
LABEL_75:
    v42 = *(this + 27);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_76;
    }

LABEL_110:
    v44 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_111;
  }

LABEL_109:
  v42 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_110;
  }

LABEL_76:
  v43 = *(this + 14);
  v44 = LODWORD(v43);
  if (v43 == 0.0)
  {
    v44 = 0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_79:
    v45 = *(this + 4);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_80;
    }

LABEL_112:
    v47 = 0;
    return v50 ^ v51 ^ v49 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v31 ^ v32 ^ v34 ^ v35 ^ v37 ^ v39 ^ v41 ^ v42 ^ v44 ^ v45 ^ v47;
  }

LABEL_111:
  v45 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_112;
  }

LABEL_80:
  v46 = *(this + 15);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  return v50 ^ v51 ^ v49 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v30 ^ v31 ^ v32 ^ v34 ^ v35 ^ v37 ^ v39 ^ v41 ^ v42 ^ v44 ^ v45 ^ v47;
}

void CMMsl::KappaCrashResult::~KappaCrashResult(CMMsl::KappaCrashResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::KappaCrashResult::KappaCrashResult(CMMsl::KappaCrashResult *this, const CMMsl::KappaCrashResult *a2)
{
  *this = &unk_286C210D8;
  v2 = (this + 292);
  *(this + 75) = 0;
  *(this + 292) = 0;
  v3 = (a2 + 292);
  v4 = *(a2 + 292);
  if (v4)
  {
    v6 = *(a2 + 1);
    v5 = 1;
    *v2 = 1;
    *(this + 1) = v6;
    if ((*v3 & 0x10000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x10000000000000) != 0)
  {
LABEL_5:
    result = *(a2 + 55);
    v5 |= 0x10000000000000uLL;
    *v2 = v5;
    *(this + 55) = result;
  }

LABEL_6:
  v8 = *(a2 + 150);
  if ((v8 & 0x800) != 0)
  {
    v10 = *(a2 + 288);
    v9 = 2048;
    *(this + 150) = 2048;
    *(this + 288) = v10;
    v8 = *(a2 + 150);
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = 0;
  if ((*(a2 + 150) & 0x400) != 0)
  {
LABEL_10:
    v11 = *(a2 + 287);
    v9 |= 0x400u;
    *(this + 150) = v9;
    *(this + 287) = v11;
    v8 = *(a2 + 150);
  }

LABEL_11:
  if ((v8 & 0x100) != 0)
  {
    v28 = *(a2 + 285);
    v9 |= 0x100u;
    *(this + 150) = v9;
    *(this + 285) = v28;
    v8 = *(a2 + 150);
    if ((v8 & 0x20) == 0)
    {
LABEL_13:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v29 = *(a2 + 282);
  v9 |= 0x20u;
  *(this + 150) = v9;
  *(this + 282) = v29;
  if ((*(a2 + 150) & 0x10) != 0)
  {
LABEL_14:
    v12 = *(a2 + 281);
    v9 |= 0x10u;
    *(this + 150) = v9;
    *(this + 281) = v12;
  }

LABEL_15:
  if ((*(a2 + 294) & 0x20) != 0)
  {
    v13 = *(a2 + 24);
    v5 |= 0x200000uLL;
    *v2 = v5;
    *(this + 24) = v13;
  }

  v14 = *(a2 + 150);
  if ((v14 & 8) != 0)
  {
    v15 = *(a2 + 280);
    v9 |= 8u;
    *(this + 150) = v9;
    *(this + 280) = v15;
    v14 = *(a2 + 150);
  }

  if ((v14 & 0x80) != 0)
  {
    v16 = *(a2 + 284);
    v9 |= 0x80u;
    *(this + 150) = v9;
    *(this + 284) = v16;
  }

  v17 = *v3;
  if ((*v3 & 0x20000) != 0)
  {
    result = *(a2 + 20);
    v5 |= 0x20000uLL;
    *v2 = v5;
    *(this + 20) = result;
    v17 = *v3;
    if ((*v3 & 0x10000) == 0)
    {
LABEL_23:
      if ((v17 & 0x2000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_105;
    }
  }

  else if ((v17 & 0x10000) == 0)
  {
    goto LABEL_23;
  }

  result = *(a2 + 19);
  v5 |= 0x10000uLL;
  *v2 = v5;
  *(this + 19) = result;
  v17 = *v3;
  if ((*v3 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v17 & 0x40000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_106;
  }

LABEL_105:
  result = *(a2 + 28);
  v5 |= 0x2000000uLL;
  *v2 = v5;
  *(this + 28) = result;
  v17 = *v3;
  if ((*v3 & 0x40000000) == 0)
  {
LABEL_25:
    if ((v17 & 0x800000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_107;
  }

LABEL_106:
  result = *(a2 + 33);
  v5 |= 0x40000000uLL;
  *v2 = v5;
  *(this + 33) = result;
  v17 = *v3;
  if ((*v3 & 0x800000000) == 0)
  {
LABEL_26:
    if ((v17 & 0x20000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_108;
  }

LABEL_107:
  result = *(a2 + 38);
  v5 |= 0x800000000uLL;
  *v2 = v5;
  *(this + 38) = result;
  v17 = *v3;
  if ((*v3 & 0x20000000000000) == 0)
  {
LABEL_27:
    if ((v17 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = *(a2 + 56);
  v5 |= 0x20000000000000uLL;
  *v2 = v5;
  *(this + 56) = result;
  v17 = *v3;
  if ((*v3 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_110;
  }

LABEL_109:
  result = *(a2 + 29);
  v5 |= 0x4000000uLL;
  *v2 = v5;
  *(this + 29) = result;
  v17 = *v3;
  if ((*v3 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v17 & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = *(a2 + 34);
  v5 |= 0x80000000uLL;
  *v2 = v5;
  *(this + 34) = result;
  v17 = *v3;
  if ((*v3 & 0x1000000000) == 0)
  {
LABEL_30:
    if ((v17 & 0x40000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_112;
  }

LABEL_111:
  result = *(a2 + 39);
  v5 |= 0x1000000000uLL;
  *v2 = v5;
  *(this + 39) = result;
  v17 = *v3;
  if ((*v3 & 0x40000000000000) == 0)
  {
LABEL_31:
    if ((v17 & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = *(a2 + 57);
  v5 |= 0x40000000000000uLL;
  *v2 = v5;
  *(this + 57) = result;
  v17 = *v3;
  if ((*v3 & 0x8000000) == 0)
  {
LABEL_32:
    if ((v17 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = *(a2 + 30);
  v5 |= 0x8000000uLL;
  *v2 = v5;
  *(this + 30) = result;
  v17 = *v3;
  if ((*v3 & 0x100000000) == 0)
  {
LABEL_33:
    if ((v17 & 0x2000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = *(a2 + 35);
  v5 |= 0x100000000uLL;
  *v2 = v5;
  *(this + 35) = result;
  v17 = *v3;
  if ((*v3 & 0x2000000000) == 0)
  {
LABEL_34:
    if ((v17 & 0x80000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = *(a2 + 40);
  v5 |= 0x2000000000uLL;
  *v2 = v5;
  *(this + 40) = result;
  v17 = *v3;
  if ((*v3 & 0x80000000000000) == 0)
  {
LABEL_35:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_117;
  }

LABEL_116:
  result = *(a2 + 58);
  v5 |= 0x80000000000000uLL;
  *v2 = v5;
  *(this + 58) = result;
  v17 = *v3;
  if ((*v3 & 0x400000) == 0)
  {
LABEL_36:
    if ((v17 & 0x800000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_118;
  }

LABEL_117:
  result = *(a2 + 25);
  v5 |= 0x400000uLL;
  *v2 = v5;
  *(this + 25) = result;
  v17 = *v3;
  if ((*v3 & 0x800000) == 0)
  {
LABEL_37:
    if ((v17 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_119;
  }

LABEL_118:
  result = *(a2 + 26);
  v5 |= 0x800000uLL;
  *v2 = v5;
  *(this + 26) = result;
  v17 = *v3;
  if ((*v3 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v17 & 0x800000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_120;
  }

LABEL_119:
  result = *(a2 + 27);
  v5 |= 0x1000000uLL;
  *v2 = v5;
  *(this + 27) = result;
  v17 = *v3;
  if ((*v3 & 0x800000000000000) == 0)
  {
LABEL_39:
    if ((v17 & 0x400000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_121;
  }

LABEL_120:
  result = *(a2 + 62);
  v5 |= 0x800000000000000uLL;
  *v2 = v5;
  *(this + 62) = result;
  v17 = *v3;
  if ((*v3 & 0x400000000000000) == 0)
  {
LABEL_40:
    if ((v17 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_122;
  }

LABEL_121:
  result = *(a2 + 61);
  v5 |= 0x400000000000000uLL;
  *v2 = v5;
  *(this + 61) = result;
  v17 = *v3;
  if ((*v3 & 0x1000000000000000) == 0)
  {
LABEL_41:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = *(a2 + 63);
  v5 |= 0x1000000000000000uLL;
  *v2 = v5;
  *(this + 63) = result;
  v17 = *v3;
  if ((*v3 & 0x40) == 0)
  {
LABEL_42:
    if ((v17 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = *(a2 + 9);
  v5 |= 0x40uLL;
  *v2 = v5;
  *(this + 9) = result;
  v17 = *v3;
  if ((*v3 & 2) == 0)
  {
LABEL_43:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_124:
  result = *(a2 + 4);
  v5 |= 2uLL;
  *v2 = v5;
  *(this + 4) = result;
  if ((*v3 & 0x8000) != 0)
  {
LABEL_44:
    result = *(a2 + 18);
    v5 |= 0x8000uLL;
    *v2 = v5;
    *(this + 18) = result;
  }

LABEL_45:
  v18 = *(a2 + 150);
  if ((v18 & 0x4000) != 0)
  {
    v19 = *(a2 + 291);
    v9 |= 0x4000u;
    *(this + 150) = v9;
    *(this + 291) = v19;
    v18 = *(a2 + 150);
  }

  if ((v18 & 0x40) != 0)
  {
    v20 = *(a2 + 283);
    v9 |= 0x40u;
    *(this + 150) = v9;
    *(this + 283) = v20;
  }

  v21 = *v3;
  if ((*v3 & 0x80) != 0)
  {
    result = *(a2 + 10);
    v5 |= 0x80uLL;
    *v2 = v5;
    *(this + 10) = result;
    v21 = *v3;
    if ((*v3 & 0x400) == 0)
    {
LABEL_51:
      if ((v21 & 0x200) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_128;
    }
  }

  else if ((v21 & 0x400) == 0)
  {
    goto LABEL_51;
  }

  result = *(a2 + 13);
  v5 |= 0x400uLL;
  *v2 = v5;
  *(this + 13) = result;
  v21 = *v3;
  if ((*v3 & 0x200) == 0)
  {
LABEL_52:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_129;
  }

LABEL_128:
  result = *(a2 + 12);
  v5 |= 0x200uLL;
  *v2 = v5;
  *(this + 12) = result;
  v21 = *v3;
  if ((*v3 & 0x100) == 0)
  {
LABEL_53:
    if ((v21 & 4) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_130;
  }

LABEL_129:
  result = *(a2 + 11);
  v5 |= 0x100uLL;
  *v2 = v5;
  *(this + 11) = result;
  v21 = *v3;
  if ((*v3 & 4) == 0)
  {
LABEL_54:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_131;
  }

LABEL_130:
  result = *(a2 + 5);
  v5 |= 4uLL;
  *v2 = v5;
  *(this + 5) = result;
  v21 = *v3;
  if ((*v3 & 0x20) == 0)
  {
LABEL_55:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_132;
  }

LABEL_131:
  result = *(a2 + 8);
  v5 |= 0x20uLL;
  *v2 = v5;
  *(this + 8) = result;
  v21 = *v3;
  if ((*v3 & 0x10) == 0)
  {
LABEL_56:
    if ((v21 & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_133;
  }

LABEL_132:
  result = *(a2 + 7);
  v5 |= 0x10uLL;
  *v2 = v5;
  *(this + 7) = result;
  v21 = *v3;
  if ((*v3 & 8) == 0)
  {
LABEL_57:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_134;
  }

LABEL_133:
  result = *(a2 + 6);
  v5 |= 8uLL;
  *v2 = v5;
  *(this + 6) = result;
  v21 = *v3;
  if ((*v3 & 0x800) == 0)
  {
LABEL_58:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_135;
  }

LABEL_134:
  result = *(a2 + 14);
  v5 |= 0x800uLL;
  *v2 = v5;
  *(this + 14) = result;
  v21 = *v3;
  if ((*v3 & 0x4000) == 0)
  {
LABEL_59:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_136;
  }

LABEL_135:
  result = *(a2 + 17);
  v5 |= 0x4000uLL;
  *v2 = v5;
  *(this + 17) = result;
  v21 = *v3;
  if ((*v3 & 0x2000) == 0)
  {
LABEL_60:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_137;
  }

LABEL_136:
  result = *(a2 + 16);
  v5 |= 0x2000uLL;
  *v2 = v5;
  *(this + 16) = result;
  v21 = *v3;
  if ((*v3 & 0x1000) == 0)
  {
LABEL_61:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_138;
  }

LABEL_137:
  result = *(a2 + 15);
  v5 |= 0x1000uLL;
  *v2 = v5;
  *(this + 15) = result;
  v21 = *v3;
  if ((*v3 & 0x10000000) == 0)
  {
LABEL_62:
    if ((v21 & 0x200000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = *(a2 + 31);
  v5 |= 0x10000000uLL;
  *v2 = v5;
  *(this + 31) = result;
  v21 = *v3;
  if ((*v3 & 0x200000000) == 0)
  {
LABEL_63:
    if ((v21 & 0x4000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_140;
  }

LABEL_139:
  result = *(a2 + 36);
  v5 |= 0x200000000uLL;
  *v2 = v5;
  *(this + 36) = result;
  v21 = *v3;
  if ((*v3 & 0x4000000000) == 0)
  {
LABEL_64:
    if ((v21 & 0x100000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_141;
  }

LABEL_140:
  result = *(a2 + 41);
  v5 |= 0x4000000000uLL;
  *v2 = v5;
  *(this + 41) = result;
  v21 = *v3;
  if ((*v3 & 0x100000000000000) == 0)
  {
LABEL_65:
    if ((v21 & 0x20000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_142;
  }

LABEL_141:
  result = *(a2 + 59);
  v5 |= 0x100000000000000uLL;
  *v2 = v5;
  *(this + 59) = result;
  v21 = *v3;
  if ((*v3 & 0x20000000) == 0)
  {
LABEL_66:
    if ((v21 & 0x400000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_143;
  }

LABEL_142:
  result = *(a2 + 32);
  v5 |= 0x20000000uLL;
  *v2 = v5;
  *(this + 32) = result;
  v21 = *v3;
  if ((*v3 & 0x400000000) == 0)
  {
LABEL_67:
    if ((v21 & 0x8000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_144;
  }

LABEL_143:
  result = *(a2 + 37);
  v5 |= 0x400000000uLL;
  *v2 = v5;
  *(this + 37) = result;
  v21 = *v3;
  if ((*v3 & 0x8000000000) == 0)
  {
LABEL_68:
    if ((v21 & 0x200000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_144:
  result = *(a2 + 42);
  v5 |= 0x8000000000uLL;
  *v2 = v5;
  *(this + 42) = result;
  if ((*v3 & 0x200000000000000) != 0)
  {
LABEL_69:
    result = *(a2 + 60);
    v5 |= 0x200000000000000uLL;
    *v2 = v5;
    *(this + 60) = result;
  }

LABEL_70:
  if ((*(a2 + 150) & 0x200) != 0)
  {
    v22 = *(a2 + 286);
    v9 |= 0x200u;
    *(this + 150) = v9;
    *(this + 286) = v22;
  }

  if ((*v3 & 0x8000000000000000) == 0)
  {
    if ((*v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  result = *(a2 + 66);
  v5 |= 0x8000000000000000;
  *v2 = v5;
  *(this + 66) = result;
  if ((*v3 & 0x2000000000000000) != 0)
  {
LABEL_74:
    result = *(a2 + 64);
    v5 |= 0x2000000000000000uLL;
    *v2 = v5;
    *(this + 64) = result;
  }

LABEL_75:
  if ((*(a2 + 150) & 0x1000) != 0)
  {
    v23 = *(a2 + 289);
    v9 |= 0x1000u;
    *(this + 150) = v9;
    *(this + 289) = v23;
  }

  v24 = *v3;
  if ((*v3 & 0x10000000000) != 0)
  {
    result = *(a2 + 43);
    v5 |= 0x10000000000uLL;
    *v2 = v5;
    *(this + 43) = result;
    v24 = *v3;
    if ((*v3 & 0x20000000000) == 0)
    {
LABEL_79:
      if ((v24 & 0x40000000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_148;
    }
  }

  else if ((v24 & 0x20000000000) == 0)
  {
    goto LABEL_79;
  }

  result = *(a2 + 44);
  v5 |= 0x20000000000uLL;
  *v2 = v5;
  *(this + 44) = result;
  v24 = *v3;
  if ((*v3 & 0x40000000000) == 0)
  {
LABEL_80:
    if ((v24 & 0x100000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_149;
  }

LABEL_148:
  result = *(a2 + 45);
  v5 |= 0x40000000000uLL;
  *v2 = v5;
  *(this + 45) = result;
  v24 = *v3;
  if ((*v3 & 0x100000000000) == 0)
  {
LABEL_81:
    if ((v24 & 0x80000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_150;
  }

LABEL_149:
  result = *(a2 + 47);
  v5 |= 0x100000000000uLL;
  *v2 = v5;
  *(this + 47) = result;
  v24 = *v3;
  if ((*v3 & 0x80000000000) == 0)
  {
LABEL_82:
    if ((v24 & 0x200000000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_151;
  }

LABEL_150:
  result = *(a2 + 46);
  v5 |= 0x80000000000uLL;
  *v2 = v5;
  *(this + 46) = result;
  v24 = *v3;
  if ((*v3 & 0x200000000000) == 0)
  {
LABEL_83:
    if ((v24 & 0x400000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_152;
  }

LABEL_151:
  result = *(a2 + 48);
  v5 |= 0x200000000000uLL;
  *v2 = v5;
  *(this + 48) = result;
  v24 = *v3;
  if ((*v3 & 0x400000000000) == 0)
  {
LABEL_84:
    if ((v24 & 0x800000000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_153;
  }

LABEL_152:
  result = *(a2 + 49);
  v5 |= 0x400000000000uLL;
  *v2 = v5;
  *(this + 49) = result;
  v24 = *v3;
  if ((*v3 & 0x800000000000) == 0)
  {
LABEL_85:
    if ((v24 & 0x1000000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_154;
  }

LABEL_153:
  result = *(a2 + 50);
  v5 |= 0x800000000000uLL;
  *v2 = v5;
  *(this + 50) = result;
  v24 = *v3;
  if ((*v3 & 0x1000000000000) == 0)
  {
LABEL_86:
    if ((v24 & 0x4000000000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_155;
  }

LABEL_154:
  result = *(a2 + 51);
  v5 |= 0x1000000000000uLL;
  *v2 = v5;
  *(this + 51) = result;
  v24 = *v3;
  if ((*v3 & 0x4000000000000) == 0)
  {
LABEL_87:
    if ((v24 & 0x2000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_156;
  }

LABEL_155:
  result = *(a2 + 53);
  v5 |= 0x4000000000000uLL;
  *v2 = v5;
  *(this + 53) = result;
  v24 = *v3;
  if ((*v3 & 0x2000000000000) == 0)
  {
LABEL_88:
    if ((v24 & 0x8000000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_157;
  }

LABEL_156:
  result = *(a2 + 52);
  v5 |= 0x2000000000000uLL;
  *v2 = v5;
  *(this + 52) = result;
  v24 = *v3;
  if ((*v3 & 0x8000000000000) == 0)
  {
LABEL_89:
    if ((v24 & 0x4000000000000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_157:
  result = *(a2 + 54);
  v5 |= 0x8000000000000uLL;
  *v2 = v5;
  *(this + 54) = result;
  if ((*v3 & 0x4000000000000000) != 0)
  {
LABEL_90:
    v25 = *(a2 + 65);
    v5 |= 0x4000000000000000uLL;
    *v2 = v5;
    *(this + 65) = v25;
  }

LABEL_91:
  v26 = *(a2 + 150);
  if ((v26 & 0x2000) != 0)
  {
    v30 = *(a2 + 290);
    v9 |= 0x2000u;
    *(this + 150) = v9;
    *(this + 290) = v30;
    v26 = *(a2 + 150);
    if ((v26 & 2) == 0)
    {
LABEL_93:
      if ((v26 & 4) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_161;
    }
  }

  else if ((v26 & 2) == 0)
  {
    goto LABEL_93;
  }

  result = *(a2 + 68);
  v9 |= 2u;
  *(this + 150) = v9;
  *(this + 68) = result;
  v26 = *(a2 + 150);
  if ((v26 & 4) == 0)
  {
LABEL_94:
    if ((v26 & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_161:
  result = *(a2 + 69);
  v9 |= 4u;
  *(this + 150) = v9;
  *(this + 69) = result;
  if (*(a2 + 150))
  {
LABEL_95:
    result = *(a2 + 67);
    *(this + 150) = v9 | 1;
    *(this + 67) = result;
  }

LABEL_96:
  v27 = *v3;
  if ((*v3 & 0x40000) != 0)
  {
    result = *(a2 + 21);
    v5 |= 0x40000uLL;
    *v2 = v5;
    *(this + 21) = result;
    v27 = *v3;
    if ((*v3 & 0x80000) == 0)
    {
LABEL_98:
      if ((v27 & 0x100000) == 0)
      {
        return result;
      }

LABEL_165:
      result = *(a2 + 23);
      *v2 = v5 | 0x100000;
      *(this + 23) = result;
      return result;
    }
  }

  else if ((v27 & 0x80000) == 0)
  {
    goto LABEL_98;
  }

  result = *(a2 + 22);
  v5 |= 0x80000uLL;
  *v2 = v5;
  *(this + 22) = result;
  if ((*v3 & 0x100000) != 0)
  {
    goto LABEL_165;
  }

  return result;
}

CMMsl *CMMsl::KappaCrashResult::operator=(CMMsl *a1, const CMMsl::KappaCrashResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaCrashResult::KappaCrashResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaCrashResult *a2, CMMsl::KappaCrashResult *a3)
{
  v3 = *(this + 75);
  v4 = *(this + 292);
  v5 = *(a2 + 75);
  *(this + 292) = *(a2 + 292);
  *(this + 75) = v5;
  *(a2 + 292) = v4;
  *(a2 + 75) = v3;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v7;
  LOBYTE(v6) = *(this + 288);
  *(this + 288) = *(a2 + 288);
  *(a2 + 288) = v6;
  LOBYTE(v6) = *(this + 287);
  *(this + 287) = *(a2 + 287);
  *(a2 + 287) = v6;
  LOBYTE(v6) = *(this + 285);
  *(this + 285) = *(a2 + 285);
  *(a2 + 285) = v6;
  LOBYTE(v6) = *(this + 282);
  *(this + 282) = *(a2 + 282);
  *(a2 + 282) = v6;
  LOBYTE(v6) = *(this + 281);
  *(this + 281) = *(a2 + 281);
  *(a2 + 281) = v6;
  LODWORD(v6) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v6;
  LOBYTE(v6) = *(this + 280);
  *(this + 280) = *(a2 + 280);
  *(a2 + 280) = v6;
  LOBYTE(v6) = *(this + 284);
  *(this + 284) = *(a2 + 284);
  *(a2 + 284) = v6;
  v8 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v8;
  v9 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v9;
  v10 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v10;
  v11 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v11;
  v12 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v12;
  v13 = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v13;
  v14 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v14;
  v15 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v15;
  v16 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v16;
  v17 = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v17;
  v18 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v18;
  v19 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v19;
  v20 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v20;
  v21 = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v21;
  v22 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v22;
  v23 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v23;
  v24 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v24;
  v25 = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v25;
  v26 = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v26;
  v27 = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v27;
  v28 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v28;
  v29 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v29;
  v30 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v30;
  LOBYTE(v6) = *(this + 291);
  *(this + 291) = *(a2 + 291);
  *(a2 + 291) = v6;
  LOBYTE(v6) = *(this + 283);
  *(this + 283) = *(a2 + 283);
  *(a2 + 283) = v6;
  v31 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v31;
  v32 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v32;
  v33 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v33;
  v34 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v34;
  v35 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v35;
  v36 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v36;
  v37 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v37;
  v38 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v38;
  v39 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v39;
  v40 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v40;
  v41 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v41;
  v42 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v42;
  v43 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v43;
  v44 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v44;
  v45 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v45;
  v46 = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v46;
  v47 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v47;
  v48 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v48;
  v49 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v49;
  v50 = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v50;
  LOBYTE(v6) = *(this + 286);
  *(this + 286) = *(a2 + 286);
  *(a2 + 286) = v6;
  v51 = *(this + 66);
  *(this + 66) = *(a2 + 66);
  *(a2 + 66) = v51;
  v52 = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v52;
  LOBYTE(v6) = *(this + 289);
  *(this + 289) = *(a2 + 289);
  *(a2 + 289) = v6;
  v53 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v53;
  v54 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v54;
  v55 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v55;
  v56 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v56;
  v57 = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v57;
  v58 = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v58;
  v59 = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v59;
  v60 = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v60;
  v61 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v61;
  v62 = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v62;
  v63 = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v63;
  v64 = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v64;
  LODWORD(v6) = *(this + 65);
  *(this + 65) = *(a2 + 65);
  *(a2 + 65) = v6;
  LOBYTE(v6) = *(this + 290);
  *(this + 290) = *(a2 + 290);
  *(a2 + 290) = v6;
  v65 = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v65;
  v66 = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v66;
  v67 = *(this + 67);
  *(this + 67) = *(a2 + 67);
  *(a2 + 67) = v67;
  v68 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v68;
  v69 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v69;
  result = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = result;
  return result;
}

float CMMsl::KappaCrashResult::KappaCrashResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C210D8;
  v2 = *(a2 + 292);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 292) = v2;
  *(a2 + 300) = 0;
  *(a2 + 292) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 287) = *(a2 + 287);
  *(a1 + 285) = *(a2 + 285);
  *(a1 + 282) = *(a2 + 282);
  *(a1 + 281) = *(a2 + 281);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 252) = *(a2 + 252);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 291) = *(a2 + 291);
  *(a1 + 283) = *(a2 + 283);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 286) = *(a2 + 286);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 289) = *(a2 + 289);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 290) = *(a2 + 290);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  result = *(a2 + 92);
  *(a1 + 92) = result;
  return result;
}

CMMsl *CMMsl::KappaCrashResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaCrashResult::KappaCrashResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaCrashResult::formatText(CMMsl::KappaCrashResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = (this + 292);
  v6 = *(this + 292);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "audioDvChaosThreshold", *(this + 4));
    v6 = *v5;
    if ((*v5 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "audioDvChaosThresholdCenter", *(this + 5));
  v6 = *v5;
  if ((*v5 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(a2, "audioDvChaosThresholdMax", *(this + 6));
  v6 = *v5;
  if ((*v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(a2, "audioDvChaosThresholdMin", *(this + 7));
  v6 = *v5;
  if ((*v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(a2, "audioDvChaosThresholdStretch", *(this + 8));
  v6 = *v5;
  if ((*v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(a2, "audioDvEnergyThreshold", *(this + 9));
  v6 = *v5;
  if ((*v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_96;
  }

LABEL_95:
  PB::TextFormatter::format(a2, "audioDvEnergyThresholdCenter", *(this + 10));
  v6 = *v5;
  if ((*v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_97;
  }

LABEL_96:
  PB::TextFormatter::format(a2, "audioDvEnergyThresholdMax", *(this + 11));
  v6 = *v5;
  if ((*v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_98;
  }

LABEL_97:
  PB::TextFormatter::format(a2, "audioDvEnergyThresholdMin", *(this + 12));
  v6 = *v5;
  if ((*v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_99;
  }

LABEL_98:
  PB::TextFormatter::format(a2, "audioDvEnergyThresholdStretch", *(this + 13));
  v6 = *v5;
  if ((*v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_99:
  PB::TextFormatter::format(a2, "audioDvMaxRmsThresholdCenter", *(this + 14));
  v6 = *v5;
  if ((*v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_101;
  }

LABEL_100:
  PB::TextFormatter::format(a2, "audioDvMaxRmsThresholdMax", *(this + 15));
  v6 = *v5;
  if ((*v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_102;
  }

LABEL_101:
  PB::TextFormatter::format(a2, "audioDvMaxRmsThresholdMin", *(this + 16));
  v6 = *v5;
  if ((*v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_102:
  PB::TextFormatter::format(a2, "audioDvMaxRmsThresholdStretch", *(this + 17));
  if ((*v5 & 0x8000) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(a2, "audioDvRmsThreshold", *(this + 18));
  }

LABEL_17:
  if ((*(this + 150) & 8) != 0)
  {
    v7 = *(this + 280);
    PB::TextFormatter::format(a2, "crashDetectorDecision");
  }

  v8 = *v5;
  if ((*v5 & 0x10000) != 0)
  {
    PB::TextFormatter::format(a2, "deltaVXYBiggestImpact", *(this + 19));
    v8 = *v5;
    if ((*v5 & 0x20000) == 0)
    {
LABEL_21:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_106;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_21;
  }

  PB::TextFormatter::format(a2, "deltaVXYOverEpoch", *(this + 20));
  v8 = *v5;
  if ((*v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_107;
  }

LABEL_106:
  PB::TextFormatter::format(a2, "deltaVXYUnconditional", *(this + 21));
  v8 = *v5;
  if ((*v5 & 0x80000) == 0)
  {
LABEL_23:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_108;
  }

LABEL_107:
  PB::TextFormatter::format(a2, "deltaVXYUnconditionalPlanarWithAudioThreshold", *(this + 22));
  v8 = *v5;
  if ((*v5 & 0x100000) == 0)
  {
LABEL_24:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_109;
  }

LABEL_108:
  PB::TextFormatter::format(a2, "deltaVXYUnconditionalPlanarWithoutAudioThreshold", *(this + 23));
  v8 = *v5;
  if ((*v5 & 0x200000) == 0)
  {
LABEL_25:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_110;
  }

LABEL_109:
  v15 = *(this + 24);
  PB::TextFormatter::format(a2, "detectorRegime");
  v8 = *v5;
  if ((*v5 & 0x400000) == 0)
  {
LABEL_26:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_111;
  }

LABEL_110:
  PB::TextFormatter::format(a2, "detectorRegimeAccelnormThreshold1", *(this + 25));
  v8 = *v5;
  if ((*v5 & 0x800000) == 0)
  {
LABEL_27:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

LABEL_111:
  PB::TextFormatter::format(a2, "detectorRegimeAccelnormThreshold2", *(this + 26));
  v8 = *v5;
  if ((*v5 & 0x1000000) == 0)
  {
LABEL_28:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_113;
  }

LABEL_112:
  PB::TextFormatter::format(a2, "detectorRegimeAccelnormThreshold3", *(this + 27));
  v8 = *v5;
  if ((*v5 & 0x2000000) == 0)
  {
LABEL_29:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_114;
  }

LABEL_113:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold1", *(this + 28));
  v8 = *v5;
  if ((*v5 & 0x4000000) == 0)
  {
LABEL_30:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_114:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold1WithAudio", *(this + 29));
  v8 = *v5;
  if ((*v5 & 0x8000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_116;
  }

LABEL_115:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold1WithoutAudio", *(this + 30));
  v8 = *v5;
  if ((*v5 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_117;
  }

LABEL_116:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold1WithoutAudioStandaloneBaroNeeded", *(this + 31));
  v8 = *v5;
  if ((*v5 & 0x20000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_118;
  }

LABEL_117:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold1WithoutAudioStandaloneFull", *(this + 32));
  v8 = *v5;
  if ((*v5 & 0x40000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_119;
  }

LABEL_118:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold2", *(this + 33));
  v8 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
LABEL_35:
    if ((v8 & 0x100000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

LABEL_119:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold2WithAudio", *(this + 34));
  v8 = *v5;
  if ((*v5 & 0x100000000) == 0)
  {
LABEL_36:
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_121;
  }

LABEL_120:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold2WithoutAudio", *(this + 35));
  v8 = *v5;
  if ((*v5 & 0x200000000) == 0)
  {
LABEL_37:
    if ((v8 & 0x400000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_122;
  }

LABEL_121:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold2WithoutAudioStandaloneBaroNeeded", *(this + 36));
  v8 = *v5;
  if ((*v5 & 0x400000000) == 0)
  {
LABEL_38:
    if ((v8 & 0x800000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_123;
  }

LABEL_122:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold2WithoutAudioStandaloneFull", *(this + 37));
  v8 = *v5;
  if ((*v5 & 0x800000000) == 0)
  {
LABEL_39:
    if ((v8 & 0x1000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_124;
  }

LABEL_123:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold3", *(this + 38));
  v8 = *v5;
  if ((*v5 & 0x1000000000) == 0)
  {
LABEL_40:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_125;
  }

LABEL_124:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold3WithAudio", *(this + 39));
  v8 = *v5;
  if ((*v5 & 0x2000000000) == 0)
  {
LABEL_41:
    if ((v8 & 0x4000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_126;
  }

LABEL_125:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold3WithoutAudio", *(this + 40));
  v8 = *v5;
  if ((*v5 & 0x4000000000) == 0)
  {
LABEL_42:
    if ((v8 & 0x8000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_126:
  PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold3WithoutAudioStandaloneBaroNeeded", *(this + 41));
  if ((*v5 & 0x8000000000) != 0)
  {
LABEL_43:
    PB::TextFormatter::format(a2, "detectorRegimeDeltaVThreshold3WithoutAudioStandaloneFull", *(this + 42));
  }

LABEL_44:
  v9 = *(this + 150);
  if ((v9 & 0x10) != 0)
  {
    v16 = *(this + 281);
    PB::TextFormatter::format(a2, "hasAudioInEpoch");
    v9 = *(this + 150);
    if ((v9 & 0x20) == 0)
    {
LABEL_46:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_130;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_46;
  }

  v17 = *(this + 282);
  PB::TextFormatter::format(a2, "isAudio");
  v9 = *(this + 150);
  if ((v9 & 0x40) == 0)
  {
LABEL_47:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_131;
  }

LABEL_130:
  v18 = *(this + 283);
  PB::TextFormatter::format(a2, "isAudioDv");
  v9 = *(this + 150);
  if ((v9 & 0x80) == 0)
  {
LABEL_48:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_132;
  }

LABEL_131:
  v19 = *(this + 284);
  PB::TextFormatter::format(a2, "isAudioSupported");
  v9 = *(this + 150);
  if ((v9 & 0x100) == 0)
  {
LABEL_49:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_133;
  }

LABEL_132:
  v20 = *(this + 285);
  PB::TextFormatter::format(a2, "isBaro");
  v9 = *(this + 150);
  if ((v9 & 0x200) == 0)
  {
LABEL_50:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_134;
  }

LABEL_133:
  v21 = *(this + 286);
  PB::TextFormatter::format(a2, "isCompanionConnected");
  v9 = *(this + 150);
  if ((v9 & 0x400) == 0)
  {
LABEL_51:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_135;
  }

LABEL_134:
  v22 = *(this + 287);
  PB::TextFormatter::format(a2, "isFreeFall");
  v9 = *(this + 150);
  if ((v9 & 0x800) == 0)
  {
LABEL_52:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_135:
  v23 = *(this + 288);
  PB::TextFormatter::format(a2, "isPulse");
  if ((*(this + 150) & 0x1000) != 0)
  {
LABEL_53:
    v10 = *(this + 289);
    PB::TextFormatter::format(a2, "lowSenseCrashDetectorDecision");
  }

LABEL_54:
  v11 = *v5;
  if ((*v5 & 0x10000000000) != 0)
  {
    PB::TextFormatter::format(a2, "lowSenseWithAudioDeltaVThreshold1", *(this + 43));
    v11 = *v5;
    if ((*v5 & 0x20000000000) == 0)
    {
LABEL_56:
      if ((v11 & 0x40000000000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_139;
    }
  }

  else if ((v11 & 0x20000000000) == 0)
  {
    goto LABEL_56;
  }

  PB::TextFormatter::format(a2, "lowSenseWithAudioDeltaVThreshold2", *(this + 44));
  v11 = *v5;
  if ((*v5 & 0x40000000000) == 0)
  {
LABEL_57:
    if ((v11 & 0x80000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_140;
  }

LABEL_139:
  PB::TextFormatter::format(a2, "lowSenseWithAudioDeltaVThreshold3", *(this + 45));
  v11 = *v5;
  if ((*v5 & 0x80000000000) == 0)
  {
LABEL_58:
    if ((v11 & 0x100000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_141;
  }

LABEL_140:
  PB::TextFormatter::format(a2, "lowSenseWithAudioMaxPulseThreshold", *(this + 46));
  v11 = *v5;
  if ((*v5 & 0x100000000000) == 0)
  {
LABEL_59:
    if ((v11 & 0x200000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_142;
  }

LABEL_141:
  PB::TextFormatter::format(a2, "lowSenseWithAudioMaxaccelnormThreshold", *(this + 47));
  v11 = *v5;
  if ((*v5 & 0x200000000000) == 0)
  {
LABEL_60:
    if ((v11 & 0x400000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_143;
  }

LABEL_142:
  PB::TextFormatter::format(a2, "lowSenseWithAudioPeakPressureThreshold", *(this + 48));
  v11 = *v5;
  if ((*v5 & 0x400000000000) == 0)
  {
LABEL_61:
    if ((v11 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_144;
  }

LABEL_143:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioDeltaVThreshold1", *(this + 49));
  v11 = *v5;
  if ((*v5 & 0x800000000000) == 0)
  {
LABEL_62:
    if ((v11 & 0x1000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_145;
  }

LABEL_144:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioDeltaVThreshold2", *(this + 50));
  v11 = *v5;
  if ((*v5 & 0x1000000000000) == 0)
  {
LABEL_63:
    if ((v11 & 0x2000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_146;
  }

LABEL_145:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioDeltaVThreshold3", *(this + 51));
  v11 = *v5;
  if ((*v5 & 0x2000000000000) == 0)
  {
LABEL_64:
    if ((v11 & 0x4000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_147;
  }

LABEL_146:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioMaxPulseThreshold", *(this + 52));
  v11 = *v5;
  if ((*v5 & 0x4000000000000) == 0)
  {
LABEL_65:
    if ((v11 & 0x8000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_148;
  }

LABEL_147:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioMaxaccelnormThreshold", *(this + 53));
  v11 = *v5;
  if ((*v5 & 0x8000000000000) == 0)
  {
LABEL_66:
    if ((v11 & 0x10000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_149;
  }

LABEL_148:
  PB::TextFormatter::format(a2, "lowSenseWithoutAudioPeakPressureThreshold", *(this + 54));
  v11 = *v5;
  if ((*v5 & 0x10000000000000) == 0)
  {
LABEL_67:
    if ((v11 & 0x20000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_150;
  }

LABEL_149:
  PB::TextFormatter::format(a2, "maxAccelNorm", *(this + 55));
  v11 = *v5;
  if ((*v5 & 0x20000000000000) == 0)
  {
LABEL_68:
    if ((v11 & 0x40000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_151;
  }

LABEL_150:
  PB::TextFormatter::format(a2, "maxAccelNormThreshold", *(this + 56));
  v11 = *v5;
  if ((*v5 & 0x40000000000000) == 0)
  {
LABEL_69:
    if ((v11 & 0x80000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_152;
  }

LABEL_151:
  PB::TextFormatter::format(a2, "maxAccelNormThresholdWithAudio", *(this + 57));
  v11 = *v5;
  if ((*v5 & 0x80000000000000) == 0)
  {
LABEL_70:
    if ((v11 & 0x100000000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_153;
  }

LABEL_152:
  PB::TextFormatter::format(a2, "maxAccelNormThresholdWithoutAudio", *(this + 58));
  v11 = *v5;
  if ((*v5 & 0x100000000000000) == 0)
  {
LABEL_71:
    if ((v11 & 0x200000000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_154;
  }

LABEL_153:
  PB::TextFormatter::format(a2, "maxAccelNormThresholdWithoutAudioStandaloneBaroNeeded", *(this + 59));
  v11 = *v5;
  if ((*v5 & 0x200000000000000) == 0)
  {
LABEL_72:
    if ((v11 & 0x400000000000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_155;
  }

LABEL_154:
  PB::TextFormatter::format(a2, "maxAccelNormThresholdWithoutAudioStandaloneFull", *(this + 60));
  v11 = *v5;
  if ((*v5 & 0x400000000000000) == 0)
  {
LABEL_73:
    if ((v11 & 0x800000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_156;
  }

LABEL_155:
  PB::TextFormatter::format(a2, "maxAudioChaos", *(this + 61));
  v11 = *v5;
  if ((*v5 & 0x800000000000000) == 0)
  {
LABEL_74:
    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_157;
  }

LABEL_156:
  PB::TextFormatter::format(a2, "maxAudioEnergy", *(this + 62));
  v11 = *v5;
  if ((*v5 & 0x1000000000000000) == 0)
  {
LABEL_75:
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_158;
  }

LABEL_157:
  PB::TextFormatter::format(a2, "maxAudioRms", *(this + 63));
  v11 = *v5;
  if ((*v5 & 0x2000000000000000) == 0)
  {
LABEL_76:
    if ((v11 & 0x4000000000000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_159:
    v24 = *(this + 65);
    PB::TextFormatter::format(a2, "numShortAudio");
    if ((*v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_160;
  }

LABEL_158:
  PB::TextFormatter::format(a2, "maxPulse", *(this + 64));
  v11 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_159;
  }

LABEL_77:
  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_160:
  PB::TextFormatter::format(a2, "peakPressure", *(this + 66));
LABEL_78:
  v12 = *(this + 150);
  if (v12)
  {
    PB::TextFormatter::format(a2, "shortAudioMaxPulseThreshold", *(this + 67));
    v12 = *(this + 150);
    if ((v12 & 0x2000) == 0)
    {
LABEL_80:
      if ((v12 & 2) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_163;
    }
  }

  else if ((*(this + 150) & 0x2000) == 0)
  {
    goto LABEL_80;
  }

  v25 = *(this + 290);
  PB::TextFormatter::format(a2, "shortAudioMet");
  v12 = *(this + 150);
  if ((v12 & 2) == 0)
  {
LABEL_81:
    if ((v12 & 4) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_164;
  }

LABEL_163:
  PB::TextFormatter::format(a2, "shortAudioNumThreshold", *(this + 68));
  v12 = *(this + 150);
  if ((v12 & 4) == 0)
  {
LABEL_82:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_164:
  PB::TextFormatter::format(a2, "shortAudioPeakPressureThreshold", *(this + 69));
  if ((*(this + 150) & 0x4000) != 0)
  {
LABEL_83:
    v13 = *(this + 291);
    PB::TextFormatter::format(a2, "strongerAudio");
  }

LABEL_84:
  if (*v5)
  {
    v14 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}